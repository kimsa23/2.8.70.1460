unit udlgfaturamentoproduto;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons, ExtCtrls,
  Dialogs, Menus,
  DB, dbclient,
  uRegistro, ustrings, uConstantes, ulocalizarproduto, uLocalizarFaturamento,
  udatahora, uexportarexcel, uprogressbar,
  classeaplicacao, classeretornasql, classeexecutasql, classeusuario, classeempresa,
  classegerar, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCalc,cxDBData,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxStyles, cxData,
  cxCustomData, cxFilter, cxDataStorage, cxCurrencyEdit, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxNavigator, classefaturamento;

type
  Tfrmdlgfaturamentoproduto = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    edtcdprodutoorigem: TcxButtonEdit;
    edtcdprodutodestino: TcxButtonEdit;
    lblprodutoorigem: TLabel;
    lblprodutodestino: TLabel;
    lblnmprodutoorigem: TLabel;
    lblnmprodutodestino: TLabel;
    lblfaturamento: TLabel;
    edtcdfaturamento: TcxButtonEdit;
    grdDBTableView1: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    btnexibir: TcxButton;
    cds1: TClientDataSet;
    dts1: TDataSource;
    cds1cdcliente: TFMTBCDField;
    cds1rzsocial: TStringField;
    cds1qtitem: TFloatField;
    cds1vlunitario: TCurrencyField;
    grdDBTableView1cdcliente: TcxGridDBColumn;
    grdDBTableView1rzsocial: TcxGridDBColumn;
    grdDBTableView1qtitem: TcxGridDBColumn;
    grdDBTableView1vlunitario: TcxGridDBColumn;
    procedure edtcdprodutoorigemExit(Sender: TObject);
    procedure edtcdprodutoorigemKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoorigemPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutodestinoExit(Sender: TObject);
    procedure edtcdprodutodestinoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutodestinoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfaturamentoExit(Sender: TObject);
    procedure edtcdfaturamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfaturamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnexibirClick(Sender: TObject);
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmdlgfaturamentoproduto: Tfrmdlgfaturamentoproduto;

function Gerar_faturamento_produto(Faturamento: TFaturamento):Boolean;

implementation

{$R *.dfm}

function gerar_pedido(cds1:TClientDataSet; faturamento: TFaturamento; cdproduto:integer):Boolean;
var
  sql : tstrings;
  cdstpedido, cdstitpedido : integer;
begin
  result := False;
  sql    := tstringlist.create;
  try
    cds1.First;
    cdstpedido   := qregistro.Codigo_status_novo(_pedido);
    cdstitpedido := qregistro.Codigo_status_novo(_itpedido);
    if faturamento.tpfaturamento.cdtpfaturamento  = 0 then
    begin
      faturamento.tpfaturamento.Select(faturamento.cdtpfaturamento);
    end;
    while not cds1.Eof do
    begin
      faturamento.itfatpedido.new;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.cdpedido   := qgerar.gerarcodigo(_pedido);
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.nupedido   := faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.cdpedido.ToString;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.cdstpedido := cdstpedido;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.cdcliente  := cds1.fieldbyname(_CDCLIENTE).AsLargeInt;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.cdtppedido := faturamento.tpfaturamento.cdtppedidoarquivo;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.dtemissao  := faturamento.dttermino;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.vltotal    := cds1.FieldByName(_vlunitario).ascurrency*cds1.FieldByName(_qtitem).AsFloat;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.vlproduto  := faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.vltotal;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.qtpedido   := cds1.FieldByName(_qtitem).AsFloat;
      sql.add(faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.Insert(true));

      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].cdpedido      := faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.cdpedido;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].nupedido      := faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.nupedido;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].cdfaturamento := faturamento.cdfaturamento;
      sql.add(faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].Insert(true));

      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.new;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Items[faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Count-1].cdpedido     := faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.cdpedido;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Items[faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Count-1].cditpedido   := qgerar.gerarcodigo(_itpedido);
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Items[faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Count-1].cdproduto    := cdproduto;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Items[faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Count-1].cddigitado   := cdproduto.tostring;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Items[faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Count-1].cdstitpedido := cdstitpedido;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Items[faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Count-1].qtitem       := cds1.FieldByName(_qtitem).AsFloat;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Items[faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Count-1].vlunitario   := cds1.FieldByName(_vlunitario).ascurrency;
      faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Items[faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Count-1].vltotal      := cds1.FieldByName(_qtitem).AsFloat * cds1.FieldByName(_vlunitario).ascurrency;
      sql.add(faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.items[faturamento.itfatpedido.items[faturamento.itfatpedido.count-1].pedido.itpedido.Count-1].Insert(true));
      cds1.Next;
    end;
    if sql.count> 0 then
    begin
      result := ExecutaScript(sql);
    end;
  finally
    FreeAndNil(sql);
  end;
end;

function Gerar_faturamento_produto(Faturamento: TFaturamento):Boolean;
begin
  frmdlgfaturamentoproduto := Tfrmdlgfaturamentoproduto.Create(nil);
  try
    result := false;
    if frmdlgfaturamentoproduto.ShowModal = mrok then
    begin
      Result := gerar_pedido(frmdlgfaturamentoproduto.cds1, faturamento, strtoint(frmdlgfaturamentoproduto.edtcdprodutodestino.Text));
    end;
  finally
    FreeAndNil(frmdlgfaturamentoproduto);
  end;
end;

procedure Tfrmdlgfaturamentoproduto.edtcdprodutoorigemExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdprodutoorigem.text;
  if cd = '' then
  begin
    lblnmprodutoorigem.caption := '';
    exit;
  end;
  if not CodigoExiste(_produto, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_produto)]), mterror, [mbok], 0);
    edtcdprodutoorigem.setfocus;
    abort;
  end;
  lblnmprodutoorigem.Caption := NomedoCodigo(_produto, cd);
end;

procedure Tfrmdlgfaturamentoproduto.edtcdprodutoorigemKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoorigemPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmdlgfaturamentoproduto.edtcdprodutoorigemPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdprodutoorigem.text    := cd.ToString;
  lblnmprodutoorigem.caption := qregistro.NomedoCodigo(_produto, cd);
end;

procedure Tfrmdlgfaturamentoproduto.edtcdprodutodestinoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdprodutodestino.text;
  if cd = '' then
  begin
    lblnmprodutodestino.caption := '';
    exit;
  end;
  if not CodigoExiste(_produto, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_produto)]), mterror, [mbok], 0);
    edtcdprodutodestino.setfocus;
    abort;
  end;
  lblnmprodutodestino.Caption := NomedoCodigo(_produto, cd);
end;

procedure Tfrmdlgfaturamentoproduto.edtcdprodutodestinoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutodestinoPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmdlgfaturamentoproduto.edtcdprodutodestinoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdprodutodestino.text    := cd.ToString;
  lblnmprodutodestino.caption := qregistro.NomedoCodigo(_produto, cd);
end;

procedure Tfrmdlgfaturamentoproduto.edtcdfaturamentoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdfaturamento.text;
  if cd = '' then
  begin
    exit;
  end;
  if not CodigoExiste(_faturamento, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_faturamento)]), mterror, [mbok], 0);
    edtcdfaturamento.setfocus;
    abort;
  end;
end;

procedure Tfrmdlgfaturamentoproduto.edtcdfaturamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfaturamentoPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmdlgfaturamentoproduto.edtcdfaturamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarfaturamento;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdfaturamento.text    := cd.tostring;
end;

procedure Tfrmdlgfaturamentoproduto.btnexibirClick(Sender: TObject);
var
  c : TClasseQuery;
begin
  c := TClasseQuery.Create('select p.cdcliente'+
                             ',pr.vlvenda'+
                             ',c.NMCLIENTE '+
                       'from pedido p '+
                       'left join itfatpedido f on f.cdpedido=p.cdpedido and p.cdempresa=f.cdempresa '+
                       'left join cliente c on c.cdcliente=p.cdcliente and p.cdempresa=c.cdempresa '+
                       'left join itpedido i on i.cdpedido=p.cdpedido and p.cdempresa=i.cdempresa '+
                       'left join produto pr on pr.cdproduto=i.cdproduto and pr.cdempresa=i.cdempresa '+
                       'where p.cdempresa='+empresa.cdempresa.tostring+' and f.cdfaturamento='+edtcdfaturamento.Text+' and i.cdproduto='+edtcdprodutoorigem.Text);
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    frmprogressbar.Show;
    frmprogressbar.pnl.Caption := 'Lendo registros...';
    Application.ProcessMessages;
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    cds1.EmptyDataSet;
    while not c.q.Eof do
    begin
      frmprogressbar.pnl.Caption := 'Registro '+inttostr(c.q.RecNo)+' de '+inttostr(c.q.RecordCount);
      frmprogressbar.gau.Progress := c.q.RecNo;
      Application.ProcessMessages;
      cds1.Insert;
      cds1.FieldByName(_cdcliente).AsString    := c.q.fieldbyname(_cdcliente).AsString;
      cds1.FieldByName(_qtitem).AsString       := _1;
      cds1.FieldByName(_vlunitario).AsCurrency := c.q.fieldbyname(_vlvenda).AsCurrency;
      cds1.FieldByName(_rzsocial).AsString     := c.q.fieldbyname(_NMCLIENTE).AsString;
      cds1.Post;
      c.q.next;
    end;
  finally
    FreeAndNil(frmprogressbar);
    FreeAndNil(c);
  end;
end;

procedure Tfrmdlgfaturamentoproduto.grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.

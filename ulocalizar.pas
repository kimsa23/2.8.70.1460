unit ulocalizar;

interface

uses
  forms, Menus, Windows, ImgList, graphics, types, sysutils, ComCtrls, ToolWin, StdCtrls,
  Classes, ExtCtrls, Buttons, Controls, ShellAPI, ActnList,
  DB,
  usystem, uinterbase, uconstantes, uregistro, ustrings,
  classeempresa, classeexecutasql, classeAplicacao, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxContainer,
  cxLabel, cxTextEdit, cxButtons, cxGroupBox, cxRadioGroup, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, cxGridExportLink, dxBar, cxNavigator,
  System.Actions, System.UITypes;

type
  TfrmLocalizar = class(TForm)
    Bevel1: TBevel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    colCodigo: TcxGridDBColumn;
    colNome: TcxGridDBColumn;
    grdLvl: TcxGridLevel;
    rdgopcoes: TcxRadioGroup;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnnovo: TcxButton;
    edtnome: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    act: TActionList;
    actfiltro: TAction;
    actagrupar: TAction;
    actexcel: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    procedure btnOkClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdgopcoesClick(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btncancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private   { Private declarations }
    codigo, orderby, sqlsearch, nmsearch, tbl, exibe, tblchamada : string;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
  public    { Public declarations }
  end;

function Localizar(tabela:string; bonovo:boolean=false;tblchamada:string=''):integer;overload;
function Localizar(tabela, exibe, sql:string):string;overload;
function Localizar(tabela, exibe, sql, nmfieldcode, nmexibecode:string):string;overload;
function Localizar(tabela, cdfield, nmfield, exibe:string; genero:char; orderby:string):string;overload;
function Localizar(exibe, sql, nmfieldexibe, nmsearch:string):string;overload;


var
  frmLocalizar: TfrmLocalizar;

implementation

uses uNovoTabela,
  uDtmMain,
  uExportarExcel;

{$R *.DFM}

function Localizar(tabela, cdfield, nmfield, exibe:string; genero:char; orderby:string):string;
  function makesql:string;
  begin
    result := 'SELECT '+cdfield+
                    ','+nmfield+' '+
              'FROM '+tabela+' ';
    if (LowerCase(tabela) <> _empresa) and ExisteCampoNaTabela(tabela, _cdempresa) then
    begin
      result := result + 'where cdempresa='+empresa.cdempresa.tostring+' ';
    end;
    result := result + 'ORDER BY '+orderby
  end;
begin
  frmLocalizar := TfrmLocalizar.Create(nil);
  try
    frmlocalizar.tbl                             := tabela;
    frmlocalizar.exibe                           := exibe;
    frmlocalizar.btnNovo.Visible                 := false;
    frmlocalizar.caption                         := exibe;
    frmLocalizar.colCodigo.DataBinding.FieldName := cdfield;
    frmLocalizar.colNome.DataBinding.FieldName   := nmfield;
    frmLocalizar.colNome.Caption                 := exibe;
    frmLocalizar.nmsearch                        := nmfield;
    if orderby = '' then
    begin
      orderby := nmfield;
    end;
    frmlocalizar.orderby         := orderby;

    frmLocalizar.q.q.sql.text := makesql;
    frmlocalizar.q.q.open;
    frmlocalizar.btnOk.Enabled  := frmlocalizar.q.q.RecordCount > 0;

    frmlocalizar.showmodal;
    if frmlocalizar.ModalResult = mrok then
    begin
      result := frmLocalizar.codigo;
    end;
  finally
    freeandnil(frmLocalizar);
  end;
end;

function Localizar(exibe, sql, nmfieldexibe, nmsearch:string):string;
begin
  frmLocalizar := TfrmLocalizar.Create(nil);
  try
    frmlocalizar.exibe           := exibe;
    frmlocalizar.btnNovo.Visible := false;
    frmlocalizar.caption         := exibe;
    frmlocalizar.sqlsearch       := sql;
    frmLocalizar.q.q.sql.text      := sql;
    frmlocalizar.q.q.open;
    frmlocalizar.btnOk.Enabled := frmlocalizar.q.q.RecordCount > 0;
    frmlocalizar.showmodal;
    if frmlocalizar.ModalResult = mrok then
    begin
      result := frmlocalizar.codigo;
    end;
  finally
    freeandnil(frmLocalizar);
  end;
end;

function Localizar(tabela, exibe, sql:string):string;
begin
  frmLocalizar := TfrmLocalizar.Create(nil);
  try
    tabela                         := uppercase(tabela);
    frmlocalizar.tbl               := tabela;
    frmlocalizar.exibe             := exibe;
    frmlocalizar.btnNovo.Visible   := false;
    frmlocalizar.caption           := exibe;

    frmLocalizar.colCodigo.DataBinding.FieldName := _CD+tabela;
    frmLocalizar.colNome.DataBinding.FieldName   := 'NM'+tabela;
    frmLocalizar.colNome.Caption                 := exibe;
    frmLocalizar.nmsearch                        := 'NM'+tabela;
    frmLocalizar.q.q.sql.text := sql;
    frmlocalizar.q.q.open;
    frmlocalizar.btnOk.Enabled  := frmlocalizar.q.q.RecordCount > 0;

    frmlocalizar.showmodal;
    if frmlocalizar.ModalResult = mrok then
    begin
      result := frmlocalizar.codigo;
    end;
  finally
    freeandnil(frmLocalizar);
  end;
end;

function Localizar(tabela, exibe, sql, nmfieldcode, nmexibecode:string):string;
begin
  frmLocalizar := TfrmLocalizar.Create(nil);
  try
    frmlocalizar.tbl               := tabela;
    frmlocalizar.exibe             := exibe;
    frmlocalizar.btnNovo.Visible   := false;
    frmlocalizar.caption           := exibe;

    frmLocalizar.colCodigo.DataBinding.FieldName := nmfieldcode;
    frmLocalizar.colCodigo.Caption               := nmexibecode;
    frmLocalizar.colNome.DataBinding.FieldName   := 'NM'+tabela;
    frmLocalizar.colNome.Caption                 := exibe;
    frmLocalizar.nmsearch                        := 'NM'+tabela;
    frmLocalizar.q.q.sql.text                      := sql;
    frmlocalizar.q.q.open;
    frmlocalizar.btnOk.Enabled                   := frmlocalizar.q.q.RecordCount > 0;

    frmlocalizar.showmodal;
    if frmlocalizar.ModalResult = mrok then
    begin
      result := frmlocalizar.codigo;
    end;
  finally
    freeandnil(frmLocalizar);
  end;
end;

function Localizar(tabela:string; bonovo:boolean=false; tblchamada:string=''):integer;
  function getwhere:string;
  begin
    if (LowerCase(tabela) = _empresa) or (not ExisteCampoNaTabela(tabela, _cdempresa)) then
    begin
      Exit;
    end;
    result := ' where cdempresa='+empresa.cdempresa.tostring;
    if (tblchamada = _entrada) or (tblchamada = _saida) then
    begin
      result := result + ' and BO'+tblchamada+'=''S'' ';
    end;
  end;
begin
  frmLocalizar := TfrmLocalizar.Create(nil);
  try
    frmlocalizar.tbl               := tabela;
    frmlocalizar.tblchamada        := tblchamada;
    frmlocalizar.exibe             := QRegistro.CampodoCampo(_tabela, _nm+_tabela, uppercase(tabela), _nm+_exibe, true);
    frmlocalizar.caption           := frmlocalizar.exibe;
    frmlocalizar.btnNovo.Visible   := bonovo;

    frmLocalizar.colCodigo.DataBinding.FieldName := _CD+tabela;
    frmLocalizar.colNome.DataBinding.FieldName   := 'NM'+tabela;
    frmLocalizar.colNome.Caption                 := frmlocalizar.exibe;
    frmLocalizar.nmsearch                        := 'NM'+tabela;
    frmLocalizar.q.q.sql.text                    := 'SELECT CD'+tabela+',NM'+tabela+' FROM '+tabela+getwhere+' ORDER BY nm'+tabela;
    frmlocalizar.q.q.open;
    frmlocalizar.btnOk.Enabled  := frmlocalizar.q.q.RecordCount > 0;

    frmlocalizar.showmodal;
    if frmlocalizar.ModalResult = mrok then
    begin
      result := strtoint(frmlocalizar.codigo);
    end
    else
    begin
      result := 0;
    end;
  finally
    freeandnil(frmLocalizar);
  end;
end;

procedure TfrmLocalizar.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizar.edtNomeChange(Sender: TObject);
var
  sql, codigo, nome : string;
begin
  if rdgopcoes.ItemIndex = 0 then // inicio do campo
  begin
    if edtnome.text <> '' then
    begin
      q.q.Locate(nmsearch, edtnome.text, [loCaseInsensitive, loPartialKey]);
    end;
    exit;
  end;
  if tbl <> '' then // qualquer parte
  begin
    codigo := q.q.fields[0].FieldName;
    nome   := q.q.fields[1].fieldname;

    if orderby = '' then
    begin
      orderby := nome;
    end;
    sql := 'select '+codigo+
                 ','+nome+' '+
           'from '+tbl+' '+
           'where ';
    if (lowercase(tbl) <> _empresa) and ExisteCampoNaTabela(tbl, _cdempresa) then
    begin
      sql := sql + ' cdempresa='+empresa.cdempresa.tostring+' and ';
    end;
    sql := sql + nome+' like ''%'+get_aspas(edtnome.text)+'%'' order by '+orderby;
  end
  else
  begin
    if orderby = '' then
    begin
      orderby := nmsearch;
    end;
    sql := sqlsearch+' where ';
    if (LowerCase(tbl) <> _empresa) and ExisteCampoNaTabela(tbl, _cdempresa) then
    begin
      sql := sql + 'cdempresa='+empresa.cdempresa.tostring+' and ';
    end;
    sql := sql +nmsearch+' like ''%'+get_aspas(edtnome.text)+'%'' order by '+orderby;
  end;
  q.q.close;
  q.q.sql.text := sql;
  q.q.Open;
end;

procedure TfrmLocalizar.edtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if q.q.RecordCount <= 0 then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    q.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    q.q.Prior;
    key := 0;
  end;
end;

procedure TfrmLocalizar.btnNovoClick(Sender: TObject);
begin
  codigo := InserirRegistroTabela(tbl, exibe);
  if codigo <> '' then
  begin
    modalresult := mrok;
  end;
end;

procedure TfrmLocalizar.FormShow(Sender: TObject);
begin
  edtNome.SetFocus;
end;

procedure TfrmLocalizar.rdgopcoesClick(Sender: TObject);
var
  codigo, nome : string;
begin
  if rdgopcoes.ItemIndex = 0 then
  begin
    codigo := q.q.fields[0].FieldName;
    nome   := q.q.fields[1].fieldname;
    q.q.close;
    q.q.sql.text := 'select '+codigo+','+nome+' from '+tbl;
    if (LowerCase(tbl)<>_empresa) and ExisteCampoNaTabela(tbl, _cdempresa) then
    begin
      q.q.sql.text := q.q.sql.text +' where cdempresa='+empresa.cdempresa.tostring;
    end;
    q.q.Open;
  end;
  edtNomeChange(sender);
  edtnome.SetFocus;
end;

procedure TfrmLocalizar.edtnomePropertiesChange(Sender: TObject);
var
  codigo, nome : string;
  function makesql:string;
  begin
    if tbl <> '' then
    begin
      if orderby = '' then
      begin
        orderby := nome;
      end;
      result := 'select '+codigo+
                      ','+nome+' '+
                'from '+tbl+' WHERE ';
      if (LowerCase(tbl) <> _empresa) and ExisteCampoNaTabela(tbl, _cdempresa) then
      begin
        result := result + 'cdempresa='+empresa.cdempresa.tostring+' and ';
      end;
      if rdgopcoes.ItemIndex = 0 then
      begin
        result := result + nome+' like '''+get_aspas(edtnome.text)+'%'' order by '+orderby
      end
      else
      begin
        result := result + nome+' like ''%'+get_aspas(edtnome.text)+'%'' order by '+orderby;
      end;
    end
    else
    begin
      if orderby = '' then
      begin
        orderby := nmsearch;
      end;
      result := sqlsearch+' where ';
      if (LowerCase(tbl)<>_empresa) and ExisteCampoNaTabela(tbl, _cdempresa) then
      begin
        result := result + ' cdempresa='+empresa.cdempresa.tostring+' and ';
      end;
      if rdgopcoes.ItemIndex = 0 then
      begin
        result := result + nmsearch+' like '''+get_aspas(edtnome.text)+'%'' order by '+orderby
      end
      else
      begin
        result := result + nmsearch+' like ''%'+get_aspas(edtnome.text)+'%'' order by '+orderby;
      end;
    end;
  end;
begin
  codigo := q.q.fields[0].FieldName;
  nome   := q.q.fields[1].fieldname;
  q.q.close;
  q.q.sql.text := makesql;
  q.q.Open;
end;

procedure TfrmLocalizar.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizar.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fields[0].AsString;
end;

procedure TfrmLocalizar.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizar.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizar.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizar.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizar.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizar.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  d.DataSet := q.q;
  tbv.DataController.DataSource := d;
end;

procedure TfrmLocalizar.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not q.q.Active) or (q.q.RecordCount <= 0) then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    q.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    q.q.Prior;
    key := 0;
  end;
end;

end.

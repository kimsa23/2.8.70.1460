unit uLocalizarOrdcompra;

interface

uses
  System.Actions, System.UITypes,
  forms, Buttons, StdCtrls, Menus, ComCtrls, Controls, Mask, Classes, ExtCtrls, dialogs,
  ActnList, sysutils, Graphics,
  DBClient, DB,
  ustrings, uregistro, ulocalizar, udatahora, uconstantes, uexportarexcel,
  ulocalizarcliente, uRotinas,
  classeform, classesqlmontar, classeempresa, classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxStatusBar, cxGroupBox, cxCurrencyEdit, cxLookAndFeels, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSplitter, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCheckBox, dxBar, cxPCdxBarPopupMenu, cxRadioGroup, cxPC, cxNavigator, dxCore,
  cxDateUtils, dxBarBuiltInMenu, ClasseLocalizar;

type
  TfrmLocalizarOrdCompra = class(TForm)
    dts: TDataSource;
    Bevel1: TBevel;
    lblCliente: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    lblEntre: TLabel;
    lblfornecedor: TLabel;
    edtvltotali: TcxCalcEdit;
    edtvltotalf: TcxCalcEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    btnFind: TcxButton;
    cbxcdstordcompra: TcxLookupComboBox;
    cbxcdtpordcompra: TcxLookupComboBox;
    grddetail1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1: TcxGridDBBandedTableView;
    grddetail1DBBandedTableView1CDDIGITADO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1QTITEM: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1QTATENDIDA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLUNITARIO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLTOTAL: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUPEDIDO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DTEMISSAO: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    spl: TcxSplitter;
    cdsdetail1: TClientDataSet;
    cdsdetail1CDORDCOMPRA: TIntegerField;
    cdsdetail1CDDIGITADO: TStringField;
    cdsdetail1NMPRODUTO: TStringField;
    cdsdetail1QTITEM: TFloatField;
    cdsdetail1QTATENDIDA: TFloatField;
    cdsdetail1VLUNITARIO: TCurrencyField;
    cdsdetail1VLTOTAL: TCurrencyField;
    cdsdetail1CDITORDCOMPRA: TIntegerField;
    cdsdetail1DTEMISSAO: TDateField;
    dtsdetail1: TDataSource;
    dtsdetail: TDataSource;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDORDCOMPRA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvCDFORNECEDOR: TcxGridDBColumn;
    tbvNMFORNECEDOR: TcxGridDBColumn;
    tbvNMCONDPAGTO: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvNMSTORDCOMPRA: TcxGridDBColumn;
    grdDBBandedTableView1: TcxGridDBBandedTableView;
    grdDBBandedTableView1CDDIGITADO: TcxGridDBBandedColumn;
    grdDBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn;
    grdDBBandedTableView1QTITEM: TcxGridDBBandedColumn;
    grdDBBandedTableView1QTATENDIDA: TcxGridDBBandedColumn;
    grdDBBandedTableView1VLUNITARIO: TcxGridDBBandedColumn;
    grdDBBandedTableView1VLTOTAL: TcxGridDBBandedColumn;
    grdDBTableView2: TcxGridDBTableView;
    grdDBTableView2CDDIGITADO: TcxGridDBColumn;
    grdDBTableView2NMPRODUTO: TcxGridDBColumn;
    grdDBTableView2QTITEM: TcxGridDBColumn;
    grdDBTableView2QTATENDIDA: TcxGridDBColumn;
    grdDBTableView2VLUNITARIO: TcxGridDBColumn;
    grdDBTableView2VLTOTAL: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    grlLevel3: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbvDTENTREGA: TcxGridDBColumn;
    Label2: TLabel;
    cbxcdcondpagto: TcxLookupComboBox;
    tbvNMTPORDCOMPRA: TcxGridDBColumn;
    ckbexibiritem: TcxCheckBox;
    Label8: TLabel;
    cbxcdtpaplicacao: TcxLookupComboBox;
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
    dxBarButton1: TdxBarButton;
    actlimparcriterio: TAction;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    lbldtemissao: TLabel;
    lbldtsaida: TLabel;
    lblentresaida: TLabel;
    lblentreemissao: TLabel;
    cxTabSheet2: TcxTabSheet;
    Label10: TLabel;
    cxTabSheet3: TcxTabSheet;
    edtdtemissaoi: TcxDateEdit;
    edtdtEmissaof: TcxDateEdit;
    edtdtentregai: TcxDateEdit;
    edtdtentregaf: TcxDateEdit;
    lblordproducao: TLabel;
    edtcdordproducao: TcxButtonEdit;
    rdgcritico: TcxRadioGroup;
    tbvNUCOR: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdfornecedor: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grddetail1DBBandedTableView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure grddetail1DBBandedTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure grdDBTableView2StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure tbvStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpordcompraEnter(Sender: TObject);
    procedure cbxcdcondpagtoEnter(Sender: TObject);
    procedure edtcdordproducaoExit(Sender: TObject);
    procedure edtcdordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdordproducaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    boordcompra, boitordcompra : Boolean;
    semfornecedor : boolean;
    filtrar: boolean;
    qry : TClasseQuery;
    qrydetail : TClasseQuery;
    procedure AbrirTabelas;
    procedure SetEmpresa;
    function makesql: string;
    function makesql2: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarOrdCompra(cdfornecedor:string=''; filtro:boolean=false):integer;overload;
function Localizarordcompra(cdfornecedor:string; cditordcompra: TStrings):string;overload;

var
  frmLocalizarOrdCompra: TfrmLocalizarOrdCompra;

implementation

uses uDtmMain, ulocalizarFornecedor, uLocalizarProduto,
  ulocalizarordproducao;

{$R *.DFM}

function Localizarordcompra(cdfornecedor:string; cditordcompra: TStrings):string;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_ordcompra) then
  begin
    frmLocalizarordcompra := TfrmLocalizarordcompra.Create(application);
  end;
  with frmLocalizarordcompra do
  begin
    ckbexibiritem.Checked    := True;
    ckbexibiritem.Visible    := False;
    grddetail1.Visible       := true;
    spl.Visible              := true;
    tbv.DragMode := dmAutomatic;
    grdDBTableView2.DragMode := dmAutomatic;
    if cdfornecedor <> '' then
    begin
      edtcdfornecedor.Text      := cdfornecedor;
      edtcdfornecedor.Enabled   := False;
      semfornecedor             := true;
    end;
    if qry.q.Active then
    begin
      btnfindclick(btnfind);
      if qry.q.FieldByName(_cdfornecedor).AsString <> cdfornecedor then
      begin
        qry.q.Close;
      end;
    end;
    if qrydetail.q.Active then
    begin
      qrydetail.q.Refresh;
    end;
    showmodal;
    if ModalResult = mrok then
    begin
      if cdsdetail1.Active then
      begin
        cdsdetail1.First;
        while not cdsdetail1.Eof do
        begin
          cditordcompra.Add(cdsdetail1CDITordcompra.AsString);
          cdsdetail1.Next;
        end;
        cdsdetail1.First;
        while not cdsdetail1.Eof do
          cdsdetail1.Delete;
      end;
      result := qry.q.fieldbyname(_cdordcompra).AsString;
    end;
  end;
end;

function LocalizarOrdCompra(cdfornecedor:string=''; filtro:boolean=false):integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_ordcompra) then
  begin
    frmLocalizarordcompra := TfrmLocalizarordcompra.Create(application);
  end;
  with frmLocalizarordcompra do
  begin
    ckbexibiritem.Visible     := true;
    spl.Visible               := false;
    grddetail1.Visible        := false;
    edtcdfornecedor.Enabled   := cdfornecedor = '';
    if cdfornecedor <> '' then
    begin
      filtrar                   := filtro;
      edtcdfornecedor.Text      := cdfornecedor;
      semfornecedor             := true;
    end;
    if qry.q.Active       then qry.q.Refresh;
    if qrydetail.q.Active then qrydetail.q.Refresh;
    showmodal;
    if ModalResult = mrok then
    begin
      result := qry.q.fieldbyname(_cdordcompra).AsInteger;
    end;
  end;
end;

function TfrmLocalizarOrdCompra.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where o.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarcodigo(cbxcdstordcompra.EditValue, _o, _cdstordcompra, result);
  sqlmontarcodigo(cbxcdtpaplicacao.EditValue, _o, _cdtpaplicacao, result);
  sqlmontarcodigo(cbxcdtpordcompra.EditValue, _o, _cd+_tp+_ordcompra, result);
  sqlmontarcodigo(edtcdordproducao.Text     , _i, _cd+_ordproducao, result);
  sqlmontarcodigo(edtcdfornecedor.text , _o, _cdfornecedor , result);
  sqlmontarcodigo(edtcdproduto.text    , _i, _cdproduto    , result);
  sqlmontarcodigo(cbxcdcondpagto.EditValue  , _o, _cdcondpagto  , result);
  sqlmontardata  (edtdtemissaoi.text, edtdtemissaof.text, _o, _dtemissao    , result);
  sqlmontardata  (edtdtentregai.text, edtDtentregaf.text, _o, _dtentrega    , result);
  if edtvltotali.Value > 0 then
  begin
    result := result + ' and ';
    if edtvltotalf.Value > 0 then result := result + 'VLTOTAL between '+ substituir(edtvltotali.Text,',','.') +' and '+ substituir(edtvltotalf.Text,',','.')  +' '
                             else result := result + 'VLTOTAL='        + substituir(edtvltotali.Text,',','.') +' ';
  end;
  if (rdgcritico.ItemIndex = 0) or (rdgcritico.ItemIndex = 1) then
  begin
    result := result + ' and ';
         if rdgcritico.ItemIndex = 0 then result := result + 'F.bocritico=''S'' '
    else if rdgcritico.ItemIndex = 1 then result := result + 'f.bocritico=''N'' ';
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarOrdCompra.makesql:string;
begin
  result := 'SELECT O.CDORDCOMPRA'+
                  ',f.CDFORNECEDOR'+
                  ',f.nmfornecedor'+
                  ',S.nmstordcompra'+
                  ',T.nmtpordcompra'+
                  ',O.DTEMISSAO'+
                  ',O.DTENTREGA'+
                  ',s.nucor'+
                  ',O.VLTOTAL '+
            'FROM ORDCOMPRA O '+
            'left join stordcompra S on s.cdstordcompra=o.cdstordcompra '+
            'left join fornecedor F on f.cdfornecedor=o.cdfornecedor AND F.CDEMPRESA=O.CDEMPRESA '+
            'left join itordcompra I on i.cdordcompra=o.cdordcompra AND I.CDEMPRESA=O.CDEMPRESA '+
            'left join tpordcompra T on t.cdtpordcompra=o.cdtpordcompra AND T.CDEMPRESA=O.CDEMPRESA ';
  result := result + sqlwhere +
           ' group by O.CDORDCOMPRA'+
                 ',f.CDfornecedor'+
                 ',f.nmfornecedor'+
                 ',S.nmstordcompra'+
                 ',T.nmtpordcompra'+
                 ',O.DTEMISSAO'+
                 ',O.DTENTREGA'+
                  ',s.nucor'+
                 ',O.VLTOTAL '+
           ' order by o.dtemissao desc'+
                   ',o.cdordcompra';
end;

function TfrmLocalizarOrdCompra.makesql2:string;
begin
  result := 'select i.cdordcompra'+
                  ',i.cddigitado'+
                  ',pr.nmproduto'+
                  ',i.qtatendida'+
                  ',i.qtitem'+
                  ',i.vlunitario'+
                  ',i.cditordcompra'+
                  ',O.dtemissao'+
                  ',i.VLTOTAL '+
            'from ordcompra O '+
            'left JOIN fornecedor C ON O.CDfornecedor=C.CDfornecedor and o.cdempresa=c.cdempresa '+
            'left JOIN CONDPAGTO CP ON CP.CDCONDPAGTO=O.CDCONDPAGTO and o.cdempresa=cp.cdempresa '+
            'left JOIN STordcompra S ON S.CDSTordcompra=O.CDSTordcompra '+
            'inner join itordcompra I on i.cdordcompra=O.cdordcompra and o.cdempresa=i.cdempresa '+
            'inner join produto pr on i.cdproduto=pR.cdproduto and i.cdempresa=pr.cdempresa ';
  result := Result + sqlwhere;
end;

procedure TfrmLocalizarOrdCompra.btnFindClick(Sender: TObject);
begin
  qry.q.close;
  qry.q.sql.text := makesql;
  qry.q.open;

  qrydetail.q.Close;
  grlLevel3.Visible  := False;
  grlLevel3.GridView := nil;
  if ckbexibiritem.Checked then
  begin
    grlLevel3.Visible     := true;
    grlLevel3.GridView    := grdDBTableView2;
    qrydetail.q.sql.text := makesql2;
    qrydetail.q.open;
  end;
  btnOk.Enabled := qry.q.RecordCount > 0;
end;

procedure TfrmLocalizarOrdCompra.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarOrdCompra.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then btnOkClick(sender);
end;

procedure TfrmLocalizarOrdCompra.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarOrdCompra.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarOrdCompra.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarOrdCompra.FormShow(Sender: TObject);
begin
  if not semfornecedor then
  begin
    edtcdfornecedor.Enabled := true;
    edtcdfornecedor.SetFocus;
  end;
  edtcdfornecedor.visible := true;
end;

procedure TfrmLocalizarOrdCompra.grddetail1DBBandedTableView1DragDrop(Sender, Source: TObject; X, Y: Integer);
  procedure Abrir_item;
  begin
    if not cdsdetail1.Active then
    begin
      cdsdetail1.CreateDataSet;
      cdsdetail1.Open;
    end;
  end;
  procedure filtrar_item;
  begin
    qrydetail.q.Filter   := _cdordcompra+'='+qry.q.fieldbyname(_cdordcompra).AsString;
    qrydetail.q.Filtered := True;
  end;
  function itordcompra_existe:Boolean;
  begin
    result := cdsdetail1.Locate(_cditordcompra, qrydetail.q.fieldbyname(_cditordcompra).AsString, [loCaseInsensitive]);
  end;
var
  i : Integer;
begin
  Abrir_item;
  if boordcompra then
  begin
    filtrar_item;
    while not qrydetail.q.Eof do
    begin
      if (not itordcompra_existe) and (qrydetail.q.FieldByName(_qtatendida).AsFloat<qrydetail.q.fieldbyname(_qtitem).AsFloat) then
      begin
        cdsdetail1.Insert;
        for i := 0 to qrydetail.q.FieldCount - 1 do
        begin
          cdsdetail1.FieldByName(qrydetail.q.Fields[I].FieldName).AsVariant := qrydetail.q.Fields[I].AsVariant;
        end;
        cdsdetail1.Post;
      end;
      qrydetail.q.Next;
    end;
    qrydetail.q.Filtered := False;
  end;
  if boitordcompra then
  begin
    if not itordcompra_existe then
    begin
      if qrydetail.q.FieldByName(_qtatendida).AsFloat<qrydetail.q.fieldbyname(_qtitem).AsFloat then
      begin
        cdsdetail1.Insert;
        for i := 0 to qrydetail.q.FieldCount - 1 do
        begin
          cdsdetail1.FieldByName(qrydetail.q.Fields[I].FieldName).AsVariant := qrydetail.q.Fields[I].AsVariant;
        end;
        cdsdetail1.Post;
      end;
    end;
  end;
end;

procedure TfrmLocalizarOrdCompra.grddetail1DBBandedTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TfrmLocalizarOrdCompra.grdDBTableView2StartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  boitordcompra := True;
  boordcompra   := False;
end;

procedure TfrmLocalizarOrdCompra.tbvStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  boordcompra   := True;
  boitordcompra := False;
end;

procedure TfrmLocalizarOrdCompra.FormCreate(Sender: TObject);
begin
  qry := tclassequery.create;
  qrydetail := tclassequery.create;
  dtsdetail.dataset := qrydetail.q;
  TRegistro.SetQueryLocalizar(qry, dts, tbv);
  AbrirTabelas;
  SetEmpresa;
end;

procedure TfrmLocalizarOrdCompra.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(qrydetail);
end;

procedure TfrmLocalizarOrdCompra.AbrirTabelas;
begin
  cbxcdtpordcompra.Properties.ListSource := abrir_tabela(_tpordcompra);
  cbxcdstordcompra.Properties.ListSource := abrir_tabela(_stordcompra);
  cbxcdtpaplicacao.Properties.ListSource := abrir_tabela(_tpaplicacao);
  cbxcdcondpagto.Properties.ListSource := abrir_tabela(_condpagto + _e);
end;

procedure TfrmLocalizarOrdCompra.SetEmpresa;
begin
  lblordproducao.Visible := Empresa.producao.ordproducao.bo;
  edtcdordproducao.Visible := Empresa.producao.ordproducao.bo;
end;

procedure TfrmLocalizarOrdCompra.cbxcdtpordcompraEnter(Sender: TObject);
begin
  abrir_tabela(_tpordcompra);
  colorenter(Sender);
end;

procedure TfrmLocalizarOrdCompra.cbxcdcondpagtoEnter(Sender: TObject);
begin
  abrir_tabela(_condpagto+_e);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdCompra.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarOrdCompra.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrdCompra.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarOrdCompra.edtcdordproducaoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdordproducao.text;
  if cd = '' then
  begin
    colorexit(Sender);
    exit;
  end;
  if not CodigoExiste(_ordproducao, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_ordem+' '+__producao)]), mterror, [mbok], 0);
    edtcdordproducao.setfocus;
    abort;
  end;
  colorexit(Sender);
end;

procedure TfrmLocalizarOrdCompra.edtcdordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdordproducaoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrdCompra.edtcdordproducaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarordproducao;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdordproducao.text := cd.tostring;
end;

procedure TfrmLocalizarOrdCompra.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarOrdCompra.edtcdprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrdCompra.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := cd.ToString;
  lblnmproduto.caption := qregistro.NomedoCodigo(_produto, cd);
end;

procedure TfrmLocalizarOrdCompra.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarOrdCompra.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarOrdCompra.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarOrdCompra.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarOrdCompra.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarOrdCompra.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarOrdCompra.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarOrdCompra.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarOrdCompra.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, qry, tbv);
end;

procedure TfrmLocalizarOrdCompra.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not qry.q.Active) or (qry.q.RecordCount <= 0) then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    qry.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    qry.q.Prior;
    key := 0;
  end;
end;

procedure TfrmLocalizarOrdCompra.tbvCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCOR;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
       if ACanvas.Font.Color = clred        then ACanvas.Font.Style := [fsStrikeOut, fsBold]
  else if ACanvas.Font.Color <> 0 then ACanvas.Font.Style := [fsBold];
end;

end.

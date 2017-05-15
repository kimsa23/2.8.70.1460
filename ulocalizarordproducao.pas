unit ulocalizarordproducao;

interface

uses
  System.Actions, System.UITypes,
  forms, Graphics, Buttons, StdCtrls, ComCtrls, Controls, Mask, Classes, ExtCtrls,
  ActnList, dialogs, Menus, sysutils,
  DB,
  uMenuRelatorio, udatahora, uconstantes, uregistro, ustrings, urotinas,
  uexportarexcel, uLocalizar, ulocalizarCliente, ulocalizarFornecedor, udlgdatabalanco,
  uimprimirrelatoriopadrao,
  classesqlmontar, classeempresa, classeretornasql, classeform, classeaplicacao,
  classeordproducao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons,
  cxGroupBox, cxRadioGroup, cxPC, cxGraphics, dxStatusBar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxLookAndFeels, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPCdxBarPopupMenu, dxBar, cxNavigator, dxCore, cxDateUtils,
  dxBarBuiltInMenu;

type
  TfrmLocalizarOrdProducao = class(TForm)
    Bevel1: TBevel;
    lblcliente: TLabel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDORDPRODUCAO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTPREVENTREGA: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvNMSTSORDPRODUCAO: TcxGridDBColumn;
    tbvNUPEDIDO: TcxGridDBColumn;
    tbvDTENTREGA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    lblstproducao: TLabel;
    cbxcdstordproducao: TcxLookupComboBox;
    tbvCDORCAMENTO: TcxGridDBColumn;
    tbvQTHORAORCADA: TcxGridDBColumn;
    tbvQTHORAPRODUCAO: TcxGridDBColumn;
    tbvDSDESENHO: TcxGridDBColumn;
    tbvNUCOTACAO: TcxGridDBColumn;
    tbvNUITEM: TcxGridDBColumn;
    lbldesenho: TLabel;
    edtdsdesenho: TcxTextEdit;
    Label3: TLabel;
    cbxcdtpequipamento: TcxLookupComboBox;
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
    actlimparcriterio: TAction;
    dxBarButton1: TdxBarButton;
    tbvNUCOR: TcxGridDBColumn;
    pgc1: TcxPageControl;
    tbsdata: TcxTabSheet;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lblentreemissao: TLabel;
    lbl4: TLabel;
    lbl7: TLabel;
    tbsproduto: TcxTabSheet;
    edtdtEmissaoi: TcxDateEdit;
    edtDtemissaof: TcxDateEdit;
    edtdtprventregai: TcxDateEdit;
    edtdtprventregaf: TcxDateEdit;
    edtdtentregai: TcxDateEdit;
    edtdtentregaf: TcxDateEdit;
    Label10: TLabel;
    lblorcamento: TLabel;
    edtcdorcamento: TcxTextEdit;
    lblpedido: TLabel;
    edtnupedido: TcxTextEdit;
    btnfindpedido: TcxButton;
    btnfindorcamento: TcxButton;
    lblnucotacao: TLabel;
    edtNUCOTACAO: TcxTextEdit;
    lblnuitem: TLabel;
    edtnuitem: TcxTextEdit;
    lblsaida: TLabel;
    edtnusaida: TcxTextEdit;
    btnfindsaida: TcxButton;
    tbvNUSAIDA: TcxGridDBColumn;
    tbvCDDIGITADO: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    lblnuestrutural: TLabel;
    edtnuestrutural: TcxTextEdit;
    lblcdtpordproducao: TLabel;
    cbxcdtpordproducao: TcxLookupComboBox;
    tbvNUESTRUTURAL: TcxGridDBColumn;
    btnimprimir: TdxBarButton;
    actimprimir: TAction;
    pumimprimir: TdxBarPopupMenu;
    tbvCDEMPRESA: TcxGridDBColumn;
    tbvNMTPORDPRODUCAO: TcxGridDBColumn;
    actpesagem: TAction;
    dxBarButton3: TdxBarButton;
    actopcoes: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actGerarEntradaProdutoAcabado: TAction;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    actgerarrim: TAction;
    dxBarButton6: TdxBarButton;
    actgerarbaixaestoquemateriaprima: TAction;
    actmodograde: TAction;
    dxBarButton7: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    actmudarstatus: TAction;
    dxBarButton8: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnfindorcamentoClick(Sender: TObject);
    procedure btnfindpedidoClick(Sender: TObject);
    procedure edtcdorcamentoExit(Sender: TObject);
    procedure edtnupedidoExit(Sender: TObject);
    procedure edtcdorcamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnupedidoKeyPress(Sender: TObject; var Key: Char);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdtpequipamentoEnter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnusaidaExit(Sender: TObject);
    procedure btnfindsaidaClick(Sender: TObject);
    procedure edtnusaidaKeyPress(Sender: TObject; var Key: Char);
    procedure actimprimirExecute(Sender: TObject);
    procedure cbxcdstordproducaoEnter(Sender: TObject);
    procedure cbxcdtpordproducaoEnter(Sender: TObject);
    procedure actpesagemExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actGerarEntradaProdutoAcabadoExecute(Sender: TObject);
    procedure actgerarrimExecute(Sender: TObject);
    procedure actgerarbaixaestoquemateriaprimaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actmudarstatusExecute(Sender: TObject);
  private   { Private declarations }
    codigo : integer;
    qry : TClasseQuery;
    dts : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabela;
    procedure setPedido;
    function maisDeUmSelecionado:Boolean;
    function sqlwhere: string;
    function Makesql: string;
  public    { Public declarations }
  end;

function Localizarordproducao(nupedido:string=''):Integer;

var
  frmLocalizarOrdProducao: TfrmLocalizarOrdProducao;

implementation

uses
  uDtmMain,
  uLocalizarPedido,
  ulocalizarorcamento,
  ulocalizarproduto,
  ulocalizarsaida,
  classeregistro,
  ClasseLocalizar,
  umudaretapa;

{$R *.DFM}

function Localizarordproducao(nupedido:string=''):Integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_ordproducao) then
  begin
    frmLocalizarOrdProducao := tfrmLocalizarOrdProducao.Create(application);
  end;
  with frmLocalizarOrdProducao do
  begin
    edtnupedido.Enabled   := nupedido = '';
    btnfindpedido.Enabled := nupedido = '';
    if nupedido <> '' then
    begin
      edtnupedido.Text := nupedido;
    end;
    if qry.q.Active then
    begin
      frmLocalizarOrdProducao.btnFindClick(frmLocalizarOrdProducao.btnFind);
    end;
    showmodal;
    if ModalResult = mrok then
    begin
      result := codigo;
    end;
  end;
end;

function TfrmLocalizarOrdProducao.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where ordproducao.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontardata  (edtdtEmissaoi.text   , edtdtEmissaof.text   , _ordproducao, _dtemissao   , result);
  sqlmontardata  (edtdtprventregai.text, edtdtprventregaf.text, _ordproducao, _dtprventrega, result);
  sqlmontardata  (edtdtentregai.text   , edtdtentregaf.text   , _ordproducao, _dtentrega, result);
  sqlmontarcodigo(cbxcdstordproducao.EditValue  , _ordproducao            , _cdstordproducao, result);
  sqlmontarcodigo(cbxcdtpordproducao.EditValue  , _ordproducao            , _cdtpordproducao, result);
  sqlmontarcodigo(edtcdproduto.text, _ordproducao            , _cdproduto          , result);
  sqlmontarcodigo(cbxcdtpequipamento.EditValue  , _ordproducao            , _cdtpequipamento    , result);
  sqlmontarcodigo(edtcdcliente.text        , _pedido                 , _cdcliente          , result);
  sqlmontarcodigo(edtcdorcamento.Text           , _itorcamento            , _cdorcamento        , result);
  sqlmontarcodigo(edtnupedido.Text              , _pedido                 , _nupedido           , result);
  sqlmontarnomelike(edtdsdesenho.Text           , _Ordproducao            , _dsdesenho          , result);
  sqlmontarnomelike(edtnuestrutural.Text        , _Ordproducao            , _nuestrutural       , result);
  sqlmontarnomelike(edtnucotacao.Text           , _itpedido               , _nucotacao          , result);
  sqlmontarnomelike(edtnusaida.Text             , _saida                  , _nusaida            , result);
  sqlmontarnomelike(edtnuitem.Text              , _itpedido               , _nuitem             , result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarOrdProducao.Makesql:string;
begin
  result := 'SELECT ordproducao.cdempresa'+
                  ',ordproducao.cdordproducao'+
                  ',tpordproducao.nmtpordproducao'+
                  ',ordproducao.DTEMISSAO'+
                  ',ordproducao.dtentrega'+
                  ',ordproducao.DTPRVENTREGA'+
                  ',stordproducao.nmstordproducao'+
                  ',Cliente.nmcliente'+
                  ',itorcamento.cdorcamento'+
                  ',ordproducao.QTHORAORCADA'+
                  ',ordproducao.QTHORAPRODUCAO'+
                  ',Stordproducao.NUCOR'+
                  ',pedido.nupedido'+
                  ',ordproducao.dsdesenho'+
                  ',ordproducao.nuestrutural'+
                  ',itpedido.nucotacao'+
                  ',saida.nusaida'+
                  ',ordproducao.cddigitado'+
                  ',produto.nmproduto'+
                  ',itpedido.nuitem '+
             'FROM ordproducao '+
             'left join tpordproducao on tpordproducao.cdempresa=ordproducao.cdempresa and tpordproducao.cdtpordproducao=ordproducao.cdtpordproducao '+
             'left join produto on produto.cdempresa=ordproducao.cdempresa and produto.cdproduto=ordproducao.cdproduto '+
             'left join itpedido on itpedido.cditpedido=ORDPRODUCAO.cditpedido and itpedido.cdempresa=ORDPRODUCAO.cdempresa '+
             'left join itsaida on itsaida.cdempresa=itpedido.cdempresa and itsaida.cditpedido=itpedido.cditpedido '+
             'left join saida on saida.cdempresa=itsaida.cdempresa and saida.cdsaida=itsaida.cdsaida '+
             'left join itorcamento on itorcamento.cditorcamento=itpedido.cditorcamento and itorcamento.cdempresa=itpedido.cdempresa '+
             'left join pedido on pedido.cdpedido=itpedido.cdpedido and pedido.cdempresa=itpedido.cdempresa '+
             'LEFT JOIN CLIENTE ON CLIENTE.CDCLIENTE=pedido.CDCLIENTE and CLIENTE.cdempresa=pedido.cdempresa '+
             'LEFT JOIN STordproducao ON STordproducao.CDSTordproducao=ordproducao.cdstordproducao and STordproducao.cdempresa=ordproducao.cdempresa '+
             sqlwhere+
             ' GROUP BY ordproducao.cdempresa'+
                      ',ordproducao.cdordproducao'+
                      ',tpordproducao.nmtpordproducao'+
                      ',ordproducao.DTEMISSAO'+
                      ',ordproducao.dtentrega'+
                      ',ordproducao.DTPRVENTREGA'+
                      ',stordproducao.nmstordproducao'+
                      ',Cliente.nmcliente'+
                      ',itorcamento.cdorcamento'+
                      ',ordproducao.QTHORAORCADA'+
                      ',ordproducao.QTHORAPRODUCAO'+
                      ',Stordproducao.NUCOR'+
                      ',pedido.nupedido'+
                      ',ordproducao.dsdesenho'+
                      ',ordproducao.nuestrutural'+
                      ',itpedido.nucotacao'+
                      ',saida.nusaida'+
                      ',ordproducao.cddigitado'+
                      ',produto.nmproduto'+
                      ',itpedido.nuitem'+
             ' order by ordproducao.cdordproducao desc';
end;

procedure TfrmLocalizarOrdProducao.btnFindClick(Sender: TObject);
begin
  qry.q.close;
  qry.q.sql.Text := makesql;
  qry.q.open;
  btnOk.Enabled := qry.q.recordcount > 0;
end;

procedure TfrmLocalizarOrdProducao.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarOrdProducao.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarOrdProducao.qAfterScroll(DataSet: TDataSet);
begin
  codigo := qry.q.fieldbyname(_cdordproducao).AsInteger;
end;

procedure TfrmLocalizarOrdProducao.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarOrdProducao.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarOrdProducao.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarOrdProducao.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarOrdProducao.FormCreate(Sender: TObject);
begin
  qry := TClasseQuery.Create;
  dts := TDataSource.Create(self);
  qry.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(qry, dts, tbv);
  AbrirTabela;
  setPedido;
  GeraMenuRelatorio('', btnimprimir, 47, tbv, qry.q, _ordproducao);
end;

procedure TfrmLocalizarOrdProducao.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
end;

procedure TfrmLocalizarOrdProducao.btnfindorcamentoClick(Sender: TObject);
var
  cd : integer;
begin
  cd := Localizarorcamento;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdorcamento.text := cd.ToString;
end;

procedure TfrmLocalizarOrdProducao.btnfindpedidoClick(Sender: TObject);
var
  cd : integer;
begin
  cd := Localizarpedido;
  if cd = 0 then
  begin
    exit;
  end;
  edtnupedido.text := qregistro.StringdoCodigo(_pedido, cd, _nupedido);
end;

procedure TfrmLocalizarOrdProducao.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarOrdProducao.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrdProducao.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarOrdProducao.edtcdorcamentoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdorcamento.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_orcamento, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(__orcamento)]), mterror, [mbok], 0);
    edtcdorcamento.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarOrdProducao.edtnupedidoExit(Sender: TObject);
var
  cdpedido, cd: string;
begin
  cd := edtnupedido.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  cdpedido := CodigodoCampo(_pedido, cd, _nupedido);
  if cdpedido = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_pedido)]), mterror, [mbok], 0);
    edtnupedido.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarOrdProducao.edtcdorcamentoKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarOrdProducao.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarOrdProducao.edtcdprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrdProducao.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarOrdProducao.edtnupedidoKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarOrdProducao.edtnusaidaExit(Sender: TObject);
begin
  if edtnusaida.text = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if not RegistroExiste(_saida, _nusaida+'='+edtnusaida.text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnusaida.text, maiuscula(_nota+' '+_fiscal)]), mterror, [mbok], 0);
    edtnusaida.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarOrdProducao.edtnusaidaKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarOrdProducao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarOrdProducao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarOrdProducao.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdProducao.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarOrdProducao.btnfindsaidaClick(Sender: TObject);
var
  cd : integer;
begin
  cd := Localizarsaida;
  if cd = 0 then
  begin
    exit;
  end;
  edtnusaida.text := qregistro.StringdoCodigo(_saida, cd, _nusaida);
end;

procedure TfrmLocalizarOrdProducao.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarOrdProducao.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarOrdProducao.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarOrdProducao.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarOrdProducao.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, qry, tbv);
end;

procedure TfrmLocalizarOrdProducao.actmudarstatusExecute(Sender: TObject);
var
  i : integer;
  ordproducao : TOrdproducao;
  cdordproducao : string;
  cdstordproducao : integer;
  boatualizar : boolean;
begin
  cdstordproducao := DlgMudardePara(_stordproducao);
  if cdstordproducao = 0 then
  begin
    exit;
  end;
  boatualizar := false;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then // pegar todos os que estão selecionados
    begin
      ordproducao := tordproducao.create;
      try
        cdordproducao := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdordproducao).Index];
        if ordproducao.Select(strtoint(cdordproducao)) then
        begin
          if ordproducao.cdstordproducao <> cdstordproducao then
          begin
            ordproducao.cdstordproducao := cdstordproducao;
            ordproducao.Update;
            ordproducao.RegistrarMudancaStatus;
            boatualizar := true;
          end;
        end;
      finally
        freeandnil(ordproducao);
      end;
    end;
  end;
  if boatualizar then
  begin
    qry.q.Refresh;
  end;
end;

procedure TfrmLocalizarOrdProducao.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCOR;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color = clred  then
  begin
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end
  else if ACanvas.Font.Color = clblue then
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarOrdProducao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarOrdProducao.AbrirTabela;
begin
  cbxcdstordproducao.Properties.ListSource   := abrir_tabela(_stordproducao);
  cbxcdtpordproducao.Properties.ListSource   := abrir_tabela(_tpordproducao);
  cbxcdtpequipamento.Properties.ListSource   := abrir_tabela(_tpequipamento);
end;

procedure TfrmLocalizarOrdProducao.setPedido;
var
  boativar : Boolean;
begin
  actGerarEntradaProdutoAcabado.Visible    := RegistroExiste(_tpordproducao, _boentradaestoque+'=''S''');
  actgerarrim.Visible                      := RegistroExiste(_tpordproducao, _bogerarrim+'=''S''');
  actgerarbaixaestoquemateriaprima.Visible := RegistroExiste(_tpordproducao, _bomaterialbaixarestoque+'=''S''');
  boativar := RegistroExiste(_tpordproducao, _bopedido+'=''S''');

  lblorcamento.Visible     := boativar;
  edtcdorcamento.Visible   := boativar;
  btnfindorcamento.Visible := boativar;
  tbvCDORCAMENTO.Visible   := boativar;

  lblpedido.Visible        := boativar;
  edtnupedido.Visible      := boativar;
  btnfindpedido.Visible    := boativar;
  tbvNUPEDIDO.Visible      := boativar;

  lblsaida.Visible         := boativar;
  edtnusaida.Visible       := boativar;
  btnfindsaida.Visible     := boativar;
  tbvNUSAIDA.Visible       := boativar;

  lblcliente.Visible       := boativar;
  edtcdcliente.Visible     := boativar;
  tbvNMCLIENTE.Visible     := boativar;

  lblnucotacao.Visible     := boativar;
  edtNUCOTACAO.Visible     := boativar;
  tbvNUCOTACAO.Visible     := boativar;

  lblnuitem.Visible        := boativar;
  edtnuitem.Visible        := boativar;
  tbvNUITEM.Visible        := boativar;
end;

procedure TfrmLocalizarOrdProducao.actimprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmLocalizarOrdProducao.cbxcdstordproducaoEnter(Sender: TObject);
begin
  abrir_tabela(_stordproducao);
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarOrdProducao.cbxcdtpordproducaoEnter(Sender: TObject);
begin
  abrir_tabela(_tpordproducao);
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarOrdProducao.actpesagemExecute(Sender: TObject);
var
  cdformulacao, cdproduto, lista, cdordproducao : string;
  i : integer;
  ordproducao : TOrdProducao;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  lista := '';
  ordproducao := TOrdProducao.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      cdordproducao := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdordproducao).Index];
      if tbv.ViewData.Records[i].Selected and OrdProducao.seMesmoProdutoFormulacao(cdordproducao, cdproduto, cdformulacao) then
      begin
        if lista <> '' then
        begin
          lista := lista + ',';
        end;
        lista := lista + cdordproducao;
      end;
    end;
  finally
    freeandnil(ordproducao);
  end;
  if cdordproducao <> '' then
  begin
    ImpimirRelatorioPadrao1(22, 'where ordproducao.cdempresa='+empresa.cdempresa.tostring+' and ordproducao.cdordproducao in ('+lista+')');
  end;
end;

procedure TfrmLocalizarOrdProducao.actopcoesExecute(Sender: TObject);
begin
  //
end;

procedure TfrmLocalizarOrdProducao.actgerarrimExecute(Sender: TObject);
var
  cdrim, i : integer;
  ordproducao : TOrdProducao;
  cdordproducao : string;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      ordproducao := TOrdProducao.create;
      try
        cdordproducao := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdordproducao).Index];
        cdrim := ordproducao.GerarRequisicao(StrToInt(cdordproducao));
        if cdrim > 0 then
        begin
          MessageDlg('Requisição '+inttostr(cdrim)+' gerada para a Ordem de Produção '+cdordproducao+'.', mtInformation, [mbOK], 0);
        end
        else if cdrim = 0 then
        begin
          MessageDlg('Requisição já foi gerada para a Ordem de Produção '+cdordproducao+'.', mtInformation, [mbOK], 0);
        end;
      finally
        FreeAndNil(ordproducao);
      end;
    end;
  end;
end;

procedure TfrmLocalizarOrdProducao.actGerarEntradaProdutoAcabadoExecute(Sender: TObject);
var
  i : integer;
  ordproducao : TOrdProducao;
  data : TDate;
  botodos, boprimeiro : Boolean;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  botodos := False;
  boprimeiro := True;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      if boprimeiro and (not botodos) and (maisDeUmSelecionado) then
      begin
        botodos := messagedlg('Aplicar a data de emissão para a entrada de estoque em todos as Ordens de Produção?', mtConfirmation, [mbNo, mbYes], 0) = mrYes;
      end;
      boprimeiro := False;
      ordproducao := TOrdProducao.create;
      try
        ordproducao.Select(StrToInt(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdordproducao).Index]));
        if botodos then
        begin
          data := ordproducao.dtemissao;
          ordproducao.GerarEntradaEstoqueProdutoOP(data);
        end
        else if dlgDataBalanco(data) then
        begin
          ordproducao.GerarEntradaEstoqueProdutoOP(data);
        end;
      finally
        FreeAndNil(ordproducao);
      end;
    end;
  end;
end;

procedure TfrmLocalizarOrdProducao.actgerarbaixaestoquemateriaprimaExecute(Sender: TObject);
var
  i : integer;
  itordproducaomaterial : TItOrdProducaoMaterialList;
  data : TDate;
  botodos, boprimeiro : Boolean;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  botodos := False;
  boprimeiro := true;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      if boprimeiro and (not botodos) and (maisDeUmSelecionado) then
      begin
        botodos := messagedlg('Aplicar a data de emissão para a baixa de estoque em todos as Ordens de Produção?', mtConfirmation, [mbNo, mbYes], 0) = mrYes;
      end;
      boprimeiro := False;
      itordproducaomaterial := TItOrdProducaoMaterialList.create;
      try
        itordproducaomaterial.Ler(StrToInt(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdordproducao).Index]));
        if itordproducaomaterial.existeMateriaPrimaParaBaixarEstoque then
        begin
          if botodos then
          begin
            data := qregistro.DatadoCodigo(_ordproducao, StrToInt(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdordproducao).Index]), _dtemissao);
            itordproducaomaterial.gerarBaixaEstoque(data);
          end
          else if dlgDataBalanco(data) then
          begin
            itordproducaomaterial.gerarBaixaEstoque(data);
          end;
        end;
      finally
        FreeAndNil(itordproducaomaterial);
      end;
    end;
  end;
end;

function TfrmLocalizarOrdProducao.maisDeUmSelecionado: Boolean;
var
  qt, i : Integer;
begin
  result := False;
  qt := 0;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      Inc(qt);
      if qt > 1 then
      begin
        result := True;
        Break;
      end;
    end;
  end;
end;

end.

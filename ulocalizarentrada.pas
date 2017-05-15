unit ulocalizarentrada;

interface

uses
  System.Actions, System.UITypes,
  forms, Buttons, StdCtrls, ComCtrls, Mask, Classes, ExtCtrls, dialogs, sysutils,
  Menus, ActnList, Controls,
  DB,
  uExportarExcel, ustrings, udatahora, uregistro, uconstantes,
  urotinas,
  classesqlmontar, classeretornasql, classeempresa, classeform, classeAplicacao,
  classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxGroupBox,
  cxGraphics, dxStatusBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCurrencyEdit, cxRadioGroup, cxPC, cxLookAndFeels,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPCdxBarPopupMenu, dxBar,
  cxNavigator, dxCore, cxDateUtils, dxBarBuiltInMenu, ClasseLocalizar;

type
  TfrmLocalizarEntrada = class(TForm)
    Bevel1: TBevel;
    lbldocumento: TLabel;
    Label2: TLabel;
    lblnmcondpagto: TLabel;
    lblfornecedor: TLabel;
    lblcliente: TLabel;
    lbltransportadora: TLabel;
    lblnmgrupo: TLabel;
    btnFind: TcxButton;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvNUENTRADA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTSAIDA: TcxGridDBColumn;
    tbvNMREDUZIDO: TcxGridDBColumn;
    tbvNMFORNECEDOR: TcxGridDBColumn;
    tbvNMTRANSPORTADORA: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvNMCONDPAGTO: TcxGridDBColumn;
    tbvCDENTRADA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    lbldtemissao: TLabel;
    lbldtsaida: TLabel;
    lblentresaida: TLabel;
    lblentreemissao: TLabel;
    edtdtEmissaoi: TcxDateEdit;
    edtdtsaidai: TcxDateEdit;
    edtDtemissaof: TcxDateEdit;
    edtdtsaidaf: TcxDateEdit;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    edtvlicmsi: TcxCalcEdit;
    edtvlbaseicmsi: TcxCalcEdit;
    edtvlicmsf: TcxCalcEdit;
    edtvlbaseicmsf: TcxCalcEdit;
    cxTabSheet5: TcxTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    edtvlfretesubi: TcxCalcEdit;
    edtvlbasefretesubi: TcxCalcEdit;
    edtalfretesubi: TcxCalcEdit;
    edtvlfretesubf: TcxCalcEdit;
    edtvlbasefretesubf: TcxCalcEdit;
    edtalfretesubf: TcxCalcEdit;
    cxTabSheet6: TcxTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtvlipii: TcxCalcEdit;
    edtvlbaseipii: TcxCalcEdit;
    edtvlipif: TcxCalcEdit;
    edtvlbaseipif: TcxCalcEdit;
    Label1: TLabel;
    edtpsbrutof: TcxCalcEdit;
    Label25: TLabel;
    edtpsbrutoi: TcxCalcEdit;
    Label26: TLabel;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    edtvlpisi: TcxCalcEdit;
    edtvlbasepisi: TcxCalcEdit;
    edtvlpisf: TcxCalcEdit;
    edtvlbasepisf: TcxCalcEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    edtvlcofinsi: TcxCalcEdit;
    edtvlbasecofinsi: TcxCalcEdit;
    edtvlcofinsf: TcxCalcEdit;
    edtvlbasecofinsf: TcxCalcEdit;
    Label39: TLabel;
    Label40: TLabel;
    tbvNMDOCFISCALICMS: TcxGridDBColumn;
    cxTabSheet9: TcxTabSheet;
    Label41: TLabel;
    edtvlprodutoi: TcxCalcEdit;
    Label42: TLabel;
    edtvlprodutof: TcxCalcEdit;
    Label43: TLabel;
    edtvlservicoi: TcxCalcEdit;
    Label44: TLabel;
    edtvlservicof: TcxCalcEdit;
    Label45: TLabel;
    edtvlfretei: TcxCalcEdit;
    Label46: TLabel;
    edtvlfretef: TcxCalcEdit;
    Label47: TLabel;
    edtvlseguroi: TcxCalcEdit;
    Label48: TLabel;
    edtvlsegurof: TcxCalcEdit;
    Label49: TLabel;
    edtvloutdespesai: TcxCalcEdit;
    Label50: TLabel;
    edtvloutdespesaf: TcxCalcEdit;
    tbvVLPRODUTO: TcxGridDBColumn;
    tbvVLSERVICO: TcxGridDBColumn;
    tbvVLDESCONTO: TcxGridDBColumn;
    tbsicmssubtrib: TcxTabSheet;
    Label52: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    edtvlicmssubtribi: TcxCalcEdit;
    edtvlbaseicmssubtribi: TcxCalcEdit;
    edtvlicmssubtribf: TcxCalcEdit;
    edtvlbaseicmssubtribf: TcxCalcEdit;
    tbvVLBASEICMS: TcxGridDBColumn;
    tbvVLICMS: TcxGridDBColumn;
    tbvVLBASEICMSSUBTRIB: TcxGridDBColumn;
    tbvVLICMSSUBTRIB: TcxGridDBColumn;
    tbvVLBASEIPI: TcxGridDBColumn;
    tbvVLIPI: TcxGridDBColumn;
    cbxnustdocumento: TcxLookupComboBox;
    cbxnudocfiscalicms: TcxLookupComboBox;
    tbvCDCFOP: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    lblordcompra: TLabel;
    edtcdordcompra: TcxButtonEdit;
    cbxcdtpentrada: TcxLookupComboBox;
    edtvltotalf: TcxCalcEdit;
    Label11: TLabel;
    edtvltotali: TcxCalcEdit;
    Label10: TLabel;
    Label53: TLabel;
    edtvldescontoi: TcxCalcEdit;
    Label54: TLabel;
    edtvldescontof: TcxCalcEdit;
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
    tbvVLOUTDESPESA: TcxGridDBColumn;
    tbvVLFRETE: TcxGridDBColumn;
    rdgdsxml: TcxRadioGroup;
    dxBarButton3: TdxBarButton;
    actmodograde: TAction;
    edtcdfornecedor: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    edtcdtransportadora: TcxButtonEdit;
    lblnmtransportadora: TLabel;
    edtcdcfop: TcxButtonEdit;
    lblnmcfop: TLabel;
    edtcdcondpagto: TcxButtonEdit;
    Label8: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    tbvVLBASEPIS: TcxGridDBColumn;
    tbvVLPIS: TcxGridDBColumn;
    tbvVLBASECOFINS: TcxGridDBColumn;
    tbvVLCOFINS: TcxGridDBColumn;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtcdordcompraExit(Sender: TObject);
    procedure edtcdordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdordcompraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cbxcdtpentradaEnter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraExit(Sender: TObject);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdcfopExit(Sender: TObject);
    procedure edtcdcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdcfopPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdcondpagtoExit(Sender: TObject);
    procedure edtcdcondpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdcondpagtoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure set_fornecedor(cdfornecedor:string);
    procedure AbrirTabela;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function Localizarentrada(cdfornecedor:string=''):integer;

var
  frmLocalizarEntrada: TfrmLocalizarEntrada;

implementation

uses ulocalizarCliente,
  ulocalizarFornecedor,
  uLocalizar,
  ulocalizarTransportadora,
  uDtmMain,
  uLocalizarOrdcompra,
  ulocalizarproduto;

{$R *.DFM}

function Localizarentrada(cdfornecedor:string=''):integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_entrada) then
  begin
    frmlocalizarentrada                        := Tfrmlocalizarentrada.Create(application);
    frmlocalizarentrada.lblordcompra.Visible   := empresa.aquisicao.ordcompra.bo;
    frmlocalizarentrada.edtcdordcompra.Visible := empresa.aquisicao.ordcompra.bo;
  end;
  frmLocalizarEntrada.set_fornecedor(cdfornecedor);
  if frmlocalizarentrada.q.q.Active then
  begin
    frmlocalizarentrada.btnfindclick(frmlocalizarentrada.btnfind);
  end;
  frmlocalizarentrada.showmodal;
  if frmlocalizarentrada.ModalResult = mrok then
  begin
    result := frmlocalizarentrada.codigo;
  end;
end;

procedure TfrmLocalizarEntrada.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarEntrada.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEntrada.edtcdprodutoPropertiesButtonClick( Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarEntrada.edtcdtransportadoraExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _transportadora, _transportadora);
  colorexit(sender);
end;

procedure TfrmLocalizarEntrada.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEntrada.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora, lblnmtransportadora);
end;

function TfrmLocalizarEntrada.makesql:string;
begin
  result := 'SELECT e.CDENTRADA'+
                  ',e.NUENTRADA'+
                  ',e.DTEMISSAO'+
                  ',e.DTSAIDA'+
                  ',tp.NMREDUZIDO'+
                  ',E.CDCFOP,F.RZSOCIAL NMFORNECEDOR'+
                  ',T.RZSOCIAL NMTRANSPORTADORA'+
                  ',C.RZSOCIAL NMCLIENTE'+
                  ',e.VLTOTAL'+
                  ',cn.NMCONDPAGTO'+
                  ',coalesce(D.NUDOCFISCALICMS,'''')||'' - ''||coalesce(D.NMDOCFISCALICMS,'''')||'' - ''||coalesce(D.DSMODELO,'''') NMDOCFISCALICMS'+
                  ',e.vlproduto'+
                  ',e.vlservico'+
                  ',e.vldesconto'+
                  ',e.vlbaseicms'+
                  ',e.vlicms'+
                  ',e.vlbaseicmssubtrib'+
                  ',e.vlicmssubtrib'+
                  ',E.VLOUTDESPESA'+
                  ',E.VLFRETE'+
                  ',e.vlbaseipi'+
                  ',e.vlbasepis'+
                  ',e.vlpis'+
                  ',e.vlbasecofins'+
                  ',e.vlcofins'+
                  ',e.vlipi '+
            'FROM ENTRADA e '+
            'INNER JOIN TPENTRADA tp ON TP.CDTPENTRADA=E.CDTPENTRADA and tp.cdempresa=e.cdempresa '+
            'LEFT JOIN CLIENTE c ON C.CDCLIENTE=E.CDCLIENTE and c.cdempresa=e.cdempresa '+
            'LEFT JOIN FORNECEDOR f ON F.CDFORNECEDOR=E.CDFORNECEDOR and f.cdempresa=e.cdempresa '+
            'LEFT JOIN TRANSPORTADORA t ON T.CDTRANSPORTADORA=E.CDTRANSPORTADORA and t.cdempresa=e.cdempresa '+
            'LEFT JOIN CONDPAGTO cn ON Cn.CDCONDPAGTO=E.CDCONDPAGTO and cn.cdempresa=e.cdempresa '+
            'LEFT JOIN DOCFISCALICMS d ON D.nuDOCFISCALICMS=E.nuDOCFISCALICMS '+
            'left join itentrada i on i.cdentrada=e.cdentrada and i.cdempresa=e.cdempresa '+
            sqlwhere+
            'group by e.NUENTRADA'+
                            ',e.DTEMISSAO'+
                            ',e.DTSAIDA'+
                            ',tp.NMREDUZIDO'+
                            ',E.CDCFOP,F.RZSOCIAL'+
                            ',T.RZSOCIAL'+
                            ',C.RZSOCIAL'+
                            ',e.VLTOTAL'+
                            ',cn.NMCONDPAGTO'+
                            ',e.CDENTRADA' +
                            ',D.NUDOCFISCALICMS,D.NMDOCFISCALICMS,D.DSMODELO'+
                            ',e.vlproduto'+
                            ',e.vlservico'+
                            ',e.vldesconto'+
                            ',e.vlbaseicms'+
                            ',e.vlicms'+
                            ',e.vlbaseicmssubtrib'+
                            ',e.vlicmssubtrib'+
                            ',E.VLOUTDESPESA'+
                            ',E.VLFRETE'+
                            ',e.vlbaseipi'+
                            ',e.vlbasepis'+
                            ',e.vlpis'+
                            ',e.vlbasecofins'+
                            ',e.vlcofins'+
                            ',e.vlipi '+
  'ORDER BY E.DTSAIDA DESC,E.NUENTRADA DESC';
end;

function TfrmLocalizarEntrada.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where e.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  if rdgdsxml.ItemIndex = 0 then
  begin
    result := result + 'and dsxml is not null ';
  end
  else if rdgdsxml.ItemIndex = 1 then
  begin
    result := result + 'and dsxml is null ';
  end;
  sqlmontarcodigo(edtcdproduto.text, _i, _cdproduto, result);
  sqlmontarcodigo(edtcdordcompra.Text, _i, _cdordcompra, result);
  sqlmontarcodigo(edtcdcliente.text, _e, _cdcliente, result);
  sqlmontarcodigo(edtcdfornecedor.text, _e, _cdfornecedor, result);
  sqlmontarcodigo(edtcdtransportadora.text, _e, _cdtransportadora, result);
  sqlmontarcodigo(edtcdcfop.text, _i, _cdcfop, result);
  sqlmontarcodigo(cbxcdtpentrada.EditValue, _e, _cdtpentrada, result);
  sqlmontarcodigo(edtcdcondpagto.text, _e, _cdcondpagto, result);
  if cbxnudocfiscalicms.Text <> '' then
  begin
    sqlmontarstring(cbxnudocfiscalicms.EditValue, _e, _nudocfiscalicms, result);
  end;
  if cbxnustdocumento.Text <> '' then
  begin
    sqlmontarstring(cbxnustdocumento.EditValue, _e, _nustdocumento, result);
  end;
  sqlmontardata(edtdtemissaoi.text, edtdtemissaof.text, _e, _dtemissao, result);
  sqlmontardata(edtdtsaidai.text, edtdtsaidaf.text, _e, _dtsaida, result);
  sqlmontarvalor(edtvltotali.Value, edtvltotalf.Value, _e, _vltotal, result);
  sqlmontarvalor(edtpsbrutoi.Value, edtpsbrutof.Value, _e, _psbruto, result);
  // icms
  sqlmontarvalor(edtvlbaseicmsi.Value, edtvlbaseicmsf.Value, _e, _vlbaseicms, result);
  sqlmontarvalor(edtvlicmsi.Value, edtvlicmsf.Value, _e, _vlicms, result);
  // icms sub trib
  sqlmontarvalor(edtvlbaseicmssubtribi.Value, edtvlbaseicmssubtribf.Value, _e, _vlbaseicmssubtrib, result);
  sqlmontarvalor(edtvlicmssubtribi.Value, edtvlicmssubtribf.Value, _e, _vlicmssubtrib, result);
  // frete sub trib
  sqlmontarvalor(edtvlbasefretesubi.Value, edtvlbasefretesubf.Value, _e, _vlbasefretesub, result);
  sqlmontarvalor(edtvlfretesubi.Value, edtvlfretesubf.Value, _e, _vlfretesub, result);
  sqlmontarvalor(edtalfretesubi.Value, edtalfretesubf.Value, _e, _alfretesub, result);
  // ipi
  sqlmontarvalor(edtvlbaseipii.Value, edtvlbaseipif.Value, _e, _vlbaseipi, result);
  sqlmontarvalor(edtvlipii.Value, edtvlipif.Value, _e, _vlipi, result);
  // pis
  sqlmontarvalor(edtvlbasepisi.Value, edtvlbasepisf.Value, _e, _vlbasepis, result);
  sqlmontarvalor(edtvlpisi.Value, edtvlpisf.Value, _e, _vlpis, result);
  // cofins
  sqlmontarvalor(edtvlbasecofinsi.Value, edtvlbasecofinsf.Value, _e, _vlbasecofins, result);
  sqlmontarvalor(edtvlcofinsi.Value, edtvlcofinsf.Value, _e, _vlcofins, result);
  // valores
  sqlmontarvalor(edtvlprodutoi.Value, edtvlprodutof.Value, _e, _vlproduto, result);
  sqlmontarvalor(edtvlservicoi.Value, edtvlservicof.Value, _e, _vlservico, result);
  sqlmontarvalor(edtvlfretei.Value, edtvlfretef.Value, _e, _vlfrete, result);
  sqlmontarvalor(edtvlseguroi.Value, edtvlsegurof.Value, _e, _vlseguro, result);
  sqlmontarvalor(edtvloutdespesai.Value, edtvloutdespesaf.Value, _e, _vloutdespesa, result);
  //
  sqlmontarvalor(edtvldescontoi.Value, edtvldescontof.Value, _e, _vldesconto, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarEntrada.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.open(makesql);
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarEntrada.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarEntrada.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then btnOkClick(sender);
end;

procedure TfrmLocalizarEntrada.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdentrada).AsInteger;
end;

procedure TfrmLocalizarEntrada.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarEntrada.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarEntrada.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarEntrada.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarEntrada.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabela;
end;

procedure TfrmLocalizarEntrada.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarEntrada.edtcdcfopExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cfop, _cfop);
  colorexit(sender);
end;

procedure TfrmLocalizarEntrada.edtcdcfopKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcfopPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEntrada.edtcdcfopPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizar(_cfop);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdcfop.text    := cd.tostring;
  lblnmcfop.caption := qregistro.NomedoCodigo(_cfop, cd);
end;

procedure TfrmLocalizarEntrada.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarEntrada.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEntrada.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarEntrada.edtcdcondpagtoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _condpagto, _condpagto);
  colorexit(sender);
end;

procedure TfrmLocalizarEntrada.edtcdcondpagtoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcondpagtoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEntrada.edtcdcondpagtoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizar(_condpagto);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdcondpagto.text    := cd.tostring;
  lblnmcondpagto.caption := qregistro.NomedoCodigo(_condpagto, cd);
end;

procedure TfrmLocalizarEntrada.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarEntrada.edtcdfornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEntrada.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarEntrada.edtcdordcompraExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdordcompra.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_ordcompra, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_ordem+' '+_compra)]), mterror, [mbok], 0);
    edtcdordcompra.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarEntrada.edtcdordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdordcompraPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEntrada.edtcdordcompraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := LocalizarOrdCompra;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdordcompra.text := cd.tostring;
end;

procedure TfrmLocalizarEntrada.cbxcdtpentradaEnter(Sender: TObject);
begin
  abrir_tabela(_tpentrada);
end;

procedure TfrmLocalizarEntrada.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarEntrada.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarEntrada.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarEntrada.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarEntrada.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarEntrada.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarEntrada.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarEntrada.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmLocalizarEntrada.set_fornecedor(cdfornecedor: string);
begin
  if cdfornecedor <> '' then
  begin
    edtcdfornecedor.Text := cdfornecedor;
    edtcdfornecedorExit(edtcdfornecedor);
  end;
  edtcdfornecedor.Enabled   := cdfornecedor = '';
end;

procedure TfrmLocalizarEntrada.AbrirTabela;
begin
  cbxnudocfiscalicms.Properties.ListSource := abrir_tabela(_docfiscalicms);
  cbxnustdocumento.Properties.ListSource := abrir_tabela(_stdocumento);
  cbxcdtpentrada.Properties.ListSource := abrir_tabela(_tpentrada);
end;

end.

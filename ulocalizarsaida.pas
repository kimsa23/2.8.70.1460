unit ulocalizarsaida;

interface

uses
  System.Actions, System.UITypes,
  forms, Buttons, StdCtrls, ComCtrls, Controls, Mask, Classes, ExtCtrls, dialogs,
  ActnList, graphics, Menus, sysutils,
  Data.DB,
  uDtmMain, udatahora, uconstantes, uregistro, ustrings, urotinas, uexportarexcel,
  uLocalizar, ulocalizarCliente, ulocalizarFornecedor, ulocalizarproduto, uLocalizarPedido,
  classesqlmontar, classeempresa, classeretornasql, classeform, classesaida,
  classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons,
  cxGroupBox, cxRadioGroup, cxPC, cxGraphics, dxStatusBar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxLookAndFeels, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPCdxBarPopupMenu, dxBar, dxCore, cxDateUtils,
  cxNavigator, dxBarBuiltInMenu, ClasseLocalizar;

type
  TfrmLocalizarSaida = class(TForm)
    Bevel1: TBevel;
    lbldocumento: TLabel;
    lblcliente: TLabel;
    lblfornecedor: TLabel;
    lblcondpagto: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    edtpsbrutoi: TcxCalcEdit;
    edtvltotali: TcxCalcEdit;
    edtpsbrutof: TcxCalcEdit;
    edtvltotalf: TcxCalcEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    pgc: TcxPageControl;
    tbsdatas: TcxTabSheet;
    lbldtemissao: TLabel;
    lbldtsaida: TLabel;
    lblentresaida: TLabel;
    lblentreemissao: TLabel;
    edtdtEmissaoi: TcxDateEdit;
    edtdtsaidai: TcxDateEdit;
    edtDtemissaof: TcxDateEdit;
    edtdtsaidaf: TcxDateEdit;
    tbsProduto: TcxTabSheet;
    Label8: TLabel;
    tbsOutros: TcxTabSheet;
    lblrepresentante: TLabel;
    rdgtpentsai: TcxRadioGroup;
    tbsICMS: TcxTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    edtvlicmsi: TcxCalcEdit;
    edtvlbaseicmsi: TcxCalcEdit;
    edtalicmsi: TcxCalcEdit;
    edtvlicmsf: TcxCalcEdit;
    edtvlbaseicmsf: TcxCalcEdit;
    edtalicmsf: TcxCalcEdit;
    tbsICMSST: TcxTabSheet;
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
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvNUSAIDA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTSAIDA: TcxGridDBColumn;
    tbvNMREDUZIDO: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvNMFORNECEDOR: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvNMREPRESENTANTE: TcxGridDBColumn;
    tbvNMTRANSPORTADORA: TcxGridDBColumn;
    tbvNMCONDPAGTO: TcxGridDBColumn;
    tbvNMSTDOCUMENTO: TcxGridDBColumn;
    tbvCDSAIDA: TcxGridDBColumn;
    tbvVLBASEICMS: TcxGridDBColumn;
    tbvVLICMS: TcxGridDBColumn;
    tbvVLBASEIPI: TcxGridDBColumn;
    lvl: TcxGridLevel;
    tbsIPI: TcxTabSheet;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtvlipii: TcxCalcEdit;
    edtvlbaseipii: TcxCalcEdit;
    edtalipii: TcxCalcEdit;
    edtvlipif: TcxCalcEdit;
    edtvlbaseipif: TcxCalcEdit;
    edtalipif: TcxCalcEdit;
    Label25: TLabel;
    Label27: TLabel;
    tbvNMDOCFISCALICMS: TcxGridDBColumn;
    tbsvalores: TcxTabSheet;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    edtvlprodutoi: TcxCalcEdit;
    edtvlprodutof: TcxCalcEdit;
    edtvlservicoi: TcxCalcEdit;
    edtvlservicof: TcxCalcEdit;
    edtvlfretei: TcxCalcEdit;
    edtvlfretef: TcxCalcEdit;
    edtvlseguroi: TcxCalcEdit;
    edtvlsegurof: TcxCalcEdit;
    edtvloutdespesai: TcxCalcEdit;
    edtvloutdespesaf: TcxCalcEdit;
    cbxnudocfiscalicms: TcxLookupComboBox;
    cbxcdtpsaida: TcxLookupComboBox;
    cbxcdstdocumento: TcxLookupComboBox;
    cbxcdrepresentante: TcxLookupComboBox;
    tbvVLIPI: TcxGridDBColumn;
    tbvCDCFOP: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbvVLPRODUTO: TcxGridDBColumn;
    tbvVLDESCONTO: TcxGridDBColumn;
    lblserie: TLabel;
    cbxcdserie: TcxLookupComboBox;
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
    actexportarxml: TAction;
    dxBarButton1: TdxBarButton;
    tbvColumn1: TcxGridDBColumn;
    tbvPSBRUTO: TcxGridDBColumn;
    tbvPSLIQUIDO: TcxGridDBColumn;
    actimprimirdanfe: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    actexportarpdf: TAction;
    lblpedido: TLabel;
    edtnupedido: TcxButtonEdit;
    dxBarButton5: TdxBarButton;
    actlimparcriterio: TAction;
    tbvVLBASEPIS: TcxGridDBColumn;
    tbvVLBASECOFINS: TcxGridDBColumn;
    tbvVLPIS: TcxGridDBColumn;
    tbvVLCOFINS: TcxGridDBColumn;
    actimprimirrecibo: TAction;
    dxBarButton6: TdxBarButton;
    actimprimir: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actdireto: TAction;
    dxBarSubItem2: TdxBarSubItem;
    actdiretodanfe: TAction;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    actdiretorecibo: TAction;
    tbvVLICMSSUBTRIB: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    rdgboconsumidorfinal: TcxRadioGroup;
    dxBarButton9: TdxBarButton;
    actmodograde: TAction;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    edtcdfornecedor: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    lblnmcfop: TLabel;
    edtcdcfop: TcxButtonEdit;
    edtcdcondpagto: TcxButtonEdit;
    lblnmcondpagto: TLabel;
    tbvVLOUTDESPESA: TcxGridDBColumn;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpsaidaEnter(Sender: TObject);
    procedure cbxcdserieEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actfiltroExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actexportarxmlExecute(Sender: TObject);
    procedure actimprimirdanfeExecute(Sender: TObject);
    procedure actexportarpdfExecute(Sender: TObject);
    procedure edtnupedidoExit(Sender: TObject);
    procedure edtnupedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actimprimirreciboExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure actdiretoExecute(Sender: TObject);
    procedure actdiretodanfeExecute(Sender: TObject);
    procedure actdiretoreciboExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
    procedure AbrirTabelas;
    procedure SetEmpresa;
    function Makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function Localizarsaida(cdcliente:string=''):integer;

var
  frmLocalizarSaida: TfrmLocalizarSaida;

implementation

{$R *.DFM}

function Localizarsaida(cdcliente:string=''):integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_saida) then
  begin
    frmlocalizarsaida := Tfrmlocalizarsaida.Create(application);
  end;
  with frmlocalizarsaida do
  begin
    edtcdcliente.Enabled := cdcliente = '';
    if cdcliente <> '' then
    begin
      edtcdcliente.Text := cdcliente;
    end;
    if q.q.Active then
    begin
      btnfindClick(btnfind);
    end;
    showmodal;
    if ModalResult = mrok then
    begin
      result := codigo;
    end;
  end;
end;

function TfrmLocalizarSaida.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where s.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarcodigo(edtcdproduto.text   , _i , _cdproduto      , result);
  sqlmontarcodigo(edtcdcliente.text   , _s , _cdcliente      , result);
  sqlmontarcodigo(edtcdfornecedor.text, _s , _cdfornecedor   , result);

  if cbxnudocfiscalicms.Text <> '' then
  begin
    sqlmontarstring(cbxnudocfiscalicms.EditValue, _S, _nudocfiscalicms, result);
  end;
  if cbxcdstdocumento.Text   <> '' then
  begin
    sqlmontarstring(cbxcdstdocumento.EditValue  , _S, _nustdocumento  , result);
  end;
  if edtnupedido.Text        <> '' then
  begin
    sqlmontarstring(edtnupedido.Text, _i, _nupedido, result);
  end;

  sqlmontarcodigo(cbxcdrepresentante.EditValue, _S, _cdrepresentante, result);
  sqlmontarcodigo(edtcdcondpagto.text    , _S, _cdcondpagto    , result);
  sqlmontarcodigo(cbxcdtpsaida.EditValue      , _s, _cdtpsaida      , result);
  sqlmontarcodigo(edtcdcfop.text         , _i, _cdcfop         , result);
  sqlmontarcodigo(cbxcdserie.EditValue        , _s, _cdserie        , result);
  sqlmontardata  (edtdtEmissaoi.text     , edtdtEmissaof.text, _s, _dtemissao , result);
  sqlmontardata  (edtdtsaidai.text       , edtdtsaidaf.text  , _s, _dtsaida   , result);
  sqlmontarvalor (edtvltotali.Value      , edtvltotalf.Value , _s, _vltotal   , result);
  sqlmontarvalor (edtpsbrutoi.Value      , edtpsbrutof.Value , _s, _psbruto   , result);
  // icms
  sqlmontarvalor (edtvlbaseicmsi.Value, edtvlbaseicmsf.Value, _s, _vlbaseicms, result);
  sqlmontarvalor (edtvlicmsi.Value    , edtvlicmsf.Value    , _s, _vlicms    , result);
  sqlmontarvalor (edtalicmsi.Value    , edtalicmsf.Value    , _s, _alicms    , result);
  // frete sub trib
  sqlmontarvalor (edtvlbasefretesubi.Value, edtvlbasefretesubf.Value, _s, _vlbasefretesub, result);
  sqlmontarvalor (edtvlfretesubi.Value    , edtvlfretesubf.Value    , _s, _vlfretesub    , result);
  sqlmontarvalor (edtalfretesubi.Value    , edtalfretesubf.Value    , _s, _alfretesub    , result);
  // ipi
  sqlmontarvalor (edtvlbaseipii.Value, edtvlbaseipif.Value, _s, _vlbaseipi, result);
  sqlmontarvalor (edtvlipii.Value    , edtvlipif.Value    , _s, _vlipi    , result);
  sqlmontarvalor (edtalipii.Value    , edtalipif.Value    , _s, _alipi    , result);
  // valores
  sqlmontarvalor (edtvlprodutoi.Value   , edtvlprodutof.Value   , _s, _vlproduto   , result);
  sqlmontarvalor (edtvlservicoi.Value   , edtvlservicof.Value   , _s, _vlservico   , result);
  sqlmontarvalor (edtvlfretei.Value     , edtvlfretef.Value     , _s, _vlfrete     , result);
  sqlmontarvalor (edtvlseguroi.Value    , edtvlsegurof.Value    , _s, _vlseguro    , result);
  sqlmontarvalor (edtvloutdespesai.Value, edtvloutdespesaf.Value, _s, _vloutdespesa, result);
  //
  sqlmontarvalor (edtvldescontoi.Value , edtvldescontof.Value , _s, _vldesconto , result);
  //
  if (rdgtpentsai.ItemIndex = 0) or (rdgtpentsai.ItemIndex = 1) then
  begin
    result := result + ' and s.tpentsai=';
    if rdgtpentsai.ItemIndex = 0 then
    begin
      result := result + '''S'' '
    end
    else if rdgtpentsai.ItemIndex = 1 then
    begin
      result := result + '''E'' ';
    end;
  end;
  if (rdgboconsumidorfinal.ItemIndex = 0) or (rdgboconsumidorfinal.ItemIndex = 1) then
  begin
    result := result + ' and s.boconsumidorfinal=';
    if rdgboconsumidorfinal.ItemIndex = 0 then
    begin
      result := result + '''S'' '
    end
    else if rdgboconsumidorfinal.ItemIndex = 1 then
    begin
      result := result + '''N'' ';
    end;
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarSaida.Makesql:string;
begin
  result := 'SELECT s.cdSAIDA'+
                  ',s.nuSAIDA'+
                  ',s.DTEMISSAO'+
                  ',s.DTSAIDA'+
                  ',tp.NMREDUZIDO'+
                  ',S.CDCFOP,C.RZSOCIAL NMCLIENTE'+
                  ',F.RZSOCIAL NMFORNECEDOR'+
                  ',r.NMREPRESENTANTE'+
                  ',cn.NMCONDPAGTO'+
                  ',t.nmtransportadora'+
                  ',sd.nmstdocumento'+
                  ',sum(coalesce(i.VLTOTAL,0)+coalesce(i.vlipi,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlicmssubtrib,0)-coalesce(i.vldesconto,0)+coalesce(i.vlfrete,0)) VLTOTAL'+
                  ',sum(i.VLtotal) VLPRODUTO'+
                  ',sum(i.PSBRUTO) PSBRUTO'+
                  ',sum(i.PSLIQUIDO) PSLIQUIDO'+
                  ',sum(i.qtitem) qtitem'+
                  ',sum(coalesce(i.vlbaseicms,0)) VLBASEICMS'+
                  ',sum(coalesce(i.vlbasepis,0)) VLBASEPIS'+
                  ',sum(coalesce(i.vlbasecofins,0)) VLBASECOFINS'+
                  ',sum(coalesce(i.vlpis,0)) vlpis'+
                  ',sum(coalesce(i.vlcofins,0)) vlcofins'+
                  ',sum(coalesce(i.vlicms,0)) vlicms'+
                  ',sum(coalesce(i.vlicmssubtrib,0)) vlicmssubtrib'+
                  ',sum(coalesce(i.vlbaseipi,0)) vlbaseipi'+
                  ',sum(coalesce(i.VLDESCONTO,0)) VLDESCONTO'+
                  ',sum(coalesce(i.vlipi,0)) vlipi'+
                  ',sum(coalesce(i.vloutdespesa,0)) vloutdespesa'+
                  ',coalesce(D.NUDOCFISCALICMS,'''')||'' - ''||coalesce(D.NMDOCFISCALICMS,'''')||'' - ''||coalesce(D.DSMODELO,'''') NMDOCFISCALICMS '+
             'FROM SAIDA s '+
             'left join itsaida i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa '+
             'left join transportadora t on t.cdtransportadora=s.cdtransportadora and t.cdempresa=s.cdempresa '+
             'left JOIN TPSAIDA tp ON tp.CDTPSAIDA=S.CDTPSAIDA and tp.cdempresa=s.cdempresa '+
             'LEFT JOIN CLIENTE c ON C.CDCLIENTE=S.CDCLIENTE and s.cdempresa=c.cdempresa '+
             'LEFT JOIN FORNECEDOR f ON F.CDFORNECEDOR=S.CDFORNECEDOR and f.cdempresa=s.cdempresa '+
             'LEFT JOIN REPRESENTANTE r ON R.CDREPRESENTANTE=S.CDREPRESENTANTE and r.cdempresa=s.cdempresa '+
             'LEFT JOIN CONDPAGTO cn ON cn.CDCONDPAGTO=S.CDCONDPAGTO and cn.cdempresa=s.cdempresa '+
             'LEFT JOIN DOCFISCALICMS d ON D.nuDOCFISCALICMS=s.nuDOCFISCALICMS '+
             'LEFT JOIN STDOCUMENTO sd ON sd.nuSTDOCUMENTO=s.nuSTDOCUMENTO '+ sqlwhere +
             ' group by s.DTEMISSAO'+
                      ',s.NUSAIDA'+
                      ',s.DTSAIDA'+
                      ',tp.NMREDUZIDO'+
                      ',S.CDCFOP,C.RZSOCIAL'+
                      ',F.RZSOCIAL'+
                      ',r.NMREPRESENTANTE'+
                      ',cn.NMCONDPAGTO'+
                      ',t.nmtransportadora'+
                      ',sD.NMSTdocumento'+
                      ',s.CDSAIDA'+
                      ',D.NUDOCFISCALICMS,D.NMDOCFISCALICMS,D.DSMODELO'+
                      ' order by s.dtemissao desc,s.nusaida desc';
end;

procedure TfrmLocalizarSaida.btnFindClick(Sender: TObject);
begin
  tbvNMREPRESENTANTE.Visible := Empresa.comercial.representante.bo;
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarSaida.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarSaida.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarSaida.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdsaida).AsInteger;
end;

procedure TfrmLocalizarSaida.SetEmpresa;
begin
  lblrepresentante.Visible   := empresa.comercial.representante.bo;
  cbxcdrepresentante.Visible := empresa.comercial.representante.bo;
end;

procedure TfrmLocalizarSaida.AbrirTabelas;
begin
  cbxcdtpsaida.Properties.ListSource := abrir_tabela(_tpsaida);
  cbxcdserie.Properties.ListSource := abrir_tabela(_serie);
  cbxnudocfiscalicms.Properties.ListSource := abrir_tabela(_docfiscalicms);
  cbxcdstdocumento.Properties.ListSource := abrir_tabela(_stdocumento);
  cbxcdrepresentante.Properties.ListSource := abrir_tabela(_representante);
end;

procedure TfrmLocalizarSaida.FormShow(Sender: TObject);
begin
  cbxcdrepresentante.Enabled := Empresa.comercial.representante.bo;
end;

procedure TfrmLocalizarSaida.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarSaida.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarSaida.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarSaida.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarSaida.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  s : string;
  Column : TcxGridDBColumn;
begin
  Column := tbvNMSTDOCUMENTO;
  s := upperCase(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if s = 'CANCELADO' then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end;
  if s = 'NAO ENVIADO' then
  begin
    ACanvas.Font.Color := clblue;
    ACanvas.Font.Style := [fsBold]
  end;
  if s = 'NFE - NUMERACAO INUTILIZADA' then
  begin
    ACanvas.Font.Color := clgreen;
    ACanvas.Font.Style := [fsBold]
  end;
end;

procedure TfrmLocalizarSaida.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
  SetEmpresa;
end;

procedure TfrmLocalizarSaida.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarSaida.cbxcdtpsaidaEnter(Sender: TObject);
begin
  abrir_tabela(_tpsaida);
  colorenter(sender);
end;

procedure TfrmLocalizarSaida.cbxcdserieEnter(Sender: TObject);
begin
  abrir_tabela(_serie);
  colorenter(sender);
end;

procedure TfrmLocalizarSaida.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarSaida.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarSaida.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarSaida.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarSaida.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarSaida.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarSaida.actexportarxmlExecute(Sender: TObject);
var
  diretorio : string;
  i : Integer;
  lista : TStrings;
  saida : TSaida;
begin
  lista := TStringList.Create;
  saida := tsaida.create;
  try
    for i := 0 to tbv.ViewData.RowCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        lista.Add(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdsaida).Index]);
      end;
    end;
    if lista.Count > 0 then
    begin
      diretorio := QRotinas.getdiretorio;
      if diretorio = '' then
      begin
        exit;
      end;
      if saida.Exportarxml(diretorio, lista) then
      begin
        ShowMessage(_msg_Exportacao_concluida);
      end;
    end;
  finally
    freeandnil(lista);
    freeandnil(saida);
  end;
end;

procedure TfrmLocalizarSaida.actimprimirdanfeExecute(Sender: TObject);
var
  i : Integer;
  saida : TSaida;
begin
  saida := tsaida.create;
  try
    for i := 0 to tbv.ViewData.RowCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        saida.ImprimirDanfe(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdsaida).Index]);
      end;
    end;
  finally
    freeandnil(saida);
  end;
end;

procedure TfrmLocalizarSaida.actexportarpdfExecute(Sender: TObject);
var
  diretorio : string;
  i : Integer;
  lista : TStrings;
  saida : TSaida;
begin
  lista := TStringList.Create;
  saida := tsaida.create;
  try
    for i := 0 to tbv.ViewData.RowCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        lista.Add(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdsaida).Index]);
      end;
    end;
    if lista.Count > 0 then
    begin
      diretorio := QRotinas.getdiretorio;
      if diretorio = '' then
      begin
        exit;
      end;
      if saida.exportarpdf(diretorio, lista) then
      begin
        ShowMessage(_msg_Exportacao_concluida);
      end;
    end;
  finally
    freeandnil(lista);
    freeandnil(saida);
  end;
end;

procedure TfrmLocalizarSaida.edtcdcfopExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cfop, _cfop);
  colorexit(sender);
end;

procedure TfrmLocalizarSaida.edtcdcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcfopPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarSaida.edtcdcfopPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizar(_CFOP);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdcfop.text    := cd.tostring;
  lblnmcfop.caption := qregistro.NomedoCodigo(_cfop, cd);
end;

procedure TfrmLocalizarSaida.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarSaida.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarSaida.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarSaida.edtcdcondpagtoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _condpagto, _condpagto);
  colorexit(sender);
end;

procedure TfrmLocalizarSaida.edtcdcondpagtoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcondpagtoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarSaida.edtcdcondpagtoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarSaida.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarSaida.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarSaida.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarSaida.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarSaida.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarSaida.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarSaida.edtnupedidoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnupedido.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if CodigodoCampo(_pedido, cd, _nupedido) = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_pedido)]), mterror, [mbok], 0);
    edtnupedido.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarSaida.edtnupedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnupedidoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarSaida.edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := LocalizarPedido;
  if cd = 0 then
  begin
    exit;
  end;
  edtnupedido.text := qregistro.StringdoCodigo(_pedido, cd, _nupedido);
end;

procedure TfrmLocalizarSaida.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarSaida.actimprimirreciboExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 548, _cdsaida, True, true);
end;

procedure TfrmLocalizarSaida.actimprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarSaida.actdiretoExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarSaida.actdiretodanfeExecute(Sender: TObject);
var
  i : Integer;
  saida : TSaida;
begin
  saida := tsaida.create;
  try
    for i := 0 to tbv.ViewData.RowCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        saida.ImprimirDanfe(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdsaida).Index], False, false);
      end;
    end;
  finally
    freeandnil(saida);
  end;
end;

procedure TfrmLocalizarSaida.actdiretoreciboExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 548, _cdsaida, false);
end;

procedure TfrmLocalizarSaida.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarSaida.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

end.

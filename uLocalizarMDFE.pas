unit uLocalizarMDFE;

interface

uses
  System.Actions, System.UITypes,
  forms, Buttons, StdCtrls, ComCtrls, Controls, Mask, Classes, ExtCtrls, dialogs,
  graphics, Menus, sysutils, ActnList,
  DB,
  udatahora, uconstantes, uregistro, ustrings, urotinas,
  uexportarexcel, uLocalizar, ulocalizarCliente, ulocalizarFornecedor,
  classeaplicacao, classesqlmontar, classeempresa, classeretornasql, classeform,
  classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons,
  cxGroupBox, cxRadioGroup, cxPC, cxGraphics, dxStatusBar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxPCdxBarPopupMenu, dxBar, cxNavigator,
  dxCore, cxDateUtils, ClasseLocalizar;

type
  TfrmLocalizarMDFE = class(TForm)
    Bevel1: TBevel;
    lbldocumento: TLabel;
    lblcliente: TLabel;
    lblfornecedor: TLabel;
    lbltransportadora: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    edtqtcargai: TcxCalcEdit;
    edtvlcargai: TcxCalcEdit;
    edtqtcargaf: TcxCalcEdit;
    edtvlcargaf: TcxCalcEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvNUMDFE: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMTPMDFE: TcxGridDBColumn;
    tbvSGUFC: TcxGridDBColumn;
    tbvSGUFD: TcxGridDBColumn;
    tbvVLCARGA: TcxGridDBColumn;
    tbvNMSTMDFE: TcxGridDBColumn;
    tbvCDMDFE: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cbxcdtpmdfe: TcxLookupComboBox;
    cbxcdstmdfe: TcxLookupComboBox;
    tbvNUPLACA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    lblserie: TLabel;
    cbxcdserie: TcxLookupComboBox;
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
    tbvQTCARGA: TcxGridDBColumn;
    actimprimirdanfe: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    actexportarpdf: TAction;
    dxBarButton5: TdxBarButton;
    actlimparcriterio: TAction;
    actimprimir: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actdireto: TAction;
    dxBarSubItem2: TdxBarSubItem;
    actdiretodanfe: TAction;
    dxBarButton7: TdxBarButton;
    edtnuplacaveiculo: TcxButtonEdit;
    lbl1: TLabel;
    edtnuplacareboque: TcxButtonEdit;
    edtcdfornecedor: TcxButtonEdit;
    lbldtemissao: TLabel;
    lblentreemissao: TLabel;
    edtdtEmissaoi: TcxDateEdit;
    edtDtemissaof: TcxDateEdit;
    lblnmfornecedor: TLabel;
    edtcdtransportadora: TcxButtonEdit;
    lblnmtransportadora: TLabel;
    Label4: TLabel;
    edtcdcte: TcxButtonEdit;
    Label5: TLabel;
    cbxcdufinicio: TcxLookupComboBox;
    Label6: TLabel;
    cbxcdmunicipiocarregamento: TcxLookupComboBox;
    Label7: TLabel;
    cbxcduffim: TcxLookupComboBox;
    Label8: TLabel;
    cbxcdmunicipiodescarregamento: TcxLookupComboBox;
    tbvNUCOR: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton6: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpmdfeEnter(Sender: TObject);
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
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actimprimirExecute(Sender: TObject);
    procedure actdiretoExecute(Sender: TObject);
    procedure actdiretodanfeExecute(Sender: TObject);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtnuplacaveiculoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplacaveiculoExit(Sender: TObject);
    procedure edtcdtransportadoraExit(Sender: TObject);
    procedure edtnuplacaveiculoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplacareboqueExit(Sender: TObject);
    procedure edtnuplacareboqueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplacareboquePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdcteExit(Sender: TObject);
    procedure edtcdcteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdctePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actmodogradeExecute(Sender: TObject);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabelas;
    function Makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarMDFE:integer;

var
  frmLocalizarMDFE: TfrmLocalizarMDFE;

implementation

uses
  uDtmMain, ulocalizarveiculo, ulocalizarcte,
  ulocalizarTransportadora;

{$R *.DFM}

function LocalizarMDFE:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_mdfe) then
  begin
    frmlocalizarmdfe := Tfrmlocalizarmdfe.Create(application);
  end;
  with frmlocalizarmdfe do
  begin
    if q.q.Active then
    begin
      btnfindclick(btnfind);
    end;
    showmodal;
    if ModalResult = mrok then
    begin
      result := codigo;
    end;
  end;
end;

function TfrmLocalizarMDFE.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where m.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  if edtnuplacaveiculo.Text <> '' then
  begin
    sqlmontarcodigo(CodigodoCampo(_veiculo, edtnuplacaveiculo.Text, _nuplaca), _v, _cd+_veiculo, result);
  end;
  if edtnuplacareboque.Text <> '' then
  begin
    sqlmontarcodigo(CodigodoCampo(_veiculo, edtnuplacareboque.Text, _nuplaca), _m+_v, _cd+_veiculo, result);
  end;
  sqlmontarcodigo(cbxcdtpmdfe.EditValue                  , _m   , _cd+_tp+_mdfe    , result);
  sqlmontarcodigo(cbxcdstmdfe.EditValue                  , _m   , _cd+_st+_mdfe    , result);
  sqlmontarcodigo(cbxcdufinicio.EditValue                , _m   , _cduf+_inicio    , result);
  sqlmontarcodigo(cbxcduffim.EditValue                   , _m   , _cduf+_fim       , result);
  sqlmontarcodigo(cbxcdmunicipiocarregamento.EditValue   , _m+_c, _cdmunicipio     , result);
  sqlmontarcodigo(cbxcdmunicipiodescarregamento.EditValue, _m+_d, _cdmunicipio     , result);
  sqlmontarcodigo(edtcdfornecedor.Text                   , _mp  , _cdfornecedor    , result);
  sqlmontarcodigo(cbxcdserie.EditValue                   , _m   , _cdserie         , result);
  sqlmontarcodigo(edtcdtransportadora.Text               , _m+_t, _cdtransportadora, result);
  sqlmontarcodigo(edtcdcte.Text                          , _ct  , _cdcte           , result);
  sqlmontarvalor (edtvlcargai.Value , edtvlcargaf.Value , _m, _vl+_carga, result);
  sqlmontarvalor (edtqtcargai.Value , edtqtcargaf.Value , _m, _qt+_carga, result);
  sqlmontardata  (edtdtEmissaoi.text, edtdtEmissaof.text, _m, _dtemissao, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarMDFE.Makesql:string;
begin
  result := 'select m.cdmdfe'+
                  ',m.numdfe'+
                  ',m.dtemissao'+
                  ',v.nuplaca'+
                  ',s.nmstmdfe'+
                  ',t.nmtpmdfe'+
                  ',uc.sguf sgufc'+
                  ',ud.sguf sgufd'+
                  ',m.VLCARGA'+
                  ',m.QTCARGA'+
                  ',S.NUCOR'+
                  ',se.nmserie '+
            'from mdfe m '+
            'left join stmdfe s on s.cdstmdfe=m.cdstmdfe '+
            'left join veiculo v on v.cdempresa=m.cdempresa and v.cdveiculo=m.cdveiculo '+
            'left join tpmdfe t on t.cdempresa=m.cdempresa and t.cdtpmdfe=m.cdtpmdfe '+
            'left join uf uc on uc.cduf=m.cdufinicio '+
            'left join uf ud on ud.cduf=m.cduffim '+
            'left join mdfecarregamento mdc on mdc.cdempresa=m.cdempresa and mdc.cdmdfe=m.cdmdfe '+
            'left join municipio mc on mc.cdmunicipio=mdc.cdmunicipio '+
            'left join mdfedescarregamento mdd on mdd.cdempresa=m.cdempresa and mdd.cdmdfe=m.cdmdfe '+
            'left join mdfecte ct on ct.cdempresa=mdd.cdempresa and ct.cdmdfe=mdd.cdmdfe and ct.cdmunicipio=mdd.cdmunicipio '+
            'left join municipio md on md.cdmunicipio=mdd.cdmunicipio '+
            'left join serie se on se.cdempresa=m.cdempresa and se.cdserie=m.cdserie '+
            'left join mdfepedagio mp on mp.cdempresa=m.cdempresa and mp.cdmdfe=m.cdmdfe '+
            'left join mdfetransportadora mt on mt.cdempresa=m.cdempresa and mt.cdmdfe=m.cdmdfe '+
            'left join mdfeveiculo mv on mv.cdempresa=m.cdempresa and mv.cdmdfe=m.cdmdfe '+
            sqlwhere+
            ' group by m.numdfe'+
                    ',m.dtemissao'+
                    ',v.nuplaca'+
                    ',s.nmstmdfe'+
                    ',t.nmtpmdfe'+
                    ',uc.sguf'+
                    ',ud.sguf'+
                    ',m.VLCARGA'+
                    ',m.QTCARGA'+
                    ',m.cdmdfe'+
                    ',S.NUCOR'+
                    ',se.nmserie'+
            ' order by m.numdfe desc';
end;

procedure TfrmLocalizarMDFE.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarMDFE.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarMDFE.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarMDFE.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdmdfe).AsInteger;
end;

procedure TfrmLocalizarMDFE.AbrirTabelas;
begin
  cbxcdtpmdfe.Properties.ListSource := abrir_tabela(_tpmdfe);
  cbxcdstmdfe.Properties.ListSource := abrir_tabela(_stmdfe);
  cbxcdserie.Properties.ListSource := abrir_tabela(_serie);
  cbxcdufinicio.Properties.ListSource := abrir_tabela(_uf);
  cbxcduffim.Properties.ListSource := abrir_tabela(_uf);
  cbxcdmunicipiocarregamento.Properties.ListSource := abrir_tabela(_municipio);
  cbxcdmunicipiodescarregamento.Properties.ListSource := abrir_tabela(_municipio);
end;

procedure TfrmLocalizarMDFE.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarMDFE.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarMDFE.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarMDFE.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarMDFE.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfrmLocalizarMDFE.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarMDFE.cbxcdtpmdfeEnter(Sender: TObject);
begin
  abrir_tabela(_tp+_mdfe);
  colorenter(sender);
end;

procedure TfrmLocalizarMDFE.cbxcdserieEnter(Sender: TObject);
begin
  abrir_tabela(_serie);
  colorenter(sender);
end;

procedure TfrmLocalizarMDFE.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarMDFE.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarMDFE.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarMDFE.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarMDFE.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarMDFE.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarMDFE.actexportarxmlExecute(Sender: TObject);
var
  diretorio : string;
  i : Integer;
  lista : TStrings;
begin
  lista := TStringList.Create;
  try
    for i := 0 to tbv.ViewData.RowCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        lista.Add(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdmdfe).Index]);
      end;
    end;
    if lista.Count > 0 then
    begin
      diretorio := QRotinas.getdiretorio;
      if diretorio = '' then
      begin
        exit;
      end;
    end;
  finally
    freeandnil(lista);
  end;
end;

procedure TfrmLocalizarMDFE.actimprimirdanfeExecute(Sender: TObject);
//var
  //i : Integer;
  //saida : TSaida;
begin
  {
  saida := tsaida.create;
  try
    for i := 0 to grdDBtvw.ViewData.RowCount -1 do
    begin
      if grdDBtvw.ViewData.Records[i].Selected then
      begin
        saida.ImprimirDanfe(grdDBtvw.ViewData.Records[i].Values[grdDBtvw.GetColumnByFieldName(_cdmdfe).Index]);
      end;
    end;
  finally
    saida.Destroy;
  end;
  }
end;

procedure TfrmLocalizarMDFE.actexportarpdfExecute(Sender: TObject);
{
var
  diretorio : string;
  i : Integer;
  lista : TStrings;
  saida : TSaida;
}
begin
  {
  lista := TStringList.Create;
  saida := tsaida.create;
  try
    for i := 0 to grdDBtvw.ViewData.RowCount -1 do
    begin
      if grdDBtvw.ViewData.Records[i].Selected then
      begin
        lista.Add(grdDBtvw.ViewData.Records[i].Values[grdDBtvw.GetColumnByFieldName(_cdmdfe).Index]);
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
        messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
      end;
    end;
  finally
    lista.Free;
    saida.Destroy;
  end;
  }
end;

procedure TfrmLocalizarMDFE.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarMDFE.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarMDFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarMDFE.actimprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarMDFE.actdiretoExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarMDFE.actdiretodanfeExecute(Sender: TObject);
{
var
  i : Integer;
  saida : TSaida;
}
begin
  {
  saida := tsaida.create;
  try
    for i := 0 to grdDBtvw.ViewData.RowCount -1 do
    begin
      if grdDBtvw.ViewData.Records[i].Selected then
      begin
        saida.ImprimirDanfe(grdDBtvw.ViewData.Records[i].Values[grdDBtvw.GetColumnByFieldName(_cdsaida).Index], False, false);
      end;
    end;
  finally
    saida.Destroy;
  end;
  }
end;

procedure TfrmLocalizarMDFE.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarMDFE.edtcdfornecedorExit(Sender: TObject);
begin
  if not TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor) then
  begin
    Abort;
  end;
  colorexit(Sender);
end;

procedure TfrmLocalizarMDFE.edtnuplacaveiculoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplacaveiculoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMDFE.edtnuplacaveiculoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnuplacaveiculo.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if CodigodoCampo(_veiculo, cd, _nuplaca) = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(__veiculo)]), mterror, [mbok], 0);
    edtnuplacaveiculo.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarMDFE.edtcdtransportadoraExit(Sender: TObject);
begin
  if not TQForm.EditLocalizarExit(self, _transportadora, _transportadora) then
  begin
    Abort;
  end;
  colorexit(Sender);
end;

procedure TfrmLocalizarMDFE.edtnuplacaveiculoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtnuplacaveiculoPropertiesButtonClick(edtnuplacaveiculo)
end;

procedure TfrmLocalizarMDFE.edtnuplacareboqueExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnuplacareboque.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if CodigodoCampo(_veiculo, cd, _nuplaca) = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(__veiculo)]), mterror, [mbok], 0);
    edtnuplacareboque.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarMDFE.edtnuplacareboqueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplacareboquePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMDFE.edtnuplacareboquePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtnuplacaveiculoPropertiesButtonClick(edtnuplacareboque)
end;

procedure TfrmLocalizarMDFE.edtcdcteExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdcte.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_cte, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_cte)]), mterror, [mbok], 0);
    edtcdcte.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarMDFE.edtcdcteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdctePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMDFE.edtcdctePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdctePropertiesButtonClick(edtcdcte);
end;

procedure TfrmLocalizarMDFE.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMDFE.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMDFE.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora, lblnmtransportadora);
end;

end.

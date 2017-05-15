unit uLocalizarDuplicata;

interface

uses
  System.Actions, System.UITypes,
  forms, ActnList, Menus, Graphics, ExtCtrls, Classes, sysutils, dialogs, Controls,
  StdCtrls, Mask, Buttons, ComCtrls, Variants, Math, Windows,
  DB,
  udatahora, uconstantes, ustrings, uregistro, urotinas, uprogressbar,
  udlgRichEdit,
  classeduplicata, classeempresa, classesqlmontar, classeretornasql, classeexecutasql,
  classeform, classeaplicacao, classemovbancario, classequery,
  classeeventoemail, classecliente, classeusuario, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit,
  cxCheckBox, cxCalc, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxStatusBar, cxLookAndFeelPainters,
  cxButtons, cxGroupBox, cxCurrencyEdit, cxLookAndFeels, dxBar, dxCore, cxDateUtils,
  cxNavigator, cxPCdxBarPopupMenu, cxPC, dxBarBuiltInMenu, cxGridDBDataDefinitions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ClasseLocalizar;

type
  TfrmLocalizarduplicata = class(TForm)
    dts: TDataSource;
    lblduplicata: TLabel;
    lblstatus: TLabel;
    lblCliente: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    btnFind: TcxButton;
    btnCancelar: TcxButton;
    btnok: TcxButton;
    cbxcdstduplicata: TcxLookupComboBox;
    edtDuplicata: TcxTextEdit;
    edtvlduplicatai: TcxCalcEdit;
    edtvlduplicataf: TcxCalcEdit;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDDUPLICATA: TcxGridDBColumn;
    tbvNUDUPLICATA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTPRORROGACAO: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvDSHISTORICO: TcxGridDBColumn;
    tbvVLDUPLICATA: TcxGridDBColumn;
    tbvVLSALDO: TcxGridDBColumn;
    tbvVLBAIXA: TcxGridDBColumn;
    tbvNMSTDUPLICATA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label8: TLabel;
    edtnuplconta: TcxButtonEdit;
    lblnmplconta: TLabel;
    tbvDTVENCIMENTO: TcxGridDBColumn;
    tbvDTBAIXA: TcxGridDBColumn;
    tbvCDPLCONTA: TcxGridDBColumn;
    lbltpcobranca: TLabel;
    cbxcdtpcobranca: TcxLookupComboBox;
    tbvVLRECEBIDO: TcxGridDBColumn;
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
    actimprimir: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actimprimirboleto: TAction;
    actimprimirduplicata: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton6: TdxBarButton;
    tbvNUCOR: TcxGridDBColumn;
    lblordpagto: TLabel;
    edtdshistorico: TcxTextEdit;
    tbvCDTPCOBRANCA: TcxGridDBColumn;
    tbvnunossonumero: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    actimprimircarne: TAction;
    dxBarButton4: TdxBarButton;
    tbvNUCORCONTA: TcxGridDBColumn;
    tbvNMREPRESENTANTE: TcxGridDBColumn;
    tbvVLCOMISSAO: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    tbsdata: TcxTabSheet;
    Label6: TLabel;
    lbldtsaida: TLabel;
    lblentresaida: TLabel;
    lblentreemissao: TLabel;
    tbsrepresentante: TcxTabSheet;
    Label7: TLabel;
    lblgrupo: TLabel;
    tbsboleto: TcxTabSheet;
    edtdtEmissaoi: TcxDateEdit;
    edtDtemissaoF: TcxDateEdit;
    edtdtvencimentoi: TcxDateEdit;
    edtdtvencimentof: TcxDateEdit;
    Label4: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    edtDtprorrogacaoi: TcxDateEdit;
    edtDtprorrogacaoF: TcxDateEdit;
    edtdtbaixai: TcxDateEdit;
    edtdtbaixaf: TcxDateEdit;
    edtvlcomissaoi: TcxCalcEdit;
    Label5: TLabel;
    edtvlcomissaof: TcxCalcEdit;
    cbxcdrepresentante: TcxLookupComboBox;
    Label21: TLabel;
    cbxcdsetboleto: TcxLookupComboBox;
    Label3: TLabel;
    edtnunossonumero: TcxTextEdit;
    dxBarButton5: TdxBarButton;
    actbaixar: TAction;
    Label9: TLabel;
    tbvPRMULTA: TcxGridDBColumn;
    tbvPRMORADIARIA: TcxGridDBColumn;
    tbvVLMULTADIA: TcxGridDBColumn;
    tbvVLJUROSDIA: TcxGridDBColumn;
    tbvNMSETBOLETO: TcxGridDBColumn;
    dxBarSubItem2: TdxBarSubItem;
    actemail: TAction;
    actemailboleto: TAction;
    dxBarButton7: TdxBarButton;
    actemailcarne: TAction;
    dxBarButton8: TdxBarButton;
    actexcluir: TAction;
    dxBarButton9: TdxBarButton;
    qry: TFDQuery;
    actmodograde: TAction;
    dxBarButton10: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    edtnucntcusto: TcxButtonEdit;
    lblnmcntcusto: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tbvDblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaExit(Sender: TObject);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdsetboletoEnter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure actimprimirboletoExecute(Sender: TObject);
    procedure actimprimirduplicataExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actimprimircarneExecute(Sender: TObject);
    procedure actbaixarExecute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure actemailboletoExecute(Sender: TObject);
    procedure actemailcarneExecute(Sender: TObject);
    procedure actemailExecute(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforeOpen(DataSet: TDataSet);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnucntcustoExit(Sender: TObject);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    bocriado : boolean;
    cdduplicata : integer;
    duplicata : TDuplicata;
    tecla_enter : integer;
    procedure CriarCamposCalculados;
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
    function check_adnt_cliente: boolean;
  public    { Public declarations }
  end;

function LocalizarDuplicata(cdcliente:string='';cdstduplicata:string=''):integer;
function LocalizarDuplicataMulti(cdcliente:string='';cdstduplicata:string=''):string;

var
  frmLocalizarduplicata: TfrmLocalizarduplicata;

implementation

uses uLocalizar,
  uExportarExcel,
  ulocalizarCliente,
  uDtmMain,
  uimprimirrelatoriopadrao, ubaixa, classeadntcliente, uDlgEscolhePedido;

{$R *.DFM}

function LocalizarDuplicata(cdcliente:string='';cdstduplicata:string=''):integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_duplicata) then
  begin
    frmlocalizarDUPLICATA := TfrmlocalizarDUPLICATA.Create(application);
  end;
  if frmlocalizarDUPLICATA.qry.Active then
  begin
    frmlocalizarDUPLICATA.btnfindclick(frmlocalizarDUPLICATA.btnfind);
  end;
  if cdcliente <> '' then
  begin
    frmlocalizarDUPLICATA.edtcdcliente.Text := cdcliente;
  end;
  frmlocalizarDUPLICATA.edtcdCliente.Enabled := cdcliente = '';
  if cdstduplicata <> '' then
  begin
    frmlocalizarDUPLICATA.cbxcdstduplicata.EditValue := cdstduplicata;
  end;
  frmlocalizarDUPLICATA.cbxcdstduplicata.Enabled := cdstduplicata = '';
  frmlocalizarDUPLICATA.showmodal;
  if frmlocalizarDUPLICATA.ModalResult = mrok then
  begin
    result := frmlocalizarduplicata.cdduplicata;
  end;
end;

function LocalizarDuplicataMulti(cdcliente:string='';cdstduplicata:string=''):string;
  procedure set_registros_selecionados;
  var
    i : Integer;
    lista : string;
  begin
    if frmlocalizarduplicata.tbv.ViewData.RowCount = 0 then
    begin
      exit;
    end;
    lista := '';
    for i := 0 to frmlocalizarduplicata.tbv.ViewData.RecordCount -1 do
    begin
      if frmlocalizarduplicata.tbv.ViewData.Records[i].Selected then
      begin
        if result <> '' then
        begin
          result := result +#13;
        end;
        lista := frmlocalizarduplicata.tbv.ViewData.Records[i].Values[frmlocalizarduplicata.tbv.GetColumnByFieldName(_cdduplicata).Index];
        result := result + lista;
      end;
    end;
  end;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_duplicata) then
  begin
    frmlocalizarDUPLICATA := TfrmlocalizarDUPLICATA.Create(application);
  end;
  if frmlocalizarDUPLICATA.qry.Active then
  begin
    frmlocalizarDUPLICATA.btnfindclick(frmlocalizarDUPLICATA.btnfind);
  end;
  if cdcliente <> '' then
  begin
    frmlocalizarDUPLICATA.edtcdcliente.Text      := cdcliente;
  end;
  frmlocalizarDUPLICATA.edtcdCliente.Enabled   := cdcliente = '';
  if cdstduplicata <> '' then
  begin
    frmlocalizarDUPLICATA.cbxcdstduplicata.EditValue := cdstduplicata;
  end;
  frmlocalizarDUPLICATA.cbxcdstduplicata.Enabled := cdstduplicata = '';
  frmlocalizarDUPLICATA.showmodal;
  if frmlocalizarDUPLICATA.ModalResult = mrok then
  begin
    result := '';
    set_registros_selecionados;
  end;
end;

function TfrmLocalizarduplicata.makesql:string;
begin
  result := 'SELECT DUPLICATA.*'+
              ',CLIENTE.NMCLIENTE'+
              ',STDUPLICATA.NUCOR'+
              ',REPRESENTANTE.NMREPRESENTANTE'+
              ',CONTA.NUCOR NUCORCONTA'+
              ',STDUPLICATA.NMSTDUPLICATA'+
              ',SETBOLETO.NMSETBOLETO '+
        'FROM DUPLICATA '+
        'LEFT JOIN CLIENTE ON CLIENTE.CDCLIENTE=DUPLICATA.CDCLIENTE and DUPLICATA.CDEMPRESA=CLIENTE.CDEMPRESA '+
        'LEFT JOIN STDUPLICATA ON STDUPLICATA.CDSTDUPLICATA=DUPLICATA.CDSTDUPLICATA '+
        'LEFT JOIN CONTA ON CONTA.CDEMPRESA=DUPLICATA.CDEMPRESA AND CONTA.CDCONTA=DUPLICATA.CDCONTA '+
        'LEFT JOIN SETBOLETO ON SETBOLETO.CDEMPRESA=DUPLICATA.CDEMPRESA AND DUPLICATA.CDSETBOLETO=SETBOLETO.CDSETBOLETO '+
        'LEFT JOIN REPRESENTANTE ON REPRESENTANTE.CDEMPRESA=DUPLICATA.CDEMPRESA AND REPRESENTANTE.CDREPRESENTANTE=DUPLICATA.CDREPRESENTANTE '+
         sqlwhere+
        ' order by duplicata.dtemissao desc,duplicata.nuduplicata desc';
end;

function TfrmLocalizarduplicata.sqlwhere: string;
var
  criterio : string;
begin
  result := 'WHERE DUPLICATA.CDEMPRESA=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarnomelike(edtduplicata.Text, _duplicata, _nu + _duplicata, result);
  sqlmontarnome(edtnunossonumero.Text, _duplicata, _NUNOSSONUMERO, result);
  sqlmontarcodigo(edtcdcliente.text, _duplicata, _cdcliente, result);
  sqlmontarcodigo(qregistro.codigodonome(_tpcobranca, cbxcdtpcobranca.EditText), _duplicata, _cdtpcobranca, result);
  sqlmontarcodigo(qregistro.codigodonome(_stduplicata, cbxcdstduplicata.EditText), _duplicata, _cdstduplicata, result);
  sqlmontarcodigo(qregistro.codigodonome(_representante, cbxcdrepresentante.EditText), _duplicata, _cdrepresentante, result);
  sqlmontarcodigo(cbxcdsetboleto.EditValue, _duplicata, _cdsetboleto, result);
  sqlmontarnomelike(edtdshistorico.Text, _duplicata, _dshistorico, result);
  sqlmontardata(edtdtemissaoi.text, edtdtemissaof.text, _duplicata, _dtemissao, result);
  sqlmontardata(edtdtbaixai.text, edtdtbaixaf.text, _duplicata, _dtbaixa, result);
  sqlmontardata(edtdtvencimentoi.text, edtdtvencimentof.text, _duplicata, _dtvencimento, result);
  sqlmontardata(edtdtprorrogacaoi.text, edtdtprorrogacaof.text, _duplicata, _dtprorrogacao, result);
  sqlmontarvalor(edtvlduplicatai.Value, edtvlduplicataf.Value, _duplicata, _vlduplicata, result);
  sqlmontarvalor(edtvlcomissaoi.Value, edtvlcomissaof.Value, _duplicata, _vlcomissao, result);
  if edtnuplconta.Text <> '' then
  begin
    sqlmontarcodigo(CodigodoCampo(_plconta, edtnuplconta.text, _nunivel), _duplicata, _cdplconta, result);
  end;
  if edtnucntcusto.Text <> '' then
  begin
    sqlmontarcodigo(CodigodoCampo(_cntcusto, edtnucntcusto.text, _nunivel), _duplicata, _cdcntcusto, result);
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarduplicata.btnFindClick(Sender: TObject);
begin
  qry.close;
  qry.AfterScroll := nil;
  qry.open(makesql);
  qry.AfterScroll := qryAfterScroll;
  qryAfterScroll(qry);
  btnOk.Enabled := qry.RecordCount > 0;
end;

procedure TfrmLocalizarduplicata.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarduplicata.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmLocalizarduplicata.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarduplicata.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarduplicata.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarduplicata.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarduplicata.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarduplicata.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarduplicata.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarduplicata.edtnucntcustoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnucntcusto.text;
  if cd = '' then
  begin
    lblnmcntcusto.caption := '';
    colorexit(Sender);
    exit;
  end;
  cd := CodigodoCampo(_cntcusto, cd, _nunivel);
  if cd = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnucntcusto.text, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    edtnucntcusto.setfocus;
    abort;
  end;
  lblnmcntcusto.Caption := NomedoCodigo(_cntcusto, cd);
  colorexit(Sender);
end;

procedure TfrmLocalizarduplicata.edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarduplicata.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar(_cntcusto, _nunivel, _nmcntcusto, 'Centro Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  edtnucntcusto.Text    := cd;
  lblnmcntcusto.Caption := QRegistro.CampodoCampo(_cntcusto, _nunivel, cd, _nmcntcusto, true);
end;

procedure TfrmLocalizarduplicata.edtnuplcontaExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnuplconta.text;
  if cd = '' then
  begin
    lblnmplconta.caption := '';
    colorexit(Sender);
    exit;
  end;
  cd := CodigodoCampo(_plconta, cd, _nunivel);
  if cd = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnuplconta.text, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    edtnuplconta.setfocus;
    abort;
  end;
  lblnmplconta.Caption := NomedoCodigo(_plconta, cd);
  colorexit(Sender);
end;

procedure TfrmLocalizarduplicata.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarduplicata.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar(_plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  edtnuplconta.Text    := cd;
  lblnmplconta.Caption := QRegistro.CampodoCampo(_plconta, _nunivel, cd, _nmplconta, true);
end;

procedure TfrmLocalizarduplicata.FormCreate(Sender: TObject);
begin
  qry.onCalcFields := qryCalcFields;
  TRegistro.SetQueryLocalizar(qry, dts, tbv);
  duplicata   := tduplicata.create;
  tecla_enter := 0;
  tbsrepresentante.tabvisible := empresa.comercial.representante.bo;
  AbrirTabelas;
end;

procedure TfrmLocalizarduplicata.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarduplicata.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarduplicata.CriarCamposCalculados;
var
  oField: TField;
  i : integer;
begin
  if bocriado then
  begin
    exit;
  end;
  bocriado := true;
  qry.FieldDefs.Updated := False;
  qry.FieldDefs.Update;
  for i := 0 to qry.FieldDefs.Count - 1 do
  begin
    qry.FieldDefs[i].CreateField(Self);
  end;

  oField := TCurrencyField.Create(qry);
  oField.FieldName := 'VLMULTADIA';
  oField.FieldKind := fkInternalCalc; // or fkCalculated
  oField.DataSet := qry;

  oField := TCurrencyField.Create(qry);
  oField.FieldName := 'VLJUROSDIA';
  oField.FieldKind := fkInternalCalc; // or fkCalculated
  oField.DataSet := qry;
end;

procedure TfrmLocalizarduplicata.cbxcdsetboletoEnter(Sender: TObject);
begin
  abrir_tabela(_conta);
  colorenter(sender);
end;

procedure TfrmLocalizarduplicata.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmLocalizarduplicata.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarduplicata.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  abrir_tabela(_tpcobranca);
  colorenter(Sender);
end;

function TfrmLocalizarduplicata.check_adnt_cliente:boolean;
var
  cdadntcliente, valor : TStrings;
  cdadiantamento : string;
begin
  result        := False;
  cdadntcliente := TStringlist.create;
  valor         := TStringList.create;
  try
    if Tadntcliente.clientePossuiAdiantamento(qry.fieldbyname(_cdcliente).asstring, cdadntcliente, valor) and
       (cdadntcliente.count > 0 ) and
       (messagedlg('Cliente '+qry.fieldbyname(_nmcliente).AsString+' possui adiantamento.'#13+
                   'Deseja baixar contas a receber '+qry.fieldbyname(_nuduplicata).asstring+' com adiantamento?', mtinformation, [mbyes, mbno], 0) = mryes) then
    begin
      cdadiantamento := cdadntcliente[0];
      if cdadntcliente.Count > 1 then
      begin
        cdadiantamento := dlgescolheadiantamento(cdadntcliente, valor);
      end;
      if cdadiantamento <> '' then
      begin
        result := BaixarAdiantamento(qry.fieldbyname(_cdduplicata).AsInteger, _duplicata, strtoint(cdadiantamento));
      end;
    end;
  finally
    freeandnil(cdadntcliente);
    freeandnil(valor);
  end;
end;

procedure TfrmLocalizarduplicata.actbaixarExecute(Sender: TObject);
var
  i : integer;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      if tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_nmstduplicata).Index] <> uppercase(_aberta) then
      begin
        messagedlg('Não é possível baixar.'#13'Selecione somente documento(s) aberto(s).', mtinformation, [mbok], 0);
        abort;
      end;
      if not duplicata.verificarSeNota55JaFoiEnviada(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdduplicata).Index]) then
      begin
        messagedlg('Não é possível baixar contas a receber de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota antes de baixar o contas a receber.', mtInformation, [mbOK], 0);
        Abort;
      end;
    end;
  end;
  if check_adnt_cliente then
  begin
    qry.Refresh;
    Exit;
  end;
  if BaixarDocumento(_DUPLICATA, qry.fieldbyname(_cdduplicata).AsInteger, tbv) then
  begin
    qry.Refresh;
  end;
end;

procedure TfrmLocalizarduplicata.actemailboletoExecute(Sender: TObject);
var
  codigo : integer;
  cdsetboleto, i : integer;
  duplicatalist : tduplicatalist;
  nome_arquivo : TStrings;
  lstemail : string;
  eventoemail : TEventoEmail;
  cliente : TCliente;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  cdsetboleto := 0;
  duplicatalist := TDuplicataList.create;
  nome_arquivo := TStringList.Create;
  eventoemail := TEventoEmail.create;
  cliente := tcliente.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        codigo := strtoint(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdduplicata).Index]);
        if not duplicata.verificarSeNota55JaFoiEnviada(codigo) then
        begin
          messagedlg('Não é possível emitir boleto de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota para depois imprimir o boleto.', mtInformation, [mbOK], 0);
          Abort;
        end;
        if cdsetboleto = 0 then
        begin
          cdsetboleto := qregistro.InteirodoCodigo(_duplicata, codigo, _cdsetboleto);
        end;
        if (cdsetboleto <> qregistro.InteirodoCodigo(_duplicata, codigo, _cdsetboleto)) and (qregistro.InteirodoCodigo(_duplicata, codigo, _cdsetboleto) <> 0) then
        begin
          messagedlg('Não é possível emitir boleto de configurações diferentes.'#13'Favor selecionar contas a receber somente de uma configuração de boleto.', mtInformation, [mbOK], 0);
          Abort;
        end;
        duplicatalist.New.Select(codigo);
      end;
    end;
    if duplicatalist.Count = 0 then
    begin
      exit;
    end;
    // gerar pdf
    // agrupar o nome dos arquivos do pdf
    // formatar email
    cliente.select(duplicatalist.Items[0].cdcliente);
    lstemail := cliente.getListaEmailBoleto;
    if lstemail = '' then
    begin
      lstemail := cliente.email;
    end;
    nome_arquivo.Text := duplicatalist.GerarListaPDFBoleto;
    if empresa.financeiro.duplicata.cdeventoemailduplicataboleto <> 0 then
    begin
      eventoemail.Select(empresa.financeiro.duplicata.cdeventoemailduplicataboleto);
      Formatar_Email(False, eventoemail.dstitulo, eventoemail.dsassunto, nome_arquivo.Text, lstemail, eventoemail.emailcopia, usuario.email_.SmtpUser, usuario.email_.SmtpPass, '');
    end
    else
    begin
      Formatar_Email(False, '', '', nome_arquivo.Text, lstemail, '');
    end;
  finally
    freeandnil(duplicatalist);
    freeandnil(nome_arquivo);
    freeandnil(eventoemail);
    freeandnil(cliente);
  end;
end;

procedure TfrmLocalizarduplicata.actemailcarneExecute(Sender: TObject);
var
  cdcliente : string;
  codigo, i, cdsetboleto : integer;
  duplicatalist : tduplicatalist;
  nome_arquivo : TStrings;
  lstemail : string;
  eventoemail : TEventoEmail;
  cliente : TCliente;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  cdcliente   := '';
  cdsetboleto := 0;
  duplicatalist := TDuplicataList.create;
  nome_arquivo := TStringList.Create;
  eventoemail := TEventoEmail.create;
  cliente := tcliente.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        codigo := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdduplicata).Index];
        if not duplicata.verificarSeNota55JaFoiEnviada(codigo) then
        begin
          messagedlg('Não é possível emitir carne de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota para depois imprimir o boleto.', mtInformation, [mbOK], 0);
          Abort;
        end;
        if cdcliente = '' then
        begin
          cdcliente := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcliente).Index];
        end;
        if cdcliente <> tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcliente).Index] then
        begin
          messagedlg('Não é possível emitir carne de clientes diferentes.'#13'Favor selecionar contas a receber somente de um cliente.', mtInformation, [mbOK], 0);
          Abort;
        end;
        if cdsetboleto = 0 then
        begin
          cdsetboleto := qregistro.InteirodoCodigo(_duplicata, codigo, _cdsetboleto);
        end;
        if (cdsetboleto <> qregistro.InteirodoCodigo(_duplicata, codigo, _cdsetboleto)) and (qregistro.InteirodoCodigo(_duplicata, codigo, _cdsetboleto) <> 0) then
        begin
          messagedlg('Não é possível emitir boleto de configurações diferentes.'#13'Favor selecionar contas a receber somente de uma configuração de boleto.', mtInformation, [mbOK], 0);
          Abort;
        end;
        duplicatalist.New.Select(codigo);
      end;
    end;
    if duplicatalist.Count = 0 then
    begin
      exit;
    end;
    cliente.select(duplicatalist.Items[0].cdcliente);
    lstemail := cliente.getListaEmailBoleto;
    if lstemail = '' then
    begin
      lstemail := cliente.email;
    end;
    nome_arquivo.Text := duplicatalist.GerarListaPDFCarne;
    if empresa.financeiro.duplicata.cdeventoemailduplicataboleto <> 0 then
    begin
      eventoemail.Select(empresa.financeiro.duplicata.cdeventoemailduplicataboleto);
      Formatar_Email(False, eventoemail.dstitulo, eventoemail.dsassunto, nome_arquivo.Text, lstemail, eventoemail.emailcopia, usuario.email_.SmtpUser, usuario.email_.SmtpPass, '');
    end
    else
    begin
      Formatar_Email(False, '', '', nome_arquivo.Text, lstemail, '');
    end;
  finally
    freeandnil(nome_arquivo);
    freeandnil(eventoemail);
    freeandnil(cliente);
    freeandnil(duplicatalist);
  end;
end;

procedure TfrmLocalizarduplicata.actemailExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarduplicata.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarduplicata.actexcluirExecute(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir?', mtInformation, [mbYes, mbno], 0) = mrno then
  begin
    Exit;
  end;
  duplicata.Select(qry.FieldByName(_cdduplicata).AsInteger);
  duplicata.Delete;
  qry.Refresh;
end;

procedure TfrmLocalizarduplicata.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarduplicata.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarduplicata.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarduplicata.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, qry, tbv);
end;

procedure TfrmLocalizarduplicata.actimprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarduplicata.actimprimirboletoExecute(Sender: TObject);
var
  codigo : integer;
  cdsetboleto, i : integer;
  duplicatalist : tduplicatalist;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  cdsetboleto := 0;
  duplicatalist := TDuplicataList.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        codigo := strtoint(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdduplicata).Index]);
        if not duplicata.verificarSeNota55JaFoiEnviada(codigo) then
        begin
          messagedlg('Não é possível emitir boleto de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota para depois imprimir o boleto.', mtInformation, [mbOK], 0);
          Abort;
        end;
        if cdsetboleto = 0 then
        begin
          cdsetboleto := qregistro.InteirodoCodigo(_duplicata, codigo, _cdsetboleto);
        end;
        if (cdsetboleto <> qregistro.InteirodoCodigo(_duplicata, codigo, _cdsetboleto)) and (qregistro.InteirodoCodigo(_duplicata, codigo, _cdsetboleto) <> 0) then
        begin
          messagedlg('Não é possível emitir boleto de configurações diferentes.'#13'Favor selecionar contas a receber somente de uma configuração de boleto.', mtInformation, [mbOK], 0);
          Abort;
        end;
        duplicatalist.New.Select(codigo);
      end;
    end;
    duplicatalist.ImprimirBoletoAcbr(cdsetboleto);
  finally
    freeandnil(duplicatalist);
  end;
end;

procedure TfrmLocalizarduplicata.actimprimircarneExecute(Sender: TObject);
var
  duplicatalist : TDuplicataList;
  cdcliente : string;
  codigo, i : integer;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  cdcliente   := '';
  duplicataList := TDuplicataList.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        codigo := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdduplicata).Index];
        if not duplicata.verificarSeNota55JaFoiEnviada(codigo) then
        begin
          messagedlg('Não é possível emitir carne de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota para depois imprimir o boleto.', mtInformation, [mbOK], 0);
          Abort;
        end;
        if cdcliente = '' then
        begin
          cdcliente := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcliente).Index];
        end;
        if cdcliente <> tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcliente).Index] then
        begin
          messagedlg('Não é possível emitir carne de clientes diferentes.'#13'Favor selecionar contas a receber somente de um cliente.', mtInformation, [mbOK], 0);
          Abort;
        end;
        duplicatalist.New.Select(codigo);
      end;
    end;
    duplicatalist.ImprimirCarneAcbr;
  finally
    freeandnil(duplicatalist);
  end;
end;

procedure TfrmLocalizarduplicata.actimprimirduplicataExecute(Sender: TObject);
var
  cdduplicata : string;
  i : integer;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      cdduplicata := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdduplicata).Index];
      ImpimirRelatorioPadrao1(331, cdduplicata);
    end;
  end;
end;

procedure TfrmLocalizarduplicata.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCORCONTA;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  end
  else
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
end;

procedure TfrmLocalizarduplicata.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key <> 40) and (key <> 38) then
  begin
    if key = 13 then
    begin
      inc(tecla_enter)
    end
    else
    begin
      tecla_enter := 0;
    end;
    if tecla_enter = 1 then
    begin
      btnFindClick(btnfind);
    end;
    if (tecla_enter = 2) and btnok.enabled then
    begin
      tecla_enter := 0;
      btnOkClick(btnok);
    end;
  end;
  if (not qry.Active) or (qry.RecordCount <= 0) then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    qry.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    qry.Prior;
    key := 0;
  end;
end;

procedure TfrmLocalizarduplicata.qryCalcFields(DataSet: TDataSet);
var
  data : TDate;
  movbancario : TMovBancario;
begin
  if qry.fieldbyname(_VLSALDO).ascurrency = 0 then
  begin
    qry.fieldbyname(_VLJUROSDIA).ascurrency := 0;
    qry.fieldbyname(_VLMULTADIA).AsCurrency := 0;
    exit;
  end;
  data        := DtBanco;
  movbancario := TMovBancario.create;
  try
    qry.fieldbyname(_VLJUROSDIA).ascurrency := movbancario.JuroDocumento(data, qry.fieldbyname(_DTPRORROGACAO).asdatetime, qry.fieldbyname(_PRMORADIARIA).AsFloat, qry.fieldbyname(_VLSALDO).ascurrency);
    qry.fieldbyname(_VLMULTADIA).AsCurrency := 0;
    if data > qry.fieldbyname(_DTPRORROGACAO).asdatetime then
    begin
      qry.fieldbyname(_VLMULTADIA).AsCurrency := qry.fieldbyname(_VLSALDO).AsCurrency * qry.fieldbyname(_PRMULTA).AsFloat / 100;
    end;
  finally
    freeandnil(movbancario);
  end;
end;

procedure TfrmLocalizarduplicata.FormDestroy(Sender: TObject);
begin
  freeandnil(duplicata);
end;

procedure TfrmLocalizarduplicata.AbrirTabelas;
begin
  cbxcdstduplicata.Properties.ListSource := abrir_tabela(_st + _duplicata);
  cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
  cbxcdrepresentante.Properties.ListSource := abrir_tabela(_representante);
  cbxcdsetboleto.Properties.ListSource := abrir_tabela(_set + _boleto);
  TcxLookupComboBoxProperties(tbvCDTPCOBRANCA.Properties).ListSource := abrir_tabela(_tpcobranca);
  TcxLookupComboBoxProperties(tbvCDPLCONTA.Properties).ListSource := abrir_tabela(_plconta);
end;

procedure TfrmLocalizarduplicata.qryAfterScroll(DataSet: TDataSet);
begin
  cdduplicata := dataset.fieldbyname(_CDDUPLICATA).asinteger;
  actexcluir.Enabled := dataset.fieldbyname(_CDCTE).IsNull and dataset.fieldbyname(_CDNEGOCIACAOSAIDA).IsNull and dataset.fieldbyname(_CDSAIDA).IsNull and (dataset.fieldbyname(_VLSALDO).AsCurrency=dataset.fieldbyname(_VLDUPLICATA).AsCurrency);
end;

procedure TfrmLocalizarduplicata.qryBeforeOpen(DataSet: TDataSet);
begin
  CriarCamposCalculados;
end;

end.

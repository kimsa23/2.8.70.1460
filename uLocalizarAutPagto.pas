unit uLocalizarAutPagto;

interface

uses
  System.Actions, System.UITypes,
  forms, Graphics, Variants, Menus, dialogs, sysutils, ActnList, StdCtrls,
  Mask, Classes, ExtCtrls, ComCtrls, Buttons, Controls,
  DB,
  uExportarExcel, ustrings, uregistro, uconstantes, classesqlmontar,
  udatahora, urotinas,
  classeretornasql, classeempresa, classeform, classeAplicacao, classequery,
  classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, dxStatusBar,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxCurrencyEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeels,
  dxBar, dxCore, cxDateUtils, cxNavigator, ClasseLocalizar, cxBlobEdit;

type
  TfrmLocalizarAutPagto = class(TForm)
    Bevel1: TBevel;
    lblcodigo: TLabel;
    lblstatus: TLabel;
    lbldtemissao: TLabel;
    Label6: TLabel;
    lblordpagto: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    lbldtvencimento: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    lbldocumento: TLabel;
    Label7: TLabel;
    cbxcdstautpagto: TcxLookupComboBox;
    edtdshistorico: TcxTextEdit;
    edtdtprorrogacaoi: TcxDateEdit;
    edtdtEmissaoi: TcxDateEdit;
    edtdtProrrogacaoF: TcxDateEdit;
    edtDtemissaoF: TcxDateEdit;
    edtvlautpagtoi: TcxCalcEdit;
    edtDtVencimentoi: TcxDateEdit;
    edtvlautpagtof: TcxCalcEdit;
    edtDtvencimentoF: TcxDateEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    btnFind: TcxButton;
    cbxcdtpentrada: TcxLookupComboBox;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDAUTPAGTO: TcxGridDBColumn;
    tbvNUENTRADA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTVENCIMENTO: TcxGridDBColumn;
    tbvDTPRORROGACAO: TcxGridDBColumn;
    tbvNMFORNECEDOR: TcxGridDBColumn;
    tbvVLAUTPAGTO: TcxGridDBColumn;
    tbvVLSALDO: TcxGridDBColumn;
    tbvNMSTAUTPAGTO: TcxGridDBColumn;
    tbvDSHISTORICO: TcxGridDBColumn;
    tbvNMTPENTRADA: TcxGridDBColumn;
    tbvNMCNTCUSTO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    tbvPRMORADIARIA: TcxGridDBColumn;
    lbltpcobranca: TLabel;
    cbxcdtpcobranca: TcxLookupComboBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label8: TLabel;
    edtnuplconta: TcxButtonEdit;
    lblnmplconta: TLabel;
    tbvCDPLCONTA: TcxGridDBColumn;
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
    tbvnucor: TcxGridDBColumn;
    Label9: TLabel;
    edtnuentrada: TcxTextEdit;
    Label10: TLabel;
    edtdtentradai: TcxDateEdit;
    Label11: TLabel;
    edtdtentradaf: TcxDateEdit;
    actimprimir: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actimprimirmatricial: TAction;
    dxBarButton3: TdxBarButton;
    actimprimirrecibo: TAction;
    dxBarButton4: TdxBarButton;
    actimprimirautorizacaopagamento: TAction;
    dxBarButton5: TdxBarButton;
    tbvNUCORCONTA: TcxGridDBColumn;
    tbvCDFORNECEDOR: TcxGridDBColumn;
    dxBarButton6: TdxBarButton;
    actbaixa: TAction;
    tbvnmusuario: TcxGridDBColumn;
    tbvtsaprovacao: TcxGridDBColumn;
    tbvdtbaixa: TcxGridDBColumn;
    tbvCDTPCOBRANCA: TcxGridDBColumn;
    tbvVLBAIXA: TcxGridDBColumn;
    tbvVLRECEBIDO: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton7: TdxBarButton;
    edtcdfornecedor: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    edtnucntcusto: TcxButtonEdit;
    lblnmcntcusto: TLabel;
    tbvdsobservacao: TcxGridDBColumn;
    edtdsobservacao: TcxTextEdit;
    lbldsobservacao: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaExit(Sender: TObject);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure cbxcdtpentradaEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actimprimirExecute(Sender: TObject);
    procedure actimprimirmatricialExecute(Sender: TObject);
    procedure actimprimirreciboExecute(Sender: TObject);
    procedure actimprimirautorizacaopagamentoExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actbaixaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnucntcustoExit(Sender: TObject);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    tecla_enter : integer;
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
    function check_adnt_fornecedor: boolean;
  public    { Public declarations }
  end;

function Localizarautpagto(cdfornecedor:string='';cdstautpagto:string=''):integer;
function LocalizarautpagtoMulti(cdfornecedor:string='';cdstautpagto:string=''):string;

var
  frmLocalizarAutPagto: TfrmLocalizarAutPagto;

implementation

uses uLocalizar, ulocalizarFornecedor, uDtmMain,
  uimprimirrelatoriopadrao, ubaixa, classeadntfornecedor, uDlgEscolhePedido;

{$R *.DFM}

function Localizarautpagto(cdfornecedor:string='';cdstautpagto:string=''):integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_autpagto) then
  begin
    frmlocalizarautpagto := Tfrmlocalizarautpagto.Create(application);
  end;
  if frmLocalizarAutPagto.q.q.Active then
  begin
    frmLocalizarAutPagto.btnfindclick(frmLocalizarAutPagto.btnfind);
  end;
  frmlocalizarautpagto.edtcdfornecedor.Enabled := true;
  if cdfornecedor <> '' then
  begin
    frmlocalizarautpagto.edtcdfornecedor.text  := cdfornecedor;
    frmlocalizarautpagto.edtcdfornecedor.Enabled := false;
  end;
  frmlocalizarautpagto.cbxcdstautpagto.Enabled := true;
  if cdstautpagto <> '' then
  begin
    frmlocalizarautpagto.cbxcdstautpagto.EditValue := cdstautpagto;
    frmlocalizarautpagto.cbxcdstautpagto.Enabled := false;
  end;
  frmlocalizarautpagto.showmodal;
  if frmlocalizarautpagto.ModalResult <> mrok then
  begin
    exit;
  end;
  result := frmlocalizarautpagto.codigo;
end;

function LocalizarautpagtoMulti(cdfornecedor:string='';cdstautpagto:string=''):string;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_autpagto) then
  begin
    frmlocalizarautpagto := Tfrmlocalizarautpagto.Create(application);
  end;
  if frmLocalizarAutPagto.q.q.Active then
  begin
    frmLocalizarAutPagto.btnfindclick(frmLocalizarAutPagto.btnfind);
  end;
  frmlocalizarautpagto.edtcdfornecedor.Enabled := true;
  if cdfornecedor <> '' then
  begin
    frmlocalizarautpagto.edtcdfornecedor.text  := cdfornecedor;
    frmlocalizarautpagto.edtcdfornecedor.Enabled := false;
  end;
  frmlocalizarautpagto.cbxcdstautpagto.Enabled := true;
  if cdstautpagto <> '' then
  begin
    frmlocalizarautpagto.cbxcdstautpagto.EditValue := cdstautpagto;
    frmlocalizarautpagto.cbxcdstautpagto.Enabled := false;
  end;
  frmlocalizarautpagto.showmodal;
  if frmlocalizarautpagto.ModalResult <> mrok then
  begin
    exit;
  end;
  frmlocalizarautpagto.q.q.First;
  while not frmlocalizarautpagto.q.q.eof do
  begin
    if result <> '' then
    begin
      result := result + #13;
    end;
    result := result + frmlocalizarautpagto.q.q.fieldbyname(_cdautpagto).asstring;
    frmlocalizarautpagto.q.q.next;
  end;
end;

function TfrmLocalizarAutPagto.makesql:string;
begin
  result := 'SELECT A.CDAUTPAGTO'+
                 ',E.NUENTRADA'+
                 ',a.nuautpagto'+
                 ',A.DTEMISSAO'+
                 ',A.DTVENCIMENTO'+
                 ',a.dtbaixa'+
                 ',A.dtprorrogacao'+
                 ',a.cdfornecedor'+
                 ',F.NMFORNECEDOR'+
                 ',A.VLAUTPAGTO'+
                 ',A.VLSALDO'+
                 ',A.CDTPCOBRANCA'+
                 ',A.VLBAIXA'+
                 ',A.VLRECEBIDO'+
                 ',s.nucor'+
                 ',N.NUCOR NUCORCONTA'+
                 ',S.NMSTAUTPAGTO'+
                 ',A.DSHISTORICO'+
                 ',a.cdplconta'+
                 ',a.prmoradiaria'+
                 ',C.NMCNTCUSTO' +
                 ',u.nmusuario'+
                 ',a.tsaprovacao'+
                 ',a.dsobservacao'+
                 ',T.NMTPENTRADA '+
            'FROM AUTPAGTO a '+
            'LEFT JOIN ENTRADA e ON E.CDENTRADA=A.CDENTRADA AND A.CDEMPRESA=E.CDEMPRESA '+
            'left join usuario u on u.cdusuario=a.cdusuarioaprovacao '+
            'LEFT JOIN TPENTRADA t ON T.CDTPENTRADA=E.CDTPENTRADA AND T.CDEMPRESA=E.CDEMPRESA '+
            'LEFT JOIN FORNECEDOR f ON F.CDFORNECEDOR=A.CDFORNECEDOR AND F.CDEMPRESA=A.CDEMPRESA '+
            'LEFT JOIN CNTCUSTO c ON C.CDCNTCUSTO=A.CDCNTCUSTO AND C.CDEMPRESA=A.CDEMPRESA '+
            'LEFT JOIN CONTA N ON N.CDEMPRESA=A.CDEMPRESA AND N.CDCONTA=A.CDCONTA '+
            'LEFT JOIN STAUTPAGTO s ON S.CDSTAUTPAGTO=A.CDSTAUTPAGTO '+
            sqlwhere+
            ' order by a.dtemissao desc';
end;

function TfrmLocalizarAutPagto.sqlwhere:string;
var
  criterio : string;
begin
  result := result + 'WHERE A.CDEMPRESA=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(edtcdfornecedor.text, _a, _cdfornecedor, result);
  sqlmontarcodigo(qregistro.codigodonome(_tpcobranca, cbxcdtpcobranca.EditText), _a, _cdtpcobranca, result);
  sqlmontarcodigo(qregistro.codigodonome(_tpentrada , cbxcdtpentrada.EditText) , _e, _cdtpentrada, result);
  sqlmontarcodigo(qregistro.codigodonome(_stautpagto, cbxcdstautpagto.EditText), _a, _cdstautpagto, result);
  if edtnucntcusto.Text <> '' then
  begin
    sqlmontarcodigo(CodigodoCampo(_cntcusto, edtnucntcusto.text, _nunivel), _a, _cdcntcusto, result);
  end;
  sqlmontarnomelike(edtdshistorico.Text   , _a, _dshistorico , result);
  sqlmontarnomelike(edtdsobservacao.Text  , _a, _dsobservacao, result);
  sqlmontarcodigo  (edtnuentrada.Text     , _e, _nuentrada   , result);
  sqlmontardata    (edtdtentradai.text    , edtdtentradaf.text    , _e, _dtsaida      , result);
  sqlmontardata    (edtdtemissaoi.text    , edtdtemissaof.text    , _a, _dtemissao    , result);
  sqlmontardata    (edtdtvencimentoi.text , edtdtvencimentof.text , _a, _dtvencimento , result);
  sqlmontardata    (edtdtprorrogacaoi.text, edtdtprorrogacaof.text, _a, _dtprorrogacao, result);
  sqlmontarvalor   (edtvlautpagtoi.Value  , edtvlautpagtof.Value  , _a, _vlautpagto   , result);
  if edtnuplconta.Text <> '' then
  begin
    sqlmontarcodigo(CodigodoCampo(_plconta, edtnuplconta.text, _nunivel), _a, _cdplconta, result);
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarAutPagto.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.Text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarAutPagto.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarAutPagto.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarAutPagto.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdautpagto).asinteger;
end;

procedure TfrmLocalizarAutPagto.AbrirTabelas;
begin
  cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
  cbxcdtpentrada.Properties.ListSource := abrir_tabela(_tpentrada);
  cbxcdstautpagto.Properties.ListSource := abrir_tabela(_stautpagto);
  TcxLookupComboBoxProperties(tbvCDPLCONTA.Properties).ListSource := abrir_tabela(_plconta);
  TcxLookupComboBoxProperties(tbvCDTPCOBRANCA.Properties).ListSource := abrir_tabela(_tpcobranca);
end;

procedure TfrmLocalizarAutPagto.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarAutPagto.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarAutPagto.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarAutPagto.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarAutPagto.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarAutPagto.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarAutPagto.edtnucntcustoExit(Sender: TObject);
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

procedure TfrmLocalizarAutPagto.edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarAutPagto.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarAutPagto.edtnuplcontaExit(Sender: TObject);
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

procedure TfrmLocalizarAutPagto.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarAutPagto.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarAutPagto.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  tecla_enter := 0;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarAutPagto.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarAutPagto.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  abrir_tabela(_tpcobranca);
  colorenter(Sender);  
end;

procedure TfrmLocalizarAutPagto.cbxcdtpentradaEnter(Sender: TObject);
begin
  abrir_tabela(_tpentrada);
  colorenter(Sender);
end;

procedure TfrmLocalizarAutPagto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarAutPagto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

function TfrmLocalizarAutPagto.check_adnt_fornecedor:boolean;
var
  cdadntfornecedor, valor : TStrings;
  cdadiantamento : string;
begin
  result        := False;
  cdadntfornecedor := TStringlist.create;
  valor         := TStringList.create;
  try
    if Tadntfornecedor.fornecedorPossuiAdiantamento(q.q.fieldbyname(_cdfornecedor).asstring, cdadntfornecedor, valor) and
       (cdadntfornecedor.count > 0 ) and
       (messagedlg('Fornecedor '+q.q.fieldbyname(_nmfornecedor).AsString+' possui adiantamento.'#13+
                   'Deseja baixar contas a pagar '+q.q.fieldbyname(_nuautpagto).asstring+' com adiantamento?', mtinformation, [mbyes, mbno], 0) = mryes) then
    begin
      cdadiantamento := cdadntfornecedor[0];
      if cdadntfornecedor.Count > 1 then
      begin
        cdadiantamento := dlgescolheadiantamento(cdadntfornecedor, valor);
      end;
      if cdadiantamento <> '' then
      begin
        result := BaixarAdiantamento(q.q.fieldbyname(_cdautpagto).AsInteger, _autpagto, strtoint(cdadiantamento));
      end;
    end;
  finally
    freeandnil(cdadntfornecedor);
    freeandnil(valor);
  end;
end;

procedure TfrmLocalizarAutPagto.actbaixaExecute(Sender: TObject);
var
  nmstautpagto : string;
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
      nmstautpagto := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_nmstautpagto).Index];
      if nmstautpagto <> uppercase(_aberta) then
      begin
        messagedlg('Não é possível baixar.'#13'Selecione somente documento(s) aberto(s).', mtinformation, [mbok], 0);
        abort;
      end;
    end;
  end;
  if check_adnt_fornecedor then
  begin
    q.q.Refresh;
    Exit;
  end;
  if BaixarDocumento(_autpagto, q.q.fieldbyname(_cdautpagto).asinteger, tbv) then
  begin
    q.q.Refresh;
  end;
end;

procedure TfrmLocalizarAutPagto.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarAutPagto.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarAutPagto.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarAutPagto.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarAutPagto.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarAutPagto.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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
    if AViewInfo.GridRecord.DisplayTexts[Column.Index] = '' then
    begin
      exit;
    end;
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

procedure TfrmLocalizarAutPagto.actimprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarAutPagto.actimprimirmatricialExecute(Sender: TObject);
var
  cdautpagto : string;
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
      cdautpagto := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdautpagto).Index];
      ImpimirRelatorioPadrao1(567, 'where a.cdempresa='+empresa.cdempresa.tostring+' and a.cdautpagto='+cdautpagto);
    end;
  end;
end;

procedure TfrmLocalizarAutPagto.actimprimirreciboExecute(Sender: TObject);
var
  codigo, cdautpagto : string;
  i : integer;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  cdautpagto := '';
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      if cdautpagto <> '' then
      begin
        cdautpagto := cdautpagto + ',';
      end;
      codigo := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdautpagto).Index];
      cdautpagto := cdautpagto + codigo;
    end;
  end;
  if cdautpagto <> '' then
  begin
    ImpimirRelatorioPadrao1(542, 'where autpagto.cdempresa='+empresa.cdempresa.tostring+' and autpagto.cdautpagto in('+cdautpagto+')');
  end;
end;

procedure TfrmLocalizarAutPagto.actimprimirautorizacaopagamentoExecute(Sender: TObject);
var
  codigo, cdautpagto : string;
  i : integer;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  cdautpagto := '';
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      if cdautpagto <> '' then
      begin
        cdautpagto := cdautpagto + ',';
      end;
      codigo := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdautpagto).Index];
      cdautpagto := cdautpagto + codigo;
    end;
  end;
  if cdautpagto <> '' then
  begin
    ImpimirRelatorioPadrao1(500, 'where autpagto.cdempresa='+empresa.cdempresa.tostring+' and autpagto.cdautpagto in('+cdautpagto+')');
  end;
end;

procedure TfrmLocalizarAutPagto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key <> 40) and (key <> 38) then
  begin
    if key = 13 then
    begin
      inc(tecla_enter);
    end
    else
    begin
      tecla_enter := 0;
    end;
    if tecla_enter = 1 then
    begin
      btnFindClick(btnfind);
    end;
    if tecla_enter = 2 then
    begin
      if btnok.enabled then
      begin
        tecla_enter := 0;
        btnOkClick(btnok);
      end;
    end;
  end;
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

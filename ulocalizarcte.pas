unit ulocalizarcte;

interface

uses
  System.Actions, System.UITypes,
  forms, Buttons, StdCtrls, ComCtrls, Controls, Mask, Classes, ExtCtrls, dialogs,
  Graphics, Menus, ActnList, sysutils,
  DB,
  udatahora, uconstantes, uregistro, ustrings, urotinas, uexportarexcel,
  uLocalizar, ulocalizarCliente,
  classecte, classesqlmontar, classeempresa, classeretornasql, classeform,
  classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons,
  cxGroupBox, cxRadioGroup, cxPC, cxGraphics, dxStatusBar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar, cxNavigator, dxCore, cxDateUtils,
  ClasseLocalizar;

type
  TfrmLocalizarCTE = class(TForm)
    Bevel1: TBevel;
    lbldocumento: TLabel;
    lblcliente: TLabel;
    lblfornecedor: TLabel;
    lblcondpagto: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtvltotali: TcxCalcEdit;
    edtvltotalf: TcxCalcEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDCTE: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMDESTINATARIO: TcxGridDBColumn;
    tbvNMEXPEDIDOR: TcxGridDBColumn;
    tbvNMRECEBEDOR: TcxGridDBColumn;
    tbvVLSERVICO: TcxGridDBColumn;
    tbvNMREMETENTE: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    edtDtemissaof: TcxDateEdit;
    lblentreemissao: TLabel;
    edtdtEmissaoi: TcxDateEdit;
    lbldtemissao: TLabel;
    cbxcdstcte: TcxLookupComboBox;
    lbl1: TLabel;
    tbvNMSTCTE: TcxGridDBColumn;
    Label1: TLabel;
    edtnunota: TcxTextEdit;
    lblnota: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbvNMCTETPTOMADOR: TcxGridDBColumn;
    lbl2: TLabel;
    cbxnusticms: TcxLookupComboBox;
    tbvNUSTICMS: TcxGridDBColumn;
    tbvCDCFOP: TcxGridDBColumn;
    tbvVLBASEICMS: TcxGridDBColumn;
    tbvVLICMS: TcxGridDBColumn;
    tbvNMCONDPAGTO: TcxGridDBColumn;
    Label2: TLabel;
    cbxcdcondpagto: TcxLookupComboBox;
    Label4: TLabel;
    lbl3: TLabel;
    cbxcdctetptomador: TcxLookupComboBox;
    tbvColumn1: TcxGridDBColumn;
    Label5: TLabel;
    act: TActionList;
    actfiltro: TAction;
    actagrupar: TAction;
    actexcel: TAction;
    actexportarxml: TAction;
    actimprimirdanfe: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    actgerarpdf: TAction;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    actlimparcriterio: TAction;
    tbvQTITEM: TcxGridDBColumn;
    edtnuplaca: TcxButtonEdit;
    lblnuplaca: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    tbvNUPLACA: TcxGridDBColumn;
    tbvNMFINALIDADEEMISSAO: TcxGridDBColumn;
    Label6: TLabel;
    cbxcdctefinalidadeemissao: TcxLookupComboBox;
    actimprimirrpa: TAction;
    actimprimir: TAction;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    actmodograde: TAction;
    dxBarButton7: TdxBarButton;
    edtcdcfop: TcxButtonEdit;
    lblnmcfop: TLabel;
    edtcdremetente: TcxButtonEdit;
    lblnmremetente: TLabel;
    edtcddestinatario: TcxButtonEdit;
    lblnmdestinatario: TLabel;
    edtcdrecebedor: TcxButtonEdit;
    lblnmrecebedor: TLabel;
    edtcdexpedidor: TcxButtonEdit;
    lblnmexpedidor: TLabel;
    edtcdtomador: TcxButtonEdit;
    lblnmtomador: TLabel;
    edtcdtransportadora: TcxButtonEdit;
    lblnmtransportadora: TLabel;
    edtcdproprietario: TcxButtonEdit;
    lblnmproprietario: TLabel;
    actopcoes: TAction;
    dxBarSubItem2: TdxBarSubItem;
    actGerarMDFe: TAction;
    dxBarButton8: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdcondpagtoEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actfiltroExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actexportarxmlExecute(Sender: TObject);
    procedure actimprimirdanfeExecute(Sender: TObject);
    procedure actgerarpdfExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplacaExit(Sender: TObject);
    procedure edtnuplacaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplacaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actimprimirrpaExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdremetenteExit(Sender: TObject);
    procedure edtcdcfopExit(Sender: TObject);
    procedure edtcdcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdcfopPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdremetenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdremetentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcddestinatarioExit(Sender: TObject);
    procedure edtcddestinatarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcddestinatarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdrecebedorExit(Sender: TObject);
    procedure edtcdrecebedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdrecebedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdexpedidorExit(Sender: TObject);
    procedure edtcdexpedidorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdexpedidorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdtomadorExit(Sender: TObject);
    procedure edtcdtomadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtomadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdtransportadoraExit(Sender: TObject);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdproprietarioExit(Sender: TObject);
    procedure edtcdproprietarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdproprietarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actGerarMDFeExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
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

function Localizarcte(cdmotorista:string=''):integer;

var
  frmLocalizarCTE: TfrmLocalizarCTE;

implementation

uses
  uDtmMain,
  ulocalizarTransportadora,
  ulocalizarveiculo,
  uimprimirrelatoriopadrao;

{$R *.DFM}

function Localizarcte(cdmotorista:string=''):integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_cte) then
  begin
    frmlocalizarcte := Tfrmlocalizarcte.Create(application);
  end;
  with frmlocalizarcte do
  begin
    if q.q.Active then
    begin
      btnfindclick(btnfind);
    end;
    if cdmotorista <> '' then
    begin
      edtcdtransportadora.Text := cdmotorista;
    end;
    edtcdtransportadora.enabled   := cdmotorista = '';
    showmodal;
    if ModalResult = mrok then
    begin
      result := codigo;
    end;
  end;
end;

function TfrmLocalizarCTE.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where cte.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  if edtnuplaca.Text <> '' then
  begin
    sqlmontarcodigo(CodigodoCampo(_veiculo, edtnuplaca.Text, _nuplaca), _CTE+_TRANSPORTADORA, _cd+_veiculo, result);
  end;
  sqlmontarcodigo(cbxcdcondpagto.EditValue     , _CTE                , _cdcondpagto     , result);
  sqlmontarcodigo(edtcddestinatario.text  , _cTE                , _cddestinatario  , result);
  sqlmontarcodigo(edtcdexpedidor.text     , _cTE                , _cdexpedidor     , result);
  sqlmontarcodigo(edtcdrecebedor.text     , _cTE                , _cdrecebedor     , result);
  sqlmontarcodigo(edtcdremetente.text     , _cTE                , _cdremetente     , result);
  sqlmontarcodigo(edtcdtomador.text       , _cTE                , _cdtomador       , result);
  sqlmontarcodigo(edtcdtransportadora.text, _CTE+_TRANSPORTADORA, _cdtransportadora, result);
  sqlmontarcodigo(edtcdproprietario.text  , _veiculo            , _cdtransportadora, result);
  sqlmontarcodigo(cbxcdstcte.EditValue         , _cTE                , _cdstcte         , result);
  sqlmontarcodigo(cbxcdctefinalidadeemissao.EditValue, _cTE                , _cd+_cte+_finalidade+_emissao, result);
  sqlmontarcodigo(cbxcdctetptomador.EditValue  , _cTE                , _cdctetptomador  , result);
  sqlmontarcodigo(cbxnusticms.EditValue        , _cTE                , _nusticms        , result, 0, true);
  if edtnunota.Text <> '' then
  begin
    result := result + 'and cte.cdcte in (select n.cdcte from cteremetentenota n where n.cdempresa=cte.cdempresa and n.nunota='+edtnunota.Text+')';
  end;
  sqlmontarcodigo(edtcdcfop.text          , _cTE                , _cdcfop          , result);
  sqlmontardata  (edtdtEmissaoi.text, edtdtEmissaof.text, _cTE, _dtemissao, result);
  sqlmontarvalor (edtvltotali.Value , edtvltotalf.Value , _cTE, _vlservico, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarCTE.Makesql:string;
begin
  result := 'SELECT cTE.cdcte'+
                  ',CTE.DTEMISSAO'+
                  ',CD.NMCLIENTE NMDESTINATARIO'+
                  ',CE.NMCLIENTE NMEXPEDIDOR'+
                  ',CR.NMCLIENTE NMRECEBEDOR'+
                  ',CM.NMCLIENTE NMREMETENTE'+
                  ',CO.NMCLIENTE NMTOMADOR'+
                  ',STCTE.NMSTCTE'+
                  ',NMCTETPTOMADOR'+
                  ',CONDPAGTO.NMCONDPAGTO'+
                  ',CTEFINALIDADEEMISSAO.NMCTEFINALIDADEEMISSAO'+
                  ',cTE.nusticms'+
                  ',CTE.CDCFOP'+
                  ',CTE.VLBASEICMS'+
                  ',CTE.VLICMS'+
                  ',CTE.VLSERVICO'+
                  ',veiculo.nuplaca'+
                  ',(SELECT SUM(CTEQTDCARGA.QTITEM) FROM CTEQTDCARGA WHERE CTEQTDCARGA.CDEMPRESA=CTE.CDEMPRESA AND CTEQTDCARGA.CDCTE=CTE.CDCTE) QTITEM '+
             'FROM CTE '+
             'LEFT JOIN STCTE ON STCTE.CDSTCTE=CTE.CDSTCTE '+
             'LEFT JOIN CTEFINALIDADEEMISSAO ON CTEFINALIDADEEMISSAO.CDCTEFINALIDADEEMISSAO=CTE.CDCTEFINALIDADEEMISSAO '+
             'LEFT JOIN CONDPAGTO ON CONDPAGTO.CDCONDPAGTO=CTE.CDCONDPAGTO AND CONDPAGTO.CDEMPRESA=CTE.CDEMPRESA '+
             'LEFT JOIN CLIENTE CD ON CD.CDCLIENTE=CTE.CDDESTINATARIO AND CD.CDEMPRESA=CTE.CDEMPRESA '+
             'LEFT JOIN CLIENTE CE ON CE.CDCLIENTE=CTE.CDEXPEDIDOR AND CE.CDEMPRESA=CTE.CDEMPRESA '+
             'LEFT JOIN CLIENTE CO ON CO.CDCLIENTE=CTE.CDTOMADOR AND CO.CDEMPRESA=CTE.CDEMPRESA '+
             'LEFT JOIN CTETRANSPORTADORA ON CTETRANSPORTADORA.CDCTE=CTE.CDCTE AND CTETRANSPORTADORA.CDEMPRESA=CTE.CDEMPRESA '+
             'LEFT JOIN VEICULO ON VEICULO.CDVEICULO=CTETRANSPORTADORA.CDVEICULO AND VEICULO.CDEMPRESA=CTE.CDEMPRESA '+
             'LEFT JOIN CTETPTOMADOR ON CTETPTOMADOR.CDCTETPTOMADOR=CTE.CDCTETPTOMADOR '+
             'LEFT JOIN CLIENTE CR ON CR.CDCLIENTE=CTE.CDRECEBEDOR AND CR.CDEMPRESA=CTE.CDEMPRESA '+
             'LEFT JOIN CLIENTE CM ON CM.CDCLIENTE=CTE.CDREMETENTE AND CM.CDEMPRESA=CTE.CDEMPRESA ';
end;

procedure TfrmLocalizarCTE.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.SQL.text := makesql+SQLWHERE+' ORDER BY Cte.CDCTE DESC';
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarCTE.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarCTE.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then btnOkClick(sender);
end;

procedure TfrmLocalizarCTE.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdcte).AsInteger;
end;

procedure TfrmLocalizarCTE.AbrirTabelas;
begin
  cbxcdstcte.Properties.ListSource := abrir_tabela(_stcte);
  cbxcdcondpagto.Properties.ListSource := abrir_tabela(_condpagto + _c);
  cbxnusticms.Properties.ListSource := abrir_tabela(_sticms + _1);
  cbxcdctetptomador.Properties.ListSource := abrir_tabela(_ctetptomador);
  cbxCDCTEFINALIDADEEMISSAO.Properties.ListSource := abrir_tabela(_CTEFINALIDADEEMISSAO);
end;

procedure TfrmLocalizarCTE.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarCTE.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarCTE.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarCTE.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarCTE.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  s : string;
  Column : TcxGridDBColumn;
begin
  Column := tbvNMSTCTE;
  s := upperCase(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if s = 'CANCELADO' then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end;
  if s = UpperCase(_aberto) then
  begin
    ACanvas.Font.Color := clblue;
    ACanvas.Font.Style := [fsBold]
  end;
  if s = 'INUTILIZADO' then
  begin
    ACanvas.Font.Color := clgreen;
    ACanvas.Font.Style := [fsBold]
  end;
end;

procedure TfrmLocalizarCTE.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarCTE.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarCTE.cbxcdcondpagtoEnter(Sender: TObject);
begin
  abrir_tabela(_condpagto+_c);
  colorenter(sender);
end;

procedure TfrmLocalizarCTE.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarCTE.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarCTE.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarCTE.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarCTE.actGerarMDFeExecute(Sender: TObject);
var
  i : integer;
  cte : Tcte;
  cdcte : string;
  cdmdfe : integer;
  boatualizar : boolean;
begin
  boatualizar := false;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then // pegar todos os que estão selecionados
    begin
      cte := tcte.create;
      try
        cdcte := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcte).Index];
        if cte.Select(strtoint(cdcte)) then
        begin
          if cte.cdstcte = 3 then
          begin
            cte.ctetransportadora.Ler(cte.cdcte);
            if cte.ctetransportadora.Count > 0 then
            begin
              cte.cteqtdcarga.ler(cte.cdcte);
              cdmdfe := cte.GerarMDFE;
              if cdmdfe > 0 then
              begin
                boatualizar := true;
              end;
            end;
          end;
        end;
      finally
        freeandnil(cte);
      end;
    end;
  end;
  if boatualizar then
  begin
    showmessage('MDFE gerado.');
  end;
end;

procedure TfrmLocalizarCTE.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarCTE.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarCTE.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarCTE.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarCTE.actopcoesExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarCTE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarCTE.edtcdcfopExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cfop, _cfop);
  colorexit(sender);
end;

procedure TfrmLocalizarCTE.edtcdcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcfopPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCTE.edtcdcfopPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarCTE.edtcddestinatarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _destinatario);
  colorexit(sender);
end;

procedure TfrmLocalizarCTE.edtcddestinatarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcddestinatarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCTE.edtcddestinatarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  cd := Localizarcliente(false);
  if cd = 0 then
  begin
    exit;
  end;
  edtcddestinatario.text    := cd.tostring;
  lblnmdestinatario.caption := qregistro.NomedoCodigo(_cliente, cd);
end;

procedure TfrmLocalizarCTE.edtcdexpedidorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _expedidor);
  colorexit(sender);
end;

procedure TfrmLocalizarCTE.edtcdexpedidorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdexpedidorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCTE.edtcdexpedidorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  cd := Localizarcliente(false);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdexpedidor.text    := cd.tostring;
  lblnmexpedidor.caption := qregistro.NomedoCodigo(_cliente, cd);
end;

procedure TfrmLocalizarCTE.edtcdproprietarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _transportadora, _transportadora, _proprietario);
  colorexit(sender);
end;

procedure TfrmLocalizarCTE.edtcdproprietarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdproprietarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCTE.edtcdproprietarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  cd := Localizartransportadora(false);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproprietario.text    := cd.tostring;
  lblnmproprietario.caption := qregistro.NomedoCodigo(_transportadora, cd);
end;

procedure TfrmLocalizarCTE.edtcdrecebedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _recebedor);
  colorexit(sender);
end;

procedure TfrmLocalizarCTE.edtcdrecebedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdrecebedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCTE.edtcdrecebedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  cd := Localizarcliente(false);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdrecebedor.text    := cd.tostring;
  lblnmrecebedor.caption := qregistro.NomedoCodigo(_cliente, cd);
end;

procedure TfrmLocalizarCTE.edtcdremetenteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _remetente);
  colorexit(sender);
end;

procedure TfrmLocalizarCTE.edtcdremetenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdremetentePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCTE.edtcdremetentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  cd := Localizarcliente(false);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdremetente.text    := cd.tostring;
  lblnmremetente.caption := qregistro.NomedoCodigo(_cliente, cd);
end;

procedure TfrmLocalizarCTE.edtcdtomadorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _tomador);
  colorexit(sender);
end;

procedure TfrmLocalizarCTE.edtcdtomadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtomadorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCTE.edtcdtomadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  cd := Localizarcliente(false);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdtomador.text    := cd.tostring;
  lblnmtomador.caption := qregistro.NomedoCodigo(_cliente, cd);
end;

procedure TfrmLocalizarCTE.edtcdtransportadoraExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _transportadora, _transportadora);
  colorexit(sender);
end;

procedure TfrmLocalizarCTE.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCTE.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora, lblnmtransportadora);
end;

procedure TfrmLocalizarCTE.edtnuplacaExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnuplaca.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if CodigodoCampo(_veiculo, cd, _nuplaca) = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnuplaca.text, maiuscula(__veiculo)]), mterror, [mbok], 0);
    edtnuplaca.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarCTE.edtnuplacaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplacaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCTE.edtnuplacaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarveiculo;
  if cd = 0 then
  begin
    exit;
  end;
  edtnuplaca.Text := qregistro.StringdoCodigo(_veiculo, cd, _nuplaca);
end;

procedure TfrmLocalizarCTE.actimprimirrpaExecute(Sender: TObject);
var
  i : Integer;
  cte : TCte;
begin
  cte := TCte.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        cte.cdcte := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcte).Index];
        cte.numeroINSSpreenchidoProprietarioSeguradora;
        ImpimirRelatorioPadrao1(326, tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcte).Index]);
      end;
    end;
  finally
    cte.Destroy;
  end;
end;

procedure TfrmLocalizarCTE.actimprimirdanfeExecute(Sender: TObject);
var
  i : Integer;
  cte : TCte;
begin
  cte := TCte.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        cte.Select(strtoint(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcte).Index]));
        cte.Imprimir(false);
      end;
    end;
  finally
    freeandnil(cte);
  end;
end;

procedure TfrmLocalizarCTE.actgerarpdfExecute(Sender: TObject);
var
  diretorio : string;
  i : Integer;
  lista : TStrings;
  cte : TCte;
begin
  lista := TStringList.Create;
  cte   := TCte.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        lista.Add(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcte).Index]);
      end;
    end;
    if lista.Count > 0 then
    begin
      diretorio := QRotinas.getdiretorio;
      if diretorio = '' then
      begin
        exit;
      end;
      if cte.GerarPDF(diretorio, lista) then
      begin
        messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
      end;
    end;
  finally
    lista.Free;
    cte.Destroy;
  end;
end;

procedure TfrmLocalizarCTE.actexportarxmlExecute(Sender: TObject);
var
  diretorio : string;
  i : Integer;
  lista : TStrings;
  cte : TCte;
begin
  lista := TStringList.Create;
  cte   := TCte.create;
  try
    for i := 0 to tbv.ViewData.RowCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        lista.Add(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdcte).Index]);
      end;
    end;
    if lista.Count > 0 then
    begin
      diretorio := QRotinas.getdiretorio;
      if diretorio = '' then
      begin
        exit;
      end;
      if cte.Exportarxml(diretorio, lista) then
      begin
        messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
      end;
    end;
  finally
    freeandnil(lista);
    freeandnil(cte);
  end;
end;

procedure TfrmLocalizarCTE.actimprimirExecute(Sender: TObject);
begin
//
end;

end.

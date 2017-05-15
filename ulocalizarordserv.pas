unit ulocalizarordserv;

interface

uses
  System.Actions, System.UITypes,
  forms, sysutils, dialogs, Classes, StdCtrls, ComCtrls, ExtCtrls, Buttons, Mask,
  idglobal, Menus, Controls, graphics,
  Grids, DB,
  uregistro, ulocalizar, udatahora, urotinas, uconstantes,
  ulocalizarcliente, uexportarexcel,
  classeequipamento, ClasseOrdServ, classesqlmontar, classeRetornaSQL, classeform,
  classeempresa, classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxGroupBox, dxStatusBar, cxLookAndFeels, cxPCdxBarPopupMenu,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore, cxDateUtils,
  cxNavigator, dxBarBuiltInMenu, ActnList, cxCurrencyEdit, ClasseLocalizar;

type
  TfrmLocalizarOrdserv = class(TForm)
    bvl: TBevel;
    Bevel1: TBevel;
    lblCliente: TLabel;
    lbltpordserv: TLabel;
    lbletapa: TLabel;
    lbldtentrada: TLabel;
    lbldtentradaate: TLabel;
    lbldtsaida: TLabel;
    Label10: TLabel;
    lblstordserv: TLabel;
    edtdtEntrada: TcxDateEdit;
    edtDtEntradaFinal: TcxDateEdit;
    edtdtSaida: TcxDateEdit;
    edtDtSaidaFinal: TcxDateEdit;
    btnFind: TcxButton;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    pgc: TcxPageControl;
    tbsequipamento: TcxTabSheet;
    lblnuserie: TLabel;
    lbltpequipamento: TLabel;
    lblmodelo: TLabel;
    lblcor: TLabel;
    lblmarca: TLabel;
    lblnupatrimonio: TLabel;
    edtnuserie: TcxTextEdit;
    edtnupatrimonio: TcxTextEdit;
    tbsValores: TcxTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    edtvltotali: TcxCalcEdit;
    edtvldescontoi: TcxCalcEdit;
    edtvlprodutoi: TcxCalcEdit;
    edtvlservicoi: TcxCalcEdit;
    edtvltotalf: TcxCalcEdit;
    edtvldescontof: TcxCalcEdit;
    edtvlprodutof: TcxCalcEdit;
    edtvlservicof: TcxCalcEdit;
    tbsoutros: TcxTabSheet;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDORDSERV: TcxGridDBColumn;
    tbvNUORDSERV: TcxGridDBColumn;
    tbvDTENTRADA: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvNMTPORDSERV: TcxGridDBColumn;
    tbvNMETAPA: TcxGridDBColumn;
    tbvCDEQUIPAMENTO: TcxGridDBColumn;
    tbvNUSERIE: TcxGridDBColumn;
    tbvNUPATRIMONIO: TcxGridDBColumn;
    tbvNMTPEQUIPAMENTO: TcxGridDBColumn;
    tbvNMMARCA: TcxGridDBColumn;
    tbvNMMODELO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdtpordserv: TcxLookupComboBox;
    cbxcdetapa: TcxLookupComboBox;
    cbxcdstordserv: TcxLookupComboBox;
    cbxcdtpequipamento: TcxLookupComboBox;
    cbxcdmodelo: TcxLookupComboBox;
    cbxcdmarca: TcxLookupComboBox;
    cbxcdcor: TcxLookupComboBox;
    edtcdtpequipamento: TcxTextEdit;
    edtcdmodelo: TcxTextEdit;
    edtcdmarca: TcxTextEdit;
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
    lbl1: TLabel;
    edtdtetapai: TcxDateEdit;
    lbl2: TLabel;
    edtdtetapaf: TcxDateEdit;
    tbvVLTOTAL: TcxGridDBColumn;
    actopcoes: TAction;
    actordserventrada: TAction;
    actordservsaida: TAction;
    btnopcoes: TdxBarButton;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    edtcdatendente: TcxButtonEdit;
    lblnmatendente: TLabel;
    edtcdtecnico: TcxButtonEdit;
    lblnmtecnico: TLabel;
    edtcdvendedor: TcxButtonEdit;
    lblnmvendedor: TLabel;
    tbvNMSTORDSERV: TcxGridDBColumn;
    tbvNMPRIORIDADE: TcxGridDBColumn;
    tbvNUCORSTORDSERV: TcxGridDBColumn;
    tbvNUCORPRIORIDADE: TcxGridDBColumn;
    edtdtpreventregaf: TcxDateEdit;
    Label11: TLabel;
    edtdtpreventregai: TcxDateEdit;
    Label13: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdtpordservEnter(Sender: TObject);
    procedure cbxcdetapaEnter(Sender: TObject);
    procedure cbxcdtpequipamentoEnter(Sender: TObject);
    procedure cbxcdmodeloEnter(Sender: TObject);
    procedure cbxcdmarcaEnter(Sender: TObject);
    procedure cbxcdcorEnter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtcdtpequipamentoEnter(Sender: TObject);
    procedure edtcdmodeloEnter(Sender: TObject);
    procedure edtcdmarcaEnter(Sender: TObject);
    procedure edtcdtpequipamentoExit(Sender: TObject);
    procedure edtcdmodeloExit(Sender: TObject);
    procedure edtcdmarcaExit(Sender: TObject);
    procedure cbxcdtpequipamentoExit(Sender: TObject);
    procedure cbxcdmodeloExit(Sender: TObject);
    procedure cbxcdmarcaExit(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actordserventradaExecute(Sender: TObject);
    procedure actordservsaidaExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdatendenteExit(Sender: TObject);
    procedure edtcdatendenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdatendentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdtecnicoExit(Sender: TObject);
    procedure edtcdtecnicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtecnicoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdvendedorExit(Sender: TObject);
    procedure edtcdvendedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdvendedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvNMSTORDSERVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tbvNMPRIORIDADECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private   { Private declarations }
    boequipamentonuserie, boequipamentonupatrimonio : boolean;
    boequipamento, boequipamentocor : boolean;
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure SetEmpresa;
    procedure SetForm;
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarOrdServ:Integer;

var
  frmLocalizarOrdserv: TfrmLocalizarOrdserv;

implementation

uses uDtmMain, ulocalizarFuncionario, udlgtabela;

{$R *.DFM}

function LocalizarOrdServ:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_ordserv) then
  begin
    frmlocalizarordserv := Tfrmlocalizarordserv.Create(application);
    frmlocalizarordserv.setempresa;
    frmlocalizarordserv.setform;
  end;
  if frmlocalizarordserv.q.q.Active then
  begin
    frmlocalizarordserv.btnfindclick(frmlocalizarordserv.btnfind);
  end;
  frmlocalizarordserv.showmodal;
  if frmlocalizarordserv.ModalResult = mrok then
  begin
    result := frmlocalizarordserv.codigo;
  end;
end;

function TfrmLocalizarOrdserv.makesql:string;
begin
  result := 'SELECT ordserv.CDORDSERV'+
                  ',ordserv.NUORDSERV'+
                  ',ordserv.DTENTRADA'+
                  ',cliente.NMCLIENTE'+
                  ',tpordserv.NMTPORDSERV'+
                  ',tpordserv.boentrada'+
                  ',tpordserv.bosaida'+
                  ',etapa.NMETAPA';
  if empresa.ordserv.boequipamento then
  begin
    result := result + ',ordserv.nuserie,ordserv.nupatrimonio';
  end
  else
  begin
    result := result + ',ordserv.CDEQUIPAMENTO,equipamento.NUSERIE,equipamento.NUPATRIMONIO';
  end;
  result := result +
                  ',tpequipamento.NMTPEQUIPAMENTO'+
                  ',marca.NMMARCA'+
                  ',modelo.NMMODELO'+
                  ',stordserv.nmstordserv'+
                  ',stordserv.nucor nucorstordserv'+
                  ',prioridade.nmprioridade'+
                  ',prioridade.nucor nucorprioridade'+
                  ',ordserv.VLTOTAL '+
            'FROM ORDSERV ';
  if edtdtetapai.text <> '' then
  begin
    result := result + 'left join itetapa on itetapa.cdempresa=ordserv.cdempresa and itetapa.cdordserv=ordserv.cdordserv ';
  end;
  result := result +
            'LEFT JOIN CLIENTE ON Cliente.CDCLIENTE=ordserv.CDCLIENTE and ordserv.cdempresa=cliente.cdempresa '+
            'LEFT JOIN TPORDSERV ON TPORDSERV.CDTPORDSERV=ordserv.CDTPORDSERV and ordserv.cdempresa=TPORDSERV.cdempresa '+
            'LEFT JOIN STORDSERV ON STORDSERV.CDSTORDSERV=ordserv.CDSTORDSERV and ordserv.cdempresa=STORDSERV.cdempresa '+
            'left join prioridade on prioridade.cdempresa=ordserv.cdempresa and prioridade.cdprioridade=ordserv.cdprioridade '+
            'left join etapa on etapa.cdetapa=ordserv.cdetapa and etapa.cdempresa=ordserv.cdempresa ';
  if empresa.ordserv.boequipamento then
  begin
    result := result +
            'LEFT JOIN TPEQUIPAMENTO ON TPEQUIPAMENTO.CDTPEQUIPAMENTO=ordserv.CDTPEQUIPAMENTO and TPEQUIPAMENTO.cdempresa=ordserv.cdempresa '+
            'LEFT JOIN MARCA ON MARCA.CDMARCA=ordserv.CDMARCA and MARCA.cdempresa=ordserv.cdempresa '+
            'left join modelo on modelo.cdmodelo=ordserv.cdmodelo and modelo.cdempresa=ordserv.cdempresa ';
  end
  else
  begin
    result := result +
            'LEFT JOIN EQUIPAMENTO ON ordserv.CDEQUIPAMENTO=EQUIPAMENTO.CDEQUIPAMENTO and ordserv.cdempresa=EQUIPAMENTO.cdempresa '+
            'LEFT JOIN TPEQUIPAMENTO ON TPEQUIPAMENTO.CDTPEQUIPAMENTO=EQUIPAMENTO.CDTPEQUIPAMENTO and TPEQUIPAMENTO.cdempresa=EQUIPAMENTO.cdempresa '+
            'LEFT JOIN MARCA ON MARCA.CDMARCA=EQUIPAMENTO.CDMARCA and MARCA.cdempresa=EQUIPAMENTO.cdempresa '+
            'left join modelo on modelo.cdmodelo=EQUIPAMENTO.cdmodelo and modelo.cdempresa=EQUIPAMENTO.cdempresa ';
  end;
  result := result + sqlwhere +
            ' group by ordserv.CDORDSERV'+
                     ',ordserv.NUORDSERV'+
                     ',ordserv.DTENTRADA'+
                     ',cliente.NMCLIENTE'+
                     ',tpordserv.NMTPORDSERV'+
                     ',tpordserv.boentrada'+
                     ',tpordserv.bosaida'+
                     ',etapa.NMETAPA';
  if Empresa.ordserv.boequipamento then
  begin
    result := result + ',ordserv.NUSERIE,ordserv.NUPATRIMONIO';
  end
  else
  begin
    result := result + ',ordserv.CDEQUIPAMENTO,equipamento.NUSERIE,equipamento.NUPATRIMONIO';
  end;
  result := result +
                     ',tpequipamento.NMTPEQUIPAMENTO'+
                     ',marca.NMMARCA'+
                     ',modelo.NMMODELO'+
                     ',stordserv.nmstordserv'+
                     ',stordserv.nucor'+
                     ',prioridade.nmprioridade'+
                     ',prioridade.nucor'+
                     ',OrdserV.VLTOTAL '+
            'order by ordserv.nuordserv desc';
end;

function TfrmLocalizarOrdserv.sqlwhere: string;
var
  criterio : string;
begin
  result := result + 'where ordserv.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  if empresa.ordserv.boequipamento then
  begin
    sqlmontarnomelike(edtnuserie.Text, _ordserv, _nuserie, result);
    sqlmontarnomelike(edtnupatrimonio.Text, _ordserv, _nupatrimonio, result);
    sqlmontarcodigo(cbxcdtpequipamento.EditValue, _ordserv, _cdtpequipamento, result);
    sqlmontarcodigo(cbxcdmarca.EditValue, _ordserv, _cdmarca, result);
    sqlmontarcodigo(cbxcdmodelo.EditValue, _ordserv, _cdmodelo, result);
  end
  else
  begin
    sqlmontarnomelike(edtnuserie.Text, _equipamento, _nuserie, result);
    sqlmontarnomelike(edtnupatrimonio.Text, _equipamento, _nupatrimonio, result);
    sqlmontarcodigo(cbxcdtpequipamento.EditValue, _equipamento, _cdtpequipamento, result);
    sqlmontarcodigo(cbxcdmarca.EditValue, _equipamento, _cdmarca, result);
    sqlmontarcodigo(cbxcdmodelo.EditValue, _equipamento, _cdmodelo, result);
  end;
  sqlmontarcodigo(cbxcdcor.EditValue, _equipamento, _cdcor, result);
  sqlmontarcodigo(edtcdcliente.text, _ordserv, _cdcliente, result);
  sqlmontarcodigo(cbxcdtpordserv.EditValue, _ordserv, _cdtpordserv, result);
  sqlmontarcodigo(cbxcdstordserv.EditValue, _ordserv, _cdstordserv, result);
  sqlmontarcodigo(edtcdatendente.text, _ordserv, _cdfuncionarioatendente, result);
  sqlmontarcodigo(edtcdtecnico.text, _ordserv, _cdfuncionariotecnico, result);
  sqlmontarcodigo(edtcdvendedor.text, _ordserv, _cdfuncionariovendedor, result);
  sqlmontardata(edtdtsaida.text, edtdtsaidafinal.text, _ordserv, _dtsaida, result);
  sqlmontardata(edtdtpreventregai.text, edtdtpreventregaf.text, _ordserv, _dtpreventrega, result);
  sqlmontarvalor(edtvltotali.Value, edtvltotalf.Value, _ordserv, _vltotal, result);
  sqlmontarvalor(edtvldescontoi.Value, edtvldescontof.Value, _ordserv, _vldesconto, result);
  sqlmontarvalor(edtvlprodutoi.Value, edtvlprodutof.Value, _ordserv, _vlproduto, result);
  sqlmontarvalor(edtvlservicoi.Value, edtvlservicof.Value, _ordserv, _vlservico, result);
  sqlmontardata(edtdtEntrada.text, edtdtEntradafinal.text, _ordserv, _dtentrada, result);
  if edtdtetapai.text = '' then
  begin
    sqlmontarcodigo(cbxcdETAPA.EditValue, _ordserv, _cdetapa, result);
  end
  else
  begin
    sqlmontardata(edtdtetapai.text, edtdtetapaf.text, _itetapa, _dtinicio, result);
    sqlmontarcodigo(cbxcdETAPA.EditValue, _itetapa, _cdetapa, result);
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarOrdserv.btnFindClick(Sender: TObject);
begin
  if (edtdtetapai.Text <> '') and (cbxcdetapa.Text = '') then
  begin
    MessageDlg('Para data de início da etapa, o campo Etapa é obrigatório.', mtInformation, [mbOK], 0);
    cbxcdetapa.SetFocus;
    Abort;
  end;
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarOrdserv.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarOrdserv.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdordserv).asinteger;
  actordserventrada.Visible := q.q.FieldByName(_boentrada).AsString = _S;
  actordservsaida.Visible   := q.q.FieldByName(_bosaida).AsString   = _S;
end;

procedure TfrmLocalizarOrdserv.SetEmpresa;
begin
  lblnuserie.Caption                              := empresa.equipamento.dsnuserie;
  lblnupatrimonio.Caption                         := empresa.equipamento.dsnupatrimonio;
  tbvNUSERIE.Caption                              := empresa.equipamento.dsnuserie;
  tbvNUPATRIMONIO.Caption                         := empresa.equipamento.dsnupatrimonio;  boequipamento := empresa.equipamento.Bo;
  if not boequipamento then
  begin
    boequipamentonuserie      := false;
    boequipamentonupatrimonio := false;
    boequipamentocor          := false;
  end
  else
  begin
    boequipamentonuserie      := RetornaSQLInteger('select count(*) from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and bonuserie=''S''')> 0;
    boequipamentonupatrimonio := RetornaSQLInteger('select count(*) from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and bonupatrimonio=''S''')> 0;
    boequipamentocor          := RetornaSQLInteger('select count(*) from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and bocor=''S''')> 0;
  end;
end;

procedure TfrmLocalizarOrdserv.SetForm;
begin
  tbvNMTPEQUIPAMENTO.Visible := boequipamento;
  tbvNMMARCA.Visible         := boequipamento;
  tbvNMMODELO.Visible        := boequipamento;
  tbvCDEQUIPAMENTO.Visible   := boequipamento and (not empresa.ordserv.boequipamento);
  lbltpequipamento.Visible     := boequipamento;
  cbxcdtpequipamento.Visible   := boequipamento;
  lblmodelo.Visible     := boequipamento;
  cbxcdmodelo.visible   := boequipamento;
  lblmarca.Visible     := boequipamento;
  cbxcdmarca.visible   := boequipamento;
  lblcor.Visible     := boequipamentocor;
  cbxcdcor.Visible   := boequipamentocor;
  lblnuserie.Visible := boequipamentonuserie or empresa.ordserv.boequipamento;
  edtnuserie.Visible := boequipamentonuserie or empresa.ordserv.boequipamento;
  lblnupatrimonio.Visible := boequipamentonupatrimonio or empresa.ordserv.boequipamento;
  edtnupatrimonio.Visible := boequipamentonupatrimonio or empresa.ordserv.boequipamento;
  tbvNUSERIE.Visible := boequipamentonuserie or empresa.ordserv.boequipamento;
  tbvNUPATRIMONIO.Visible := boequipamentonuPATRIMONIO or empresa.ordserv.boequipamento;
end;

procedure TfrmLocalizarOrdserv.AbrirTabelas;
begin
  cbxcdtpordserv.Properties.ListSource := abrir_tabela(_tpordserv);
  cbxcdetapa.Properties.ListSource := abrir_tabela(_etapa);
  cbxcdstordserv.Properties.ListSource := abrir_tabela(_stordserv);
  cbxcdtpequipamento.Properties.ListSource := abrir_tabela(_tpequipamento);
  cbxcdmodelo.Properties.ListSource := abrir_tabela(_modelo);
  cbxcdmarca.Properties.ListSource := abrir_tabela(_marca);
  cbxcdcor.Properties.ListSource := abrir_tabela(_cor);
end;

procedure TfrmLocalizarOrdserv.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarOrdserv.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarOrdserv.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarOrdserv.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarOrdserv.tbvNMPRIORIDADECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCORPRIORIDADE;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color = 0 then
  begin
    ACanvas.Font.Style := [];
  end
  else if ACanvas.Font.Color = clred then
  begin
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end
  else
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarOrdserv.tbvNMSTORDSERVCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCORSTORDSERV;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color = 0 then
  begin
    ACanvas.Font.Style := [];
  end
  else if ACanvas.Font.Color = clred then
  begin
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end
  else
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarOrdserv.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarOrdserv.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarOrdserv.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarOrdserv.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarOrdserv.cbxcdtpordservEnter(Sender: TObject);
begin
  abrir_tabela(_tpordserv);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdserv.cbxcdetapaEnter(Sender: TObject);
begin
  abrir_tabela(_etapa);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdserv.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdserv.cbxcdmodeloEnter(Sender: TObject);
begin
  abrir_tabela(_modelo);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdserv.cbxcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdserv.cbxcdcorEnter(Sender: TObject);
begin
  abrir_tabela(_cor);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdserv.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarOrdserv.edtcdtecnicoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario, _tecnico);
  colorexit(sender);
end;

procedure TfrmLocalizarOrdserv.edtcdtecnicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtecnicoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrdserv.edtcdtecnicoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarfuncionario;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdtecnico.text    := cd.ToString;
  lblnmtecnico.caption := qregistro.NomedoCodigo(_funcionario, cd);
end;

procedure TfrmLocalizarOrdserv.edtcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdserv.edtcdmodeloEnter(Sender: TObject);
begin
  abrir_tabela(_modelo);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdserv.edtcdatendenteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario, _atendente);
  colorexit(sender);
end;

procedure TfrmLocalizarOrdserv.edtcdatendenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdatendentePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrdserv.edtcdatendentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarfuncionario;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdatendente.text    := cd.ToString;
  lblnmatendente.caption := qregistro.NomedoCodigo(_funcionario, cd);
end;

procedure TfrmLocalizarOrdserv.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarOrdserv.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrdserv.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarOrdserv.edtcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
  colorenter(sender);
end;

procedure TfrmLocalizarOrdserv.edtcdtpequipamentoExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, _tpequipamento, _tpequipamento) then
  begin
    cbxcdtpequipamento.EditValue := edtcdtpequipamento.Text
  end
  else
  begin
    cbxcdtpequipamento.Clear;
  end;
  colorexit(Sender);
end;

procedure TfrmLocalizarOrdserv.edtcdvendedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario, _vendedor);
  colorexit(sender);
end;

procedure TfrmLocalizarOrdserv.edtcdvendedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdvendedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrdserv.edtcdvendedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarfuncionario;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdvendedor.text    := cd.ToString;
  lblnmvendedor.caption := qregistro.NomedoCodigo(_funcionario, cd);
end;

procedure TfrmLocalizarOrdserv.edtcdmodeloExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, _modelo, _modelo) then
  begin
    cbxcdmodelo.EditValue := edtcdmodelo.Text
  end
  else
  begin
    cbxcdmodelo.Clear;
  end;
  colorexit(Sender);
end;

procedure TfrmLocalizarOrdserv.edtcdmarcaExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, _marca, _marca) then
  begin
    cbxcdmarca.EditValue := edtcdmarca.Text
  end
  else
  begin
    cbxcdmarca.Clear;
  end;
  colorexit(Sender);
end;

procedure TfrmLocalizarOrdserv.cbxcdtpequipamentoExit(Sender: TObject);
begin
  if cbxcdtpequipamento.Text = '' then
  begin
    edtcdtpequipamento.Clear
  end
  else
  begin
    edtcdtpequipamento.Text := cbxcdtpequipamento.EditValue;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarOrdserv.cbxcdmodeloExit(Sender: TObject);
begin
  if cbxcdmodelo.Text = '' then
  begin
    edtcdmodelo.Clear
  end
  else
  begin
    edtcdmodelo.Text := cbxcdmodelo.EditValue;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarOrdserv.cbxcdmarcaExit(Sender: TObject);
begin
  if cbxcdmarca.Text = '' then
  begin
    edtcdmarca.Clear
  end
  else
  begin
    edtcdmarca.Text := cbxcdmarca.EditValue;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarOrdserv.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarOrdserv.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarOrdserv.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarOrdserv.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarOrdserv.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarOrdserv.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarOrdserv.actordserventradaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_ordserventrada))), q.q.FieldByName(_cdordserv).AsInteger, _cdordserv, false, false, false, false);
end;

procedure TfrmLocalizarOrdserv.actordservsaidaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_ordservsaida))), q.q.FieldByName(_cdordserv).AsInteger, _cdordserv, false, false, false, false);
end;

procedure TfrmLocalizarOrdserv.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

end.

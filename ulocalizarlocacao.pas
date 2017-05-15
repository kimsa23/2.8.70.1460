unit ulocalizarlocacao;

interface

uses
  forms, Graphics, sysutils, dialogs, Classes, Menus, StdCtrls, ComCtrls, ExtCtrls,
  Buttons, ActnList, Controls,
  DB,
  uregistro, ulocalizar, urotinas, uconstantes, ulocalizarcliente,
  udatahora, uexportarexcel,
  classeequipamento, ClasseOrdServ, classesqlmontar, classeRetornaSQL, classeform,
  classeempresa, classeaplicacao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLookAndFeelPainters, cxButtons, cxGroupBox, cxButtonEdit,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxStatusBar, cxLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar, cxBlobEdit, dxCore, cxDateUtils,
  cxNavigator, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarLocacao = class(TForm)
    bvl: TBevel;
    lblCliente: TLabel;
    lbltplocacao: TLabel;
    lbldtentrada: TLabel;
    lbldtentradaate: TLabel;
    lblnuserie: TLabel;
    lbltpequipamento: TLabel;
    lblmarca: TLabel;
    lblmodelo: TLabel;
    Bevel1: TBevel;
    lbldtsaida: TLabel;
    Label10: TLabel;
    lblnupatrimonio: TLabel;
    lblstlocacao: TLabel;
    lblcor: TLabel;
    edtnupatrimonio: TcxTextEdit;
    edtnuserie: TcxTextEdit;
    edtDtfinalf: TcxDateEdit;
    edtdtfinali: TcxDateEdit;
    edtDtiniciof: TcxDateEdit;
    edtdtinicioi: TcxDateEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDLOCACAO: TcxGridDBColumn;
    tbvDTINICIO: TcxGridDBColumn;
    tbvDTFINAL: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvCDEQUIPAMENTO: TcxGridDBColumn;
    tbvNUSERIE: TcxGridDBColumn;
    tbvNUPATRIMONIO: TcxGridDBColumn;
    tbvNMTPEQUIPAMENTO: TcxGridDBColumn;
    tbvNMMARCA: TcxGridDBColumn;
    tbvNMMODELO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdtplocacao: TcxLookupComboBox;
    cbxcdstlocacao: TcxLookupComboBox;
    cbxcdtpequipamento: TcxLookupComboBox;
    cbxcdmarca: TcxLookupComboBox;
    cbxcdcor: TcxLookupComboBox;
    cbxcdmodelo: TcxLookupComboBox;
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
    lbldtemissao: TLabel;
    edtdtemissaoi: TcxDateEdit;
    lbldtemissaoate: TLabel;
    edtdtemissaof: TcxDateEdit;
    lbldtprevista: TLabel;
    edtdtprevistai: TcxDateEdit;
    lbldtprevistaate: TLabel;
    edtdtprevistaf: TcxDateEdit;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTPREVISTA: TcxGridDBColumn;
    tbvVLLOCACAO: TcxGridDBColumn;
    tbvNMSTLOCACAO: TcxGridDBColumn;
    tbvVLRECEBIDO: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    tbvQTSALDO: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdtpequipamentoEnter(Sender: TObject);
    procedure cbxcdmodeloEnter(Sender: TObject);
    procedure cbxcdmarcaEnter(Sender: TObject);
    procedure cbxcdcorEnter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarLocacao(cdcliente:string=''):integer;

var
  frmLocalizarLocacao: TfrmLocalizarLocacao;

implementation

uses uDtmMain, classeregistro;

{$R *.DFM}

const
  exibe = 'Locação';

function LocalizarLocacao(cdcliente:string=''):integer;
var
  recno : integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_locacao) then
  begin
    frmlocalizarlocacao := Tfrmlocalizarlocacao.Create(application);
  end;
  frmLocalizarLocacao.edtcdcliente.Enabled := cdcliente = '';
  if cdcliente <> '' then
  begin
    frmLocalizarLocacao.edtcdcliente.Text := cdcliente;
    frmLocalizarLocacao.edtcdclienteExit(frmLocalizarLocacao.edtcdcliente);
  end;
  if frmlocalizarlocacao.q.q.Active then
  begin
    recno := frmlocalizarlocacao.q.q.recno;
    frmlocalizarlocacao.btnfindclick(frmlocalizarlocacao.btnfind);
    frmlocalizarlocacao.q.q.recno := recno;
  end;
  frmlocalizarlocacao.showmodal;
  if frmlocalizarlocacao.ModalResult = mrok then
  begin
    result := frmlocalizarlocacao.codigo;
  end;
end;

function TfrmLocalizarLocacao.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where l.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarnomelike(edtnuserie.Text        , _e, _nuserie        , result);
  sqlmontarnomelike(edtnupatrimonio.Text   , _e, _nu+_patrimonio   , result);

  sqlmontarcodigo  (cbxcdtpequipamento.EditValue, _e, _cdtpequipamento, result);
  sqlmontarcodigo  (cbxcdmarca.EditValue        , _e, _cdmarca        , result);
  sqlmontarcodigo  (cbxcdmodelo.EditValue       , _e, _cdmodelo       , result);
  sqlmontarcodigo  (cbxcdcor.EditValue          , _e, _cdcor          , result);

  sqlmontarcodigo  (edtcdcliente.text      , _L, _cdcliente      , result);

  sqlmontarcodigo  (cbxcdtplocacao.EditValue    , _L, _cdtplocacao    , result);
  sqlmontarcodigo  (cbxcdstlocacao.EditValue    , _L, _cdstlocacao    , result);

  sqlmontardata    (edtdtinicioi.text  , edtdtiniciof.text  , _L, _dtinicio  , result);
  sqlmontardata    (edtdtfinali.text   , edtdtfinalf.text   , _L, _dtfinal   , result);
  sqlmontardata    (edtdtemissaoi.text , edtdtemissaof.text , _L, _dtemissao , result);
  sqlmontardata    (edtdtprevistai.text, edtdtprevistaf.text, _L, _dtprevista, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarLocacao.makesql:string;
begin
  result := 'SELECT L.CDLOCACAO'+
                  ',L.DTINICIO'+
                  ',L.DTEMISSAO'+
                  ',L.DTPREVISTA'+
                  ',L.DTFINAL'+
                  ',L.CDCLIENTE'+
                  ',C.NMCLIENTE'+
                  ',l.CDEQUIPAMENTO'+
                  ',l.vllocacao'+
                  ',L.QTITEM'+
                  ',L.QTSALDO'+
                  ',E.NUSERIE'+
                  ',E.NUPATRIMONIO'+
                  ',t.NMTPEQUIPAMENTO'+
                  ',S.NMSTLOCACAO'+
                  ',L.vlrecebido'+
                  ',m.NMMARCA'+
                  ',s.nucor'+
                  ',mo.NMMODELO '+
            'FROM LOCACAO L '+
            'LEFT JOIN EQUIPAMENTO E ON L.CDEQUIPAMENTO=E.CDEQUIPAMENTO and l.cdempresa=e.cdempresa '+
            'LEFT JOIN CLIENTE C ON C.CDCLIENTE=L.CDCLIENTE and l.cdempresa=c.cdempresa '+
            'LEFT JOIN STLOCACAO S ON S.CDSTLOCACAO=L.CDSTLOCACAO '+
            'LEFT JOIN TPEQUIPAMENTO T ON T.CDTPEQUIPAMENTO=E.CDTPEQUIPAMENTO and l.cdempresa=t.cdempresa '+
            'LEFT JOIN MARCA M ON M.CDMARCA=E.CDMARCA and l.cdempresa=m.cdempresa '+
            'LEFT JOIN MODELO MO ON MO.CDMODELO=E.CDMODELO and l.cdempresa=mo.cdempresa '+
            sqlwhere+' '+
            'order by L.cdlocacao desc'
end;

procedure TfrmLocalizarLocacao.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarLocacao.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarLocacao.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarLocacao.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdlocacao).AsInteger;
end;

procedure TfrmLocalizarLocacao.AbrirTabelas;
begin
  cbxcdtplocacao.Properties.ListSource := abrir_tabela(_tplocacao);
  cbxcdstlocacao.Properties.ListSource := abrir_tabela(_stlocacao);
  cbxcdtpequipamento.Properties.ListSource := abrir_tabela(_tpequipamento);
  cbxcdmarca.Properties.ListSource := abrir_tabela(_marca);
  cbxcdmodelo.Properties.ListSource := abrir_tabela(_modelo);
  cbxcdcor.Properties.ListSource := abrir_tabela(_cor);
end;

procedure TfrmLocalizarLocacao.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarLocacao.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarLocacao.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarLocacao.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarLocacao.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarLocacao.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarLocacao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarLocacao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarLocacao.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
  colorenter(sender);
end;

procedure TfrmLocalizarLocacao.cbxcdmodeloEnter(Sender: TObject);
begin
  abrir_tabela(_modelo);
  colorenter(sender);
end;

procedure TfrmLocalizarLocacao.cbxcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
  colorenter(sender);
end;

procedure TfrmLocalizarLocacao.cbxcdcorEnter(Sender: TObject);
begin
  abrir_tabela(_cor);
  colorenter(sender);
end;

procedure TfrmLocalizarLocacao.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarLocacao.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarLocacao.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarLocacao.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarLocacao.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarLocacao.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarLocacao.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarLocacao.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarLocacao.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarLocacao.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfrmLocalizarLocacao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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


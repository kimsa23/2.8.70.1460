unit uLocalizarEquipamento;

interface

uses
  forms, Graphics, dialogs, sysutils, StdCtrls, ComCtrls, Buttons, Controls, ExtCtrls,
  idglobal, ActnList, Menus, Classes, system.UITypes,
  Grids, DB,
  ustrings, uexportarexcel, uregistro, urotinas, uconstantes,
  classeequipamento, classesqlmontar, classeRetornaSQL, classeform, classeempresa,
  classeAplicacao, classequery, classeregistro,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxMaskEdit, cxButtonEdit, cxTextEdit, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxStatusBar,
  cxCurrencyEdit, cxLookAndFeels, cxCheckBox, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar, cxNavigator, System.Actions,
  FireDAC.Stan.Option, cxSpinEdit, ClasseLocalizar;

type
  TfrmLocalizarEquipamento = class(TForm)
    bvl: TBevel;
    lblnupatrimonio: TLabel;
    lblnuserie: TLabel;
    lbltpequipamento: TLabel;
    lblmarca: TLabel;
    lblmodelo: TLabel;
    lblstequipamento: TLabel;
    lblcor: TLabel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    btnnovo: TcxButton;
    edtnupatrimonio: TcxTextEdit;
    edtnuserie: TcxTextEdit;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDEQUIPAMENTO: TcxGridDBColumn;
    tbvNUSERIE: TcxGridDBColumn;
    tbvNUPATRIMONIO: TcxGridDBColumn;
    tbvNMTPEQUIPAMENTO: TcxGridDBColumn;
    tbvNMMARCA: TcxGridDBColumn;
    tbvNMMODELO: TcxGridDBColumn;
    tbvNMSTEQUIPAMENTO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    Label1: TLabel;
    edtnmequipamento: TcxTextEdit;
    tbvNMEQUIPAMENTO: TcxGridDBColumn;
    tbvbopertenceempresa: TcxGridDBColumn;
    ckbbopertenceempresa: TcxCheckBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdtpequipamento: TcxLookupComboBox;
    cbxcdmodelo: TcxLookupComboBox;
    cbxcdmarca: TcxLookupComboBox;
    cbxcdcor: TcxLookupComboBox;
    cbxcdstequipamento: TcxLookupComboBox;
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
    tbvqtsaldo: TcxGridDBColumn;
    tbvNUCOR: TcxGridDBColumn;
    lblCliente: TLabel;
    tbvQTITEM: TcxGridDBColumn;
    Label2: TLabel;
    Label3: TLabel;
    edtqtitemi: TcxSpinEdit;
    edtqtitemf: TcxSpinEdit;
    edtqtsaldof: TcxSpinEdit;
    Label4: TLabel;
    edtqtsaldoi: TcxSpinEdit;
    Label5: TLabel;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdmodeloEnter(Sender: TObject);
    procedure cbxcdtpequipamentoEnter(Sender: TObject);
    procedure cbxcdcorEnter(Sender: TObject);
    procedure cbxcdmarcaEnter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    equipamento : TEquipamento;
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure Inicializar;
    procedure set_visible_pertence_empresa;
    procedure set_visible_marca;
    procedure set_visible_modelo;
    procedure set_visible_cliente;
    procedure AbrirTabelas;
    procedure SetEmpresa;
    function sqlwhere: string;
    function makesql:string;
  public    { Public declarations }
  end;

function LocalizarEquipamento(cdcliente:string = '';novo:boolean = false; bopertenceempresa:Boolean=false):integer;

var
  frmLocalizarEquipamento: TfrmLocalizarEquipamento;

implementation

uses uNovoEquipamento, uDtmMain, Variants, ulocalizarCliente;

{$R *.DFM}

function LocalizarEquipamento(cdcliente:string = '';novo:boolean = false; bopertenceempresa:Boolean=false):integer;
var
  bonovo : boolean;
begin
  result := 0;
  bonovo := false;
  if not TQForm.ExisteFormulario(_frm+_localizar+_equipamento) then
  begin
    frmlocalizarequipamento := tfrmlocalizarequipamento.Create(application);
    bonovo := true;
  end;
  if bonovo then
  begin
    frmlocalizarequipamento.Inicializar;
  end;
  if cdcliente <> '' then
  begin
    frmlocalizarequipamento.edtcdcliente.Text := cdcliente;
    frmlocalizarequipamento.edtcdcliente.OnExit(frmlocalizarequipamento.edtcdcliente);
  end;
  frmlocalizarequipamento.btnnovo.Visible := novo;
  if frmlocalizarequipamento.q.q.Active then
  begin
    frmlocalizarequipamento.btnfindclick(frmlocalizarequipamento.btnfind);
  end;
  frmLocalizarEquipamento.ckbbopertenceempresa.Checked := bopertenceempresa;
  frmlocalizarequipamento.showmodal;
  if frmlocalizarequipamento.ModalResult = mrok then
  begin
    result := frmlocalizarequipamento.codigo;
  end;
end;

function TfrmLocalizarEquipamento.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where e.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarcodigo  (edtcdcliente.text      , _e, _cdcliente      , result);
  sqlmontarnomelike(edtnuserie.Text             , _e, _nuserie        , result);
  sqlmontarnomelike(edtnmequipamento.Text       , _e, _nmequipamento  , result);
  sqlmontarnomelike(edtnupatrimonio.Text        , _e, _nupatrimonio   , result);
  sqlmontarcodigo  (cbxcdtpequipamento.EditValue, _e, _cdtpequipamento, result);
  sqlmontarcodigo  (cbxcdmarca.EditValue        , _e, _cdmarca        , result);
  sqlmontarcodigo  (cbxcdmodelo.EditValue       , _e, _cdmodelo       , result);
  sqlmontarcodigo  (cbxcdcor.EditValue          , _e, _cdcor          , result);
  sqlmontarcodigo  (cbxcdstequipamento.EditValue, _e, _cdstequipamento, result);
  sqlmontarvalor   (edtqtitemi.Value      , edtqtitemf.Value , _e, _qtitem   , result);
  sqlmontarvalor   (edtqtsaldoi.Value      , edtqtsaldof.Value , _e, _qtsaldo   , result);
  if ckbbopertenceempresa.Checked then
  begin
    result := result + 'and e.bopertenceempresa=''S'' ';
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarEquipamento.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.FetchOptions.Mode := fmOnDemand;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarEquipamento.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarEquipamento.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarEquipamento.btnnovoClick(Sender: TObject);
var
  cdcliente, cdtpequipamento, cdmarca, cdmodelo, cdcor : string;
begin
  cdcliente       := '';
  cdtpequipamento := '';
  cdmarca         := '';
  cdmodelo        := '';
  cdcor           := '';
  cdcliente       := edtcdcliente.text;
  if not VarIsNull(cbxcdtpequipamento.EditValue) then
  begin
    cdtpequipamento := cbxcdtpequipamento.EditValue;
  end;
  if not VarIsNull(cbxcdmarca.EditValue) then
  begin
    cdmarca := cbxcdmarca.EditValue;
  end;
  if not VarIsNull(cbxcdmodelo.EditValue) then
  begin
    cdmodelo := cbxcdmodelo.EditValue;
  end;
  if not VarIsNull(cbxcdcor.EditValue) then
  begin
    cdcor := cbxcdcor.EditValue;
  end;
  codigo := equipamento.novo(cdcliente, edtnuserie.text, edtnupatrimonio.text, cdtpequipamento, cdmarca, cdmodelo, cdcor);
  if codigo <> 0 then
  begin
    modalresult := mrok;
  end;
end;

procedure TfrmLocalizarEquipamento.Inicializar;
var
  dif1, dif2, dif3 : integer;
begin
  equipamento             := tequipamento.create;
  lblnuserie.visible      := RegistroExiste(_tpequipamento, 'cdempresa='+empresa.cdempresa.tostring+' and bonuserie=''S''');
  edtnuserie.Visible      := lblnuserie.Visible;
  tbvNUSERIE.Visible      := lblnuserie.Visible;
  lblnupatrimonio.visible := RetornaSQLInteger('select count(*) from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and bonupatrimonio=''S''')>0;
  edtnupatrimonio.Visible := lblnupatrimonio.Visible;
  tbvNUPATRIMONIO.Visible := lblnupatrimonio.Visible;
  lblcor.visible          := RetornaSQLInteger('select count(*) from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and bocor=''S''')>0;
  edtnuserie.visible      := lblnuserie.visible;
  edtnupatrimonio.visible := lblnupatrimonio.visible;
  cbxcdcor.visible        := lblcor.visible;

  dif1 := 0;
  dif2 := 0;
  dif3 := 0;

  if not lblnuserie.Visible then
  begin
    lblnupatrimonio.Left := lblnuserie.Left;
    edtnupatrimonio.Left := edtnuserie.Left;
  end;

  dif2 := dif1 + dif2;

  lbltpequipamento.Top   := lbltpequipamento.Top   - dif2;
  cbxcdtpequipamento.Top := cbxcdtpequipamento.Top - dif2;
  lblmarca.Top           := lblmarca.Top           - dif2;
  cbxcdmarca.Top         := cbxcdmarca.Top         - dif2;
  lblmodelo.Top          := lblmodelo.Top          - dif2;
  cbxcdmodelo.Top        := cbxcdmodelo.Top        - dif2;
  lblcor.Top             := lblcor.Top             - dif2;
  cbxcdcor.Top           := cbxcdcor.Top          - dif2;

  dif3 := dif2 + dif3;
  lblstequipamento.Top     := lblstequipamento.Top     - dif3;
  cbxcdstequipamento.Top   := cbxcdstequipamento.Top   - dif3;
end;

function TfrmLocalizarEquipamento.makesql: string;
begin
  result := 'SELECT E.CDEQUIPAMENTO'+
               ',E.NUSERIE'+
               ',E.NUPATRIMONIO'+
               ',T.NMTPEQUIPAMENTO'+
               ',MC.NMMARCA'+
               ',M.NMMODELO'+
               ',e.nmequipamento'+
               ',E.QTSALDO'+
               ',E.QTITEM'+
               ',e.bopertenceempresa'+
               ',S.NUCOR'+
               ',C.NMCLIENTE'+
               ',S.NMSTEQUIPAMENTO '+
          'FROM EQUIPAMENTO e '+
          'LEFT JOIN TPEQUIPAMENTO t ON T.CDTPEQUIPAMENTO=E.CDTPEQUIPAMENTO and e.cdempresa=t.cdempresa '+
          'LEFT JOIN MARCA mc ON Mc.CDMARCA=E.CDMARCA and e.cdempresa=mc.cdempresa '+
          'LEFT JOIN MODELO m ON M.CDMODELO=E.CDMODELO and e.cdempresa=m.cdempresa '+
          'LEFT JOIN CLIENTE c ON C.CDCLIENTE=E.CDCLIENTE and e.cdempresa=c.cdempresa '+
          'LEFT JOIN STEQUIPAMENTO s ON S.CDSTEQUIPAMENTO=E.CDSTEQUIPAMENTO and e.cdempresa=s.cdempresa '+
          sqlwhere+
          ' order by e.nuserie';
end;

procedure TfrmLocalizarEquipamento.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdequipamento).AsInteger;
end;

procedure TfrmLocalizarEquipamento.set_visible_cliente;
begin
  edtcdcliente.Visible := retornasqlinteger('select count(*) from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and bocliente=''S''') > 0;
  lblcliente.Visible := edtcdcliente.Visible;
end;

procedure TfrmLocalizarEquipamento.AbrirTabelas;
begin
  cbxcdtpequipamento.Properties.ListSource := abrir_tabela(_tpequipamento);
  cbxcdcor.Properties.ListSource := abrir_tabela(_cor);
  cbxcdmodelo.Properties.ListSource := abrir_tabela(_modelo);
  cbxcdmarca.Properties.ListSource := abrir_tabela(_marca);
  cbxcdstequipamento.Properties.ListSource := abrir_tabela(_st + _equipamento);
end;

procedure TfrmLocalizarEquipamento.SetEmpresa;
begin
  lblnupatrimonio.Caption := empresa.equipamento.dsnupatrimonio;
  tbvNUPATRIMONIO.Caption := empresa.equipamento.dsnupatrimonio;
  lblnuserie.Caption := empresa.equipamento.dsnuserie;
  tbvNUSERIE.Caption := empresa.equipamento.dsnuserie;
  tbvqtsaldo.Visible := Empresa.bolocacao;
end;

procedure TfrmLocalizarEquipamento.set_visible_marca;
begin
  cbxcdmarca.Visible := retornasqlinteger('select count(*) from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and bomarca=''S''') > 0;
  tbvNMmarca.visible := cbxcdmarca.Visible;
  lblmarca.Visible := cbxcdmarca.Visible;
end;

procedure TfrmLocalizarEquipamento.set_visible_modelo;
begin
  cbxcdmodelo.Visible := retornasqlinteger('select count(*) from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and bomodelo=''S''') > 0;
  tbvNMMODELO.visible := cbxcdmodelo.Visible;
  lblmodelo.Visible := cbxcdmodelo.Visible;
end;

procedure TfrmLocalizarEquipamento.set_visible_pertence_empresa;
begin
  ckbbopertenceempresa.visible := retornasqlinteger('select count(*) from tpequipamento where cdempresa='+empresa.cdempresa.tostring+' and bopertenceempresa=''S''') > 0;
  tbvbopertenceempresa.Visible := ckbbopertenceempresa.visible;
end;

procedure TfrmLocalizarEquipamento.FormShow(Sender: TObject);
begin
  if edtnuserie.Visible then
  begin
    edtnuserie.SetFocus
  end
  else if edtnupatrimonio.Visible then
  begin
    edtnupatrimonio.SetFocus
  end;
end;

procedure TfrmLocalizarEquipamento.FormDestroy(Sender: TObject);
begin
  freeandnil(equipamento);
  freeandnil(q);
end;

procedure TfrmLocalizarEquipamento.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarEquipamento.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarEquipamento.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarEquipamento.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  set_visible_pertence_empresa;
  set_visible_marca;
  set_visible_modelo;
  set_visible_cliente;
  AbrirTabelas;
  SetEmpresa;
end;

procedure TfrmLocalizarEquipamento.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarEquipamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarEquipamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarEquipamento.cbxcdmodeloEnter(Sender: TObject);
begin
  abrir_tabela(_modelo);
  colorenter(sender);
end;

procedure TfrmLocalizarEquipamento.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
  colorenter(sender);
end;

procedure TfrmLocalizarEquipamento.cbxcdcorEnter(Sender: TObject);
begin
  abrir_tabela(_cor);
  colorenter(sender);
end;

procedure TfrmLocalizarEquipamento.cbxcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
  colorenter(sender);
end;

procedure TfrmLocalizarEquipamento.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarEquipamento.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEquipamento.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarEquipamento.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarEquipamento.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarEquipamento.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarEquipamento.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarEquipamento.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarEquipamento.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarEquipamento.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfrmLocalizarEquipamento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

unit ulocalizarmetrologia;

interface

uses
  forms, sysutils, dialogs, Classes, StdCtrls, ComCtrls, ExtCtrls, Buttons, Mask,
  idglobal, Menus, ActnList, Controls, system.UITypes,
  DB,
  uregistro, ulocalizar, udatahora, urotinas, uconstantes, ulocalizarfornecedor,
  uexportarexcel,
  classeequipamento, ClasseOrdServ, classesqlmontar, classeRetornaSQL, classeform,
  classeempresa, classeaplicacao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxGroupBox,
  dxStatusBar, cxLookAndFeels, cxPCdxBarPopupMenu, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxBar, dxCore, cxDateUtils, cxNavigator, dxBarBuiltInMenu,
  System.Actions, ClasseLocalizar;

type
  TfrmLocalizarMetrologia = class(TForm)
    bvl: TBevel;
    Bevel1: TBevel;
    lblcdfornecedor: TLabel;
    lbldtentrada: TLabel;
    lbldtentradaate: TLabel;
    lbldtsaida: TLabel;
    Label10: TLabel;
    lblstordserv: TLabel;
    edtdtprevisaoi: TcxDateEdit;
    edtDtprevisaof: TcxDateEdit;
    edtdtcalibracaoi: TcxDateEdit;
    edtDtcalibracaof: TcxDateEdit;
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
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDMETROLOGIA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMFORNECEDOR: TcxGridDBColumn;
    tbvCDEQUIPAMENTO: TcxGridDBColumn;
    tbvNUSERIE: TcxGridDBColumn;
    tbvNUPATRIMONIO: TcxGridDBColumn;
    tbvNMTPEQUIPAMENTO: TcxGridDBColumn;
    tbvNMMARCA: TcxGridDBColumn;
    tbvNMMODELO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdstmetrologia: TcxLookupComboBox;
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
    edtdtemissaoi: TcxDateEdit;
    lbl2: TLabel;
    edtdtemissaof: TcxDateEdit;
    lblcdfuncionario: TLabel;
    tbvDTPREVISAO: TcxGridDBColumn;
    tbvDTCALIBRACAO: TcxGridDBColumn;
    tbvNMFUNCIONARIO: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdfornecedor: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    edtcdfuncionario: TcxButtonEdit;
    lblnmfuncionario: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
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
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

function LocalizarMetrologia:integer;

var
  frmLocalizarMetrologia: TfrmLocalizarMetrologia;

implementation

uses uDtmMain, ulocalizarFuncionario, classeregistro;

{$R *.DFM}

function LocalizarMetrologia:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_metrologia) then
  begin
    frmLocalizarMetrologia := tfrmLocalizarMetrologia.Create(application);
    frmLocalizarMetrologia.setempresa;
    frmLocalizarMetrologia.setform;
  end;
  if frmLocalizarMetrologia.q.q.Active then
  begin
    frmLocalizarMetrologia.btnfindclick(frmLocalizarMetrologia.btnfind);
  end;
  frmLocalizarMetrologia.showmodal;
  if frmLocalizarMetrologia.ModalResult = mrok then
  begin
    result := frmLocalizarMetrologia.codigo;
  end;
end;

function TfrmLocalizarMetrologia.makesql:string;
begin
  result := 'SELECT M.CDMETROLOGIA'+
                  ',M.DTEMISSAO'+
                  ',M.DTCALIBRACAO'+
                  ',M.DTPREVISAO'+
                  ',S.NMSTMETROLOGIA'+
                  ',F.NMFORNECEDOR'+
                  ',FU.NMFUNCIONARIO'+
                  ',M.CDEQUIPAMENTO'+
                  ',e.NUSERIE'+
                  ',e.NUPATRIMONIO'+
                  ',NMTPEQUIPAMENTO'+
                  ',NMMARCA'+
                  ',NMMODELO '+
            'FROM METROLOGIA M '+
            'LEFT JOIN EQUIPAMENTO E ON M.CDEQUIPAMENTO=E.CDEQUIPAMENTO and M.cdempresa=e.cdempresa '+
            'LEFT JOIN FORNECEDOR F ON F.CDFORNECEDOR=M.CDFORNECEDOR and M.cdempresa=F.cdempresa '+
            'LEFT JOIN FUNCIONARIO FU ON FU.CDFUNCIONARIO=M.CDFUNCIONARIO and M.cdempresa=FU.cdempresa '+
            'LEFT JOIN STMETROLOGIA S ON S.CDSTMETROLOGIA=M.CDSTMETROLOGIA and M.cdempresa=s.cdempresa '+
            'LEFT JOIN TPEQUIPAMENTO TP ON TP.CDTPEQUIPAMENTO=E.CDTPEQUIPAMENTO and tp.cdempresa=e.cdempresa '+
            'LEFT JOIN MARCA mA ON MA.CDMARCA=E.CDMARCA and mA.cdempresa=e.cdempresa '+
            'left join modelo mo on mo.cdmodelo=e.cdmodelo and mo.cdempresa=e.cdempresa '+
            sqlwhere+
            ' group by M.CDMETROLOGIA'+
                  ',M.DTEMISSAO'+
                  ',M.DTCALIBRACAO'+
                  ',M.DTPREVISAO'+
                  ',S.NMSTMETROLOGIA'+
                  ',F.NMFORNECEDOR'+
                  ',FU.NMFUNCIONARIO'+
                  ',M.CDEQUIPAMENTO'+
                  ',e.NUSERIE'+
                  ',e.NUPATRIMONIO'+
                  ',NMTPEQUIPAMENTO'+
                  ',NMMARCA'+
                  ',NMMODELO '+
            'order by M.CDMETROLOGIA desc';
end;

function TfrmLocalizarMetrologia.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where M.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarnomelike(edtnuserie.Text, _e, _nuserie, result);
  sqlmontarnomelike(edtnupatrimonio.Text, _e, _nu + _patrimonio, result);
  sqlmontarcodigo(cbxcdtpequipamento.EditValue, _e, _cdtpequipamento, result);
  sqlmontarcodigo(cbxcdmarca.EditValue, _e, _cdmarca, result);
  sqlmontarcodigo(cbxcdmodelo.EditValue, _e, _cd + _modelo, result);
  sqlmontarcodigo(cbxcdcor.EditValue, _e, _cdcor, result);
  sqlmontarcodigo(edtcdfornecedor.text, _m, _cdfornecedor, result);
  sqlmontarcodigo(cbxcdstmetrologia.EditValue, _o, _cdstmetrologia, result);
  sqlmontarcodigo(edtcdfuncionario.text, _o, _cdfuncionario, result);
  sqlmontardata(edtdtEmissaoi.text, edtdtemissaof.text, _o, _dtemissao, result);
  sqlmontardata(edtdtprevisaoi.text, edtdtprevisaof.text, _o, _dtprevisao, result);
  sqlmontardata(edtdtcalibracaoi.text, edtdtcalibracaof.text, _o, _dt + _calibracao, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarMetrologia.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarMetrologia.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarMetrologia.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdmetrologia).AsInteger;
end;

procedure TfrmLocalizarMetrologia.SetEmpresa;
begin
  lblnuserie.Caption := empresa.equipamento.dsnuserie;
  lblnupatrimonio.Caption := empresa.equipamento.dsnupatrimonio;
  tbvNUSERIE.Caption := empresa.equipamento.dsnuserie;
  tbvNUPATRIMONIO.Caption := empresa.equipamento.dsnupatrimonio;
  boequipamento := empresa.equipamento.Bo;
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

procedure TfrmLocalizarMetrologia.SetForm;
var
  dif1, dif : integer;
begin
  // configurar equipamento
  if not boequipamento then
  begin
    bvl.Height := 100;
  end;
  tbvNMTPEQUIPAMENTO.Visible := boequipamento;
  tbvNMMARCA.Visible         := boequipamento;
  tbvNMMODELO.Visible        := boequipamento;
  tbvCDEQUIPAMENTO.Visible   := boequipamento;


  lbltpequipamento.Visible     := boequipamento;
  cbxcdtpequipamento.Visible   := boequipamento;

  lblmodelo.Visible     := boequipamento;
  cbxcdmodelo.visible   := boequipamento;

  lblmarca.Visible     := boequipamento;
  cbxcdmarca.visible   := boequipamento;

  lblcor.Visible     := boequipamentocor;
  cbxcdcor.Visible   := boequipamentocor;

  lblnuserie.Visible := boequipamentonuserie;
  edtnuserie.Visible := boequipamentonuserie;

  lblnupatrimonio.Visible := boequipamentonupatrimonio;
  edtnupatrimonio.Visible := boequipamentonupatrimonio;

  dif  := 0;
  dif1 := 0;

  if not boequipamentonuserie then
  begin
    lblnupatrimonio.Left := lblnuserie.Left;
    edtnupatrimonio.Left := edtnuserie.Left;
  end;
  tbvNUSERIE.Visible := boequipamentonuserie;

  tbvNUPATRIMONIO.Visible := boequipamentonuPATRIMONIO;
  dif1 := dif1 + dif;
  lbltpequipamento.Top     := lbltpequipamento.top     - dif1;
  cbxcdtpequipamento.top   := cbxcdtpequipamento.top   - dif1;

  lblMARCA.Top     := lblMARCA.top     - dif1;
  cbxcdMARCA.top   := cbxcdMARCA.top   - dif1;

  lblmodelo.Top     := lblmodelo.top     - dif1;
  cbxcdmodelo.top   := cbxcdmodelo.top   - dif1;

  lblcor.Top     := lblcor.top     - dif1;
  cbxcdcor.top   := cbxcdcor.top   - dif1;
end;

procedure TfrmLocalizarMetrologia.AbrirTabelas;
begin
  cbxcdstmetrologia.Properties.ListSource := abrir_tabela(_stmetrologia);
  cbxcdtpequipamento.Properties.ListSource := abrir_tabela(_tpequipamento);
  cbxcdmodelo.Properties.ListSource := abrir_tabela(_modelo);
  cbxcdmarca.Properties.ListSource := abrir_tabela(_marca);
  cbxcdcor.Properties.ListSource := abrir_tabela(_cor);
end;

procedure TfrmLocalizarMetrologia.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarMetrologia.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarMetrologia.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarMetrologia.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarMetrologia.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarMetrologia.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarMetrologia.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarMetrologia.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
  colorenter(sender);
end;

procedure TfrmLocalizarMetrologia.cbxcdmodeloEnter(Sender: TObject);
begin
  abrir_tabela(_modelo);
  colorenter(sender);
end;

procedure TfrmLocalizarMetrologia.cbxcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
  colorenter(sender);
end;

procedure TfrmLocalizarMetrologia.cbxcdcorEnter(Sender: TObject);
begin
  abrir_tabela(_cor);
  colorenter(sender);
end;

procedure TfrmLocalizarMetrologia.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarMetrologia.edtcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento);
  colorenter(sender);
end;

procedure TfrmLocalizarMetrologia.edtcdmodeloEnter(Sender: TObject);
begin
  abrir_tabela(_modelo);
  colorenter(sender);
end;

procedure TfrmLocalizarMetrologia.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarMetrologia.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMetrologia.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarMetrologia.edtcdfuncionarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario);
  colorexit(sender);
end;

procedure TfrmLocalizarMetrologia.edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarMetrologia.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfuncionarioPropertiesButtonClick(edtcdfuncionario, lblnmfuncionario);
end;

procedure TfrmLocalizarMetrologia.edtcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
  colorenter(sender);
end;

procedure TfrmLocalizarMetrologia.edtcdtpequipamentoExit(Sender: TObject);
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

procedure TfrmLocalizarMetrologia.edtcdmodeloExit(Sender: TObject);
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

procedure TfrmLocalizarMetrologia.edtcdmarcaExit(Sender: TObject);
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

procedure TfrmLocalizarMetrologia.cbxcdtpequipamentoExit(Sender: TObject);
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

procedure TfrmLocalizarMetrologia.cbxcdmodeloExit(Sender: TObject);
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

procedure TfrmLocalizarMetrologia.cbxcdmarcaExit(Sender: TObject);
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

procedure TfrmLocalizarMetrologia.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarMetrologia.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarMetrologia.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarMetrologia.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarMetrologia.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarMetrologia.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarMetrologia.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

end.


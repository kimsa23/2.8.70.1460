unit ulocalizarveiculo;

interface

uses
  forms, Buttons, StdCtrls, ComCtrls, Controls, Mask, Classes, ExtCtrls, dialogs,
  Menus, ActnList, sysutils, system.UITypes,
  DB, DBClient,
  udatahora, uconstantes, uregistro, ustrings, urotinas, uexportarexcel,
  classeaplicacao, classesqlmontar, classeempresa, classeretornasql, classeform,
  classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxGroupBox,
  cxRadioGroup, cxPC, cxGraphics, dxStatusBar, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLookAndFeels,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar, cxNavigator,
  System.Actions, ClasseLocalizar;

type
  TfrmLocalizarVeiculo = class(TForm)
    Bevel1: TBevel;
    lbldocumento: TLabel;
    lblcliente: TLabel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDVEICULO: TcxGridDBColumn;
    tbvNUPLACA: TcxGridDBColumn;
    tbvNUCHASSI: TcxGridDBColumn;
    tbvNMTPVEICULO: TcxGridDBColumn;
    tbvNMMARCA: TcxGridDBColumn;
    tbvNMCOR: TcxGridDBColumn;
    tbvNMTRANSPORTADORA: TcxGridDBColumn;
    tbvSGUF: TcxGridDBColumn;
    tbvNMSTVEICULO: TcxGridDBColumn;
    tbvNMMUNICIPIO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cbxcdtpveiculo: TcxLookupComboBox;
    lblstveiculo: TLabel;
    cbxcdstveiculo: TcxLookupComboBox;
    lblmarca: TLabel;
    cbxcdmarca: TcxLookupComboBox;
    lblcor: TLabel;
    cbxcdcor: TcxLookupComboBox;
    edtnuplaca: TcxTextEdit;
    Label1: TLabel;
    lblchassi: TLabel;
    edtnuchassi: TcxTextEdit;
    lbluf: TLabel;
    cbxcduf: TcxLookupComboBox;
    lblmunicipio: TLabel;
    cbxcdmunicipio: TcxLookupComboBox;
    lbl1: TLabel;
    edtnurenavam: TcxTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
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
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdtransportadora: TcxButtonEdit;
    lblnmtransportadora: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdufExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpveiculoEnter(Sender: TObject);
    procedure cbxcdstveiculoEnter(Sender: TObject);
    procedure cbxcdmarcaEnter(Sender: TObject);
    procedure cbxcdcorEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdtransportadoraExit(Sender: TObject);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

function Localizarveiculo:integer;

var
  frmLocalizarVeiculo: TfrmLocalizarVeiculo;

implementation

uses
  uDtmMain, ulocalizarTransportadora, classeregistro;

{$R *.DFM}

function Localizarveiculo:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_veiculo) then
  begin
    frmlocalizarveiculo := Tfrmlocalizarveiculo.Create(application);
  end;
  with frmlocalizarveiculo do
  begin
    if q.q.Active then
    begin
      btnfindclick(btnfind);
    end;
    showmodal;
    TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
    if ModalResult = mrok then
    begin
      result := codigo;
    end;
  end;
end;

function TfrmLocalizarVeiculo.Makesql:string;
begin
  result := 'SELECT V.cdveiculo'+
                  ',t.nmtransportadora'+
                  ',nmstveiculo'+
                  ',nmtpveiculo'+
                  ',t.rzsocial'+
                  ',v.nuplaca'+
                  ',nmmarca'+
                  ',nmcor'+
                  ',v.nuchassi'+
                  ',sguf'+
                  ',nmmunicipio '+
            'from veiculo v '+
            'left join stveiculo s on s.cdstveiculo=v.cdstveiculo and s.cdempresa=v.cdempresa '+
            'left join tpveiculo p on p.cdtpveiculo=v.cdtpveiculo and p.cdempresa=v.cdempresa '+
            'LEFT JOIN COR C ON C.CDCOR=v.cdcor and c.cdempresa=v.cdempresa '+
            'left join marca ma on ma.cdmarca=v.cdmarca and ma.cdempresa=v.cdempresa '+
            'left join transportadora t on t.cdtransportadora=v.cdtransportadora and t.cdempresa=v.cdempresa '+
            'left join uf u on u.cduf=v.cduf '+
            'left join municipio m on m.cdmunicipio=v.cdmunicipio '+
            sqlwhere;
end;

function TfrmLocalizarVeiculo.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where v.cdempresa=' + empresa.cdempresa.tostring+ ' ';
  criterio := result;
  sqlmontarcodigo(edtcdtransportadora.text, _v, _cdtransportadora, result);
  if cbxcdtpveiculo.Text <> '' then
  begin
    sqlmontarcodigo(qregistro.codigodonome(_tpveiculo, cbxcdtpveiculo.Text), _v, _cdtpveiculo, result);
  end;
  if cbxcdstveiculo.Text <> '' then
  begin
    sqlmontarcodigo(qregistro.codigodonome(_stveiculo, cbxcdstveiculo.Text), _v, _cdstveiculo, result);
  end;
  if cbxcdcor.Text <> '' then
  begin
    sqlmontarcodigo(qregistro.codigodonome(_cor, cbxcdcor.Text), _v, _cdcor, result);
  end;
  if cbxcdmarca.Text <> '' then
  begin
    sqlmontarcodigo(qregistro.codigodonome(_marca, cbxcdmarca.Text), _v, _cdmarca, result);
  end;
  if cbxcduf.Text <> '' then
  begin
    sqlmontarcodigo(CodigodoCampo(_uf, cbxcduf.Text, _sguf), _v, _cduf, result);
  end;
  sqlmontarcodigo(cbxcdmunicipio.EditValue, _v, _cdmunicipio, result);
  sqlmontarnomelike(edtnuplaca.Text, _v, _nuplaca, result);
  sqlmontarnomelike(edtnuchassi.Text, _v, _nuchassi, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarVeiculo.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarVeiculo.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarVeiculo.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarVeiculo.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdveiculo).AsInteger;
end;

procedure TfrmLocalizarVeiculo.AbrirTabelas;
begin
  cbxcdtpveiculo.Properties.ListSource := abrir_tabela(_tpveiculo);
  cbxcdstveiculo.Properties.ListSource := abrir_tabela(_stveiculo);
  cbxcdmarca.Properties.ListSource := abrir_tabela(_marca);
  cbxcdtpveiculo.Properties.ListSource := abrir_tabela(_tpveiculo);
  cbxcduf.Properties.ListSource := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource := abrir_tabela(_municipio);
  cbxcdcor.Properties.ListSource := abrir_tabela(_cor);
end;

procedure TfrmLocalizarVeiculo.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarVeiculo.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarVeiculo.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarVeiculo.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarVeiculo.cbxcdufExit(Sender: TObject);
begin
  dtmMain.Municipio_Filtro_(CodigodoCampo(_uf, cbxcduf.Text, _sguf), TClientDataSet(cbxcduf.Properties.ListSource.DataSet));
  colorexit(sender);
end;

procedure TfrmLocalizarVeiculo.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarVeiculo.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarVeiculo.cbxcdtpveiculoEnter(Sender: TObject);
begin
  abrir_tabela(_tpveiculo);
  colorenter(sender);
end;

procedure TfrmLocalizarVeiculo.cbxcdstveiculoEnter(Sender: TObject);
begin
  abrir_tabela(_stveiculo);
  colorenter(sender);
end;

procedure TfrmLocalizarVeiculo.cbxcdmarcaEnter(Sender: TObject);
begin
  abrir_tabela(_marca);
  colorenter(sender);
end;

procedure TfrmLocalizarVeiculo.cbxcdcorEnter(Sender: TObject);
begin
  abrir_tabela(_cor);
  colorenter(sender);
end;

procedure TfrmLocalizarVeiculo.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarVeiculo.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarVeiculo.edtcdtransportadoraExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _transportadora, _transportadora);
  colorexit(sender);
end;

procedure TfrmLocalizarVeiculo.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarVeiculo.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora, lblnmtransportadora);
end;

procedure TfrmLocalizarVeiculo.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarVeiculo.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarVeiculo.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarVeiculo.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarVeiculo.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarVeiculo.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarVeiculo.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

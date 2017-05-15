unit ULocalizarEmbarque;

interface

uses
  forms, StdCtrls, sysutils, dialogs, ComCtrls, ExtCtrls, Buttons, Classes,
  ActnList, Menus, Controls, system.UITypes,
  DB,
  idglobal,
  uregistro, udatahora, ulocalizar, urotinas, uconstantes,
  ulocalizartransportadora, uexportarexcel,
  classeempresa, classesqlmontar, classeRetornaSQL, classeform, classeAplicacao, classequery,
  classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, dxStatusBar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, cxLookAndFeels, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxBar, dxCore, cxDateUtils, cxNavigator, cxCalc, System.Actions,
  ClasseLocalizar;

type
  TfrmLocalizarEmbarque = class(TForm)
    Bevel2: TBevel;
    lblcdtransportadora: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtdtfinalf: TcxDateEdit;
    edtdtfinali: TcxDateEdit;
    edtdtemissaof: TcxDateEdit;
    edtdtemissaoi: TcxDateEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDEMBARQUE: TcxGridDBColumn;
    tbvNMTPEMBARQUE: TcxGridDBColumn;
    tbvNMTRANSPORTADORA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMROTA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdstembarque: TcxLookupComboBox;
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
    dxBarSubItem1: TdxBarSubItem;
    actopcoes: TAction;
    lblcdtpembarque: TLabel;
    cbxcdtpembarque: TcxLookupComboBox;
    Label1: TLabel;
    edtvlautpagtoi: TcxCalcEdit;
    Label5: TLabel;
    edtvlautpagtof: TcxCalcEdit;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdtransportadora: TcxButtonEdit;
    lblnmtransportadora: TLabel;
    edtcddestinatario: TcxButtonEdit;
    lblnmdestinatario: TLabel;
    lblcliente: TLabel;
    lblnmremetente: TLabel;
    edtcdremetente: TcxButtonEdit;
    lbldocumento: TLabel;
    edtcdtomador: TcxButtonEdit;
    lblnmtomador: TLabel;
    Label6: TLabel;
    lblnmexpedidor: TLabel;
    edtcdexpedidor: TcxButtonEdit;
    lblcondpagto: TLabel;
    lblnmrecebedor: TLabel;
    edtcdrecebedor: TcxButtonEdit;
    lblfornecedor: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure actopcoesExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdtransportadoraExit(Sender: TObject);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdremetenteExit(Sender: TObject);
    procedure edtcdremetenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcdremetentePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtcddestinatarioExit(Sender: TObject);
    procedure edtcddestinatarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcddestinatarioPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtcdrecebedorExit(Sender: TObject);
    procedure edtcdrecebedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcdrecebedorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtcdexpedidorExit(Sender: TObject);
    procedure edtcdexpedidorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcdexpedidorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtcdtomadorExit(Sender: TObject);
    procedure edtcdtomadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcdtomadorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
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

function LocalizarEmbarque:integer;

var
  frmLocalizarEmbarque: TfrmLocalizarEmbarque;

implementation

uses uDtmMain, udlgtabela, ulocalizarCliente;

{$R *.DFM}

function LocalizarEmbarque:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_embarque) then
  begin
    frmLocalizarEmbarque := TfrmLocalizarEmbarque.Create(application);
  end;
  if frmLocalizarEmbarque.q.q.Active then
  begin
    frmLocalizarEmbarque.btnfindclick(frmLocalizarEmbarque.btnfind);
  end;
  frmLocalizarEmbarque.showmodal;
  if frmLocalizarEmbarque.ModalResult = mrok then
  begin
    result := frmLocalizarEmbarque.codigo;
  end;
end;

function TfrmLocalizarEmbarque.makesql:string;
begin
  result := 'select embarque.cdembarque'+
                  ',transportadora.nmtransportadora'+
                  ',embarque.dtemissao'+
                  ',embarque.vlfretepeso'+
                  ',embarque.vlfrete'+
                  ',embarque.qtpeso'+
                  ',embarque.vlpeso'+
                  ',rota.nmrota'+
                  ',stembarque.nmstembarque'+
                  ',tpembarque.nmtpembarque '+
            'FROM embarque '+
            'left join transportadora ON transportadora.cdtransportadora=embarque.cdtransportadora and transportadora.cdempresa=embarque.cdempresa '+
            'left join rota on rota.cdempresa=embarque.cdempresa and rota.cdrota=embarque.cdrota '+
            'left join stembarque on stembarque.cdstembarque=embarque.cdstembarque and stembarque.cdempresa=embarque.cdempresa '+
            'left join tpembarque on tpembarque.cdtpembarque=embarque.cdtpembarque and tpembarque.cdempresa=embarque.cdempresa '+
            'left join itembarque on itembarque.cdempresa=embarque.cdempresa and itembarque.cdembarque=embarque.cdembarque '+
            'left join cte on cte.cdempresa=itembarque.cdempresa and cte.cdcte=itembarque.cdcte '+
            sqlwhere +
            ' group by embarque.cdembarque'+
                  ',transportadora.nmtransportadora'+
                  ',embarque.dtemissao'+
                  ',embarque.vlfretepeso'+
                  ',embarque.vlfrete'+
                  ',embarque.qtpeso'+
                  ',embarque.vlpeso'+
                  ',rota.nmrota'+
                  ',stembarque.nmstembarque'+
                  ',tpembarque.nmtpembarque '+
            'order by embarque.cdembarque desc';
end;

function TfrmLocalizarEmbarque.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where embarque.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(edtcdtransportadora.text, _embarque, _cdtransportadora, result);
  sqlmontarcodigo(cbxcdstembarque.EditValue, _embarque, _cdstembarque, result);
  sqlmontarcodigo(cbxcdtpembarque.EditValue, _embarque, _cdtpembarque, result);
  sqlmontardata(edtdtemissaoi.text, edtdtemissaof.text, _embarque, _dtemissao, result);
  sqlmontarcodigo(edtcddestinatario.text  , _itembarque, _cddestinatario, result);
  sqlmontarcodigo(edtcdremetente.text     , _itembarque, _cdremetente   , result);
  sqlmontarcodigo(edtcdexpedidor.text     , _cTE       , _cdexpedidor   , result);
  sqlmontarcodigo(edtcdrecebedor.text     , _cTE       , _cdrecebedor   , result);
  sqlmontarcodigo(edtcdtomador.text       , _cTE       , _cdtomador     , result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarEmbarque.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarEmbarque.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarEmbarque.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarEmbarque.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarEmbarque.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarEmbarque.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarEmbarque.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarEmbarque.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarEmbarque.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarEmbarque.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarEmbarque.edtcddestinatarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _destinatario);
  colorexit(sender);
end;

procedure TfrmLocalizarEmbarque.edtcddestinatarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcddestinatarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEmbarque.edtcddestinatarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarEmbarque.edtcdexpedidorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _expedidor);
  colorexit(sender);
end;

procedure TfrmLocalizarEmbarque.edtcdexpedidorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdexpedidorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEmbarque.edtcdexpedidorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarEmbarque.edtcdrecebedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _recebedor);
  colorexit(sender);
end;

procedure TfrmLocalizarEmbarque.edtcdrecebedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdrecebedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEmbarque.edtcdrecebedorPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarEmbarque.edtcdremetenteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _remetente);
  colorexit(sender);
end;

procedure TfrmLocalizarEmbarque.edtcdremetenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdremetentePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEmbarque.edtcdremetentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarEmbarque.edtcdtomadorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente, _tomador);
  colorexit(sender);
end;

procedure TfrmLocalizarEmbarque.edtcdtomadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtomadorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEmbarque.edtcdtomadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarEmbarque.edtcdtransportadoraExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _transportadora, _transportadora);
  colorexit(sender);
end;

procedure TfrmLocalizarEmbarque.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarEmbarque.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora, lblnmtransportadora);
end;

procedure TfrmLocalizarEmbarque.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarEmbarque.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarEmbarque.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarEmbarque.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarEmbarque.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarEmbarque.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarEmbarque.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarEmbarque.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdembarque).AsInteger;
end;

procedure TfrmLocalizarEmbarque.AbrirTabelas;
begin
  cbxcdstembarque.Properties.ListSource := abrir_tabela(_stembarque);
end;

procedure TfrmLocalizarEmbarque.actopcoesExecute(Sender: TObject);
begin
//
end;

end.

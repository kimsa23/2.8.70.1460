unit ulocalizarcobranca;

interface

uses
  forms, Buttons, StdCtrls, Mask, Classes, ExtCtrls, sysutils, dialogs, ComCtrls,
  Menus, ActnList, Controls, system.UITypes,
  DB,
  uconstantes, ulocalizar, uregistro, uexportarexcel, udatahora,
  classeempresa, classeform, classesqlmontar, classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtonEdit, cxButtons,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxBar, dxCore, cxDateUtils, cxNavigator, System.Actions,
  ClasseLocalizar;

type
  Tfrmlocalizarcobranca = class(TForm)
    lblsetboleto: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    edtdtEi: TcxDateEdit;
    edtdtef: TcxDateEdit;
    edtnuremessa: TcxTextEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    dts: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdsetboleto: TcxLookupComboBox;
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
    lblduplicata: TLabel;
    edtnuduplicata: TcxButtonEdit;
    tbv: TcxGridDBTableView;
    tbvcdcobranca: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNUREMESSA: TcxGridDBColumn;
    tbvNMSETBOLETO: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdsetboletoEnter(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdDBtvwDblClick(Sender: TObject);
    procedure edtnuduplicataPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grdDBtvwKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
  private   { Private declarations }
    q : tclassequery;
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarCobranca:integer;

var
  frmlocalizarcobranca: Tfrmlocalizarcobranca;

implementation

uses uDtmMain, uLocalizarDuplicata;

{$R *.DFM}

function LocalizarCobranca:integer;
begin
  result := 0;
  if frmlocalizarcobranca = nil then
  begin
    frmlocalizarcobranca := Tfrmlocalizarcobranca.Create(application);
  end;
  if frmlocalizarcobranca.q.q.Active then
  begin
    frmlocalizarcobranca.btnfindclick(frmlocalizarcobranca.btnfind);
  end;
  frmlocalizarcobranca.showmodal;
  if frmlocalizarcobranca.ModalResult = mrok then
  begin
    result := frmlocalizarcobranca.q.q.fieldbyname(_cd+_cobranca).AsInteger;
  end;
end;

function Tfrmlocalizarcobranca.makesql:string;
begin
  result := 'SELECT COBRANCA.CDCOBRANCA'+
                  ',COBRANCA.DTEMISSAO'+
                  ',setboleto.nmsetboleto'+
                  ',COBRANCA.NUREMESSA '+
             'FROM COBRANCA '+
             'LEFT JOIN setboleto ON setboleto.cdsetboleto=COBRANCA.CDsetboleto and setboleto.cdempresa=COBRANCA.cdempresa '+
             'left join itcobranca on itcobranca.cdempresa=cobranca.cdempresa and itcobranca.cdcobranca=cobranca.cdcobranca '+
             sqlwhere+
            ' group by COBRANCA.CDCOBRANCA'+
                    ',COBRANCA.DTEMISSAO'+
                    ',setboleto.nmsetboleto'+
                    ',COBRANCA.NUREMESSA '+
            'order by COBRANCA.dtemissao desc';
end;

function Tfrmlocalizarcobranca.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where COBRANCA.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(cbxcdsetboleto.EditValue, _setboleto, _cdconta, result);
  sqlmontarnomelike(edtnuduplicata.Text, _it + _cobranca, _nuduplicata, result);
  sqlmontardata(edtdtei.text, edtdtef.text, _COBRANCA, _dtemissao, result);
  if edtnuremessa.text <> '' then
  begin
    result := result + ' and COBRANCA.nuremessa=' + edtnuremessa.text;
  end;
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure Tfrmlocalizarcobranca.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure Tfrmlocalizarcobranca.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0
end;

procedure Tfrmlocalizarcobranca.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmlocalizarcobranca.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlocalizarcobranca.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  TRegistro.SetQueryLocalizar(q, dts, tbv);
  AbrirTabelas;
end;

procedure Tfrmlocalizarcobranca.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure Tfrmlocalizarcobranca.AbrirTabelas;
begin
  cbxcdsetboleto.Properties.ListSource := abrir_tabela(_setboleto);
end;

procedure Tfrmlocalizarcobranca.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmlocalizarcobranca.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmlocalizarcobranca.cbxcdsetboletoEnter(Sender: TObject);
begin
  abrir_tabela(_conta);
  colorenter(sender);
end;

procedure Tfrmlocalizarcobranca.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure Tfrmlocalizarcobranca.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure Tfrmlocalizarcobranca.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure Tfrmlocalizarcobranca.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure Tfrmlocalizarcobranca.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure Tfrmlocalizarcobranca.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrmlocalizarcobranca.grdDBtvwDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure Tfrmlocalizarcobranca.edtnuduplicataPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtnuduplicataPropertiesButtonClick(edtnuduplicata);
end;

procedure Tfrmlocalizarcobranca.grdDBtvwKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

end.


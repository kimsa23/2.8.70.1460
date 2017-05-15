unit uapontamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, ExtCtrls, StdCtrls,
  DB,
  uconstantes, uregistro, uDtmMain,
  classeempresa, classeaplicacao, classeusuario, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxClasses, dxBar, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, System.Actions;

type
  Tfrmapontamento = class(TForm)
    pnl1: TPanel;
    pnl: TcxLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    cbxcdtpequipamento: TcxLookupComboBox;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    dts: TDataSource;
    bmg: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    act: TActionList;
    actfechar: TAction;
    actsetfocusrecurso: TAction;
    tbv: TcxGridDBBandedTableView;
    tbvCDORDPRODUCAO: TcxGridDBBandedColumn;
    tbvCDPRODUTO: TcxGridDBBandedColumn;
    tbvCDALTERNATIVO: TcxGridDBBandedColumn;
    tbvNMPRODUTO: TcxGridDBBandedColumn;
    tbvQTITEM: TcxGridDBBandedColumn;
    tbvDTEMISSAO: TcxGridDBBandedColumn;
    tbvDTPRVENTREGA: TcxGridDBBandedColumn;
    tbvDTINICIO: TcxGridDBBandedColumn;
    tbvHRINICIO: TcxGridDBBandedColumn;
    tbvDTINICIOPREVISTA: TcxGridDBBandedColumn;
    tbvHRINICIOPREVISTA: TcxGridDBBandedColumn;
    tbvDTTERMINOPREVISTA: TcxGridDBBandedColumn;
    tbvHRTERMINOPREVISTA: TcxGridDBBandedColumn;
    tbvCDITORDPRODUCAORECURSO: TcxGridDBBandedColumn;
    tbvNUCOR: TcxGridDBBandedColumn;
    actatualizarquery: TAction;
    actabrirordproducao: TAction;
    tbvNMFORMULACAO: TcxGridDBBandedColumn;
    actabrirtpequipamento: TAction;
    tbvdsdesenho: TcxGridDBBandedColumn;
    tbvNUESTRUTURAL: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actsetfocusrecursoExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdtpequipamentoPropertiesEditValueChanged(Sender: TObject);
    procedure actatualizarqueryExecute(Sender: TObject);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure actabrirtpequipamentoExecute(Sender: TObject);
    procedure DLG(Sender: TObject);
    procedure cbxcdtpequipamentoEnter(Sender: TObject);
    procedure tbvKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private { Private declarations }
    q : TClasseQuery;
    procedure ConfigurarRecursoComputador;
    procedure AbrirApontamento;
    function PodeVisualizarEtapa:Boolean;
    function makesql:string;
  public { Public declarations }
  end;

var
  frmapontamento: Tfrmapontamento;

implementation

{$R *.dfm}

uses udlgapontamento, uMain;

procedure Tfrmapontamento.AbrirApontamento;
begin
  if q.q.recordcount > 0 then
  begin
    dlgApontamento(q.q.fieldbyname(_cditordproducaorecurso).AsInteger);
    q.q.Refresh;
  end;
end;

procedure Tfrmapontamento.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), q.q, q.q);
end;

procedure Tfrmapontamento.actabrirtpequipamentoExecute(Sender: TObject);
begin
  if not varisnull(cbxcdtpequipamento.editvalue) then
  begin
    frmMain.Abrirformulario(_tpequipamento, cbxcdtpequipamento.editvalue);
  end;
end;

procedure Tfrmapontamento.actatualizarqueryExecute(Sender: TObject);
begin
  q.q.close;
  if PodeVisualizarEtapa then
  begin
    q.q.open(makesql);
  end;
end;

procedure Tfrmapontamento.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmapontamento.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(_apontamento, frmmain.tlbnew);
end;

procedure Tfrmapontamento.actsetfocusrecursoExecute(Sender: TObject);
begin
  cbxcdtpequipamento.setfocus;
end;

procedure Tfrmapontamento.cbxcdtpequipamentoPropertiesEditValueChanged(Sender: TObject);
begin
  actatualizarqueryExecute(actatualizarquery);
end;

procedure Tfrmapontamento.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  dts.dataset := q.q;
  cbxcdtpequipamento.Properties.ListSource := abrir_tabela(_tpequipamento+_apontamento);
  tbvNMFORMULACAO.Visible                  := empresa.producao.ordproducao.boformulacao;
  tbvnuestrutural.visible                  := registroexiste(_tpordproducao, _bonuestrutural+'=''S''');
  tbvdsdesenho.visible                     := registroexiste(_tpordproducao, _bodsdesenho+'=''S''');
  ConfigurarRecursoComputador
end;

procedure Tfrmapontamento.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure Tfrmapontamento.FormShow(Sender: TObject);
begin
  if q.q.recordcount > 0 then
  begin
    grd.SetFocus;
    exit;
  end;
  cbxcdtpequipamento.setfocus;
end;

procedure Tfrmapontamento.DLG(Sender: TObject);
begin
  actabrirtpequipamentoexecute(actabrirtpequipamento);
end;

function Tfrmapontamento.makesql: string;
begin
  result := 'SELECT O.CDORDPRODUCAO'+
                  ',P.CDPRODUTO'+
                  ',P.CDALTERNATIVO'+
                  ',P.NMPRODUTO'+
                  ',F.NMFORMULACAO'+
                  ',F.CDFORMULACAO'+
                  ',O.QTITEM'+
                  ',O.DTEMISSAO'+
                  ',O.DTPRVENTREGA'+
                  ',O.DSDESENHO'+
                  ',O.NUESTRUTURAL'+
                  ',I.DTINICIO'+
                  ',I.HRINICIO'+
                  ',I.DTINICIOPREVISTA'+
                  ',I.HRINICIOPREVISTA'+
                  ',I.DTTERMINOPREVISTA'+
                  ',I.HRTERMINOPREVISTA'+
                  ',I.CDITORDPRODUCAORECURSO'+
                  ',S.NUCOR '+
            'FROM ORDPRODUCAO O '+
            'INNER JOIN ITORDPRODUCAORECURSO I ON I.CDEMPRESA=O.CDEMPRESA AND I.CDORDPRODUCAO=O.CDORDPRODUCAO '+
            'LEFT JOIN FORMULACAO F ON F.CDEMPRESA=I.CDEMPRESA AND F.CDFORMULACAO=I.CDFORMULACAO '+
            'INNER JOIN STORDPRODUCAO SO ON SO.CDEMPRESA=O.CDEMPRESA AND SO.CDSTORDPRODUCAO=O.CDSTORDPRODUCAO '+
            'INNER JOIN STITORDPRODUCAORECURSO S ON S.CDSTITORDPRODUCAORECURSO=I.CDSTITORDPRODUCAORECURSO '+
            'LEFT JOIN PRODUTO P ON P.CDEMPRESA=O.CDEMPRESA AND P.CDPRODUTO=O.CDPRODUTO '+
            'WHERE SO.BOAPONTAMENTO=''S'' AND I.CDSTITORDPRODUCAORECURSO IN (2,3) AND O.CDEMPRESA='+empresa.cdempresa.tostring+' AND I.CDTPEQUIPAMENTO='+string(cbxcdtpequipamento.editvalue)+' '+
            'ORDER BY O.CDORDPRODUCAO';
end;

function Tfrmapontamento.PodeVisualizarEtapa: Boolean;
var
  cdequipamento : string;
begin
  result :=false;
  cdequipamento := string(cbxcdtpequipamento.editvalue);
  if cdequipamento = '' then
  begin
    Exit;
  end;
  if not RegistroExiste(_tpequipamento+_usuario, _cdtpequipamento+'='+cdequipamento) then
  begin
    result := True;
    Exit;
  end;
  result := RegistroExiste(_tpequipamento+_usuario, _cdtpequipamento+'='+cdequipamento+' and '+_cdusuario+'='+inttostr(usuario.cdusuario));
end;

procedure Tfrmapontamento.ConfigurarRecursoComputador;
var
  cdtpequipamento : string;
begin
  cdtpequipamento := CodigodoCampo(_tpequipamento, vgcdcomputador, _cdcomputador);
  if cdtpequipamento <> '' then
  begin
    cbxcdtpequipamento.EditValue := cdtpequipamento;
  end;
end;

procedure Tfrmapontamento.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _CDordproducao then
  begin
    actabrirordproducao.onExecute(actabrirordproducao);
  end
  else
  begin
    AbrirApontamento;
  end;
end;

procedure Tfrmapontamento.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBandedColumn;
begin
  Column := tbvNUCOR;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color <> 0 then
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure Tfrmapontamento.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  begin
    AbrirApontamento
  end;
end;

procedure Tfrmapontamento.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpequipamento+_apontamento);
end;

procedure Tfrmapontamento.tbvKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  keyShift: TShiftState;
begin
  keyShift := [ssCtrl];
  if (Shift = keyShift) and (Key = 69) then
  begin
    actsetfocusrecursoExecute(actsetfocusrecurso);
  end;
end;

end.

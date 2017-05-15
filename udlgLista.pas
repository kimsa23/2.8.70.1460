unit udlgLista;

interface

uses
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls,
  Controls, Menus, ActnList,
  DBClient, sqlexpr, DB,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora,
  ulocalizarcliente,
  classeaplicacao, classeform,  classeempresa, classeretornasql, classeordproducao, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxLabel, cxCheckListBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxBar, cxNavigator, System.Actions;

type
  Tfrmdlglista = class(TForm)
    lblrzsocialc: TLabel;
    btncancelar: TcxButton;
    btnok: TcxButton;
    cds: TClientDataSet;
    cdsboativar: TStringField;
    dts: TDataSource;
    grd: TcxGrid;
    grdDBTableView1: TcxGridDBTableView;
    grdDBTableView1boativar: TcxGridDBColumn;
    grdDBTableView1cdordproducao: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cdsCDORDPRODUCAO: TIntegerField;
    cdsNMPRODUTO: TStringField;
    cdsQTITEM: TFloatField;
    grdDBTableView1NMPRODUTO: TcxGridDBColumn;
    grdDBTableView1QTITEM: TcxGridDBColumn;
    cdsCDITORDPRODUCAORECURSO: TIntegerField;
    act: TActionList;
    actSelecionartudo: TAction;
    actInverterselecao: TAction;
    actDesmarcartudo: TAction;
    procedure btnOkClick(Sender: TObject);
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actSelecionartudoExecute(Sender: TObject);
    procedure actInverterselecaoExecute(Sender: TObject);
    procedure actDesmarcartudoExecute(Sender: TObject);
  private   { Private declarations }
    cdtpequipamento: integer;
    procedure load_ordproducao;
    procedure set_lista(itordproducaorecursoList:TitordproducaorecursoList);
  public    { Public declarations }
  end;

function Ratear_ordProducao(cdtpequipamento: integer; itordproducaorecursoList: TitordproducaorecursoList):boolean;

var
  frmdlglista: Tfrmdlglista;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function Ratear_ordProducao(cdtpequipamento: integer; itordproducaorecursoList: TitordproducaorecursoList):boolean;
begin
  result      := false;
  frmdlgLista := TfrmdlgLista.Create(application);
  try
    frmdlgLista.grd.Visible := true;
    frmdlgLista.cdtpequipamento := cdtpequipamento;
    frmdlgLista.load_ordproducao;
    with frmdlgLista do
    begin
      showmodal;
      if ModalResult <> mrok then
      begin
        exit;
      end;
      set_lista(itordproducaorecursoList);
      result := true;
    end;
  finally
    freeandnil(frmdlgLista);
  end;
end;

procedure Tfrmdlglista.actDesmarcartudoExecute(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      cds.FieldByName(_boativar).AsString := _n;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure Tfrmdlglista.actInverterselecaoExecute(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      if cds.FieldByName(_boativar).AsString = _n then cds.FieldByName(_boativar).AsString := _S
                                                  else cds.FieldByName(_boativar).AsString := _n;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure Tfrmdlglista.actSelecionartudoExecute(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      cds.FieldByName(_boativar).AsString := _S;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure Tfrmdlglista.btnOkClick(Sender: TObject);
begin
  if cds.State = dsedit then
  begin
    cds.Post;
  end;
  modalresult := mrok;
end;

procedure Tfrmdlglista.grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmdlglista.load_ordproducao;
  function makesql:string;
  begin
    result := 'select o.cdordproducao'+
                    ',p.nmproduto'+
                    ',i.cditordproducaorecurso'+
                    ',o.qtitem '+
              'from ordproducao o '+
              'left join itordproducaorecurso i on i.cdempresa=o.cdempresa and i.cdordproducao=o.cdordproducao '+
              'left join stordproducao s on s.cdempresa=o.cdempresa and s.cdstordproducao=o.cdstordproducao '+
              'left join produto p on p.cdempresa=o.cdempresa and p.cdproduto=o.cdproduto '+
              'where o.cdempresa='+empresa.cdempresa.tostring+' '+
              'and i.cdtpequipamento='+inttostr(cdtpequipamento)+' '+
              'and i.cdstitordproducaorecurso=2 '+
              'and s.boapontamento=''S'' '+
              'order by o.cdordproducao';
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(makesql);
  try
    while not q.q.Eof do
    begin
      cds.Append;
      cdsboativar.AsString      := _s;
      cdscdordproducao.AsString := q.q.fieldbyname(_cd+_ordproducao).asstring;
      cdsnmproduto.AsString     := q.q.fieldbyname(_nmproduto).asstring;
      cdsqtitem.AsString        := q.q.fieldbyname(_qtitem).asstring;
      cdscditordproducaorecurso.AsString := q.q.FieldByName(_cd+_it+_ordproducao+_recurso).AsString;
      cds.Post;
      q.q.Next;
    end;
    cds.First;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmdlglista.set_lista(itordproducaorecursoList: TitordproducaorecursoList);
begin
  itordproducaorecursoList.Clear;
  cds.First;
  while not cds.eof do
  begin
    if cdsboativar.AsString = _s then
    begin
      itordproducaorecursoList.New.select(cdscditordproducaorecurso.AsInteger);
    end;
    cds.Next;
  end;
end;

end.

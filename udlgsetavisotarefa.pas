unit udlgsetavisotarefa;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus,
  uexportarexcel, uConstantes,
  classeretornasql, classeempresa, classegerar, classeregistrainformacao, classeAplicacao,
  classequery,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxButtonEdit, cxCalc, cxBlobEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxButtons,
  cxDBLookupComboBox, cxNavigator;

type
  Tfrmdlgsetavisotarefa = class(TForm)
    btnok: TcxButton;
    btncancelar: TcxButton;
    grd: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    grdDBTableView1: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    dts: TDataSource;
    grdDBTableView1CDTPTAREFA: TcxGridDBColumn;
    grdDBTableView1CDEVENTOREGISTRO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    q : TClasseQuery;
    tabela, codigo : string;
    function makesql:string;
    procedure set_qry;
  public { Public declarations }
  end;

var
  frmdlgsetavisotarefa: Tfrmdlgsetavisotarefa;

function set_aviso_tarefa(tabela, codigo:string):boolean;

implementation

uses uDtmMain;

{$R *.dfm}

function set_aviso_tarefa(tabela, codigo:string):Boolean;
begin
  result := False;
  frmdlgsetavisotarefa := tfrmdlgsetavisotarefa.Create(nil);
  try
    frmdlgsetavisotarefa.tabela := tabela;
    frmdlgsetavisotarefa.codigo := codigo;
    frmdlgsetavisotarefa.set_qry;
    if frmdlgsetavisotarefa.ShowModal = mrok then
    begin
      frmdlgsetavisotarefa.q.q.ApplyUpdates(0);
      result := True;
    end;
  finally
    frmdlgsetavisotarefa.free;
  end;
end;

procedure Tfrmdlgsetavisotarefa.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  dts.dataset := q.q;
  q.q.OnNewRecord := qrynewrecord;
  q.q.BeforePost := qryBeforePost;
  TcxLookupComboBoxProperties(grdDBTableView1CDEVENTOREGISTRO.Properties).ListSource := abrir_tabela(_evento+_registro);
  TcxLookupComboBoxProperties(grdDBTableView1CDTPTAREFA.Properties).ListSource       := abrir_tabela(_tp+_tarefa);
end;

function Tfrmdlgsetavisotarefa.makesql: string;
begin
  result := QRetornaSQL.get_select_from(tabela+_tarefa, codigo, _cd+tabela);
end;

procedure Tfrmdlgsetavisotarefa.set_qry;
begin
  q.q.SQL.Text := makesql;
  q.q.Open;
end;

procedure Tfrmdlgsetavisotarefa.qryBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName(_cd+tabela+_tarefa).IsNull then
  begin
    DataSet.FieldByName(_cd+tabela+_tarefa).AsString := GerarCodigo(tabela+_tarefa);
  end;
  RegistraInformacao_(dataset);
end;

procedure Tfrmdlgsetavisotarefa.qryNewRecord(DataSet: TDataSet);
begin
  q.q.FieldByName(_cd+tabela).AsString := codigo;
end;

procedure Tfrmdlgsetavisotarefa.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure Tfrmdlgsetavisotarefa.grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.

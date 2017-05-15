unit udlgavisotarefa;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons, ExtCtrls,
  Menus,
  DB,
  uConstantes, uexportarexcel,
  classeempresa, classegerar, classeregistrainformacao, classeAplicacao, classequery,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxControls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  cxCalc, cxBlobEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxButtons, cxDBLookupComboBox, cxNavigator;

type
  Tfrmdlgavisotarefa = class(TForm)
    btnok: TcxButton;
    dts: TDataSource;
    grd: TcxGrid;
    grdDBTableView1: TcxGridDBTableView;
    grdDBTableView1CDTAREFA: TcxGridDBColumn;
    grdDBTableView1NMTAREFA: TcxGridDBColumn;
    grdDBTableView1NMCLIENTE: TcxGridDBColumn;
    grdDBTableView1NMTPTAREFA: TcxGridDBColumn;
    grdDBTableView1DTEMISSAO: TcxGridDBColumn;
    grdDBTableView1FUNCIONARIO: TcxGridDBColumn;
    grdDBTableView1NUCOR: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word;       Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    q : TClasseQuery;
    function makesql(cdcliente, cdtptarefa:string):string;
    procedure set_qry(cdcliente, cdtptarefa:string);
  public { Public declarations }
  end;

var
  frmdlgavisotarefa: Tfrmdlgavisotarefa;

function Exibir_aviso_tarefa(cdcliente, cdtptarefa:string):boolean;

implementation

uses uDtmMain;

{$R *.dfm}

function Exibir_aviso_tarefa(cdcliente, cdtptarefa:string):boolean;
begin
  result := False;
  frmdlgavisotarefa := tfrmdlgavisotarefa.Create(nil);
  try
    frmdlgavisotarefa.set_qry(cdcliente, cdtptarefa);
    if frmdlgavisotarefa.q.q.RecordCount = 0 then
    begin
      Exit;
    end;
    frmdlgavisotarefa.ShowModal;
    result := True;
  finally
    frmdlgavisotarefa.free;
  end;
end;

function Tfrmdlgavisotarefa.makesql(cdcliente, cdtptarefa:string):string;
begin
  result := 'SELECT C.NMCLIENTE,P.NMTPTAREFA,T.CDTAREFA,T.NMTAREFA,T.DTEMISSAO,F.NMFUNCIONARIO '+
            'FROM TAREFA T '+
            'LEFT JOIN CLIENTE C ON C.CDCLIENTE=T.CDCLIENTE AND C.CDEMPRESA=T.CDEMPRESA '+
            'LEFT JOIN TPTAREFA P ON P.CDTPTAREFA=T.CDTPTAREFA AND P.CDEMPRESA=T.CDEMPRESA '+
            'LEFT JOIN FUNCIONARIO F ON F.CDEMPRESA=T.CDEMPRESA AND F.CDFUNCIONARIO=T.CDFUNCIONARIO '+
            'WHERE T.CDEMPRESA='+empresa.cdempresa.tostring+' AND T.CDCLIENTE='+cdcliente;
  if cdtptarefa <> '' then
  begin
    result := result + ' and T.cdtptarefa='+cdtptarefa;
  end;
end;

procedure Tfrmdlgavisotarefa.set_qry(cdcliente, cdtptarefa:string);
begin
  q.q.SQL.Text := makesql(cdcliente, cdtptarefa);
  q.q.Open;
end;

procedure Tfrmdlgavisotarefa.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.create;
  dts.dataset := q.q;
end;

procedure Tfrmdlgavisotarefa.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure Tfrmdlgavisotarefa.grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.

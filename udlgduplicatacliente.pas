unit udlgduplicatacliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Menus, StdCtrls, Dialogs,
  DB,
  uExportarExcel,
  classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxCurrencyEdit, cxButtons, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tfrmdlgduplicatacliente = class(TForm)
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvNUDUPLICATA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTPRORROGACAO: TcxGridDBColumn;
    tbvDTBAIXA: TcxGridDBColumn;
    tbvVLDUPLICATA: TcxGridDBColumn;
    tbvVLBAIXA: TcxGridDBColumn;
    tbvVLRECEBIDO: TcxGridDBColumn;
    tbvNMSTDUPLICATA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    pnl: TPanel;
    btnfechar: TcxButton;
    dts: TDataSource;
    tbvvlsaldo: TcxGridDBColumn;
    procedure btnfecharClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    cdempresa, cdcliente : string;
    q : tclassequery;
    function makesql:string;
    procedure Abrir_tabela;
  public  { Public declarations }
  end;

var
  frmdlgduplicatacliente: Tfrmdlgduplicatacliente;

procedure dlgduplicatacliente(cdempresa, cdcliente:string);

implementation

{$R *.dfm}

procedure dlgduplicatacliente(cdempresa, cdcliente:string);
begin
  frmdlgduplicatacliente := Tfrmdlgduplicatacliente.Create(nil);
  try
    frmdlgduplicatacliente.cdempresa := cdempresa;
    frmdlgduplicatacliente.cdcliente := cdcliente;
    frmdlgduplicatacliente.Abrir_tabela;
    frmdlgduplicatacliente.ShowModal;
  finally
    frmdlgduplicatacliente.Free;
  end;
end;

procedure Tfrmdlgduplicatacliente.Abrir_tabela;
begin
  q.q.Close;
  q.q.sql.text := makesql;
  q.q.open;
end;

function Tfrmdlgduplicatacliente.makesql:string;
begin
  result := 'select d.nuduplicata'+
                  ',d.dtemissao'+
                  ',d.dtprorrogacao'+
                  ',d.dtbaixa'+
                  ',d.vlduplicata'+
                  ',d.vlbaixa'+
                  ',d.vlrecebido'+
                  ',d.vlsaldo'+
                  ',s.nmstduplicata '+
            'from duplicata d '+
            'left join stduplicata s on s.cdstduplicata=d.cdstduplicata '+
            'where d.cdempresa='+cdempresa+' and d.cdcliente='+cdcliente;
end;

procedure Tfrmdlgduplicatacliente.btnfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlgduplicatacliente.FormCreate(Sender: TObject);
begin
  q:= tclassequery.create;
  dts.dataset := q.q;
end;

procedure Tfrmdlgduplicatacliente.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure Tfrmdlgduplicatacliente.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

end.

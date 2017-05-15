unit udlghpedidoetapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  uExportarExcel,
  classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxBlobEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Menus, StdCtrls, cxButtons, ExtCtrls;

type
  Tfrmdlghpedidoetapa = class(TForm)
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvDSJUSTIFICATIVA: TcxGridDBColumn;
    tbvTSHISTORICO: TcxGridDBColumn;
    tbvNMUSUARIO: TcxGridDBColumn;
    tbvNMCOMPUTADOR: TcxGridDBColumn;
    tbvNMTPCREDITO: TcxGridDBColumn;
    tbvNMTPCOMERCIAL: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    dts: TDataSource;
    pnl: TPanel;
    btnfechar: TcxButton;
    procedure btnfecharClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    cdempresa, cdpedido : string;
    q : tclassequery;
    procedure abrir_tabela;
    function makesql:string;
  public { Public declarations }
  end;

var
  frmdlghpedidoetapa: Tfrmdlghpedidoetapa;

procedure dlghpedidoetapa(cdempresa, cdpedido:string);

implementation

{$R *.dfm}

procedure dlghpedidoetapa(cdempresa, cdpedido:string);
begin
  frmdlghpedidoetapa := Tfrmdlghpedidoetapa.Create(nil);
  try
    frmdlghpedidoetapa.cdempresa := cdempresa;
    frmdlghpedidoetapa.cdpedido  := cdpedido;
    frmdlghpedidoetapa.Abrir_tabela;
    frmdlghpedidoetapa.ShowModal;
  finally
    frmdlghpedidoetapa.Free;
  end;
end;

procedure Tfrmdlghpedidoetapa.abrir_tabela;
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.Open;
end;

function Tfrmdlghpedidoetapa.makesql:string;
begin
  Result := 'select hpedidoetapa.tshistorico'+
                  ',usuario.nmusuario'+
                  ',computador.nmcomputador'+
                  ',tpcredito.NMTPCREDITO'+
                  ',tpcomercial.NMTPCOMERCIAL'+
                  ',hpedidoetapa.dsjustificativa '+
            'from hpedidoetapa '+
            'left join computador on computador.cdcomputador=hpedidoetapa.cdcomputador '+
            'left join usuario on usuario.CDUSUARIO=hpedidoetapa.cdusuario '+
            'LEFT JOIN TPCREDITO ON TPCREDITO.CDEMPRESA=HPEDIDOETAPA.CDEMPRESA AND TPCREDITO.CDTPCREDITO=HPEDIDOETAPA.CDTPCREDITO '+
            'LEFT JOIN TPCOMERCIAL ON TPCOMERCIAL.CDEMPRESA=HPEDIDOETAPA.CDEMPRESA AND TPCOMERCIAL.CDTPCOMERCIAL=HPEDIDOETAPA.CDTPCOMERCIAL '+
            'where hpedidoetapa.cdempresa='+cdempresa+' and cdpedido='+cdpedido;
end;

procedure Tfrmdlghpedidoetapa.btnfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlghpedidoetapa.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  dts.dataset := q.q;
end;

procedure Tfrmdlghpedidoetapa.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure Tfrmdlghpedidoetapa.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

end.

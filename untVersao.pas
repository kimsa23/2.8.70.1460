unit untVersao;

interface

uses
  Forms, ComCtrls, StdCtrls, Gauges, ExtCtrls, Classes, Controls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMemo;

type
  TfrmVersao = class(TForm)
    pnl1: TPanel;
    gau: TGauge;
    gau1: TGauge;
    lbllinha: TLabel;
    lblarquivo: TLabel;
    lblsql: TLabel;
    mem: TcxMemo;
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmVersao: TfrmVersao;

implementation

{$R *.dfm}

end.



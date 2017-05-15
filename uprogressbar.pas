unit uprogressbar;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, Gauges, ExtCtrls;

type
  Tfrmprogressbar = class(TForm)
    gau: TGauge;
    pnl: TPanel;
    gau1: TGauge;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private { Private declarations }
  public  { Public declarations }
    procedure setgau1;
  end;

var
  frmprogressbar: Tfrmprogressbar;
  frmprogressbar1: Tfrmprogressbar;

implementation

{$R *.dfm}

procedure Tfrmprogressbar.setgau1;
begin
  gau1.Visible := true;
  Height       := 45;
end;

procedure Tfrmprogressbar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

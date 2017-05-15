unit uFaturamentoTipo;

interface

uses forms, StdCtrls, Buttons, ComCtrls, ExtCtrls, Controls, Classes, SysUtils,
  Dialogs,
  ustrings, uconstantes, uregistro, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels;

type
  TfrmFaturamentoTipo = class(TForm)
    chkarquivo: TCheckBox;
    chkbanco: TCheckBox;
    ckbmensalidade: TCheckBox;
    rdg: TRadioGroup;
    btnok: TcxButton;
    btncancelar: TcxButton;
    procedure btnokClick(Sender: TObject);
    procedure chkarquivoClick(Sender: TObject);
    procedure chkbancoClick(Sender: TObject);
  private    { Private declarations }
  public { Public declarations }
  end;

var
  frmFaturamentoTipo: TfrmFaturamentoTipo;

function VerificarTipo(var boarquivo: boolean; var bobanco: boolean; var tpmodelo: string; var bomensalidade: boolean):boolean;

implementation

{$R *.dfm}

function VerificarTipo(var boarquivo: boolean; var bobanco: boolean; var tpmodelo: string; var bomensalidade: boolean):boolean;
begin
  result := false;
  try
    frmFaturamentoTipo := TfrmFaturamentoTipo.Create(application);
    frmFaturamentoTipo.ShowModal;
    if frmFaturamentoTipo.ModalResult = mrok then
    begin
      boarquivo     := frmFaturamentoTipo.chkarquivo.Checked;
      bobanco       := frmFaturamentoTipo.chkbanco.Checked;
      tpmodelo      := frmfaturamentotipo.rdg.itemindex.ToString;
      bomensalidade := frmfaturamentotipo.ckbmensalidade.Checked;
      result := true;
    end;
  finally
     FreeAndNil(frmFaturamentoTipo);
  end;
end;

procedure TfrmFaturamentoTipo.btnokClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmFaturamentoTipo.chkarquivoClick(Sender: TObject);
begin
  btnok.Enabled := (chkarquivo.Checked or chkbanco.Checked);
end;

procedure TfrmFaturamentoTipo.chkbancoClick(Sender: TObject);
begin
  btnok.Enabled := (chkarquivo.Checked or chkbanco.Checked);
end;

end.

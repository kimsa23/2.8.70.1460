unit udlgdatabalanco;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons, ExtCtrls,
  Menus, ComCtrls,
  sqlexpr,
  uregistro, udatahora,
  classeAplicacao,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGraphics, cxLookAndFeels, dxCore,
  cxDateUtils, cxSpinEdit;

type
  Tfrmdlgdatabalanco = class(TForm)
    Bevel1: TBevel;
    lbldti: TLabel;
    edtdti: TcxDateEdit;
    edtdtf: TcxDateEdit;
    lbldtf: TLabel;
    btnok: TcxButton;
    btnCancel: TcxButton;
    edtcodigoi: TcxSpinEdit;
    edtcodigof: TcxSpinEdit;
    lblcodigo: TLabel;
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmdlgdatabalanco: Tfrmdlgdatabalanco;

function dlgDataBalanco(var dtbalanco:tdate):boolean;
function dlgDataInicioFinal(var dti, dtf:tdate; boatual:Boolean=true; titulo:string=''):boolean;overload;
function dlgDataInicioFinal(var dti:tdate; var dtf: tdate; var codigoi, codigof:string; tabela:string; boatual:Boolean=true):boolean;overload;

implementation

{$R *.dfm}

function dlgDataBalanco(var dtbalanco:tdate):boolean;
begin
  result := false;
  frmdlgdatabalanco := Tfrmdlgdatabalanco.Create(nil);
  try
    frmdlgdatabalanco.caption := 'Estoque';
    frmdlgdatabalanco.edtdti.Date := DtBanco;
    frmdlgdatabalanco.showmodal;
    if frmdlgdatabalanco.ModalResult = mrok then
    begin
      dtbalanco := frmdlgdatabalanco.edtdti.Date;
      result := true;
    end;
  finally
    freeandnil(frmdlgdatabalanco);
  end;
end;

function dlgDataInicioFinal(var dti:tdate; var dtf: tdate; boatual:Boolean=true; titulo:string=''):boolean;
begin
  result := false;
  frmdlgdatabalanco := Tfrmdlgdatabalanco.Create(nil);
  try
    frmdlgdatabalanco.caption := 'Data de Emissão';
    if titulo <> '' then
    begin
      frmdlgdatabalanco.caption := titulo;
    end;
    frmdlgdatabalanco.edtdtf.visible := true;
    frmdlgdatabalanco.lbldtf.visible := true;
    frmdlgdatabalanco.lbldti.caption := 'Início';
    if boatual then
    begin
      frmdlgdatabalanco.edtdti.Date := DtBanco;
      frmdlgdatabalanco.edtdtf.Date := frmdlgdatabalanco.edtdti.Date;
    end
    else
    begin
      frmdlgdatabalanco.edtdti.Date := dti;
      frmdlgdatabalanco.edtdtf.Date := dtf;
    end;
    frmdlgdatabalanco.showmodal;
    if frmdlgdatabalanco.ModalResult = mrok then
    begin
      dti := frmdlgdatabalanco.edtdti.Date;
      dtf := frmdlgdatabalanco.edtdtf.Date;
      result := true;
    end;
  finally
    freeandnil(frmdlgdatabalanco);
  end;
end;

function dlgDataInicioFinal(var dti, dtf: tdate; var codigoi, codigof:string; tabela:string; boatual:Boolean=true):boolean;
begin
  result := false;
  frmdlgdatabalanco := Tfrmdlgdatabalanco.Create(nil);
  try
    frmdlgdatabalanco.caption            := 'Data de Emissão';
    frmdlgdatabalanco.lblcodigo.Caption  := tabela;
    frmdlgdatabalanco.lblcodigo.visible  := true;
    frmdlgdatabalanco.edtcodigoi.visible := true;
    frmdlgdatabalanco.edtcodigof.visible := true;
    frmdlgdatabalanco.edtcodigoi.Text    := codigoi;
    frmdlgdatabalanco.edtcodigof.Text    := codigof;
    frmdlgdatabalanco.edtdtf.visible     := true;
    frmdlgdatabalanco.lbldtf.visible     := true;
    frmdlgdatabalanco.lbldti.caption     := 'Início';
    if boatual then
    begin
      frmdlgdatabalanco.edtdti.Date := DtBanco;
      frmdlgdatabalanco.edtdtf.Date := frmdlgdatabalanco.edtdti.Date;
    end
    else
    begin
      frmdlgdatabalanco.edtdti.Date := dti;
      frmdlgdatabalanco.edtdtf.Date := dtf;
    end;
    frmdlgdatabalanco.showmodal;
    if frmdlgdatabalanco.ModalResult = mrok then
    begin
      dti    := frmdlgdatabalanco.edtdti.Date;
      dtf    := frmdlgdatabalanco.edtdtf.Date;
      if frmdlgdatabalanco.edtcodigoi.Value > 0 then
      begin
        codigoi := frmdlgdatabalanco.edtcodigoi.Value;
      end;
      codigof := codigoi;
      if frmdlgdatabalanco.edtcodigof.Value > 0 then
      begin
        codigof := frmdlgdatabalanco.edtcodigof.Value;
      end;
      result := true;
    end;
  finally
    freeandnil(frmdlgdatabalanco);
  end;
end;

end.

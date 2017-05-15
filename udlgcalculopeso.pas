unit udlgcalculopeso;

interface

uses
  Windows, Menus, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  SqlExpr,
  uRegistro, uConstantes,
  classeaplicacao, classeempresa, classecalculopeso, classequery,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, ExtCtrls, cxLabel,
  StdCtrls, cxButtons;

type
  Tfrmcalculopeso = class(TForm)
    btnok: TcxButton;
    btncancel: TcxButton;
    lbl1: TcxLabel;
    lblnmforma: TcxLabel;
    lblmaterial: TcxLabel;
    Bevel1: TBevel;
    lblnmmaterial: TcxLabel;
    lbl2: TcxLabel;
    lblqtpesoespecifico: TcxLabel;
    lbl5: TcxLabel;
    lbldsformula: TcxLabel;
    lbl6: TcxLabel;
    lblqtpeso: TcxLabel;
    cxLabel16: TcxLabel;
    lblcalculo: TcxLabel;
    ntb: TNotebook;
    edtbarraredondadiametro: TcxCalcEdit;
    edtbarraredondacomprimento: TcxCalcEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edtbarrachatacomprimento: TcxCalcEdit;
    edtbarrachatadiamentro: TcxCalcEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    edtbarrachatalargura: TcxCalcEdit;
    edtformaqtkilometro: TcxCalcEdit;
    edtformaqtmetro: TcxCalcEdit;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    edtchapacomprimento: TcxCalcEdit;
    edtchapalargura: TcxCalcEdit;
    edtchapaespessura: TcxCalcEdit;
    cxLabel9: TcxLabel;
    edtbobinalargura: TcxCalcEdit;
    edtbobinaespessura: TcxCalcEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    edtbuchadiamexterno: TcxCalcEdit;
    edtbuchadiaminterno: TcxCalcEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    edtbuchacomprimento: TcxCalcEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    edtdiscochapadiametro: TcxCalcEdit;
    edtdiscochapaespessura: TcxCalcEdit;
    cxLabel17: TcxLabel;
    edtbuchaflangediaexterno: TcxCalcEdit;
    edtbuchaflangediacorpo: TcxCalcEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    edtbuchaflangecomprimentro1: TcxCalcEdit;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    edtbuchaflangecomprimento2: TcxCalcEdit;
    edtbuchaflangediafuro: TcxCalcEdit;
    cxLabel22: TcxLabel;
    edtbucha2flangediaexterno: TcxCalcEdit;
    edtbucha2flangediacorpo: TcxCalcEdit;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    edtbucha2flangecomprimento1: TcxCalcEdit;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    edtbucha2flangecomprimento2: TcxCalcEdit;
    edtbucha2flangediafuro: TcxCalcEdit;
    cxLabel27: TcxLabel;
    edtbucha2flangecomprimento3: TcxCalcEdit;
    edtbucha2flangediaexterno2: TcxCalcEdit;
    cxLabel28: TcxLabel;
    procedure CalcularPeso(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    dscalculo, dsformula: string;
    qtpeso: Double;
    CalculoPeso : TCalculoPeso;
    function getnmforma(nome:string):Integer;
    procedure setreadonly(readonly:Boolean);
    procedure setdados(cdproduto:string);
    procedure calcular_chapa;
    procedure calcular_barra_chata;
    procedure calcular_bobina;
    procedure calcular_barra_redonda_tarugo;
    procedure calcular_barra_quadrada;
    procedure calcular_barra_sextavada;
    procedure calcular_bucha_anel_chapa;
    procedure calcular_disco_chapa;
    procedure calcular_bucha_flangeada;
    procedure calcular_bucha2flanges;
    procedure calcular_outros;
  public { Public declarations }
  end;

var
  frmcalculopeso: Tfrmcalculopeso;

function CalcularPeso(readonly:boolean; cdproduto:string; var dsformula:string; var qtpeso:real):Boolean;

implementation

{$R *.dfm}

function CalcularPeso(readonly:boolean; cdproduto:string; var dsformula:string; var qtpeso:real):Boolean;
begin
  frmcalculopeso := Tfrmcalculopeso.Create(nil);
  try
    frmcalculopeso.setreadonly(readonly);
    frmcalculopeso.setdados(cdproduto);
    result := frmcalculopeso.ShowModal = mrOk;
    if result then
    begin
      dsformula := frmcalculopeso.dsformula;
      qtpeso    := frmcalculopeso.qtpeso;
    end;
  finally
    FreeAndNil(frmcalculopeso);
  end;
end;

procedure Tfrmcalculopeso.setdados(cdproduto: string);
  function makesql:string;
  begin
    result := 'select m.numultiplicar,m.nmmaterial,f.nmforma,qtpesoespecifico,p.QTLARGURA,p.QTESPESSURA,P.QTKILOMETRO '+
              'from produto p '+
              'left join material m on m.cdmaterial=p.cdmaterial and p.cdempresa=m.cdempresa '+
              'left join forma f on f.cdforma=p.cdforma '+
              'where p.cdempresa='+empresa.cdempresa.tostring+' and p.cdproduto='+cdproduto;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create;
  try
    q.q.Open(makesql);
    edtbarrachatalargura.Value    := q.q.fieldbyname(_qtlargura).AsFloat;
    edtchapalargura.Value         := q.q.fieldbyname(_qtlargura).AsFloat;
    edtformaqtkilometro.Value     := q.q.fieldbyname(_qtkilometro).AsFloat;
    edtchapaespessura.Value       := q.q.fieldbyname(_qtespessura).AsFloat;
    lblnmforma.Caption            := q.q.fieldbyname(_nmforma).AsString;
    lblnmmaterial.Caption         := q.q.fieldbyname(_nmmaterial).AsString;
    calculopeso.qtpesoespecifico  := q.q.fieldbyname(_qtpesoespecifico).AsFloat;
    CalculoPeso.numultiplicar     := q.q.fieldbyname(_numultiplicar).AsFloat;
    lblqtpesoespecifico.Caption   := q.q.fieldbyname(_qtpesoespecifico).AsString;
    calculopeso.nmforma           := LowerCase(q.q.fieldbyname(_nmforma).AsString);
    ntb.PageIndex                 := getnmforma(q.q.fieldbyname(_nmforma).AsString);
  finally
    FreeAndNil(q);
  end;
end;

procedure Tfrmcalculopeso.setreadonly(readonly: Boolean);
begin
  edtbarrachatacomprimento.Enabled   := not readonly;
  edtbarrachatadiamentro.Enabled     := not readonly;
  edtformaqtkilometro.Enabled        := not readonly;
  edtformaqtmetro.Enabled            := not readonly;
  edtbarraredondacomprimento.Enabled := not readonly;
  edtbarraredondadiametro.Enabled    := not readonly;
  edtbarrachatalargura.Enabled       := not readonly;
  edtchapacomprimento.Enabled        := not readonly;
  edtchapalargura.Enabled            := not readonly;
  edtchapaespessura.Enabled          := not readonly;
end;

procedure Tfrmcalculopeso.CalcularPeso(Sender: TObject);
begin
  qtpeso := 0;
       if CalculoPeso.nmforma = _CHAPA                                                   then calcular_chapa
  else if CalculoPeso.nmforma = _BARRA+' '+_CHATA                                        then calcular_barra_chata
  else if CalculoPeso.nmforma = _bobina                                                  then calcular_bobina
  else if (CalculoPeso.nmforma = _BARRA+' '+_REDONDA) or (CalculoPeso.nmforma = _TARUGO) then calcular_barra_redonda_tarugo
  else if CalculoPeso.nmforma = _BARRA+' '+_QUADRADA                                     then calcular_barra_quadrada
  else if CalculoPeso.nmforma = _BARRA+' '+_SEXTAVADA                                    then calcular_barra_sextavada
  else if CalculoPeso.forma_outros                                                       then calcular_outros
  else if (CalculoPeso.nmforma = _BUCHA) or (CalculoPeso.nmforma = _ANEL+' '+_CHAPA)     then calcular_bucha_anel_chapa
  else if CalculoPeso.nmforma = _DISCO+' '+_CHAPA                                        then calcular_disco_chapa
  else if CalculoPeso.nmforma = _BUCHA+' '+_FLANGEADA                                    then calcular_bucha_flangeada
  else if CalculoPeso.nmforma = _BUCHA+' '+_2+' '+_FLANGES                               then calcular_bucha2flanges;
  lbldsformula.Caption := dsformula;
  lblcalculo.Caption   := dscalculo;
  lblqtpeso.Caption    := FloatToStr(qtpeso);
  btnok.Enabled        := qtpeso > 0;
end;

procedure Tfrmcalculopeso.calcular_barra_chata;
begin
  if not (VarIsNull(edtbarrachatacomprimento.EditingValue) or VarIsNull(edtbarrachatalargura.EditingValue) or VarIsNull(edtbarrachatadiamentro.EditingValue)) then
  begin
    CalculoPeso.comprimento := edtbarrachatacomprimento.EditingValue;
    CalculoPeso.largura     := edtbarrachatalargura.EditingValue;
    CalculoPeso.diametro    := edtbarrachatadiamentro.EditingValue;
    qtpeso                  := CalculoPeso.get_calculo_peso;
    dsformula               := CalculoPeso.dsformula;
    dscalculo               := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_barra_quadrada;
begin
  if not (VarIsNull(edtbarraredondadiametro.EditingValue) or VarIsNull(edtbarraredondacomprimento.EditingValue)) then
  begin
    CalculoPeso.diametro    := edtbarraredondadiametro.EditingValue;
    calculopeso.comprimento := edtbarraredondacomprimento.EditingValue;
    qtpeso                  := CalculoPeso.get_calculo_peso;
    dsformula               := calculopeso.dsformula;
    dscalculo               := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_barra_redonda_tarugo;
begin
  if not (VarIsNull(edtbarraredondadiametro.EditingValue) or VarIsNull(edtbarraredondacomprimento.EditingValue)) then
  begin
    calculopeso.diametro    := edtbarraredondadiametro.EditingValue;
    CalculoPeso.comprimento := edtbarraredondacomprimento.EditingValue;
    qtpeso    := CalculoPeso.get_calculo_peso;
    dsformula := CalculoPeso.dsformula;
    dscalculo := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_barra_sextavada;
begin
  if not (VarIsNull(edtbarraredondadiametro.EditingValue) or VarIsNull(edtbarraredondacomprimento.EditingValue)) then
  begin
    CalculoPeso.diametro    := edtbarraredondadiametro.EditingValue;
    CalculoPeso.comprimento := edtbarraredondacomprimento.EditingValue;
    qtpeso    := CalculoPeso.get_calculo_peso;
    dsformula := CalculoPeso.dsformula;
    dscalculo := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_bobina;
begin
  if not (VarIsNull(edtbobinalargura.EditingValue) or VarIsNull(edtbobinaespessura.EditingValue)) then
  begin
    CalculoPeso.largura   := edtbobinalargura.Value;
    CalculoPeso.espessura := edtbobinaespessura.Value;
    qtpeso    := CalculoPeso.get_calculo_peso;
    dsformula := CalculoPeso.dsformula;
    dscalculo := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_bucha2flanges;
begin
  if not (VarIsNull(edtbucha2flangediaexterno.EditingValue) or VarIsNull(edtbucha2flangecomprimento1.EditingValue) or
          VarIsNull(edtbucha2flangediacorpo.EditingValue) or VarIsNull(edtbucha2flangecomprimento2.EditingValue) or
          VarIsNull(edtbucha2flangediaexterno2.EditingValue) or VarIsNull(edtbucha2flangecomprimento3.EditingValue) or
          VarIsNull(edtbucha2flangediafuro.EditingValue)) then
  begin
    CalculoPeso.diametroexterno  := edtbucha2flangediaexterno.EditingValue;
    CalculoPeso.diametrocorpo    := edtbucha2flangediacorpo.EditingValue;
    CalculoPeso.diametroexterno2 := edtbucha2flangediaexterno2.EditingValue;
    CalculoPeso.diametrofuro     := edtbucha2flangediafuro.EditingValue;
    CalculoPeso.comprimento3     := edtbucha2flangecomprimento3.EditingValue;
    CalculoPeso.comprimento2     := edtbucha2flangecomprimento2.EditingValue;
    CalculoPeso.comprimento      := edtbucha2flangecomprimento1.EditingValue;

    qtpeso    := CalculoPeso.get_calculo_peso;
    dsformula := CalculoPeso.dsformula;
    dscalculo := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_bucha_anel_chapa;
begin
  if not (VarIsNull(edtbuchadiamexterno.EditingValue) or VarIsNull(edtbuchadiaminterno.EditingValue) or VarIsNull(edtbuchacomprimento.EditingValue)) then
  begin
    CalculoPeso.diametroexterno := edtbuchadiamexterno.EditingValue;
    CalculoPeso.diametrointerno := edtbuchadiaminterno.EditingValue;
    CalculoPeso.comprimento     := edtbuchacomprimento.editingvalue;
    qtpeso    := CalculoPeso.get_calculo_peso;
    dsformula := CalculoPeso.dsformula;
    dscalculo := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_bucha_flangeada;
begin
  if not (VarIsNull(edtbuchaflangediaexterno.EditingValue) or VarIsNull(edtbuchaflangecomprimentro1.EditingValue) or
          VarIsNull(edtbuchaflangediacorpo.EditingValue) or VarIsNull(edtbuchaflangecomprimento2.EditingValue) or
          VarIsNull(edtbuchaflangediafuro.EditingValue)) then
  begin
    CalculoPeso.diametroexterno := edtbuchaflangediaexterno.EditingValue;
    CalculoPeso.comprimento     := edtbuchaflangecomprimentro1.EditingValue;
    CalculoPeso.diametrocorpo   := edtbuchaflangediacorpo.EditingValue;
    CalculoPeso.comprimento2    := edtbuchaflangecomprimento2.EditingValue;
    CalculoPeso.diametrofuro    := edtbuchaflangediafuro.EditingValue;
    qtpeso                      := CalculoPeso.get_calculo_peso;
    dsformula                   := CalculoPeso.dsformula;
    dscalculo                   := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_chapa;
begin
  if not (VarIsNull(edtchapacomprimento.EditingValue) or VarIsNull(edtchapalargura.EditingValue) or VarIsNull(edtchapaespessura.EditingValue)) then
  begin
    CalculoPeso.comprimento := edtchapacomprimento.EditingValue;
    CalculoPeso.largura     := edtchapalargura.EditingValue;
    CalculoPeso.espessura   := edtchapaespessura.EditingValue;

    qtpeso    := CalculoPeso.get_calculo_peso;;
    dsformula := CalculoPeso.dsformula;
    dscalculo := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_disco_chapa;
begin
  if not (VarIsNull(edtdiscochapadiametro.EditingValue) or VarIsNull(edtdiscochapaespessura.EditingValue)) then
  begin
    CalculoPeso.diametro  := edtdiscochapadiametro.EditingValue;
    CalculoPeso.espessura := edtdiscochapaespessura.EditingValue;
    qtpeso    := CalculoPeso.get_calculo_peso;
    dsformula := CalculoPeso.dsformula;
    dscalculo := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.calcular_outros;
begin
  if not (VarIsNull(edtformaqtkilometro.EditingValue) or VarIsNull(edtformaqtmetro.EditingValue)) then
  begin
    CalculoPeso.kilo  := edtformaqtkilometro.EditingValue;
    CalculoPeso.metro := edtformaqtmetro.EditingValue;
    qtpeso    := CalculoPeso.get_calculo_peso;
    dsformula := CalculoPeso.dsformula;
    dscalculo := CalculoPeso.dscalculo;
  end;
end;

procedure Tfrmcalculopeso.FormCreate(Sender: TObject);
begin
  CalculoPeso := TCalculoPeso.Create;
end;

procedure Tfrmcalculopeso.FormDestroy(Sender: TObject);
begin
  CalculoPeso.Free;
end;

procedure Tfrmcalculopeso.FormShow(Sender: TObject);
begin
       if CalculoPeso.nmforma = _chapa                                               then edtchapacomprimento.SetFocus
  else if CalculoPeso.nmforma = _BARRA+' '+_CHATA                                    then edtbarrachatacomprimento.SetFocus
  else if CalculoPeso.nmforma = _bobina                                              then edtbobinalargura.SetFocus
  else if (CalculoPeso.nmforma = _BARRA+' '+_REDONDA) or
          (CalculoPeso.nmforma = _BARRA+' '+_QUADRADA) or
          (CalculoPeso.nmforma = _BARRA+' '+_SEXTAVADA)                              then edtbarraredondadiametro.SetFocus
  else if CalculoPeso.forma_outros                                                   then edtformaqtkilometro.SetFocus
  else if (CalculoPeso.nmforma = _BUCHA) or (CalculoPeso.nmforma = _ANEL+' '+_CHAPA) then edtbuchadiaminterno.SetFocus
  else if (CalculoPeso.nmforma = _BUCHA+' '+_flangeada)                              then edtbuchaflangediaexterno.SetFocus
  else if (CalculoPeso.nmforma = _BUCHA+' '+_2+' '+_flanges)                         then edtbucha2flangediaexterno.SetFocus
  else if (CalculoPeso.nmforma = _BUCHA) or (CalculoPeso.nmforma = _ANEL+' '+_CHAPA) then edtbuchadiaminterno.SetFocus
  else if CalculoPeso.nmforma = _DISCO+' '+_CHAPA                                    then edtdiscochapadiametro.SetFocus;
end;

function Tfrmcalculopeso.getnmforma(nome: string): Integer;
begin
  Result := 0;
       if CalculoPeso.nmforma = _chapa                                                                 then result := 3
  else if (CalculoPeso.nmforma = _BARRA+' '+_CHATA) or (CalculoPeso.nmforma = _BARRA+' '+_QUADRADA)    then result := 1
  else if CalculoPeso.nmforma = _bobina                                                                then result := 4
  else if (CalculoPeso.nmforma = _BARRA+' '+_REDONDA) or (CalculoPeso.nmforma = _BARRA+' '+_SEXTAVADA) then result := 0
  else if CalculoPeso.forma_outros                                                                     then result := 2
  else if (CalculoPeso.nmforma = _BUCHA) or (CalculoPeso.nmforma = _ANEL+' '+_CHAPA)                   then result := 5
  else if CalculoPeso.nmforma = _DISCO+' '+_CHAPA                                                      then result := 6
  else if CalculoPeso.nmforma = _bucha+' '+_flangeada                                                  then result := 7
  else if CalculoPeso.nmforma = _BUCHA+' '+_2+' '+_flanges                                             then result := 8;
end;

end.

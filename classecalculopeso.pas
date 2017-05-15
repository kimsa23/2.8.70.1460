unit classecalculopeso;

interface

uses
  sysutils,
  uConstantes;

type
  TCalculoPeso = class(TObject)
  private
    function calcular_barra_chata:Double;
    function calcular_barra_redonda:Double;
    function calcular_barra_quadrada:Double;
    function calcular_barra_sextavada:Double;
    function calcular_bobina:Double;
    function calcular_bucha2flanges:Double;
    function calcular_chapa:Double;
    function calcular_bucha_anel_chapa:Double;
    function Calcular_Bucha_flangeada:Double;
    function Calcular_Disco_Chapa:Double;
    function Calcular_kilo_metro:Double;
  public
    dscalculo, nmforma, dsformula: string;
    numultiplicar, qtpesoespecifico: Double;
    kilo, metro, diametrointerno, diametroexterno, diametrofuro, comprimento2, diametroexterno2, comprimento3, diametrocorpo, espessura, comprimento, largura, diametro: Double;
    function get_calculo_peso:Double;
    function forma_outros: Boolean;
  end;

implementation

function TCalculoPeso.calcular_bucha2flanges: Double;
begin
  result := (((((diametroexterno * diametroexterno)-(diametrofuro * diametrofuro)) * (_numero_pi * 8.86 * comprimento2)) / 4)+
              (((diametroexterno2*diametroexterno2)- (diametrofuro*diametrofuro))* (_numero_pi * 8.86 * comprimento3)/4)+ (((diametrocorpo*diametrocorpo)-
              (diametrofuro*diametrofuro))* (_numero_pi * 8.86 *  comprimento2)/4)) / 1000000;
  dsformula := 'Ø'+floattostr(diametroexterno)+'x'+floattostr(comprimento)+'x'+
               'Ø'+floattostr(diametrocorpo)+'x'+floattostr(comprimento2)+'x'+floattostr(diametrofuro)+'x'+floattostr(diametroexterno2)+'x'+
               'Ø'+floattostr(comprimento3)+_MM;
  dscalculo := ' ';
end;

function TCalculoPeso.calcular_bucha_anel_chapa: Double;
begin
  result    := (((diametroexterno*diametroexterno)-
                 (diametrointerno*diametrointerno))*_numero_pi/4)*(comprimento/1000000)*qtpesoespecifico;
  dsformula := 'Ø '+floattostr(diametroexterno)+'xØ '+floattostr(diametrointerno)+'x'+floattostr(comprimento)+_mm;
  dscalculo := '(((ØExt X ØExt)-(ØInt X ØInt))X Pi/4)X(Comp/1000000)X Peso Esp';
end;

function TCalculoPeso.Calcular_Bucha_flangeada: Double;
begin
  result := (((((diametroexterno * diametroexterno) - (diametrofuro * diametrofuro)) * (_numero_pi * 8.86 * comprimento))/4)+
            ((((diametrocorpo*diametrocorpo)- (diametrofuro*diametrofuro))* (_numero_pi * 8.86 * comprimento2))/4)) / 1000000;
  dsformula := 'Ø'+floattostr(diametroexterno)+'x'+floattostr(comprimento)+'x'+'Ø'+floattostr(diametrocorpo)+'x'+floattostr(comprimento2)+'xØ'+floattostr(diametrofuro)+_MM;
  dscalculo := ' ';
end;

function TCalculoPeso.calcular_chapa: Double;
begin
  result    := (comprimento * largura * espessura * qtpesoespecifico) / 1000000;
  dsformula := '# '+floattostr(espessura)+'x'+floattostr(largura)+'x' +floattostr(comprimento)+_mm;
  dscalculo := '(Esp X Larg X Comp X Peso Esp)/1000000';
end;

function TCalculoPeso.Calcular_Disco_Chapa: Double;
begin
  result    := ((diametro * diametro) * espessura * qtpesoespecifico) / 1000000;
  dsformula := 'Ø '+floattostr(diametro) + 'XEs:'+floattostr(espessura)+_mm;
  dscalculo := '((Ø X Ø) X Esp X Peso Esp)/1000000';
end;

function TCalculoPeso.Calcular_kilo_metro: Double;
begin
  result    := kilo * metro;
  dsformula := floattostr(kilo) +' kg/m x ' + floattostr(metro) + 'm';
  dscalculo := 'Kg/m X Metro';
end;

function TCalculoPeso.calcular_barra_chata: Double;
begin
  result    := (comprimento * largura * diametro * qtpesoespecifico) / 1000000;
  dsformula := '# '+floattostr(diametro)+'x'+floattostr(largura)+'x'+floattostr(comprimento)+_mm;
  dscalculo := '(Diam X Larg X Comp X Peso Esp)/1000000';
end;

function TCalculoPeso.calcular_barra_redonda: Double;
begin
  result    := ((diametro * diametro * _numero_pi * qtpesoespecifico)/4000000)* comprimento;
  dsformula := 'Ø '+floattostr(diametro)+'x' +floattostr(comprimento)+_mm;
  dscalculo := '((Ø X Ø X Pi X Peso Esp)/4000000) X Comp';
end;

function TCalculoPeso.calcular_barra_sextavada: Double;
begin
  result    := ((diametro * diametro * 3 * qtpesoespecifico)/3460000)* comprimento;
  dsformula := floattostr(diametro)+'x' +floattostr(comprimento)+_mm;
  dscalculo := '(Ø X Ø X 3 X Peso Esp)/3460000 X Comp';
end;

function TCalculoPeso.calcular_bobina: Double;
begin
  result    := (largura * espessura * qtpesoespecifico)/1000;
  dsformula := 'La:'+floattostr(largura)+'XEs:'+floattostr(espessura)+_mm;
  dscalculo := '(Larg X Esp X Peso Esp)/1000000';
end;

function TCalculoPeso.calcular_barra_quadrada: Double;
begin
  dsformula := 'Ø:'+floattostr(diametro)+'XCo:' +floattostr(comprimento)+_mm;
  result    := ((diametro * diametro * qtpesoespecifico)/1000000)* comprimento;
  dscalculo := '((Ø X Ø X Peso Esp)/1000000) X Comp';
end;

function TCalculoPeso.get_calculo_peso: Double;
begin
  Result := 0;
       if nmforma = _barra+' '+_chata                            then result := calcular_barra_chata
  else if (nmforma = _barra+' '+_redonda) or (nmforma = _TARUGO) then result := calcular_barra_redonda
  else if nmforma = _barra+' '+_quadrada                         then result := calcular_barra_quadrada
  else if nmforma = _barra+' '+_sextavada                        then result := calcular_barra_sextavada
  else if nmforma = _CHAPA                                   then result := calcular_chapa
  else if nmforma = _bobina                                  then result := calcular_bobina
  else if forma_outros                                       then result := Calcular_kilo_metro
  else if (nmforma = _BUCHA) or (nmforma = _ANEL+' '+_CHAPA) then result := calcular_bucha_anel_chapa
  else if nmforma = _DISCO+' '+_CHAPA                        then result := calcular_disco_chapa
  else if nmforma = _BUCHA+' '+_FLANGEADA                    then result := calcular_bucha_flangeada
  else if nmforma = _BUCHA+' '+_2+' '+_FLANGES               then result := calcular_bucha2flanges;
  if numultiplicar <> 0 then
  begin
    result := result * numultiplicar;
  end;
end;

function TCalculoPeso.forma_outros: Boolean;
begin
  result := (nmforma = _perfil) or
            (nmforma = _perfil+' U') or
            (nmforma = _perfil+' I') or
            (nmforma = _perfil+' T') or
            (nmforma = _perfil+' U ENRIJECIDO') or
            (nmforma = _perfil+' H') or
            (nmforma = _TUBO+' '+_quadrado) or
            (nmforma = _TUBO+' '+_REtangular) or
            (nmforma = _TUBO+' '+_REDONDO) or
            (nmforma = _TUBO) or
            (nmforma = _viga) or
            (nmforma = _cantoneira) or
            (nmforma = _BARRA+' '+_RETANGULAR);
end;

end.

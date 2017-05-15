unit uimprimirrelatoriopadrao;

interface

uses
  Classes, sysutils, windows, Controls, Dialogs,
  SqlExpr,
  udatahora, uTipo, uconstantes,
  classeInstrucaoSQL, classeAplicacao;

function ImpimirRelatorioPadrao1(cdreport: Integer; codigo: string; Hoje: boolean; dti: TDate = 0; dtf: TDate = 99999; bomostrarpreview:Boolean=true): boolean;overload;
function ImpimirRelatorioPadrao1(cdreport: Integer; codigo: string; parBloco: TInstrucaoSQL; dstitulo:string=''; dti: TDate = 0; dtf: TDate = 99999; codigo2: string=''; dssaida: string=''; email:string=''; listaemail:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):boolean;overload;

function ImpimirRelatorioPadrao1(cdreport: Integer; codigo: string; codigo2: string=''; dssaida: string=''; email:string=''; listaemail:string=''; dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):boolean;overload;
function ImpimirRelatorioPadrao1(cdreport: integer; dti, dtf: TDate;                    dssaida: string=''; email:string=''; listaemail:string=''; dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):boolean;overload;
function ImpimirRelatorioPadrao1(cdreport: Integer; codigo: string; dti: TDate; codigo2: string=''; dtf: TDate = 0; dssaida: string=''; email:string=''; listaemail:string=''; dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):boolean;overload;


implementation

uses
  rptestoquecompleto;

function ImpimirRelatorioPadrao1(cdreport: Integer; codigo: string; Hoje: boolean; dti: TDate = 0; dtf: TDate = 99999; bomostrarpreview:Boolean=true):boolean;
begin
   if Hoje then
   begin
     result := imprimir_relatorio(cdreport, '', codigo, tsBanco, tsBanco, 0, nil, '', '', '', '', '', bomostrarpreview)
   end
   else
   begin
     result := imprimir_relatorio(cdreport, '', codigo, dti    , dtf    , 0, nil, '', '', '', '', '', bomostrarpreview);
   end;
end;

function ImpimirRelatorioPadrao1(cdreport: Integer; codigo: string; parBloco: TInstrucaoSQL; dstitulo:string=''; dti: TDate = 0; dtf: TDate = 99999; codigo2: string=''; dssaida: string=''; email:string=''; listaemail:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):boolean;
begin
  result := imprimir_relatorio(cdreport, codigo2, codigo, dti, dtf, 0, parBloco, dssaida, email, listaemail, dstitulo, dsassunto, bomostrarpreview);
end;

function ImpimirRelatorioPadrao1(cdreport: Integer; codigo: string; codigo2: string=''; dssaida: string=''; email:string=''; listaemail:string=''; dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):boolean;
begin
   result := imprimir_relatorio(cdreport, codigo2, codigo, 0, 0, 0, nil, dssaida, email, listaemail, dstitulo, dsassunto, bomostrarpreview);
end;

function ImpimirRelatorioPadrao1(cdreport: Integer; codigo: string; dti: TDate; codigo2: string=''; dtf: TDate = 0; dssaida: string=''; email:string=''; listaemail:string=''; dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):boolean;
begin
   result := imprimir_relatorio(cdreport, codigo2, codigo, dti, dtf, 0, nil, dssaida, email, listaemail, dstitulo, dsassunto, bomostrarpreview);
end;

function ImpimirRelatorioPadrao1(cdreport:Integer; dti, dtf: TDate; dssaida: string=''; email:string=''; listaemail:string=''; dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):boolean;
begin
  result := imprimir_relatorio(cdreport, '', '', dti, dtf, 0, nil, dssaida, email, listaemail, dstitulo, dsassunto, bomostrarpreview);
end;

end.

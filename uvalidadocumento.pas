unit uvalidadocumento;

interface

uses classeempresa, sysutils, ustrings, uconstantes, dialogs, sqlexpr, classeretornasql;

function Formatacnpj    (nu:string):string;

implementation

function Formatacnpj(nu:string):string;
begin
  result := copy(nu, 01, 2)+'.'+
            copy(nu, 03, 3)+'.'+
            copy(nu, 06, 3)+'/'+
            copy(nu, 09, 4)+'-'+
            copy(nu, 13, 2);
end;

end.

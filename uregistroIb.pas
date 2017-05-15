unit uregistroIb;

interface

uses
  system.UITypes,
  Dialogs, forms, stdctrls, comctrls, sysutils, controls, classes, actnlist, ExtCtrls,
  DB, dbclient,
  uconstantes, ustrings, udatahora, uprogressbar, uinterbase,
  classeretornasql, classeempresa, classeusuario, classequery;

function  FinalizarTransacao  (cds:TClientDataSet):integer;overload;

implementation

uses uDtmMain;

function FinalizarTransacao(cds:TClientDataSet):integer;
var
  resposta : integer;
begin
  result := 0;
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    exit;
  end;
  resposta := messagedlg('Deseja salvar as alterações?', mtConfirmation, [mbNo, mbCancel], 0);
  case resposta of
    mrno : cds.CancelUpdates;
  end;
  result := resposta;
end;

end.

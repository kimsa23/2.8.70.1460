unit uimprimir643fatura;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB, ACBrBoleto,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeempresa, classeAplicacao, classequery, ClasseBoletoAcbr;

procedure ImprimirFatura(mtbl: TDataClient; qry: TClasseQuery);

implementation

Type TReport = class
  private
    mtbl: TDataClient;
    procedure CriarFields;
  public
    constructor create(mtbl2: TDataClient; qry2: TClasseQuery);
    procedure   gerar;
  end;

procedure ImprimirFatura(mtbl: TDataClient; qry: TClasseQuery);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, qry);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient; qry2: TClasseQuery);
begin
  mtbl := mtbl2;
  mtbl.CopyDataSet(qry2);
  CriarFields;
end;

procedure TReport.CriarFields;
var
  I: Integer;
begin
  for I := 0 to mtbl.m.FieldCount - 1 do
  begin
    //showmessage(mtbl.m.Fields[i].FieldName);
  end;
  exit;
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_nmcntcusto, ftString, 100);
  mtbl.m.FieldDefs.Add(_dshistorico, ftstring, 100);
  mtbl.m.FieldDefs.Add(_cdautpagto, ftinteger);
  mtbl.m.FieldDefs.Add(_dtemissao, ftDate);
  mtbl.m.FieldDefs.Add(_dtbaixa, ftdate);
  mtbl.m.FieldDefs.Add(_dtprorrogacao, ftdate);
  mtbl.m.FieldDefs.Add(_cdfornecedor, ftLargeint);
  mtbl.m.FieldDefs.Add(_nmfornecedor, ftstring, 100);
  mtbl.m.FieldDefs.Add(_nmempresa, ftstring, 100);
  mtbl.m.FieldDefs.Add(_vlautpagto, ftcurrency);
  mtbl.m.FieldDefs.Add(_VLSALDO, ftcurrency);
  mtbl.m.FieldDefs.Add(_nmtpcobranca, ftstring, 100);
  mtbl.m.FieldDefs.Add(_nuentrada, ftinteger);
  mtbl.m.IndexDefs.Add(_pk, _nmcntcusto, []);
  mtbl.m.IndexName := _pk;
  mtbl.m.CreateDataSet;
end;

procedure TReport.gerar;
var
  boletoacbr : TBoletoAcbr;
  Titulo : TACBrTitulo;
begin
  boletoacbr := tboletoacbr.create;
  titulo := TACBrTitulo.Create(boletoacbr.ACBrBoleto);
  try
    boletoacbr.setboleto.Select(mtbl.m.fieldbyname(_cdsetboleto).AsInteger);
    boletoacbr.conta.Select(boletoacbr.setboleto.cdconta);
    boletoacbr.ConfigurarCedente;
    boletoacbr.Configurarbanco;
    mtbl.m.First;
    while not mtbl.m.Eof do
    begin
      titulo.Vencimento     := mtbl.m.FieldByName(_dtvencimento).AsDateTime;
      titulo.NossoNumero    := mtbl.m.FieldByName(_nunossonumero).AsString;
      titulo.ValorDocumento := mtbl.m.FieldByName(_vlsaldo).AsCurrency;
      Titulo.Carteira       := boletoacbr.setboleto.nucarteira;
      mtbl.m.Edit;
      mtbl.m.FieldByName(_nunossonumero).AsString := boletoacbr.ACBrBoleto.Banco.MontarCampoNossoNumero(Titulo);
      mtbl.m.FieldByName(_NUCODIGOBARRA).AsString := boletoacbr.ACBrBoleto.Banco.MontarCodigoBarras(Titulo);
      mtbl.m.FieldByName(_dslinhadigitavel).AsString := boletoacbr.ACBrBoleto.Banco.MontarLinhaDigitavel(mtbl.m.FieldByName(_NUCODIGOBARRA).AsString, Titulo);
      //codcedente     := boletoacbr.ACBrBoleto.Banco.MontarCampoCodigoCedente(Titulo);
      //codbarras      := boletoacbr.ACBrBoleto.Banco.MontarCodigoBarras(Titulo);
      mtbl.m.Post;
      mtbl.m.Next;
    end;
  finally
    freeandnil(boletoacbr);
    freeandnil(titulo);
  end;
end;

end.

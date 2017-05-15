unit uordserv1wordentregasemcomprovante;

interface

uses sysutils, Variants,
  Wordxp,
  sqlexpr, 
  uconstantes, uregistro, udatahora,
  classeempresa, classeequipamento;

procedure Entregasemcomprovante(nuordserv: string; cdequipamento:integer);

implementation

procedure Entregasemcomprovante(nuordserv: string; cdequipamento:integer);
var
  Template, NewTemplate, ItemIndex :OleVariant;
  WordApplication1: TWordApplication;
  equipamento : tequipamento;
begin
  WordApplication1 := TWordApplication.Create(nil);
  equipamento     := tequipamento.create;
  try
    equipamento.Select(cdequipamento);
    equipamento.tpequipamento.Select(equipamento.cdtpequipamento);
    WordApplication1.Connect;
    WordApplication1.Visible := true;
    Template    := EmptyParam;
    NewTemplate := true;
    WordApplication1.Documents.AddOld(template, newtemplate);
    ItemIndex   := 1;
    with WordApplication1.Documents.Item(ItemIndex).Paragraphs.Last.Range do
    begin
      InsertAfter('Declaro para todos os fins de direito que recebi da '+Empresa.rzsocial+' o equipamento : '+equipamento.tpequipamento.nmtpequipamento);
      InsertAfter(' - Marca: '+qregistro.NomedoCodigo(_marca, equipamento.cdmarca)+' - Modelo: '+qregistro.NomedoCodigo(_modelo, equipamento.cdmodelo)+'; referente a Ordem de Serviço Nº '+nuordserv);
      InsertAfter('; sem devolver o respectivo "Comprovante de Entrega" de mesmo número que encontra-se extraviado.'#13);
      InsertAfter(''#13);
      InsertAfter(Empresa.endereco.nmmunicipio+', '+FormatDateTime(_dd_mm_yyyy, DtBanco)+#13);
      InsertAfter(''#13#13#13);
      InsertAfter('Ass.: ______________________________________________________________'#13#13#13);
      insertafter('Doc. Ident.: ______________________________________');
    end;
    WordApplication1.Disconnect;
  finally
    freeandnil(WordApplication1);
    freeandnil(equipamento);
  end;
end;

end.

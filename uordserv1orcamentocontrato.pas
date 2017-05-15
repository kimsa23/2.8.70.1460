unit uordserv1orcamentocontrato;

interface

uses sysutils, Variants,
  Wordxp,
  sqlexpr, classeaplicacao,
  DBClient, cxDBEdit,
  uconstantes, uregistro, udatahora,
  classeempresa, classeequipamento;

procedure OrcamentoContrato(nmcliente: string;cdequipamento: integer; memdssolucao : TcxDBMemo; cds, cdsdetail, cdsitdefapr: TClientdataset);

implementation

procedure OrcamentoContrato(nmcliente: string;cdequipamento: integer; memdssolucao : TcxDBMemo; cds, cdsdetail, cdsitdefapr :TClientdataset);
var
  Template, NewTemplate, ItemIndex :OleVariant;
  dtatendimento, lcatendimento, hratendimento, nmcontato, rzsocial, dsdefeito : string;
  WordApplication1: TWordApplication;
  equipamento : tequipamento;
begin
  WordApplication1 := TWordApplication.Create(nil);
  equipamento     := tequipamento.create;
  try
    equipamento.Select(cdequipamento);
    rzsocial      := nmcliente;
    nmcontato     := '';
    dtatendimento := formatdatetime(_dd_mm_yyyy, cds.fieldbyname(_dtentrada).AsDateTime);
    lcatendimento := '';
    hratendimento := formatdatetime(_hh_mm_ss, cds.fieldbyname(_hrentrada).AsDateTime);
    cdsitdefapr.First;
    while not cdsitdefapr.Eof do
    begin
      if cdsitdefapr.RecNo > 1 then
        dsdefeito := dsdefeito + ', ';
      dsdefeito := dsdefeito + cdsitdefapr.fieldbyname(_nmdefeito).AsString;
      cdsitdefapr.Next;
    end;
    WordApplication1.Connect;
    WordApplication1.Visible := true;
    Template    := EmptyParam;
    NewTemplate := true;

    WordApplication1.Documents.AddOld(template, newtemplate);
    ItemIndex   := 1;
    with WordApplication1.Documents.Item(ItemIndex).Paragraphs.Last.Range do
    begin
      InsertAfter('À: '+rzsocial+#13);
      InsertAfter('At: '+nmcontato+#13);
      InsertAfter('Assunto: Orçamento Impressora em Manutenção'#13);
      InsertAfter(''#13);
      InsertAfter(''#13);
      InsertAfter(''#13);
      InsertAfter(''#13);
      InsertAfter(Empresa.endereco.nmmunicipio+', '+formatdatetime(_dd, DtBanco)+' de '+formatdatetime(_mmmm, DtBanco)+' de '+formatdatetime(_yyyy, DtBanco)+#13#13);
      InsertAfter('Data do Atendimento: '+dtatendimento+#13);
      InsertAfter('Local do Atendimento: '+lcatendimento+#13);
      InsertAfter('Horário do Atendimento: '+hratendimento+#13);
      InsertAfter('Nº Chamado:'#13);
      if equipamento.nupatrimonio <> '' then
      begin
        InsertAfter('Nº Patrimônio: '+equipamento.nupatrimonio+#13);
      end;
      if equipamento.nuserie <> '' then
      begin
        InsertAfter('Nº Serie: '+equipamento.nuserie+#13);
      end;
      InsertAfter('Marca: '+qregistro.NomedoCodigo(_marca, equipamento.cdmarca)+#13);
      InsertAfter('Modelo: '+qregistro.NomedoCodigo(_modelo, equipamento.cdmodelo)+#13);
      if equipamento.cdcor <> 0 then
      begin
        InsertAfter('Cor: '+qregistro.NomedoCodigo(_cor, equipamento.cdcor)+#13);
      end;
      InsertAfter(''#13);
      InsertAfter('Defeito: '+dsdefeito+#13#13);
      InsertAfter('Solucao: '+memdssolucao.Text+#13#13);
      InsertAfter('Produtos:'#13);
      cdsDetail.First;
      while not cdsDetail.Eof do
      begin
        InsertAfter(cdsdetail.fieldbyname(_qtitem).Asstring+'  '+
                    cdsdetail.fieldbyname(_nmproduto).Asstring+'.......... R$ '+
                    cdsdetail.fieldbyname(_vltotal).AsString+#13);
        cdsdetail.Next;
      end;
      InsertAfter(''#13);
      InsertAfter('Valor a executar o serviço.................................R$ '+cds.fieldbyname(_vltotal).Asstring+#13);
      InsertAfter(#13#13#13);
      InsertAfter('-------------------------------------------'#13);
      InsertAfter(Empresa.rzsocial);
    end;
    WordApplication1.Disconnect;
  finally
    freeandnil(WordApplication1);
    freeandnil(equipamento);
  end;
end;

end.

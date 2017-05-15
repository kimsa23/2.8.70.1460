unit classeform;

interface

uses
  System.Actions, System.UITypes, dbclient, db,
  forms, ActnList, ExtCtrls, Gauges, dialogs, sysutils, StdCtrls, ComCtrls,
  uconstantes, uregistro, ustrings,
  ulocalizar, uimprimirrelatoriopadrao,
  classeempresa, classepedido,
  cxGridDBTableView, cxGridDBBandedTableView, cxDBEdit, cxGroupBox;

type
  TQForm = class
  private
  public
    class function btnfindClick(edt:TEdit; lbl: TLabel; tab:string=''):boolean;
    class function EditLocalizarExit(form: TForm; tbl, exibe:string; nmcomponente:string=''):boolean;
    class function ObterMultiSelect(tbl:string; tbv: TcxGridDBTableView): string;
    class procedure KeyPressControl(var key : char);
    class procedure mudarcontroles(form:TForm; status:boolean);
    class function ExisteComponente(form : TForm; nmcomponente: string):boolean;
    class function ExisteFormulario(nmform:string):boolean;
    class procedure ImprimirRelatorioLocalizar(grdDBtvw: TcxGridDBTableView; cdreport:integer; cdfield:string; bopreview:Boolean=true; botodos:Boolean=false);
    class function ObterIndiceTableView(nome:string; tbv: TcxGridDBBandedTableView):Integer;
    class procedure ConfigurarRDBTpPessoaPropertiesChange(rdbtppessoa: TcxDBRadioGroup; gbxJuridica: TcxGroupBox; lblrzsocial: TLabel; gbxFisica: TcxGroupBox);
    class procedure edtcdclientePropertiesButtonClick(form: TForm; DataSet: TDataset);
    class procedure edtcdtransportadoraPropertiesButtonClick(form: TForm; DataSet: TDataset);
    class procedure edtcdfornecedorPropertiesButtonClick(form: TForm; DataSet: TDataset);
    class function ExisteField(Dataset: TDataset; nmfield: string):boolean;
    class function IndiceComponente(form: TForm; nmcomponente: string):integer;
    //class function FormExiste(form:TForm; nmform : string):boolean;
  end;

implementation

uses uexportarexcel,
 ulocalizarCliente,
 ulocalizartransportadora,
 ulocalizarfornecedor,
 ulocalizarproduto;

class procedure TQForm.ConfigurarRDBTpPessoaPropertiesChange(rdbtppessoa: TcxDBRadioGroup; gbxJuridica: TcxGroupBox; lblrzsocial: TLabel; gbxFisica: TcxGroupBox);
begin
  if rdbTpPessoa.ItemIndex = -1 then
  begin
    exit
  end;
  if rdbTpPessoa.ItemIndex = 0 then
  begin
    gbxJuridica.BringToFront;
    lblrzsocial.Caption := maiuscula(__razao+' '+_social);
  end
  else if rdbTpPessoa.ItemIndex = 1 then
  begin
    gbxFisica.BringToFront;
    lblrzsocial.Caption := maiuscula(_nome+' '+_completo);
  end;
  gbxJuridica.Enabled := rdbTpPessoa.ItemIndex = 0;
  gbxJuridica.Visible := rdbTpPessoa.ItemIndex = 0;
  gbxFisica.Enabled   := rdbTpPessoa.ItemIndex <> 0;
  gbxFisica.Visible   := rdbTpPessoa.ItemIndex <> 0;
end;


class function TQForm.ObterIndiceTableView(nome:string; tbv: TcxGridDBBandedTableView):Integer;
var
  i : Integer;
begin
  result := -1;
  for i := 0 to tbv.ItemCount - 1 do
  begin
    if tbv.Bands[i].Caption = nome then
    begin
      result := i;
      Break;
    end;
  end;
end;

class function TQForm.ObterMultiSelect(tbl:string; tbv: TcxGridDBTableView): string;
var
  i : integer;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  Result := '';
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      if result <> '' then
      begin
        result := result + #13;
      end;
      result := result + FloatToStr(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cd+tbl).Index]);
    end;
  end;
end;

class procedure TQForm.ImprimirRelatorioLocalizar(grdDBtvw: TcxGridDBTableView; cdreport:integer; cdfield:string; bopreview:Boolean=true; botodos:Boolean=false);
var
  cdordproducao : Integer;
  cdtodos, codigo : string;
  pedido : TPedido;
  x, i : Integer;
begin
  if grdDBtvw.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  pedido := tpedido.create;
  try
    codigo          := '';
    cdtodos         := '';
    for i := 0 to grdDBtvw.ViewData.RecordCount -1 do
    begin
      if grdDBtvw.ViewData.Records[i].Selected then
      begin
        codigo := grdDBtvw.ViewData.Records[i].Values[grdDBtvw.GetColumnByFieldName(cdfield).Index];
        if botodos then
        begin
          if cdtodos <> '' then
          begin
            cdtodos := cdtodos + ',';
          end;
          cdtodos := cdtodos + codigo;
          continue;
        end;
        if cdreport = 503 then
        begin
          pedido.Select(StrToInt(codigo));
          pedido.itpedido.Ler(StrToInt(codigo));
          for x := 0 to pedido.itpedido.count - 1 do
          begin
            pedido.itpedido.items[x].ordproducao.select(qregistro.codigodointeiro(_ordproducao, pedido.itpedido.items[x].cditpedido, _cditpedido));
            cdordproducao := pedido.itpedido.items[x].ordproducao.cdordproducao;
            if cdordproducao = 0 then
            begin
              cdordproducao := pedido.itpedido.items[x].Gerar_Ordem_Producao(pedido.tppedido.cdtpordproducao);
            end;
            if bopreview then
            begin
              ImpimirRelatorioPadrao1(cdreport, IntToStr(cdordproducao))
            end
            else
            begin
              ImpimirRelatorioPadrao1(cdreport, IntToStr(cdordproducao), false, 0, 99999, false);
            end;
          end;
        end
        else
        begin
          if cdreport = 548 then
          begin
            codigo := 'where saida.cdsaida='+codigo+' and saida.cdempresa='+empresa.cdempresa.tostring;
          end;
          if bopreview then
          begin
            ImpimirRelatorioPadrao1(cdreport, codigo)
          end
          else
          begin
            ImpimirRelatorioPadrao1(cdreport, codigo, false, 0, 99999, false);
          end;
        end;
      end;
    end;
    if botodos then
    begin
      if cdreport = 548 then
      begin
        codigo := 'where saida.cdsaida in ('+cdtodos+') and saida.cdempresa='+empresa.cdempresa.tostring;
      end;
      if bopreview then
      begin
        ImpimirRelatorioPadrao1(cdreport, codigo)
      end
      else
      begin
        ImpimirRelatorioPadrao1(cdreport, codigo, false, 0, 99999, false);
      end;
    end;
  finally
    FreeAndNil(pedido);
  end;
end;

class function TQForm.IndiceComponente(form: TForm; nmcomponente: string): integer;
var
  I: Integer;
begin
  result := -1;
  for I := 0 to form.ComponentCount - 1 do
  begin
    if lowercase(form.Components[i].Name) = lowercase(nmcomponente) then
    begin
      result := i;
      break;
    end;
  end;
end;

class function TQForm.ExisteField(Dataset: TDataset; nmfield: string): boolean;
var
  I: Integer;
begin
  result := false;
  for I := 0 to Dataset.FieldCount - 1 do
  begin
    if lowercase(Dataset.fields[i].FieldName) = lowercase(nmfield) then
    begin
      result := true;
      break;
    end;
  end;
end;

class function TQForm.ExisteFormulario(nmform:string):boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to screen.FormCount -1 do
  begin
    if uppercase(screen.Forms[i].Name) = uppercase(nmform) then
    begin
      result := true;
      break;
    end;
  end;
end;

{
class function TQForm.FormExiste(form: TForm; nmform: string): boolean;
var
  i : integer;
begin
  result := false;
  if form = nil then
  begin
    exit;
  end;
  for I := 0 to screen.FormCount - 1 do
  begin
    if lowercase(screen.Forms[i].Name) = lowercase(nmform) then
    begin
      result := true;
      break;
    end;
  end;
end;
}

class function TQForm.ExisteComponente(form : TForm; nmcomponente: string):boolean;
var
  i : Integer;
begin
  result := False;
  for i := 0 to form.ComponentCount - 1 do
  begin
    if lowercase(form.Components[i].Name) = lowercase(nmcomponente) then
    begin
      result := True;
      Exit;
    end;
  end;
end;

class function TQForm.EditLocalizarExit(form: TForm; tbl, exibe:string; nmcomponente:string=''):boolean;
var
  nome, cd : string;
  y, x, i : integer;
begin
  x := 0;
  y := -1;
  result := false;
  tbl := lowercase(tbl);
  if nmcomponente = '' then
  begin
    for i := 0 to form.ComponentCount - 1 do
    begin
      if lowercase(form.Components[i].Name) = _edt+_cd+tbl then
      begin
        x := i;
      end;
      if lowercase(form.Components[i].Name) = _lbl+_nm+tbl then
      begin
        y := i;
      end;
    end;
  end
  else
  begin
    for i := 0 to form.ComponentCount - 1 do
    begin
      if lowercase(form.Components[i].Name) = _edt+_cd+lowercase(nmcomponente) then
      begin
        x := i;
      end;
      if lowercase(form.Components[i].Name) = _lbl+_nm+lowercase(nmcomponente) then
      begin
        y := i;
      end;
    end;
  end;
  cd := TEdit(form.Components[x]).Text;
  if (cd <> '') and (cd <> _0) then
  begin
    nome := NomedoCodigo(tbl, cd);
    if nome = '' then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_exibe)]), mterror, [mbok], 0);
      TEdit(form.Components[x]).setfocus;
      abort;
    end;
    if y > -1 then
    begin
      TLabel(form.Components[y]).caption := nome;
    end;
    result := true;
  end
  else if y > -1 then 
  begin
    TLabel(form.Components[y]).caption := '';
  end;
end;

class procedure TQForm.edtcdclientePropertiesButtonClick(form: TForm; DataSet: TDataset);
var
  codigo : LargeInt;
begin
  if (DataSet.State <> dsedit) and (DataSet.State <> dsinsert) then
  begin
    Exit;
  end;
  codigo := LocalizarCliente(true);
  if codigo = 0 then
  begin
    exit;
  end;
  if (DataSet.State <> dsinsert) and (DataSet.State <> dsedit) then
  begin
   DataSet.Edit;
  end;
  DataSet.fieldbyname(_CDCLIENTE).AsLargeInt := codigo;
  if ExisteField(DataSet, _nmcliente) then
  begin
    DataSet.FieldByName(_nmcliente).AsString  := qregistro.nomedocodigo(_cliente, codigo);
  end;
  if IndiceComponente(form, 'lblnmcliente') > 0 then
  begin
    TLabel(form.Components[IndiceComponente(form, 'lblnmcliente')]).Caption := qregistro.nomedocodigo(_cliente, codigo);
  end;
end;

class procedure TQForm.edtcdtransportadoraPropertiesButtonClick(form: TForm; DataSet: TDataset);
var
  codigo : LargeInt;
begin
  if (DataSet.State <> dsedit) and (DataSet.State <> dsinsert) then
  begin
    Exit;
  end;
  codigo := Localizartransportadora(true);
  if codigo = 0 then
  begin
    exit;
  end;
  if (DataSet.State <> dsinsert) and (DataSet.State <> dsedit) then
  begin
   DataSet.Edit;
  end;
  DataSet.fieldbyname(_CDtransportadora).AsLargeInt := codigo;
  if ExisteField(DataSet, _nmtransportadora) then
  begin
    DataSet.FieldByName(_nmtransportadora).AsString  := qregistro.nomedocodigo(_transportadora, codigo);
  end;
  if IndiceComponente(form, 'lblnmtransportadora') > 0 then
  begin
    TLabel(form.Components[IndiceComponente(form, 'lblnmtransportadora')]).Caption := qregistro.nomedocodigo(_transportadora, codigo);
  end;
end;

class procedure TQForm.edtcdfornecedorPropertiesButtonClick(form: TForm; DataSet: TDataset);
var
  codigo : LargeInt;
begin
  if (DataSet.State <> dsedit) and (DataSet.State <> dsinsert) then
  begin
    Exit;
  end;
  codigo := Localizarfornecedor(true);
  if codigo = 0 then
  begin
    exit;
  end;
  if (DataSet.State <> dsinsert) and (DataSet.State <> dsedit) then
  begin
   DataSet.Edit;
  end;
  DataSet.fieldbyname(_CDfornecedor).AsLargeInt := codigo;
  if ExisteField(DataSet, _nmfornecedor) then
  begin
    DataSet.FieldByName(_nmfornecedor).AsString  := qregistro.nomedocodigo(_fornecedor, codigo);
  end;
  if IndiceComponente(form, 'lblnmfornecedor') > 0 then
  begin
    TLabel(form.Components[IndiceComponente(form, 'lblnmfornecedor')]).Caption := qregistro.nomedocodigo(_fornecedor, codigo);
  end;
end;

class function TQForm.btnfindClick(edt:TEdit; lbl: TLabel; tab:string=''):boolean;
var
  cd: integer;
  tbl : string;
begin
  result := false;
  if tab = '' then
  begin
    tbl := copy(lowercase(edt.name), 6, length(edt.name) - 5)
  end
  else
  begin
    tbl := tab;
  end;

  if tbl = _plconta then
  begin
    cd := qregistro.CodigodoString(_plconta, Localizar(_plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel), _nunivel);
  end
  else if tbl = _cntcusto then
  begin
    cd := qregistro.CodigodoString(_cntcusto, Localizar(_cntcusto, _nunivel, _nmcntcusto, 'Centro de Custo', 'o', _nunivel), _nunivel);
  end
  else
  begin
    cd := Localizar(tbl);
  end;

  if cd = 0 then
  begin
    exit;
  end;

  edt.text := cd.tostring;

  if lbl = nil then
  begin
    result := true;
    exit;
  end;
  lbl.caption := qregistro.NomedoCodigo(tbl, cd);

  if (tbl = _cntcusto) or (tbl = _plconta) then
  begin
    edt.text := qregistro.StringdoCodigo(tbl, cd, _nunivel);
  end;

  result := true;
end;

class procedure TQForm.mudarcontroles(form:TForm; status:boolean);
var
  I: Integer;
begin
  for I := 0 to form.ComponentCount - 1 do
  begin
    if form.Components[i] is taction then
    begin
      TAction(form.components[i]).Enabled := status
    end
    else if form.Components[i] is TTreeView then
    begin
      TTreeView(form.components[i]).Enabled := status
    end
    else if form.Components[i] is Tpanel then
    begin
      Tpanel(form.components[i]).Enabled := status
    end
    else if form.Components[i] is TPageControl then
    begin
      TPageControl(form.components[i]).Enabled := status
    end
    else if form.Components[i] is TGauge then
    begin
      TGauge(form.Components[i]).Visible := not status;
    end;
  end;
end;

class procedure TQForm.KeyPressControl(var key : char);
begin
  if not (key in [_0, _1, _2, _3, _4, _5, _6, _7, _8, _9, char(8), char(13)]) then
  begin
    key := #0;
  end;
end;

end.

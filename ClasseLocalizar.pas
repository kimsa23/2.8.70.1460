unit ClasseLocalizar;

interface

uses Forms, StdCtrls, System.SysUtils,
  uregistro, uconstantes,
  data.db,
  cxCalc, cxTextEdit, cxButtonEdit, cxDBLookupComboBox, cxCalendar, cxMaskEdit,
  cxDropDownEdit, cxRadioGroup, cxSpinEdit, cxCheckBox,
  ulocalizarorcamento, ulocalizarordproducao;

type
  TLocalizar = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    class procedure edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora: TcxButtonEdit; lblnmtransportadora: TLabel);
    class procedure edtcdfornecedorPropertiesButtonClick(edtcdfornecedor: TcxButtonEdit; lblnmfornecedor: TLabel);
    class procedure edtcdclientePropertiesButtonClick(edtcdcliente: TcxButtonEdit; lblnmcliente: TLabel);
    class procedure edtnuplacaveiculoPropertiesButtonClick(edtnuplacaveiculo: TcxButtonEdit);
    class procedure edtcdctePropertiesButtonClick(edtcdcte: TcxButtonEdit);
    class procedure edtcdfuncionarioPropertiesButtonClick(edtcdfuncionario: TcxButtonEdit; lblnmfuncionario: TLabel);
    class procedure edtnuduplicataPropertiesButtonClick(edtnuduplicata: TcxButtonEdit);
    class procedure edtcdprodutoPropertiesButtonClick(edtcdproduto: TcxButtonEdit; lblnmproduto: TLabel);
    class procedure edtnupedidoPropertiesButtonClick(edtnupedido: TcxButtonEdit);
    class procedure edtcdorcamentoPropertiesButtonClick(edtcdorcamento: TcxButtonEdit);
    class procedure edtcdordproducaoPropertiesButtonClick(edtcdordproducao: TcxButtonEdit);
    class procedure LimparCriterio(form: TForm);
  published
    { published declarations }
  end;


implementation

uses ulocalizartransportadora,
  ulocalizarfornecedor,
  ulocalizarCliente,
  ulocalizarveiculo,
  ulocalizarcte,
  ulocalizarFuncionario,
  uLocalizarDuplicata,
  ulocalizarproduto,
  uLocalizarPedido;

class procedure TLocalizar.edtcdclientePropertiesButtonClick(edtcdcliente: TcxButtonEdit; lblnmcliente: TLabel);
var
  ccodigo: Largeint;
begin
  ccodigo:= Localizarcliente(false);
  if ccodigo= 0 then
  begin
    exit;
  end;
  edtcdcliente.text    := ccodigo.tostring;
  lblnmcliente.caption := qregistro.NomedoCodigo(_cliente, ccodigo);
end;

class procedure TLocalizar.edtcdctePropertiesButtonClick(edtcdcte: TcxButtonEdit);
var
  cd : integer;
begin
  cd := Localizarcte;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdcte.text := cd.tostring;
end;

class procedure TLocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor: TcxButtonEdit; lblnmfornecedor: TLabel);
var
  cd : LargeInt;
begin
  cd := Localizarfornecedor(false);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdfornecedor.text    := cd.tostring;
  lblnmfornecedor.caption := qregistro.NomedoCodigo(_fornecedor, cd);
end;

class procedure TLocalizar.edtcdfuncionarioPropertiesButtonClick(edtcdfuncionario: TcxButtonEdit; lblnmfuncionario: TLabel);
var
  cd : integer;
begin
  cd := Localizarfuncionario;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdfuncionario.text    := cd.tostring;
  lblnmfuncionario.caption := qregistro.NomedoCodigo(_funcionario, cd);
end;

class procedure TLocalizar.edtcdorcamentoPropertiesButtonClick(edtcdorcamento: TcxButtonEdit);
var
  cd : integer;
begin
  cd := Localizarorcamento;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdorcamento.text := cd.tostring;
end;

class procedure TLocalizar.edtcdordproducaoPropertiesButtonClick(edtcdordproducao: TcxButtonEdit);
var
  cd : integer;
begin
  cd := Localizarordproducao;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdordproducao.text := cd.tostring;
end;

class procedure TLocalizar.edtcdprodutoPropertiesButtonClick(edtcdproduto: TcxButtonEdit; lblnmproduto: TLabel);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := cd.tostring;
  lblnmproduto.caption := qregistro.NomedoCodigo(_produto, cd);
end;

class procedure TLocalizar.edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora: TcxButtonEdit; lblnmtransportadora: TLabel);
var
  cd : LargeInt;
begin
  cd := Localizartransportadora(false);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdtransportadora.text    := cd.tostring;
  lblnmtransportadora.caption := qregistro.NomedoCodigo(_transportadora, cd);
end;

class procedure TLocalizar.edtnuduplicataPropertiesButtonClick(edtnuduplicata: TcxButtonEdit);
var
  cd : integer;
begin
  cd := LocalizarDuplicata;
  if cd = 0 then
  begin
    exit;
  end;
  edtnuduplicata.Text := qregistro.StringdoCodigo(_duplicata, cd, _nuduplicata);
end;

class procedure TLocalizar.edtnupedidoPropertiesButtonClick(edtnupedido: TcxButtonEdit);
var
  cd : integer;
begin
  cd := Localizarpedido;
  if cd = 0 then
  begin
    exit;
  end;
  edtnupedido.text := qregistro.StringdoCodigo(_pedido, cd, _nupedido);
end;

class procedure TLocalizar.edtnuplacaveiculoPropertiesButtonClick(edtnuplacaveiculo: TcxButtonEdit);
var
  cd : integer;
begin
  cd := Localizarveiculo;
  if cd = 0 then
  begin
    exit;
  end;
  edtnuplacaveiculo.Text := qregistro.StringdoCodigo(_veiculo, cd, _nuplaca);
end;

class procedure TLocalizar.LimparCriterio(form: TForm);
var
  i : Integer;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if form.Components[i] is TcxCalcEdit then
    begin
      (form.Components[i] as TcxCalcEdit).Clear;
    end;
    if form.Components[i] is TcxTextEdit then
    begin
      (form.Components[i] as TcxTextEdit).Clear;
    end;
    if form.Components[i] is TcxButtonEdit then
    begin
      (form.Components[i] as TcxButtonEdit).Clear;
    end;
    if form.Components[i] is TcxLookupComboBox then
    begin
      (form.Components[i] as TcxLookupComboBox).Clear;
    end;
    if form.Components[i] is TcxDateEdit then
    begin
      (form.Components[i] as TcxDateEdit).Clear;
    end;
    if form.Components[i] is TcxMaskEdit then
    begin
      (form.Components[i] as TcxMaskEdit).Clear;
    end;
    if form.Components[i] is TcxComboBox then
    begin
      (form.Components[i] as TcxComboBox).Clear;
    end;
    if form.Components[i] is TcxSpinEdit then
    begin
      (form.Components[i] as TcxSpinEdit).Clear;
    end;
    if form.Components[i] is TcxCheckBox then
    begin
      (form.Components[i] as TcxCheckBox).Clear;
    end;
    if form.Components[i] is TcxRadioGroup then
    begin
      (form.Components[i] as TcxRadioGroup).Clear;
    end;
    if form.Components[i] is TLabel and ((form.Components[i] as TLabel).tag = 2) then
    begin
      (form.Components[i] as TLabel).caption := '';
    end;
  end;
end;

end.

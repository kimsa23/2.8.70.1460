unit uprodutoinsercaocdbarras;

interface

uses
  System.Actions, System.UITypes,
  Forms, dialogs, Buttons, ExtCtrls, ActnList, Windows, SysUtils, Classes,
  Mask, Graphics, Controls, StdCtrls,
  sqlexpr, Grids,
  uexportarexcel, ulocalizar, uregistro, uconstantes, ustrings,
  classeregistrainformacao, classeform, classeexecutasql,
  classeproduto, classegerar,
  cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, cxGroupBox, cxRadioGroup, Menus, cxButtons, cxCurrencyEdit,
  cxNavigator;

type
  Tfrmprodutoinsercaocdbarras = class(TForm)
    lblgrupo: TLabel;
    lblnmgrupo: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label33: TLabel;
    Label2: TLabel;
    act: TActionList;
    Label3: TLabel;
    edtvlcusto: TcxCalcEdit;
    edtvlvenda: TcxCalcEdit;
    edtprlucro: TcxCalcEdit;
    edtqtitem: TcxCalcEdit;
    edtcdalternativo: TcxTextEdit;
    grdDBTableView1: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    cds: TClientDataSet;
    edtnunivel: TcxButtonEdit;
    dts: TDataSource;
    btnok: TcxButton;
    btn2: TcxButton;
    gbx1: TcxGroupBox;
    rdbinserir: TcxRadioButton;
    rdbexcluir: TcxRadioButton;
    cdscdalternativo: TStringField;
    cdsnmproduto: TStringField;
    cdsnunivel: TStringField;
    cdsvlcusto: TCurrencyField;
    cdsvlvenda: TCurrencyField;
    cdsprlucro: TFloatField;
    cdsqtitem: TFloatField;
    grdDBTableView1cdalternativo: TcxGridDBColumn;
    grdDBTableView1nmproduto: TcxGridDBColumn;
    grdDBTableView1nunivel: TcxGridDBColumn;
    grdDBTableView1vlcusto: TcxGridDBColumn;
    grdDBTableView1vlvenda: TcxGridDBColumn;
    grdDBTableView1prlucro: TcxGridDBColumn;
    grdDBTableView1qtitem: TcxGridDBColumn;
    cdscdunidade: TIntegerField;
    cdscdtpproduto: TIntegerField;
    cdscdgrupo: TIntegerField;
    cdsborecuperaipi: TStringField;
    cdsborecuperaicms: TStringField;
    cdsborecuperapis: TStringField;
    cdsborecuperacofins: TStringField;
    cdsnusticms: TStringField;
    cdsalicms: TFloatField;
    cdsalipi: TFloatField;
    cdsalpis: TFloatField;
    cdsalcofins: TFloatField;
    cdscdtpitem: TIntegerField;
    cdscdorigem: TIntegerField;
    cdsnuclfiscal: TStringField;
    cdsbopis: TStringField;
    cdsboicms: TStringField;
    cdsboipi: TStringField;
    cdsboicmssubtrib: TStringField;
    procedure edtvlvendaExit(Sender: TObject);
    procedure edtcdalternativoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnunivelExit(Sender: TObject);
    procedure edtnunivelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnunivelPropertiesChange(Sender: TObject);
    procedure edtnunivelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnokClick(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private { Private declarations }
    grupo   : TGrupo;
    procedure CalcularPrecoVenda(sender:TObject);
    procedure InserirProduto;
  public
    { Public declarations }
  end;

var
  frmprodutoinsercaocdbarras: Tfrmprodutoinsercaocdbarras;

function Insercaocdbarras(cdsitentrada: TClientDataSet):boolean;

implementation

uses uDtmMain;

{$R *.dfm}

function Insercaocdbarras(cdsitentrada: TClientDataSet):boolean;
begin
  result := False;
  frmprodutoinsercaocdbarras := TFrmprodutoinsercaocdbarras.create(nil);
  try
    frmprodutoinsercaocdbarras.grupo := TGrupo.create;
    frmprodutoinsercaocdbarras.ShowModal;
    if frmprodutoinsercaocdbarras.ModalResult = mrok then
    begin
      frmprodutoinsercaocdbarras.inserirproduto;
      frmprodutoinsercaocdbarras.cds.First;
      while not frmprodutoinsercaocdbarras.cds.Eof do
      begin
        cdsitentrada.Insert;
        cdsitentrada.fieldbyname(_cddigitado).Asstring   := frmprodutoinsercaocdbarras.cds.fieldbyname(_cdalternativo).Asstring;
        cdsitentrada.Fieldbyname(_qtitem).AsFloat        := frmprodutoinsercaocdbarras.cds.fieldbyname(_qtitem).AsFloat;
        cdsitentrada.Fieldbyname(_vlunitario).AsCurrency := frmprodutoinsercaocdbarras.cds.fieldbyname(_vlcusto).AsCurrency;
        cdsitentrada.Fieldbyname(_vlvenda).AsCurrency    := frmprodutoinsercaocdbarras.cds.fieldbyname(_vlvenda).AsCurrency;
        cdsitentrada.Post;
        frmprodutoinsercaocdbarras.cds.Next;
      end;
      result := true;
    end;
  finally
    freeandnil(frmprodutoinsercaocdbarras);
  end;
end;

procedure Tfrmprodutoinsercaocdbarras.CalcularPrecoVenda(sender:TObject);
begin
  if (TComponent(sender).Name = _edt+_vlvenda) and (edtprlucro.Value <= 0) and (edtvlcusto.Value <= 0) and (edtvlvenda.Value > 0) then
  begin
    edtvlcusto.Value := edtvlvenda.Value;
    edtprlucro.Value := 0;
  end
  else if TComponent(sender).Name = _edt+_vlvenda then
  begin
    if edtvlcusto.Value = 0 then
    begin
      exit;
    end;
    edtprlucro.Value := ((edtvlvenda.Value / edtvlcusto.Value) - 1) * 100;
  end
  else
  begin
    edtvlvenda.Value := edtvlcusto.Value * ((edtprlucro.Value / 100) + 1);
  end;
end;

procedure Tfrmprodutoinsercaocdbarras.edtvlvendaExit(Sender: TObject);
begin
  calcularprecovenda(sender);
  colorexit(sender);
end;

procedure Tfrmprodutoinsercaocdbarras.InserirProduto;
var
  produto : TProduto;
begin
  produto := tproduto.create;
  try
    cds.First;
    while not cds.Eof do
    begin
      produto.cdproduto        := QGerar.GerarCodigo(_produto);
      produto.cdalternativo    := cdscdalternativo.AsString;
      produto.nmproduto        := cdsnmproduto.AsString;
      produto.cdunidade        := cdscdunidade.AsInteger;
      produto.cdtpproduto      := cdscdtpproduto.AsInteger;
      produto.cdgrupo          := cdscdgrupo.AsInteger;
      produto.nunivel          := cdsnunivel.AsString;
      produto.psbruto          := 1;
      produto.psliquido        := 1;
      produto.cdtpitem         := cdscdtpitem.asstring;
      produto.cdorigem         := cdscdorigem.AsString;
      produto.nusticms         := cdsnusticms.asstring;
      produto.boativar         := _s;
      produto.borecuperaicms   := cdsborecuperaicms.asstring;
      produto.borecuperaipi    := cdsborecuperaipi.asstring;
      produto.borecuperapis    := cdsborecuperapis.asstring;
      produto.borecuperacofins := cdsborecuperacofins.asstring;
      produto.nuclfiscal       := cdsnuclfiscal.asstring;
      produto.alipi            := cdsalipi.asfloat;
      produto.alicms           := cdsalicms.asfloat;
      produto.alpis            := cdsalpis.asfloat;
      produto.alcofins         := cdsalcofins.asfloat;
      produto.bopis            := cdsbopis.asstring;
      produto.boicms           := cdsboicms.asstring;
      produto.boipi            := cdsboipi.asstring;
      produto.vlvenda          := cdsvlvenda.AsCurrency;
      produto.vlcusto          := cdsvlcusto.AsCurrency;
      produto.AplicarConfiguracaoGrupo;
      produto.insert;
      cds.Next;
    end;
  finally
    freeandnil(produto);
    freeandnil(grupo);
  end;
end;

procedure Tfrmprodutoinsercaocdbarras.edtcdalternativoKeyPress(Sender: TObject; var Key: Char);
begin
  if (key <> #13) or (TEdit(sender).text = '') then
  begin
    exit;
  end;
  if rdbinserir.Checked then // insercao de registro
  begin
    // consistir duplicidade de codigo alternativo na tabela produto
    // consistir duplicidade de codigo alternativo na tabela temporaria
    if (cds.Locate(_cdalternativo, edtcdalternativo.Text, [])) or
       (codigoexiste(_produto, _cdalternativo, _string, edtcdalternativo.text)) then
    begin
      messagedlg('Duplicidade do código Alternativo.'#13'Preencha outro valor antes de prosseguir.', mtinformation, [mbok], 0);
      edtcdalternativo.SetFocus;
      exit;
    end;
    // consistir obrigatoriedade de grupo
    if lblnmgrupo.Caption = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_grupo]), mtinformation, [mbok], 0);
      edtnunivel.SetFocus;
      exit;
    end;
    // consistir obrigatoriedade de valor de compra
    if edtvlcusto.Value = 0 then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Valor+' '+_da+' '+_compra]), mtinformation, [mbok], 0);
      edtvlcusto.SetFocus;
      exit;
    end;
    // inserir registro
    cds.insert;
    cdscdalternativo.Asstring    := edtcdalternativo.Text;
    cdsnmproduto.AsString        := lblnmgrupo.Caption + ' ' + edtcdalternativo.Text;
    cdsnunivel.Asstring          := edtnunivel.text;
    cdsqtitem.AsFloat            := edtqtitem.Value;
    cdsvlcusto.AsCurrency        := edtvlcusto.value;
    cdsvlvenda.AsCurrency        := edtvlvenda.Value;
    cdsprlucro.AsFloat           := edtprlucro.value;
    cdscdunidade.asInteger       := grupo.cdunidade;
    cdscdtpproduto.asInteger      := grupo.cdtpproduto;
    cdscdgrupo.asInteger         := grupo.cdgrupo;
    cdsnunivel.asstring          := grupo.nunivel;
    cdscdtpitem.asstring         := grupo.cdtpitem;
    cdscdorigem.asstring         := grupo.cdorigem;
    cdsnusticms.asstring         := grupo.nusticms;
    cdsborecuperaicms.asstring   := grupo.borecuperaicms;
    cdsborecuperaipi.asstring    := grupo.borecuperaipi;
    cdsborecuperapis.asstring    := grupo.borecuperapis;
    cdsborecuperacofins.asstring := grupo.borecuperacofins;
    cdsnuclfiscal.asstring       := grupo.nuclfiscal;
    cdsalipi.asfloat             := grupo.alipi;
    cdsalicms.asfloat            := grupo.alicms;
    cdsalpis.asfloat             := grupo.alpis;
    cdsalcofins.asfloat          := grupo.alcofins;
    cdsbopis.asstring            := grupo.bopis;
    cdsboicms.asstring           := grupo.boicms;
    cdsboipi.asstring            := grupo.boipi;
    cds.Post;
    edtcdalternativo.Clear;
  end
  else if rdbexcluir.Checked then // exclusao de registro
  begin
    if cds.RecordCount = 0 then
    begin
      exit;
    end;
    cds.Delete;
    edtcdalternativo.Clear;
  end;
end;

procedure Tfrmprodutoinsercaocdbarras.edtnunivelExit(Sender: TObject);
var
  cd : string;
begin
  cd := edtnunivel.text;
  if cd = '' then
  begin
    lblnmgrupo.caption := '';
    colorexit(sender);
    exit;
  end;
  if not codigoexiste(_grupo, _nunivel, _string, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_grupo)]), mterror, [mbok], 0);
    edtnunivel.setfocus;
    abort;
  end;
  grupo.Select(qregistro.codigodoSTring(_grupo, cd, _nunivel));
  if grupo.cdtpproduto = 0 then
  begin
    messagedlg('O tipo de produto não está definido para o grupo '+cd+'.'#13'Favor alterar o grupo para continuar.', mterror, [mbok], 0);
    edtnunivel.setfocus;
    abort;
  end;
  if grupo.cdtpitem = '' then
  begin
    messagedlg('O tipo de ítem não está definido para o grupo '+cd+'.'#13'Favor alterar o grupo para continuar.', mterror, [mbok], 0);
    edtnunivel.setfocus;
    abort;
  end;
  if (grupo.cdtpitem = _0) and (grupo.nuclfiscal = '') then
  begin
    messagedlg('NCM não está definido para o grupo '+cd+'.'#13'Favor alterar o grupo para continuar.', mterror, [mbok], 0);
    edtnunivel.setfocus;
    abort;
  end;
  lblnmgrupo.Caption := grupo.nmgrupo;
  colorexit(sender);
end;

procedure Tfrmprodutoinsercaocdbarras.edtnunivelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnunivelPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmprodutoinsercaocdbarras.edtnunivelPropertiesChange(Sender: TObject);
var
  cd : string;
begin
  cd := edtnunivel.text;
  if cd = '' then
  begin
    lblnmgrupo.caption := '';
    exit;
  end;
  if not codigoexiste(_grupo, _nunivel, _string, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_grupo)]), mterror, [mbok], 0);
    edtnunivel.setfocus;
    abort;
  end;
  lblnmgrupo.Caption := NomedoCampo(_grupo, cd, _string, _nunivel);
end;

procedure Tfrmprodutoinsercaocdbarras.edtnunivelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: string;
begin
  cd := Localizar(_Grupo, _nunivel, _nmgrupo, _Grupo, 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  edtnunivel.text    := cd;
  lblnmgrupo.caption := NomedoCampo(_grupo, cd, _string, _nunivel);
end;

procedure Tfrmprodutoinsercaocdbarras.btnokClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfrmprodutoinsercaocdbarras.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmprodutoinsercaocdbarras.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmprodutoinsercaocdbarras.grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

end.

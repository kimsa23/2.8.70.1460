unit uNovoProduto;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, ComCtrls, Mask, Controls, ExtCtrls, Graphics, dialogs, sysutils,
  Classes, ActnList, StdCtrls, Buttons,
  DB,
  ustrings, urotinas, uregistro, uconstantes, uLocalizar,
  classeconsiste, classegerar, classeempresa, classeRegistro,
  classeregistrainformacao, classeproduto, classeform,
  cxMaskEdit,
  cxButtonEdit, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxLookAndFeelPainters, cxButtons, cxMemo, cxCheckBox, cxGroupBox,
  cxPC, cxGraphics, cxLookAndFeels, cxTextEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPCdxBarPopupMenu,
  cxCalc, cxLabel, cxDBLabel, Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmNovoProduto = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actSalvar1: TAction;
    actCancelar1: TAction;
    dts: TDataSource;
    bvl: TBevel;
    Label3: TLabel;
    edtnome: TcxDBTextEdit;
    Label8: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    lblcodigo: TLabel;
    edtcodigo: TcxDBTextEdit;
    ckbinsercao: TcxCheckBox;
    gbxcadastro: TcxGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    lblcodfornecedor: TLabel;
    lblcdalternativo: TLabel;
    Label21: TLabel;
    Label14: TLabel;
    cbxcdunidade: TcxDBLookupComboBox;
    cbxcdorigem: TcxDBLookupComboBox;
    cbxcdtpproduto: TcxDBLookupComboBox;
    cbxcdtpitem: TcxDBLookupComboBox;
    edtnuclfiscal: TcxDBTextEdit;
    edtdsproduto: TcxDBTextEdit;
    edtcdcodfornecedor: TcxDBTextEdit;
    edtcdalternativo: TcxDBTextEdit;
    btnaddunidade: TcxButton;
    gbxImposto: TcxGroupBox;
    ckbBORECUPERAIPI: TcxDBCheckBox;
    ckbBOIPI: TcxDBCheckBox;
    ckbBORECUPERAICMS: TcxDBCheckBox;
    ckbBOICMS: TcxDBCheckBox;
    ckbBORECUPERAPIS: TcxDBCheckBox;
    ckbBOPIS: TcxDBCheckBox;
    ckbBORECUPERACOFINS: TcxDBCheckBox;
    ckbBOCOFINS: TcxDBCheckBox;
    gbxcaracteristicas: TcxGroupBox;
    lblcor: TLabel;
    Label43: TLabel;
    cbxcdtamanho: TcxDBLookupComboBox;
    cbxcdcor: TcxDBLookupComboBox;
    btnaddcor: TcxButton;
    btnaddtamanho: TcxButton;
    gbxdimensionavel: TcxGroupBox;
    Label42: TLabel;
    Label45: TLabel;
    cbxcdmaterial: TcxDBLookupComboBox;
    cbxcdforma: TcxDBLookupComboBox;
    gbxpeso: TcxGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    edtpsbruto: TcxDBCalcEdit;
    edtpsliquido: TcxDBCalcEdit;
    gbxusarproduto: TcxGroupBox;
    ckbsaida: TcxDBCheckBox;
    ckbpedido: TcxDBCheckBox;
    ckbentrada: TcxDBCheckBox;
    ckbordcompra: TcxDBCheckBox;
    ckbordserv: TcxDBCheckBox;
    ckbpedidomaterial: TcxDBCheckBox;
    ckborcamento: TcxDBCheckBox;
    ckbmovto: TcxDBCheckBox;
    edtnunivel: TcxDBButtonEdit;
    lblnmgrupo: TcxLabel;
    cbxnustipi: TcxDBLookupComboBox;
    cbxnustpis: TcxDBLookupComboBox;
    cbxnustcofins: TcxDBLookupComboBox;
    lblaliquota: TLabel;
    lblrecupera: TLabel;
    lblimposto: TLabel;
    edtalicms: TcxDBCalcEdit;
    edtalipi: TcxDBCalcEdit;
    edtalpis: TcxDBCalcEdit;
    edtalcofins: TcxDBCalcEdit;
    lblCDBCCALCULOCREDITO: TLabel;
    edtCDBCCALCULOCREDITO: TcxDBTextEdit;
    qry: TFDQuery;
    lblsituacaotributaria: TLabel;
    cbxnusticms: TcxDBLookupComboBox;
    Label1: TLabel;
    Label34: TLabel;
    edtVLCUSTO: TcxDBCalcEdit;
    Label33: TLabel;
    edtVLVENDA: TcxDBCalcEdit;
    procedure actSalvar1Execute(Sender: TObject);
    procedure actCancelar1Execute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure cbxcdtpprodutoPropertiesChange(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nexcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpprodutoEnter(Sender: TObject);
    procedure cbxcdunidadeEnter(Sender: TObject);
    procedure cbxcdcorEnter(Sender: TObject);
    procedure cbxcdtamanhoEnter(Sender: TObject);
    procedure cbxcdformaEnter(Sender: TObject);
    procedure cbxcdmaterialEnter(Sender: TObject);
    procedure edtnomeExit(Sender: TObject);
    procedure edtcodigoExit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure btnaddunidadeClick(Sender: TObject);
    procedure btnaddcorClick(Sender: TObject);
    procedure btnaddtamanhoClick(Sender: TObject);
    procedure edtnunivelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnunivelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure edtnunivelExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private      { Private declarations }
    produto : TProduto;
    registro : TRegistro;
    tbl : string;
    procedure setrecord(cdtipo:integer);
    procedure setgrupo(cdgrupo:integer);
    procedure set_usar_produto_em;
  public  { Public declarations }
  end;

var
  frmNovoProduto: TfrmNovoProduto;

function NovoProduto(nmproduto:string; var codigo:integer; boinserir:Boolean=false):boolean;

implementation

uses uDtmMain, uNovoTabela;

{$R *.DFM}

const
  exibe    = 'Produto';

function NovoProduto(nmproduto:string; var codigo:integer; boinserir:Boolean=false):boolean;
begin
  result := false;
  frmnovoproduto := TFrmNovoProduto.Create(nil);
  try
    frmnovoproduto.ckbinsercao.Visible         := boinserir;
    frmnovoproduto.ckbBORECUPERAPIS.Visible    := Empresa.tpregime = _R;
    frmnovoproduto.ckbBORECUPERACOFINS.Visible := Empresa.tpregime = _R;
    frmnovoproduto.ckbBORECUPERAIPI.Visible    := empresa.tpregime <> _s;
    frmnovoproduto.ckbBORECUPERAICMS.Visible   := empresa.tpregime <> _s;
    frmnovoproduto.produto                     := TProduto.create;
    frmnovoproduto.produto.nmproduto           := nmproduto;
    frmnovoproduto.lblcdalternativo.caption    := QRegistro.CampodoCampo(_campo, _nmcampo, _CDALTERNATIVO, _nmdisplayabrev, true);
    if not frmnovoproduto.qry.Active then
    begin
      frmnovoproduto.qry.Open;
    end;
    repeat
      frmnovoproduto.ShowModal;
      codigo := 0;
      if frmnovoproduto.ModalResult = mrok then
      begin
        codigo := frmnovoproduto.qry.Fieldbyname(_cdproduto).AsInteger;
        result := true;
      end;
    until (frmnovoproduto.ckbinsercao.Checked = False) or (frmnovoproduto.ModalResult <> mrok);
  finally
    freeandnil(frmnovoproduto);
  end;
end;

procedure TFrmNovoProduto.setrecord(cdtipo:integer);
begin
  if cdtipo = 0 then
  begin
    exit;
  end;
  produto.tpproduto.Select(cdtipo);
  gbxdimensionavel.Visible   := produto.tpproduto.bodimensional = _s;
  gbxcaracteristicas.Visible := PRODUTO.tpproduto.bocaracteristicas = _s;
end;

procedure TfrmNovoProduto.set_usar_produto_em;
begin
  ckbsaida.Visible     := empresa.faturamento.saida.bo;
  ckbpedido.Visible    := empresa.comercial.pedido.bo;
  ckborcamento.Visible := empresa.comercial.orcamento.bo;
  ckbordcompra.Visible := empresa.aquisicao.ordcompra.bo;
  ckbordserv.Visible   := empresa.ordserv.bo;
  ckbmovto.Visible     := empresa.material.movto.bo;
  ckbpedidomaterial.Visible := empresa.aquisicao.pedidomaterial.bo;
end;

procedure TfrmNovoProduto.actSalvar1Execute(Sender: TObject);
begin
  if (not empresa.material.produto.bonmrepetido) and produto.existeNomeProduto(edtnome.Text, qry.fieldbyname(_cdproduto).AsString) then
  begin
    messagedlg('Produto '+edtnome.Text+' já existe no cadastro.'#13'Altere o nome para poder continuar.', mtInformation, [mbok], 0);
    edtnome.SetFocus;
    abort;
  end;
  if edtnome.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_nome+' '+_do+' '+_produto]), mtinformation, [mbok], 0);
    edtnome.SetFocus;
    Abort;
  end;
  if edtnunivel.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_do+' '+_grupo]), mtinformation, [mbok], 0);
    edtnunivel.SetFocus;
    abort;
  end;
  if cbxcdtpitem.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_tipo+' '+_de+' '+__item]), mtinformation, [mbok], 0);
    cbxcdtpitem.SetFocus;
    abort;
  end;
  if cbxcdtpproduto.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtpproduto.SetFocus;
    abort;
  end;
  if cbxcdorigem.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Origem]), mtinformation, [mbok], 0);
    cbxcdorigem.SetFocus;
    abort;
  end;
  if BooleandoCodigo(_tpitem, qry.Fieldbyname(_cdtpitem).AsString, _bonuclfiscal) and (edtnuclfiscal.Text = '') then
  begin
    messagedlg('NCM é um campo obrigatório quando o tipo de item for "'+cbxcdtpitem.Text+'".', mtInformation, [mbok], 0);
    edtnuclfiscal.SetFocus;
    abort;
  end;
  if (edtnuclfiscal.Text <> _00) and (edtnuclfiscal.Text = StringOfChar(_0, 9)) then
  begin
    messagedlg('Conteúdo '+edtnuclfiscal.Text+' não é permitido no NCM.', mtInformation, [mbok], 0);
    edtnuclfiscal.SetFocus;
    abort;
  end;
  if cbxcdunidade.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Unidade]), mtinformation, [mbok], 0);
    cbxcdunidade.SetFocus;
    abort;
  end;
  if (edtnuclfiscal.Text <> '') and (length(edtnuclfiscal.Text) <> 8) and (length(edtnuclfiscal.Text) <> 0) then
  begin
    messagedlg('NCM deve ter 8 caracteres.', mterror, [mbok], 0);
    qry.fieldbyname(_nuclfiscal).FocusControl;
    abort;
  end;
  if not Empresa.material.produto.bocodfornecedorunico and (codigoexiste(_produto, _cdcodfornecedor, _string, edtcdcodfornecedor.Text)) then
  begin
    messagedlg('Código do fornecedor duplicado com o produto '+CodigodoCampo(_produto, edtcdcodfornecedor.Text, _cdcodfornecedor)+'.'#13'Digite outro código de fornecedor para continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  if (cbxnusticms.Text = '') and
     (cbxcdtpitem.EditValue <> _8) and
     (cbxcdtpitem.EditValue <> _7) and
     (cbxcdtpitem.EditValue <> _1) and
     (cbxcdtpitem.EditValue <> _4) and
     (cbxcdtpitem.EditValue <> _99) and
     (cbxcdtpitem.EditValue <> _9) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__situacao+' '+__Tributaria]), mtinformation, [mbok], 0);
    qry.fieldbyname(_nusticms).FocusControl;
    abort;
  end;
  if (not empresa.material.produto.bonmrepetido) and produto.existeNomeProduto(edtnome.Text, qry.fieldbyname(_cdproduto).AsString) then
  begin
    messagedlg('Produto '+edtnome.Text+' já existe no cadastro.'#13'Altere o nome para poder continuar.', mtInformation, [mbok], 0);
    edtnome.SetFocus;
    abort;
  end;
  qry.FieldByName(_nunivel).asstring := NomedoCodigo(_grupo, qry.fieldbyname(_cdgrupo).AsString, _nunivel);
  produto.nuclfiscal := edtnuclfiscal.Text;
  produto.nucest     := '';
  produto.checkCodigoCEST;
  qry.fieldbyname(_nucest).asstring := produto.nucest;
  qry.post;
  self.ModalResult := mrok;
end;

procedure TfrmNovoProduto.actCancelar1Execute(Sender: TObject);
begin
  qry.cancel;
  close;
end;

procedure TfrmNovoProduto.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure TfrmNovoProduto.qryBeforePost(DataSet: TDataSet);
  function consistecdalternativo:boolean;
  begin
    if (codigoexiste(_produto, _cdalternativo, _string, DataSet.fieldbyname(_cdalternativo).asstring)) and
       (CodigodoCampo(_produto, DataSet.fieldbyname(_cdalternativo).asstring, _cdalternativo) <> DataSet.fieldbyname(_cdproduto).asstring) then
    begin
      messagedlg('Código alternativo duplicado com o produto '+CodigodoCampo(_produto, DataSet.fieldbyname(_cdalternativo).asstring, _cdalternativo)+'.'#13+
                 'Digite outro código alternativo para continuar.', mtinformation, [mbok], 0);
      DataSet.FieldByName(_cdalternativo).FocusControl;
      abort;
    end;
    result := true;
  end;
  function consistecodfornecedor:boolean;
  begin
    if not Empresa.material.produto.bocodfornecedorunico and
      (codigoexiste(_produto, _cdcodfornecedor, _string, DataSet.fieldbyname(_cdcodfornecedor).asstring)) and
      (CodigodoCampo(_produto, DataSet.fieldbyname(_cdcodfornecedor).asstring, _cdcodfornecedor) <> DataSet.fieldbyname(_cdproduto).asstring) then
    begin
      messagedlg('Código do fornecedor duplicado com o produto '+CodigodoCampo(_produto, DataSet.fieldbyname(_cdcodfornecedor).asstring, _cdcodfornecedor)+'.'#13+
                 'Digite outro código de fornecedor para continuar.', mtinformation, [mbok], 0);
      DataSet.FieldByName(_cdcodfornecedor).FocusControl;
      abort;
    end;
    result := true;
  end;
  function consistecdunidade:boolean;
  begin
    if DataSet.fieldbyname(_cdunidade).isnull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_da+' '+_unidade]), mtinformation, [mbok], 0);
      DataSet.FieldByName(_cdunidade).FocusControl;
      abort;
    end;
    result := true;
  end;
  function consistecdorigem:boolean;
  begin
    if DataSet.fieldbyname(_cdorigem).isnull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_da+' '+_origem]), mtinformation, [mbok], 0);
      DataSet.FieldByName(_cdorigem).FocusControl;
      abort;
    end;
    result := true;
  end;
  function ConsisteClasseFiscal:boolean;
  begin
    if (DataSet.fieldbyname(_nuclfiscal).AsString <> _00) and
       (DataSet.fieldbyname(_nuclfiscal).AsString <> '') and
       (length(DataSet.FieldByName(_nuclfiscal).AsString) <> 8) then
    begin
      messagedlg('NCM deve ter 8 caracteres.', mterror, [mbok], 0);
      DataSet.fieldbyname(_nuclfiscal).FocusControl;
      abort;
    end;
    result := true;
  end;
begin
  consistecodfornecedor;
  consistecdalternativo;
  Consistecdunidade;
  ConsisteClasseFiscal;
  consistecdorigem;
  if Dataset.FieldByName(_cdproduto).AsString = '' then
  begin
    Dataset.FieldByName(_cdproduto).Asstring := GerarCodigo(_produto);
  end;
  //dataset.fieldbyname(_cditem).asstring    := produto.ConfigurarCdItem(dataset.fieldbyname(_cdgrupo).asstring, dataset.fieldbyname(_cdgrupo).Value, dataset.fieldbyname(_cditem).AsInteger);
  registro.set_update(DataSet);
end;

procedure TfrmNovoProduto.qryNewRecord(DataSet: TDataSet);
begin
  set_bo_value(DataSet);
  DataSet.FieldByName(_VLCUSTO).AsFloat           := 0;
  DataSet.FieldByName(_VLVENDA).AsFloat           := 0;
  DataSet.FieldByName(_QTESTOQUE).AsFloat         := 0;
  DataSet.FieldByName(_QTPEDIDO).AsFloat          := 0;
  DataSet.FieldByName(_qtdisponivel).AsFloat      := 0;
  DataSet.FieldByName(_QTESTMIN).AsFloat          := 0;
  DataSet.FieldByName(_QTESTMAX).AsFloat          := 0;
  DataSet.FieldByName(_QTESTPREV).AsFloat         := 0;
  DataSet.FieldByName(_PRLUCRO).AsFloat           := 0;
  DataSet.FieldByName(_VLCUSTOMEDIO).AsFloat      := 0;
  DataSet.FieldByName(_PRLUCROATACADO).AsFloat    := 0;
  DataSet.FieldByName(_PRLUCROESPECIAL).AsFloat   := 0;
  //if empresa.material.produto.bopesoautomatico then
  //begin
    DataSet.FieldByName(_psliquido).AsFloat         := 1;
    DataSet.FieldByName(_psbruto).AsFloat           := 1;
  //end;
  dataset.fieldbyname(_nusticms).asstring := _90;
  dataset.fieldbyname(_borecuperaicms).AsString   := _N;
  dataset.fieldbyname(_borecuperaipi).AsString    := _N;
  dataset.fieldbyname(_borecuperapis).AsString    := _N;
  dataset.fieldbyname(_borecuperacofins).AsString := _N;
  dataset.fieldbyname(_boativar).AsString           := _S;
  dataset.FieldByName(_boicms).AsString             := _N;
  dataset.fieldbyname(_bosaida).AsString            := _S;
  dataset.fieldbyname(_boentrada).AsString          := _S;
  dataset.fieldbyname(_bopedido).AsString           := _S;
  dataset.fieldbyname(_boordcompra).AsString        := _S;
  dataset.fieldbyname(_boorcamento).AsString        := _S;
  dataset.fieldbyname(_bopedidomaterial).AsString   := _S;
  dataset.fieldbyname(_boordserv).AsString          := _S;
  dataset.fieldbyname(_bomovto).AsString            := _S;
end;

procedure TfrmNovoProduto.FormDestroy(Sender: TObject);
begin
  produto.free;
  registro.Destroy;
end;

procedure TfrmNovoProduto.FormShow(Sender: TObject);
begin
  registro                    := tregistro.create(self, tbl, exibe, _o, qry, dts, nil);
  registro.Novo(nil);
  qry.FieldByName(_nmproduto).AsString := produto.nmproduto;
end;

procedure TfrmNovoProduto.cbxcdtpprodutoPropertiesChange(Sender: TObject);
begin
  if cbxcdtpproduto.Text = '' then
  begin
    Exit;
  end;
  setrecord(qregistro.CodigodoNomeInteiro(_tpproduto, cbxcdtpproduto.Text));
end;

procedure TfrmNovoProduto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmNovoProduto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmNovoProduto.nexcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmNovoProduto.setgrupo(cdgrupo:integer);
var
  grupo : TGrupo;
begin
  if cdgrupo = 0 then
  begin
    Exit;
  end;
  grupo := TGrupo.create;
  try
    grupo.Select(cdgrupo);
    lblnmgrupo.Caption := grupo.nmgrupo;
    if grupo.nustpis <> '' then
    begin
      qry.FieldByName(_nustpis).AsString := grupo.nustpis;
    end;
    if grupo.nustcofins <> '' then
    begin
      qry.FieldByName(_nustcofins).AsString := grupo.nustcofins;
    end;
    if grupo.cdbccalculocredito <> '' then
    begin
      qry.FieldByName(_CDBCCALCULOCREDITO).AsString := grupo.cdbccalculocredito;
    end;
    if grupo.cdtpproduto <> 0  then
    begin
      qry.fieldbyname(_cdtpproduto).asInteger := grupo.cdtpproduto;
    end;
    if grupo.nuclfiscal <> '' then
    begin
      qry.fieldbyname(_NUCLFISCAL).asstring := grupo.nuclfiscal;
    end;
    if grupo.CDORIGEM <> '' then
    begin
      qry.fieldbyname(_CDORIGEM).asstring := grupo.CDORIGEM;
    end;
    if grupo.nusticms <> '' then
    begin
      qry.FieldByName(_nusticms).AsString := grupo.nusticms;
    end;
    if grupo.cdtpitem <> '' then
    begin
      qry.fieldbyname(_CDTPITEM).asstring := grupo.cdtpitem;
    end;
    if grupo.cdunidade <> 0 then
    begin
      qry.fieldbyname(_CDUNIDADE).asInteger := grupo.cdunidade;
    end;
    if grupo.cdmaterial <> 0 then
    begin
      qry.fieldbyname(_cdmaterial).asInteger := grupo.cdmaterial;
    end;
    if grupo.cdforma <> 0 then
    begin
      qry.fieldbyname(_cdforma).asInteger := grupo.cdforma;
    end;
    qry.fieldbyname(_ALIPI).AsFloat           := grupo.ALIPI;
    qry.fieldbyname(_ALICMS).AsFloat          := grupo.ALICMS;
    qry.fieldbyname(_ALPIS).AsFloat           := grupo.ALPIS;
    qry.fieldbyname(_ALCOFINS).AsFloat        := grupo.alcofins;
    qry.fieldbyname(_BORECUPERAICMS).asstring := grupo.borecuperaicms;
    qry.fieldbyname(_BORECUPERAIPI).asstring  := grupo.borecuperaipi;
    qry.fieldbyname(_BORECUPERAPIS).asstring  := grupo.borecuperapis;
    qry.fieldbyname(_BOIPI).asstring          := grupo.boipi;
    qry.fieldbyname(_BOICMS).asstring         := grupo.boicms;
    qry.fieldbyname(_BOPIS).asstring          := grupo.bopis;
    qry.fieldbyname(_BORECUPERACOFINS).asstring := grupo.borecuperacofins;
    qry.fieldbyname(_BOCOFINS).asstring       := grupo.bocofins;
    qry.fieldbyname(_BOGERARLIVROPRODUCAO).AsString := grupo.bogerarlivroproducao;
  finally
    freeandnil(grupo);
    setrecord(qry.fieldbyname(_cdtpproduto).asinteger);
  end;
end;

procedure TfrmNovoProduto.FormCreate(Sender: TObject);
begin
  set_usar_produto_em;

  ckbBORECUPERAIPI.Visible             := empresa.tpregime <> _s;
  ckbBOIPI.Visible                     := empresa.tpregime <> _s;
  edtALIPI.Visible                     := empresa.tpregime <> _s;
  cbxnustipi.Visible                   := empresa.tpregime <> _S;

  ckbBORECUPERAICMS.Visible            := empresa.tpregime <> _s;
  ckbBOICMS.Visible                    := empresa.tpregime <> _s;
  edtALICMS.Visible                    := empresa.tpregime <> _S;

  ckbBORECUPERAPIS.Visible             := empresa.tpregime = _R;
  ckbBOPIS.Visible                     := empresa.tpregime <> _s;
  edtALPIS.Visible                     := empresa.tpregime <> _S;
  cbxnustpis.Visible                   := empresa.tpregime <> _S;

  lblCDBCCALCULOCREDITO.Visible        := empresa.tpregime = _R;
  edtCDBCCALCULOCREDITO.Visible        := empresa.tpregime = _R;

  ckbBORECUPERACOFINS.Visible          := empresa.tpregime = _R;
  ckbBOCOFINS.Visible                  := empresa.tpregime <> _S;
  edtalcofins.visible                  := empresa.tpregime <> _S;
  cbxnustcofins.Visible                := empresa.tpregime <> _S;

  lblaliquota.Visible                  := empresa.tpregime <> _s;
  lblrecupera.Visible                  := empresa.tpregime <> _s;

  cbxcdtpproduto.Properties.ListSource := abrir_tabela(_tpproduto);
  cbxcdunidade.Properties.ListSource   := abrir_tabela(_unidade);
  cbxcdtpitem.Properties.ListSource    := abrir_tabela(_tpitem);
  cbxcdorigem.Properties.ListSource    := abrir_tabela(_origem);
  cbxnusticms.Properties.ListSource    := abrir_tabela(_sticms);
  cbxnustipi.Properties.ListSource     := abrir_tabela(_stipi);
  cbxnustpis.Properties.ListSource     := abrir_tabela(_stpis);
  cbxnustcofins.Properties.ListSource  := abrir_tabela(_stcofins);
  cbxcdcor.Properties.ListSource       := abrir_tabela(_cor);
  cbxcdtamanho.Properties.ListSource   := abrir_tabela(_tamanho);
  cbxcdforma.Properties.ListSource     := abrir_tabela(_forma);
  cbxcdmaterial.Properties.ListSource  := abrir_tabela(_material);
  tbl := _produto;
end;

procedure TfrmNovoProduto.cbxcdtpprodutoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpproduto);
end;

procedure TfrmNovoProduto.cbxcdunidadeEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_unidade);
end;

procedure TfrmNovoProduto.cbxcdcorEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_cor);
end;

procedure TfrmNovoProduto.cbxcdtamanhoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tamanho);
end;

procedure TfrmNovoProduto.cbxcdformaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_forma);
end;

procedure TfrmNovoProduto.cbxcdmaterialEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_material);
end;

procedure TfrmNovoProduto.edtnomeExit(Sender: TObject);
begin
  if (edtnome.Text <> '') and (not empresa.material.produto.bonmrepetido) and
     produto.existeNomeProduto(edtnome.Text, qry.fieldbyname(_cdproduto).AsString) then
  begin
    messagedlg('Produto '+edtnome.Text+' já existe no cadastro.'#13'Altere o nome para poder continuar.', mtInformation, [mbok], 0);
    edtnome.SetFocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmNovoProduto.edtnunivelExit(Sender: TObject);
var
  cdgrupo : string;
begin
  if edtnunivel.Text = '' then
  begin
    lblnmgrupo.Clear;
    colorexit(sender);
    Exit;
  end;
  cdgrupo := CodigodoCampo(_grupo, edtnunivel.Text, _nunivel);
  if cdgrupo = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnunivel.Text, maiuscula(_grupo)]), mterror, [mbok], 0);
    edtnunivel.clear;
    qry.FieldByName(_nunivel).clear;
    edtnunivel.setfocus;
    Abort;
  end;
  qry.fieldbyname(_cdgrupo).AsString := cdgrupo;
  if not produto.podeAdicionarProdutoGrupo(qry.fieldbyname(_cdgrupo).AsString) then
  begin
    MessageDlg('Este grupo não permite adicionar produto(s) nele.', mtInformation, [mbOK], 0);
    edtnunivel.clear;
    qry.FieldByName(_nunivel).clear;
    edtnunivel.setfocus;
    Abort;
  end;
  setgrupo(qry.fieldbyname(_cdgrupo).AsInteger);
  colorexit(sender);
end;

procedure TfrmNovoProduto.edtnunivelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnunivelPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmNovoProduto.edtnunivelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar(_grupo, _nunivel, _nmgrupo, maiuscula(_Grupo), 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  qry.FieldByName(_nunivel).AsString := cd;
  edtnunivelExit(edtnunivel);
  colorenter(sender);
end;

procedure TfrmNovoProduto.edtcodigoExit(Sender: TObject);
begin
  if (edtcodigo.Text <> '') and CodigoExiste(_produto, edtcodigo.Text) then
  begin
    MessageDlg('Código do produto já existe.', mtInformation, [mbOK], 0);
    edtcodigo.SetFocus;
    Abort;
  end;
  colorexit(sender);
end;

procedure TfrmNovoProduto.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmNovoProduto.btnaddunidadeClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_unidade, Maiuscula(_Unidade));
  if codigo <> '' then
  begin
    abrir_tabela(_unidade);
    qry.fieldbyname(_cdunidade).AsString := codigo;
  end;
end;

procedure TfrmNovoProduto.btnaddcorClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_cor, Maiuscula(_cor));
  if codigo <> '' then
  begin
    abrir_tabela(_cor);
    qry.fieldbyname(_cdcor).AsString := codigo;
  end;
end;

procedure TfrmNovoProduto.btnaddtamanhoClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_tamanho, Maiuscula(_tamanho));
  if codigo <> '' then
  begin
    abrir_tabela(_tamanho);
    qry.fieldbyname(_cdtamanho).AsString := codigo;
  end;
end;

end.

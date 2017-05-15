unit ugrupo;

interface

uses
  System.Actions, System.UITypes,
  Firedac.Stan.Param,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Math,
  StdCtrls, Menus, Dialogs,
  DB,
  classeaplicacao, classeretornasql, classeempresa, classeexecutasql,
  classequery,
  umontarsql, ustrings, uConstantes,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalc, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxDBExtLookupComboBox,
  cxStyles, cxVGrid, cxInplaceContainer, cxButtons, cxDBVGrid, cxSpinEdit;

type
  Tfrmgrupo = class(TForm)
    btnok: TcxButton;
    btncancelar: TcxButton;
    dts: TDataSource;
    vgr: TcxDBVerticalGrid;
    vgrCatProduto: TcxCategoryRow;
    vgrDBEditorRow2: TcxDBEditorRow;
    vgrDBEditorRow1: TcxDBEditorRow;
    vgrBOPDV: TcxDBEditorRow;
    vgrBOCOMISSAO: TcxDBEditorRow;
    vgrCDTPCOMISSAOPRODUTO: TcxDBEditorRow;
    vgrPRCOMISSAO: TcxDBEditorRow;
    vgrNUCLFISCAL: TcxDBEditorRow;
    vgrCDORIGEM: TcxDBEditorRow;
    vgrCDTPPRODUTO: TcxDBEditorRow;
    vgrCDTPITEM: TcxDBEditorRow;
    vgrCDUNIDADE: TcxDBEditorRow;
    vgrCDREGRAST: TcxDBEditorRow;
    vgrCatdimensionavel: TcxCategoryRow;
    vgrCDFORMA: TcxDBEditorRow;
    vgrCDMATERIAL: TcxDBEditorRow;
    vgrCDNORMA: TcxDBEditorRow;
    vgrCatImposto: TcxCategoryRow;
    vgrBOIPI: TcxDBEditorRow;
    vgrALIPI: TcxDBEditorRow;
    vgrBORECUPERAIPI: TcxDBEditorRow;
    vgrBOICMS: TcxDBEditorRow;
    vgrALICMS: TcxDBEditorRow;
    vgrNUSTICMS: TcxDBEditorRow;
    vgrBORECUPERAICMS: TcxDBEditorRow;
    vgrBOPIS: TcxDBEditorRow;
    vgrALPIS: TcxDBEditorRow;
    vgrBORECUPERAPIS: TcxDBEditorRow;
    vgrBOCOFINS: TcxDBEditorRow;
    vgrALCOFINS: TcxDBEditorRow;
    vgrBORECUPERACOFINS: TcxDBEditorRow;
    vgrBOGERARLIVROPRODUCAO: TcxDBEditorRow;
    vgBOMPDOBEM: TcxDBEditorRow;
    vgrVLMPDOBEM: TcxDBEditorRow;
    vgrNUCONTAESTOQUE: TcxDBEditorRow;
    vgrCatAtivo: TcxCategoryRow;
    vgrCDCONTAATIVO: TcxDBEditorRow;
    vgrNUCONTAATIVO: TcxDBEditorRow;
    vgrNMCONTAATIVO: TcxDBEditorRow;
    vgrCDNATUREZACONTA: TcxDBEditorRow;
    vgrCDINDICADORTPCONTA: TcxDBEditorRow;
    vgrCategoryRow4: TcxCategoryRow;
    vgrDBEditorRow3: TcxDBEditorRow;
    vgrDBEditorRow4: TcxDBEditorRow;
    vgrDBEditorRow5: TcxDBEditorRow;
    vgrDBEditorRow6: TcxDBEditorRow;
    vgrDBEditorRow7: TcxDBEditorRow;
    vgrDBEditorRow8: TcxDBEditorRow;
    vgrDBEditorRow9: TcxDBEditorRow;
    vgrDBEditorRow10: TcxDBEditorRow;
    vgrDBEditorRow11: TcxDBEditorRow;
    vgrDBEditorRow12: TcxDBEditorRow;
    vgrNUSTPIS: TcxDBEditorRow;
    vgrNUSTCOFINS: TcxDBEditorRow;
    vgrCDBCCALCULOCREDITO: TcxDBEditorRow;
    procedure btnokClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    q : TClasseQuery;
    procedure LerDados(cdgrupo:integer);
    function  SalvarDados:boolean;
    procedure limpar_aliquota_zerada;
    procedure AbrirTabelas;
    procedure ConfigurarEmpresa;
  public { Public declarations }
  end;

var
  frmgrupo: Tfrmgrupo;

function Exibir_Grupo(cdgrupo:integer):Boolean;

implementation

uses uDtmMain, uRegistro;

const
  _sql = 'SELECT * FROM GRUPO WHERE CDEMPRESA=:CDEMPRESA AND CDGRUPO=:CDGRUPO';

{$R *.dfm}

function Exibir_Grupo(cdgrupo:integer):Boolean;
begin
  result   := False;
  frmgrupo := Tfrmgrupo.Create(nil);
  try
    frmgrupo.LerDados(cdgrupo);
    if frmgrupo.ShowModal = mrok then
    begin
      frmgrupo.SalvarDados;
      result := True;
    end;
  finally
    FreeAndNil(frmgrupo);
  end;
end;

procedure Tfrmgrupo.AbrirTabelas;
begin
  TcxLookupComboBoxProperties(vgrcdorigem.Properties.EditProperties).ListSource            := abrir_tabela(_origem);
  TcxLookupComboBoxProperties(vgrcdunidade.Properties.EditProperties).ListSource           := abrir_tabela(_unidade);
  TcxLookupComboBoxProperties(vgrcdtpproduto.Properties.EditProperties).ListSource         := abrir_tabela(_tpproduto);
  TcxLookupComboBoxProperties(vgrcdtpitem.Properties.EditProperties).ListSource            := abrir_tabela(_tpitem);
  TcxLookupComboBoxProperties(vgrcdtpcomissaoproduto.Properties.EditProperties).ListSource := abrir_tabela(_tpcomissaoproduto);
  TcxLookupComboBoxProperties(vgrcdregrast.Properties.EditProperties).ListSource           := abrir_tabela(_regrast);
  TcxLookupComboBoxProperties(vgrnusticms.Properties.EditProperties).ListSource            := abrir_tabela(_sticms);
  TcxLookupComboBoxProperties(vgrnustpis.Properties.EditProperties).ListSource             := abrir_tabela(_stpis);
  TcxLookupComboBoxProperties(vgrnustcofins.Properties.EditProperties).ListSource          := abrir_tabela(_stcofins);
  TcxLookupComboBoxProperties(vgrcdbccalculocredito.Properties.EditProperties).ListSource  := abrir_tabela(_bccalculocredito);
  TcxLookupComboBoxProperties(vgrcdforma.Properties.EditProperties).ListSource             := abrir_tabela(_forma);
  TcxLookupComboBoxProperties(vgrcdnorma.Properties.EditProperties).ListSource             := abrir_tabela(_norma);
  TcxLookupComboBoxProperties(vgrcdmaterial.Properties.EditProperties).ListSource          := abrir_tabela(_material);
  TcxLookupComboBoxProperties(vgrcdnaturezaconta.Properties.EditProperties).ListSource     := abrir_tabela(_naturezaconta);
  TcxLookupComboBoxProperties(vgrCDINDICADORTPCONTA.Properties.EditProperties).ListSource  := abrir_tabela(_indicadortpconta);
end;

procedure Tfrmgrupo.btnokClick(Sender: TObject);
begin
  if (not varisnull(vgrNUCLFISCAL.Properties.Value)) and
     (vgrNUCLFISCAL.Properties.Value <> _00) and
     (Length(vgrNUCLFISCAL.Properties.Value) <> 8) and
     (Length(vgrNUCLFISCAL.Properties.Value) <> 0) then
  begin
    MessageDlg('NCM deve ter 8 caracteres.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if RegistroExiste(_stpis, _nustpis+'='+vgrNUSTPIS.Properties.DataBinding.Field.AsString.QuotedString+' and tpentsai=''S''') then
  begin
    MessageDlg('Situação tributária do PIS '+vgrNUSTPIS.Properties.DataBinding.Field.AsString+' de saída não permitido.', mtInformation, [mbOK], 0);
    TcxDBLookupComboBox(vgrNUSTpis.Properties).SetFocus;
    Abort;
  end;
  if RegistroExiste(_stcofins, _nustcofins+'='+vgrNUSTCOFINS.Properties.DataBinding.Field.AsString.QuotedString+' and tpentsai=''S''') then
  begin
    MessageDlg('Situação tributária do COFINS '+vgrNUSTCOFINS.Properties.DataBinding.Field.AsString+' de saída não permitido.', mtInformation, [mbOK], 0);
    Abort;
  end;
  modalresult := mrOk;
end;

procedure Tfrmgrupo.ConfigurarEmpresa;
begin
  vgrbocofins.Visible             := Empresa.tpregime <> _S;
  vgralcofins.Visible             := empresa.tpregime <> _S;
  vgrborecuperacofins.Visible     := empresa.tpregime <> _S;
  vgrbopis.Visible                := empresa.tpregime <> _S;
  vgralpis.Visible                := empresa.tpregime <> _S;
  vgrborecuperapis.Visible        := empresa.tpregime <> _S;
  vgrborecuperaipi.Visible        := empresa.tpregime <> _S;
  vgrborecuperaicms.Visible       := empresa.tpregime <> _S;
  vgralicms.Visible               := empresa.tpregime <> _S;
  vgralipi.Visible                := empresa.tpregime <> _S;
  vgrbogerarlivroproducao.Visible := empresa.livroproducao.bo;
  vgrCDBCCALCULOCREDITO.Visible   := empresa.tpregime <> _S;
end;

procedure Tfrmgrupo.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  dts.dataset := q.q;
  q.q.sql.text := _sql;
  q.q.BeforePost := qryBeforePost;
  AbrirTabelas;
  ConfigurarEmpresa;
end;

procedure Tfrmgrupo.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure Tfrmgrupo.LerDados(cdgrupo:integer);
begin
  q.q.Params.ParamByName(_cdgrupo).asinteger   := cdgrupo;
  q.q.Params.ParamByName(_cdempresa).AslargeInt := empresa.cdempresa;
  q.q.Open;
  q.q.Edit;
  Caption := Maiuscula(_grupo)+' '+q.q.FieldByName(_NUNIVEL).asstring + ' - ' + q.q.FieldByName(_nmgrupo).AsString;
end;

function Tfrmgrupo.SalvarDados:boolean;
begin
  q.q.Post;
  result := True;
end;

procedure Tfrmgrupo.qryBeforePost(DataSet: TDataSet);
begin
  limpar_aliquota_zerada;
end;

procedure Tfrmgrupo.limpar_aliquota_zerada;
  procedure zerar_imposto(tpimposto:string);
  begin
    if q.q.FieldByName(_al+tpimposto).AsFloat = 0 then
    begin
      q.q.FieldByName(_al+tpimposto).Clear;
    end;
  end;
begin
  zerar_imposto(_icms);
  zerar_imposto(_ipi);
  zerar_imposto(_pis);
  zerar_imposto(_cofins);
end;

end.

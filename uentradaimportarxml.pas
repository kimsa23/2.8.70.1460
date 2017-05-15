unit uentradaimportarxml;

interface

uses
  System.Actions, System.UITypes,
  Forms, Windows, SysUtils, Classes, Graphics, Controls, Buttons, ExtCtrls,
  Menus, ComCtrls, dialogs, StdCtrls, MidasLib, Variants,
  DB, DBClient, sqlexpr,
  ACBrCTe, ACBrNFe, pcnConversao,
  classegerar, classeACBR, classeexecutasql, classeaplicacao, classeproduto, classeregistrainformacao,
  classeretornasql, classeempresa, classeentrada, classeform, classefornecedor,
  uexportarexcel, uvalidadocumento, uregistro, ustrings, uconstantes, uRotinas, uDtmMain,
  uctereport, unfereport, udatahora, uNovoFornecedor, ulocalizarproduto, ulocalizar,
  cxSplitter, cxVGrid, cxInplaceContainer, cxLookAndFeelPainters, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxDropDownEdit, cxCalendar,
  cxGroupBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxLabel, cxDBLabel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxRadioGroup,
  cxDBEdit, cxDBVGrid, cxCalc, cxLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxCore, cxDateUtils, cxNavigator,
  cxCurrencyEdit, Vcl.DBCtrls, ClasseLocalizar;

type
  TDocumento = record
    nudocumento : integer;
    cnpj : string;
    dtemissao : TDate;
  end;
  Tfrmentradaimportarxml = class(TForm)
    cds: TClientDataSet;
    cdsdetail: TClientDataSet;
    dts: TDataSource;
    dtsdetail: TDataSource;
    cdsNMFORNECEDOR: TStringField;
    cdsRZSOCIAL: TStringField;
    cdsNUCNPJ: TStringField;
    cdsNUENTRADA: TIntegerField;
    cdsdtemissao: TDateField;
    cdsdetailcdproduto: TIntegerField;
    cdsdetailnmunidade: TStringField;
    cdsdetailvlunitario: TCurrencyField;
    cdsdetailvlbaseicms: TCurrencyField;
    cdsdetailalicms: TCurrencyField;
    cdsdetailvlicms: TCurrencyField;
    cdsdetailvlbaseipi: TCurrencyField;
    cdsdetailalipi: TCurrencyField;
    cdsdetailvlipi: TCurrencyField;
    cdsdetailnmproduto: TStringField;
    cdsdetailcdprodutofornecedor: TStringField;
    cdsdsendereco: TStringField;
    cdsnmbairro: TStringField;
    cdsdsnumero: TStringField;
    cdsnmmunicipio: TStringField;
    cdssguf: TStringField;
    cdsdscomplemento: TStringField;
    ntb: TNotebook;
    gbxnotafiscal: TcxGroupBox;
    Label11: TLabel;
    Label14: TLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBRadioGroup2: TcxDBRadioGroup;
    btncancelar: TcxButton;
    btnanterior: TcxButton;
    btnproximo: TcxButton;
    btnfinalizar: TcxButton;
    gbxxml: TcxGroupBox;
    Label4: TLabel;
    lblcondpagto: TLabel;
    lbltransportadora: TLabel;
    Label3: TLabel;
    edtdtentrada: TcxDateEdit;
    gbxFornecedor: TcxGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    Label18: TLabel;
    cxDBLabel17: TcxDBLabel;
    cdsNUINSCEST: TStringField;
    Bevel3: TBevel;
    cxLabel5: TcxLabel;
    Label21: TLabel;
    edtnmfile: TcxButtonEdit;
    btnimprimir: TcxButton;
    cxLabel8: TcxLabel;
    grv: TcxDBVerticalGrid;
    grvCategoryRow1: TcxCategoryRow;
    grvcdprodutofornecedor: TcxDBEditorRow;
    grvdsproduto: TcxDBEditorRow;
    grvnmunidade: TcxDBEditorRow;
    grvqtitem: TcxDBEditorRow;
    grvvlunitario: TcxDBEditorRow;
    grvCategoryRow2: TcxCategoryRow;
    grvCategoryRow3: TcxCategoryRow;
    grvCategoryRow4: TcxCategoryRow;
    grvnucsticms: TcxDBEditorRow;
    grvvlbaseicms: TcxDBEditorRow;
    grvalicms: TcxDBEditorRow;
    grvvlicms: TcxDBEditorRow;
    grvnucstipi: TcxDBEditorRow;
    grvvlbaseipi: TcxDBEditorRow;
    grvalipi: TcxDBEditorRow;
    grvvlipi: TcxDBEditorRow;
    cdsdetaildsproduto: TStringField;
    cdsdetailnucsticms: TStringField;
    cdsdetailnucstipi: TStringField;
    cdsdetailqtitem: TFloatField;
    gbxproduto: TcxGroupBox;
    Label23: TLabel;
    cxLabel9: TcxLabel;
    Label24: TLabel;
    cdsdetailnmcfop: TStringField;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvcdproduto: TcxGridDBColumn;
    tbvcdcfop: TcxGridDBColumn;
    tbvnmproduto: TcxGridDBColumn;
    tbvnmunidade: TcxGridDBColumn;
    tbvqtitem: TcxGridDBColumn;
    tbvvlunitario: TcxGridDBColumn;
    tbvvlbaseicms: TcxGridDBColumn;
    tbvalicms: TcxGridDBColumn;
    tbvvlicms: TcxGridDBColumn;
    tbvvlbaseipi: TcxGridDBColumn;
    tbvalipi: TcxGridDBColumn;
    tbvvlipi: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    gbxfinal: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cdsdetailcdcfop: TIntegerField;
    cdsnuserie: TStringField;
    cbxcdtpentrada: TcxLookupComboBox;
    cdsdetailcddigitado: TStringField;
    cdscdfornecedor: TLargeintField;
    lblcdcntcusto: TLabel;
    lblnuplconta: TLabel;
    cdsdetailcdcntcusto: TIntegerField;
    cdsdetailnuplconta: TStringField;
    edtnuplconta: TcxDBButtonEdit;
    edtcddigitado: TcxDBButtonEdit;
    cdsdetailcdplconta: TIntegerField;
    txtnmplconta: TcxDBLabel;
    cdsdetailnmplconta: TStringField;
    lblcdtpcobranca: TLabel;
    cbxcdtpcobranca: TcxLookupComboBox;
    cdsdetailvlicmssubtrib: TCurrencyField;
    cxDBLabel5: TcxDBLabel;
    grvDBEditorRow1: TcxDBEditorRow;
    edtnuplcontam: TcxButtonEdit;
    lblnmplcontam: TLabel;
    lblplcontam: TLabel;
    lblnmcntcustom: TLabel;
    edtnucntcustom: TcxButtonEdit;
    lblcntcustom: TLabel;
    edtnucntcusto: TcxDBButtonEdit;
    txtnmcntcusto: TcxDBLabel;
    edtcdcfop: TcxDBButtonEdit;
    txtnmcfop: TDBText;
    edtcdtransportadora: TcxButtonEdit;
    lblnmtransportadora: TLabel;
    lblnmcondpagto: TLabel;
    edtcdcondpagto: TcxButtonEdit;
    cdsdetailNUCNTCUSTO: TStringField;
    cdsdetailNMCNTCUSTO: TStringField;
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure btncancelarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnanteriorClick(Sender: TObject);
    procedure edtnmfilePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnmfilePropertiesChange(Sender: TObject);
    procedure btnfinalizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsdetailcdcfopValidate(Sender: TField);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdtpentradaEnter(Sender: TObject);
    procedure cbxcdtpentradaExit(Sender: TObject);
    procedure cdsdetailcddigitadoValidate(Sender: TField);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmfileKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcddigitadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplcontaExit(Sender: TObject);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject;  AButtonIndex: Integer);
    procedure edtcddigitadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsdetailnuplcontaValidate(Sender: TField);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure tbvcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cdsdetailnucntcustoValidate(Sender: TField);
    procedure edtcdcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdcfopPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdtransportadoraExit(Sender: TObject);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdcondpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdcondpagtoExit(Sender: TObject);
    procedure edtcdcondpagtoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplcontamKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontamPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplcontamExit(Sender: TObject);
    procedure edtnucntcustomExit(Sender: TObject);
    procedure edtnucntcustomPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnucntcustomKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private { Private declarations }
    documento : TDocumento;
    produto : TProduto;
    entrada : TEntrada;
    ACBrNFe: TACBrNFe;
    ACBrCTe: TACBrCTe;
    nmfile: string;
    procedure CarregarNF;
    function CarregarXML:boolean;
    procedure checkNumeroCFOPInvalido;
    procedure checkProduto;
    function getCddigitado(i:Integer):string;
    procedure inserirNota;
    procedure inserirItensNota;
    procedure inserirCTE;
    procedure inserirItemCTE;
    procedure abrirCdsdetail;
    procedure setEntrada;
    procedure atribuirDadosParaEntrada;
    function notaExiste: boolean;
    function cteExiste: boolean;
    //function produtoAssociado: boolean;
    procedure SetItemICMS(acbr: TAcbr; i: Integer);
    procedure SetItemIPI(acbr: TAcbr; i: Integer);
    procedure ConfiguarACBRCTe;
    procedure ConfigurarACBRNFe;
    procedure AbrirTabelas;
    procedure SetFornecedorXMLNFE;
    procedure SetFornecedorXMLCTE;
    procedure SetAutpagtoXMLNFE;
    procedure CheckCntcusto;
    procedure CheckPlConta;
    procedure AtribuirFornecedorParaClientDataSet;
  public { Public declarations }
  end;

function ImportarXML(var nmfile:string; Entrada: TEntrada):Boolean;

var
  frmentradaimportarxml: Tfrmentradaimportarxml;

implementation

uses pcnNFe, ClasseSTICMS, ulocalizarTransportadora;

{$R *.dfm}

function ImportarXML(var nmfile:string; Entrada: TEntrada):Boolean;
begin
  result := false;
  frmentradaimportarxml := TFrmentradaimportarxml.create(nil);
  try
    frmentradaimportarxml.edtdtentrada.Date := DtBanco;
    frmentradaimportarxml.entrada := entrada;
    frmentradaimportarxml.setEntrada;
    if frmentradaimportarxml.ShowModal <> mrok then
    begin
      exit;
    end;
    nmfile := frmentradaimportarxml.nmfile;
    frmentradaimportarxml.atribuirDadosParaEntrada;
    result := true;
  finally
    freeandnil(frmentradaimportarxml);
  end;
end;

procedure Tfrmentradaimportarxml.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmentradaimportarxml.btncancelarClick(Sender: TObject);
begin
  close;
end;

function Tfrmentradaimportarxml.notaExiste:boolean;
begin
  if NomedoCodigo(_tpentrada, cbxcdtpentrada.EditValue, _TPFORNCLIENTE) = _F then
  begin
    result := RegistroExiste(_entrada, _cdempresa+'='   +empresa.cdempresa.tostring+' and '+
                                       _cdfornecedor+'='+CodigodoCampo(_fornecedor,Formatacnpj(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) ,_nucnpj) +' and '+
                                       _nuentrada+'='   +inttostr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF)+' and '+
                                       _dtemissao+'='   +getdtbanco(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi));
  end
  else
  begin
    result := RegistroExiste(_entrada, _cdempresa+'='+empresa.cdempresa.tostring+' and '+
                                       _cdcliente+'='+CodigodoCampo(_cliente,Formatacnpj(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) ,_nucnpj) +' and '+
                                       _nuentrada+'='+inttostr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF)+' and '+
                                       _dtemissao+'='+getdtbanco(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi));
  end;
end;

function Tfrmentradaimportarxml.cteExiste:boolean;
begin
  result := RegistroExiste(_entrada, _cdempresa+'='+empresa.cdempresa.tostring+' and '+
                                     _cdfornecedor+'='+CodigodoCampo(_fornecedor, entrada.fornecedor.nucnpj,_nucnpj) +' and '+
                                     _nuentrada+'='+inttostr(ACBrCTe.Conhecimentos.Items[0].CTe.Ide.nCT)+' and '+
                                     _dtemissao+'='+getdtbanco(documento.dtemissao));
end;

procedure Tfrmentradaimportarxml.SetAutpagtoXMLNFE;
var
  i : integer;
begin
  for I := 0 to ACBrNFe.NotasFiscais.Items[0].NFe.Cobr.Dup.count-1 do
  begin
    with entrada.autpagto.New do
    begin
      dtemissao := documento.dtemissao;
      dtentrada := dtbanco;
      dtvencimento := ACBrNFe.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].dVenc;
      vlautpagto := ACBrNFe.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].vDup;
    end;
  end;
  entrada.cdcondpagto := entrada.autpagto.getcdcondpagto;
  if (entrada.cdcondpagto <> 0) and (edtcdcondpagto.text = '') then
  begin
    edtcdcondpagto.text := inttostr(entrada.cdcondpagto);
    edtcdcondpagtoExit(edtcdcondpagto);
  end;
end;

procedure Tfrmentradaimportarxml.CheckCntcusto;
begin
  if edtnucntcusto.visible and (edtnucntcusto.text = '') then
  begin
    messagedlg('Centro de custo é um campo obrigatório.', mtinformation, [mbok], 0);
    edtnucntcusto.SetFocus;
    abort;
  end;
end;

procedure Tfrmentradaimportarxml.CheckPlConta;
begin
  if edtnuplconta.visible and (edtnuplconta.text = '') then
  begin
    messagedlg('Plano de Contas é um campo obrigatório.', mtinformation, [mbok], 0);
    edtnuplconta.SetFocus;
    abort;
  end;
end;

procedure Tfrmentradaimportarxml.AtribuirFornecedorParaClientDataSet;
begin
  cds.FieldByName(_CDFORNECEDOR).AsString := CodigodoCampo(_fornecedor, entrada.fornecedor.nucnpj, _nucnpj);
  cdsNMFORNECEDOR.AsString := entrada.fornecedor.nmfornecedor;
  cdsRZSOCIAL.AsString := entrada.fornecedor.rzsocial;
  cdsdsendereco.AsString := entrada.fornecedor.dsendereco;
  cdsdsnumero.AsString := entrada.fornecedor.dsnumero;
  cdsdscomplemento.AsString := entrada.fornecedor.dscomplemento;
  cdsnmbairro.AsString := entrada.fornecedor.nmbairro;
  cdsnmmunicipio.AsInteger := entrada.fornecedor.cdmunicipio;
  cdssguf.AsString := qregistro.stringdocodigo(_uf, entrada.fornecedor.cduf, _sguf);
  cdsNUCNPJ.AsString := entrada.fornecedor.nucnpj;
end;

procedure Tfrmentradaimportarxml.SetItemICMS(acbr: TAcbr; i: Integer);
begin
  cdsdetailnucsticms.Asstring := Acbr.convertercsticms(ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.CST);
  cdsdetailvlbaseicms.AsCurrency := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBC;
  cdsdetailalicms.AsCurrency := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMS;
  cdsdetailvlicms.AsCurrency := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS;
  cdsdetailvlicmssubtrib.AsCurrency := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST;
end;

procedure Tfrmentradaimportarxml.SetItemIPI(acbr: TAcbr; i: Integer);
begin
  cdsdetailnucstipi.Asstring := Acbr.convertercstipi(ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.CST);
  cdsdetailvlbaseipi.AsCurrency := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vBC;
  cdsdetailalipi.AsCurrency := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.pIPI;
  cdsdetailvlipi.AsCurrency := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI;
end;

procedure Tfrmentradaimportarxml.ConfiguarACBRCTe;
begin
  ACBrCTe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName);
  ACBrCTe.Configuracoes.WebServices.UF := empresa.endereco.sguf;
  ACBrCTe.Configuracoes.WebServices.AguardarConsultaRet := 0;
  ACBrCTe.Configuracoes.WebServices.IntervaloTentativas := 0;
  ACBrCTe.Configuracoes.WebServices.AjustaAguardaConsultaRet := False;
end;

procedure Tfrmentradaimportarxml.ConfigurarACBRNFe;
begin
  ACBrNFe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName);
  ACBrNFe.Configuracoes.WebServices.UF := empresa.endereco.sguf;
  ACBrNFe.Configuracoes.WebServices.AguardarConsultaRet := 0;
  ACBrNFe.Configuracoes.WebServices.IntervaloTentativas := 0;
  ACBrNFe.Configuracoes.WebServices.AjustaAguardaConsultaRet := False;
end;

procedure Tfrmentradaimportarxml.AbrirTabelas;
begin
  cbxcdtpentrada.Properties.ListSource := abrir_tabela(_tpentrada);
  cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
end;

procedure Tfrmentradaimportarxml.SetFornecedorXMLNFE;
begin
  entrada.fornecedor.nmfornecedor := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.xFant;
  entrada.fornecedor.rzsocial := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.xNome;
  entrada.fornecedor.dsendereco := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
  entrada.fornecedor.dsnumero := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
  entrada.fornecedor.dscomplemento := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
  entrada.fornecedor.nmbairro := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
  entrada.fornecedor.cdmunicipio := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
  entrada.fornecedor.cduf := qregistro.CodigodoString(_uf, ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF, _sguf);
  entrada.fornecedor.nucep := inttostr(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
  entrada.fornecedor.nucep := Copy(entrada.fornecedor.nucep, 1, 5) + '-' + copy(entrada.fornecedor.nucep, 6, 3);
  entrada.fornecedor.nufone1 := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
  entrada.fornecedor.nucnpj := FormatarCNPJ(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF);
  entrada.fornecedor.nuinscest := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.IE;
end;

procedure Tfrmentradaimportarxml.SetFornecedorXMLCTE;
begin
  entrada.fornecedor.nmfornecedor  := ACBrCTe.conhecimentos.Items[0].CTe.Emit.xFant;
  entrada.fornecedor.rzsocial      := ACBrCTe.conhecimentos.Items[0].cte.Emit.xNome;
  entrada.fornecedor.dsendereco    := ACBrCTe.conhecimentos.Items[0].cte.Emit.EnderEmit.xLgr;
  entrada.fornecedor.dsnumero      := ACBrCTe.conhecimentos.Items[0].cte.Emit.EnderEmit.nro;
  entrada.fornecedor.dscomplemento := ACBrCTe.conhecimentos.Items[0].cte.Emit.EnderEmit.xCpl;
  entrada.fornecedor.nmbairro      := ACBrCTe.conhecimentos.Items[0].cte.Emit.EnderEmit.xBairro;
  entrada.fornecedor.cdmunicipio   := ACBrCTe.conhecimentos.Items[0].cte.Emit.EnderEmit.cMun;
  entrada.fornecedor.cduf          := qregistro.CodigodoString(_uf, ACBrCTe.conhecimentos.Items[0].cte.Emit.EnderEmit.UF, _sguf);
  entrada.fornecedor.nucep         := inttostr(ACBrCTe.conhecimentos.Items[0].cte.Emit.EnderEmit.CEP);
  entrada.fornecedor.nucep         := Copy(entrada.fornecedor.nucep, 1, 5) + '-' + copy(entrada.fornecedor.nucep, 6, 3);
  entrada.fornecedor.nufone1       := ACBrCTe.conhecimentos.Items[0].cte.Emit.EnderEmit.fone;
  entrada.fornecedor.nucnpj        := FormatarCNPJ(ACBrCTe.conhecimentos.Items[0].cte.Emit.CNPJ);
  entrada.fornecedor.nuinscest     := ACBrCTe.conhecimentos.Items[0].cte.Emit.IE;
end;

procedure Tfrmentradaimportarxml.CarregarNF;
begin
  if documento.cnpj <> Empresa.nucnpj_ then
  begin
    messagedlg('O Destinatário do xml não é o mesmo da empresa.'#13'Importação não concluída.', mtinformation, [mbok], 0);
    abort;
  end;
  if getdtinterna(edtdtentrada.Date) < getdtinterna(documento.dtemissao) then
  begin
    messagedlg('Data de entrada '+GetDtAbrev(edtdtentrada.Date) +' não pode ser menor que'#13+
               'a data de emissão '+GetDtAbrev(documento.dtemissao)+' do documento.'#13+
               'Altere a data para continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  if NomedoCodigo(_tpentrada, cbxcdtpentrada.EditValue, _TPFORNCLIENTE) = _F then
  begin
    if not RegistroExiste(_fornecedor, _nucnpj+'='+quotedstr(entrada.fornecedor.nucnpj)) then
    begin
      if messagedlg('O fornecedor '+entrada.fornecedor.nmfornecedor+' ('+entrada.fornecedor.nucnpj+') não existe no sistema.'#13'Deseja cadastrá-lo?', mtConfirmation, [mbYes, mbNo], 0) = mrno then
      begin
          abort;
      end;
      if frmNovoFornecedor.Novo(entrada.fornecedor) = 0 then
      begin
        if not RegistroExiste(_fornecedor, _nucnpj+'='+quotedstr(entrada.fornecedor.nucnpj))  then
        begin
          messagedlg('O fornecedor '+entrada.fornecedor.nmfornecedor+' ('+entrada.fornecedor.nucnpj+') não existe no sistema.'#13'Importação não concluída.', mtInformation, [mbOK], 0);
          abort;
        end;
      end;
    end;
  end
  else if NomedoCodigo(_tpentrada, cbxcdtpentrada.EditValue, _TPFORNCLIENTE) = _C then
  begin
    if not RegistroExiste(_cliente, _nucnpj+'='+quotedstr(entrada.fornecedor.nucnpj)) then
    begin
      messagedlg('O cliente '+entrada.fornecedor.rzsocial+' ('+entrada.fornecedor.nucnpj+' não existe no sistema.'#13'Importação não concluída.', mtinformation, [mbok], 0);
      abort;
    end;
  end;
  if ACBrNFe.NotasFiscais.Count > 0 then
  begin
    if notaExiste then
    begin
      messagedlg('A nota '+inttostr(documento.nudocumento)+#13'do fornecedor '+entrada.fornecedor.rzsocial+' já existe no sistema.'#13'Importação não concluída.', mtinformation, [mbok], 0);
      abort;
    end;
    inserirNota;
    inserirItensNota;
  end
  else
  begin
    if cteExiste then
    begin
      messagedlg('A nota '+inttostr(documento.nudocumento)+#13'do fornecedor '+entrada.fornecedor.rzsocial+' já existe no sistema.'#13'Importação não concluída.', mtinformation, [mbok], 0);
      abort;
    end;
    inserirCTE;
    inserirItemCTE;
  end;
end;

function Tfrmentradaimportarxml.CarregarXML:boolean;
var
  texto : TStringStream;
  arquivo : TStrings;
begin
  result := true;
  arquivo := TStringList.Create;
  texto := TStringStream.Create('');
  try
    ACBrNFe.NotasFiscais.Clear;
    if edtnmfile.Text  <> '' then
    begin
      arquivo.LoadFromFile(edtnmfile.text)
    end
    else
    begin
      result := false;
      Exit;
    end;
    texto.WriteString(UTF8Encode(arquivo.text));
    ACBrNFe.NotasFiscais.LoadFromStream(texto);
    if ACBrNFe.NotasFiscais.Count > 0 then
    begin
      documento.cnpj := ACBrNFe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
      documento.dtemissao := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
      documento.nudocumento := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF;
      SetFornecedorXMLNFE;
      SetAutpagtoXMLNFE;
    end
    else
    begin
      ACBrCTe.Conhecimentos.Clear;
      ACBrCTe.Conhecimentos.LoadFromStream(texto);
      if ACBrCTe.Conhecimentos.count = 0 then
      begin
        messagedlg('XML não é um documento válido.', mtinformation, [mbok], 0);
        abort;
      end;
      documento.dtemissao := ACBrCTe.Conhecimentos.Items[0].CTe.Ide.dhEmi;
      documento.nudocumento := ACBrCTe.Conhecimentos.Items[0].CTe.Ide.nCT;
      documento.cnpj := ACBrCTe.Conhecimentos.Items[0].CTe.Dest.CNPJCPF;
      if documento.cnpj <> Empresa.nucnpj_ then
      begin
        documento.cnpj := ACBrCTe.Conhecimentos.Items[0].CTe.Rem.CNPJCPF;
      end;
      SetFornecedorXMLCTE;
    end;
  finally
    freeandnil(texto);
    freeandnil(arquivo);
  end;
end;

procedure Tfrmentradaimportarxml.btnimprimirClick(Sender: TObject);
begin
  if ACBrNFe.NotasFiscais.Count > 0 then
  begin
    NFEImprimir(0, 0, ACBrNFe, false);
  end
  else if ACBrCTe.Conhecimentos.count > 0 then
  begin
    CTEImprimir(ACBrCTe, ACBrCTe.Conhecimentos.Items[0].XML);
  end;
end;

procedure Tfrmentradaimportarxml.setEntrada;
begin
  if entrada.cdtpentrada <> 0 then
  begin
    cbxcdtpentrada.EditValue := entrada.cdtpentrada;
  end;
  if entrada.cdcondpagto <> 0 then
  begin
    edtcdcondpagto.text := inttostr(entrada.cdcondpagto);
  end;
  if entrada.cdtpcobranca <> 0 then
  begin
    cbxcdtpcobranca.EditValue := entrada.cdtpcobranca;
  end;
  if entrada.cdtransportadora <> 0 then
  begin
    edtcdtransportadora.text := entrada.cdtransportadora.ToString;
  end;
  if not (entrada.dtentrada = strtodate(_30_12_1899)) then
  begin
    edtdtentrada.Date := entrada.dtentrada;
  end;
end;

procedure Tfrmentradaimportarxml.btnproximoClick(Sender: TObject);
begin
  if ntb.PageIndex = 0 then
  begin
    if cbxcdtpentrada.Text = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo+' '+_de+' '+_Compra]), mtinformation, [mbok], 0);
      cbxcdtpentrada.SetFocus;
      Abort;
    end;
    CarregarNF;
  end;
  if ntb.activepage = _produto then
  begin
    checkNumeroCFOPInvalido;
    checkProduto;
    CheckCntcusto;
    CheckPlConta;
    if cdsdetail.RecNo < cdsdetail.RecordCount then
    begin
      cdsdetail.Next;
      btnproximo.Enabled := (not cdsdetailcdproduto.IsNull) and (not cdsdetailcdcfop.isnull);
      if not btnproximo.Enabled then
      begin
        edtcddigitado.Clear;
        edtcddigitado.SetFocus;
      end;
      exit;
    end
    else
    begin
      if cdsdetail.state = dsedit then
      begin
        cdsdetail.Post;
      end;
    end;
  end;
  ntb.PageIndex := ntb.PageIndex + 1;
  if ntb.activepage = _produto then
  begin
    btnproximo.Enabled := (not cdsdetailcdproduto.IsNull) and (not cdsdetailcdcfop.isnull);
    if not btnproximo.Enabled then
    begin
      edtcddigitado.Clear;
      edtcddigitado.SetFocus;
    end;
    exit;
  end;
  btnanterior.enabled  := true;
  btnfinalizar.enabled := ntb.PageIndex = ntb.Pages.Count - 1;
  btnproximo.Enabled   := not (ntb.PageIndex = ntb.Pages.Count - 1);
  btnfinalizar.visible := ntb.PageIndex = ntb.Pages.count - 1;
  btnfinalizar.enabled := ntb.PageIndex = ntb.Pages.count - 1;
  if ntb.ActivePage <> _fornecedor then
  begin
    exit;
  end;
end;

procedure Tfrmentradaimportarxml.atribuirDadosParaEntrada;
var
  produtofornecedor : TProdutoFornecedor;
begin
  entrada.dtentrada    := edtdtentrada.Date;
  entrada.cdcondpagto  := 0;
  entrada.cdtpcobranca := 0;
  entrada.cdtransportadora := 0;
  if not VarIsNull(cbxcdtpentrada.EditValue) then
  begin
    entrada.cdtpentrada := cbxcdtpentrada.EditValue;
  end;
  if edtcdcondpagto.text <> '' then
  begin
    entrada.cdcondpagto := strtoint(edtcdcondpagto.text);
  end;
  if not VarIsNull(cbxcdtpcobranca.EditValue) then
  begin
    entrada.cdtpcobranca := cbxcdtpcobranca.EditValue;
  end;
  if edtcdtransportadora.text <> '' then
  begin
    entrada.cdtransportadora := StrToInt64(edtcdtransportadora.Text);
  end;
  if ntb.PageIndex = ntb.Pages.Count - 1 then
  begin // inserir produto associado
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin// verificar se o produto está associado
      produtofornecedor := tprodutofornecedor.create;
      try
        if (cds.fieldbyname(_cdfornecedor).asstring <> '') and not
           produtofornecedor.select(_cdfornecedor+'='+cds.fieldbyname(_cdfornecedor).asstring+' and '+
                                    _cdproduto+'='+cdsdetail.fieldbyname(_cdproduto).asstring+' and '+
                                    _cdprodutofornecedorinterno+'='+ quotedstr(cdsdetail.fieldbyname(_cdproduto+_fornecedor).asstring)) then
        begin
          produtofornecedor.cdprodutofornecedor := qgerar.GerarCodigo(_produtofornecedor);
          produtofornecedor.cdproduto := cdsdetail.fieldbyname(_cdproduto).asinteger;
          produtofornecedor.cdfornecedor := cds.fieldbyname(_cdfornecedor).AsLargeInt;
          produtofornecedor.cdprodutofornecedorinterno := cdsdetail.fieldbyname(_cdprodutofornecedor).asstring;
          if cdsdetail.fieldbyname(_cdprodutofornecedor).asstring = '' then
          begin
            produtofornecedor.cdprodutofornecedorinterno := cdsdetail.fieldbyname(_cdproduto).AsString;
          end;
          produtofornecedor.Insert;
        end;
      finally
        freeandnil(produtofornecedor);
      end;
      entrada.itentrada.new;
      entrada.itentrada.Items[entrada.itentrada.Count-1].cdcfop        := cdsdetailcdcfop.asinteger;
      entrada.itentrada.Items[entrada.itentrada.Count-1].cdproduto     := cdsdetailcdproduto.asinteger;
      entrada.itentrada.Items[entrada.itentrada.Count-1].cddigitado    := cdsdetailcddigitado.AsString;
      entrada.itentrada.Items[entrada.itentrada.Count-1].nucntcusto    := cdsdetailnucntcusto.AsString;
      entrada.itentrada.Items[entrada.itentrada.Count-1].nuplconta     := cdsdetailnuplconta.AsString;
      entrada.itentrada.Items[entrada.itentrada.Count-1].vlicmssubtrib := cdsdetailvlicmssubtrib.AsCurrency;
      cdsdetail.Next;
    end;
  end;
end;

procedure Tfrmentradaimportarxml.btnanteriorClick(Sender: TObject);
begin
  if (ntb.activepage = _produto) and (cdsdetail.RecNo > 1) then
  begin
    cdsdetail.prior;
    btnproximo.enabled := true;
    exit;
  end;
  ntb.PageIndex        := ntb.PageIndex - 1;
  btnproximo.enabled   := true;
  btnfinalizar.Enabled := false;
  if ntb.PageIndex = 0 then
  begin
    btnanterior.Enabled := false;
  end;
end;

procedure Tfrmentradaimportarxml.edtnmfilePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  opd : topendialog;
begin
  opd  := topendialog.Create(nil);
  try
    opd.Title      := 'Selecione a NFE ou CTE';
    opd.DefaultExt := '*.XML';
    opd.Filter     := 'Arquivos XML (*.XML)|*.XML|Arquivos NFE (*-nfe.XML)|*-nfe.XML|Todos os Arquivos (*.*)|*.*';
    if not opd.Execute then
    begin
      exit;
    end;
    edtnmfile.Text := opd.FileName;
    carregarxml;
  finally
    freeandnil(opd);
  end;
end;

procedure Tfrmentradaimportarxml.edtnmfilePropertiesChange(Sender: TObject);
begin
  btnanterior.Visible  := not (edtnmfile.Text = '');
  btnproximo.Visible   := btnanterior.Visible;
  btnfinalizar.Visible := not btnanterior.Visible;
end;

procedure Tfrmentradaimportarxml.btnfinalizarClick(Sender: TObject);
begin
  if edtnmfile.text = '' then
  begin
    exit;
  end;
  nmfile := edtnmfile.text;
  if (edtnmfile.text <> '') and (ntb.PageIndex = ntb.Pages.Count - 1) then
  begin
    modalresult := mrok;
  end;
end;

procedure Tfrmentradaimportarxml.FormCreate(Sender: TObject);
begin
  produto := tproduto.create;
  ACBrCTe := TACBrCTe.Create(nil);
  ACBrNFe := TACBrNFe.Create(nil);
  ConfiguarACBRCTe;
  ConfigurarACBRNFe;
  AbrirTabelas;
  ntb.PageIndex := 0;
end;

procedure Tfrmentradaimportarxml.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ACBrNFe);
  FreeAndNil(ACBrCTe);
  freeandnil(produto);
end;

procedure Tfrmentradaimportarxml.cdsdetailcdcfopValidate(Sender: TField);
begin
  if cdsdetailcdcfop.AsString = '' then
  begin
    exit;
  end;
  btnproximo.Enabled := (edtcddigitado.text <> '') and (Sender.AsString <> '');
  cdsdetailnmcfop.asstring := NomedoCodigo(_cfop, sender.AsString);
  if btnproximo.Enabled then
  begin
    btnproximo.SetFocus;
  end;
end;

procedure Tfrmentradaimportarxml.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmentradaimportarxml.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmentradaimportarxml.cbxcdtpentradaEnter(Sender: TObject);
begin
  abrir_tabela(_tpentrada);
  colorenter(sender);
end;

procedure Tfrmentradaimportarxml.cbxcdtpentradaExit(Sender: TObject);
begin
  if cbxcdtpentrada.Text <> '' then
  begin
    entrada.tpentrada.select(strtoint(cbxcdtpentrada.EditValue));

    lblcdcntcusto.visible  := entrada.tpentrada.bocntcusto = _s;
    edtnucntcusto.visible  := entrada.tpentrada.bocntcusto = _s;
    txtnmcntcusto.visible := entrada.tpentrada.bocntcusto = _s;

    lblcntcustom.visible  := entrada.tpentrada.bocntcusto = _s;
    edtnucntcustom.visible  := entrada.tpentrada.bocntcusto = _s;
    lblnmcntcustom.visible := entrada.tpentrada.bocntcusto = _s;

    if not edtnucntcustom.Visible then
    begin
      edtnucntcustom.clear;
    end;

    lblplcontam.Visible := entrada.tpentrada.boplconta = _s;
    edtnuplcontam.Visible := entrada.tpentrada.boplconta = _s;
    lblnmplcontam.Visible := entrada.tpentrada.boplconta = _s;

    if not edtnuplcontam.Visible then
    begin
      edtnuplcontam.clear;
    end;

    lblnuplconta.visible   := entrada.tpentrada.boplconta = _s;
    txtnmplconta.visible   := entrada.tpentrada.boplconta = _s;
    edtnuplconta.visible   := entrada.tpentrada.boplconta = _s;

    edtcdcondpagto.Visible := entrada.tpentrada.boautpagto = _s;
    lblcondpagto.Visible   := entrada.tpentrada.boautpagto = _s;
    if not edtcdcondpagto.Visible then
    begin
      edtcdcondpagto.Clear;
    end;
    lblcdtpcobranca.Visible := entrada.tpentrada.boautpagto = _s;
    cbxcdtpcobranca.Visible := entrada.tpentrada.boautpagto = _s;
    if not cbxcdtpcobranca.Visible then
    begin
      cbxcdtpcobranca.Clear;
    end;
    edtcdtransportadora.Visible := entrada.tpentrada.bofrete = _s;
    lbltransportadora.Visible := entrada.tpentrada.bofrete = _s;
    if not edtcdtransportadora.Visible then
    begin
      edtcdtransportadora.Clear;
    end;
  end;
  colorexit(sender);
end;

procedure Tfrmentradaimportarxml.cdsdetailcddigitadoValidate(Sender: TField);
var
  cdproduto : integer;
begin
  if Sender.AsString = '' then
  begin
    cdsdetailCDPRODUTO.clear;
    Exit;
  end;
  cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if cdproduto = 0 then
  begin
    sender.FocusControl;
    abort;
  end;
  produto.Select(cdproduto);
  if produto.boativar <> _s then
  begin
    if ntb.PageIndex = 0 then
    begin
      cdsdetailCDPRODUTO.clear;
      Edtcddigitado.clear;
      sender.clear;
      exit;
    end;
    messagedlg('Produto está desativado.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  if (cdsdetailvlicmssubtrib.ascurrency > 0) and (not BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, true)) then
  begin
    if ntb.PageIndex = 0 then
    begin
      cdsdetailCDPRODUTO.clear;
      Edtcddigitado.clear;
      sender.clear;
      exit;
    end;
    messagedlg('Produto não está configurado com Situação Tributária do ICMS de Substituição Tributária mas'#13'item do XML possui Valor de Substituição Tributária preenchido.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  edtcddigitado.EditValue := cdproduto;
  cdsdetailCDPRODUTO.AsInteger := cdproduto;
  cdsdetailnmproduto.AsString := produto.nmproduto;

  if (produto.cdcntcusto > 0) and edtnucntcusto.visible then
  begin
    cdsdetailnucntcusto.asstring := produto.nucntcusto;
  end;

  if (produto.nuplconta <> '') and edtnuplconta.visible then
  begin
    cdsdetailnuplconta.asString := produto.nuplconta;
  end;

  if (cdsdetailcdcfop.asstring = '') and (entrada.tpentrada.getcdcfop(produto.nusticms, entrada.fornecedor.cduf) > 0) then
  begin
    cdsdetailcdcfop.asinteger := entrada.tpentrada.getcdcfop(produto.nusticms, entrada.fornecedor.cduf);
  end;
  btnproximo.Enabled := (edtcddigitado.text <> '') and (edtcdcfop.Text <> '');
end;

procedure Tfrmentradaimportarxml.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmentradaimportarxml.edtnmfileKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnmfilePropertiesButtonClick(sender, 0);
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmentradaimportarxml.tbvcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := LocalizarProduto(_boentrada, true);
  if cd = 0 then
  begin
    exit;
  end;
  cdsdetail.Edit;
  cdsdetailcdproduto.asinteger := cd;
  cdsdetail.Post;
end;

procedure Tfrmentradaimportarxml.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmentradaimportarxml.checkNumeroCFOPInvalido;
begin
  if (empresa.endereco.sguf = cdssguf.AsString) and (Copy(edtcdcfop.text, 1, 1)<> _1) then
  begin
    messagedlg('Número de CFOP inválido!'#13'Fornecedor é da mesma unidade federativa da Empresa.'#13'Digite um número que comece com 1 ou 3 para continuar.', mtinformation, [mbok], 0);
    edtcdcfop.SetFocus;
    Abort;
  end;
  if (empresa.endereco.sguf <> cdssguf.AsString) and (Copy(edtcdcfop.text, 1, 1)<> _2) then
  begin
    messagedlg('Número de CFOP inválido!'#13'Fornecedor é de uma unidade federativa diferente da Empresa.'#13'Digite um número que comece com 2 ou 3 para continuar.', mtinformation, [mbok], 0);
    edtcdcfop.SetFocus;
    Abort;
  end;
end;

procedure Tfrmentradaimportarxml.checkProduto;
begin
  if cdsdetailcdproduto.AsString = '' then
  begin
    Exit;
  end;
  produto.cdproduto := produto.CodigoProdutoDigitado(cdsdetailcdproduto.AsString, _boentrada);
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  if BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, True)
    and (not BooleandoCodigo(_cfop  , cdsdetailcdcfop.AsString, _BOICMSSUBTRIB, _cd, True))
    and (not BooleandoCodigo(_cfop  , cdsdetailcdcfop.AsString, _BOACEITAICMSSUBTRIB, _cd, True)) then
  begin
    MessageDlg('Produto está configurado como Substituição Tributária mas está sendo lançado em um CFOP que não é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (not BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, True)) and (BooleandoCodigo(_cfop  , cdsdetailcdcfop.AsString, _BOICMSSUBTRIB, _cd, True)) then
  begin
    MessageDlg('Produto não está configurado como Substituição Tributária mas está sendo lançado em um CFOP que é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

function Tfrmentradaimportarxml.getCddigitado(i:Integer): string;
begin
  result := RetornaSQLString('select f.cdproduto '+
                             'from produtofornecedor f '+
                             'left join produto p on p.cdempresa=f.cdempresa and p.cdproduto=f.cdproduto '+
                             'where p.boativar=''S'' and f.cdempresa='+empresa.cdempresa.tostring+' '+
                             'and f.cdfornecedor='+CodigodoCampo(_fornecedor,Formatacnpj(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) ,_nucnpj)+' '+
                             'and f.cdprodutofornecedorinterno='+quotedstr(ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd));
end;

procedure Tfrmentradaimportarxml.inserirNota;
begin
  if not cds.Active then
  begin
    cds.CreateDataSet;
    cds.Open;
  end;
  cds.Insert;
  cdsNUENTRADA.asinteger   := documento.nudocumento;
  cdsnuserie.AsString      := inttostr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.serie);
  cdsdtemissao.AsDateTime  := documento.dtemissao;
  AtribuirFornecedorParaClientDataSet;
end;

procedure Tfrmentradaimportarxml.inserirItensNota;
var
  i : integer;
  acbr : TAcbr;
begin
  acbr  := TAcbr.Create;
  try
    abrirCdsdetail;
    for i := 0 to ACBrNFe.NotasFiscais.Items[0].NFe.Det.Count - 1 do
    begin
      cdsdetail.Append;
      cdsdetailnmunidade.Asstring    := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom;
      cdsdetaildsproduto.Asstring    := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.xProd;
      cdsdetailqtitem.AsCurrency     := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qCom;
      cdsdetailvlunitario.AsCurrency := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom;
      if edtnucntcustom.Text <> '' then
      begin
        cdsdetailnucntcusto.AsString := edtnucntcustom.Text;
      end;
      if edtnuplcontam.Text <> '' then
      begin
        cdsdetailnuplconta.AsString := edtnuplcontam.Text;
      end;
      SetItemICMS(acbr, i);
      SetItemIPI(acbr, i);
      if NomedoCodigo(_tpentrada, cbxcdtpentrada.EditValue, _TPFORNCLIENTE) = _F then
      begin
        cdsdetailcddigitado.AsString := getCddigitado(i);
        if cdsdetailcdproduto.asstring = '' then
        begin
          cdsdetailcddigitado.clear;
        end;
      end;
      cdsdetailcdprodutofornecedor.asstring  := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
      if cdsdetailcdcfop.asstring = '' then
      begin
        if copy(ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP, 1, 1) = _5 then
        begin
          if ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP = _5656 then
          begin
            cdsdetailcdcfop.Asstring := _1653
          end
          else
          begin
            cdsdetailcdcfop.Asstring := _1+copy(ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP, 2, 3)
          end;
        end
        else if copy(ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP, 1, 1) = _6 then
        begin
          cdsdetailcdcfop.Asstring := _2+copy(ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP, 2, 3);
        end;
      end;
    end;
    cdsdetail.First;
  finally
    FreeAndNil(acbr);
  end;
end;

procedure Tfrmentradaimportarxml.inserirCTE;
begin
  if not cds.Active then
  begin
    cds.CreateDataSet;
    cds.Open;
  end;
  cds.Insert;
  cdsNUENTRADA.asinteger   := ACBrCTe.conhecimentos.Items[0].cte.Ide.nCT;
  cdsnuserie.AsString      := inttostr(ACBrCTe.conhecimentos.Items[0].cte.Ide.serie);
  cdsdtemissao.AsDateTime  := ACBrCTe.conhecimentos.Items[0].cte.Ide.dhEmi;
  AtribuirFornecedorParaClientDataSet;
  //cdsvltotal.AsCurrency    := ACBrCTe.Conhecimentos.Items[0].cte.vPrest.vRec;
end;

procedure Tfrmentradaimportarxml.inserirItemCTE;
begin
  abrirCdsdetail;
  cdsdetail.Append;
  cdsdetailqtitem.AsCurrency     := 1;
  cdsdetailvlunitario.AsCurrency := ACBrCTe.Conhecimentos.Items[0].cte.vPrest.vRec;
  if edtnucntcustom.Text <> '' then
  begin
    cdsdetailnucntcusto.AsString := edtnucntcustom.Text;
  end;
  if edtnuplcontam.Text <> '' then
  begin
    cdsdetailnuplconta.AsString := edtnuplcontam.Text;
  end;
  cdsdetail.Post;
end;

procedure Tfrmentradaimportarxml.abrirCdsdetail;
begin
  if not cdsdetail.Active then
  begin
    cdsdetail.CreateDataSet;
    cdsdetail.Open;
  end;
  cdsdetail.EmptyDataSet;
end;

procedure Tfrmentradaimportarxml.edtcddigitadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cddigitado, cdalternativo : string;
  cd : integer;
begin
  cd := Localizarproduto(_boentrada, true);
  if cd = 0 then
  begin
    exit;
  end;
  cdalternativo := qregistro.StringdoCodigo(_produto, cd, _cdalternativo);
  if cdalternativo <> '' then
  begin
    cddigitado := cdalternativo;
  end
  else
  begin
    cddigitado := cd.ToString;
  end;
  if cdsdetail.State <> dsedit then
  begin
    cdsdetail.Edit;
  end;
  cdsdetailCDDIGITADO.AsString := cddigitado;
end;

procedure Tfrmentradaimportarxml.edtcdtransportadoraExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _transportadora, _transportadora);
  colorexit(sender);
end;

procedure Tfrmentradaimportarxml.edtcdtransportadoraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmentradaimportarxml.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdtransportadoraPropertiesButtonClick(edtcdtransportadora, lblnmtransportadora);
end;

procedure Tfrmentradaimportarxml.edtnucntcustoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(sender, key, shift);
end;

procedure Tfrmentradaimportarxml.edtnucntcustomExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnucntcustom.text;
  if cd = '' then
  begin
    entrada.nucntcusto := '';
    lblnmcntcustom.caption := '';
    colorexit(Sender);
    exit;
  end;
  cd := CodigodoCampo(_cntcusto, cd, _nunivel);
  if cd = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnucntcusto.text, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    edtnucntcustom.setfocus;
    abort;
  end;
  lblnmcntcustom.Caption := NomedoCodigo(_cntcusto, cd);
  colorexit(Sender);
end;

procedure Tfrmentradaimportarxml.edtnucntcustomKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustomPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(sender, key, shift);
end;

procedure Tfrmentradaimportarxml.edtnucntcustomPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar(_cntcusto, _nunivel, _nmcntcusto, 'Centro Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  edtnucntcustom.Text    := cd;
  lblnmcntcustom.Caption := QRegistro.CampodoCampo(_cntcusto, _nunivel, cd, _nmcntcusto, true);
  entrada.nucntcusto := cd;
end;

procedure Tfrmentradaimportarxml.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar( _cntcusto, _nunivel, _nmcntcusto, 'Centro Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  if cdsdetail.state <> dsedit then
  begin
    cdsdetail.edit;
  end;
  cdsDETAILNUCNTCUSTO.AsString := cd;
end;

procedure Tfrmentradaimportarxml.edtnuplcontaExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnuplconta.text;
  if cd = '' then
  begin
    txtnmplconta.caption := '';
    colorexit(Sender);
    exit;
  end;
  cd := CodigodoCampo(_plconta, cd, _nunivel);
  if cd = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnuplconta.text, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    edtnuplconta.setfocus;
    abort;
  end;
  txtnmplconta.Caption := NomedoCodigo(_plconta, cd);
  colorexit(Sender);
end;

procedure Tfrmentradaimportarxml.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(sender, key, shift);
end;

procedure Tfrmentradaimportarxml.edtnuplcontamExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnuplcontam.text;
  if cd = '' then
  begin
    entrada.nuplconta := '';
    lblnmplcontam.caption := '';
    colorexit(Sender);
    exit;
  end;
  cd := CodigodoCampo(_plconta, cd, _nunivel);
  if cd = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnuplconta.text, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    edtnuplcontam.setfocus;
    abort;
  end;
  lblnmplcontam.Caption := NomedoCodigo(_plconta, cd);
  colorexit(Sender);
end;

procedure Tfrmentradaimportarxml.edtnuplcontamKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontamPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(sender, key, shift);
end;

procedure Tfrmentradaimportarxml.edtnuplcontamPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar(_plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  edtnuplcontam.Text    := cd;
  lblnmplcontam.Caption := qregistro.CampodoCampo(_plconta, _nunivel, cd, _nmplconta, true);
  entrada.nuplconta := cd;
end;

procedure Tfrmentradaimportarxml.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar( _plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  if cdsdetail.state <> dsedit then
  begin
    cdsdetail.edit;
  end;
  cdsDETAILNUPLCONTA.AsString := cd;
end;

procedure Tfrmentradaimportarxml.edtcdcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcfopPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmentradaimportarxml.edtcdcfopPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizar(_cfop);
  if codigo = 0 then
  begin
    Exit;
  end;
  cdsdetail.fieldbyname(_cdcfop).AsInteger := codigo;
end;

procedure Tfrmentradaimportarxml.edtcdcondpagtoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _condpagto, _condpagto);
  colorexit(sender);
end;

procedure Tfrmentradaimportarxml.edtcdcondpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcondpagtoPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmentradaimportarxml.edtcdcondpagtoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizar(_condpagto);
  if cd = 0 then
  begin
    exit;
  end;
  edtcdcondpagto.text    := cd.tostring;
  lblnmcondpagto.caption := qregistro.NomedoCodigo(_condpagto, cd);
end;

procedure Tfrmentradaimportarxml.edtcddigitadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcddigitadoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmentradaimportarxml.cdsdetailnucntcustoValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsdetailCDcntcusto.Clear;
    cdsdetailNMcntcusto.Clear;
    exit;
  end;
  if not codigoexiste( _cntcusto, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsdetailCDcntcusto.AsString := CodigodoCampo( _cntcusto, sender.AsString, _nunivel);
  cdsdetailNMcntcusto.AsString := Nomedocodigo( _cntcusto, cdsdetailCDcntcusto.AsString);
end;

procedure Tfrmentradaimportarxml.cdsdetailnuplcontaValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsdetailCDPLCONTA.Clear;
    cdsdetailNMPLCONTA.Clear;
    exit;
  end;
  if not codigoexiste( _plconta, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsdetailCDPLCONTA.AsString := CodigodoCampo( _plconta, sender.AsString, _nunivel);
  cdsdetailNMPLCONTA.AsString := Nomedocodigo( _plconta, cdsdetailCDPLCONTA.AsString);
end;

procedure Tfrmentradaimportarxml.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  abrir_tabela(_tpcobranca);
  colorenter(sender);
end;

end.

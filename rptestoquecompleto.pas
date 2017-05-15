unit rptestoquecompleto;

interface

uses
  //{$IFDEF not VER220}ConverterRB2FR,{$ENDIF}
  System.Actions, System.UITypes,
  firedac.stan.param,
  //{$IFDEF VER300}ConverterRB2FR,{$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  DB,
  uTipo, uRotinas, uprogressbar, udatahora, uConstantes, uRegistro,
  classecliente, classeempresa, classeInstrucaoSQL, classeAplicacao, classeexecutasql, classequery,
  frxExportPDF,
  frxClass,
  frxDBSet,
  frxExportXLS,
  frxExportTXT,
  frxExportCSV,
  frxExportText,
  frxExportRTF,
  frxExportXML,
  frxGradient,
  frxChBox,
  frxOLE,
  frxDCtrl,
  frxDMPExport,
  frxCross,
  frxBarcode,
  frxRich,
  frxDesgn,
  frxGZip,
  frxChart,
  frxDBXComponents,
  fs_ichartrtti,
  fs_idbctrlsrtti,
  fs_idbrtti,
  fs_iinirtti,
  fs_imenusrtti,
  fs_idialogsrtti,
  fs_iextctrlsrtti,
  fs_iformsrtti,
  fs_igraphicsrtti,
  fs_iclassesrtti,
  fs_ipascal,
  fs_iinterpreter,
  frxFDComponents,
  uReport074DRE,
  uimprimir643fatura, frxExportHTML;

type
  (*Fred*)
  TFunctionParameter = procedure(const Relatorio : TFrxReport);  (**)
  Tfrmestoquecompleto = class(TForm)
    rpt: TfrxReport;
    dbd1: TfrxDBDataset;
    frxlsxprt: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    dbd2: TfrxDBDataset;
    fdb1: TfrxDBDataset;
    frp1: TfrxReport;
    fdb2: TfrxDBDataset;
    fdb3: TfrxDBDataset;
    fdb4: TfrxDBDataset;
    fdb5: TfrxDBDataset;
    dbd3: TfrxDBDataset;
    dbd4: TfrxDBDataset;
    dbd5: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxDesigner1: TfrxDesigner;
    frxRichObject1: TfrxRichObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxCrossObject1: TfrxCrossObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDialogControls1: TfrxDialogControls;
    frxOLEObject1: TfrxOLEObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxChartObject1: TfrxChartObject;
    frxUserDataSet1: TfrxUserDataSet;
    fsScript1: TfsScript;
    fsPascal1: TfsPascal;
    fsClassesRTTI1: TfsClassesRTTI;
    fsGraphicsRTTI1: TfsGraphicsRTTI;
    fsFormsRTTI1: TfsFormsRTTI;
    fsExtCtrlsRTTI1: TfsExtCtrlsRTTI;
    fsDialogsRTTI1: TfsDialogsRTTI;
    fsMenusRTTI1: TfsMenusRTTI;
    fsIniRTTI1: TfsIniRTTI;
    fsDBRTTI1: TfsDBRTTI;
    fsDBCtrlsRTTI1: TfsDBCtrlsRTTI;
    fsChartRTTI1: TfsChartRTTI;
    frxDBXComponents1: TfrxDBXComponents;
    dts101: TDataSource;
    dts201: TDataSource;
    dts1: TDataSource;
    frxFDComponents1: TfrxFDComponents;
    frxOLEObject2: TfrxOLEObject;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    mtbl : TDataClient;
    mtbl2 : TDataClient;
    q : TClasseQuery;
    qry1 : TClasseQuery;
    qry2 : TClasseQuery;
    qry3 : TClasseQuery;
    qry4 : TClasseQuery;
    qry5 : TClasseQuery;
    qry10 : TClasseQuery;
    qry20 : TClasseQuery;
    qry30 : TClasseQuery;
    qry40 : TClasseQuery;
    qry50 : TClasseQuery;
    frxpdfxprt: TfrxPDFExport;
    filename : Tstrings;
    dados : TReportDados;
    procedure ConfigurarVariaveisRelatorio;
    function  makesql:string;
    procedure ImprimirDemonstrativoPISCOFINS;
    function  AbrirDatasetDados:boolean;
    procedure AbrirDatasetReport;
    procedure ConfigurarSaidaRelatorio;
    procedure ConfigurarSaidaVisualizar;
    procedure ConfigurarSaidaEmail;
    procedure ConfigurarSaidaEmailDireto;
    procedure ConfigurarSaidaPDF;
    procedure ConfigurarSaidaPrinter;
    procedure CarregarLayoutRelatorio;
    procedure ImprimirReport2(parametro:string);
    function ObterFields(dataset: TDataset):string;
    procedure ConfigurarSQL(sql: TStrings;  parametro: string; contador: Integer; q: TClasseQuery);
    function GerarFileName: string;
  public { Public declarations }
  end;

function imprimir_relatorio(cdreport: Integer; sqlwhere2, sqlwhere:string; dti, dtf: TDate; vlinteger: integer; parBloco: TInstrucaoSQL; dssaida: string=''; email:string=''; listaemail:string='';
                            dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true; f : TFunctionParameter = nil; Tabela: TipoTabela = ttReport):Boolean;overload;
function imprimir_relatorio(cdreport: Integer; mtb: TDataClient; Tabela: TipoTabela = ttReport): Boolean;overload;
function imprimir_relatorio_308(cdreport: Integer; sqlwhere:Tstrings; dti, dtf: TDate; vlinteger: integer; parBloco: TInstrucaoSQL; dssaida: string=''; email:string=''; listaemail:string='';
                                dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):Boolean;
function imprimirocamento(cdorcamento:string):Boolean;
function gerar_arquivo_relatorio(cdreport: Integer; sqlwhere2, sqlwhere:string; dti, dtf: TDate; vlinteger: integer; parBloco: TInstrucaoSQL; dssaida: string=''; email:string=''; listaemail:string='';
                                 dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true; f : TFunctionParameter = nil; Tabela: TipoTabela = ttReport): string;

implementation

uses
  uimp_adntcliente_ficha_saldo,
  uimp_adntcliente_saldo,
  uimp_adntcliente_saldo_diario,
  uimp_cntcusto_consumo_semestral,
  uimp_acompanhamento_venda,
  uimp_corrida_certificado,
  uimp_funcionario_cesta_basica,
  uimp_extrato_conta,
  uimp_fluxo_caixa,
  unumero,
  uDtmMain,
  classeemail,
  imp_sintetico_autpagto_cntcusto,
  uimp_fluxo_caixa_realizado,
  uimp_pedidomaterial,
  classeimpressaoreport,
  uimp_inventario_estoque,
  ustrings,
  udlgRichEdit,
  uimpmapafretemensal,
  uimp_grafico_pareto_tpparada,
  uimp_gratico_tpparada,
  uimp_ordproducaopesagem,
  uimp_pedidoatendimento,
  ClasseCriterioReport;

var
  frmestoquecompleto: Tfrmestoquecompleto;

{$R *.dfm}

function imprimirocamento(cdorcamento:string):Boolean;
begin
  frmestoquecompleto := tfrmestoquecompleto.create(nil);
  try
    frmestoquecompleto.qry10.q.ParamByName(_cdorcamento).AsString := cdorcamento;
    frmestoquecompleto.qry10.q.Open;
    frmestoquecompleto.frp1.ShowReport;
    result := true;
  finally
    freeandnil(frmestoquecompleto);
  end
end;

function imprimir_relatorio_308(cdreport: Integer; sqlwhere:Tstrings; dti, dtf: TDate; vlinteger: integer; parBloco: TInstrucaoSQL; dssaida: string=''; email:string='';
                                listaemail:string=''; dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true):Boolean;
begin
  frmestoquecompleto := tfrmestoquecompleto.create(nil);
  try
    frmestoquecompleto.dados.cdreport        := cdreport;
    frmestoquecompleto.dados.sqlwhere        := '';
    frmestoquecompleto.dados.sqlwhere2       := '';
    frmestoquecompleto.dados.dstitulo        := dstitulo;
    frmestoquecompleto.dados.dti_            := dti;
    frmestoquecompleto.dados.dtf             := dtf;
    frmestoquecompleto.dados.dsassunto       := dsassunto;
    frmestoquecompleto.dados.email           := email;
    frmestoquecompleto.dados.dssaida         := LowerCase(dssaida);
    frmestoquecompleto.dados.bomostrarpreview:= bomostrarpreview;
    frmestoquecompleto.dados.listaemail      := listaemail;
    frmestoquecompleto.dados.Tabela          := ttReport;
    frmestoquecompleto.dados.vlinteger       := vlinteger;
    frmestoquecompleto.dados.parBloco        := parBloco;
    frmestoquecompleto.AbrirDatasetReport;
    Report308AcompanhamentoVenda(frmestoquecompleto.mtbl, sqlwhere);
    frmestoquecompleto.dbd1.DataSet           := frmestoquecompleto.mtbl.m;
    frmestoquecompleto.dbd1.FieldAliases.Text := frmestoquecompleto.ObterFields(frmestoquecompleto.dbd1.DataSet);
    frmestoquecompleto.CarregarLayoutRelatorio;
    frmestoquecompleto.ConfigurarVariaveisRelatorio;
    frmestoquecompleto.ConfigurarSaidaRelatorio;
    result := true;
  finally
    freeandnil(frmestoquecompleto);
  end;
end;

function imprimir_relatorio(cdreport: Integer; sqlwhere2, sqlwhere:string; dti, dtf: TDate; vlinteger: integer; parBloco: TInstrucaoSQL; dssaida: string=''; email:string='';
                            listaemail:string=''; dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true; f : TFunctionParameter = nil; Tabela: TipoTabela = ttReport): Boolean;
begin
  frmestoquecompleto := tfrmestoquecompleto.create(nil);
  try
    frmestoquecompleto.dados.cdreport        := cdreport;
    frmestoquecompleto.dados.sqlwhere        := sqlwhere;
    frmestoquecompleto.dados.sqlwhere2       := sqlwhere2;
    frmestoquecompleto.dados.dstitulo        := dstitulo;
    frmestoquecompleto.dados.dti_            := dti;
    frmestoquecompleto.dados.dtf             := dtf;
    frmestoquecompleto.dados.dsassunto       := dsassunto;
    frmestoquecompleto.dados.email           := email;
    frmestoquecompleto.dados.dssaida         := LowerCase(dssaida);
    frmestoquecompleto.dados.bomostrarpreview:= bomostrarpreview;
    frmestoquecompleto.dados.listaemail      := listaemail;
    frmestoquecompleto.dados.Tabela          := Tabela;
    frmestoquecompleto.dados.vlinteger       := vlinteger;
    frmestoquecompleto.dados.parBloco        := parBloco;
    frmestoquecompleto.AbrirDatasetReport;
    if not frmestoquecompleto.AbrirDatasetDados then
    begin
      result := false;
      exit;
    end;
    frmestoquecompleto.CarregarLayoutRelatorio;
    frmestoquecompleto.dbd1.FieldAliases.Text := frmestoquecompleto.ObterFields(frmestoquecompleto.dbd1.DataSet);
    frmestoquecompleto.ConfigurarVariaveisRelatorio;
    if Assigned(f) then
    begin
      f(frmestoquecompleto.rpt) ; (*Fred*)
    end;
    frmestoquecompleto.ConfigurarSaidaRelatorio;
    result := true;
  finally
    freeandnil(frmestoquecompleto);
  end;
end;

function imprimir_relatorio(cdreport: Integer; mtb: TDataClient; Tabela: TipoTabela = ttReport): Boolean;
begin
  frmestoquecompleto := tfrmestoquecompleto.create(nil);
  try
    frmestoquecompleto.dados.cdreport        := cdreport;
    frmestoquecompleto.AbrirDatasetReport;
    frmestoquecompleto.dados.bomostrarpreview:= true;
    frmestoquecompleto.dados.Tabela          := Tabela;
    frmestoquecompleto.dbd1.DataSet          := mtb.m;
    frmestoquecompleto.CarregarLayoutRelatorio;
    frmestoquecompleto.dbd1.FieldAliases.Text := frmestoquecompleto.ObterFields(frmestoquecompleto.dbd1.DataSet);
    frmestoquecompleto.ConfigurarVariaveisRelatorio;
    frmestoquecompleto.ConfigurarSaidaRelatorio;
    result := true;
  finally
    freeandnil(frmestoquecompleto);
  end;
end;

function gerar_arquivo_relatorio(cdreport: Integer; sqlwhere2, sqlwhere:string; dti, dtf: TDate; vlinteger: integer; parBloco: TInstrucaoSQL; dssaida: string=''; email:string=''; listaemail:string='';
         dstitulo:string=''; dsassunto:string=''; bomostrarpreview:Boolean=true; f : TFunctionParameter = nil; Tabela: TipoTabela = ttReport): string;
begin
  frmestoquecompleto := tfrmestoquecompleto.create(nil);
  try
    frmestoquecompleto.dados.cdreport        := cdreport;
    frmestoquecompleto.dados.sqlwhere        := sqlwhere;
    frmestoquecompleto.dados.sqlwhere2       := sqlwhere2;
    frmestoquecompleto.dados.dstitulo        := dstitulo;
    frmestoquecompleto.dados.dti_            := dti;
    frmestoquecompleto.dados.dtf             := dtf;
    frmestoquecompleto.dados.dsassunto       := dsassunto;
    frmestoquecompleto.dados.email           := email;
    frmestoquecompleto.dados.dssaida         := LowerCase(dssaida);
    frmestoquecompleto.dados.bomostrarpreview:= bomostrarpreview;
    frmestoquecompleto.dados.listaemail      := listaemail;
    frmestoquecompleto.dados.Tabela          := Tabela;
    frmestoquecompleto.dados.vlinteger       := vlinteger;
    frmestoquecompleto.dados.parBloco        := parBloco;
    frmestoquecompleto.AbrirDatasetReport;
    if not frmestoquecompleto.AbrirDatasetDados then
    begin
      exit;
    end;
    frmestoquecompleto.CarregarLayoutRelatorio;
    frmestoquecompleto.dbd1.FieldAliases.Text := frmestoquecompleto.ObterFields(frmestoquecompleto.dbd1.DataSet);
    frmestoquecompleto.ConfigurarVariaveisRelatorio;
    if Assigned(f) then
    begin
      f(frmestoquecompleto.rpt); (*Fred*)
    end;
    frmestoquecompleto.ConfigurarSaidaRelatorio;
    if frmestoquecompleto.dados.nmpdf <> '' then
    begin
      result := frmestoquecompleto.dados.nmpdf;
    end;
  finally
    freeandnil(frmestoquecompleto);
  end;
end;

function Tfrmestoquecompleto.AbrirDatasetDados:boolean;
begin
  result := true;
  if frmestoquecompleto.dados.Tabela <> ttReport then
  begin
    result := configuar_impressao_report(mtbl,
                                         dts1,
                                         qry1, qry2, qry3, qry4, qry5,
                                         dbd1,
                                         q,
                                         dados.parBloco,
                                         dados.cdreport,
                                         dados.sqlwhere,
                                         dados.sqlwhere2,
                                         dados.dti_,
                                         dados.dtf);
    Exit;
  end;
  if dados.cdreport = 1   then
  begin
    imp_lista_cesta_basica(mtbl, mtbl2, dados.dti_, dados.dtf, StringParametro(q.q.fieldbyname(_dsrelatorio).AsString, dados.sqlwhere));
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
    frmestoquecompleto.dbd2.DataSet := frmestoquecompleto.mtbl2.m;
  end
  else if dados.cdreport = 7 then
  begin
    imp_mapafretemensal(mtbl, StringParametro(q.q.fieldbyname(_dsrelatorio).AsString, dados.sqlwhere));
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 12 then
  begin
    imp_grafico_barra_tpparada(mtbl, StringParametro(q.q.fieldbyname(_dsrelatorio).AsString, dados.sqlwhere), _tpparada);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 13 then
  begin
    imp_grafico_barra_tpparada(mtbl, StringParametro(q.q.fieldbyname(_dsrelatorio).AsString, dados.sqlwhere), _subtpparada);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 14 then
  begin
    imp_grafico_pareto_barra_tpparada(mtbl, StringParametro(q.q.fieldbyname(_dsrelatorio).AsString, dados.sqlwhere), _tpparada);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 15 then
  begin
    imp_grafico_pareto_barra_tpparada(mtbl, StringParametro(q.q.fieldbyname(_dsrelatorio).AsString, dados.sqlwhere), _subtpparada);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 22 then
  begin
    imp_ordproducao_pesagem(mtbl, StringParametro(q.q.fieldbyname(_dsrelatorio).AsString, dados.sqlwhere));
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 32 then
  begin
    imp_pedidoatendimento(mtbl, StringParametro(q.q.fieldbyname(_dsrelatorio).AsString, dados.sqlwhere));
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 74 then
  begin
    Report074DRE(mtbl, mtbl2, dados.sqlwhere);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
    frmestoquecompleto.dbd2.DataSet := frmestoquecompleto.mtbl2.m;
  end
  else if (dados.cdreport = 300) or (dados.cdreport = 301) or (dados.cdreport = 302) then
  begin
    imp_cntcusto_consumo_semestral (mtbl, dados.dti_, dados.vlinteger, dados.sqlwhere);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 304 then
  begin
    imp_adntcliente_ficha_saldo(mtbl, dados.sqlwhere);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 305 then
  begin
    imp_adntcliente_saldo_diario(mtbl, dados.dti_, dados.dtf);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 307 then
  begin
    imp_adntcliente_saldo(mtbl, dados.dti_);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 310 then
  begin
    imp_corrida_certificado(mtbl, dados.sqlwhere);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 349 then
  begin
    imprimirSinteticoAutpagtoCntcusto(mtbl, dados.sqlwhere, dados.sqlwhere2);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 410 then
  begin
    imp_fluxo_caixa(mtbl, dados.dti_, dados.dtf);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 418 then
  begin
    imp_fluxo_caixa(mtbl, dados.dti_, dados.dtf, true);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 425   then
  begin
    ImprimirDemonstrativoPISCOFINS
  end
  else if dados.cdreport = 431 then
  begin
    imp_fluxo_caixa_realizado(mtbl, dados.dti_, dados.dtf, true);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 447 then
  begin
    imp_pedidomaterial(mtbl, dados.sqlwhere, q.q.fieldbyname(_dsrelatorio).AsString);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if dados.cdreport = 475 then
  begin
    imp_fluxo_caixa(mtbl, dados.dti_, dados.dtf, true, true);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if (dados.cdreport = 334) or (dados.cdreport = 487) then
  begin
    imp_extrato_Saldo(frmestoquecompleto.mtbl, dados.sqlwhere, dados.SQLwhere2);
    ImprimirReport2(dados.SQLwhere2);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else if (dados.cdreport = 575) or (dados.cdreport = 576) then
  begin
    imp_inventario_estoque(frmestoquecompleto.mtbl, dados.sqlwhere, dados.sqlwhere2);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end
  else
  begin
    result := configuar_impressao_report(mtbl,
                                         dts1,
                                         qry1, qry2, qry3, qry4, qry5,
                                         dbd1,
                                         q,
                                         dados.parBloco,
                                         dados.cdreport,
                                         dados.sqlwhere,
                                         dados.sqlwhere2,
                                         dados.dti_,
                                         dados.dtf);
  end;
  if dados.cdreport = 643 then
  begin
    ImprimirFatura(mtbl, qry1);
    frmestoquecompleto.dbd1.DataSet := frmestoquecompleto.mtbl.m;
  end;
end;

procedure Tfrmestoquecompleto.AbrirDatasetReport;
begin
  q.q.Open(makesql);
  if q.q.Eof then
  begin
    MessageDlg('Relatório não encontrado no banco de dados (Código '+inttostr(dados.cdreport)+').'#13#10'É necessário atualizar o Sistema.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure Tfrmestoquecompleto.CarregarLayoutRelatorio;
var
  texto : TStringStream;
begin
  texto := TStringStream.Create(q.q.FieldByName(_dsscript).AsString);
  try
    rpt.LoadFromStream(texto);
  finally
    freeandnil(texto);
  end;
end;

procedure Tfrmestoquecompleto.FormCreate(Sender: TObject);
begin
  mtbl  := TDataClient.create;
  mtbl2 := TDataClient.create;
  frxpdfxprt   := TfrxPDFExport.Create(self);

  q     := TClasseQuery.Create;
  qry1  := tclassequery.create;
  qry2  := tclassequery.create;
  qry3  := tclassequery.create;
  qry4  := tclassequery.create;
  qry5  := tclassequery.create;
  qry10 := tclassequery.create;
  qry20 := tclassequery.create;
  qry30 := tclassequery.create;
  qry40 := tclassequery.create;
  qry50 := tclassequery.create;

  dbd1.dataset := qry1.q;
  dbd2.dataset := qry2.q;
  dbd3.dataset := qry3.q;
  dbd4.dataset := qry4.q;
  dbd5.dataset := qry5.q;
  fdb1.dataset := qry10.q;
  fdb2.dataset := qry20.q;
  fdb3.dataset := qry30.q;
  fdb4.dataset := qry40.q;
  fdb5.dataset := qry50.q;

  dts101.dataset := qry10.q;
  dts201.dataset := qry20.q;

  qry10.q.sql.text := 'SELECT O.CDORCAMENTO'+
                            ',O.DTEMISSAO'+
                            ',O.DTPRVENTREGA'+
                            ',O.DTPRORROGACAO'+
                            ',O.CDCLIENTE'+
                            ',C.NMCLIENTE'+
                            ',O.NUCOTACAO'+
                            ',FO.NMFUNCIONARIO'+
                            ',CP.NMCONDPAGTO'+
                            ',O.DSOBSERVACAO'+
                            ',O.DSOBSINTERNA'+
                            ',O.VLTOTAL'+
                            ',O.VLTOTALCIPI '+
                      'FROM ORCAMENTO O '+
                      'LEFT JOIN CLIENTE C ON C.CDCLIENTE=O.CDCLIENTE '+
                      'LEFT JOIN FUNCIONARIO FO ON FO.CDFUNCIONARIO=O.CDFUNCIONARIOORCAMENTISTA '+
                      'LEFT JOIN CONDPAGTO CP ON CP.CDCONDPAGTO=O.CDCONDPAGTO '+
                      'WHERE O.CDORCAMENTO=:CDORCAMENTO';
  qry20.q.sql.text := 'SELECT I.NUSEQUENCIA'+
                            ',I.CDDIGITADO'+
                            ',P.NMPRODUTO'+
                            ',U.NMUNIDADE'+
                            ',I.DSDESENHO'+
                            ',I.DSDESENHOPOSICAO'+
                            ',I.DSDESENHOREVISAO'+
                            ',I.CDITORCAMENTO'+
                            ',I.ALICMS'+
                            ',I.ALIPI'+
                            ',T.NMTPICMS'+
                            ',I.VLCUSTOP'+
                            ',I.QTITEM'+
                            ',I.VLUNITARIO'+
                            ',I.PRLUCRO'+
                            ',I.VLTOTALCIPI '+
                      'FROM ITORCAMENTO I '+
                      'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO '+
                      'LEFT JOIN UNIDADE U ON U.CDUNIDADE=P.CDUNIDADE '+
                      'LEFT JOIN TPICMS T ON T.CDTPICMS=I.CDTPICMS '+
                      'WHERE I.CDORCAMENTO=:CDORCAMENTO AND I.CDSTITORCAMENTO<>4 '+
                      'ORDER BY NUSEQUENCIA';
  qry30.q.sql.text := 'SELECT I.CDDIGITADO'+
                            ',P.NMPRODUTO'+
                            ',I.DSFORMULA'+
                            ',I.QTPECA'+
                            ',I.QTITEM'+
                            ',I.VLUNITARIO'+
                            ',I.VLTOTAL'+
                            ',I.VLFINAL'+
                            ',I.VLIPI'+
                            ',I.VLFRETE'+
                            ',I.ALICMS,I.ALIPI'+
                            ',I.BORECUPERAICMS'+
                            ',I.BORECUPERAIPI '+
                      'FROM ITORCAMENTOMATERIAL I '+
                      'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO WHERE I.CDITORCAMENTO=:CDITORCAMENTO';
  qry40.q.sql.text := 'SELECT T.NMTPEQUIPAMENTO'+
                            ',I.QTPREPARACAO'+
                            ',I.QTOPERACAO'+
                            ',I.VLPREPARACAO'+
                            ',I.VLOPERACAO'+
                            ',I.VLTOTALPREPARACAO'+
                            ',I.VLTOTALOPERACAO '+
                      'FROM ITORCAMENTORECURSO I '+
                      'LEFT JOIN TPEQUIPAMENTO T ON T.CDTPEQUIPAMENTO=I.CDTPEQUIPAMENTO '+
                      'WHERE I.CDITORCAMENTO=:CDITORCAMENTO '+
                      'ORDER BY NUSEQUENCIA';
  qry50.q.sql.text := 'SELECT I.CDDIGITADO'+
                            ',P.NMPRODUTO'+
                            ',I.QTITEM'+
                            ',I.VLUNITARIO'+
                            ',I.VLTOTAL '+
                      'FROM ITORCAMENTOCUSTO I '+
                      'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO '+
                      'WHERE I.CDITORCAMENTO=:CDITORCAMENTO';

  qry20.q.mastersource := dts101;
  qry30.q.mastersource := dts201;
  qry40.q.mastersource := dts201;
  qry50.q.mastersource := dts201;

  filename   := TStringList.Create;
end;

procedure Tfrmestoquecompleto.FormDestroy(Sender: TObject);
begin
  freeandnil(mtbl2);
  freeandnil(mtbl);
  freeandnil(qry1);
  freeandnil(qry2);
  freeandnil(qry3);
  freeandnil(qry4);
  freeandnil(qry5);
  freeandnil(qry10);
  freeandnil(qry20);
  freeandnil(qry30);
  freeandnil(qry40);
  freeandnil(qry50);
  freeandnil(filename);
  freeandnil(q);
end;

function Tfrmestoquecompleto.ObterFields(dataset: TDataset): string;
var
  i : Integer;
begin
  for i := 0 to dataset.FieldCount - 1 do
  begin
    result := Result + dataset.Fields[i].FieldName+'='+dataset.Fields[i].FieldName+#13;
  end;
end;

procedure Tfrmestoquecompleto.ImprimirDemonstrativoPISCOFINS;
var
  dti, dtf : TDate;
begin
  dti := qregistro.DatadoCodigo(_lp1a, strtoint(dados.sqlwhere), _dtinicio);
  dtf := qregistro.DatadoCodigo(_lp1a, strtoint(dados.sqlwhere), _dtfinal);
  qry1.q.Open('SELECT COALESCE(SUM(S.VLPRODUTO),0)+COALESCE(SUM(S.VLSERVICO),0) VLTOTAL'+
                   ',(COALESCE(SUM(S.VLPRODUTO),0)+COALESCE(SUM(S.VLSERVICO),0))*0.0165 VLPIS'+
                   ',(COALESCE(SUM(S.VLPRODUTO),0)+COALESCE(SUM(S.VLSERVICO),0))*0.076 VLCOFINS'+
                    ',E.NMEMPRESA '+
              'FROM SAIDA S '+
              'inner join duplicata D on d.cdsaida=s.cdsaida and s.cdempresa=d.cdempresa '+
              'left join EMPRESA E on e.cdempresa=d.cdempresa '+
              'WHERE s.cdempresa='+empresa.cdempresa.ToString+' '+
              'and S.DTEMISSAO BETWEEN '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
              'GROUP BY E.NMEMPRESA');
  qry2.q.Open('SELECT SUM(L.VLpis) VLPIS'+
                    ',SUM(l.vlcofins) VLCOFINS '+
              'FROM lp1aativopiscofins L '+
              'left join lp1a on lp1a.cdlp1a=l.cdlp1a and l.cdempresa=lp1a.cdempresa '+
              'WHERE lp1a.cdempresa='+empresa.cdempresa.ToString+' and lp1a.cdlp1a='+dados.sqlwhere);
  qry3.q.Open('SELECT SUM(VLPIS) VLPIS'+
                    ',SUM(VLCOFINS) VLCOFINS '+
              'FROM ENTRADA E '+
              'WHERE cdempresa='+empresa.cdempresa.ToString+' and dtsaida between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf));
  qry4.q.Open('SELECT S.NUSAIDA'+
                    ',S.VLPISRET'+
                    ',S.VLCOFINSRET '+
              'FROM SAIDA S '+
              'inner join duplicata D on d.cdsaida=s.cdsaida and s.cdempresa=d.cdempresa '+
              'WHERE s.cdempresa='+empresa.cdempresa.ToString+' '+
              'and s.dtsaida BETWEEN '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
              'and d.dtbaixa BETWEEN '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
              'ORDER BY S.DTEMISSAO,S.NUSAIDA');
  qry5.q.Open('SELECT S.NUSAIDA'+
                    ',S.VLPISRET'+
                    ',S.VLCOFINSRET '+
              'FROM SAIDA S '+
              'inner join duplicata D on d.cdsaida=s.cdsaida and s.cdempresa=d.cdempresa '+
              'WHERE s.cdempresa='+empresa.cdempresa.ToString+' and S.VLPISRET>0 and d.dtbaixa BETWEEN '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' and s.dtemissao<'+GetDtBanco(dti)+' '+
              'ORDER BY S.DTEMISSAO,S.NUSAIDA');
end;

procedure Tfrmestoquecompleto.ConfigurarSQL(sql : TStrings; parametro: string; contador:Integer; q: TClasseQuery);
begin
  if sql.Count > contador then
  begin
    q.q.Connection := aplicacao.confire;
    q.q.sql.text   := StringParametro(sql[contador], parametro);
    q.q.Open;
  end;
end;

procedure Tfrmestoquecompleto.ImprimirReport2(parametro: string);
var
  sql : TStrings;
begin
  sql := TStringList.Create;
  try
    getsqlcommandText(q.q.fieldbyname(_dsrelatorio).AsString, sql);
    ConfigurarSQL(sql, parametro, 1, qry2);
    ConfigurarSQL(sql, parametro, 2, qry3);
    ConfigurarSQL(sql, parametro, 3, qry4);
  finally
    freeandnil(sql);
  end;
end;

function Tfrmestoquecompleto.makesql: string;
var
  texto_user : string;
begin
  texto_user := '';
  if dados.Tabela <> ttReport then
  begin
    texto_user := _user;
  end;
  result := 'select boimprimirdireto'+
                  ',dsscript'+
                  ',nucopia'+
                  ',eventoemail.cdeventoemail'+
                  ',dsrelatorio'+
                  ',nmreport'+texto_user+' '+
            'from Report'+texto_user+' '+
            'left join eventoemail on eventoemail.cdreport'+texto_user+'=report'+texto_user+'.cdreport'+texto_user+' and eventoemail.cdempresa='+Empresa.cdempresa.ToString+' '+
            'where Report'+texto_user+'.cdreport'+texto_user+'='+inttostr(dados.cdreport);
end;

procedure Tfrmestoquecompleto.ConfigurarSaidaEmail;
  function gerar_file_name:string;
    function get_sql_from:string;
    var
      quebra, table_, from_ : Integer;
    begin
      from_  := Pos(UpperCase(_from), UpperCase(qry1.q.sql.Text));
      table_ := Pos(' ', Copy(qry1.q.sql.Text, from_+6, Length(qry1.q.SQL.Text)-from_+6));
      quebra := pos(#$D#$A, Copy(qry1.q.sql.Text, from_+6, Length(qry1.q.SQL.Text)-from_+6));
      if quebra < table_ then
      begin
        table_ := quebra;
      end;
      result := Copy(qry1.q.SQL.Text, from_ + 5, table_);
    end;
  begin
    if LowerCase(Copy(dados.sqlwhere, 1, 5)) = _where then
    begin
      result := NomeTemporario
    end
    else
    begin
      result := Empresa.nmempresa+' '+get_sql_from+' '+dados.sqlwhere;
    end;
    result := ExtractFilePath(Application.ExeName)+result+'.'+_pdf;
  end;
begin
  filename.Add(gerar_file_name);
  frxpdfxprt.FileName   := filename[0];
  frxpdfxprt.ShowDialog := False;
  rpt.PrepareReport;
  rpt.Export(frmestoquecompleto.frxpdfxprt);
  if not q.q.FieldByName(_cdeventoemail).isnull then
  begin
    formatar_evento_email(q.q.FieldByName(_cdeventoemail).AsString, dados);
  end;
  Formatar_Email(True, dados.dstitulo, dados.dsassunto, filename[0], dados.email, dados.listaemail);
end;

function Tfrmestoquecompleto.GerarFileName:string;
begin
  if LowerCase(Copy(dados.sqlwhere, 1, 5)) = _where then
  begin
    result := NomeTemporario
  end
  else
  begin
    result := dados.sqlwhere;
  end;
  result := ExtractFilePath(Application.ExeName)+result+'.'+_pdf;
end;

procedure Tfrmestoquecompleto.ConfigurarSaidaEmailDireto;
begin
  filename.Add(GerarFileName);
  frxpdfxprt.FileName   := filename[0];
  frxpdfxprt.ShowDialog := False;
  rpt.PrepareReport;
  rpt.Export(frmestoquecompleto.frxpdfxprt);
  Formatar_Email(True, dados.dstitulo, dados.dsassunto, filename[0], dados.email, dados.listaemail, '', '', '', '', '', True);
end;

procedure Tfrmestoquecompleto.ConfigurarSaidaPDF;
begin
  dados.nmpdf           := ExtractFilePath(Application.ExeName)+dados.sqlwhere+'.'+dados.dssaida;
  frxpdfxprt.FileName   := dados.nmpdf;
  frxpdfxprt.ShowDialog := False;
  rpt.PrepareReport;
  rpt.Export(frmestoquecompleto.frxpdfxprt);
end;

procedure Tfrmestoquecompleto.ConfigurarSaidaPrinter;
begin
  rpt.PrepareReport;
  rpt.Print;
end;

procedure Tfrmestoquecompleto.ConfigurarSaidaRelatorio;
begin
  if dados.dssaida = _Printer then
  begin
    ConfigurarSaidaPrinter
  end
  else if dados.dssaida = _email then
  begin
    ConfigurarSaidaEmail
  end
  else if dados.dssaida = _email+_direto then
  begin
    ConfigurarSaidaEmailDireto
  end
  else if dados.dssaida = _pdf then
  begin
    ConfigurarSaidaPDF
  end
  else
  begin
    ConfigurarSaidaVisualizar;
  end;
end;

procedure Tfrmestoquecompleto.ConfigurarSaidaVisualizar;
begin
  if q.q.FieldByName(_nucopia).asinteger > 1 then
  begin
    rpt.PrintOptions.copies := q.q.FieldByName(_nucopia).asinteger;
  end;
  if q.q.FieldByName(_boimprimirdireto).AsString = _S then
  begin
    rpt.PrintOptions.ShowDialog := False;
    rpt.PrepareReport;
    rpt.print;
  end
  else if q.q.FieldByName(_boimprimirdireto).asstring = _i then
  begin
    rpt.PrepareReport;
    rpt.Print;
  end
  else
  begin
    rpt.ShowReport;
  end;
end;

procedure Tfrmestoquecompleto.ConfigurarVariaveisRelatorio;
begin
  rpt.Variables['vNMEmpresa'] := QuotedStr(Empresa.nmempresa);
  rpt.Variables['vQuipos']    := QuotedStr('Quipos Tecnologia');
  rpt.Variables['vTitulo']    := QuotedStr(dados.dstitulo);
  rpt.Variables['vWhere']     := QuotedStr(dados.sqlwhere);      (*Fred*)
  rpt.Variables['vWhere2']    := QuotedStr(dados.sqlwhere2);     (*Fred*)
  rpt.Variables['vcdempresa'] := dados.sqlwhere;
  rpt.Variables['vcodigo']    := dados.sqlwhere2;     
  rpt.Variables['vfieldquebra'] := qreportvfieldquebra;
  if (dados.cdreport = 575) or (dados.cdreport = 576) then
  begin
    rpt.Variables['vCriterio']  := get_criterio(dados.cdreport, dados.sqlwhere, dados.sqlwhere2)
  end
  else
  begin
    rpt.Variables['vCriterio']  := get_criterio(dados.cdreport, dados.sqlwhere, dados.sqlwhere2) + get_criterio(dados.cdreport, dados.sqlwhere2, dados.sqlwhere2);
  end;
  if dados.dti_ > 0 then
  begin
    rpt.Variables['vdti'] := GetDtAbrev(dados.dti_);
  end;
  if dados.dtf > 0 then
  begin
    rpt.Variables['vdtf'] := GetDtAbrev(dados.dtf);
  end;
end;

end.

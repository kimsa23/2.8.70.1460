unit udespesaconvenio;

interface

uses
  System.Actions, System.UITypes,
  forms, ComCtrls, ToolWin, ExtCtrls, Mask, Controls, Buttons, sysutils, windows,
  Graphics, dialogs, StdCtrls, Classes, ActnList, Menus, ExcelXP, Variants,
  FMTBcd, DBCtrls, DB, DBClient, Provider, sqlexpr, Grids,
  urotinas, udatahora, ustrings, uExportarExcel,
  uconstantes, ulocalizar, uregistro,
  classeRegistro, classegerar, classeconsiste, classeregistrainformacao,
  classeform, classeretornasql, classeusuario,
  classefuncionario, classeempresa, classeaplicacao, classeexecutasql,
  cxLookAndFeelPainters, cxTextEdit, cxMemo, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxPC, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxDBEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCalc, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxDBLabel, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSplitter, cxRichEdit, cxCheckBox, cxPCdxBarPopupMenu,
  cxNavigator, dxBarBuiltInMenu;

type
  Tfrmdespesaconvenio = class(TForm)
    pnl: TPanel;
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnNovo: TdxBarLargeButton;
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtncancelar: TdxBarLargeButton;
    dxbrlrgbtnexcluir: TdxBarLargeButton;
    dxbrsprtr1: TdxBarSeparator;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrsprtr2: TdxBarSeparator;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    edtcodigo: TcxTextEdit;
    edtdtemissao: TcxDBDateEdit;
    lbltpconvenio: TLabel;
    cbxcdtpconvenio: TcxDBLookupComboBox;
    btnimprimir: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxBarLargeButton4: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    edtdtprevista: TcxDBDateEdit;
    lbldtprevista: TLabel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    grlLevel1: TcxGridLevel;
    sdsCDDESPESACONVENIO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDTPCONVENIO: TIntegerField;
    sdsDTINICIO: TDateField;
    sdsDTTERMINO: TDateField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDITDESPESACONVENIO: TIntegerField;
    sdsdetailCDDESPESACONVENIO: TIntegerField;
    sdsdetailCDFUNCIONARIO: TIntegerField;
    sdsdetailCDITFUNCIONARIODEPENDENTE: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    cdsCDDESPESACONVENIO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDTPCONVENIO: TIntegerField;
    cdsDTINICIO: TDateField;
    cdsDTTERMINO: TDateField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDITDESPESACONVENIO: TIntegerField;
    cdsdetailCDDESPESACONVENIO: TIntegerField;
    cdsdetailCDFUNCIONARIO: TIntegerField;
    cdsdetailCDITFUNCIONARIODEPENDENTE: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    tbvCDFUNCIONARIO: TcxGridDBColumn;
    tbvCDITFUNCIONARIODEPENDENTE: TcxGridDBColumn;
    actimportar: TAction;
    btnimportar: TdxBarLargeButton;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    tbvVLMENSALIDADE: TcxGridDBColumn;
    tbvVLDESPESA: TcxGridDBColumn;
    pumimportar: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    actimportardespesa: TAction;
    actimportarmensalidade: TAction;
    dxBarButton3: TdxBarButton;
    sdsdetailVLDESPESA: TFMTBCDField;
    sdsdetailVLMENSALIDADE: TFMTBCDField;
    cdsdetailVLDESPESA: TFMTBCDField;
    cdsdetailVLMENSALIDADE: TFMTBCDField;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    procedure actNovoExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure colorEnter(Sender: TObject);
    procedure colorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdtpconvenioEnter(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure actimportarExecute(Sender: TObject);
    procedure actimportarmensalidadeExecute(Sender: TObject);
    procedure actimportardespesaExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tbl : string;
    procedure importar(tipo:string);
    procedure AbrirTabelas;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmdespesaconvenio: Tfrmdespesaconvenio;

implementation

uses UMain, uDtmMain, uMenuRelatorio, uprogressbar;

{$R *.DFM}

const
  exibe    = 'Despesa de Convênio';
  artigoI  = 'a';

procedure Tfrmdespesaconvenio.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmdespesaconvenio.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

function Tfrmdespesaconvenio.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmdespesaconvenio.AbrirTabelas;
begin
  cbxcdtpconvenio.Properties.ListSource := abrir_tabela(_tpconvenio);
  TcxLookupComboBoxProperties(tbvCDFUNCIONARIO.Properties).ListSource := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvCDITFUNCIONARIODEPENDENTE.Properties).ListSource := abrir_tabela(_itfuncionariodependente);
end;

procedure Tfrmdespesaconvenio.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmdespesaconvenio.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmdespesaconvenio.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmdespesaconvenio.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmdespesaconvenio.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmdespesaconvenio.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmdespesaconvenio.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmdespesaconvenio.actSalvarExecute(Sender: TObject);
begin
  if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
  begin
    cdsdetail.Post;
  end;
  registro.Salvar;
  abrir(cdsCDDESPESACONVENIO.AsInteger);
end;

procedure Tfrmdespesaconvenio.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmdespesaconvenio.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmdespesaconvenio.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmdespesaconvenio.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmdespesaconvenio.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmdespesaconvenio.FormDestroy(Sender: TObject);
begin
  freeandnil(registro);
end;

procedure Tfrmdespesaconvenio.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmdespesaconvenio.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure Tfrmdespesaconvenio.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if cdsdetailCDITDESPESACONVENIO.IsNull then
  begin
    cdsdetailCDITDESPESACONVENIO.AsString := GerarCodigo(_itdespesaconvenio);
  end;
  registro.set_update(cdsdetail);
end;

procedure Tfrmdespesaconvenio.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actimportar.Enabled := actImprimir.Enabled;
end;

procedure Tfrmdespesaconvenio.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmdespesaconvenio.colorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdespesaconvenio.colorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdespesaconvenio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmdespesaconvenio.FormCreate(Sender: TObject);
begin
  tbl := _despesaconvenio;
  AbrirTabelas;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 58, cds, tbl);
end;

procedure Tfrmdespesaconvenio.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmdespesaconvenio.cbxcdtpconvenioEnter(Sender: TObject);
begin
  colorEnter(Sender);
  abrir_tabela(_tpconvenio);
end;

procedure Tfrmdespesaconvenio.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure Tfrmdespesaconvenio.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
end;

procedure Tfrmdespesaconvenio.actimportarExecute(Sender: TObject);
begin
  btnimportar.DropDown(false);
end;

procedure Tfrmdespesaconvenio.actimportarmensalidadeExecute(Sender: TObject);
begin
  importar(_mensalidade);
end;

procedure Tfrmdespesaconvenio.actimportardespesaExecute(Sender: TObject);
begin
  importar(_despesa);
end;

procedure Tfrmdespesaconvenio.importar(tipo: string);
var
  i, LCID : integer;
  cditdespesaconvenio, cdfuncionario, cditfuncionariodependente, nmusuario, nmfuncionario, filename, sqlregistras:string;
  AplicacaoE : TExcelApplication;
  Planilha : TExcelWorksheet;
  wkbk : _Workbook;
  sql : TStrings;
  valor : Currency;
  funcionario : TFuncionario;
  function get_inserir_dependente(nome:string):string;
  begin
    result := GerarCodigo(_itfuncionariodependente);
    sql.Add('insert into itfuncionariodependente(CDITFUNCIONARIODEPENDENTE,CDFUNCIONARIO,NMITFUNCIONARIODEPENDENTE,'+_sqlreg+result+','+cdfuncionario+','+quotedstr(nome)+','+sqlregistras+';');
  end;
  function makesql_cditdespesaconvenio:string;
  begin
    result := 'select cditdespesaconvenio '+
              'from itdespesaconvenio '+
              'where cdempresa='+empresa.cdempresa.tostring+' '+
              'and cddespesaconvenio='+cdsCDDESPESACONVENIO.asstring+' '+
              'and cdfuncionario='+cdfuncionario+' '+
              'and cditfuncionariodependente';
    if cditfuncionariodependente = _null then
    begin
      result := result + ' is null'
    end
    else
    begin
      result := result + '='+cditfuncionariodependente;
    end;
  end;
  procedure limpar_campo(tipo:string);
  begin
    sql.Add('update itdespesaconvenio set vl'+tipo+'=0 where cdempresa='+cds.FieldByName(_cdempresa).AsString+' and cddespesaconvenio='+cdsCDDESPESACONVENIO.AsString+';');
  end;
  function set_valor(vlplanilha: Variant):Currency;
  var
    vlfixo: Currency;
  begin
    result                    := Planilha.Range[_c+inttostr(i),_c+inttostr(i)].Value2;
    funcionario.cdfuncionario := strtoint(cdfuncionario);
    vlfixo                    := funcionario.ObterVlfixoTpconvenio(cdsCDTPCONVENIO.AsString);
    if vlfixo > 0 then
    begin
      result := vlfixo;
      if cditfuncionariodependente <> _null then
      begin
        result := 0;
      end;
      Exit;
    end;
    if (tipo = _mensalidade) and (cditfuncionariodependente = _null) then
    begin
      result := result - funcionario.ObterVldescontoConvenio(cdsCDTPCONVENIO.AsString, cdsDTINICIO.AsDateTime, cdsDTTERMINO.AsDateTime);
    end;
  end;
begin
  // selecionar o arquivo
  if not QRotinas.getfilename(filename) then
  begin
    exit;
  end;
  // abrir o arquivo
  sql            := TStringList.Create;
  funcionario    := TFuncionario.create;
  sqlregistras   := sqlregistra;
  AplicacaoE     := TExcelApplication.Create(nil);
  Planilha       := TExcelWorksheet.Create(nil);
  LCID           := GetUserDefaultLCID;
  wkbk           := AplicacaoE.Workbooks.Open(filename, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, LCID);
  frmprogressbar := Tfrmprogressbar.Create(application);
  frmprogressbar.gau.MaxValue := 100;
  frmprogressbar.Show;
  try
    limpar_campo(tipo);
    // navegar nos registros
    Planilha.ConnectTo(wkbk.Worksheets[1] as _Worksheet);
    Planilha.Activate; // torna a planilha da lista a planilha ativa
    i      := 1;
    nmusuario := UpperCase(Trim(Planilha.Range[_A+inttostr(i),_A+inttostr(i)].Value2));
    while nmusuario <> '' do
    begin
      frmprogressbar.pnl.Caption  := nmusuario;
      frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
      Application.ProcessMessages;
      if frmprogressbar.gau.Progress = 100 then
      begin
        frmprogressbar.gau.Progress := 0;
      end;
      nmfuncionario := UpperCase(Trim(Planilha.Range[_b+inttostr(i),_b+inttostr(i)].Value2));
      if nmfuncionario = '' then
      begin
        nmfuncionario := nmusuario;
        nmusuario     := '';
      end;
      // procurar o funcionario
      cdfuncionario := qregistro.codigodonome(_funcionario, nmfuncionario);
      if cdfuncionario = '' then
      begin
        messagedlg('Funcionário '+nmfuncionario+#13'inexitente.', mtinformation, [mbok], 0);
        abort;
      end;
      // procurar o dependente
      if nmusuario <> '' then
      begin
        cditfuncionariodependente := RetornaSQLString('select cditfuncionariodependente '+
                                                      'from itfuncionariodependente '+
                                                      'where cdempresa='+empresa.cdempresa.tostring+' '+
                                                      'and cdfuncionario='+cdfuncionario+' '+
                                                      'and nmitfuncionariodependente='+quotedstr(nmusuario));
        if cditfuncionariodependente = '' then // caso não exista inserir dependente
        begin
          cditfuncionariodependente := get_inserir_dependente(nmusuario);
        end;
      end
      else
      begin
        cditfuncionariodependente := _null;
      end;
      valor               := set_valor(Planilha.Range[_c+inttostr(i),_c+inttostr(i)].Value2);
      cditdespesaconvenio := RetornaSQLString(makesql_cditdespesaconvenio);
      if cditdespesaconvenio = '' then
      begin
        sql.Add('insert into ITDESPESACONVENIO('+
                'CDITDESPESACONVENIO,CDDESPESACONVENIO,CDFUNCIONARIO,CDITFUNCIONARIODEPENDENTE,VL'+tipo+','+_sqlreg+
                GerarCodigo(_itdespesaconvenio)+','+
                cdsCDDESPESACONVENIO.AsString+','+
                cdfuncionario+','+
                cditfuncionariodependente+','+
                getcurrencys(valor)+','+
                sqlregistras+';');
      end
      else
      begin
        sql.Add('update itdespesaconvenio set vl'+tipo+'='+getcurrencys(valor)+' where cdempresa='+cds.FieldByName(_cdempresa).AsString+' and cditdespesaconvenio='+cditdespesaconvenio+';');
      end;
      Inc(i);
      nmusuario := UpperCase(Trim(Planilha.Range[_A+inttostr(i),_A+inttostr(i)].Value2));
    end;
    if ExecutaScript(sql) then
    begin
      abrir_tabela(_itfuncionariodependente);
      abrir_tabela(_funcionario);
      Abrir(cdsCDDESPESACONVENIO.AsInteger);
    end;
  finally
    sql.free;
    funcionario.Free;
    freeandnil(frmprogressbar);
    AplicacaoE.Workbooks.Close(lcid);
    planilha.Free;
    FreeAndNil(AplicacaoE);
  end;
end;

end.

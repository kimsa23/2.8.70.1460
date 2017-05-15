unit ucobranca;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, StdCtrls, Controls, ComCtrls, ToolWin, ExtCtrls, dialogs, Classes,
  Menus, sysutils, Mask, ActnList,
  Grids, DB, FMTBcd, Provider, DBClient, sqlexpr,
  umontarsql, ustrings, uExportarExcel, uregistro, udatahora,
  uconstantes,
  classeempresa, classeusuario, classeconsiste,
  classeregistrainformacao, classegerar, classeretornasql, classeduplicata,
  classesaida, classecobranca, classeRegistro, classeform, classeaplicacao, classequery,
  dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxDBEdit, cxButtonEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxLabel, cxDBLabel, cxButtons, cxGroupBox, cxCurrencyEdit, cxBarEditItem,
  cxNavigator;

type
  TfrmCobranca = class(TForm)
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
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    pnl1: TPanel;
    Label1: TLabel;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    cds: TClientDataSet;
    dts: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    sdsdetail: TSQLDataSet;
    cdsdetail: TClientDataSet;
    dtsdetail: TDataSource;
    edtcodigo: TcxTextEdit;
    dts1: TDataSource;
    sdsCDCOBRANCA: TIntegerField;
    sdsNUREMESSA: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsdetailCDCOBRANCA: TIntegerField;
    sdsdetailCDDUPLICATA: TIntegerField;
    sdsdetailNUDUPLICATA: TStringField;
    sdsdetailCDITCOBRANCA: TIntegerField;
    sdsdetailDTEMISSAO: TDateField;
    sdsdetailVLSALDO: TFMTBCDField;
    sdsdetailDTPRORROGACAO: TDateField;
    cdsCDCOBRANCA: TIntegerField;
    cdsNUREMESSA: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDCOBRANCA: TIntegerField;
    cdsdetailCDDUPLICATA: TIntegerField;
    cdsdetailNUDUPLICATA: TStringField;
    cdsdetailCDITCOBRANCA: TIntegerField;
    cdsdetailDTEMISSAO: TDateField;
    cdsdetailVLSALDO: TFMTBCDField;
    cdsdetailDTPRORROGACAO: TDateField;
    sdsdetailRZSOCIAL: TStringField;
    cdsdetailRZSOCIAL: TStringField;
    grdDBBandedTableView1: TcxGridDBBandedTableView;
    grdDBBandedTableView1NUDUPLICATA: TcxGridDBBandedColumn;
    grdDBBandedTableView1DTEMISSAO: TcxGridDBBandedColumn;
    grdDBBandedTableView1VLSALDO: TcxGridDBBandedColumn;
    grdDBBandedTableView1DTPRORROGACAO: TcxGridDBBandedColumn;
    grdDBBandedTableView1RZSOCIAL: TcxGridDBBandedColumn;
    grdDBBandedTableView1CDCLIENTE: TcxGridDBBandedColumn;
    edtdtemissao: TcxDBDateEdit;
    lbldtemissao: TLabel;
    txtnuremessa: TcxDBLabel;
    lblnuremessa: TLabel;
    actgerarremessa: TAction;
    btn1: TdxBarLargeButton;
    actfiltrar: TAction;
    actadicionarnota: TAction;
    SaveDialog: TSaveDialog;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    actadicionarfaturamento: TAction;
    sdsCDSETBOLETO: TIntegerField;
    cdsCDSETBOLETO: TIntegerField;
    cbxcdsetboleto: TcxDBLookupComboBox;
    lblnmsetboleto: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    actabrirduplicata: TAction;
    actabrircliente: TAction;
    dxBarDockControl1: TdxBarDockControl;
    bmg1Bar1: TdxBar;
    btnAdicionarNota: TdxBarButton;
    btnFiltro: TdxBarButton;
    btnadicionarfaturamento: TdxBarButton;
    edtnusaida: TdxBarEdit;
    dxBarButton1: TdxBarButton;
    actimprimirboleto: TAction;
    sdsCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsdetailCDCLIENTE: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDCLIENTE: TLargeintField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure actgerarremessaExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actfiltrarExecute(Sender: TObject);
    procedure actadicionarnotaExecute(Sender: TObject);
    procedure grdDBBandedTableView1NUDUPLICATAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailNUDUPLICATAValidate(Sender: TField);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure actadicionarfaturamentoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure grdDBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirduplicataExecute(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure edtnusaidaExit(Sender: TObject);
    procedure edtnusaidaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actimprimirboletoExecute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdDBBandedTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private { Private declarations }
    duplicata : TDuplicata;
    saida     : tsaida;
    cobranca  : TCobranca;
    procedure inserir_dados_cobranca      (codigo: integer; nuduplicata:string);
    procedure check_duplicidade_codigo(codigo:Integer);
    procedure verificar_cobranca_duplicado(codigo:Integer);
    procedure AdicionarDuplicata          (codigo: string; bosql:Boolean=false);
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmCobranca: TfrmCobranca;

implementation

uses uDtmMain,
  ulocalizarsaida,
  ulocalizarduplicata,
  uLocalizar,
  uimprimirrelatoriopadrao,
  uMain,
  uProgressBar,
  uLocalizarFaturamento,
  classeboletoACBR;

{$R *.DFM}

const
  tbl      = _cobranca;
  exibe    = 'Cobrança Bancária';
  artigoI  = 'a';

function TfrmCobranca.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmCobranca.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmCobranca.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmCobranca.actSalvarExecute(Sender: TObject);
begin
  edtnusaida.Text := '';
  if registro.Salvar then
  begin
    cobranca.Select(cds);
  end;
end;

procedure TfrmCobranca.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmCobranca.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmCobranca.actCancelarExecute(Sender: TObject);
begin
  edtnusaida.Text := '';
  registro.cancelar;
end;

procedure TfrmCobranca.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmCobranca.FormShow(Sender: TObject);
begin
  duplicata := tduplicata.create;
  saida     := tsaida.Create;
  cobranca  := TCobranca.create;
  registro.set_readonly_dados(self, true);
  cdsdetail.Open;
  edtCodigo.SetFocus;
  pnl.caption := exibe;
end;

procedure TfrmCobranca.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmCobranca.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmCobranca.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmCobranca.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmCobranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCobranca.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmCobranca.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmCobranca.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmCobranca.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmCobranca.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ cdsCDCOBRANCA.asstring + ' - ' + cbxcdsetboleto.Text;
end;

procedure TfrmCobranca.FormDestroy(Sender: TObject);
begin
  duplicata.destroy;
  cobranca.destroy;
  saida.free;
  registro.Destroy;
end;

procedure TfrmCobranca.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsCDSETBOLETO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Boleto]), mtinformation, [mbok], 0);
    cdsCDSETBOLETO.FocusControl;
    abort;
  end;
  registro.set_update(cds);
end;

procedure TfrmCobranca.cdsdetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsdetail);
end;

procedure TfrmCobranca.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime := DtBanco;
end;

procedure TfrmCobranca.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actadicionarnota.Enabled        := (dts.State = dsEdit) or (dts.State = dsinsert);
  actadicionarfaturamento.Enabled := (dts.State = dsEdit) or (dts.State = dsinsert);
  actfiltrar.Enabled              := (dts.State = dsEdit) or (dts.State = dsinsert);
  edtnusaida.Enabled              := (dts.State = dsEdit) or (dts.State = dsinsert);
  actimprimirboleto.Enabled       := actEditar.Enabled and (cdsdetail.RecordCount > 0);
end;

procedure TfrmCobranca.actgerarremessaExecute(Sender: TObject);
var
  nome_arquivo: string;
begin
  if cbxcdsetboleto.Text = '' then
  begin
    Exit;
  end;
  nome_arquivo := TBoletoAcbr.GerarArquivoRemessa(cobranca);
  if nome_arquivo <> '' then
  begin
    messagedlg(_msg_Exportacao_concluida+#13'Remessa gerada no caminho abaixo'#13+nome_arquivo, mtinformation, [mbok], 0);
  end;
end;

procedure TfrmCobranca.actImprimirExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(329, cds.fieldbyname(_cd+tbl).asstring);
end;

procedure TfrmCobranca.cdsAfterScroll(DataSet: TDataSet);
begin
  cobranca.Select(cds);
  cobranca.itcobranca.Ler(cdsdetail);
end;

procedure TfrmCobranca.actfiltrarExecute(Sender: TObject);
var
  cdduplicata : TStrings;
  codigo : string;
  i : integer;
begin
  cdduplicata := TStringList.Create;
  try
    cdduplicata.Text := LocalizarDuplicataMulti;
    if cdduplicata.Text <> '' then
    begin
      codigo := '';
      for i := 0 to cdduplicata.Count - 1 do
      begin
        if i > 0 then
        begin
          codigo := codigo + ',';
        end;
        codigo := codigo + cdduplicata[i];
      end;
      AdicionarDuplicata(codigo);
    end;
  finally
    cdduplicata.Free;
  end;
end;

procedure TfrmCobranca.actadicionarnotaExecute(Sender: TObject);
var
  cod : integer;
  Shift: TShiftState;
  key : word;
begin
  cod := Localizarsaida;
  if cod = 0 then
  begin
    Exit;
  end;
  edtnusaida.Text := qregistro.Stringdocodigo(_saida, cod, _nusaida);
  key := 13;
  edtnusaidaKeyDown(edtnusaida, key, Shift);
end;

procedure TfrmCobranca.grdDBBandedTableView1NUDUPLICATAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := LocalIzarduplicata;
  if codigo = 0 then
  begin
    Exit;
  end;
  cdsdetailCDDUPLICATA.asInteger := codigo;
  cdsdetailNUDUPLICATA.asstring := qregistro.Stringdocodigo(_duplicata, codigo, _nuduplicata);
end;

procedure TfrmCobranca.cdsdetailNUDUPLICATAValidate(Sender: TField);
var
  codigo:integer;
begin
  codigo := duplicata.CodigoDuplicata(sender.AsString);
  if codigo = -1 then
  begin
    exit;
  end;
  if codigo = 0 then
  begin
    messagedlg('Contas a Receber '+sender.asstring+' inexistente.', mtinformation, [mbok], 0);
    abort;
  end;
  verificar_cobranca_duplicado(codigo);
  check_duplicidade_codigo(codigo);
  inserir_dados_cobranca(codigo, sender.AsString);
end;

procedure Tfrmcobranca.inserir_dados_cobranca(codigo:integer; nuduplicata:string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('select d.cdduplicata'+
                    ',d.nuduplicata'+
                    ',d.dtemissao'+
                    ',d.dtprorrogacao'+
                    ',d.vlsaldo'+
                    ',c.rzsocial'+
                    ',c.tppessoa'+
                    ',c.nucnpj'+
                    ',c.nucpf'+
                    ',c.dsendcbrnc'+
                    ',c.nmbaicbrnc'+
                    ',M.NMMUNICIPIO NMMUNICIPIOCBRNC'+
                    ',c.nucepcbrnc'+
                    ',c.cdcliente'+
                    ',u.sguf '+
                'from duplicata D '+
                'left join cliente C on c.cdcliente=d.cdcliente AND D.CDEMPRESA=C.CDEMPRESA '+
                'LEFT JOIN MUNICIPIO M ON M.CDMUNICIPIO=C.CDMUNICIPIOCBRNC '+
                'left join uf U on u.cduf=c.cduf '+
                'where D.CDEMPRESA='+empresa.cdempresa.tostring+' AND d.cdduplicata='+codigo.ToString);
    with cdsdetail do
    begin
      fieldbyname(_cdduplicata).Asstring   := q.q.fieldbyname(_cdduplicata).Asstring;
      if nuduplicata = '' then
      begin
        fieldbyname(_nuduplicata).Asstring   := q.q.fieldbyname(_nuduplicata).Asstring;
      end;
      fieldbyname(_dtemissao).Asstring     := q.q.fieldbyname(_dtemissao).Asstring;
      fieldbyname(_dtprorrogacao).Asstring := q.q.fieldbyname(_dtprorrogacao).Asstring;
      fieldbyname(_vlsaldo).Asstring       := q.q.fieldbyname(_vlsaldo).Asstring;
      fieldbyname(_cdcliente).Asstring     := q.q.fieldbyname(_cdcliente).Asstring;
      fieldbyname(_rzsocial).Asstring      := q.q.fieldbyname(_rzsocial).Asstring;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmcobranca.check_duplicidade_codigo(codigo:integer);
var
  c : TClientDataSet;
begin
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsdetail, false);
    c.First;
    while not c.Eof do
    begin
      if c.FieldByName(_cdduplicata).asInteger = codigo then
      begin
        MessageDlg('Duplicata '+qregistro.StringdoCodigo(_duplicata, codigo, _nuduplicata)+' já faz parte da cobrança.', mtInformation, [mbOK], 0);
        Abort;
      end;
      c.Next;
    end;
  finally
    freeandnil(c);
  end;
end;

procedure Tfrmcobranca.verificar_cobranca_duplicado(codigo:integer);
  function makesql:string;
  begin
    result := 'select cdcobranca '+
              'from itcobranca '+
              'where CDEMPRESA='+empresa.cdempresa.tostring+' AND cdduplicata='+codigo.ToString+' and cdcobranca<>'+cdsCDCOBRANCA.asstring;
  end;
  function makesql2:string;
  begin
    result := 'select count(*) '+
              'from itcobranca '+
              'where CDEMPRESA='+empresa.cdempresa.tostring+' AND cdduplicata='+codigo.ToString+' and cdcobranca<>'+cdsCDCOBRANCA.asstring;
  end;
  function get_lista_nuduplicata:string;
  var
    q : TClasseQuery;
  begin
    q := TClasseQuery.create;
    try
      q.q.Open(makesql);
      while not q.q.eof do
      begin
        result := result + q.q.fields[0].asstring+#10;
        q.q.next;
      end;
    finally
      q.free;
    end;
  end;
var
  i : integer;
  function get_mensagem:string;
  begin
    result := 'Duplicata '+qregistro.StringdoCodigo(_duplicata, codigo, _nuduplicata)+' já faz parte da ';
    if i > 1 then
    begin
      result := result + 's ';
    end;
    result := result + 'cobrança';
    if i > 1 then
    begin
      result := result + 's ';
    end;
    result := result+#13+get_lista_nuduplicata;
  end;
begin
  i := retornasqlinteger(makesql2);
  if i = 0 then
  begin
    exit;
  end;
  if messagedlg(get_mensagem + 'Deseja continuar com esta duplicata?', mtConfirmation, [mbyes, mbno],0) = mrno then
  begin
    abort;
  end;
end;

procedure Tfrmcobranca.AdicionarDuplicata(codigo: string; bosql:Boolean=false);
  function makesql:string;
  begin
    if bosql then
    begin
      result := codigo;
    end
    else
    begin
      result := 'select cdduplicata '+
                'from duplicata '+
                'where cdempresa='+empresa.cdempresa.tostring+' and cdduplicata in ('+codigo+')';
    end;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create;
  try
    frmprogressbar                  := TFrmProgressbar.create(nil);
    cdsdetailNUDUPLICATA.OnValidate := nil;
    q.q.open(makesql);
    frmprogressbar.gau.maxvalue := q.q.RecordCount;
    frmprogressbar.gau.progress := 0;
    frmprogressbar.show;
    while not q.q.Eof do
    begin
      frmprogressbar.gau.progress := frmprogressbar.gau.progress + 1;
      application.ProcessMessages;
      if cdsdetail.Locate(_cdduplicata, q.q.fieldbyname(_cdduplicata).AsString, []) then
      begin
        q.q.Next;
        Continue;
      end;
      cdsdetail.Insert;
      verificar_cobranca_duplicado(q.q.fieldbyname(_cdduplicata).asinteger);
      inserir_dados_cobranca(q.q.fieldbyname(_cdduplicata).asinteger, '');
      cdsdetail.post;
      q.q.Next;
    end;
  finally
    cdsdetailNUDUPLICATA.OnValidate := cdsdetailNUDUPLICATAValidate;
    freeandnil(q);
    freeandnil(frmprogressbar);
  end;
end;

procedure TfrmCobranca.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITCOBRANCA.AsString:= GerarCodigo(_it+tbl);
end;

procedure TfrmCobranca.actadicionarfaturamentoExecute(Sender: TObject);
var
  cdfaturamento : integer;
begin
  cdfaturamento := LocalizarFaturamento;
  if cdfaturamento <> 0 then
  begin
    AdicionarDuplicata('select d.cdduplicata '+
                       'from duplicata d '+
                       'left join itfatsaida i on i.cdsaida=d.cdsaida and d.cdempresa=i.cdempresa '+
                       'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdfaturamento='+cdfaturamento.tostring, true);
  end;
end;

procedure TfrmCobranca.FormCreate(Sender: TObject);
begin
  registro                             := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  cbxcdsetboleto.Properties.ListSource := abrir_tabela(_set+_boleto);
  actadicionarfaturamento.Visible      := empresa.faturamento.bo;
  actadicionarnota.Visible             := empresa.faturamento.saida.bo;
  if empresa.faturamento.bo then
  begin
    edtnusaida.Visible := ivAlways;
  end
  else
  begin
    edtnusaida.Visible := ivNever;
  end;
end;

procedure TfrmCobranca.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmCobranca.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmCobranca.grdDBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuduplicata then
  begin
    actabrirduplicataExecute(actabrirduplicata);
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcliente then
  begin
    actabrirclienteExecute(actabrircliente);
  end;
end;

procedure TfrmCobranca.actabrirduplicataExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cdsdetail);
end;

procedure TfrmCobranca.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cdsdetail);
end;

procedure TfrmCobranca.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmCobranca.edtnusaidaExit(Sender: TObject);
var
  nusaida: string;
begin
  nusaida := edtnusaida.Text;
  if (nusaida <> '') and (not codigoexiste(_saida, _nusaida, _string, nusaida)) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [nusaida, maiuscula(_nota+' '+_fiscal)]), mterror, [mbok], 0);
    edtnusaida.setfocus;
    abort;
  end;
end;

procedure TfrmCobranca.edtnusaidaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  cdsaida : integer;
begin
  if key = __KeySearch then
  begin
    actAdicionarNotaExecute(sender);
    exit;
  end;
  if key <> 13 then
  begin
    Exit;
  end;
  cdsaida := tsaida.CodigoNotaFiscal(edtnusaida.Text);
  if cdsaida = 0 then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnusaida.Text, maiuscula(_nota+' '+_fiscal)]), mterror, [mbok], 0);
    exit;
  end;
  AdicionarDuplicata('select cdduplicata from duplicata where cdempresa='+empresa.cdempresa.tostring+' and cdsaida='+cdsaida.ToString, true);
  edtnusaida.Text;
end;

procedure TfrmCobranca.actimprimirboletoExecute(Sender: TObject);
begin
  duplicata.Select(cdsdetail.fieldbyname(_cdduplicata).asinteger);
  duplicata.ImprimirBoletoAcbr;
end;

procedure TfrmCobranca.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmCobranca.grdDBBandedTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.

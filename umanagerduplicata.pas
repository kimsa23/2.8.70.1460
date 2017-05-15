unit umanagerduplicata;

interface

uses
  System.Actions, System.UITypes, firedac.stan.param,
  forms, StdCtrls, Controls, ComCtrls, ExtCtrls, SysUtils, Classes, Dialogs,
  ActnList, ActnMan, Math,
  DB, SqlExpr,
  uExportarExcel, ustrings, uregistro, uconstantes, uProgressBar,
  udatahora,
  classeretornasql, classegerar, classeregistrainformacao, classeusuario,
  classeempresa, classequery, classemovbancario,
  dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, cxMemo, cxCurrencyEdit, cxCheckBox,
  cxGridDBBandedTableView, XPStyleActnCtrls;

type
  TfrmManagerDuplicata = class(TForm)
    act: TActionManager;
    actImprimir: TAction;
    actAtualizar: TAction;
    actAbrirDuplicata: TAction;
    Splitter2: TSplitter;
    ntb: TNotebook;
    pnlduplicata: TPanel;
    actImprimirProtocolo: TAction;
    actnovo: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actExcluir: TAction;
    actEditar: TAction;
    actHistorico: TAction;
    actLista: TAction;
    actAbrirCliente: TAction;
    pnlcobranca: TPanel;
    pnlCobrancalabel: TPanel;
    ntbitregcobranca: TNotebook;
    pnlcobrancadados: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    splcobranca: TSplitter;
    pnlcliente: TPanel;
    pnlclientelabel: TPanel;
    Splitter3: TSplitter;
    actfechar: TAction;
    ckbaplicar: TCheckBox;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    bmg1Bar1: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSeparator1: TdxBarSeparator;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    pnl: TPanel;
    trv: TTreeView;
    dts: TDataSource;
    dtsdetail: TDataSource;
    dtshistorico: TDataSource;
    dtsitregcobranca: TDataSource;
    dtscliente: TDataSource;
    grdcliente: TcxGrid;
    tbvcliente: TcxGridDBTableView;
    grdclienteLevel1: TcxGridLevel;
    tbvdetail: TcxGridDBTableView;
    grddetailLevel1: TcxGridLevel;
    grddetail: TcxGrid;
    tbvhistorico: TcxGridDBTableView;
    grdHistoricoLevel1: TcxGridLevel;
    grdHistorico: TcxGrid;
    memdscontato: TcxDBMemo;
    edtDTAGENDAMENTO: TcxDBDateEdit;
    edtdtcontato: TcxDBDateEdit;
    pnlduplicatalabel: TPanel;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    tbvNUDUPLICATA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTPRORROGACAO: TcxGridDBColumn;
    tbvVLDUPLICATA: TcxGridDBColumn;
    tbvVLSALDO: TcxGridDBColumn;
    tbvVLBAIXA: TcxGridDBColumn;
    tbvVLMULTA: TcxGridDBColumn;
    tbvVLJUROS: TcxGridDBColumn;
    tbvVLDESCONTO: TcxGridDBColumn;
    tbvVLDEVOLUCAO: TcxGridDBColumn;
    tbvVLABATIMENTO: TcxGridDBColumn;
    tbvVLRECEBIDO: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvNUFONE1CBRNC: TcxGridDBColumn;
    tbvNMREPRESENTANTE: TcxGridDBColumn;
    tbvNMSTDUPLICATA: TcxGridDBColumn;
    tbvhistoricoNMSTREGCOBRANCA: TcxGridDBColumn;
    tbvhistoricoDTEMISSAO: TcxGridDBColumn;
    tbvhistoricoNMUSUARIO: TcxGridDBColumn;
    tbvdetailDTCONTATO: TcxGridDBColumn;
    tbvdetailDTAGENDAMENTO: TcxGridDBColumn;
    tbvdetailVLSALDO: TcxGridDBColumn;
    tbvdetailDSCONTATO: TcxGridDBColumn;
    tbvdetailNMUSUARIO: TcxGridDBColumn;
    tbvclienteCDCLIENTE: TcxGridDBColumn;
    tbvclienteRZSOCIAL: TcxGridDBColumn;
    tbvclienteNMCLIENTE: TcxGridDBColumn;
    tbvclienteNUFONE1CBRNC: TcxGridDBColumn;
    tbvclienteBOPENDENTECOBRANCA: TcxGridDBColumn;
    tbvCDDUPLICATA: TcxGridDBColumn;
    actabrircliente2: TAction;
    tbvVLJUROSDIA: TcxGridDBColumn;
    tbvVLMULTADIA: TcxGridDBColumn;
    btnimprimir: TdxBarLargeButton;
    pmuimprimir: TdxBarPopupMenu;
    actemail: TAction;
    actemailcartacobranca: TAction;
    btnemail: TdxBarLargeButton;
    pumemail: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    tbvRZSOCIAL: TcxGridDBColumn;
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actAbrirDuplicataExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure actImprimirProtocoloExecute(Sender: TObject);
    procedure trvDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure actnovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actHistoricoExecute(Sender: TObject);
    procedure actListaExecute(Sender: TObject);
    procedure grdItCobrancaDblClick(Sender: TObject);
    procedure ntbitregcobrancaPageChanged(Sender: TObject);
    procedure actAbrirClienteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure tbvclienteDblClick(Sender: TObject);
    procedure dtsitregcobrancaStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryitregcobrancaBeforePost(DataSet: TDataSet);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvclienteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrircliente2Execute(Sender: TObject);
    procedure qryAfterOpen(DataSet: TDataSet);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryclienteAfterScroll(DataSet: TDataSet);
    procedure qryitregcobrancaNewRecord(DataSet: TDataSet);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure actemailExecute(Sender: TObject);
    procedure actemailcartacobrancaExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private    { Private declarations }
    nmstregcobranca: TStrings;
    qryitregcobranca : TClasseQuery;
    qrycliente : TClasseQuery;
    qryhistorico : TClasseQuery;
    qrydetail : TClasseQuery;
    qry : TClasseQuery;
    procedure exibircliente(boexibir:boolean);
    function  Inserir(cdduplicata:TStrings; nmstatus, nmstatusproximo: string): integer;
    procedure StatusDuplicata;
    procedure atualizaTreeView;
    procedure StatusRegCobranca;
    function  makesqlwhere:string;
    function  get_filtro:string;
    function  get_titulo:string;
    function  makesql_duplicata:string;
    procedure set_drag_mode;
    procedure inserir_itregcobranca;
    procedure AplicarAlteracoes;
    function get_cdregcobranca(cdstregcobranca: Integer): integer;
    function get_dtatrasado: TDate;
    procedure set_registro_cobranca;
    function AtualizarDuplicata(cdduplicata:TStrings; nmstatus, nmstatusproximo: string): integer;
    function mensagem(cdduplicata: TStrings; nmstatus, nmstatusproximo: string): string;
    procedure GetNomeStatus(var nmstatus, nmstatusproximo: string);
  public
  end;

const
  tbl      = 'itregcobranca';
  exibe    = 'Item do Registro de Cobrança';
  artigoI  = 'o';

var
  frmManagerDuplicata: TfrmManagerDuplicata;

implementation

uses uDtmMain,
  uMain,
  utipo,
  uimprimirrelatoriopadrao, udlgRichEdit, classeemail,
  classeeventoemail, classeduplicata;

{$R *.dfm}

procedure TfrmManagerDuplicata.actAtualizarExecute(Sender: TObject);
begin
  trvChange(Sender, nil);
  ntb.ActivePage := 'Default';
end;

procedure TfrmManagerDuplicata.StatusRegCobranca;
var
  q : TClasseQuery;
  i: integer;
begin
  nmstregcobranca.Clear;
  q := TClasseQuery.create;
  try
    q.q.Open('select nmstregcobranca,cdstregcobranca from stregcobranca');
    i := trv.Items.count -1 ;
    while not q.q.eof do
    begin
      nmstregcobranca.Add(q.q.fieldbyname(_nmstregcobranca).AsString);
      trv.Items.AddChild(trv.Items.Item[i], q.q.fieldbyname(_nmstregcobranca).AsString);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TfrmManagerDuplicata.atualizaTreeView;
var
  i: integer;
begin // falta considerar a clausula where do filtro para trazer a quantidade correta
  //if trv.Items.Count > 0 then
  //begin
    //trv.Selected.DeleteChildren;
  //end;
  StatusDuplicata;
  StatusRegCobranca;
  for i := 0 to trv.Items.Count - 1 do
  begin
    trv.Items[i].Expanded := true;
  end;
end;

procedure TfrmManagerDuplicata.StatusDuplicata;
begin
  trv.Items.AddChild(trv.Items.Item[0], uppercase(_aberta));
  trv.Items.AddChild(trv.Items.Item[0], uppercase(_atrasado));
end;

procedure TfrmManagerDuplicata.FormDestroy(Sender: TObject);
begin
  freeandnil(qryitregcobranca);
  freeandnil(qrycliente);
  freeandnil(qry);
  freeandnil(qrydetail);
  freeandnil(qryhistorico);
  freeandnil(nmstregcobranca);
end;

procedure TfrmManagerDuplicata.actAbrirDuplicataExecute(Sender: TObject);
begin
  frmmain.AbrirDireto(taction(sender), qry.q, qry.q);
end;

procedure TfrmManagerDuplicata.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmManagerDuplicata.FormShow(Sender: TObject);
begin
  actImprimirProtocolo.Visible := empresa.financeiro.duplicata.bocobranca;
  atualizaTreeView;
end;

function TfrmManagerDuplicata.get_dtatrasado:TDate;
begin
  result := dtbanco - 1;
  while verificarferiado(result) or (DayOfWeek(result) = 7) or (DayOfWeek(result) = 1) do
  begin
    result := result - 1;
  end;
end;

function TfrmManagerDuplicata.makesqlwhere:string;
begin
  result := ' where ';
  if get_filtro = UpperCase(_ATRASADO) then
  begin
    result := result +'D.cdstregcobranca is null '+
                      'and D.cdstduplicata=' +qregistro.codigodonome(_st+_duplicata, UpperCase(_ABERTA))+' '+
                      'and D.DTPRORROGACAO<='+getdtbanco(get_dtatrasado)
  end
  else if get_filtro = UpperCase(_ABERTA)   then
  begin
    result := result +'D.cdstregcobranca is null and D.cdstduplicata=' +qregistro.codigodonome(_st+_duplicata, UpperCase(_ABERTA))
  end
  else
  begin
    result := result +'d.cdempresa='+qrycliente.q.fieldbyname(_cdempresa).asstring+' '+
                      'and d.cdcliente='+qrycliente.q.FieldByName(_cdcliente).AsString+' '+
                      'and d.cdstregcobranca='+qregistro.codigodonome(_stregcobranca, get_filtro);
  end;
end;

procedure TfrmManagerDuplicata.set_registro_cobranca;
begin
  qrycliente.q.close;
  qrycliente.q.AfterScroll := nil;
  qrycliente.q.open('SELECT c.cdempresa'+
                          ',c.CDCLIENTE'+
                          ',C.RZSOCIAL'+
                          ',c.NMCLIENTE'+
                          ',c.NUFONE1CBRNC'+
                          ',c.bopendentecobranca '+
                    'FROM cliente c '+
                    'INNER JOIN DUPLICATA D ON D.CDEMPRESA=C.CDEMPRESA AND D.CDCLIENTE=C.CDCLIENTE '+
                    'where c.cdempresa='+empresa.cdempresa.tostring+' and d.cdstregcobranca='+qregistro.codigodonome(_stregcobranca, get_filtro)+' '+
                    'GROUP BY c.cdempresa'+
                            ',c.CDCLIENTE'+
                            ',C.RZSOCIAL'+
                            ',c.NMCLIENTE'+
                            ',c.NUFONE1CBRNC'+
                            ',c.bopendentecobranca');
  qrycliente.q.AfterScroll := qryclienteAfterScroll;
  qryclienteAfterScroll(qrycliente.q);
end;

procedure TfrmManagerDuplicata.trvChange(Sender: TObject; Node: TTreeNode);
begin
  if trv.Selected.Level = 0 then
  begin
    Exit;
  end;
  qry.q.close;
  tbv.OptionsSelection.MultiSelect := get_filtro = UpperCase(_ATRASADO);
  set_drag_mode;
  if (get_filtro <> UpperCase(_aberta)) and  (get_filtro <> UpperCase(_ATRASADO)) then
  begin
    set_registro_cobranca;
    exibircliente(true);
    actListaExecute(actLista);
  end
  else
  begin
    qry.q.sql.text := makesql_duplicata;
    qry.q.open;
    exibircliente(FALSE);
  end;
  if trv.selected.parent <> nil then
  begin
    pnlcobranca.Visible := (trv.Selected.Parent.Text = UpperCase(_COBRANCA))
  end
  else
  begin
    pnlcobranca.Visible := false;
  end;
  splcobranca.visible := pnlcobranca.Visible;
end;

function TfrmManagerDuplicata.AtualizarDuplicata(cdduplicata:TStrings; nmstatus, nmstatusproximo: string): integer;
var
  q : TClasseQuery;
  i : integer;
begin
  q := TClasseQuery.Create;
  frmprogressbar  := TFrmprogressbar.Create(application);
  try
    frmprogressbar.gau.MaxValue := cdduplicata.count;
    frmprogressbar.Show;
    for i := 0 to cdduplicata.count - 1 do
    begin
      frmprogressbar.gau.Progress := i + 1;
      application.ProcessMessages;
      q.q.Close;
      q.q.sql.text := QRetornaSQL.get_select_from(_regcobranca, cdduplicata[i], _cdduplicata);
      q.q.Open;
      if (nmstatus <> '') or (q.q.Fieldbyname(_cdregcobranca).IsNull) then
      begin
        inc(result);
        q.q.Insert;
        q.q.Fieldbyname(_CDREGCOBRANCA).AsString   := GerarCodigo(_REGCOBRANCA);
        q.q.Fieldbyname(_CDDUPLICATA).AsString     := cdduplicata[i];
        q.q.Fieldbyname(_CDSTREGCOBRANCA).AsString := CodigodoCampo(_STREGCOBRANCA, nmstatusproximo, _NMSTREGCOBRANCA);
        q.q.Fieldbyname(_CDUSUARIO).AsInteger      := usuario.cdusuario;
        q.q.Fieldbyname(_DTEMISSAO).AsDateTime     := dtbanco;
      end
      else
      begin
        q.q.Edit;
      end;
      registrainformacao_(q.q);
      q.q.Post;
    end;
  finally
    q.free;
    freeandnil(frmprogressbar);
  end;
end;

function TfrmManagerDuplicata.mensagem(cdduplicata:TStrings; nmstatus, nmstatusproximo: string) : string;
begin
  if cdduplicata.count = 1 then
  begin
    result := 'Deseja realmente mudar a '#13+
              'Duplicata : '+Nomedocodigo(_duplicata, cdduplicata[0], _nuduplicata)+#13+
              'do status de cobrança : '+nmstatus+#13+
              'para o status de cobrança: '+nmstatusProximo+'?'
  end
  else
  begin
    result := 'Deseja realmente mudar as duplicatas '#13+
              'do status de cobrança : '+nmstatus+#13+
              'para o status de cobrança: '+nmstatusProximo+'?';
  end;
end;

function TfrmManagerDuplicata.Inserir(cdduplicata:TStrings; nmstatus, nmstatusproximo: string): integer;
begin
  result := 0;
  if (CodigodoCampo(_STREGCOBRANCA, nmstatusproximo, _NMSTREGCOBRANCA) = '') or
     ((nmstatus <> '') and (messagedlg(mensagem(cdduplicata, nmstatus, nmstatusproximo), mtconfirmation, [mbyes, mbno], 0) = mrno)) then
  begin
    exit;
  end;
  result := AtualizarDuplicata(cdduplicata, nmstatus, nmstatusproximo);
end;

procedure TfrmManagerDuplicata.actImprimirProtocoloExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(504, makesqlwhere);
end;

procedure TfrmManagerDuplicata.GetNomeStatus(var nmstatus, nmstatusproximo: string);
begin
  nmstatusproximo := trv.DropTarget.Text;
  if nmstatusproximo = '' then
  begin
    exit;
  end;
  nmstatus := trv.selected.Text;
end;

procedure TfrmManagerDuplicata.trvDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  cdduplicata:TStrings;
  codigo, nmstatus, nmstatusproximo : string;
  i : integer;
begin
  getNomeStatus(nmstatus, nmstatusproximo);
  if nmstatusproximo = nmstatus then
  begin
    exit;
  end;
  cdduplicata := TStringlist.create;
  try
    qry.q.DisableControls;
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        codigo := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdduplicata).Index];
        cdduplicata.add(codigo);
      end;
    end;
    Inserir(cdduplicata, nmstatus, nmstatusproximo);
  finally
    qry.q.EnableControls;
    qry.q.refresh;
    freeandnil(cdduplicata);
  end;
end;

procedure TfrmManagerDuplicata.trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TfrmManagerDuplicata.actnovoExecute(Sender: TObject);
begin
  if not qryitregcobranca.q.Active then
  begin
    qryitregcobranca.q.Open;
  end;
  qryitregcobranca.q.insert;
  ntbitregcobranca.ActivePage := 'Cadastro';
  edtdtcontato.SetFocus;
end;

procedure TfrmManagerDuplicata.inserir_itregcobranca;
var
  itregcobranca : titregcobranca;
begin
  ItRegCobranca := TItRegCobranca.Create;
  try
    itregcobranca.cditregcobranca := qgerar.GerarCodigo(_itregcobranca);
    itregcobranca.cdstregcobranca := qregistro.CodigodoNomeInteiro(_stregcobranca, get_filtro);
    itregcobranca.cdregcobranca   := get_cdregcobranca(itregcobranca.cdstregcobranca);
    itregcobranca.dtagendamento   := qryitregcobranca.q.Fieldbyname(_dtagendamento).AsDateTime;
    itregcobranca.vlsaldo         := qryitregcobranca.q.Fieldbyname(_vlsaldo).AsCurrency;
    ItRegCobranca.dtcontato       := qryitregcobranca.q.Fieldbyname(_dtcontato).AsDateTime;
    itregcobranca.dscontato       := qryitregcobranca.q.Fieldbyname(_dscontato).AsString;
    itregcobranca.cdusuario       := usuario.cdusuario;
    itregcobranca.Insert;
  finally
    FreeAndNil(itregcobranca);
  end;
end;

procedure TfrmManagerDuplicata.AplicarAlteracoes;
var
  cdduplicata : string;
begin
  if not ckbaplicar.Checked then
  begin
    exit;
  end;
  ckbaplicar.Checked := false;
  cdduplicata := qry.q.fieldbyname(_cdduplicata).Asstring;
  qry.q.First;
  while not qry.q.Eof do // para cada duplicata inserir o item da duplica
  begin
    if qry.q.fieldbyname(_cdduplicata).Asstring <> cdduplicata then
    begin
      inserir_itregcobranca;
    end;
    qry.q.Next;
  end;
end;

procedure TfrmManagerDuplicata.actSalvarExecute(Sender: TObject);
begin
  qryitregcobranca.q.Post;
  AplicarAlteracoes;
  qry.q.Refresh;
  qrydetail.q.Refresh;
  ntbitregcobranca.ActivePage  := 'Default';
end;

procedure TfrmManagerDuplicata.actCancelarExecute(Sender: TObject);
begin
  if (usuario.bocancelamento = _s) and (messagedlg('Deseja realmente cancelar?', mtconfirmation, [mbyes, mbno], 0) = mrno) then
  begin
    exit;
  end;
  qryitregcobranca.q.Cancel;
end;

procedure TfrmManagerDuplicata.actExcluirExecute(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja excluir'#13+artigoI+' '+exibe+' '+ qryitregcobranca.q.Fieldbyname(_nu+tbl).asstring+'?', mtConfirmation, [mbyes, mbno], 0) = mrno then
  begin
    exit;
  end;
  qryitregcobranca.q.delete;
  qry.q.Refresh;
  ntbitregcobranca.ActivePage := 'Default';
end;

procedure TfrmManagerDuplicata.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmManagerDuplicata.actEditarExecute(Sender: TObject);
begin
  qryitregcobranca.q.edit;
end;

procedure TfrmManagerDuplicata.actHistoricoExecute(Sender: TObject);
begin
  ntbitregcobranca.ActivePage := 'Historico';
  if not qryhistorico.q.Active then
  begin
    qryHistorico.q.Open;
  end;
end;

procedure TfrmManagerDuplicata.actListaExecute(Sender: TObject);
begin
  ntbitregcobranca.ActivePage := 'Default';
  if not qrydetail.q.Active then
  begin
    qrydetail.q.Open;
  end;
end;

procedure TfrmManagerDuplicata.grdItCobrancaDblClick(Sender: TObject);
begin
  if qrydetail.q.fieldbyname(_cdregcobranca).Asstring = '' then
  begin
    Exit;
  end;
  qryitregcobranca.q.close;
  qryitregcobranca.q.Parambyname(_cdempresa).Asstring       := qrydetail.q.fieldbyname(_cdempresa).Asstring;
  qryitregcobranca.q.Parambyname(_cditregcobranca).Asstring := qrydetail.q.fieldbyname(_cditregcobranca).Asstring;
  qryitregcobranca.q.Open;
  ntbitregcobranca.ActivePage  := 'Cadastro';
end;

procedure TfrmManagerDuplicata.ntbitregcobrancaPageChanged(Sender: TObject);
begin
  if ntbitregcobranca.ActivePage = 'Cadastro' then
  begin
    actExcluir.Visible  := true;
    actEditar.Visible   := true;
    actCancelar.Visible := true;
    actSalvar.Visible   := true;
    pnlCobranca.Caption := 'Cadastro de Contatos';
  end
  else if (ntbitregcobranca.activePage = 'Default') or (ntbitregcobranca.activePage = 'Historico') then
  begin
    if ntbitregcobranca.activePage = 'Default' then
    begin
      pnlCobranca.Caption := 'Lista de Contatos'
    end
    else if ntbitregcobranca.activePage = 'Historico' then
    begin
      pnlCobranca.Caption := 'Histórico de Cobrança';
    end;
    actExcluir.Visible  := false;
    actEditar.Visible   := false;
    actCancelar.Visible := false;
    actSalvar.Visible   := false;
  end;
end;

procedure TfrmManagerDuplicata.actAbrirClienteExecute(Sender: TObject);
begin
  frmmain.AbrirDireto(taction(sender), qry.q, qry.q);
end;

procedure TfrmManagerDuplicata.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmManagerDuplicata.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmManagerDuplicata.exibircliente(boexibir: boolean);
begin
  pnlcliente.Visible      := boexibir;
  actnovo.Visible         := boexibir;
  acteditar.Visible       := boexibir;
  actexcluir.visible      := boexibir;
  actSalvar.Visible       := boexibir;
  actcancelar.Visible     := boexibir;
  actHistorico.Visible    := boexibir;
  actLista.Visible        := boexibir;
  tbvCDCLIENTE.Visible    := not boexibir;
  tbvNMCLIENTE.Visible    := not boexibir;
  tbvrzsocial.Visible     := not boexibir;
  tbvNUFONE1CBRNC.Visible := not boexibir;
  actImprimir.Visible     := boexibir;
end;

procedure TfrmManagerDuplicata.tbvclienteDblClick(Sender: TObject);
begin
  actAbrirCliente.OnExecute(actAbrirCliente);
end;

procedure TfrmManagerDuplicata.qryAfterOpen(DataSet: TDataSet);
begin
  actnovo.enabled := (qry.q.Fieldbyname(_cdduplicata).Asstring <> '');
end;

procedure TfrmManagerDuplicata.qryAfterScroll(DataSet: TDataSet);
begin
  actnovo.enabled := (qry.q.Fieldbyname(_cdduplicata).Asstring <> '');
end;

procedure TfrmManagerDuplicata.dtsitregcobrancaStateChange(Sender: TObject);
begin
  actImprimir.Enabled  := true;
  actAtualizar.Enabled := true;
  acthistorico.Enabled := true;
  ckbaplicar.visible   := dtsitregcobranca.state = dsinsert;
  if (dtsitregcobranca.state = dsedit) or (dtsitregcobranca.state = dsinsert) then
  begin
    actnovo.Enabled      := false;
    actExcluir.Enabled   := false;
    actEditar.Enabled    := false;
    actsalvar.Enabled    := true;
    actcancelar.Enabled  := true;
    acthistorico.Enabled := false;
    dtsitregcobranca.dataset.Fieldbyname(_dtcontato).FocusControl;
    edtdtcontato.SelectAll;
  end
  else
  begin
    actsalvar.Enabled   := false;
    actcancelar.Enabled := false;
    if dtsitregcobranca.Dataset.RecordCount > 0 then
    begin
      actexcluir.Enabled := true;
      acteditar.Enabled  := true;
    end;
  end;
end;

procedure TfrmManagerDuplicata.FormCreate(Sender: TObject);
begin
  qrycliente := TClasseQuery.Create;
  dtscliente.dataset := qrycliente.q;
  qrycliente.q.AfterScroll := qryclienteAfterScroll;

  qryitregcobranca               := tclasseQuery.create;
  qryitregcobranca.q.SQL.text    := 'SELECT * FROM ITREGCOBRANCA WHERE CDEMPRESA=:CDEMPRESA AND CDITREGCOBRANCA=:CDITREGCOBRANCA';
  dtsitregcobranca.dataset       := qryitregcobranca.q;
  qryitregcobranca.q.onnewrecord := qryitregcobrancaNewRecord;
  qryitregcobranca.q.BeforePost  := qryitregcobrancaBeforePost;

  qry                := TClasseQuery.Create;
  dts.dataset        := qry.q;
  qry.q.AfterScroll  := qryAfterScroll;
  qry.q.AfterOpen    := qryAfterOpen;
  qry.q.OnCalcFields := qryCalcFields;

  qrydetail := TClasseQuery.Create;
  dtsdetail.dataset := qrydetail.q;
  qrydetail.q.masterfields := 'CDEMPRESA;CDDUPLICATA';
  qrydetail.q.Detailfields := 'CDEMPRESA;CDDUPLICATA';
  qrydetail.q.mastersource := dts;
  qrydetail.q.sql.text := 'SELECT ITREGCOBRANCA.*'+
                          ',USUARIO.NMUSUARIO '+
                          'FROM ITREGCOBRANCA '+
                          'INNER JOIN REGCOBRANCA ON ITREGCOBRANCA.CDREGCOBRANCA=REGCOBRANCA.CDREGCOBRANCA and regcobranca.cdempresa=itregcobranca.cdempresa '+
                          'LEFT JOIN USUARIO ON USUARIO.CDUSUARIO=itregcobranca.CDUSUARIO '+
                          'WHERE REGCOBRANCA.CDEMPRESA=:CDEMPRESA AND REGCOBRANCA.CDDUPLICATA=:CDDUPLICATA';

  qryHistorico := TClasseQuery.Create;
  dtsHistorico.dataset := qryHistorico.q;
  qryHistorico.q.masterfields := 'CDEMPRESA;CDDUPLICATA';
  qryHistorico.q.Detailfields := 'CDEMPRESA;CDDUPLICATA';
  qryHistorico.q.mastersource := dts;
  qryhistorico.q.sql.text := 'SELECT REGCOBRANCA.CDSTREGCOBRANCA'+
                                   ',STREGCOBRANCA.NMSTREGCOBRANCA'+
                                   ',DTEMISSAO'+
                                   ',REGCOBRANCA.CDUSUARIO'+
                                   ',NMUSUARIO '+
                             'FROM REGCOBRANCA '+
                             'INNER JOIN STREGCOBRANCA ON STREGCOBRANCA.CDSTREGCOBRANCA=REGCOBRANCA.CDSTREGCOBRANCA AND REGCOBRANCA.CDEMPRESA=STREGCOBRANCA.CDEMPRESA '+
                             'INNER JOIN USUARIO ON USUARIO.CDUSUARIO=REGCOBRANCA.CDUSUARIO '+
                             'WHERE REGCOBRANCA.CDEMPRESA=:CDEMPRESA AND REGCOBRANCA.CDDUPLICATA=:CDDUPLICATA';

  nmstregcobranca            := TStringList.Create;
  tbvNMREPRESENTANTE.Visible := empresa.comercial.representante.bo;
end;

function TfrmManagerDuplicata.get_cdregcobranca(cdstregcobranca: Integer):integer;
begin
  result := retornasqlInteger('select max(cdregcobranca) '+
                              'from regcobranca '+
                              'where cdempresa='+qry.q.fieldbyname(_cdempresa).asstring+' '+
                              'and cdduplicata='+qry.q.FieldByName(_cdduplicata).asstring+' '+
                              'and cdstregcobranca='+cdstregcobranca.tostring);
end;

procedure TfrmManagerDuplicata.qryitregcobrancaBeforePost(DataSet: TDataSet);
begin
  dataset.Fieldbyname(_cdstregcobranca).AsString := qregistro.codigodonome(_stregcobranca, get_filtro);
  dataset.FieldByName(_cdregcobranca).AsInteger  := get_cdregcobranca(dataset.Fieldbyname(_cdstregcobranca).AsInteger);
  dataset.Fieldbyname(_cditregcobranca).AsString := GerarCodigo(_itregcobranca);
  dataset.Fieldbyname(_cdusuario).AsInteger      := usuario.cdusuario;
  dataset.Fieldbyname(_vlsaldo).AsCurrency       := qry.q.fieldbyname(_vlsaldo).ascurrency;
  RegistraInformacao_(dataset);
end;

procedure TfrmManagerDuplicata.qryclienteAfterScroll(DataSet: TDataSet);
begin
  qry.q.close;
  if qrycliente.q.RecordCount = 0 then
  begin
    Exit;
  end;
  qry.q.SQL.Text := makesql_duplicata;
  qry.q.open;
end;

function TfrmManagerDuplicata.get_titulo:string;
begin
  result := trim(trv.selected.text);
end;

function TfrmManagerDuplicata.get_filtro: string;
var
  i : Integer;
begin
  for i := 0 to nmstregcobranca.Count - 1 do
  begin
    if (get_titulo = nmstregcobranca[i]) and (trv.selected.parent <> nil) then
    begin
      ntb.ActivePage := 'Duplicatas';
      result         := UpperCase(get_titulo);
      Exit;
    end;
  end;
  if (trv.selected.parent <> nil) then
  begin
    ntb.ActivePage := 'Default';
  end;
  result := UpperCase(_ATRASADO);
  if get_titulo <> UpperCase(_ATRASADO) then
  begin
    result := UpperCase(_aberta);
  end;
end;

function TfrmManagerDuplicata.makesql_duplicata: string;
begin
  result := 'SELECT D.CDDUPLICATA'+
                  ',D.NUDUPLICATA'+
                  ',D.DTEMISSAO'+
                  ',D.dtprorrogacao'+
                  ',D.prmoradiaria'+
                  ',D.VLDUPLICATA'+
                  ',D.VLSALDO'+
                  ',D.VLBAIXA'+
                  ',D.VLMULTA'+
                  ',D.PRMULTA'+
                  ',D.VLJUROS'+
                  ',D.VLDESCONTO'+
                  ',D.VLDEVOLUCAO'+
                  ',D.VLABATIMENTO'+
                  ',D.VLRECEBIDO'+
                  ',D.CDEMPRESA'+
                  ',D.CDCLIENTE'+
                  ',C.RZSOCIAL'+
                  ',c.NMCLIENTE'+
                  ',c.NUFONE1CBRNC'+
                  ',R.NMREPRESENTANTE'+
                  ',S.NMSTDUPLICATA '+
            'FROM DUPLICATA d '+
            'left join cliente C on c.cdcliente=D.cdcliente and c.cdempresa=d.cdempresa '+
            'left join representante R on r.cdrepresentante=D.cdrepresentante and r.cdempresa=d.cdempresa '+
            'left join stduplicata S on s.cdstduplicata=D.cdstduplicata '+
            makesqlwhere;
end;

procedure TfrmManagerDuplicata.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmManagerDuplicata.set_drag_mode;
begin
  //if get_filtro = UpperCase(_ATRASADO) then
  if get_filtro <> UpperCase(_aberta) then
  begin
    tbv.DragMode := dmAutomatic
  end
  else
  begin
    tbv.DragMode := dmManual;
  end;
end;

procedure TfrmManagerDuplicata.tbvclienteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcliente then
  begin
    actAbrirclienteExecute(actAbrircliente);
  end;
end;

procedure TfrmManagerDuplicata.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcliente then
  begin
    actAbrirclienteExecute(actAbrircliente)
  end
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuduplicata then
  begin
    actAbrirduplicataExecute(actAbrirduplicata);
  end;
end;

procedure TfrmManagerDuplicata.actabrircliente2Execute(Sender: TObject);
begin
  frmmain.AbrirDireto(taction(sender), qrycliente.q, qrycliente.q);
end;

procedure TfrmManagerDuplicata.qryitregcobrancaNewRecord(DataSet: TDataSet);
begin
  dtsitregcobranca.dataset.fieldbyname(_dtcontato).AsDateTime  := dtbanco;
end;

procedure TfrmManagerDuplicata.qryCalcFields(DataSet: TDataSet);
var
  movbancario : TMovbancario;
begin
  movbancario := tmovbancario.create;
  try
    if qry.q.fieldbyname(_prmoradiaria).ascurrency > 0 then
    begin
      qry.q.FieldByName(_VLJUROSDIA).AsCurrency := movbancario.JuroDocumento(DtBanco, qry.q.fieldbyname(_dtprorrogacao).asdatetime, qry.q.fieldbyname(_prmoradiaria).ascurrency, qry.q.fieldbyname(_vlsaldo).ascurrency);
    end
    else
    begin
      qry.q.FieldByName(_VLJUROSDIA).AsCurrency := 0;
    end;
    if qry.q.fieldbyname(_vlsaldo).ascurrency > 0 then
    begin
      if DtBanco > qry.q.fieldbyname(_dtprorrogacao).asdatetime then
      begin
        qry.q.FieldByName(_VLMULTADIA).AsCurrency := roundto(qry.q.fieldbyname(_vlsaldo).ascurrency * qry.q.FieldByName(_prmulta).AsFloat  / 100, -2)
      end
      else
      begin
        qry.q.FieldByName(_VLMULTADIA).AsCurrency := 0;
      end;
    end
    else
    begin
      qry.q.FieldByName(_VLMULTADIA).AsCurrency := 0;
    end;
  finally
    FreeAndNil(movbancario);
  end;
end;

procedure TfrmManagerDuplicata.actemailExecute(Sender: TObject);
begin
  btnemail.DropDown(false);
end;

procedure TfrmManagerDuplicata.actemailcartacobrancaExecute(Sender: TObject);
var
  email : string;
  eventoemail : TEventoEmail;
begin
  email := NomedoCodigo(_cliente, qry.q.fieldbyname(_CDCLIENTE).AsString, _email);
  eventoemail := TEventoEmail.create;
  try
    eventoemail.Select(empresa.financeiro.duplicata.cdeventoemailmanagerduplicata);
    Formatar_Email(False, eventoemail.TratarTitulo(qry.q), eventoemail.TratarAssunto(qry.q), '', email, eventoemail.emailcopia, usuario.email_.SmtpUser, usuario.email_.SmtpPass, '');//, _tarefa, cdscdtarefa.asstring);
  finally
    eventoemail.Free;
  end;
end;

end.

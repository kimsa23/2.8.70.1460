unit ulocalizarorcamento;

interface

uses
  System.Actions, System.UITypes,
  forms, Graphics, Buttons, StdCtrls, ComCtrls, Controls, Grids, Mask, Classes,
  ActnList, ExtCtrls, Menus, dialogs, sysutils,
  DB, DBClient,
  uregistro, ulocalizar, uconstantes, uexportarexcel, ustrings,
  urotinas, udatahora, ulocalizarcliente,
  classesqlmontar, classeretornasql, classeorcamento, classeempresa, classeform,
  classeAplicacao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxGraphics,
  cxLookAndFeels, cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCalc, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxPCdxBarPopupMenu, cxCheckBox, dxBar, cxSplitter, cxNavigator, dxCore, cxDateUtils,
  dxBarBuiltInMenu;

type
  TfrmLocalizarOrcamento = class(TForm)
    Label7: TLabel;
    Label2: TLabel;
    lblCliente: TLabel;
    Label1: TLabel;
    btnfind: TcxButton;
    btncancel: TcxButton;
    btnok: TcxButton;
    Bevel1: TBevel;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    dts: TDataSource;
    dtsdetail: TDataSource;
    grdLevel2: TcxGridLevel;
    tbvCDORCAMENTO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvnmrepresentante: TcxGridDBColumn;
    tbvNMCONDPAGTO: TcxGridDBColumn;
    tbvNMSTORCAMENTO: TcxGridDBColumn;
    tbvDTPRVENTREGA: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    tbvQTAPROVADO: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    cbxcdcondpagto: TcxLookupComboBox;
    cbxcdstorcamento: TcxLookupComboBox;
    cbxcdtporcamento: TcxLookupComboBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbvDTRESPOSTA: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    lbldtemissao: TLabel;
    lbldtsaida: TLabel;
    lblentresaida: TLabel;
    lblentreemissao: TLabel;
    tbsicms: TcxTabSheet;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    edtvlicmsi: TcxCalcEdit;
    edtalicmsi: TcxCalcEdit;
    edtvlicmsf: TcxCalcEdit;
    edtalicmsf: TcxCalcEdit;
    tbsipi: TcxTabSheet;
    Label23: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    edtvlipii: TcxCalcEdit;
    edtalipii: TcxCalcEdit;
    edtvlipif: TcxCalcEdit;
    edtalipif: TcxCalcEdit;
    cxTabSheet9: TcxTabSheet;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label54: TLabel;
    Label53: TLabel;
    edtvlprodutoi: TcxCalcEdit;
    edtvlprodutof: TcxCalcEdit;
    edtvltotali: TcxCalcEdit;
    edtvltotalf: TcxCalcEdit;
    edtvlfretei: TcxCalcEdit;
    edtvlfretef: TcxCalcEdit;
    edtvldescontof: TcxCalcEdit;
    edtvldescontoi: TcxCalcEdit;
    cxTabSheet3: TcxTabSheet;
    lblordproducao: TLabel;
    edtcdordproducao: TcxButtonEdit;
    edtdtEmissaoi: TcxDateEdit;
    edtDtemissaoF: TcxDateEdit;
    edtdtprventregai: TcxDateEdit;
    edtdtprventregaf: TcxDateEdit;
    lblrepresentante: TLabel;
    cbxcdrepresentante: TcxLookupComboBox;
    lbldesenho: TLabel;
    edtdsdesenho: TcxTextEdit;
    lblposicao: TLabel;
    edtdsdesenhoposicao: TcxTextEdit;
    edtnuitem: TcxTextEdit;
    lblnuitem: TLabel;
    edtnucotacao: TcxTextEdit;
    lblcotacao: TLabel;
    lblresposta: TLabel;
    edtdtrespostai: TcxDateEdit;
    lblatereposta: TLabel;
    edtdtrespostaf: TcxDateEdit;
    tbvhrresposta: TcxGridDBColumn;
    tbvhrrespostafinal: TcxGridDBColumn;
    ckbexibiritem: TcxCheckBox;
    act: TActionList;
    actfiltro: TAction;
    actagrupar: TAction;
    actexcel: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton1: TdxBarButton;
    actlimparcriterio: TAction;
    actimprimir: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actimprimirorcamento: TAction;
    dxBarButton3: TdxBarButton;
    actemail: TAction;
    actimprimiranalitico: TAction;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    actemailorcamento: TAction;
    dxBarButton6: TdxBarButton;
    actimprimirorcamentotodos: TAction;
    dxBarButton8: TdxBarButton;
    actemailorcamentotodos: TAction;
    dxBarButton10: TdxBarButton;
    tbvnucor: TcxGridDBColumn;
    dxBarSubItem3: TdxBarSubItem;
    actimprimirdireto: TAction;
    actimprimirdiretoorcamento: TAction;
    dxBarButton11: TdxBarButton;
    lblnucontrato: TLabel;
    edtnucontrato: TcxTextEdit;
    cdsdetail1: TClientDataSet;
    cdsdetail1CDORCAMENTO: TIntegerField;
    cdsdetail1CDDIGITADO: TStringField;
    cdsdetail1NMPRODUTO: TStringField;
    cdsdetail1QTITEM: TFloatField;
    cdsdetail1QTATENDIDA: TFloatField;
    cdsdetail1VLUNITARIO: TCurrencyField;
    cdsdetail1VLTOTAL: TCurrencyField;
    cdsdetail1CDITORCAMENTO: TIntegerField;
    cdsdetail1DTEMISSAO: TDateField;
    dtsdetail1: TDataSource;
    grddetail1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    tbvdetail1: TcxGridDBBandedTableView;
    tbvdetail1CDDIGITADO: TcxGridDBBandedColumn;
    tbvdetail1NMPRODUTO: TcxGridDBBandedColumn;
    tbvdetail1QTITEM: TcxGridDBBandedColumn;
    tbvdetail1QTATENDIDA: TcxGridDBBandedColumn;
    tbvdetail1VLUNITARIO: TcxGridDBBandedColumn;
    tbvdetail1VLTOTAL: TcxGridDBBandedColumn;
    tbvdetail1NUPEDIDO: TcxGridDBBandedColumn;
    tbvdetail1DTEMISSAO: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    spl: TcxSplitter;
    tbvdetail: TcxGridDBTableView;
    tbvdetailCDDIGITADO: TcxGridDBColumn;
    tbvdetailNMPRODUTO: TcxGridDBColumn;
    tbvdetailQTITEM: TcxGridDBColumn;
    tbvdetailVLUNITARIO: TcxGridDBColumn;
    tbvdetailQTAPROVADO: TcxGridDBColumn;
    tbvdetailVLTOTAL: TcxGridDBColumn;
    tbvVLICMS: TcxGridDBColumn;
    tbvVLICMSSUBTRIB: TcxGridDBColumn;
    tbvVLIPI: TcxGridDBColumn;
    tbvVLFRETE: TcxGridDBColumn;
    tbvVLDESCONTO: TcxGridDBColumn;
    tbvdetailVLICMS: TcxGridDBColumn;
    tbvdetailVLICMSSUBTRIB: TcxGridDBColumn;
    tbvdetailVLIPI: TcxGridDBColumn;
    tbvdetailVLDESCONTO: TcxGridDBColumn;
    tbvdetailVLFRETE: TcxGridDBColumn;
    tbvQUANTIDADE: TcxGridDBColumn;
    tbvdetailDTPRVENTREGA: TcxGridDBColumn;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    lblproduto: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    actmodograde: TAction;
    dxBarButton5: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grd_DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdcondpagtoEnter(Sender: TObject);
    procedure cbxcdtporcamentoEnter(Sender: TObject);
    procedure cbxcdrepresentanteEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtcdordproducaoExit(Sender: TObject);
    procedure edtcdordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdordproducaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure actimprimirorcamentoExecute(Sender: TObject);
    procedure actimprimiranaliticoExecute(Sender: TObject);
    procedure actemailorcamentoExecute(Sender: TObject);
    procedure actemailExecute(Sender: TObject);
    procedure actimprimirorcamentotodosExecute(Sender: TObject);
    procedure actemailorcamentotodosExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actimprimirdiretoorcamentoExecute(Sender: TObject);
    procedure actimprimirdiretoExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvdetail1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tbvdetail1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure tbvdetailStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure tbvStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actmodogradeExecute(Sender: TObject);
  private   { Private declarations }
    boorcamento, boitorcamento : Boolean;
    semcliente : boolean;
    qry : TClasseQuery;
    qrydetail : TClasseQuery;
    function  makesql333:string;
    procedure Abrir_item;
    procedure filtrar_item;
    function itorcamento_existe:Boolean;
    procedure set_cliente(codigo:string);
    procedure AbrirTabelas;
    procedure SetEmpresa;
    procedure SetTpOrcamento;
    procedure adicionar_item_orcamento;
    function makesql: string;
    function makesql2: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarOrcamento:integer;overload;
function Localizarorcamento(cdcliente: string; cditorcamento: TStrings):string;overload;

var
  frmLocalizarOrcamento: TfrmLocalizarOrcamento;

implementation

uses uDtmMain,
  ulocalizarproduto,
  ulocalizarordproducao,
  uimprimirrelatoriopadrao,
  classeregistro,
  ClasseLocalizar,
  rptestoquecompleto;

{$R *.DFM}

function LocalizarOrcamento:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_orcamento) then
  begin
    frmLocalizarOrcamento  := TfrmLocalizarOrcamento.Create(application);
  end;
  with frmLocalizarOrcamento do
  begin
    set_cliente('');
    tbvhrresposta.Visible := empresa.comercial.orcamento.bolocalizarhorarioresposta;
    tbvhrrespostafinal.Visible := empresa.comercial.orcamento.bolocalizarhorarioresposta;
    if qry.q.Active       then
    begin
      qry.q.Refresh;
    end;
    if qrydetail.q.Active then
    begin
      qrydetail.q.Refresh;
    end;
    showmodal;
    if ModalResult = mrok then
    begin
      result := qry.q.fieldbyname(_cdorcamento).AsInteger;
    end;
  end;
end;

function Localizarorcamento(cdcliente:string; cditorcamento: TStrings):string;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_orcamento) then
  begin
    frmLocalizarorcamento := TfrmLocalizarorcamento.Create(application);
  end;
  with frmLocalizarorcamento do
  begin
    set_cliente(cdcliente);
    if qry.q.Active then
    begin
      qry.q.Refresh;
      if qry.q.FieldByName(_cdcliente).AsString <> cdcliente then
      begin
        qry.q.Close;
      end;
    end;
    if qrydetail.q.Active then
    begin
      qrydetail.q.Refresh;
    end;
    showmodal;
    if ModalResult = mrok then
    begin
      if cdcliente = '' then
      begin
        cditorcamento.Add(qrydetail.q.fieldbyname(_cd+_it+_orcamento).AsString);
      end
      else if cdsdetail1.Active then
      begin
        cdsdetail1.First;
        while not cdsdetail1.Eof do
        begin
          cditorcamento.Add(cdsdetail1CDITorcamento.AsString);
          cdsdetail1.Next;
        end;
        cdsdetail1.First;
        while not cdsdetail1.Eof do
        begin
          cdsdetail1.Delete;
        end;
      end;
      result := qry.q.fieldbyname(_cdorcamento).AsString;
    end;
  end;
end;

function TfrmLocalizarOrcamento.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where o.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarnomelike  (edtnucontrato.Text      , _o     , _nu+_contrato    , result);
  sqlmontarnomelike  (edtdsdesenho.Text       , _i     , _dsdesenho       , result);
  sqlmontarnomedireto(edtdsdesenhoposicao.Text, _i     , _dsdesenhoposicao, result);
  sqlmontarnomedireto(edtnuitem.Text          , _i     , _nuitem          , result);
  sqlmontarnomelikeor(edtnucotacao.Text       , _o, _I , _nucotacao       , result);
  sqlmontarcodigo    (edtcdproduto.text  , _i     , _cdproduto       , result);
  sqlmontarcodigo    (edtcdordproducao.Text   , _i+_p  , _cd+_ordproducao , Result);
  sqlmontarcodigo    (edtcdcliente.text  , _o     , _cdcliente       , result);
  sqlmontarvalor (edtvlicmsi.Value    , edtvlicmsf.Value    , _i, _vlicms    , result);
  sqlmontarvalor (edtalicmsi.Value    , edtalicmsf.Value    , _i, _alicms    , result);
  sqlmontarvalor (edtvlipii.Value    , edtvlipif.Value    , _i, _vlipi    , result);
  sqlmontarvalor (edtalipii.Value    , edtalipif.Value    , _i, _alipi    , result);
  sqlmontarvalor (edtvlprodutoi.Value   , edtvlprodutof.Value   , _O, _vlproduto, result);
  sqlmontarvalor (edtvltotali.Value     , edtvltotalf.Value     , _O, _vltotal  , result);
  sqlmontarvalor (edtvlfretei.Value     , edtvlfretef.Value     , _O, _vlfrete  , result);
  sqlmontarvalor (edtvldescontoi.Value , edtvldescontof.Value , _O, _vldesconto , result);
  if cbxcdrepresentante.Text <> '' then
  begin
    sqlmontarcodigo(qregistro.codigodonome(_representante, cbxcdrepresentante.Text), _o, _cdrepresentante, result);
  end;
  if cbxcdcondpagto.Text     <> '' then
  begin
    sqlmontarcodigo(qregistro.codigodonome(_condpagto    , cbxcdcondpagto.Text    ), _o, _cdcondpagto    , result);
  end;
  if cbxcdstorcamento.Text   <> '' then
  begin
    sqlmontarcodigo(qregistro.codigodonome(_storcamento  , cbxcdstorcamento.Text  ), _o, _cdstorcamento  , result);
  end;
  if cbxcdtporcamento.Text   <> '' then
  begin
    sqlmontarcodigo(qregistro.codigodonome(_tporcamento  , cbxcdtporcamento.Text  ), _o, _cdtporcamento  , result);
  end;
  sqlmontardata  (edtdtEmissaoi.text   , edtdtEmissaof.text   , _o, _dtemissao   , result);
  sqlmontardata  (edtdtrespostai.text  , edtdtrespostaf.text  , _o, _dtresposta  , result);
  sqlmontardata  (edtdtprventregai.text, edtdtprventregaf.text, _o, _dtprventrega, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarOrcamento.makesql:string;
begin
  result := 'SELECT o.DTEMISSAO'+
                  ',o.CDCLIENTE'+
                  ',c.NMCLIENTE'+
                  ',r.NMREPRESENTANTE'+
                  ',cp.NMCONDPAGTO'+
                  ',s.NMSTorcamento'+
                  ',s.nucor'+
                  ',o.DTPRVENTREGA'+
                  ',O.DTRESPOSTA'+
                  ',count(i.cditorcamento) quantidade'+
                  ',sum(I.VLICMS) VLICMS'+
                  ',sum(I.VLDESCONTO) VLDESCONTO'+
                  ',sum(I.VLFRETE) VLFRETE'+
                  ',sum(I.VLIPI) VLIPI'+
                  ',sum(I.VLICMSSUBTRIB) VLICMSSUBTRIB'+
                  ',sum(i.qtaprovado) qtaprovado'+
                  ',sum(i.qtitem) qtitem'+
                  ',o.vltotal';
  if empresa.comercial.orcamento.bolocalizarhorarioresposta then
  begin
    result := result +
                  ',o.hrresposta'+
                  ',o.hrrespostafinal';
  end;
  result := result +
                  ',o.cdorcamento '+
            'FROM orcamento o '+
            'left join itorcamento i on i.cdorcamento=o.cdorcamento and o.cdempresa=i.cdempresa '+
            //'left join produto on produto.cdproduto=i.cdproduto and produto.cdempresa=i.cdempresa '+
            'left join itpedido ip on ip.cditorcamento=i.cditorcamento and ip.cdempresa=i.cdempresa '+
            'left JOIN CLIENTE C ON o.CDCLIENTE=C.CDCLIENTE and c.cdempresa=o.cdempresa '+
            'left JOIN REPRESENTANTE R ON R.CDREPRESENTANTE=o.CDREPRESENTANTE and r.cdempresa=o.cdempresa '+
            'left JOIN CONDPAGTO CP ON CP.CDCONDPAGTO=o.CDCONDPAGTO and cp.cdempresa=o.cdempresa '+
            'left JOIN STorcamento S ON S.CDSTorcamento=o.CDSTorcamento and s.cdempresa=o.cdempresa ';
  result := result + sqlwhere+' '+
            'group by o.DTEMISSAO'+
                  ',o.CDCLIENTE'+
                  ',c.NMCLIENTE'+
                  ',r.NMREPRESENTANTE'+
                  ',cp.NMCONDPAGTO'+
                  ',s.NMSTorcamento'+
                  ',s.nucor'+
                  ',o.DTPRVENTREGA'+
                  ',O.DTRESPOSTA'+
                  ',o.vltotal';
  if empresa.comercial.orcamento.bolocalizarhorarioresposta then
  begin
    result := result +
                  ',o.hrresposta'+
                  ',o.hrrespostafinal';
  end;
  result := result +
                  ',o.CDorcamento '+
            'ORDER BY O.DTEMISSAO DESC';

end;

function TfrmLocalizarOrcamento.makesql2:string;
begin
  result := 'select i.cdorcamento'+
                 ',i.cddigitado'+
                 ',i.cditorcamento'+
                 ',pr.nmproduto'+
                 ',i.qtaprovado'+
                 ',i.qtitem'+
                 ',I.DTPRVENTREGA'+
                 ',i.vlunitario'+
                 ',i.vldesconto'+
                 ',i.vlfrete'+
                 ',i.vlicms'+
                 ',i.vlicmssubtrib'+
                 ',i.vlipi'+
                 ',i.VLTOTAL '+
            'from orcamento o '+
            'left JOIN CLIENTE C ON o.CDCLIENTE=C.CDCLIENTE and o.cdempresa=c.cdempresa '+
            'left JOIN REPRESENTANTE R ON R.CDREPRESENTANTE=o.CDREPRESENTANTE and r.cdempresa=o.cdempresa '+
            'left JOIN CONDPAGTO CP ON CP.CDCONDPAGTO=o.CDCONDPAGTO and cp.cdempresa=o.cdempresa '+
            'left JOIN storcamento S ON S.CDSTorcamento=o.CDSTorcamento and s.cdempresa=o.cdempresa '+
            'inner join itorcamento I on i.cdorcamento=o.cdorcamento and i.cdempresa=o.cdempresa '+
            'left join itpedido ip on ip.cditorcamento=i.cditorcamento and ip.cdempresa=i.cdempresa '+
            'inner join produto pr on i.cdproduto=pR.cdproduto and pr.cdempresa=i.cdempresa ';
  result := Result + sqlwhere;
end;

procedure TfrmLocalizarOrcamento.btnFindClick(Sender: TObject);
begin
  qry.q.Close;
  qry.q.sql.text := makesql;
  qry.q.open;
  qrydetail.q.Close;
  grdLevel2.Visible  := False;
  grdLevel2.GridView := nil;
  if ckbexibiritem.Checked then
  begin
    grdLevel2.Visible  := true;
    grdLevel2.GridView := tbvdetail;
    qrydetail.q.sql.text := makesql2;
    qrydetail.q.open;
  end;
  btnOk.Enabled := qry.q.RecordCount > 0
end;

procedure TfrmLocalizarOrcamento.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarOrcamento.grd_DblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarOrcamento.FormShow(Sender: TObject);
begin
  cbxcdrepresentante.Visible := empresa.comercial.representante.bo;
  lblrepresentante.Visible   := empresa.comercial.representante.bo;
  if not semcliente then
  begin
    edtcdcliente.Enabled := true;
    edtcdcliente.SetFocus;
  end;
  edtcdcliente.visible := true;
end;

procedure TfrmLocalizarOrcamento.btncancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarOrcamento.FormCreate(Sender: TObject);
begin
  qry := TClasseQuery.Create;
  TRegistro.SetQueryLocalizar(qry, dts, tbv);
  qrydetail := tclassequery.create;
  dtsdetail.dataset := qrydetail.q;
  AbrirTabelas;
  SetEmpresa;
  SetTpOrcamento;
end;

procedure TfrmLocalizarOrcamento.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(qrydetail);
end;

procedure TfrmLocalizarOrcamento.cbxcdcondpagtoEnter(Sender: TObject);
begin
  abrir_tabela(_condpagto+_s);
  colorenter(sender);
end;

procedure TfrmLocalizarOrcamento.cbxcdtporcamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tporcamento);
  colorenter(sender);
end;

procedure TfrmLocalizarOrcamento.cbxcdrepresentanteEnter(Sender: TObject);
begin
  abrir_tabela(_representante);
  colorenter(sender);
end;

procedure TfrmLocalizarOrcamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarOrcamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarOrcamento.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarOrcamento.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarOrcamento.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrcamento.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarOrcamento.edtcdordproducaoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdordproducao.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_ordproducao, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_ordem+' '+__producao)]), mterror, [mbok], 0);
    edtcdordproducao.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarOrcamento.edtcdordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdordproducaoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrcamento.edtcdordproducaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarordproducao;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdordproducao.text := cd.ToString;
end;

procedure TfrmLocalizarOrcamento.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarOrcamento.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarOrcamento.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := cd.ToString;
  lblnmproduto.caption := qregistro.NomedoCodigo(_produto, cd);
end;

procedure TfrmLocalizarOrcamento.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarOrcamento.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarOrcamento.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarOrcamento.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);  edtcdcliente.Clear;
end;

procedure TfrmLocalizarOrcamento.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, qry, tbv);
end;

procedure TfrmLocalizarOrcamento.actimprimirExecute(Sender: TObject);
begin
//
end;

function TfrmLocalizarOrcamento.makesql333:string;
var
  i : Integer;
  lista : TStrings;
begin
  lista := TStringList.Create;
  try
    for i := 0 to tbv.ViewData.RowCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        lista.Add(tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdorcamento).Index]);
      end;
    end;
    result := '';
    for i := 0 to lista.Count -1 do
    begin
      if i > 0 then
      begin
        result := result + ' or '+_orcamento+'.'+_cdorcamento+'=';
      end;
      result := result + lista[i];
    end;
  finally
    lista.Free;
  end;
end;

procedure TfrmLocalizarOrcamento.actimprimirorcamentoExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 333, _cdorcamento);
end;

procedure TfrmLocalizarOrcamento.actimprimiranaliticoExecute(Sender: TObject);
var
  cdorcamento : string;
  i : integer;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      cdorcamento := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdorcamento).Index];
      imprimirocamento(cdorcamento);
    end;
  end;
end;

procedure TfrmLocalizarOrcamento.actemailExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarOrcamento.actemailorcamentoExecute(Sender: TObject);
var
  cdorcamento, email: string;
  orcamento : torcamento;
  i : integer;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  email := '';
  InputQuery('Enviar e-mail', 'Digite o e-mail para envio do relatório', email);
  if trim(email) = '' then
  begin
    exit;
  end;
  orcamento := torcamento.create;
  try
    cdorcamento := tbv.ViewData.Records[0].Values[tbv.GetColumnByFieldName(_cdorcamento).Index];
    orcamento.tporcamento.Select(qregistro.InteirodoCodigo(_orcamento, strtoint(cdorcamento), _cdtporcamento));
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if tbv.ViewData.Records[i].Selected then
      begin
        cdorcamento := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdorcamento).Index];
        ImpimirRelatorioPadrao1(333, cdorcamento, '', _email, email, orcamento.tporcamento.emailcopia, orcamento.tporcamento.dstituloemail, orcamento.tporcamento.dsassuntoemail);
      end;
    end;
  finally
    freeandnil(orcamento);
  end;
end;

procedure TfrmLocalizarOrcamento.actimprimirorcamentotodosExecute(Sender: TObject);
var
  sql : string;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  sql := makesql333;
  if sql <> '' then
  begin
    ImpimirRelatorioPadrao1(333, sql);
  end;
end;

procedure TfrmLocalizarOrcamento.actemailorcamentotodosExecute(Sender: TObject);
var
  sql, cdorcamento, email: string;
  orcamento : torcamento;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  email := '';
  InputQuery('Enviar e-mail', 'Digite o e-mail para envio do relatório', email);
  if email = '' then
  begin
    exit;
  end;
  sql := makesql333;
  if sql = '' then
  begin
    Exit;
  end;
  orcamento := torcamento.create;
  try
    cdorcamento := tbv.ViewData.Records[0].Values[tbv.GetColumnByFieldName(_cdorcamento).Index];
    orcamento.tporcamento.Select(qregistro.InteirodoCodigo(_orcamento, strtoint(cdorcamento), _cdtporcamento));
    ImpimirRelatorioPadrao1(333, sql, '', _email, email, orcamento.tporcamento.emailcopia, orcamento.tporcamento.dstituloemail, orcamento.tporcamento.dsassuntoemail);
  finally
    freeandnil(orcamento);
  end;
end;

procedure TfrmLocalizarOrcamento.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column             := tbvnucor;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color = clred then
  begin
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end
  else if ACanvas.Font.Color = clblue then
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarOrcamento.actimprimirdiretoorcamentoExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 333, _cdorcamento, false);
end;

procedure TfrmLocalizarOrcamento.actimprimirdiretoExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarOrcamento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not qry.q.Active) or (qry.q.RecordCount <= 0) then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    qry.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    qry.q.Prior;
    key := 0;
  end;
end;

procedure TfrmLocalizarOrcamento.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarOrcamento.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarOrcamento.adicionar_item_orcamento;
var
  z, i : Integer;
begin
  if itorcamento_existe then
  begin
    Exit;
  end;
  cdsdetail1.Insert;
  for i := 0 to qrydetail.q.FieldCount - 1 do
  begin
    for z := 0 to cdsdetail1.FieldCount - 1 do
    begin
      if qrydetail.q.Fields[i].FieldName = cdsdetail1.Fields[z].FieldName then
      begin
        cdsdetail1.FieldByName(qrydetail.q.Fields[I].FieldName).AsVariant := qrydetail.q.Fields[I].AsVariant;
      end;
    end;
  end;
  cdsdetail1.Post;
end;

procedure TfrmLocalizarOrcamento.tbvdetail1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Abrir_item;
  if boorcamento then
  begin
    filtrar_item;
    while not qrydetail.q.Eof do
    begin
      adicionar_item_orcamento;
      qrydetail.q.Next;
    end;
    qrydetail.q.Filtered := False;
  end;
  if boitorcamento then
  begin
    adicionar_item_orcamento;
  end;
end;

procedure TfrmLocalizarOrcamento.tbvdetail1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TfrmLocalizarOrcamento.Abrir_item;
begin
  if not cdsdetail1.Active then
  begin
    cdsdetail1.CreateDataSet;
    cdsdetail1.Open;
  end;
end;

procedure TfrmLocalizarorcamento.filtrar_item;
begin
  qrydetail.q.Filter   := _cdorcamento+'='+qry.q.fieldbyname(_cdorcamento).AsString;
  qrydetail.q.Filtered := True;
end;

function TfrmLocalizarorcamento.itorcamento_existe:Boolean;
begin
  result := cdsdetail1.Locate(_cditorcamento, qrydetail.q.fieldbyname(_cditorcamento).AsString, [loCaseInsensitive]);
end;

procedure TfrmLocalizarOrcamento.tbvdetailStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  boitorcamento := True;
  boorcamento   := False;
end;

procedure TfrmLocalizarOrcamento.tbvStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  boorcamento   := True;
  boitorcamento := False;
end;

procedure TfrmLocalizarOrcamento.set_cliente(codigo:string);
begin
  if codigo <> '' then
  begin
    ckbexibiritem.Checked := true;
  end;
  ckbexibiritem.Enabled := codigo = '';
  grddetail1.Visible := codigo <> '';
  spl.Visible        := codigo <> '';
  if codigo <> '' then
  begin
    tbv.DragMode       := dmAutomatic;
    tbvdetail.DragMode := dmAutomatic;
  end
  else
  begin
    tbv.DragMode       := dmManual;
    tbvdetail.DragMode := dmManual;
  end;
  if codigo <> '' then
  begin
    edtcdcliente.Text      := codigo;
  end;
  edtcdcliente.Enabled   := codigo = '';
  semcliente             := codigo <> '';
end;

procedure TfrmLocalizarOrcamento.AbrirTabelas;
begin
  cbxcdtporcamento.Properties.ListSource := abrir_tabela(_tporcamento);
  cbxcdstorcamento.Properties.ListSource := abrir_tabela(_storcamento);
  cbxcdcondpagto.Properties.ListSource := abrir_tabela(_condpagto + _s);
  cbxcdrepresentante.Properties.ListSource := abrir_tabela(_representante);
end;

procedure TfrmLocalizarOrcamento.SetEmpresa;
begin
  lblordproducao.Visible := Empresa.producao.ordproducao.bo;
  edtcdordproducao.Visible := Empresa.producao.ordproducao.bo;
end;

procedure TfrmLocalizarOrcamento.SetTpOrcamento;
begin
  tbsicms.TabVisible := RetornaSQLInteger('select count (*) from tporcamento where boicms=''S''') > 0;
  tbsipi.tabVisible := RetornaSQLInteger('select count (*) from tporcamento where boipi=''S''') > 0;
end;

end.

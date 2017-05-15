unit uconsultacliente;

interface

uses
  forms, Classes, ActnList, ComCtrls, StdCtrls, Buttons, Controls, Mask, ExtCtrls,
  ToolWin, windows, dialogs, sysutils,
  sqlexpr,
  uregistro, uconstantes, uAdicionarListView, udatahora, ustrings,
  umontarsql, usystem, uprotector,
  classeusuario, classeempresa, classeform, classecliente,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxCheckBox, cxCalendar, cxPC, dxBar, cxClasses, cxSplitter, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxListView, cxLabel, cxGroupBox, cxRadioGroup,
  cxPCdxBarPopupMenu, dxCore, cxDateUtils, dxBarBuiltInMenu, System.Actions;

type
  TfrmConsultaCliente = class(TForm)
    ActionList1: TActionList;
    actGerar: TAction;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    ntb: TNotebook;
    Panel2: TPanel;
    bvl: TBevel;
    lbli: TLabel;
    lblf: TLabel;
    edtdtf: TcxDateEdit;
    edtdti: TcxDateEdit;
    pgc: TcxPageControl;
    tbscliente: TcxTabSheet;
    Bevel2: TBevel;
    lblnmcliente: TLabel;
    lblcdcliente: TLabel;
    edtnucnpjcpf: TMaskEdit;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    edtcdcliente: TEdit;
    edtnmcliente: TEdit;
    lsvcliente: TcxListView;
    tbsrepresentante: TcxTabSheet;
    Bevel4: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    ToolBar7: TToolBar;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    edtcdrepresentante: TEdit;
    edtnmrepresentante: TEdit;
    lsvrepresentante: TcxListView;
    tbsuf: TcxTabSheet;
    Bevel3: TBevel;
    Label4: TLabel;
    Label3: TLabel;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    edtnmuf: TEdit;
    edtcduf: TEdit;
    lsvuf: TcxListView;
    tbsstcliente: TcxTabSheet;
    Bevel5: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    edtcdstcliente: TEdit;
    edtnmstcliente: TEdit;
    lsvstcliente: TcxListView;
    tbstpcliente: TcxTabSheet;
    Bevel7: TBevel;
    Label8: TLabel;
    Label7: TLabel;
    ToolBar2: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton16: TToolButton;
    edtnmtpcliente: TEdit;
    edtcdtpcliente: TEdit;
    lsvtpcliente: TcxListView;
    tbsrmatividade: TcxTabSheet;
    Bevel9: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    ToolBar5: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton20: TToolButton;
    edtnmrmatividade: TEdit;
    edtcdtmatividade: TEdit;
    lsvrmatividade: TcxListView;
    tbsbairro: TcxTabSheet;
    Bevel10: TBevel;
    Label13: TLabel;
    ToolBar9: TToolBar;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    edtnmbairro: TEdit;
    lsvnmbairro: TcxListView;
    tbsmunicipio: TcxTabSheet;
    Bevel1: TBevel;
    Label16: TLabel;
    Label15: TLabel;
    edtnmmunicipio: TEdit;
    edtcdmunicipio: TEdit;
    ToolBar10: TToolBar;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton38: TToolButton;
    lsvmunicipio: TcxListView;
    spl1: TcxSplitter;
    trv: TTreeView;
    pnl: TcxLabel;
    edtdtcadastrof: TcxDateEdit;
    edtdtcadastroi: TcxDateEdit;
    lbldtcadastro: TLabel;
    lbldtcadastroate: TLabel;
    edtdtnascimentoF: TcxDateEdit;
    lbldtnascimentoate: TLabel;
    edtdtnascimentoI: TcxDateEdit;
    lbldtnascimento: TLabel;
    edtdtemissaoF: TcxDateEdit;
    lbldtemissaoate: TLabel;
    edtdtemissaoI: TcxDateEdit;
    lbldtemissao: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure edtnmufChange(Sender: TObject);
    procedure edtnmufKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmrepresentanteChange(Sender: TObject);
    procedure edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmclienteChange(Sender: TObject);
    procedure edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucnpjcpfKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucnpjcpfKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdufKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure edtcdstclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstclienteChange(Sender: TObject);
    procedure edtnmstclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure edtcdtpclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpclienteChange(Sender: TObject);
    procedure edtnmtpclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure edtcdtmatividadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmrmatividadeChange(Sender: TObject);
    procedure edtnmrmatividadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton32Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure edtnmbairroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtcdmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmmunicipioChange(Sender: TObject);
    procedure edtnmmunicipioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton35Click(Sender: TObject);
    procedure ToolButton36Click(Sender: TObject);
    procedure ToolButton38Click(Sender: TObject);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private    { Private declarations }
    cliente : Tcliente;
    tpcodigo : string;
    bormatividade : boolean;
    executar_on_change_uf             : boolean;
    executar_on_change_representante  : boolean;
    executar_on_change_cliente        : boolean;
    executar_on_change_stcliente      : boolean;
    executar_on_change_tpcliente      : boolean;
    executar_on_change_municipio      : boolean;
    executar_on_change_rmatividade    : boolean;
    executar_on_change_bairro         : boolean;
    procedure AplicarConfiguracaoEmpresa;
    procedure ConfiguracaoEmpresa;
    procedure set_treeview;
  public    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

uses uMain,
  uimprimirrelatoriopadrao,
  uDtmMain, rptestoquecompleto;
  
{$R *.dfm}

procedure TfrmConsultaCliente.AplicarConfiguracaoEmpresa;
begin
  if not empresa.comercial.representante.bo then
  begin
    tbsrepresentante.TabVisible := false;
  end;
end;

procedure TFrmConsultaCliente.ConfiguracaoEmpresa;
begin
  bormatividade             := Empresa.cliente.bormatividade;
  tbsrmatividade.TabVisible := bormatividade;
  AplicarConfiguracaoEmpresa;
end;

procedure TfrmConsultaCliente.FormShow(Sender: TObject);
begin
  cliente := TCliente.Create;
  configuracaoempresa;
  tpcodigo       := 'Código';
  ntb.ActivePage := 'Default';
  edtdtf.date := dtbanco;
  edtdti.date := edtdtf.date;
  ConfigurarPermissoes(self);
  trv.Items[0].Expand(true);
end;

procedure TfrmConsultaCliente.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvcliente);
end;

procedure TfrmConsultaCliente.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvcliente);
end;

procedure TfrmConsultaCliente.ToolButton8Click(Sender: TObject);
begin
  lsvCliente.Clear;
end;

procedure TfrmConsultaCliente.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvuf);
end;

procedure TfrmConsultaCliente.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvuf);
end;

procedure TfrmConsultaCliente.ToolButton12Click(Sender: TObject);
begin
  lsvuf.Clear;
end;

procedure TfrmConsultaCliente.ToolButton21Click(Sender: TObject);
begin
  AdicionarListView(lsvrepresentante);
end;

procedure TfrmConsultaCliente.ToolButton22Click(Sender: TObject);
begin
  ExcluirListView(lsvrepresentante);
end;

procedure TfrmConsultaCliente.ToolButton24Click(Sender: TObject);
begin
  lsvrepresentante.Clear;
end;

procedure TfrmConsultaCliente.actGerarExecute(Sender: TObject);
  function tabelaquebra(cbx:TCombobox):string;
  begin
    result := lowercase(cbx.text);
    if cbx.Text = 'Ramo Atividade' then
    begin
      result := _rmatividade;
    end;
  end;
var
  nopai, consulta :string;
  cdmunicipio, cdrmatividade, cdtpcliente, linhas, cdstcliente, cdrota, cdrepresentante, cduf, cdcliente : TStrings;
  nmbairro : TStrings;
  dti, dtf : TDate;
  procedure criar_objetos;
  begin
    cdcliente       := TStringList.create;
    cdstcliente     := TStringList.create;
    cduf            := TStringList.create;
    cdrepresentante := TStringList.create;
    cdrota          := TStringList.create;
    cdtpcliente     := TStringList.create;
    cdmunicipio     := TStringList.create;
    cdrmatividade   := TStringList.create;
    nmbairro        := TStringList.create;
    linhas          := TStringList.create;
  end;
  procedure destruir_objetos;
  begin
    cdcliente.free;
    cduf.free;
    cdrepresentante.free;
    cdrota.free;
    cdtpcliente.free;
    cdrmatividade.free;
    linhas.free;
    cdstcliente.free;
    cdmunicipio.free;
    nmbairro.free;
  end;
  procedure preencher_lista;
  var
    i : Integer;
  begin
    for I := 0 to lsvcliente.Items.count       - 1 do cdcliente.add      (lsvCliente.items      [i].Caption);
    for I := 0 to lsvstcliente.Items.count     - 1 do cdstcliente.add    (lsvstcliente.items    [i].Caption);
    for I := 0 to lsvuf.Items.count            - 1 do cduf.add           (lsvuf.items           [i].caption);
    for I := 0 to lsvrepresentante.Items.count - 1 do cdrepresentante.add(lsvrepresentante.items[i].caption);
    for I := 0 to lsvtpcliente.Items.count     - 1 do cdtpcliente.add    (lsvtpcliente.items    [i].caption);
    for I := 0 to lsvmunicipio.Items.count     - 1 do cdmunicipio.add    (lsvmunicipio.items    [i].caption);
    for I := 0 to lsvrmatividade.Items.count   - 1 do cdrmatividade.add  (lsvrmatividade.items  [i].caption);
    for I := 0 to lsvnmbairro.Items.count      - 1 do nmbairro.add       (lsvnmbairro.items     [i].caption);
  end;
  function makesqlwhereproprietario(data:string):string;
  begin
    result := 'WHERE c.cdempresa='+empresa.cdempresa.tostring+' '+
              'and EXTRACT(DAY FROM '+data+') BETWEEN '+formatdatetime(_dd, dti)+' and '+formatdatetime(_dd, dtf)+' '+
              'and EXTRACT(MONTH FROM '+data+') BETWEEN '+formatdatetime(_mm, dti)+' and '+formatdatetime(_mm, dtf);
    sqlmontarlista(cdcliente         , _c, _cdcliente      , result);
    sqlmontarlista(cdrepresentante   , _c, _cdrepresentante, result);
    sqlmontarlista(cduf              , _c, _cduf           , result);
    sqlmontarlista(cdstcliente       , _c, _cdstcliente    , result);
    sqlmontarlista(cdrota            , _c, _cdrota         , result);
  end;
  function makesqlwherecliente(nmdata:string=''):string;
  var
    t : Integer;
  begin
    result := ' ';
    t := 1;
    result := result + 'where cliente.cdempresa='+empresa.cdempresa.tostring+' ';
    if nmdata <> '' then
    begin
      InsercaoDataSQl(edtdti, edtdtf, result, nmdata, t);
    end;
    sqlmontarlista(cdcliente      , _cliente, _cdcliente      , result, t);
    sqlmontarlista(cdrepresentante, _cliente, _cdrepresentante, result, t);
    sqlmontarlista(cdmunicipio    , _cliente, _cdmunicipio    , result, t);
    sqlmontarlista(cduf           , _cliente, _cduf           , result, t);
    sqlmontarlista(cdrota         , _cliente, _cdrota         , result, t);
    sqlmontarlista(cdstcliente    , _cliente, _cdstcliente    , result, t);
    sqlmontarlista(cdtpcliente    , _cliente, _cdtpcliente    , result, t);
    sqlmontarlista(nmbairro       , _cliente, _nmbairro       , result, t);
    sqlmontarlista(cdrmatividade  , _cliente, _cdrmatividade  , result, t);
  end;
  function imprimiraniversariantecontato:boolean;
    function makesqlwhere:string;
    begin
      result := ' '+
                'where itcontcliente.cdempresa='+empresa.cdempresa.tostring+' '+
                'and EXTRACT(month FROM itcontcliente.dtnascimento)='+formatdatetime(_mm, dti)+' '+
                'and EXTRACT(day FROM itcontcliente.dtnascimento) between '+formatdatetime(_dd, dti)+' and '+formatdatetime(_dd, dtf)+' ';
      sqlmontarlista(cdcliente      , _c, _cdcliente      , result);
      sqlmontarlista(cdrepresentante, _c, _cdrepresentante, result);
      sqlmontarlista(cduf           , _c, _cduf           , result);
      sqlmontarlista(cdrota         , _c, _cdrota         , result);
      sqlmontarlista(cdstcliente    , _c, _cdstcliente    , result);
      sqlmontarlista(cdtpcliente    , _c, _cdtpcliente    , result);
      sqlmontarlista(nmbairro       , _c, _nmbairro       , result);
      sqlmontarlista(cdrmatividade  , _c, _cdrmatividade  , result);
      result := result + 'ORDER BY C.CDCLIENTE';
    end;
  begin
    ImpimirRelatorioPadrao1(346, makesqlwhere);
    result := True;
  end;
  function sqlwherelista:string;
  var
    t : Integer;
  begin
    result := ' ';
    t := Length(result);
    result := result + 'where c.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarlista(cdcliente      , _c, _cdcliente      , result, t);
    sqlmontarlista(cdrepresentante, _c, _cdrepresentante, result, t);
    sqlmontarlista(cduf           , _c, _cduf           , result, t);
    sqlmontarlista(cdrota         , _c, _cdrota         , result, t);
    sqlmontarlista(cdstcliente    , _c, _cdstcliente    , result, t);
    sqlmontarlista(cdtpcliente    , _c, _cdtpcliente    , result, t);
    sqlmontarlista(cdrmatividade  , _c, _cdrmatividade  , result, t);
    sqlmontarlista(nmbairro       , _c, _nmbairro       , result, t);
  end;
  function sqlwherelista2:string;
  var
    t : Integer;
  begin
    result := ' ';
    t := Length(result);
    Result := result + 'where cliente.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarlista(cdcliente      , _cliente, _cdcliente      , result, t);
    sqlmontarlista(cdrepresentante, _cliente, _cdrepresentante, result, t);
    sqlmontarlista(cduf           , _cliente, _cduf           , result, t);
    sqlmontarlista(cdrota         , _cliente, _cdrota         , result, t);
    sqlmontarlista(cdstcliente    , _cliente, _cdstcliente    , result, t);
    sqlmontarlista(cdtpcliente    , _cliente, _cdtpcliente    , result, t);
    sqlmontarlista(cdrmatividade  , _cliente, _cdrmatividade  , result, t);
    sqlmontarlista(nmbairro       , _cliente, _nmbairro       , result, t);
  end;
  function sqlwhereultima:string;
  var
    t : Integer;
  begin
    result := ' ';
    t      := length(result);
    result := result + 'where c.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarlista(cdrepresentante, _c, _cdrepresentante, result, t);
    sqlmontarlista(cdtpcliente    , _c, _cdtpcliente    , result, t);
    sqlmontarlista(cdrota         , _c, _cdrota         , result, t);
  end;
  function sqlwherevolume:string;
  begin
    result := 'WHERE c.cdempresa='+empresa.cdempresa.tostring+' and S.DTEMISSAO BETWEEN '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdrepresentante, _c, _cdrepresentante, result);
    sqlmontarlista(cduf           , _c, _cduf           , result);
    sqlmontarlista(cdmunicipio    , _c, _cdmunicipio    , result);
    sqlmontarlista(cdrota         , _c, _cdrota         , result);
  end;
  function sqlwhereuf:string;
  begin
    result := 'where c.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarlista(cdrepresentante, _c, _cdrepresentante, result);
    sqlmontarlista(cduf           , _c, _cduf           , result);
    sqlmontarlista(cdmunicipio    , _c, _cdmunicipio    , result);
    sqlmontarlista(cdrota         , _c, _cdrota         , result);
  end;
  function sqlwhereinativo:string;
  var
    t : Integer;
  begin
    result := ' ';
    t := 1;
    sqlmontarlista(cdrepresentante, _cliente, _cdrepresentante, result, t);
    sqlmontarlista(cduf           , _cliente, _cduf           , result, t);
    sqlmontarlista(cdrota         , _cliente, _cdrota         , result, t);
    sqlmontarlista(cdtpcliente    , _cliente, _cdtpcliente    , result, t);
    sqlmontarlista(cdstcliente    , _cliente, _cdstcliente    , result, t);
    sqlmontarlista(cdrmatividade  , _cliente, _cdrmatividade  , result, t);
    sqlmontarlista(cdmunicipio    , _cliente, _cdmunicipio    , result, t);
    sqlmontarlista(nmbairro       , _cliente, _nmbairro       , result, t);
  end;
  function makesqlwhereetiqueta(tblorigem:string):string;
  var
    t : Integer;
  begin
    result := ' ';
    t := 1;
    InsercaoDataSQl(edtdtemissaoi        , edtdtemissaof   , result, _saida   +'.'+_dtemissao   , t);
    InsercaoDataSQl(edtdtcadastroi       , edtdtcadastrof  , result, _cliente +'.'+_dtcadastro  , t);
    InsercaoDataSQlMonth(edtdtnascimentoi, edtdtnascimentof, result, tblorigem+'.'+_dtnascimento, t);
    sqlmontarlista(cdcliente      , _cliente, _cdcliente      , result, t);
    sqlmontarlista(cdrepresentante, _cliente, _cdrepresentante, result, t);
    sqlmontarlista(cduf           , _cliente, _cduf           , result, t);
    sqlmontarlista(cdrota         , _cliente, _cdrota         , result, t);
    sqlmontarlista(cdtpcliente    , _cliente, _cdtpcliente    , result, t);
    sqlmontarlista(cdstcliente    , _cliente, _cdstcliente    , result, t);
    sqlmontarlista(cdrmatividade  , _cliente, _cdrmatividade  , result, t);
    sqlmontarlista(cdmunicipio    , _cliente, _cdmunicipio    , result, t);
    sqlmontarlista(nmbairro       , _cliente, _nmbairro       , result, t);
  end;
begin
  criar_objetos;
  try
    preencher_lista;
    nopai           := trv.selected.Parent.text;
    consulta        := trv.selected.text;
    dti             := edtdti.Date;
    dtf             := edtdtf.Date;
    TQForm.mudarcontroles(self, false);
    try
      dtmmain.LogSiteAction(self.name, consulta);
           if consulta = 'Corrigir Número do Endereço'                                        then cliente.Corrigir_Numero_Endereco
      else if consulta = '484 - Atraso (Analítico)'                                           then ImpimirRelatorioPadrao1(484, makesqlwherecliente(_duplicata+'.'+_dtprorrogacao))
      else if consulta = '485 - Atraso (Sintético)'                                           then ImpimirRelatorioPadrao1(485, makesqlwherecliente(_duplicata+'.'+_dtprorrogacao))
      else if consulta = '480 - Informações Financeiras'                                      then ImpimirRelatorioPadrao1(480, makesqlwherecliente, False, edtdti.Date, edtdtf.Date)
      else if consulta = '479 - Lista e-mail'                                                 then ImpimirRelatorioPadrao1(479, makesqlwherecliente)
      else if consulta = '486 - Lista por UF'                                                 then ImpimirRelatorioPadrao1(486, makesqlwherecliente)
      else if consulta = '476 - Lista por Valor Venda'                                        then ImpimirRelatorioPadrao1(476, makesqlwherecliente(_saida+'.'+_dtemissao))
      else if consulta = '483 - Número Clientes Afiliados'                                    then ImpimirRelatorioPadrao1(483, makesqlwherecliente(_cliente+'.'+_dtcadastro+_socio))
      else if consulta = '477 - Número Clientes Cadastrados'                                  then ImpimirRelatorioPadrao1(477, makesqlwherecliente(_cliente+'.'+_dtcadastro))
      else if consulta = '482 - Número Clientes Desfiliados'                                  then ImpimirRelatorioPadrao1(482, makesqlwherecliente(_cliente+'.'+_DT+_DESFILIACAO))
      else if consulta = '481 - Volume de Compra'                                             then ImpimirRelatorioPadrao1(481, makesqlwherecliente(_saida+'.'+_dtemissao))

      else if consulta = '668 - Etiqueta - Nome + Endereço Comercial'                         then ImpimirRelatorioPadrao1(668, makesqlwhereetiqueta(_cliente))
      else if consulta = '625 - Etiqueta - Nome + Endereço Cobrança'                          then ImpimirRelatorioPadrao1(625, makesqlwhereetiqueta(_cliente))
      else if consulta = '626 - Etiqueta - Razão Social + Endereço Cobrança'                  then ImpimirRelatorioPadrao1(626, makesqlwhereetiqueta(_cliente))
      else if consulta = '640 - Etiqueta - Nome Fantasia + Razão Social + Endereço Cobrança'  then ImpimirRelatorioPadrao1(640, makesqlwhereetiqueta(_cliente))
      else if consulta = '627 - Etiqueta - Razão Social + Endereço Comercial'                 then ImpimirRelatorioPadrao1(627, makesqlwhereetiqueta(_cliente))
      else if consulta = '641 - Etiqueta - Nome Fantasia + Razão Social + Endereço Comercial' then ImpimirRelatorioPadrao1(641, makesqlwhereetiqueta(_cliente))
      else if consulta = '628 - Etiqueta - Contato + Endereço Comercial'                      then ImpimirRelatorioPadrao1(628, makesqlwhereetiqueta(_itcontcliente))
      else if consulta = '629 - Etiqueta - Contato + Endereço Cobrança'                       then ImpimirRelatorioPadrao1(629, makesqlwhereetiqueta(_itcontcliente))
      else if consulta = '630 - Etiqueta - Proprietário + Endereço Comercial'                 then ImpimirRelatorioPadrao1(630, makesqlwhereetiqueta(_itproprietario))
      else if consulta = '631 - Etiqueta - Proprietário + Endereço Cobrança'                  then ImpimirRelatorioPadrao1(631, makesqlwhereetiqueta(_itproprietario))

      else if consulta = '488 - Inativos'                                                     then ImpimirRelatorioPadrao1(488, GetDtBanco(dti))
      else if consulta = '489 - Lista Cadastro'                                               then ImpimirRelatorioPadrao1(489, sqlwherelista)
      else if consulta = '113 - Clientes Inativos - Ordem Alfabética'                         then imprimir_relatorio(113, GetDtBanco(dti), sqlwhereinativo, dti, 0, 0, nil)
      else if consulta = '114 - Clientes Inativos - Por Município'                            then imprimir_relatorio(114, GetDtBanco(dti), sqlwhereinativo, dti, 0, 0, nil)
      else if consulta = 'Lista de Aniversariante do Contato'                                 then imprimiraniversariantecontato
      else if consulta = '493 - Lista de Aniversariante do Proprietário'                      then ImpimirRelatorioPadrao1(493, makesqlwhereproprietario(_i+'.'+_dtnascimento))
      else if consulta = '511 - Lista de Aniversariante por Data de Fundação'                 then ImpimirRelatorioPadrao1(511, makesqlwhereproprietario(_c+'.'+_dt+_fundacao))
      else if consulta = '671 - Lista de Atraso por dia de atraso'                            then ImpimirRelatorioPadrao1(671, '')
      else if consulta = '490 - Lista por Data Última Venda'                                  then ImpimirRelatorioPadrao1(490, sqlwhereultima)
      else if consulta = '492 - Lista por UF/Cidade'                                          then ImpimirRelatorioPadrao1(492, sqlwhereuf)
      else if consulta = '537 - Lista por UF/Cidade Endereço'                                 then ImpimirRelatorioPadrao1(537, sqlwhereuf)
      else if consulta = '491 - Lista por Volume/Atraso'                                      then ImpimirRelatorioPadrao1(491, sqlwherevolume)
      else if consulta = '494 - Lista Quantidade Cliente por Tipo de Mensalidade'             then ImpimirRelatorioPadrao1(494, sqlwherelista2)
      else if consulta = '495 - Lista Quantidade Cliente por Contrato'                        then ImpimirRelatorioPadrao1(495, sqlwherelista2)
      else if consulta = 'Gerar código reduzido'                                              then cliente.GerarCodigoReduzido
      else if consulta = 'Gerar código cnpj/cpf'                                              then cliente.GerarCodigoCNPJCPF
      else if consulta = 'Formatar CNPJ/CPF'                                                  then cliente.formatar_cnpj_cpf;
    finally
      TQForm.mudarcontroles(self, true);
    end;
  finally
    destruir_objetos;
  end;
end;

procedure TfrmConsultaCliente.trvChange(Sender: TObject; Node: TTreeNode);
var
  nopai, consulta : string;
  lista : TStrings;
  procedure setdata(edtdti, edtdtf: TCxDateEdit; lbl, lblate: TLabel;status:boolean);
  begin
    edtdti.Visible := status;
    edtdtf.Visible := status;
    lbl.Visible    := status;
    lblate.Visible := status;
  end;
  procedure setfalse;
  begin
    tbscliente.TabVisible       := False;
    tbsrepresentante.TabVisible := false;
    tbsuf.tabvisible            := False;
    tbsstcliente.TabVisible     := False;
    tbstpcliente.TabVisible     := False;
    tbsrmatividade.TabVisible   := False;
    tbsbairro.TabVisible        := False;
    tbsmunicipio.TabVisible     := False;

    setdata(edtdti          , edtdtf          , lbli           , lblf              , false);
    setdata(edtdtcadastroi  , edtdtcadastrof  , lbldtcadastro  , lbldtcadastroate  , false);
    setdata(edtdtnascimentoI, edtdtnascimentoF, lbldtnascimento, lbldtnascimentoate, false);
    setdata(edtdtemissaoI   , edtdtemissaoF   , lbldtemissao   , lbldtemissaoate   , false);
  end;
  procedure setactivepage;
  var
    i : integer;
  begin
    pgc.Visible := false;
    for i := 0 to pgc.PageCount - 1 do
    begin
      if pgc.Pages[i].TabVisible then
      begin
        pgc.Visible := true;
        pgc.ActivePage := pgc.Pages[i];
        break;
      end;
    end;
  end;
  procedure setcomponentes;
  var
    i : integer;
  begin
    setfalse;
    for i := 0 to lista.Count - 1 do
    begin
           if lista[i] = _data          then setdata(edtdti          , edtdtf          , lbli           , lblf              , true)
      else if lista[i] = _data+_inicial then setdata(edtdti          , edtdti          , lbli           , lbli              , True)
      else if lista[i] = _dtcadastro    then setdata(edtdtcadastroi  , edtdtcadastrof  , lbldtcadastro  , lbldtcadastroate  , true)
      else if lista[i] = _dtnascimento  then setdata(edtdtnascimentoI, edtdtnascimentoF, lbldtnascimento, lbldtnascimentoate, true)
      else if lista[i] = _dtemissao     then setdata(edtdtemissaoI   , edtdtemissaoF   , lbldtemissao   , lbldtemissaoate   , true)
      else if lista[i] = _cliente       then tbscliente.TabVisible       := true
      else if lista[i] = _representante then tbsrepresentante.TabVisible := true
      else if lista[i] = _uf            then tbsuf.tabvisible            := true
      else if lista[i] = _stcliente     then tbsstcliente.TabVisible     := true
      else if lista[i] = _tpcliente     then tbstpcliente.TabVisible     := true
      else if lista[i] = _rmatividade   then tbsrmatividade.TabVisible   := true
      else if lista[i] = _bairro        then tbsbairro.TabVisible        := true
      else if lista[i] = _municipio     then tbsmunicipio.TabVisible     := true;
    end;
    setactivepage;
  end;
begin
  lista := TStringList.Create;
  try
    consulta := node.text;
    if node.Level = 0 then
    begin
      exit;
    end;
    nopai := node.Parent.Text;
    if nopai = 'Exportar para Excel' then
    begin
      actGerar.Enabled := true;
      Exit;
    end;
         if consulta = 'Corrigir Número do Endereço'                                        then lista.Text := ' '
    else if consulta = '484 - Atraso (Analítico)'                                           then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '485 - Atraso (Sintético)'                                           then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '480 - Informações Financeiras'                                      then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '479 - Lista e-mail'                                                 then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '486 - Lista por UF'                                                 then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '476 - Lista por Valor Venda'                                        then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '483 - Número Clientes Afiliados'                                    then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '477 - Número Clientes Cadastrados'                                  then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '482 - Número Clientes Desfiliados'                                  then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '481 - Volume de Compra'                                             then lista.Text := _data+#13+_cliente+#13+_representante+#13+_municipio+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '668 - Etiqueta - Nome + Endereço Comercial'                         then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '625 - Etiqueta - Nome + Endereço Cobrança'                          then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '626 - Etiqueta - Razão Social + Endereço Cobrança'                  then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '640 - Etiqueta - Nome Fantasia + Razão Social + Endereço Cobrança'  then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '627 - Etiqueta - Razão Social + Endereço Comercial'                 then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '641 - Etiqueta - Nome Fantasia + Razão Social + Endereço Comercial' then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '628 - Etiqueta - Contato + Endereço Comercial'                      then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '629 - Etiqueta - Contato + Endereço Cobrança'                       then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '630 - Etiqueta - Proprietário + Endereço Comercial'                 then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '631 - Etiqueta - Proprietário + Endereço Cobrança'                  then lista.Text := _dtemissao+#13+_dtcadastro+#13+_dtnascimento+#13+_cliente+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '488 - Inativos'                                                     then lista.Text := _data+_inicial
    else if consulta = '489 - Lista Cadastro'                                               then lista.Text := _cliente+#13+_representante+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_rmatividade+#13+_bairro
    else if consulta = '113 - Clientes Inativos - Ordem Alfabética'                         then lista.Text := _data+_inicial+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = '114 - Clientes Inativos - Por Município'                            then lista.Text := _data+_inicial+#13+_representante+#13+_uf+#13+_tpcliente+#13+_stcliente+#13+_rmatividade+#13+_municipio+#13+_bairro
    else if consulta = 'Lista de Aniversariante do Contato'                                 then lista.Text := _data+_inicial+#13+_cliente+#13+_representante+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_bairro+#13+_rmatividade
    else if consulta = '493 - Lista de Aniversariante do Proprietário'                      then lista.Text := _data+#13+_cliente+#13+_representante+#13+_uf+#13+_stcliente
    else if consulta = '511 - Lista de Aniversariante por Data de Fundação'                 then lista.Text := _data+#13+_cliente+#13+_representante+#13+_uf+#13+_stcliente
    else if consulta = '671 - Lista de Atraso por dia de atraso'                            then lista.Text := ' '
    else if consulta = '490 - Lista por Data Última Venda'                                  then lista.Text := _representante+#13+_tpcliente
    else if consulta = '492 - Lista por UF/Cidade'                                          then lista.Text := _representante+#13+_uf+#13+_municipio
    else if consulta = '537 - Lista por UF/Cidade Endereço'                                 then lista.Text := _representante+#13+_uf+#13+_municipio
    else if consulta = '491 - Lista por Volume/Atraso'                                      then lista.Text := _data+#13+_representante+#13+_uf+#13+_municipio
    else if consulta = '494 - Lista Quantidade Cliente por Tipo de Mensalidade'             then lista.Text := _cliente+#13+_representante+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_rmatividade+#13+_bairro
    else if consulta = '495 - Lista Quantidade Cliente por Contrato'                        then lista.Text := _cliente+#13+_representante+#13+_uf+#13+_stcliente+#13+_tpcliente+#13+_rmatividade+#13+_bairro
    else if consulta = 'Gerar código reduzido'                                              then lista.Text := ' '
    else if consulta = 'Gerar código cnpj/cpf'                                              then lista.Text := ' '
    else if consulta = 'Formatar CNPJ/CPF'                                                  then lista.Text := ' ';
    actGerar.Enabled := lista.Text <> '';
  finally
    setcomponentes;
    freeandnil(lista);
  end;
  aplicarConfiguracaoEmpresa;
end;

procedure TfrmConsultaCliente.edtnmufChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cliente);
end;

procedure TfrmConsultaCliente.edtnmufKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvuf, executar_on_change_uf, tedit(sender), key);
end;

procedure TfrmConsultaCliente.edtnmrepresentanteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_representante);
end;

procedure TfrmConsultaCliente.edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvrepresentante, executar_on_change_representante, tedit(sender), key);
end;

procedure TfrmConsultaCliente.edtnmclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cliente);
end;

procedure TfrmConsultaCliente.edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcliente, executar_on_change_cliente, tedit(sender), key);
end;

procedure TfrmConsultaCliente.edtnucnpjcpfKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 119 then
  begin
    if (tpcodigo = 'Código') or (tpcodigo = 'CNPJ') then
    begin
      if tpcodigo = 'Código' then
      begin
        tpcodigo := 'CNPJ'
      end
      else if tpcodigo = 'CNPJ'   then
      begin
        tpcodigo := 'CPF';
      end;
      edtnucnpjcpf.Clear;
      edtnucnpjcpf.Enabled  := true;
      edtnucnpjcpf.Visible  := true;
      edtnucnpjcpf.EditMask := MascaraDocumento(tpcodigo);
      edtnucnpjcpf.SetFocus;
      edtcdcliente.Enabled  := false;
      edtcdcliente.visible  := false;
    end
    else if tpcodigo = 'CPF' then
    begin
      tpcodigo              := 'Código';
      edtcdcliente.Enabled  := true;
      edtcdcliente.visible  := true;
      edtcdcliente.SetFocus;
      edtnucnpjcpf.Enabled  := false;
      edtnucnpjcpf.Visible  := false;
    end;
    lblcdcliente.Caption := tpcodigo;
  end;
end;

procedure TfrmConsultaCliente.edtnucnpjcpfKeyPress(Sender: TObject; var Key: Char);
var
  ListItem: TListItem;
  cdcliente : string;
  i : integer;
begin
  if key = #13 then
  begin
    if tpcodigo = 'Código' then
    begin
      if not CodigoExiste(_cliente, edtcdcliente.text) then
      begin
        exit;
      end;
      cdcliente := edtcdcliente.text;
      edtcdcliente.Clear;
    end
    else
    begin
      cdcliente := CodigodoCampo(_cliente, edtnucnpjcpf.Text, 'nu'+tpcodigo);
    end;
    if cdcliente <> '' then
    begin
      tpcodigo := 'Código';
      lblcdcliente.Caption := tpcodigo;
      edtcdcliente.Enabled := true;
      edtcdcliente.Visible := true;
      edtcdcliente.SetFocus;
      //
      edtnucnpjcpf.Enabled := false;
      edtnucnpjcpf.Visible := false;
      //
      for i := 0 to lsvcliente.Items.Count - 1 do
      begin
        if lsvcliente.Items.Item[i].Caption = cdcliente then
        begin
          exit;
        end;
      end;
      ListItem := lsvcliente.Items.Add;
      ListItem.Caption := cdcliente;
      ListItem.SubItems.Add(NomedoCodigo(_cliente, cdcliente));
    end;
  end;
end;

procedure TfrmConsultaCliente.edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvrepresentante, TEdit(sender), key);
end;

procedure TfrmConsultaCliente.edtcdufKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvuf, TEdit(sender), key);
end;

procedure TfrmConsultaCliente.ToolButton4Click(Sender: TObject);
begin
  AdicionarListView(lsvstcliente);
end;

procedure TfrmConsultaCliente.ToolButton5Click(Sender: TObject);
begin
  ExcluirListView(lsvstcliente);
end;

procedure TfrmConsultaCliente.ToolButton7Click(Sender: TObject);
begin
  lsvstcliente.Clear;
end;

procedure TfrmConsultaCliente.edtcdstclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstcliente, TEdit(sender), key);
end;

procedure TfrmConsultaCliente.edtnmstclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stcliente);
end;

procedure TfrmConsultaCliente.edtnmstclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstcliente, executar_on_change_stcliente, tedit(sender), key);
end;

procedure TfrmConsultaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsultaCliente.ToolButton13Click(Sender: TObject);
begin
  AdicionarListView(lsvtpcliente);
end;

procedure TfrmConsultaCliente.ToolButton14Click(Sender: TObject);
begin
  ExcluirListView(lsvtpcliente);
end;

procedure TfrmConsultaCliente.ToolButton16Click(Sender: TObject);
begin
  lsvtpcliente.Clear;
end;

procedure TfrmConsultaCliente.edtcdtpclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpcliente, TEdit(sender), key);
end;

procedure TfrmConsultaCliente.edtnmtpclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpcliente);
end;

procedure TfrmConsultaCliente.edtnmtpclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpcliente, executar_on_change_tpcliente, tedit(sender), key);
end;

procedure TfrmConsultaCliente.ToolButton17Click(Sender: TObject);
begin
  AdicionarListView(lsvrmatividade);
end;

procedure TfrmConsultaCliente.ToolButton18Click(Sender: TObject);
begin
  ExcluirListView(lsvrmatividade);
end;

procedure TfrmConsultaCliente.ToolButton20Click(Sender: TObject);
begin
  lsvrmatividade.Clear;
end;

procedure TfrmConsultaCliente.edtcdtmatividadeKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvrmatividade, TEdit(sender), key);
end;

procedure TfrmConsultaCliente.edtnmrmatividadeChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_rmatividade);
end;

procedure TfrmConsultaCliente.edtnmrmatividadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvrmatividade, executar_on_change_rmatividade, tedit(sender), key);
end;

procedure TfrmConsultaCliente.ToolButton32Click(Sender: TObject);
begin
  ExcluirListView(lsvnmbairro);
end;

procedure TfrmConsultaCliente.ToolButton33Click(Sender: TObject);
begin
  lsvnmbairro.Clear;
end;

procedure TfrmConsultaCliente.edtnmbairroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvnmbairro, executar_on_change_bairro, tedit(sender), key);
end;

procedure TfrmConsultaCliente.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmConsultaCliente.FormDestroy(Sender: TObject);
begin
  cliente.destroy;
end;

procedure TfrmConsultaCliente.edtcdmunicipioKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvmunicipio, TEdit(sender), key);
end;

procedure TfrmConsultaCliente.edtnmmunicipioChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_municipio);
end;

procedure TfrmConsultaCliente.edtnmmunicipioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvmunicipio, executar_on_change_municipio, tedit(sender), key);
end;

procedure TfrmConsultaCliente.ToolButton35Click(Sender: TObject);
begin
  AdicionarListView(lsvmunicipio);
end;

procedure TfrmConsultaCliente.ToolButton36Click(Sender: TObject);
begin
  ExcluirListView(lsvmunicipio);
end;

procedure TfrmConsultaCliente.ToolButton38Click(Sender: TObject);
begin
  lsvmunicipio.Clear;
end;

procedure TfrmConsultaCliente.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcliente, TEdit(sender), key);
end;

procedure TfrmConsultaCliente.FormCreate(Sender: TObject);
begin
  set_treeview;
end;

procedure TfrmConsultaCliente.set_treeview;
var
  no1 : TTreeNode;
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
  trv.Items.AddChild(no1, '484 - Atraso (Analítico)');
  trv.Items.AddChild(no1, '485 - Atraso (Sintético)');
  trv.Items.AddChild(no1, '113 - Clientes Inativos - Ordem Alfabética');
  trv.Items.AddChild(no1, '114 - Clientes Inativos - Por Município');
  trv.Items.AddChild(no1, '629 - Etiqueta - Contato + Endereço Cobrança');
  trv.Items.AddChild(no1, '628 - Etiqueta - Contato + Endereço Comercial');
  trv.Items.AddChild(no1, '625 - Etiqueta - Nome + Endereço Cobrança');
  trv.Items.AddChild(no1, '668 - Etiqueta - Nome + Endereço Comercial');
  trv.Items.AddChild(no1, '640 - Etiqueta - Nome Fantasia + Razão Social + Endereço Cobrança');
  trv.Items.AddChild(no1, '641 - Etiqueta - Nome Fantasia + Razão Social + Endereço Comercial');
  trv.Items.AddChild(no1, '631 - Etiqueta - Proprietário + Endereço Cobrança');
  trv.Items.AddChild(no1, '630 - Etiqueta - Proprietário + Endereço Comercial');
  trv.Items.AddChild(no1, '626 - Etiqueta - Razão Social + Endereço Cobrança');
  trv.Items.AddChild(no1, '627 - Etiqueta - Razão Social + Endereço Comercial');
  trv.Items.AddChild(no1, '488 - Inativos');
  trv.Items.AddChild(no1, '480 - Informações Financeiras');
  trv.Items.AddChild(no1, '489 - Lista Cadastro');
  trv.Items.AddChild(no1, 'Lista de Aniversariante do Contato');
  trv.Items.AddChild(no1, '493 - Lista de Aniversariante do Proprietário');
  trv.Items.AddChild(no1, '511 - Lista de Aniversariante por Data de Fundação');
  trv.Items.AddChild(no1, '671 - Lista de Atraso por dia de atraso');
  trv.Items.AddChild(no1, '479 - Lista e-mail');
  trv.Items.AddChild(no1, '490 - Lista por Data Última Venda');
  trv.Items.AddChild(no1, '492 - Lista por UF/Cidade');
  trv.Items.AddChild(no1, '537 - Lista por UF/Cidade Endereço');
  trv.Items.AddChild(no1, '486 - Lista por UF');
  trv.Items.AddChild(no1, '476 - Lista por Valor Venda');
  trv.Items.AddChild(no1, '491 - Lista por Volume/Atraso');
  trv.Items.AddChild(no1, '495 - Lista Quantidade Cliente por Contrato');
  trv.Items.AddChild(no1, '494 - Lista Quantidade Cliente por Tipo de Mensalidade');
  trv.Items.AddChild(no1, '483 - Número Clientes Afiliados');
  trv.Items.AddChild(no1, '477 - Número Clientes Cadastrados');
  trv.Items.AddChild(no1, '482 - Número Clientes Desfiliados');
  trv.Items.AddChild(no1, '481 - Volume de Compra');
  no1 := trv.Items.AddChild(nil, Maiuscula(__Funcao));
  trv.Items.AddChild(no1, 'Corrigir Número do Endereço');
  trv.Items.AddChild(no1, 'Gerar código reduzido');
  trv.Items.AddChild(no1, 'Gerar código cnpj/cpf');
  trv.Items.AddChild(no1, 'Formatar CNPJ/CPF');
end;

end.

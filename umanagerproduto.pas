unit umanagerproduto;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, ActnList, ImgList, Controls, Classes, ComCtrls, ToolWin,
  StdCtrls, Math, graphics, windows, sysutils, types, dialogs, ExtCtrls,
  DB,
  FireDAC.Comp.Client,
  udatahora, umontarsql, uprogressbar, uconstantes, urotinas,
  ustrings, ulocalizar, uregistroib, uregistro,
  classeusuario, classeretornasql, classeform, classegerar, classeexecutasql,
  classeRegistro, classeregistrainformacao, classeproduto, classeempresa,
  classeaplicacao, classequery,
  cxPC, cxControls, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxCurrencyEdit, cxSplitter, cxContainer, cxTreeView, cxCalendar,
  cxBarEditItem, cxGridChartView, cxGridDBChartView, cxCheckBox,
  cxDBLookupComboBox, cxPCdxBarPopupMenu, cxCalc, cxBlobEdit, cxSpinEdit,
  cxNavigator, cxTextEdit;

type
  TfrmManagerproduto = class(TForm)
    act: TActionList;
    pnl: TPanel;
    Panel1: TPanel;
    actatualizar: TAction;
    pum: TPopupMenu;
    actnovo: TAction;
    Novo1: TMenuItem;
    actexcluir: TAction;
    Excluir1: TMenuItem;
    actabrirproduto: TAction;
    actfechar: TAction;
    actrenomear: TAction;
    Renomear2: TMenuItem;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnNovo: TdxBarLargeButton;
    dxbrlrgbtnexcluir: TdxBarLargeButton;
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dtsproduto: TDataSource;
    spl1: TcxSplitter;
    trv: TcxTreeView;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    pm1: TdxBarPopupMenu;
    actexportarpdv: TAction;
    ExportarPDV1: TMenuItem;
    Actviewgroup: TAction;
    actfiltro: TAction;
    actaplicarconfiguracaogrupo: TAction;
    AplicarConfiguraoaosgruposfilhos1: TMenuItem;
    actaplicarconfiguracaoproduto: TAction;
    AplicarconfiguraoProduto1: TMenuItem;
    actaplicarconfiguracaoprodutogrupo: TAction;
    Aplicarconfiguraoaosprodutosdestegrupo1: TMenuItem;
    actnovoproduto: TAction;
    NovoProduto1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    actlocalizarproduto: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    actmetodoprocesso: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    bmg1Bar2: TdxBar;
    dxBarDockControl2: TdxBarDockControl;
    btnviewgroup: TdxBarButton;
    btnfiltro: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    actzerarestoque: TAction;
    actzerarestoquesubgrupo: TAction;
    ZerarEstoque1: TMenuItem;
    ZerarEstoquedesubgrupos1: TMenuItem;
    dxBarButton7: TdxBarButton;
    actexcel: TAction;
    dxBarButton8: TdxBarButton;
    actgrupopropriedade: TAction;
    Propriedade1: TMenuItem;
    tbvCDPRODUTO: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvBOATIVAR: TcxGridDBColumn;
    tbvCDUNIDADE: TcxGridDBColumn;
    tbvCDTPPRODUTO: TcxGridDBColumn;
    tbvCDALTERNATIVO: TcxGridDBColumn;
    tbvQTESTOQUE: TcxGridDBColumn;
    tbvQTESTMIN: TcxGridDBColumn;
    tbvQTESTMAX: TcxGridDBColumn;
    tbvVLVENDA: TcxGridDBColumn;
    tbvVLCUSTO: TcxGridDBColumn;
    tbvVLATACADO: TcxGridDBColumn;
    tbvVLESPECIAL: TcxGridDBColumn;
    tbvCDTPITEM: TcxGridDBColumn;
    tbvNUCLFISCAL: TcxGridDBColumn;
    tbvCDORIGEM: TcxGridDBColumn;
    tbvNUSTICMS: TcxGridDBColumn;
    tbvPSLIQUIDO: TcxGridDBColumn;
    tbvPSBRUTO: TcxGridDBColumn;
    tbvQTPOLEGADA: TcxGridDBColumn;
    tbvQTESPESSURA: TcxGridDBColumn;
    tbvQTLARGURA: TcxGridDBColumn;
    tbvQTCOMPRIMENTO: TcxGridDBColumn;
    tbvCDMATERIAL: TcxGridDBColumn;
    tbvCDNORMA: TcxGridDBColumn;
    tbvCDFORMA: TcxGridDBColumn;
    tbvDSTAG1: TcxGridDBColumn;
    tbvDSTAG2: TcxGridDBColumn;
    tbvVLCUSTOMEDIO: TcxGridDBColumn;
    actgrupotpcliente: TAction;
    ipoCliente1: TMenuItem;
    procedure trvClick(Sender: TObject);
    procedure trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure trvDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure actatualizarExecute(Sender: TObject);
    procedure actnovoExecute(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pumPopup(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actrenomearExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actexportarpdvExecute(Sender: TObject);
    procedure ActviewgroupExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actaplicarconfiguracaogrupoExecute(Sender: TObject);
    procedure actaplicarconfiguracaoprodutoExecute(Sender: TObject);
    procedure actaplicarconfiguracaoprodutogrupoExecute(Sender: TObject);
    procedure actnovoprodutoExecute(Sender: TObject);
    procedure actlocalizarprodutoExecute(Sender: TObject);
    procedure actmetodoprocessoExecute(Sender: TObject);
    procedure actzerarestoqueExecute(Sender: TObject);
    procedure actzerarestoquesubgrupoExecute(Sender: TObject);
    procedure ExportargradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actexcelExecute(Sender: TObject);
    procedure actgrupopropriedadeExecute(Sender: TObject);
    procedure qryprodutoAfterScroll(DataSet: TDataSet);
    procedure qryprodutoBeforePost(DataSet: TDataSet);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actgrupotpclienteExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private    { Private declarations }
    tbl : string;
    posicao : array of integer;
    tamanho : array of integer;
    produto : tproduto;
    registro : tregistro;
    exibe : string;
    boqtproduto : boolean;
    boqtestoque : boolean;
    qryproduto : TFDQuery;
    function  Atualizar:boolean;
    function  nivelregistro(no: ttreenode):integer;
    function  NivelTabela(nunivel, nome:string; nivel:integer):string;
    function  qtproduto(texto: string; cdgrupo:integer):string;
    function  InserirRegistro(nome:string; cdpai:string=''):string;
    function  ExcluirRegistro(codigo:string):boolean;
    function  GetNunivel(cdpai:string):string;
    procedure AtualizarExibicaoTreeView(tree: TTreeNode);
    procedure setacao;
    procedure set_posicionar_produto(codigo:integer);
    procedure zerar_estoque(tp:string);
    procedure AbrirTabelas;
  public     { Public declarations }
  end;

var
  frmManagerproduto: TfrmManagerproduto;

implementation

uses uDtmMain,
  uExportarExcel,
  ugrupo,
  uMain,
  udlgaplicarconfiguracaogrupo,
  uNovoProduto,
  ulocalizarproduto,
  udlgmetodoprocesso,
  udlgtabela, classemovto;

{$R *.DFM}

procedure TfrmManagerproduto.AtualizarExibicaoTreeView(Tree:TTreeNode);
var
  cdgrupo: Integer;
  texto: string;
begin
  cdgrupo   := nivelregistro(Tree);
  texto     := NivelTabela(nomedocodigo(tbl, IntToStr(cdgrupo), _nunivel), nomedocodigo(tbl, IntToStr(cdgrupo)), tree.Level - 1);
  tree.Text := qtproduto(texto, cdgrupo);
end;

function TfrmManagerproduto.ExcluirRegistro(codigo:string):boolean;
begin
  result := ExecutaSQL(Format('delete from %s where cdempresa='+empresa.cdempresa.tostring+' and cd%s=%s', [tbl, tbl, codigo]));
end;

function TfrmManagerproduto.GetNunivel(cdpai:string):string;
  function UltimoNumero(nu:string; p, t:integer):string;
    function makesql:string;
    begin
      result := Format('select nunivel from %s where cdempresa='+empresa.cdempresa.tostring+' and cd%spai ', [tbl, tbl]);
      if cdpai <> '' then
      begin
        result := result + '=' + cdpai
      end
      else
      begin
        result := result + 'is null';
      end;
      result := result +' order by nunivel';
    end;
  var
    i : integer;
    s : TClasseQuery;
    nivel : Integer;
  begin
    if nu = '' then
    begin
      nu := _0;
    end;
    result := copy    (nu, p, t);
    i      := strtoint(result) + 1;
    result := inttostr(i);
    if length(result) > t then
    begin
      if result = '' then
      begin
        result := Format('Número máximo de %s atingido!', [exibe]);
        exit;
      end
      else
      begin
        s := TClasseQuery.Create(makesql);
        try
          nivel := StrToInt(removercaracteres(s.q.fieldbyname(_nunivel).asstring));
          while not s.q.Eof do
          begin
            if nivel <> StrToInt(removercaracteres(s.q.fieldbyname(_nunivel).asstring)) then
            begin
              result := FormatarTextoEsquerda(IntToStr(nivel), t, _0);
              Break;
            end;
            Inc(nivel);
            s.q.Next;
          end;
        finally
          FreeAndNil(s);
        end;
      end;
    end;
    result := FormatarTextoEsquerda(result, t, _0);
  end;
  function makesql:string;
  begin
    result := Format('select max(nunivel) from %s where cdempresa='+empresa.cdempresa.tostring+' and cd%spai ', [tbl, tbl]);
    if cdpai <> '' then
    begin
      Result := result + '=' + cdpai
    end
    else
    begin
      result := result + 'is null';
    end;
  end;
var
  i : integer;
begin
  result := RetornaSQlString(makesql);
  if cdpai <> '' then
  begin
    if result <> '' then
    begin
      for i := 1 to high(posicao) do
      begin
        if length(result) = posicao[i] + tamanho[i] - 1 then
        begin
          result := copy(result, 1, posicao[i] - 1) + ultimonumero(result, posicao[i], tamanho[i]);
        end;
      end;
    end
    else
    begin // determina o nível em que se encontra para iniciar uma nova numeração
      result := nomedocodigo(tbl, cdpai, _nunivel);
      for i := 0 to high(posicao) do
      begin
        if length(result) = posicao[i] + tamanho[i] - 1 then
        begin
          if i + 1 > high(posicao) then
          begin
            result := 'Número máximo de níveis atingido!'
          end
          else
          begin
            result := result+'.'+FormatarTextoEsquerda(_1, tamanho[i+1], _0);
          end;
          break;
        end;
      end;
    end;
  end
  else
  begin
    result := ultimonumero(result, posicao[0], tamanho[0]);
  end;
end;

function TfrmManagerproduto.InserirRegistro(nome:string; cdpai:string=''):string;
var
  codigo : string;
  x, i : integer;
  cd, co : TClasseQuery;
begin
  if cdpai = _0 then
  begin
    cdpai := '';
  end;
  cd:= TClasseQuery.Create(QRetornaSQL.get_select_from(tbl, _0), true);
  co:= TClasseQuery.Create(QRetornaSQL.get_select_from(tbl, cdpai));
  try
    codigo := GerarCodigo(tbl);
    cd.q.Open;
    cd.q.Insert;
    cd.q.fieldbyname(_cd+tbl).asstring := codigo;
    cd.q.FieldByName(_nm+tbl).AsString := nome;
    if cdpai <> '' then
    begin
      co.q.Open;
      for i := 0 to cd.q.Fields.Count - 1 do
      begin
        if (cd.q.fields[i].FieldName = uppercase(_CD+tbl)) or (cd.q.fields[i].FieldName = uppercase(_NM+tbl)) or (cd.q.fields[i].FieldName = uppercase(_NUNIVEL)) then
        begin
          continue;
        end;
        if cd.q.fields[i].FieldName = uppercase(_CDITEM) then
        begin
          cd.q.fields[i].AsInteger := 0;
          continue;
        end;
        for x := 0 to co.q.Fields.Count - 1 do
        begin
          if (cd.q.Fields[i].FieldName = co.q.Fields[x].FieldName) then
          begin
            if not co.q.Fields[x].IsNull then
            begin
              qregistro.set_field_type_assign(co.q, cd.q, x, i) //; cd.q.Fields[i].AsVariant := co.q.Fields[x].AsVariant
            end
            else if Copy(co.q.Fields[x].FieldName, 1, 2) = UpperCase(_bo) then
            begin
              cd.q.Fields[i].AsString  := _N;
            end;
          end;
        end;
      end;
      cd.q.fieldbyname(_cd+tbl+_pai).AsString := cdpai;
    end
    else if tbl = _grupo then
    begin
      cd.q.fieldbyname(_cditem).AsInteger     := 0;
      cd.q.fieldbyname(_bo+_produto).Asstring := _s;
    end;
    RegistraInformacao_(cd.q);
    cd.q.FieldByName(_nunivel).asstring := getnunivel(cdpai);
    aplicacao.aplyupdates(cd.q);
    result := codigo;
  finally
    FreeAndNil(cd);
    FreeAndNil(co);
  end;
end;

procedure TfrmManagerproduto.qryprodutoAfterScroll(DataSet: TDataSet);
begin
  actmetodoprocesso.Visible := qryproduto.FieldByName(_bO+_METODO+_PROCESSO).AsString = _S;
end;

procedure TfrmManagerproduto.qryprodutoBeforePost(DataSet: TDataSet);
begin
  if (dataset.fieldbyname(_nmproduto).OldValue <> dataset.fieldbyname(_nmproduto).asstring) and
     (messagedlg('Deseja realmente alterar o nome do produto de '#13+
                  dataset.fieldbyname(_nmproduto).OldValue+#13+
                  'para'+#13+
                  dataset.fieldbyname(_nmproduto).asstring+'?', mtconfirmation, [mbyes, mbno], 0) = mrno) then
  begin
    abort;
  end;
  registro.set_update(DataSet);
end;

function TfrmManagerproduto.qtproduto(texto: string; cdgrupo:integer):string;
var
  qtestoque, qtprodutos, sql : string;
begin
  qtprodutos := _0;
  if boqtproduto then
  begin
    sql := 'select count(*) from produto where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+' ';
    if cdgrupo = 0 then
    begin
      sql := sql + 'is null'
    end
    else
    begin
      sql := sql + '='+inttostr(cdgrupo);
    end;
    qtprodutos := RetornaSQlString(sql);
  end;
  if boqtestoque then
  begin
    sql := 'select sum(qtestoque) from produto where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+' ';
    if cdgrupo = 0 then
    begin
      sql := sql + 'is null'
    end
    else
    begin
      sql := sql + '='+inttostr(cdgrupo);
    end;
    qtestoque := FormatFloat(__moedadec3, RetornaSQLCurrency(sql));
  end;

  result := texto;
  if qtprodutos <> _0 then
  begin
    result := result +' ('+qtprodutos+'-'+qtestoque+')'
  end;
end;

function TfrmManagerproduto.NivelTabela(nunivel, nome:string; nivel:integer):string;
begin
  result := copy(nunivel, posicao[nivel], tamanho[nivel]) + ' - '+nome;
end;

function TfrmManagerproduto.Atualizar:boolean;
  function makesql(sqlwhere:string):string;
  begin
    result := Format('select g.cdgrupo'+
                           ',g.nmgrupo'+
                           ',g.nunivel'+
                           ',g.cdgrupopai'+
                           ',count(p.cdproduto) qtproduto'+
                           ',sum(p.qtestoque) qtestoque '+
                     'from grupo g '+
                     'left join produto p on p.cdgrupo=g.cdgrupo and g.cdempresa=p.cdempresa %s '+
                     'group by g.nunivel,g.nmgrupo,g.cdgrupo,g.cdgrupopai', [sqlwhere]);
  end;
  procedure AdicionarProximoNivel(no:TTreeNode; nivel:integer; cdgrupo:string);
  var
    q : TClasseQuery;
    no2 : TTreeNode;
    texto : string;
  begin
    q := TClasseQuery.create;
    try
      if tbl = _grupo then
      begin
        q.q.sql.text := makesql('where g.cdempresa='+empresa.cdempresa.tostring+' and cdgrupopai='+cdgrupo);
      end;
      q.q.Open;
      while not q.q.eof do
      begin
        texto := niveltabela(q.q.fields[2].asstring, q.q.fields[1].asstring, nivel);
        if q.q.fieldbyname(_qtproduto).asinteger > 0 then
        begin
          no2 := trv.Items.AddChild(no, texto +' ('+q.q.fieldbyname(_qtproduto).asstring+' - '+q.q.fieldbyname(_qtestoque).asstring+')')
        end
        else
        begin
          no2 := trv.Items.AddChild(no, texto);
        end;
        AdicionarProximoNivel(no2, nivel + 1, q.q.fieldbyname(_cd+tbl).asstring);
        q.q.next;
      end;
    finally
      freeandnil(q);
    end;
  end;
var
  q : TClasseQuery;
  no : TTreeNode;
  function nome_grupo_treeview:string;
  begin
    result := q.q.fieldbyname(_nunivel).asstring+' - '+q.q.fieldbyname(_nmgrupo).asstring;
    if q.q.fieldbyname(_qtproduto).AsInteger > 0 then
    begin
      result := result + ' (' + q.q.fieldbyname(_qtproduto).AsString+ ' - '+q.q.fieldbyname(_qtestoque).AsString+')';
    end;
  end;
begin
  qryproduto.Close;
  trv.items.Clear;
  trv.Items.Add(nil, qtproduto(exibe, 0));
  trv.Items[0];
  q := TClasseQuery.create(makesql('where g.cdempresa='+empresa.cdempresa.tostring+' and cdgrupopai is null'));
  try
    q.q.Open;
    while not q.q.eof do
    begin
      no := trv.Items.AddChild(trv.Items[0], nome_grupo_treeview);
      adicionarproximonivel(no, 1, q.q.fieldbyname(_cd+tbl).AsString);
      q.q.next;
    end;
    result := true;
  finally
    freeandnil(q);
  end;
end;

function TfrmManagerproduto.nivelregistro(no:ttreenode):integer;
  function adicionarproximonivel(no2:ttreenode):string;
  var
    nunivel:string;
  begin
    nunivel := no2.Text;
    nunivel := copy(nunivel, 1, pos('-', nunivel) -2);
    if no2.Level <= 1 then
    begin
      result := nunivel
    end
    else
    begin
      result := adicionarproximonivel(no2.Parent)+'.'+nunivel;
    end;
  end;
begin
  result := qregistro.CodigodoString(tbl, adicionarproximonivel(no), _nunivel);
end;

procedure TfrmManagerproduto.trvClick(Sender: TObject);
var
  codigo : integer;
  function get_cdgrupo:string;
  begin
    if codigo = 0 then
    begin
      result := ' is null'
    end
    else
    begin
      result := '='+inttostr(codigo);
    end;
  end;
begin
  if (tbl <> _grupo) or (trv.Selected = nil) then
  begin
    exit;
  end;
  codigo := nivelregistro(trv.selected);
  if (qryproduto.Active) and (qryproduto.fieldbyname(_cdgrupo).AsInteger = codigo) then
  begin
    exit;
  end;
  qryproduto.Close;
  qryproduto.sql.Text := 'SELECT P.*'+
                               ',T.BOMETODOPROCESSO '+
                         'FROM PRODUTO P '+
                         'LEFT JOIN TPPRODUTO T ON T.CDEMPRESA=P.CDEMPRESA AND T.CDTPPRODUTO=P.CDTPPRODUTO '+
                         'WHERE p.cdempresa='+empresa.cdempresa.tostring+' and P.CDGRUPO'+get_cdgrupo;
  qryproduto.AfterScroll := nil;
  qryproduto.Open;
  qryproduto.AfterScroll := qryprodutoAfterScroll;
  qryprodutoAfterScroll(qryproduto);
end;

procedure TfrmManagerproduto.trvDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := true;
end;

procedure TfrmManagerproduto.trvDragDrop(Sender, Source: TObject; X, Y: Integer);
  function AlterargrupoProduto(cdgrupo:integer):boolean;
  var
    codigo, cditem : string;
    posregistro, cont, i, z : integer;
  begin
    result         := false;
    cditem         := NomedoCodigo(_grupo, IntToStr(cdgrupo), _cditem);
    if cditem = '' then
    begin
      cditem := _0;
    end;
    cont           := tbv.ViewData.RecordCount;
    posregistro    := qryproduto.recno;
    frmprogressbar := Tfrmprogressbar.Create(nil);
    try
      frmprogressbar.gau.MaxValue := cont;
      frmprogressbar.Show;
      for i := 0 to cont - 1  do
      begin
        frmprogressbar.PNL.Caption  := 'Registro '+inttostr(i)+' de '+inttostr(cont);
        frmprogressbar.gau.Progress := i;
        Application.ProcessMessages;
        if tbv.ViewData.Records[i].Selected then
        begin
          for z := 0 to tbv.ColumnCount - 1 do
          begin
            if LowerCase(tbv.Columns[Z].DataBinding.FieldName) = _cdproduto then
            begin
              codigo := tbv.ViewData.Records[i].Values[Z];// tvw.Columns[x].DataBinding.Field.AsVariant;
              Break;
            end;
          end;
          cditem  := inttostr(strtoint(cditem)+1);
          ExecutaSQL('update produto '+
                     'set cdgrupo='+inttostr(cdgrupo)+',cditem='+cditem+',nunivel='+quotedstr(NomedoCodigo(_grupo, IntToStr(cdgrupo), _nunivel))+' '+
                     'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+codigo);
          ExecutaSQL('update grupo set cditem='+cditem+' where cdempresa='+empresa.cdempresa.tostring+' and cdgrupo='+inttostr(cdgrupo));
          tbv.ViewData.Records[i].Selected := false;
          result := true;
        end;
      end;
    finally
      FreeAndNil(frmprogressbar);
    end;
    if not result then
    begin
      qryproduto.RecNo := posregistro;
      ExecutaSQL('update produto '+
                 'set cdgrupo='+inttostr(cdgrupo)+',cditem='+cditem+',nunivel='+quotedstr(NomedoCodigo(_grupo, IntToStr(cdgrupo), _nunivel))+' '+
                 'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+qryproduto.fieldbyname(_cdproduto).asstring);
      ExecutaSQL('update grupo set cditem='+cditem+' where cdempresa='+empresa.cdempresa.tostring+' and cdgrupo='+inttostr(cdgrupo));
      result := true;
    end;
  end;
var
  texto: string;
  cdgrupoorigem, cdgrupo : integer;
begin
  if trv.DropTarget.Level < 1 then  // aceita somente o nível tres
  begin
    exit;
  end;
  // obtem o código do grupo de destino
  cdgrupo := nivelregistro(trv.DropTarget);
  if cdgrupo = 0 then
  begin
    exit;
  end;
  if not BooleandoCodigo(_grupo, IntToStr(cdgrupo), _boproduto) then
  begin
    MessageDlg('Este grupo não permite adicionar produto(s) nele.', mtInformation, [mbOK], 0);
    Exit;
  end;
  cdgrupoorigem := qryproduto.fieldbyname(_cd+tbl).asinteger;
  AlterargrupoProduto(cdgrupo); // altera o codigo do grupo e número do item no produto
  qryproduto.Refresh;
  // atualizar contador de origem do grupo
  if cdgrupoorigem = 0 then
  begin
    texto := exibe
  end
  else
  begin
    texto := NivelTabela(nomedocodigo(tbl, IntToStr(cdgrupoorigem), _nunivel), nomedocodigo(tbl, IntToStr(cdgrupoorigem)), trv.Selected.Level - 1);
  end;
  trv.Selected.Text := qtproduto(texto, cdgrupoorigem);
  // atualizar contador de destino do grupo
  AtualizarExibicaoTreeView(trv.DropTarget);
  Refresh;
end;

procedure TfrmManagerproduto.actatualizarExecute(Sender: TObject);
begin
  atualizar;
end;

procedure TfrmManagerproduto.actnovoExecute(Sender: TObject);
var
  texto, nome : string;
  codigo : Integer;
begin
  nome := Trim(RetiraAcentos(uppercase(inputbox('Nome do '+exibe, 'Digite o nome do '+exibe, ''))));
  if nome = '' then
  begin
    exit;
  end;
  if trv.Selected.Level = 0 then
  begin
    codigo := 0
  end
  else
  begin
    codigo := nivelregistro(trv.selected);
  end;
  codigo := StrToInt(InserirRegistro(nome, IntToStr(codigo)));
  texto  := NivelTabela(nomedocodigo(tbl, IntToStr(codigo), _nunivel), nomedocodigo(tbl, IntToStr(codigo)), trv.Selected.Level);
  trv.Items.AddChild(trv.Selected, qtproduto(texto, codigo));
  refresh;
end;

procedure TfrmManagerproduto.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmManagerproduto.actexcluirExecute(Sender: TObject);
var
  nome : string;
  codigo : Integer;
begin
  codigo := nivelregistro(trv.selected);
  if not excluirRegistro(IntToStr(codigo)) then
  begin
    nome := nomedocodigo(tbl, IntToStr(codigo));
    messagedlg('Não foi possível excluir o '+exibe+' '+IntToStr(codigo)+' - '+nome, mtinformation, [mbok], 0);
    exit;
  end;
  trv.Items.Delete(trv.Selected);
end;

procedure TfrmManagerproduto.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmManagerproduto.trvChange(Sender: TObject; Node: TTreeNode);
begin
  setacao;
  trvClick(sender);
  if Node.Level = 1 then
  begin
    pnl.caption := 'Gerenciador de Produto\'+node.Text
  end;
  if Node.Level = 2 then
  begin
    pnl.caption := 'Gerenciador de Produto\'+node.Parent.Text+'\'+node.Text
  end;
  if Node.Level = 3 then
  begin
    pnl.caption := 'Gerenciador de Produto\'+node.Parent.Parent.Text+'\'+node.Parent.Text+'\'+node.Text
  end;
  if Node.Level = 4 then
  begin
    pnl.caption := 'Gerenciador de Produto\'+node.Parent.Parent.Parent.Text+'\'+node.Parent.Parent.Text+'\'+node.Parent.Text+'\'+node.Text
  end;
end;

procedure TfrmManagerproduto.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qryproduto, qryproduto);
end;

procedure TfrmManagerproduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmManagerproduto.pumPopup(Sender: TObject);
begin
  setacao;
end;

procedure TfrmManagerproduto.FormDestroy(Sender: TObject);
begin
  freeandnil(qryproduto);
  freeandnil(produto);
  freeandnil(registro);
end;

procedure TfrmManagerproduto.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual('manager'+tbl, frmmain.tlbnew);
end;

procedure TfrmManagerproduto.setacao;
begin
  actnovo.Visible     := not (trv.selected.level = high(posicao)+1);
  actexcluir.Visible  := not (trv.selected.level = 0);
  actrenomear.Visible := actexcluir.Visible;
end;

procedure TfrmManagerproduto.actrenomearExecute(Sender: TObject);
var
  nome : string;
  codigo : integer;
begin
  codigo := nivelregistro(trv.selected);
  nome   := InputBox('Renomear', 'Digite o novo nome', nomedocodigo(tbl, IntToStr(codigo)));
  if nome <> '' then
  begin
    nome := uppercase(RetiraAcentos(nome));
    ExecutaSQL('update '+tbl+' set nm'+tbl+'='+quotedstr(nome)+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+inttostr(codigo));
    trv.Selected.Text := copy(trv.Selected.Text, 1, pos('-', trv.Selected.Text) - 2) + ' - '+nome;
  end;
end;

procedure TfrmManagerproduto.FormShow(Sender: TObject);
begin
  registro              := tregistro.create(self, _produto, _produto, _o, qryproduto, dtsproduto, nil, false);
  registro.set_grade_item(self, true);
  tbvQTESTOQUE.Options.Editing := false;
  produto               := tproduto.create;
  tbl                   := _grupo;
  exibe                 := maiuscula(_Grupo);
  pnl.Caption           := exibe;
  setlength(posicao, empresa.get_ponto_maskara(_grupo));
  setlength(tamanho, empresa.get_ponto_maskara(_grupo));
  empresa.set_ponto_maskara(_grupo, posicao, tamanho);
  boqtproduto := true;
  boqtestoque := true;
  actatualizarExecute(self);
  actexportarpdv.Visible := Empresa.livro.bopdv;
end;

procedure TfrmManagerproduto.actexportarpdvExecute(Sender: TObject);
var
  cdgrupo, sql : tstrings;
  texto : string;
begin
  if trv.selected.Level = 0 then
  begin
    MessageDlg('O nível raiz não pode ser sincronizado para o PDV.'#13'Selecione um grupo abaixo da raiz.', mtInformation, [mbOK], 0);
    Exit;
  end;
  cdgrupo := tstringlist.Create;
  sql     := TStringList.Create;
  try
    cdgrupo.add(inttostr(nivelregistro(trv.selected)));
    if cdgrupo.Text <> '' then
    begin
      texto := 'update produto set bosincronizado=''N'' where cdempresa='+empresa.cdempresa.tostring+' ';
      sqlmontarlistagrupo(cdgrupo, _produto, _cdgrupo , texto);
      sql.Add(texto);
      ExecutaScript(sql);
      showmessage('Produto(s) marcado(s) para ser sincronizado.');
    end;
  finally
    freeandnil(cdgrupo);
    freeandnil(sql);
  end;
end;

procedure TfrmManagerproduto.ActviewgroupExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnviewgroup.down;
end;

procedure TfrmManagerproduto.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmManagerproduto.actgrupopropriedadeExecute(Sender: TObject);
var
  codigo : integer;
begin
  codigo := nivelregistro(trv.selected);
  if codigo <> 0 then
  begin
    Exibir_Grupo(codigo);
  end;
end;

procedure TfrmManagerproduto.actgrupotpclienteExecute(Sender: TObject);
var
 codigo : Integer;
begin
  codigo := nivelregistro(trv.selected);
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_grupotpcliente))), codigo, _cdgrupo);
end;

procedure TfrmManagerproduto.FormCreate(Sender: TObject);
begin
  qryproduto := TFDQuery.create(nil);
  qryproduto.Connection := aplicacao.confire;
  dtsproduto.dataset := qryproduto;
  qryproduto.BeforePost := qryprodutoBeforePost;
  qryproduto.AfterScroll := qryprodutoAfterScroll;
  AbrirTabelas;
end;

procedure TfrmManagerproduto.actaplicarconfiguracaogrupoExecute(Sender: TObject);
var
  codigo : integer;
begin
  codigo := nivelregistro(trv.selected);
  if (codigo <> 0) and AplicarConfiguracaoGrupo(codigo, _grupo) then
  begin
    MessageDlg(_msg_configuracao_aplicada, mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmManagerproduto.actaplicarconfiguracaoprodutoExecute(Sender: TObject);
var
  codigo : integer;
begin
  codigo := nivelregistro(trv.selected);
  if (codigo <> 0) and AplicarConfiguracaoGrupo(codigo, _produto) then
  begin
    MessageDlg(_msg_configuracao_aplicada, mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmManagerproduto.actaplicarconfiguracaoprodutogrupoExecute(Sender: TObject);
var
  codigo : integer;
begin
  codigo := nivelregistro(trv.selected);
  if (codigo <> 0) and AplicarConfiguracaoGrupo(codigo, _produto, true) then
  begin
    MessageDlg(_msg_configuracao_aplicada, mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmManagerproduto.actnovoprodutoExecute(Sender: TObject);
var
  codigo : integer;
begin
  if NovoProduto('', codigo, true) then
  begin
    atualizar;
  end;
end;

procedure TfrmManagerproduto.actlocalizarprodutoExecute(Sender: TObject);
var
  codigo: integer;
begin
  codigo := LocalizarProduto;
  if codigo <> 0 then
  begin
    set_posicionar_produto(codigo);
  end;
end;

procedure TfrmManagerproduto.set_posicionar_produto(codigo: integer);
var
  cdgrupo : integer;
  i : integer;
begin
  cdgrupo := qregistro.InteirodoCodigo(_produto, codigo, _cdgrupo);
  for i := 0 to trv.Items.Count - 1 do
  begin
    if cdgrupo = nivelregistro(trv.Items[i]) then
    begin
      trv.Items[i].Selected := True;
      trvClick(trv);
      qryproduto.Locate(_cdproduto, codigo, []);
      grd.SetFocus;
    end;
  end;
end;

procedure TfrmManagerproduto.actmetodoprocessoExecute(Sender: TObject);
begin
  dlgMetodoProcesso(qryproduto.FieldByName(_CDPRODUTO).AsInteger);
end;

procedure TfrmManagerproduto.actzerarestoqueExecute(Sender: TObject);
begin
  zerar_estoque(_1);
end;

procedure TfrmManagerproduto.actzerarestoquesubgrupoExecute(Sender: TObject);
begin
  zerar_estoque(_2);
end;

procedure TfrmManagerproduto.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdproduto then
  begin
    actabrirprodutoExecute(actabrirproduto);
  end;
end;

procedure TfrmManagerproduto.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  s : string;
  Column : TcxGridDBColumn;
begin
  Column := tbvBOATIVAR;
  s      := upperCase(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if s <> UpperCase(_VERDADEIRO) then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end;
end;

procedure TfrmManagerproduto.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qryproduto, key);
  exportarexcel(Key, sender);
end;

procedure TfrmManagerproduto.ExportargradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmManagerproduto.zerar_estoque(tp:string);
var
  codigo : integer;
begin
  codigo := nivelregistro(trv.selected);
  if (codigo = 0) or
     (MessageDlg('Este procedimento vai zerar o estoque de todos os produtos deste grupo.'#13+_msg_deseja_Continuar, mtConfirmation, [mbYes, mbno], 0) = mrno) or
     (MessageDlg('Deseja realmente continuar?', mtConfirmation, [mbYes, mbno], 0) = mrno) then
  begin
    exit;
  end;
  if tmovto.zerarestoque(codigo, tp = _1) then
  begin
    MessageDlg('Estoque de produtos do grupo '+trv.Selected.Text+' foram zerados.', mtInformation, [mbOK], 0);
    qryproduto.Refresh;
  end;
end;

procedure TfrmManagerproduto.AbrirTabelas;
begin
  TcxLookupComboBoxProperties(tbvCDUNIDADE.Properties).ListSource := abrir_tabela(_unidade);
  TcxLookupComboBoxProperties(tbvCDtpproduto.Properties).ListSource := abrir_tabela(_tpproduto);
  TcxLookupComboBoxProperties(tbvCDtpitem.Properties).ListSource := abrir_tabela(_tpitem);
  TcxLookupComboBoxProperties(tbvnusticms.Properties).ListSource := abrir_tabela(_sticms);
  TcxLookupComboBoxProperties(tbvCDorigem.Properties).ListSource := abrir_tabela(_origem);
  TcxLookupComboBoxProperties(tbvCDMATERIAL.Properties).ListSource := abrir_tabela(_material);
  TcxLookupComboBoxProperties(tbvCDnorma.Properties).ListSource := abrir_tabela(_norma);
  TcxLookupComboBoxProperties(tbvCDforma.Properties).ListSource := abrir_tabela(_forma);
end;

end.

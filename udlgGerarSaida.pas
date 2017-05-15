unit udlgGerarSaida;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls, Controls, Variants,
  sqlexpr, DB,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora, ulocalizarcliente,
  classeaplicacao, classeform,  classeempresa, classeretornasql, classequery,
  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, cxButtons, cxLabel,
  cxCheckListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBClient, dxBar, cxNavigator, cxCalc, ClasseLocalizar;

type
  TfrmdlgGerarSaida = class(TForm)
    lbldocumento: TLabel;
    lblcondpagto: TLabel;
    lblrzsocial: TLabel;
    lblcliente: TLabel;
    btncancelar: TcxButton;
    edtcdcliente: TcxButtonEdit;
    btnok: TcxButton;
    cbxcdcondpagto: TcxLookupComboBox;
    cbxcdtpsaida: TcxLookupComboBox;
    cds: TClientDataSet;
    cdscddigitado: TStringField;
    cdsnmproduto: TStringField;
    cdsqtitem: TFloatField;
    cdscdittabela: TIntegerField;
    cdsboativar: TStringField;
    dts: TDataSource;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvboativar: TcxGridDBColumn;
    tbvcddigitado: TcxGridDBColumn;
    tbvnmproduto: TcxGridDBColumn;
    tbvqtitem: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    bvl1: TBevel;
    cdsboservico: TStringField;
    tbvqtpeca: TcxGridDBColumn;
    cdsQTPECA: TFloatField;
    cdsnmunidade: TStringField;
    cdsqtlargura1: TFloatField;
    cdsqtcomprimento1: TFloatField;
    cdsqtaltura1: TFloatField;
    tbvNMSTEMBARQUE: TcxGridDBColumn;
    cdsnmstembarque: TStringField;
    grditpedidoestrutura: TcxGrid;
    tbbitpedidoestrutura: TcxGridDBTableView;
    tbvitpedidoestruturaboativar: TcxGridDBColumn;
    tbvitpedidoestruturanuestrura: TcxGridDBColumn;
    lvlitpedidoestrutura: TcxGridLevel;
    cdsitpedidoestrutura: TClientDataSet;
    dtsitpedidoestrutura: TDataSource;
    lblitpedidoestrutura: TcxLabel;
    cdsitpedidoestruturaNUESTRUTURAL: TStringField;
    cdsitpedidoestruturaCDITPEDIDOESTRUTURA: TIntegerField;
    cdsitpedidoestruturaCDITPEDIDO: TIntegerField;
    cdsitpedidoestruturaBOATIVAR: TStringField;
    procedure btnOkClick(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdsBeforeDelete(DataSet: TDataSet);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxcdtpsaidaPropertiesChange(Sender: TObject);
    procedure cdsQTPECAValidate(Sender: TField);
    procedure cdsqtitemValidate(Sender: TField);
    procedure cdsAfterScroll(DataSet: TDataSet);
  private   { Private declarations }
    cdpedido : integer;
    tabela : string;
    boduplicata : Boolean;
    procedure load_produto(codigo:integer);
    function  getcditem(tabela:string): string;
    function  getqtd:string;
    function  getqtp:string;
    function  existe_produto_marcado:Boolean;
    function  existe_produto_marcado_com_quantidade:boolean;
    function  get_boduplicata_bopedido:string;
  public    { Public declarations }
  end;

function GerarSaida           (codigo: integer):boolean;
function GerarSaida_transporte(cdittransporte: integer; cdcliente: string; cdcondpagto: integer):boolean;overload;
function GerarSaida_transporte(cdittransporte: TStrings):boolean;overload;
function GerarSaida_Pedido    (cdpedido: integer; cdcliente: string; cdcondpagto: integer; boduplicata:boolean):boolean;

var
  frmdlgGerarSaida: TfrmdlgGerarSaida;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function GerarSaida(codigo:integer):boolean;
begin
  result           := false;
  frmdlgGerarSaida := TfrmdlgGerarSaida.Create(application);
  try
    frmdlggerarsaida.grd.Visible := true;
    frmdlggerarsaida.tabela      := _ordserv;
    frmdlggerarsaida.load_produto(codigo);
    frmdlggerarsaida.dxBarManager1Bar1.Visible := False;
    with frmdlgGerarSaida do
    begin
      edtcdcliente.Text := qregistro.Stringdocodigo(_ordserv, codigo, _cdcliente);
      edtcdclienteExit(edtcdcliente);
      cbxcdcondpagto.Text                                := qregistro.NomedoCodigo(_condpagto, qregistro.inteirodocodigo(_ordserv, codigo, _cdcondpagto));
      cbxcdtpsaida.Properties.ListSource.DataSet.Filter  := _BODUPLICATA+'='+quotedstr(_S)+' AND '+_NUDOCFISCALICMS+'<>'+quotedstr(_2D);
      showmodal;
      if ModalResult <> mrok then
      begin
        exit;
      end;
      frmmain.NovaVenda(codigo, strtoint(cbxcdtpsaida.EditValue), strtoint(cbxcdcondpagto.editvalue), edtcdcliente.Text, getcditem(_ordserv));
      result := true;
    end;
  finally
    freeandnil(frmdlggerarsaida);
  end;
end;

function GerarSaida_transporte(cdittransporte: integer; cdcliente: string; cdcondpagto: integer):boolean;
var
  cdtpsaida:integer;
  cditpedido : string;
begin
  result := false;
  frmdlgGerarSaida := TfrmdlgGerarSaida.Create(application);
  try
    frmdlgGerarSaida.dxBarManager1Bar1.Visible:= True;
    frmdlgGerarSaida.grd.Visible              := True;
    frmdlgGerarSaida.edtcdcliente.Text        := cdcliente;
    frmdlgGerarSaida.edtcdclienteExit(frmdlgGerarSaida.edtcdcliente);
    frmdlgGerarSaida.edtcdcliente.Enabled     := False;
    frmdlgGerarSaida.cbxcdcondpagto.EditValue := cdcondpagto;
    frmdlgGerarSaida.cbxcdcondpagto.Enabled   := False;
    frmdlgGerarSaida.cdpedido                 := qregistro.InteirodoCodigo(_ittransporte, cdittransporte, _cdpedido);
    frmdlgGerarSaida.tabela                   := _pedido;
    frmdlgGerarSaida.Load_produto(frmdlgGerarSaida.cdpedido);
    if frmdlgGerarSaida.cds.RecordCount = 0 then
    begin
      MessageDlg('Não existens itens para gerar a nota fiscal.', mtInformation, [mbOK], 0);
      abort;
    end;
    frmdlgGerarSaida.grd.Enabled := false;
    with frmdlgGerarSaida do
    begin
      cbxcdtpsaida.Properties.ListSource.DataSet.Filter := get_boduplicata_bopedido;
      showmodal;
      if ModalResult <> mrok then
      begin
        exit;
      end;
      cditpedido := frmdlgGerarSaida.getcditem(_pedido);
      cdtpsaida  := cbxcdtpsaida.EditValue;
      frmmain.NovaVenda(cdittransporte, cdtpsaida, DtBanco);
      result := true;
    end;
  finally
    freeandnil(frmdlggerarsaida);
  end;
end;

function GerarSaida_transporte(cdittransporte:tstrings):boolean;
var
  cdtpsaida : integer;
begin
  result := false;
  frmdlgGerarSaida := TfrmdlgGerarSaida.Create(application);
  try
    frmdlgGerarSaida.edtcdcliente.Visible      := False;
    frmdlgGerarSaida.lblcliente.Visible        := false;
    frmdlgGerarSaida.cbxcdcondpagto.Visible    := False;
    frmdlgGerarSaida.lblcondpagto.Visible      := False;
    frmdlgGerarSaida.grd.Visible               := false;
    frmdlgGerarSaida.dxBarManager1Bar1.Visible := false;
    with frmdlgGerarSaida do
    begin
      cbxcdtpsaida.Properties.ListSource.DataSet.Filter := get_boduplicata_bopedido;
      showmodal;
      if ModalResult <> mrok then
      begin
        exit;
      end;
      cdtpsaida  := cbxcdtpsaida.EditValue;
      frmmain.NovaVenda(cdittransporte, cdtpsaida, DtBanco);
      result := true;
    end;
  finally
    freeandnil(frmdlggerarsaida);
  end;
end;

function GerarSaida_pedido(cdpedido: integer; cdcliente: string; cdcondpagto: integer; boduplicata:boolean):boolean;
  function get_cdtpsaida:string;
    function makesql:string;
    begin
      result := 'select T.cdtpsaida '+
                'from pedido P '+
                'left join tppedido T on p.cdtppedido=t.cdtppedido AND P.CDEMPRESA=T.CDEMPRESA '+
                'where P.CDEMPRESA='+empresa.cdempresa.tostring+' and p.cdpedido='+inttostr(cdpedido)
    end;
  var
    cdtpsaida : string;
  begin
    cdtpsaida := RetornaSQLString(makesql);
    if cdtpsaida <> '' then
    begin
      result := ' and cdtpsaida='+cdtpsaida;
    end;
  end;
var
  cditpedido, cditpedidoestrutura, qtd, qtp: string;
  cdtpsaida: integer;
begin
  result           := false;
  frmdlgGerarSaida := TfrmdlgGerarSaida.Create(application);
  try
    frmdlgGerarSaida.boduplicata               := boduplicata; 
    frmdlgGerarSaida.dxBarManager1Bar1.Visible := True;
    frmdlgGerarSaida.grd.Visible               := True;
    frmdlgGerarSaida.edtcdcliente.Text         := cdcliente;
    frmdlgGerarSaida.edtcdclienteExit(frmdlgGerarSaida.edtcdcliente);
    frmdlgGerarSaida.edtcdcliente.Enabled      := False;
    frmdlgGerarSaida.cbxcdcondpagto.EditValue  := cdcondpagto;
    frmdlgGerarSaida.cbxcdcondpagto.Enabled    := False;
    frmdlgGerarSaida.cdpedido                  := cdpedido;
    frmdlgGerarSaida.tabela                    := _pedido;
    frmdlgGerarSaida.Load_produto(cdpedido);
    if frmdlgGerarSaida.cds.RecordCount = 0 then
    begin
      MessageDlg('Não existens itens para gerar a nota fiscal.', mtInformation, [mbOK], 0);
      abort;
    end;
    with frmdlgGerarSaida do
    begin
      tbvNMSTEMBARQUE.Visible := RegistroExiste(_tppedido, _BOITEMEMBARQUE+'='+quotedstr(_S));
      if boduplicata then
      begin
        cbxcdtpsaida.Properties.ListSource.DataSet.Filter := get_boduplicata_bopedido+get_cdtpsaida;
      end
      else
      begin
        cbxcdcondpagto.Clear;
        cbxcdtpsaida.Properties.ListSource.DataSet.Filter := _BODUPLICATA+'<>'+quotedstr(_S)+' AND '+_BOPEDIDO+'='+quotedstr(_S)+get_cdtpsaida;
      end;
      showmodal;
      if ModalResult <> mrok then
      begin
        exit;
      end;
      cditpedido  := frmdlgGerarSaida.getcditem(_pedido);
      cditpedidoestrutura  := frmdlgGerarSaida.getcditem(_itpedidoestrutura);
      qtd         := frmdlgGerarSaida.getqtd;
      qtp         := frmdlgGerarSaida.getqtp;
      cdtpsaida   := cbxcdtpsaida.EditValue;
      cdcondpagto := 0;
      if not varisnull(cbxcdcondpagto.EditValue) then
      begin
        cdcondpagto := cbxcdcondpagto.EditValue;
      end;
      frmmain.NovaVenda(cdpedido, cditpedido, cditpedidoestrutura, cdtpsaida, cdcondpagto, qtd, qtp);
      result := true;
    end;
  finally
    freeandnil(frmdlggerarsaida);
  end;
end;

procedure TfrmdlgGerarSaida.btnOkClick(Sender: TObject);
begin
  if cds.State = dsedit then
  begin
    cds.Post;
  end;
  if cbxcdtpsaida.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtpsaida.SetFocus;
    abort;
  end;
  if boduplicata then
  begin
    if (cbxcdcondpagto.Text = '') and cbxcdcondpagto.Visible then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__condicao+' '+_de+' '+_Pagamento]), mtinformation, [mbok], 0);
      cbxcdcondpagto.SetFocus;
      abort;
    end;
  end;
  if grd.Visible and (not existe_produto_marcado) then
  begin
    messagedlg('Seleção de algum produto é obrigatório!', mtinformation, [mbok], 0);
    abort;
  end;
  if grd.Visible and (not existe_produto_marcado_com_quantidade) then
  begin
    messagedlg('O produto selecionado deve ter a quantidade maior do que zero!', mtinformation, [mbok], 0);
    abort;
  end;
  modalresult := mrok;
end;

procedure TfrmdlgGerarSaida.edtcdclienteExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdcliente.text;
  if cd = '' then
  begin
    lblrzsocial.caption := '';
    exit;
  end;
  if not CodigoExiste(_cliente, cd) then
  begin
    messagedlg('Código '+cd+' inexistente na tabela Cliente.', mterror, [mbok], 0);
    edtcdcliente.setfocus;
    abort;
  end;
  lblrzsocial.Caption := NomedoCodigo(_cliente, cd, _rzsocial);
end;

procedure TfrmdlgGerarSaida.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmdlgGerarSaida.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmdlgGerarSaida.FormShow(Sender: TObject);
begin
  cbxcdtpsaida.Properties.ListSource.DataSet.Filtered := True;
  if cbxcdtpsaida.Properties.ListSource.DataSet.RecordCount = 1 then
  begin
    cbxcdtpsaida.Text    := cbxcdtpsaida.Properties.ListSource.DataSet.fieldbyname(_nmtpsaida).AsString;// RetornaSQLString('select nmtpsaida from tpsaida');
    cbxcdtpsaida.Enabled := false;
    if cbxcdcondpagto.Enabled and cbxcdcondpagto.Visible then
    begin
      cbxcdcondpagto.SetFocus;
    end;
  end;
end;

procedure TfrmdlgGerarSaida.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblrzsocial);
end;

procedure TfrmdlgGerarSaida.load_produto(codigo:integer);
  function makesql:string;
  begin
    result := 'select i.cdit'+tabela+
                    ',i.cddigitado'+
                    ',t.boservico'+
                    ',u.nmunidade'+
                    ',p.nmproduto';
    if tabela = _pedido then Result := result + ',i.qtitem-i.qtatendida qtitem,COALESCE(i.qtpeca, 0)-COALESCE(i.qtpecaatendida,0) qtpeca,i.qtlargura1,i.qtaltura1,i.qtcomprimento1,stembarque.nmstembarque '
                        else result := Result + ',i.qtitem ';
    Result := result +
              'from it'+tabela+' i '+
              'left join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
              'left join tpproduto t on t.cdempresa=p.cdempresa and t.cdtpproduto=p.cdtpproduto '+
              'left join unidade u on u.cdempresa=p.cdempresa and u.cdunidade=p.cdunidade ';
    if tabela = _pedido then
    begin
      result := result + 'left join stembarque on stembarque.cdstembarque=i.cdstembarque and stembarque.cdempresa=i.cdempresa ';
    end;
    result := result + 'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cd'+tabela+'='+inttostr(codigo)+' ';
    if tabela = _pedido then
    begin
      result := result + 'and i.qtitem>i.qtatendida ';
    end;
    result := result + 'order by i.cdit'+tabela;
  end;
  procedure carregar_itpedidoestrutura(cditpedido:string);
  var
    q : TClasseQuery;
  begin
    q := TClasseQuery.create('select cditpedidoestrutura,nuestrutural from itpedidoestrutura where bofaturado=''N'' and cditpedido='+cditpedido);
    try
      while not q.q.Eof do
      begin
        cdsitpedidoestrutura.Insert;
        cdsitpedidoestruturaNUESTRUTURAL.asstring         := q.q.fieldbyname(_nuestrutural).AsString;
        cdsitpedidoestruturaCDITPEDIDOESTRUTURA.asinteger := q.q.fieldbyname(_cditpedidoestrutura).AsInteger;
        cdsitpedidoestruturaCDITPEDIDO.AsString           := cditpedido;
        cdsitpedidoestruturaBOATIVAR.asstring             := _N;
        cdsitpedidoestrutura.Post;
        q.q.Next;
      end;
    finally
      FreeAndNil(q);
    end;
  end;
var
  q : TClasseQuery;
begin
  if tabela = _pedido then
  begin
    if RetornaSQLBoolean('select t.bonuestrutural from tppedido t inner join pedido p on p.cdempresa=t.cdempresa and p.cdtppedido=t.cdtppedido where p.cdempresa='+empresa.cdempresa.tostring+' and cdpedido='+inttostr(cdpedido)) then
    begin
      grd.Height := 210;
      lblitpedidoestrutura.Visible := True;
      grditpedidoestrutura.Visible := True;
    end;
  end;
  q := TClasseQuery.Create(makesql);
  try
    while not q.q.Eof do
    begin
      cds.Append;
      cdsboativar.AsString    := _s;
      cdscddigitado.AsString  := q.q.fieldbyname(_cddigitado).asstring;
      cdsnmproduto.AsString   := q.q.fieldbyname(_nmproduto).AsString;
      cdsnmunidade.AsString   := q.q.fieldbyname(_nmunidade).AsString;
      if tabela = _pedido then
      begin
        cdsnmstembarque.AsString  := q.q.fieldbyname(_nmstembarque).AsString;
        cdsqtlargura1.AsFloat     := q.q.fieldbyname(_qtlargura1).AsFloat;
        cdsqtcomprimento1.AsFloat := q.q.fieldbyname(_qtcomprimento1).AsFloat;
        cdsqtaltura1.AsFloat      := q.q.fieldbyname(_qtaltura1).AsFloat;
        cdsQTPECA.AsFloat := q.q.fieldbyname(_qtpeca).AsFloat;
        if not tbvqtpeca.Visible then
        begin
          tbvqtpeca.Visible := cdsQTPECA.AsFloat > 0;
        end;
      end;
      cdsqtitem.AsFloat       := q.q.fieldbyname(_qtitem).AsFloat;
      cdscdittabela.AsInteger := q.q.fieldbyname(_cdit+tabela).AsInteger;
      cdsboservico.asstring   := q.q.fieldbyname(_boservico).asstring;
      cds.Post;
      if tabela = _pedido then
      begin
        carregar_itpedidoestrutura(q.q.fieldbyname(_cdit+tabela).AsString);
      end;
      q.q.Next;
    end;
    cds.First;
  finally
    FreeAndNil(q);
  end;
end;

function TfrmdlgGerarSaida.getcditem(tabela:string): string;
begin
  if tabela = _itpedidoestrutura then
  begin
    cdsitpedidoestrutura.Filtered := False;
    cdsitpedidoestrutura.First;
    while not cdsitpedidoestrutura.Eof do
    begin
      if cdsitpedidoestruturaboativar.AsString = _s then
      begin
        if result = '' then result := 'cditpedidoestrutura in ('
                       else result := result + ',';
        result := result + cdsitpedidoestruturaCDITPEDIDOESTRUTURA.AsString;
      end;
      cdsitpedidoestrutura.Next;
    end;
    if result <> '' then
    begin
      result := result + ')';
    end;
  end
  else
  begin
    if cds.State = dsedit then
    begin
      cds.Post;
    end;
    cds.First;
    while not cds.Eof do
    begin
      if (cdsboativar.AsString = _s) and (cdsqtitem.AsFloat>0) then
      begin
        if result = '' then result := 'cdit'+tabela+' in ('
                       else result := result + ',';
        result := result + cdscdittabela.AsString;
      end;
      cds.Next;
    end;
    if result <> '' then
    begin
      result := result + ')';
    end;
  end;
end;

procedure TfrmdlgGerarSaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cbxcdtpsaida.Properties.ListSource.DataSet.Filtered := false;
end;

procedure TfrmdlgGerarSaida.FormCreate(Sender: TObject);
begin
  cbxcdtpsaida.Properties.ListSource   := abrir_tabela(_tpsaida);
  cbxcdcondpagto.Properties.ListSource := abrir_tabela(_condpagto+_s);
  boduplicata := True;
end;

function TfrmdlgGerarSaida.existe_produto_marcado: Boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cds, true);
    c.First;
    while not c.Eof do
    begin
      result := c.FieldByName(_boativar).AsString = _S;
      if result then
      begin
        Break;
      end;
      c.Next;
    end;
  finally
    FreeAndNil(c);
  end;
end;

function TfrmdlgGerarSaida.existe_produto_marcado_com_quantidade: boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cds, true);
    c.First;
    while not c.Eof do
    begin
      result := (c.FieldByName(_boativar).AsString = _S) and (c.FieldByName(_qtitem).AsFloat > 0);
      if result then
      begin
        Break;
      end;
      c.Next;
    end;
  finally
    FreeAndNil(c);
  end;
end;

function TfrmdlgGerarSaida.getqtd: string;
begin
  if cds.State = dsedit then
  begin
    cds.Post;
  end;
  cds.First;
  while not cds.Eof do
  begin
    if (cdsboativar.AsString = _s) and (cdsqtitem.AsFloat > 0) then
    begin
      result := result + cdsqtitem.AsString+#13;
    end;
    cds.Next;
  end;
end;

procedure TfrmdlgGerarSaida.cdsBeforeDelete(DataSet: TDataSet);
begin
  if cds.RecordCount = 1 then
  begin
    MessageDlg('É necessário que exista ao menos um ítem para gerar a nota fiscal.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TfrmdlgGerarSaida.dxBarButton1Click(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      cds.FieldByName(_boativar).AsString := _S;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure TfrmdlgGerarSaida.dxBarButton2Click(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      if cds.FieldByName(_boativar).AsString = _n then cds.FieldByName(_boativar).AsString := _S
                                                  else cds.FieldByName(_boativar).AsString := _n;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure TfrmdlgGerarSaida.dxBarButton3Click(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      cds.FieldByName(_boativar).AsString := _n;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure TfrmdlgGerarSaida.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmdlgGerarSaida.cbxcdtpsaidaPropertiesChange(Sender: TObject);
  function get_filter:string;
  begin
    if RetornaSQLBoolean('SELECT BOISS FROM TPSAIDA WHERE CDEMPRESA='+empresa.cdempresa.tostring+' and nmtpsaida='+quotedstr(cbxcdtpsaida.Text)) then
      Result := 'BOSERVICO=''S'''
    else
      Result := 'BOSERVICO=''N'' OR BOSERVICO IS NULL';
  end;
begin
  cds.Filtered := False;
  cds.Filter   := get_filter;
  cds.Filtered := true;
end;

function TfrmdlgGerarSaida.getqtp: string;
begin
  if cds.State = dsedit then
  begin
    cds.Post;
  end;
  cds.First;
  while not cds.Eof do
  begin
    if (cdsboativar.AsString = _s) and (cdsqtitem.AsFloat > 0) then
    begin
      result := result + cdsqtpeca.AsString+#13;
    end;
    cds.Next;
  end;
end;

procedure TfrmdlgGerarSaida.cdsQTPECAValidate(Sender: TField);
begin
  if tabela <> _pedido then
  begin
    Exit;
  end;
  cdsqtitem.OnValidate := nil;
  try
    if cdsNMUNIDADE.AsString = 'M3' then
    begin
      cdsQTITEM.AsFloat := cdsQTLARGURA1.AsFloat * cdsQTCOMPRIMENTO1.AsFloat * cdsQTALTURA1.AsFloat * cdsQTPECA.AsFloat;
    end
    else if cdsNMUNIDADE.AsString = 'ML' then
    begin
      cdsQTITEM.AsFloat := cdsQTCOMPRIMENTO1.AsFloat * cdsQTPECA.AsFloat;
    end
    else if cdsNMUNIDADE.AsString = 'M2' then
    begin
      cdsQTITEM.AsFloat := cdsQTLARGURA1.AsFloat * cdsQTCOMPRIMENTO1.AsFloat * cdsQTPECA.AsFloat;
    end;
  finally
    cdsqtitem.OnValidate := cdsqtitemValidate;
  end;
end;

procedure TfrmdlgGerarSaida.cdsqtitemValidate(Sender: TField);
begin
  if tabela <> _pedido then
  begin
    Exit;
  end;
  cdsqtpeca.OnValidate := nil;
  try
    if cdsNMUNIDADE.AsString = 'M3' then
    begin
      if (cdsQTLARGURA1.AsFloat = 0) or (cdsQTCOMPRIMENTO1.AsFloat = 0) or (cdsQTALTURA1.AsFloat = 0) then
      begin
        cdsQTPECA.AsFloat := 0;
      end
      else
      begin
        cdsQTPECA.AsFloat := cdsQTitem.AsFloat / cdsQTLARGURA1.AsFloat / cdsQTCOMPRIMENTO1.AsFloat / cdsQTALTURA1.AsFloat;
      end;
    end
    else if cdsNMUNIDADE.AsString = 'ML' then
    begin
      if cdsQTCOMPRIMENTO1.AsFloat = 0 then
      begin
        cdsQTPECA.AsFloat := 0;
      end
      else
      begin
        cdsQTPECA.AsFloat := cdsQTITEM.AsFloat / cdsQTCOMPRIMENTO1.AsFloat;
      end;
    end
    else if cdsNMUNIDADE.AsString = 'M2' then
    begin
      if (cdsQTLARGURA1.AsFloat = 0) or (cdsQTCOMPRIMENTO1.AsFloat = 0) then
      begin
        cdsQTPECA.AsFloat := 0;
      end
      else
      begin
        cdsQTPECA.AsFloat := cdsQTITEM.AsFloat / cdsQTLARGURA1.AsFloat / cdsQTCOMPRIMENTO1.AsFloat;
      end;
    end;
  finally
    cdsqtpeca.OnValidate := cdsqtpecaValidate;
  end;
end;

function TfrmdlgGerarSaida.get_boduplicata_bopedido: string;
begin
  result := _BODUPLICATA+'='+quotedstr(_S)+' AND '+_BOPEDIDO+'='+quotedstr(_S)
end;

procedure TfrmdlgGerarSaida.cdsAfterScroll(DataSet: TDataSet);
begin
  if tabela = _pedido then
  begin
    cdsitpedidoestrutura.Filtered := False;
    if cdscdittabela.AsString <> '' then
    begin
      cdsitpedidoestrutura.Filter := _CDITPEDIDO+'='+cdscdittabela.AsString;
      cdsitpedidoestrutura.Filtered := True;
    end;
  end;
end;

end.

unit ubaixaRequisicao;

interface

uses
  System.Actions, System.UITypes,
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Dialogs,
  StdCtrls, Menus, Buttons, ComCtrls, CheckLst, ExtCtrls,
  sqlexpr,
  uregistro, urotinas, ulocalizar, uconstantes, udatahora, ustrings,
  classeaplicacao, classeempresa, classeform, classeregistrainformacao,
  classeretornasql, classeexecutasql, classeusuario, classegerar, classequery,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLookAndFeelPainters, cxButtons, cxCheckListBox, cxGraphics, cxLookAndFeels,
  cxLabel, cxPC, dxCore, cxDateUtils;

type
  TItMovto = record
    cdmovto, cdcntcusto, cdproduto, cddigitado, cdrim, cditrim : string;
    cditlote, qtitem, vlunitario, vltotal, vlsaldovalor : string;
  end;
  TfrmBaixaRequisicao = class(TForm)
    bvl: TBevel;
    lbldtsaida: TLabel;
    lblcntcusto: TLabel;
    lblnmcntcusto: TLabel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    edtcdcntcusto: TcxButtonEdit;
    edtdtsaida: TcxDateEdit;
    panel2: TcxLabel;
    clb: TcxCheckListBox;
    procedure edtcdcntcustoExit(Sender: TObject);
    procedure edtcdcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
    procedure btnokClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure clbKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdcntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure clbClickCheck(Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
  private    { Private declarations }
    cdit : TStrings;
    itmovto : titmovto;
    tp, tbl : string;
    procedure HideControls;
    procedure InsereRegistroItMovto     (itmovto: Titmovto);
    procedure InsereRegistroMovto       (cdmovto, dtemissao, vltotal:string; cdlocacao:string=''; cditlocacao:string='');
    procedure LoadlistboxProdutos       (codigo:string);
    function  QtdItemRequisicao         (cdrim, cditrim:string):currency;
    function  QtdJabaixadaItemrequisicao(cdrim, cditrim:string):currency;
    procedure ValoresToItMovto          (cdproduto:string);
  public { Public declarations }
  end;

function BaixaRequisicao  (cdrim, cdpaciente:string):boolean;overload;
function BaixaRequisicao  (codigo:string):boolean;overload;
function EntradaRequisicao(codigo:string):boolean;

var
  frmBaixaRequisicao: TfrmBaixaRequisicao;

implementation

{$R *.dfm}

function BaixaRequisicao(cdrim, cdpaciente:string):boolean;
var
  i : integer;
begin
  result                             := false;
  frmbaixaRequisicao                 := TFrmBaixaRequisicao.Create(application);
  frmbaixarequisicao.tbl             := _rim;
  frmbaixarequisicao.edtdtsaida.Date := DtBanco;
  frmbaixarequisicao.LoadListBoxProdutos(cdrim);
  try
    frmbaixarequisicao.showmodal;
    if frmbaixarequisicao.ModalResult <> mrok then
    begin
      exit;
    end;
    for i := 0 to frmbaixarequisicao.clb.Count - 1 do
    begin
      if frmbaixarequisicao.clb.Items[i].State = cbschecked then
      begin
        frmbaixarequisicao.itmovto.cdproduto      := trim(copy(frmbaixarequisicao.clb.Items[i].Text, 1, 6));
        frmbaixarequisicao.itmovto.cditlote       := trim(copy(frmbaixarequisicao.clb.Items[i].Text, 72, 4));
        frmbaixarequisicao.itmovto.qtitem         := trim(copy(frmbaixarequisicao.clb.Items[i].text, 77, 10));
        frmbaixarequisicao.itmovto.cdcntcusto     := frmbaixarequisicao.edtcdcntcusto.text;
        frmbaixarequisicao.itmovto.cditrim        := frmBaixaRequisicao.cdit[i];
        frmbaixarequisicao.ValoresToItMovto(frmbaixarequisicao.itmovto.cdproduto);
        frmbaixarequisicao.itmovto.cdmovto   := GerarCodigo(_movto);
        frmbaixarequisicao.itmovto.cdrim     := cdrim;
        try
          frmbaixarequisicao.InsereRegistroMovto(frmbaixarequisicao.itmovto.cdmovto, formatdatetime(_mm_dd_yyyy, frmbaixarequisicao.edtdtsaida.Date), frmbaixarequisicao.itmovto.vltotal);
          frmbaixarequisicao.InsereRegistroItMovto(frmbaixarequisicao.itmovto);
          if frmbaixarequisicao.qtdItemRequisicao(cdrim, frmBaixaRequisicao.cdit[i]) = frmbaixarequisicao.QtdJabaixadaItemrequisicao(cdrim, frmBaixaRequisicao.cdit[i]) then
          begin
            ExecutaSQL('update itrim set cdstitrim=2 where cdempresa='+empresa.cdempresa.tostring+' and cdrim='+cdrim+' and cditrim='+frmBaixaRequisicao.cdit[i]);
          end;
        except
          result := false;
        end;
      end;
    end;
    result := true;
  finally
    frmbaixarequisicao.free;
  end;
end;

function BaixaRequisicao(codigo:string):boolean;
var
  i : integer;
begin
  result             := false;
  frmbaixaRequisicao := TFrmBaixaRequisicao.Create(application);
  try
    frmbaixarequisicao.tbl := _locacao;
    frmbaixarequisicao.tp  := _S;
    frmbaixarequisicao.Panel2.Caption := '  PRODUTO                                                                      QUANTIDADE';
    frmbaixarequisicao.HideControls;
    frmbaixarequisicao.LoadListBoxProdutos(codigo);
    frmbaixarequisicao.showmodal;
    if frmbaixarequisicao.ModalResult <> mrok then
    begin
      exit;
    end;
    for i := 0 to frmbaixarequisicao.clb.Count - 1 do
    begin
      if frmbaixarequisicao.clb.items[i].State = cbschecked then
      begin
        frmbaixarequisicao.itmovto.cdproduto    := trim(copy(frmbaixarequisicao.clb.Items[i].text, 1, 6));
        frmbaixarequisicao.itmovto.qtitem       := trim(copy(frmbaixarequisicao.clb.Items[i].text, 77, 10));
        frmbaixarequisicao.itmovto.cdmovto      := GerarCodigo(_movto);   // Gerar codigo da tabela automaticamente
        frmbaixarequisicao.ValoresToItMovto(frmbaixarequisicao.itmovto.cdproduto);
        try
          frmbaixarequisicao.InsereRegistroMovto  (frmbaixarequisicao.itmovto.cdmovto, dtbancos, frmbaixarequisicao.itmovto.vltotal, codigo, frmBaixaRequisicao.cdit[i]);
          frmbaixarequisicao.InsereRegistroItMovto(frmbaixarequisicao.itmovto);
          ExecutaSQL('update itlocacaoacessorio set cdstitlocacaoacessorio=2 where cdempresa='+empresa.cdempresa.tostring+' and cdlocacao='+codigo+' and cditlocacaoacessorio='+frmBaixaRequisicao.cdit[i]);
        except
          result := false;
        end;
      end;
    end;
    result := true;
  finally
    frmbaixarequisicao.free;
  end;
end;

function EntradaRequisicao(codigo:string):boolean;
var
  i : integer;
begin
  result             := false;
  frmbaixaRequisicao := TFrmBaixaRequisicao.Create(application);
  try
    frmbaixarequisicao.tbl  := _locacao;
    frmbaixarequisicao.tp   := _E;
    frmbaixarequisicao.Caption := 'Entrada Requisição';
    frmbaixarequisicao.HideControls;
    frmbaixarequisicao.LoadListBoxProdutos(codigo);
    frmbaixarequisicao.Panel2.Caption := '  PRODUTO                                                                      QUANTIDADE';
    frmbaixarequisicao.showmodal;
    if frmbaixarequisicao.ModalResult <> mrok then
    begin
      exit;
    end;
    for i := 0 to frmbaixarequisicao.clb.Count - 1 do
    begin
      if frmbaixarequisicao.clb.items[i].State = cbschecked then
      begin
        frmbaixarequisicao.itmovto.cdproduto    := trim(copy(frmbaixarequisicao.clb.Items[i].text, 1, 6));
        frmbaixarequisicao.itmovto.qtitem       := trim(copy(frmbaixarequisicao.clb.Items[i].text, 77, 10));
        frmbaixarequisicao.itmovto.cdmovto      := GerarCodigo(_movto);   // Gerar codigo da tabela automaticamente
        frmbaixarequisicao.ValoresToItMovto(frmbaixarequisicao.itmovto.cdproduto);
        try
          frmbaixarequisicao.InsereRegistroMovto  (frmbaixarequisicao.itmovto.cdmovto, dtbancos, frmbaixarequisicao.itmovto.vltotal, codigo, frmBaixaRequisicao.cdit[i]);
          frmbaixarequisicao.InsereRegistroItMovto(frmbaixarequisicao.itmovto);
          ExecutaSQL('update itlocacaoacessorio set cdstitlocacaoacessorio=1 where cdempresa='+empresa.cdempresa.tostring+' and cdlocacao='+codigo+' and cditlocacaoacessorio='+frmBaixaRequisicao.cdit[i]);
        except
          result := false;
        end;
      end;
    end;
    result := true;
  finally
    frmbaixarequisicao.free;
  end;
end;

procedure TfrmBaixaRequisicao.InsereRegistroMovto(cdmovto, dtemissao, vltotal:string; cdlocacao:string=''; cditlocacao:string='');
begin
  if tbl = _requisicao then
  begin
    ExecutaSQL('insert into movto(CDMOVTO,CDTPMOVTO,DTEMISSAO,'+_sqlreg+cdmovto+',4,'+quotedstr(dtemissao)+','+sqlregistra)
  end
  else if tbl = _locacao then
  begin
    if tp = _S then
    begin
      ExecutaSQL('insert into movto(CDMOVTO,CDTPMOVTO,cditlocacaoacessorio,DTEMISSAO,'+_sqlreg+cdmovto+',1,'+cditlocacao+','+quotedstr(dtemissao)+','+sqlregistra)
    end
    else if tp = _E then
    begin
      ExecutaSQL('insert into movto(CDMOVTO,CDTPMOVTO,cditlocacaoacessorio,DTEMISSAO,'+_sqlreg+cdmovto+',2,'+cditlocacao+','+quotedstr(dtemissao)+','+sqlregistra)
    end;
  end;
end;

procedure TfrmBaixaRequisicao.InsereRegistroItMovto(itmovto: Titmovto);
begin
  if tbl = _rim then
  begin
    ExecutaSQL('insert into itmovto(CDMOVTO,cdITMOVTO,CDCNTCUSTO,CDPRODUTO,CDITRIM,cdITLOTE,QTITEM,VLUNITARIO,VLTOTAL,CDDIGITADO,VLSALDOVALOR,'+_sqlreg+
                       itmovto.cdmovto+','+gerarcodigo(_itmovto)+','+itmovto.cdcntcusto+','+itmovto.cdproduto+','+
                       itmovto.cditrim+','+itmovto.cditlote           +','+itmovto.qtitem    +','+fzero(itmovto.vlunitario)+','+
                       fzero(itmovto.vltotal)+','+itmovto.cdproduto     +','+fzero(itmovto.vlsaldovalor)+','+sqlregistra)
  end
  else if tbl = _locacao then
  begin
    ExecutaSQL('insert into itmovto(CDMOVTO,cdITMOVTO,CDPRODUTO,QTITEM,VLUNITARIO,VLTOTAL,CDDIGITADO,VLSALDOVALOR,'+_sqlreg+
                      itmovto.cdmovto+','+gerarcodigo(_itmovto)+','+itmovto.cdproduto+','+itmovto.qtitem +','+fzero(itmovto.vlunitario)+','+
                      fzero(itmovto.vltotal)+','+itmovto.cdproduto+','+fzero(itmovto.vlsaldovalor)+','+sqlregistra);
  end;
end;

procedure TfrmBaixaRequisicao.ValoresToItMovto(cdproduto:string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select vlcustomedio,(vlcustomedio*qtestoque) vltotal,cdalternativo,vlsaldovalor '+
                       'from produto '+
                       'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto);
  try
    frmBaixaRequisicao.itmovto.vlunitario   := substituir(q.q.fieldbyname(_vlcustomedio).AsString, ',', '.');
    frmBaixaRequisicao.itmovto.vltotal      := substituir(q.q.fieldbyname(_vltotal).AsString, ',', '.');
    frmBaixaRequisicao.itmovto.cddigitado   := q.q.fieldbyname(_cdalternativo).AsString;
    frmBaixaRequisicao.itmovto.vlsaldovalor := substituir(q.q.fieldbyname(_vlsaldovalor).AsString, ',', '.');
  finally
    freeandnil(q);
  end;
end;

function TfrmBaixaRequisicao.QtdItemRequisicao(cdrim, cditrim:string):currency;
begin
  result := RetornaSQLCurrency('select qtitem from itrim where cdempresa='+empresa.cdempresa.tostring+' and cdrim='+cdrim+' and cditrim='+cditrim);
end;

function TfrmBaixaRequisicao.QtdJabaixadaItemrequisicao(cdrim, cditrim:string):currency;
begin
  result := RetornaSQLCurrency('select sum(qtitem) from itmovto where cdempresa='+empresa.cdempresa.tostring+' and cdrim='+cdrim+' and cditrim='+cditrim);
end;

procedure TfrmBaixaRequisicao.LoadlistboxProdutos(codigo:string);
var
  q2, q : TClasseQuery;
  qtbaixa, qtitem_itreq : currency;
begin
  clb.Items.Clear;
  q  := TClasseQuery.create;
  q2 := TClasseQuery.create;
  try
    if tbl = _rim then // carregar os produtos
    begin
      q.q.sql.Text := 'select i.cditrequisicao'+
                             ',i.cdproduto'+
                             ',p.nmproduto'+
                             ',i.qtitem'+
                             ',p.qtestoque '+
                       'from itrim i '+
                       'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                       'where i.cdempresa='+empresa.cdempresa.tostring+' and cdstitrim=1 and cdrim='+codigo
    end
    else if tbl = _locacao    then
    begin
      if tp = _S then
      begin
        q.q.sql.text := 'select i.cditlocacaoacessorio'+
                               ',i.cdproduto'+
                               ',p.nmproduto'+
                               ',i.qtitem'+
                               ',p.qtestoque '+
                         'from itlocacaoacessorio i '+
                         'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                         'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdstitlocacaoacessorio=1 and i.cdlocacao='+codigo
      end
      else if tp = _E then
      begin
        q.q.sql.text := 'select i.cditlocacaoacessorio'+
                               ',i.cdproduto'+
                               ',p.nmproduto'+
                               ',i.qtitem'+
                               ',p.qtestoque '+
                         'from itlocacaoacessorio i '+
                         'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                         'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdstitlocacaoacessorio=2 and i.cdlocacao='+codigo;
      end;
    end;
    q.q.open;
    while not q.q.eof do
    begin
      if q.q.fieldbyname(_qtestoque).AsCurrency > 0 then
      begin
        if tbl = _requisicao then
        begin
          // verificar se existe alguma movimentacao com este item da requisicao
          qtitem_itreq   := QtdJabaixadaItemrequisicao(codigo, q.q.fieldbyname(_cd+_it+_rim).Asstring);
          qtbaixa        := q.q.fieldbyname(_qtitem).AsCurrency - qtitem_itreq;
          if qtbaixa > 0 then
          begin
            q2.q.sql.text := 'select cditlote,qtestoque '+
                              'from itlote '+
                              'where cdempresa='+empresa.cdempresa.tostring+' and qtestoque>0 and cdproduto='+q.q.fieldbyname(_cdproduto).Asstring+' '+
                              'order by dtvalidade'; // obter a quantidade do lote
            q2.q.Open;
            while not q2.q.eof do
            begin
              if qtbaixa <= q2.q.fieldbyname(_qtestoque).AsCurrency then
              begin
                clb.Items.Add;
                clb.Items[clb.Items.Count-1].Checked := True;
                clb.Items[clb.Items.Count-1].Text := FormatarTextoEsquerda(q.q.fieldbyname(_cdproduto).Asstring,  6)+' '+
                                                     FormatarTextoDireita (q.q.fieldbyname(_nmproduto).Asstring, 64)+
                                                     FormatarTextoEsquerda(q2.q.fieldbyname(_cditlote).Asstring,  4)+
                                                     FormatarTextoEsquerda(floattostr(qtbaixa)                , 10);
                frmbaixaRequisicao.cdit.add(q.q.fieldbyname(_cd+_it+_rim).Asstring);
                break;
              end;
              qtbaixa := qtbaixa - q2.q.fieldbyname(_qtestoque).AsCurrency;
              clb.Items.Add;
              clb.Items[clb.Items.Count-1].Checked := True;
              clb.Items[clb.Items.Count-1].Text := FormatarTextoEsquerda(q.q.fieldbyname(_cdproduto).Asstring               ,  6)+' '+
                                                   FormatarTextoDireita(q.q.fieldbyname(_nmproduto).Asstring                , 64)+
                                                   FormatarTextoEsquerda(q2.q.fieldbyname(_cditlote).Asstring               ,  4)+
                                                   FormatarTextoEsquerda(floattostr(q2.q.fieldbyname(_qtestoque).AsCurrency), 10);
              frmbaixaRequisicao.cdit.add(q.q.fieldbyname(_cd+_it+_rim).Asstring);
              q2.q.Next;
            end;
          end;
        end
        else if tbl = _locacao then
        begin
          if tp = _S then
          begin
            if q.q.fieldbyname(_qtitem).AsCurrency <= q.q.fieldbyname(_qtestoque).AsCurrency then
            begin
              clb.Items.Add;
              clb.Items[clb.Items.Count-1].Checked := True;
              clb.Items[clb.Items.Count-1].Text := FormatarTextoEsquerda(q.q.fieldbyname(_cdproduto).Asstring,  6)+' '+
                                                   FormatarTextoDireita (q.q.fieldbyname(_nmproduto).Asstring, 68)+
                                                   FormatarTextoEsquerda(floattostr(q.q.fieldbyname(_qtitem).AsCurrency), 10);
              frmbaixaRequisicao.cdit.add(q.q.fieldbyname(_cditlocacaoacessorio).Asstring);
            end;
          end
          else if tp = _E then
          begin
            clb.Items.Add;
            clb.Items[clb.Items.Count-1].Checked := True;
            clb.Items[clb.Items.Count-1].Text := FormatarTextoEsquerda(q.q.fieldbyname(_cdproduto).Asstring,  6)+' '+
                                                 FormatarTextoDireita (q.q.fieldbyname(_nmproduto).Asstring, 68)+
                                                 FormatarTextoEsquerda(floattostr(q.q.fieldbyname(_qtitem).AsCurrency), 10);
            frmbaixaRequisicao.cdit.add(q.q.fieldbyname(_cditlocacaoacessorio).Asstring);
          end;
        end;
      end
      else
      begin
        if tbl = _locacao then
        begin
          if tp = _E then
          begin
            clb.Items.Add;
            clb.Items[clb.Items.Count-1].Checked := True;
            clb.Items[clb.Items.Count-1].Text := FormatarTextoEsquerda(q.q.fieldbyname(_cdproduto).Asstring,  6)+' '+
                                                 FormatarTextoDireita (q.q.fieldbyname(_nmproduto).Asstring, 68)+
                                                 FormatarTextoEsquerda(floattostr(q.q.fieldbyname(_qtitem).AsCurrency), 10);
            frmbaixaRequisicao.cdit.add(q.q.fieldbyname(_cditlocacaoacessorio).Asstring);
          end;
        end;
      end;
      q.q.next;
    end;
  finally
    freeandnil(q);
    freeandnil(q2);
  end;
end;

procedure TfrmBaixaRequisicao.edtcdcntcustoExit(Sender: TObject);
var
  cod: string;
begin
  cod := tedit(sender).text;
  if cod = '' then
  begin
    lblnmcntcusto.Caption := '';
    exit;
  end;
  if not codigoexiste(_cntcusto, cod) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cod, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    tedit(sender).setfocus;
    abort;
  end;
  lblnmcntcusto.Caption := nomedocodigo(_cntcusto, cod);
end;

procedure TfrmBaixaRequisicao.edtcdcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcntcustoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmBaixaRequisicao.edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmBaixaRequisicao.btnokClick(Sender: TObject);
begin
  if (tbl = _requisicao) and (edtcdcntcusto.text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Centro_de_Custo]), mtinformation, [mbok], 0);
    edtcdcntcusto.SetFocus;
    abort;
  end;
  ModalResult := mrok;
end;

procedure TfrmBaixaRequisicao.FormCreate(Sender: TObject);
begin
  cdit := TStringList.create;
end;

procedure TfrmBaixaRequisicao.FormDestroy(Sender: TObject);
begin
  freeandnil(cdit);
end;

procedure TfrmBaixaRequisicao.clbKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #32 then
  begin
    if clb.ItemIndex = clb.Items.Count -1 then clb.Selected[0]                 := true
                                          else clb.Selected[clb.ItemIndex + 1] := true;
    key := #0;
  end;
end;

procedure TfrmBaixaRequisicao.HideControls;
begin
  edtdtsaida.Visible      := false;
  lbldtsaida.Visible      := false;
  lblcntcusto.Visible     := false;
  edtcdcntcusto.Visible   := false;
  lblnmcntcusto.Visible   := false;
  bvl.Visible             := false;
end;

procedure TfrmBaixaRequisicao.edtcdcntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cod : integer;
begin
  cod := Localizar(_cntcusto);
  if cod = 0 then
  begin
    exit;
  end;
  edtcdcntcusto.text    := cod.tostring;
  lblnmcntcusto.caption := qregistro.NomedoCodigo(_cntcusto, cod);
end;

procedure TfrmBaixaRequisicao.clbClickCheck(Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
var
  i : integer;
begin
  btnok.Enabled := false;
  if (edtcdcntcusto.Text = '') and (tbl = _requisicao) then
  begin
    exit;
  end;
  for i:=0 to clb.Items.Count - 1 do
  begin
    if clb.items[i].State = cbschecked then
    begin
      btnok.Enabled := true;
    end;
  end;
end;

end.

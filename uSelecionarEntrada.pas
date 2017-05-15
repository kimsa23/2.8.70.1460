unit uSelecionarEntrada;

interface

uses forms, Buttons, StdCtrls, ExtCtrls, ComCtrls, Controls,
  classeempresa, Classes, Grids, sysutils, dialogs,
  DB,
  uConstantes,
  classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TfrmSelecionarEntrada = class(TForm)
    btnOk: TButton;
    btnCancelar: TButton;
    Bevel1: TBevel;
    tbvpedido: TcxGridDBTableView;
    glv: TcxGridLevel;
    grd: TcxGrid;
    tbvduplicata: TcxGridDBTableView;
    tbventrada: TcxGridDBTableView;
    tbvpedidoNUPEDIDO: TcxGridDBColumn;
    tbvpedidoCDDIGITADO: TcxGridDBColumn;
    tbvpedidoNMPRODUTO: TcxGridDBColumn;
    tbvpedidoQTITEM: TcxGridDBColumn;
    tbvpedidoQTATENDIDA: TcxGridDBColumn;
    tbvpedidoVLUNITARIO: TcxGridDBColumn;
    tbvpedidoVLTOTAL: TcxGridDBColumn;
    tbvduplicataNUDUPLICATA: TcxGridDBColumn;
    tbvduplicataDTEMISSAO: TcxGridDBColumn;
    tbvduplicataCDCLIENTE: TcxGridDBColumn;
    tbvduplicataNMCLIENTE: TcxGridDBColumn;
    tbvduplicataVLDUPLICATA: TcxGridDBColumn;
    tbventradaNUENTRADA: TcxGridDBColumn;
    tbventradaDTEMISSAO: TcxGridDBColumn;
    tbventradaDTSAIDA: TcxGridDBColumn;
    tbventradaNMREDUZIDO: TcxGridDBColumn;
    tbventradaVLTOTAL: TcxGridDBColumn;
    tbventradaNMFORNECEDOR: TcxGridDBColumn;
    tbventradaNMCLIENTE: TcxGridDBColumn;
    tbvsaida: TcxGridDBTableView;
    tbvsaidaNUSAIDA: TcxGridDBColumn;
    tbvsaidaNMSERIE: TcxGridDBColumn;
    tbvsaidaDTEMISSAO: TcxGridDBColumn;
    tbvsaidaDTSAIDA: TcxGridDBColumn;
    tbvsaidaNMREDUZIDO: TcxGridDBColumn;
    tbvsaidaVLTOTAL: TcxGridDBColumn;
    tbvsaidaNMCLIENTE: TcxGridDBColumn;
    tbvsaidaNMFORNECEDOR: TcxGridDBColumn;
    tbvpedidoDTPRVENTREGA: TcxGridDBColumn;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private   { Private declarations }
    q : TClasseQuery;
    dts : TDataSource;
    tipo : string;
    nuentrada : string;
    cdproduto : integer;
    function  makesql:string;
    procedure setdados(tipo_:string; nuentrada_: string; cdproduto_:integer);
    function get_titulo:string;
    function get_gridview:TcxCustomGridView;
  public    { Public declarations }
  end;

function Selecionar_Entrada(tipo: string; nuentrada:string; cdproduto:integer=0):integer;

var
  frmSelecionarEntrada: TfrmSelecionarEntrada;

implementation

{$R *.DFM}

function Selecionar_Entrada(tipo: string; nuentrada:string; cdproduto:integer=0):integer;
begin
  frmSelecionarEntrada := TfrmSelecionarEntrada.Create(nil);
  try
    frmSelecionarEntrada.setdados(tipo, nuentrada, cdproduto);
    frmSelecionarEntrada.showmodal;
    if frmSelecionarEntrada.ModalResult = mrok then
    begin
      result := frmSelecionarEntrada.q.q.fieldbyname(_cd+tipo).asinteger;
    end;
  finally
    freeandnil(frmSelecionarEntrada);
  end;
end;

procedure TfrmSelecionarEntrada.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

function TfrmSelecionarEntrada.makesql: string;
begin
  if tipo = _itpedido then
  begin
    result := 'select p.nupedido'+
                    ',i.cditpedido'+
                    ',i.cddigitado'+
                    ',pr.nmproduto'+
                    ',i.qtitem'+
                    ',i.DTPRVENTREGA'+
                    ',i.qtatendida'+
                    ',i.vlunitario'+
                    ',i.vltotal '+
              'from pedido p '+
              'left join itpedido i on i.cdpedido=p.cdpedido and p.cdempresa=i.cdempresa '+
              'left join produto pr on pr.cdproduto=i.cdproduto and pr.cdempresa=i.cdempresa '+
              'where p.cdempresa='+empresa.cdempresa.ToString+' and p.cdpedido='+nuentrada+' and i.cdproduto='+cdproduto.ToString;
  end
  else if tipo = _itorcamento then
  begin
    result := 'select o.cdorcamento'+
                    ',i.cditorcamento'+
                    ',i.cddigitado'+
                    ',pr.nmproduto'+
                    ',i.qtitem'+
                    ',i.QTAPROVADO qtatendida'+
                    ',i.DTPRVENTREGA'+
                    ',i.vlunitario'+
                    ',i.vltotal '+
              'from orcamento o '+
              'left join itorcamento i on i.cdorcamento=o.cdorcamento and o.cdempresa=i.cdempresa '+
              'left join produto pr on pr.cdproduto=i.cdproduto and pr.cdempresa=i.cdempresa '+
              'where o.cdempresa='+empresa.cdempresa.ToString+' and o.cdorcamento='+nuentrada+' and i.cdproduto='+cdproduto.ToString;
  end
  else if tipo = _duplicata then
  begin
    result := 'select nuduplicata'+
                    ',d.dtemissao'+
                    ',d.cdcliente'+
                    ',c.nmcliente'+
                    ',d.vlduplicata'+
                    ',d.cdduplicata '+
              'from duplicata d '+
            'left join cliente c on c.cdcliente=d.cdcliente and d.cdempresa=c.cdempresa '+
            'where d.cdempresa='+empresa.cdempresa.ToString+' and nuduplicata='+quotedstr(nuentrada)+' '+
            'order by d.dtemissao desc';
  end
  else if tipo = _entrada then
  begin
    result := 'SELECT NUENTRADA'+
                    ',s.DTEMISSAO'+
                    ',s.dtsaida'+
                    ',t.NMREDUZIDO'+
                    ',s.vltotal'+
                    ',F.NMFORNECEDOR'+
                    ',C.NMCLIENTE'+
                    ',s.CDENTRADA '+
             'FROM ENTRADA s '+
             'LEFT JOIN TPENTRADA t ON T.CDTPENTRADA=s.CDTPENTRADA and s.cdempresa=t.cdempresa '+
             'LEFT JOIN CLIENTE c ON C.CDCLIENTE=s.CDCLIENTE and c.cdempresa=s.cdempresa '+
             'LEFT JOIN FORNECEDOR f ON F.CDFORNECEDOR=s.CDFORNECEDOR and f.cdempresa=s.cdempresa '+
             'WHERE s.cdempresa='+empresa.cdempresa.ToString+' and NUENTRADA='+nuentrada+' '+
             'order by s.dtemissao desc';
  end
  else if tipo = _saida then
  begin
    result := 'SELECT NUSAIDA'+
                    ',se.nmserie'+
                    ',s.DTEMISSAO'+
                    ',s.dtsaida'+
                    ',t.NMREDUZIDO'+
                    ',s.vltotal'+
                    ',F.NMFORNECEDOR'+
                    ',C.NMCLIENTE'+
                    ',s.CDSAIDA '+
              'FROM SAIDA s '+
              'left join serie se on se.cdserie=s.cdserie and se.cdempresa=s.cdempresa '+
              'LEFT JOIN TPSAIDA t ON T.CDTPSAIDA=s.CDTPSAIDA and s.cdempresa=t.cdempresa '+
              'LEFT JOIN CLIENTE c ON C.CDCLIENTE=s.CDCLIENTE and c.cdempresa=s.cdempresa '+
              'LEFT JOIN FORNECEDOR f ON F.CDFORNECEDOR=s.CDFORNECEDOR and f.cdempresa=s.cdempresa '+
              'WHERE s.cdempresa='+empresa.cdempresa.ToString+' and NUSAIDA='+nuentrada+' '+
              'order by s.dtemissao desc';
  end;
end;

procedure TfrmSelecionarEntrada.setdados(tipo_:string; nuentrada_: string; cdproduto_: integer);
begin
  tipo      := tipo_;
  nuentrada := nuentrada_;
  cdproduto := cdproduto_;
  q.q.Open(makesql);
  caption      := get_titulo;
  glv.GridView := get_gridview;
end;

procedure TfrmSelecionarEntrada.FormCreate(Sender: TObject);
begin
  q                                      := TClasseQuery.create;
  dts                                    := TDataSource.Create(nil);
  dts.DataSet                            := q.q;
  q.q.UpdateOptions.ReadOnly             := True;
  tbvpedido.DataController.DataSource    := dts;
  tbvduplicata.DataController.DataSource := dts;
  tbvsaida.DataController.DataSource     := dts;
  tbventrada.DataController.DataSource   := dts;
end;

procedure TfrmSelecionarEntrada.FormDestroy(Sender: TObject);
begin
  q.Free;
  dts.Free;
end;

function TfrmSelecionarEntrada.get_titulo: string;
begin
       if tipo = _itpedido    then result := 'Selecionar Pedido'
  else if tipo = _duplicata   then result := 'Selecionar Contas a Receber'
  else if tipo = _saida       then result := 'Selecionar Nota Fiscal'
  else if tipo = _itorcamento then result := 'Selecionar Item do Orçamento'
                              else result := 'Selecionar Compra';
end;

function TfrmSelecionarEntrada.get_gridview: TcxCustomGridView;
begin
       if tipo = _itpedido    then result := tbvpedido
  else if tipo = _duplicata   then result := tbvduplicata
  else if tipo = _saida       then result := tbvsaida
  else if tipo = _itorcamento then
  begin
    result := tbvpedido;
    tbvpedidoNUPEDIDO.caption := 'Orçamento';
    tbvpedidoNUPEDIDO.DataBinding.FieldName := _cdorcamento;
  end
                              else result := tbventrada;
end;

end.


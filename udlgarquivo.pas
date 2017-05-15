unit udlgarquivo;

interface

uses
  System.Actions, System.UITypes,
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ActnList, Dialogs, ShellAPI,
  dxBar, cxClasses, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, ComCtrls, cxControls,
  cxContainer, cxEdit, cxListView, cxButtons,
  uDBMemo,
  classearquivo, classeexecutasql, classeempresa,
  uConstantes;

type
  Tfrmdlgarquivo = class(TForm)
    dxBarManager1: TdxBarManager;
    act: TActionList;
    dxBarManager1Bar1: TdxBar;
    actnovo: TAction;
    dxBarButton1: TdxBarButton;
    actexportar: TAction;
    dxBarButton2: TdxBarButton;
    actexcluir: TAction;
    dxBarButton3: TdxBarButton;
    actvisualizar: TAction;
    dxBarButton4: TdxBarButton;
    actobservacao: TAction;
    dxBarButton5: TdxBarButton;
    btnok: TcxButton;
    btncancelar: TcxButton;
    lsvarquivo: TcxListView;
    procedure actnovoExecute(Sender: TObject);
    procedure actexportarExecute(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure actvisualizarExecute(Sender: TObject);
    procedure actobservacaoExecute(Sender: TObject);
    procedure lsvarquivoClick(Sender: TObject);
    procedure lsvarquivoExit(Sender: TObject);
    procedure lsvarquivoDblClick(Sender: TObject);
  private { Private declarations }
    codigo : string;
    tbl : string;
    function ObterCaminho:string;
    procedure CarregarArquivos;
  public { Public declarations }
  end;

var
  frmdlgarquivo: Tfrmdlgarquivo;

procedure dlgarquivo(tbl, codigo:string);

implementation

uses uDtmMain;

{$R *.dfm}

procedure dlgarquivo(tbl, codigo:string);
begin
  frmdlgarquivo := Tfrmdlgarquivo.Create(Application);
  try
    frmdlgarquivo.tbl := tbl;
    frmdlgarquivo.codigo := codigo;
    frmdlgarquivo.CarregarArquivos;
    frmdlgarquivo.ShowModal;
  finally
    FreeAndNil(frmdlgarquivo);
  end;
end;

procedure Tfrmdlgarquivo.actnovoExecute(Sender: TObject);
begin
  if AdicionarArquivoCaminho(codigo, tbl+_arquivo, tbl, _dsarquivo) then
  begin
    CarregarArquivoBanco(tbl+_arquivo, _cd+tbl+'='+codigo, lsvarquivo, 12);
    if lsvarquivo.Items.Count > 0 then
    begin
      Caption := 'Arquivos ('+IntToStr(lsvarquivo.Items.Count)+')';
    end;
  end;
end;

procedure Tfrmdlgarquivo.actexportarExecute(Sender: TObject);
begin
  Exportar_Arquivo_Banco(tbl, lsvarquivo.Selected.SubItems[0]);
end;

procedure Tfrmdlgarquivo.actexcluirExecute(Sender: TObject);
var
  i : integer;
begin
  if MessageDlg('Tem certeza que deseja excluir o arquivo?', mtConfirmation, [mbyes, mbno], 0) = mrno then
  begin
    exit;
  end;
  while lsvarquivo.SelCount > 0 do // verifica se existe algum arquivo selecionado
  begin
    for i := 0 to lsvarquivo.Items.Count - 1 do
    begin
      if lsvarquivo.Items[i].Selected then // extrai o numero do item
      begin
        ExecutaSQL('delete from '+tbl+_arquivo+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+_arquivo+'='+lsvarquivo.Items[i].SubItems[0]);
        DeleteFile(pchar(ObterCaminho+'\'+lsvarquivo.Items[i].SubItems[0]+'.'+_jpg));
        lsvarquivo.Items.Delete(i);
        if lsvarquivo.Items.Count > 0 then
        begin
          Caption := 'Arquivos ('+IntToStr(lsvarquivo.Items.Count)+')';
        end;
        break;
      end;
    end;
  end;
end;

procedure Tfrmdlgarquivo.actvisualizarExecute(Sender: TObject);
var
  nmextensao, caminho : string;
begin
  nmextensao := ExtractFileExt(lsvarquivo.Selected.Caption);
  caminho    := ObterCaminho+'\'+lsvarquivo.Selected.SubItems[0] + nmextensao;
  if fileExists(caminho) then
  begin
    ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure Tfrmdlgarquivo.actobservacaoExecute(Sender: TObject);
begin
  if lsvarquivo.SelCount <= 0 then
  begin
    exit;
  end;
  TrabalharMemo(tbl+_arquivo, _dsarquivo, _cd+tbl, _cd+tbl+_arquivo, codigo, lsvarquivo.Selected.SubItems[0], _dsobservacao, 'Observação');
  CarregarArquivoBanco(tbl+_arquivo, _cd+tbl+'='+codigo, lsvarquivo, 12);
  actexcluir.Enabled    := false;
  actvisualizar.Enabled := False;
  actobservacao.Enabled := false;
  actexportar.Enabled   := false;
end;

procedure Tfrmdlgarquivo.lsvarquivoClick(Sender: TObject);
begin
  actexcluir.Enabled    := lsvarquivo.SelCount > 0;
  actvisualizar.Enabled := lsvarquivo.SelCount > 0;
  actobservacao.Enabled := lsvarquivo.SelCount > 0;
  actexportar.Enabled   := lsvarquivo.SelCount > 0;
end;

procedure Tfrmdlgarquivo.lsvarquivoExit(Sender: TObject);
begin
  actexcluir.Enabled    := false;
  actvisualizar.Enabled := False;
  actobservacao.Enabled := false;
  actexportar.Enabled   := false;
end;

procedure Tfrmdlgarquivo.CarregarArquivos;
begin
  carregarArquivoBanco(tbl+_arquivo, _cd+tbl+'='+codigo, lsvarquivo, 12);
  if lsvarquivo.Items.Count > 0 then
  begin
    Caption := 'Arquivos ('+IntToStr(lsvarquivo.Items.Count)+')';
  end;
  actexcluir.Enabled    := false;
  actvisualizar.Enabled := False;
  actobservacao.Enabled := false;
  actexportar.Enabled   := false;
end;

procedure Tfrmdlgarquivo.lsvarquivoDblClick(Sender: TObject);
begin
  if actvisualizar.enabled then
  begin
    actvisualizarExecute(actvisualizar);
  end;
end;

function Tfrmdlgarquivo.ObterCaminho: string;
begin
  if tbl = _produto then
  begin
    result := empresa.material.produto.dspath
  end
  else if tbl = _funcionario then
  begin
    result := empresa.funcionario.dspath
  end
  else if tbl = _orcamento then
  begin
    result := empresa.comercial.orcamento.dspath
  end
  else if tbl = _ordcompra then
  begin
    result := empresa.aquisicao.ordcompra.dspath
  end
  else if tbl = _tarefa then
  begin
    result := empresa.tarefa.dspath
  end
  else if tbl = _pedido then
  begin
    result := empresa.comercial.pedido.dspath
  end
  else if tbl = _ordproducao then
  begin
    result := empresa.producao.ordproducao.dspath
  end
  else if tbl = _equipamento then
  begin
    result := empresa.equipamento.dspath
  end
  else if tbl = _metrologia then
  begin
    result := Empresa.equipamento.metrologia.dspath
  end
  else if tbl = _ordserv then
  begin
    result := empresa.ordserv.dspathordserv
  end
  else if tbl = _projeto then
  begin
    result := empresa.projeto.dspath;
  end;
end;

end.

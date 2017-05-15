unit urelease;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTreeView, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxDBLookupComboBox, cxSplitter, Vcl.ExtCtrls, dxBar, System.Actions,
  Vcl.ActnList, dxBarBuiltInMenu, cxPC, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxMemo, cxDBEdit, Vcl.Menus, cxButtons, system.UITypes,
  dxDateTimeWheelPicker, cxCalendar;

type
  TfrmRelease = class(TForm)
    dts: TDataSource;
    qry: TFDQuery;
    dtsqptpchamado: TDataSource;
    qryqptpchamado: TFDQuery;
    dtsqpstchamado: TDataSource;
    qryqpstchamado: TFDQuery;
    dtsqptela: TDataSource;
    qryqptela: TFDQuery;
    bmg: TdxBarManager;
    bmgBar1: TdxBar;
    pnltela: TPanel;
    trv: TcxTreeView;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvcdqptpchamado: TcxGridDBColumn;
    tbvCDTAREFA: TcxGridDBColumn;
    tbvcdqptela: TcxGridDBColumn;
    tbvcdqpstchamado: TcxGridDBColumn;
    tbvcdqpversao: TcxGridDBColumn;
    tbvdsqpchamado: TcxGridDBColumn;
    lvl: TcxGridLevel;
    spl: TcxSplitter;
    act: TActionList;
    actNovo: TAction;
    actqptela: TAction;
    actqpstchamado: TAction;
    actqptpchamado: TAction;
    actqpversao: TAction;
    actqpacompanhamento: TAction;
    btnnovo: TdxBarButton;
    btntela: TdxBarButton;
    btnAcompanhamento: TdxBarButton;
    btnVersao: TdxBarButton;
    btnStatus: TdxBarButton;
    btnTipo: TdxBarButton;
    actEditar: TAction;
    btnEditar: TdxBarButton;
    pgc: TcxPageControl;
    tbsChamado: TcxTabSheet;
    tbvqptela: TcxGridDBTableView;
    tbvqpstchamado: TcxGridDBTableView;
    tbvqptpchamado: TcxGridDBTableView;
    tbvqpversao: TcxGridDBTableView;
    tbvqpstchamadocdqpstchamado: TcxGridDBColumn;
    tbvqpstchamadonmqpstchamado: TcxGridDBColumn;
    tbvqptelacdqptela: TcxGridDBColumn;
    tbvqptelanmqptela: TcxGridDBColumn;
    tbvqptpchamadocdqptpchamado: TcxGridDBColumn;
    tbvqptpchamadonmqptpchamado: TcxGridDBColumn;
    dtsqpversao: TDataSource;
    qryqpversao: TFDQuery;
    tbvqpversaocdqpversao: TcxGridDBColumn;
    tbvqpversaotsdisponivel: TcxGridDBColumn;
    tbvqpversaocdqpstversao: TcxGridDBColumn;
    tbvqpversaonuversao: TcxGridDBColumn;
    tbvqpversaots: TcxGridDBColumn;
    dtsqpstversao: TDataSource;
    qryqpstversao: TFDQuery;
    actok: TAction;
    actcancelar: TAction;
    lblqptela: TLabel;
    cbxcdqptela: TcxDBLookupComboBox;
    lblqptpchamado: TLabel;
    cbxcdqptpchamado: TcxDBLookupComboBox;
    cbxcdqpstchamado: TcxDBLookupComboBox;
    lblqpstchamado: TLabel;
    memdsqpchamado: TcxDBMemo;
    lbldsqpchamado: TLabel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    qryclientes: TFDQuery;
    dtsclientes: TDataSource;
    lblcnpj: TLabel;
    cbxcnpj: TcxDBLookupComboBox;
    tbvcdqpchamado: TcxGridDBColumn;
    lblqpversao: TLabel;
    cbxcdqpversao: TcxDBLookupComboBox;
    edtcdtarefa: TcxDBTextEdit;
    lblcdtarefa: TLabel;
    procedure FormShow(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure actqptelaExecute(Sender: TObject);
    procedure actqpstchamadoExecute(Sender: TObject);
    procedure actqptpchamadoExecute(Sender: TObject);
    procedure actqpversaoExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actqpacompanhamentoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actokExecute(Sender: TObject);
    procedure actcancelarExecute(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
  private { Private declarations }
    procedure AbrirTabelas;
    procedure CarregarVersoes;
    procedure CarregarChamados(no: TTreeNode);
    procedure CarregarMeusChamados;
    procedure CarregarChamadosEmAberto;
    procedure CarregarChamadosEmpresa;
    procedure ConfigurarQueryReadOnly;
    function SomenteQuipos:Boolean;
    procedure AtivarChamado(status:Boolean);
  public { Public declarations }
  end;

var
  frmRelease: TfrmRelease;

procedure Exibir;

implementation

uses
  classequery, uDtmMain, classeempresa, classeusuario;

{$R *.dfm}

procedure Exibir;
begin
  frmRelease := TfrmRelease.Create(nil);
  try
    frmRelease.ShowModal;
  finally
    FreeAndNil(frmrelease);
  end;
end;

procedure TfrmRelease.AbrirTabelas;
begin
  if SomenteQuipos then
  begin
    qryclientes.Open;
  end;
  qryqpstversao.Open;
  qryqpversao.Open;
  qryqptpchamado.Open;
  qryqpstchamado.Open;
  qryqptela.Open;
end;

procedure TfrmRelease.actcancelarExecute(Sender: TObject);
begin
  qry.Cancel;
  AtivarChamado(False);
end;

procedure TfrmRelease.actEditarExecute(Sender: TObject);
begin
  AtivarChamado(true);
  qry.Edit;
end;

procedure TfrmRelease.actNovoExecute(Sender: TObject);
begin
  AtivarChamado(true);
  qry.Insert;
  qry.FieldByName('cdqptpchamado').AsInteger := 1;
  qry.FieldByName('cdqpstchamado').AsInteger := 1;
end;

procedure TfrmRelease.actokExecute(Sender: TObject);
begin
  if memdsqpchamado.Lines.Text.Trim = '' then
  begin
    MessageDlg('Descrição do chamado é um campo obrigatório.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if cbxcnpj.Text = '' then
  begin
    qry.FieldByName('cnpj').AsString := empresa.nucnpj;
  end;
  qry.Post;
  AtivarChamado(false);
end;

procedure TfrmRelease.actqpacompanhamentoExecute(Sender: TObject);
begin
  //
end;

procedure TfrmRelease.actqpstchamadoExecute(Sender: TObject);
begin
  lvl.GridView := tbvqpstchamado;
end;

procedure TfrmRelease.actqptelaExecute(Sender: TObject);
begin
  lvl.GridView := tbvqptela;
end;

procedure TfrmRelease.actqptpchamadoExecute(Sender: TObject);
begin
  lvl.GridView := tbvqptpchamado;
end;

procedure TfrmRelease.actqpversaoExecute(Sender: TObject);
begin
  lvl.GridView := tbvqpversao;
end;

procedure TfrmRelease.AtivarChamado(status: Boolean);
begin
  pgc.Visible                := status;
  grd.Enabled                := not status;
  trv.Enabled                := not status;
  actnovo.Enabled            := not status;
  qry.UpdateOptions.ReadOnly := not status;
end;

procedure TfrmRelease.CarregarChamados(no: TTreeNode);
begin
  qry.Close;
  qry.Open('select qpchamado.* '+
           'from qpchamado '+
           'left join qpversao on qpversao.cdqpversao=qpchamado.cdqpversao '+
           'where qpversao.nuversao='+Copy(no.Text, 1, 11).QuotedString);
  //qry.UpdateOptions.ReadOnly := not SomenteQuipos;
  tbvcdqpversao.Visible := false;
end;

procedure TfrmRelease.CarregarChamadosEmAberto;
begin
  qry.Close;
  qry.Open('select qpchamado.* from qpchamado where not cdqpstchamado in (2,6)');
  //qry.UpdateOptions.ReadOnly := false;
  tbvcdqpversao.Visible := false;
end;

procedure TfrmRelease.CarregarChamadosEmpresa;
begin
  qry.Close;
  qry.Open('select * from qpchamado where cnpj='+empresa.nucnpj.QuotedString);
  //qry.UpdateOptions.ReadOnly := not somenteQuipos;
  tbvcdqpversao.Visible := True;
end;

procedure TfrmRelease.CarregarMeusChamados;
var
  no : TTreeNode;
begin
  no := trv.Items.Add(nil, 'Chamados');
  trv.Items.AddChild(no, 'da '+empresa.nmempresa);
  trv.Items.AddChild(no, 'Em aberto');
end;

procedure TfrmRelease.CarregarVersoes;
var
  q : TClasseQuery;
  texto : string;
  no : TTreeNode;
begin
  no := trv.Items.Add(nil, 'Versão');
  q := TClasseQuery.create;
  try
    q.q.Connection := dtmmain.consite;
    q.q.SQL.Text := 'SELECT qpversao.nuversao,qpversao.tsdisponivel,qpstversao.nmqpstversao '+
                    'FROM qpversao '+
                    'left join qpstversao on qpstversao.cdqpstversao=qpversao.cdqpstversao '+
                    'ORDER BY qpversao.NUVERSAO desc';
    q.q.Open;
    while not q.q.Eof do
    begin
      texto := q.q.FieldByName('nuversao').AsString + ' - ';
      if q.q.FieldByName('tsdisponivel').IsNull then
      begin
        texto := texto + q.q.FieldByName('nmqpstversao').AsString;
      end
      else
      begin
        texto := texto + q.q.FieldByName('tsdisponivel').AsString;
      end;
      trv.Items.AddChild(no, texto);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TfrmRelease.ConfigurarQueryReadOnly;
begin
  qry.fetchOptions.Mode := fmOnDemand;
  qry.FetchOptions.RowsetSize := 5;
  tbv.DataController.DataModeController.GridModeBufferCount := 5;
end;

procedure TfrmRelease.FormShow(Sender: TObject);
begin
  lblcdtarefa.Visible    := SomenteQuipos;
  edtcdtarefa.Visible    := SomenteQuipos;
  lblcnpj.Visible        := SomenteQuipos;
  cbxcnpj.Visible        := SomenteQuipos;
  lblqpversao.Visible    := SomenteQuipos;
  cbxcdqpversao.Visible  := SomenteQuipos;
  actqptela.Visible      := SomenteQuipos;
  actqpstchamado.Visible := SomenteQuipos;
  actqptpchamado.Visible := SomenteQuipos;
  actqpversao.Visible    := SomenteQuipos;
  pgc.Visible            := False;
  ConfigurarQueryReadOnly;
  AbrirTabelas;
  CarregarMeusChamados;
  CarregarVersoes;
end;

procedure TfrmRelease.qryAfterScroll(DataSet: TDataSet);
begin
  actEditar.Visible := actNovo.Visible and (not (DataSet.FieldByName('cdqpstchamado').AsInteger in [2, 3, 4]));
  if SomenteQuipos then
  begin
    actEditar.Visible := True;
  end;
end;

function TfrmRelease.SomenteQuipos: Boolean;
begin
  result := (empresa.rzsocial = 'QUIPOS TECNOLOGIA LTDA') and ((usuario.usulogin = 'PAULO') or (usuario.usulogin = 'FABIO'));
end;

procedure TfrmRelease.trvChange(Sender: TObject; Node: TTreeNode);
begin
  actNovo.Visible := false;
  if (trv.Selected.Count = 0) and (trv.Selected.Level = 1) then
  begin
    if trv.Selected.Parent.Text = 'Versão' then
    begin
      CarregarChamados(trv.Selected);
      lvl.GridView := tbv;
    end
    else
    begin
      lvl.GridView := tbv;
      if trv.Selected.Text = 'Em aberto' then
      begin
        CarregarChamadosEmAberto;
      end
      else
      begin
        CarregarChamadosEmpresa;
        actNovo.Visible := True;
      end;
    end;
  end;
end;

end.

unit umudaretapa;

interface

uses
  forms, dialogs, sysutils, Controls, StdCtrls, ExtCtrls, Buttons, Classes,
  idglobal,
  sqlexpr,
  uregistro, uconstantes, udatahora,
  classeaplicacao, classeretornasql, classeempresa, classeexecutasql, classeusuario, classeordserv, classequery;

type
  Tfrmmudaretapa = class(TForm)
    lblatual: TLabel;
    edt: TEdit;
    Label9: TLabel;
    cbx: TComboBox;
    btnok: TBitBtn;
    BitBtn2: TBitBtn;
    procedure cbxChange(Sender: TObject);
  private { Private declarations }
    codigo:Integer;
    tabela: string;
    procedure Preenchercbx;
    procedure Configurar(tabela_:string; codigo_:integer);
    function makesql:string;
  public    { Public declarations }
  end;

function DlgMudardePara(tabela:string; codigo:Integer=0):Integer;

var
  frmmudaretapa: Tfrmmudaretapa;

implementation

{$R *.DFM}

function DlgMudardePara(tabela:string; codigo:integer=0):integer;
begin
  result := 0;
  frmmudaretapa := Tfrmmudaretapa.Create(nil);
  try
    frmmudaretapa.Configurar(tabela, codigo);
    frmMudarEtapa.ShowModal;
    if frmMudarEtapa.ModalResult = mrok then
    begin
      result := QRegistro.CodigodoNomeInteiro(tabela, frmMudarEtapa.cbx.text);
    end;
  finally
    freeandnil(frmMudarEtapa);
  end;
end;

procedure Tfrmmudaretapa.Configurar(tabela_: string; codigo_: integer);
begin
  codigo := codigo_;
  tabela := tabela_;
  edt.Visible := codigo <> 0;
  lblatual.Visible := codigo <> 0;
  if edt.Visible then
  begin
    edt.text := qregistro.nomedocodigo(tabela, codigo);
  end;
  Preenchercbx;
end;

function Tfrmmudaretapa.makesql: string;
begin
  result := 'select nm'+tabela+' from '+tabela+' where cdempresa='+empresa.cdempresa.tostring;
  if codigo <> 0 then
  begin
    result := result + ' and cd'+tabela+'<>'+inttostr(codigo);
  end;
end;

procedure Tfrmmudaretapa.Preenchercbx;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open(makesql);
    cbx.Items.Clear;
    while not q.q.eof do
    begin
      cbx.Items.Add(q.q.fieldbyname(_nm+tabela).asstring);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmmudaretapa.cbxChange(Sender: TObject);
begin
  btnok.Enabled := cbx.Text <> '';
end;

end.

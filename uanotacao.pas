unit uanotacao;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, Menus, ExtCtrls, StdCtrls, Buttons, ComCtrls, ActnList,
  sqlexpr,
  udatahora, uregistro, uconstantes,
  classeempresa, classeusuario, classeretornasql, classeaplicacao, classequery,
  cxLookAndFeelPainters, cxGraphics, cxMaskEdit, cxDropDownEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, cxButtons, cxLookAndFeels, cxPC;

type
  TfrmAnotacao = class(TForm)
    Label1: TLabel;
    cbx: TcxComboBox;
    rce: TcxRichEdit;
    btncancelar: TcxButton;
    btnok: TcxButton;
    procedure btnokClick(Sender: TObject);
    procedure cbxPropertiesChange(Sender: TObject);
  private    { Private declarations }
    function Assinatura_Anotacao:string;
    procedure Inicializar;
  public { Public declarations }
  end;

function Anotacao(var rce:TRichEdit; cdcodigo, tbl : string):boolean;

var
  frmAnotacao: TfrmAnotacao;

implementation

uses DB, uRichEdit;

{$R *.dfm}

function TFrmAnotacao.Assinatura_Anotacao:string;
begin
  result := 'Assinatura: '+usuario.nmusuario+#13#10;
  if qregistro.CodigodoNome(_funcionario, usuario.nmusuario) <> '' then
  begin
    result := result+RetornaSQLString('select nmfuncao '+
                                      'from funcao N '+
                                      'left join funcionario F on f.cdfuncao=N.cdfuncao '+
                                      'where F.CDEMPRESA='+empresa.cdempresa.tostring+' and nmfuncionario='+quotedstr(usuario.nmusuario))+#13#10;
  end;
end;

function Anotacao(var rce:TRichEdit; cdcodigo, tbl : string):boolean;
begin
  frmanotacao := tfrmanotacao.Create(Application);
  try
    frmanotacao.Inicializar;
    frmanotacao.ShowModal;
    if frmanotacao.ModalResult <> mrok then
    begin
      result := false;
      exit;
    end;
    if lowercase(tbl) = _itagenda then
    begin
      rce.Lines.Add('');
      rce.SelAttributes.Style := [fsbold, fsunderline];
      rce.SelAttributes.Size  := 12;
      rce.SelText             := DtServer+' '+HrServer+' '+uppercase(frmanotacao.cbx.Text)+' (Status: '+NomedoCodigo(_st+_it+_agenda, cdcodigo)+')'#13#10#13#10;
      rce.SelAttributes.Style := [];
      rce.SelAttributes.Size  := 10;
      rce.SelText := frmanotacao.rce.Text+#13#10#13#10;
      //  assinatura
      rce.SelAttributes.Style := [fsbold];
      rce.SelText := frmanotacao.Assinatura_Anotacao;
    end
    else if lowercase(tbl) = _ordserv then
    begin
      rce.PlainText := False;
      rce.Lines.Add('');
      rce.SelAttributes.Style := [fsbold, fsunderline];
      rce.SelAttributes.Size  := 12;
      rce.SelText             := DtServer+' '+HrServer+' '+uppercase(frmanotacao.cbx.Text)+
                                 ' (Status: '+RetornaSQLString('select nmstordserv from stordserv s left join ordserv o on o.cdstordserv=s.cdstordserv where o.cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+cdcodigo)+
                                 ' - Etapa: '+RetornaSQLString('select nmetapa from etapa e left join ordserv o on o.cdetapa=e.cdetapa where o.cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+cdcodigo)+')'#13#10#13#10;
      rce.SelAttributes.Style := [];
      rce.SelAttributes.Size  := 10;
      rce.SelText             := frmanotacao.rce.Text+#13#10#13#10;
      //  assinatura
      rce.SelAttributes.Style := [fsbold];
      rce.SelText             := frmanotacao.Assinatura_Anotacao;
    end
    else if lowercase(tbl) = _cliente then
    begin
      rce.Lines.Add('');
      rce.SelAttributes.Style := [fsbold, fsunderline];
      rce.SelAttributes.Size  := 12;
      rce.SelText             := DtServer+' '+HrServer+' '+uppercase(frmanotacao.cbx.Text)+#13#10#13#10;
      rce.SelAttributes.Style := [];
      rce.SelAttributes.Size  := 10;
      rce.SelText             := frmanotacao.rce.Text+#13#10#13#10;
      //  assinatura
      rce.SelAttributes.Style := [fsbold];
      rce.SelText := frmanotacao.Assinatura_Anotacao;
    end;
    result := true;
  finally
    frmanotacao.free;
  end;
end;

procedure TfrmAnotacao.btnokClick(Sender: TObject);
begin
  if cbx.ItemIndex < 0 then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__anotacao]), mtinformation, [mbok], 0);
    cbx.SetFocus;
  end
  else
  begin
    ModalResult := mrok;
  end;
end;

procedure TfrmAnotacao.Inicializar;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select nmtpanotacao from tpanotacao where cdempresa='+empresa.cdempresa.tostring);
  try
    while not q.q.eof do
    begin
      cbx.Properties.Items.Add(q.q.fieldbyname(_nmtpanotacao).AsString);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TfrmAnotacao.cbxPropertiesChange(Sender: TObject);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select dslayout from tpanotacao where cdempresa='+empresa.cdempresa.tostring+' and nmtpanotacao='+quotedstr(cbx.Text));
  try
    if q.q.Fieldbyname(_dslayout).IsNull then
    begin
      exit;
    end;
    rce.Lines.Text := q.q.fieldbyname(_dslayout).AsString;
  finally
    freeandnil(q);
  end;
end;

end.

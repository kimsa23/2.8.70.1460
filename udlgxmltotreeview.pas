unit udlgxmltotreeview;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, dialogs,
  Menus, ComCtrls, Buttons, ExtCtrls, dbclient, data.db,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTreeView, cxButtons,
  ustrings,
  Xml.xmldom, Xml.Win.msxmldom, Xml.XMLIntf, Xml.XMLDoc, System.Variants;

type
  Tfrmdlgxmltotreeview = class(TForm)
    XMLD1: TXMLDocument;
    trv: TcxTreeView;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private { Private declarations }
    fields : TStrings;
    cds : TClientDataSet;
    function ConfigurarXML(Titulo, xml: string):boolean;
    procedure ProcessarXML(boexpandir:boolean);
    procedure ProcessNode(Node : IXMLNode; tn : TTreeNode; bofield:boolean=false);
    procedure ProcessNodeExpand(Node : IXMLNode; tn : TTreeNode);
    procedure AdicionarAtributos(Node: IXMLNode; var tn: TTreeNode; bofield:boolean);
    procedure AdicionarCampo(nmcampo:string; sequencia: integer);
    procedure AdicionarValor(nmcampo:string; value: OleVariant; sequencia: integer);
    function ExisteCampo(nmcampo:string):boolean;
  public { Public declarations }
  end;

var
  frmdlgxmltotreeview: Tfrmdlgxmltotreeview;

procedure DlgXMLtoTreeView(titulo:string; xml:string; boexpandir:boolean=false);overload;
procedure DlgXMLtoTreeView(titulo:string; xml:string; cds: TClientDataset);overload;

implementation

{$R *.dfm}

procedure DlgXMLtoTreeView(titulo:string; xml:string; boexpandir:boolean=false);
begin
  frmdlgxmltotreeview := Tfrmdlgxmltotreeview.Create(nil);
  try
    if frmdlgxmltotreeview.ConfigurarXML(Titulo, xml) then
    begin
      Exit;
    end;
    frmdlgxmltotreeview.ProcessarXML(boexpandir);
    frmdlgxmltotreeview.ShowModal;
  finally
    freeandnil(frmdlgxmltotreeview);
  end;
end;

procedure DlgXMLtoTreeView(titulo:string; xml:string; cds: TClientDataset);overload;
begin
  frmdlgxmltotreeview := Tfrmdlgxmltotreeview.Create(nil);
  try
    if frmdlgxmltotreeview.ConfigurarXML(Titulo, xml) then
    begin
      Exit;
    end;
    frmdlgxmltotreeview.cds := cds;
    frmdlgxmltotreeview.ProcessarXML(false);
    //frmdlgxmltotreeview.ShowModal;
  finally
    freeandnil(frmdlgxmltotreeview);
  end;
end;

procedure Tfrmdlgxmltotreeview.AdicionarCampo(nmcampo: string; sequencia: integer);
var
  nome : string;
begin
  nome := nmcampo;
  if sequencia > 0 then
  begin
    nome := nmcampo+sequencia.tostring;
  end;
  if ExisteCampo(nome) then
  begin
    sequencia := sequencia + 1;
    AdicionarCampo(nmcampo, sequencia);
  end
  else
  begin
    cds.FieldDefs.Add(nome, ftString, 255);
  end;
end;

procedure Tfrmdlgxmltotreeview.AdicionarValor(nmcampo:string; value: OleVariant; sequencia: integer);
var
  nome : string;
begin
  nome := nmcampo;
  if sequencia > 0 then
  begin
    nome := nmcampo+sequencia.tostring;
  end;
  if fields.IndexOf(nome) > -1 then
  begin
    sequencia := sequencia + 1;
    AdicionarValor(nmcampo, value, sequencia);
  end
  else
  begin
    fields.add(nome);
    cds.FieldByName(nome).AsVariant := value;
  end;
end;

function Tfrmdlgxmltotreeview.ConfigurarXML(Titulo, xml: string):boolean;
begin
  xml := RetiraAcentos(xml);
  caption := titulo;
  trv.FullExpand;
  XMLD1.XML.Text := xml;
  XMLD1.Active   := true;
  trv.Items.Clear;
  XMLD1.Active := True;
  result := XMLD1.ChildNodes.First = nil;
end;

function Tfrmdlgxmltotreeview.ExisteCampo(nmcampo: string): boolean;
var
  I: Integer;
begin
  result := false;
  for I := 0 to cds.FieldDefs.Count - 1 do
  begin
    if LowerCase(nmcampo) = LowerCase(cds.FieldDefs[i].Name) then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure Tfrmdlgxmltotreeview.FormCreate(Sender: TObject);
begin
  fields := TStringList.create;
end;

procedure Tfrmdlgxmltotreeview.FormDestroy(Sender: TObject);
begin
  freeandnil(fields);
end;

procedure Tfrmdlgxmltotreeview.ProcessarXML(boexpandir:boolean);
var
  jNode : IXMLNode;
begin
  jNode := XMLD1.DocumentElement.ChildNodes.First;
  if not boexpandir then
  begin
    ProcessNode(jNode,nil, true);
    cds.CreateDataSet;
  end;
  while jNode <> nil do
  begin
    if boexpandir then
    begin
      ProcessNodeExpand(jNode,nil);
    end
    else
    begin
      cds.insert;
      ProcessNode(jNode,nil);
      cds.post;
      fields.clear;
    end;
    jNode := jNode.NextSibling;
  end;
  XMLD1.Active := False;
  if boexpandir then
  begin
    trv.FullExpand;
  end;
end;

procedure Tfrmdlgxmltotreeview.ProcessNode(Node: IXMLNode; tn: TTreeNode; bofield:boolean=false);
var
  cNode : IXMLNode;
begin
  if Node = nil then
  begin
    Exit;
  end;
  cNode := Node.ChildNodes.First;
  if cnode <> nil then
  begin
    if tn = nil then
    begin
      tn := trv.Items.AddChild(tn, node.NodeName);
    end;
    AdicionarAtributos(Node, tn, bofield);
  end
  else
  begin
    AdicionarAtributos(Node, tn, bofield);
  end;
  cNode := Node.ChildNodes.First;
  while cNode <> nil do
  begin
    ProcessNode(cNode, tn, bofield);
    cNode := cNode.NextSibling;
  end;
end;

procedure Tfrmdlgxmltotreeview.ProcessNodeExpand(Node: IXMLNode; tn: TTreeNode);
var
  cNode : IXMLNode;
begin
  if Node = nil then
  begin
    Exit;
  end;
  if node.NodeName <> '#text' then
  begin
    cNode := Node.ChildNodes.First;
    if cnode <> nil then
    begin
      try
        if cnode.NodeName = '#text' then
        begin
          tn := trv.Items.AddChild(tn, node.NodeName+' = '+cnode.NodeValue)
        end
        else
        begin
          tn := trv.Items.AddChild(tn, node.NodeName);
        end;
      except
      end;
    end;
  end;
  cNode := Node.ChildNodes.First;
  while cNode <> nil do
  begin
    ProcessNodeExpand(cNode, tn);
    cNode := cNode.NextSibling;
  end;
end;

procedure Tfrmdlgxmltotreeview.AdicionarAtributos(Node: IXMLNode; var tn: TTreeNode; bofield:boolean);
var
  i: Integer;
begin
  for I := 0 to node.AttributeNodes.Count - 1 do
  begin
    if bofield then
    begin
      AdicionarCampo(node.AttributeNodes.Nodes[i].NodeName, 0);
    end
    else
    begin
      AdicionarValor(node.AttributeNodes.Nodes[i].NodeName, node.AttributeNodes.Nodes[i].NodeValue, 0);
    end;
    if varisnull(node.AttributeNodes.Nodes[i].NodeValue) then
    begin
      if tn.level = 0 then
      begin
        tn := trv.Items.AddChild(tn, node.AttributeNodes.Nodes[i].NodeName + ' = ');
      end
      else
      begin
        tn := trv.Items.Add(tn, node.AttributeNodes.Nodes[i].NodeName + ' = ');
      end;
    end
    else
    begin
      if tn.level = 0 then
      begin
        tn := trv.Items.AddChild(tn, node.AttributeNodes.Nodes[i].NodeName + ' = ' + node.AttributeNodes.Nodes[i].NodeValue);
      end
      else
      begin
        tn := trv.Items.Add(tn, node.AttributeNodes.Nodes[i].NodeName + ' = ' + node.AttributeNodes.Nodes[i].NodeValue);
      end;
    end;
  end;
end;

end.

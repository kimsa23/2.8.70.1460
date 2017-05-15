unit udlgRichEdit;

interface

uses
  System.Actions, System.UITypes,
  Windows, sqlexpr, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, ComCtrls, BandActn, StdActns, ExtActns,
  Mask, Buttons, ActnList, ToolWin, ExtCtrls, ActnMan, ActnCtrls, ActnMenus,
  DB,
  uregistro, uconstantes,  udatahora,
  classeempresa, classeusuario, classeretornasql, classeInstrucaoSQL,
  classeregistrainformacao, classequery,

  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxSpinEdit, cxTimeEdit, cxGraphics, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons, cxMemo, cxRichEdit,
  JvExStdCtrls, JvRichEdit, JvComponentBase, JvRichEditToHtml,
  cxPCdxBarPopupMenu, dxBar, cxListView, cxClasses, cxPC,
  dxCore, cxDateUtils, dxBarBuiltInMenu, cxFontNameComboBox, cxBarEditItem,
  dxColorDialog, dxCoreGraphics, XPStyleActnCtrls, System.ImageList;

type
  Tfrmdlgrichedit = class(TForm)
    ActionManager1: TActionManager;
    MainMenuActionBar1: TActionMainMenuBar;
    ToolActionBar1: TActionToolBar;
    ToolActionBar2: TActionToolBar;
    ToolActionBar3: TActionToolBar;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FilePrintSetup1: TFilePrintSetup;
    SearchFind1: TSearchFind;
    SearchFindNext1: TSearchFindNext;
    SearchReplace1: TSearchReplace;
    SearchFindFirst1: TSearchFindFirst;
    CustomizeActionBars1: TCustomizeActionBars;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    actsairsalvar: TAction;
    actsair: TAction;
    pnl: TPanel;
    lbldt: TLabel;
    lblhora: TLabel;
    lblfuncionario: TLabel;
    dts: TDataSource;
    edtdata: TcxDateEdit;
    edthora: TcxTimeEdit;
    cbxcdfuncionario: TcxLookupComboBox;
    pnlemail: TPanel;
    lbltitulo: TLabel;
    edtdstitulo: TcxTextEdit;
    lbldestinatario: TLabel;
    edtdestinatario: TcxTextEdit;
    btnenviar: TcxButton;
    actenviaremail: TAction;
    rtftohtml: TJvRichEditToHtml;
    pgc: TcxPageControl;
    tbsTexto: TcxTabSheet;
    tbsAnexo: TcxTabSheet;
    rce: TRichEdit;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    lsv: TcxListView;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    lbl1: TLabel;
    edtcco: TcxTextEdit;
    dxBarButton3: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    befontname: TcxBarEditItem;
    befontsize: TcxBarEditItem;
    bbfontcolor: TdxBarButton;
    dlgFont1: TFontDialog;
    ColorDialog1: TdxColorDialog;
    act1: TActionList;
    actfontcolor: TAction;
    actnovoarquivo: TAction;
    actexcluirarquivo: TAction;
    actexcluirtodosarquivo: TAction;
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure actsairsalvarExecute(Sender: TObject);
    procedure actsairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure actenviaremailExecute(Sender: TObject);
    procedure rceChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfontcolorExecute(Sender: TObject);
    procedure befontnameChange(Sender: TObject);
    procedure befontsizeChange(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure actnovoarquivoExecute(Sender: TObject);
    procedure actexcluirarquivoExecute(Sender: TObject);
    procedure actexcluirtodosarquivoExecute(Sender: TObject);
  private { Private declarations }
    q : TClasseQuery;
    boanexo, lista_arquivo : tstrings;
    boexcluir_arquivo : Boolean;
    nmusuario, dssenha, tpenvio, email, nmcampo, cdequipamento, acao, cdfield, tbl:string;
    cdtabela, nmtabela : string;
    procedure Verificar_Salvar;
    procedure sair;
    function  salvar:boolean;
    procedure cancelar;
    procedure transacao;
    procedure setshow;
    procedure carregar_arquivo;
    procedure carregar_arquivo_list_view;
    procedure Excluir_arquivo;
    function  get_nmfuncionario:string;
    procedure check_titulo_obrigatorio;
    procedure check_destinatario_obrigatorio;
    procedure getStringStream(texto:string);
  public { Public declarations }
    procedure setdados(tbl, cdfield, nmfield:string);overload;
    procedure setdados;overload;
  end;

function  FormatarRichEdit(tbl, cdfield, nmfield:string; bopnl:boolean):boolean;overload;
function  FormatarRichEdit(tbl, codigo, cdequipamento:string; bopnl:boolean; boassociarfuncionario:boolean):boolean;overload;
function  Formatar_Email  (boexcluir_arquivo : Boolean; dstitulo, dsassunto, lista_arquivo, email, listaemail: string; nmusuario : string = ''; dssenha:string = ''; tpenvio:string=''; nmtabela:string=''; cdtabela:string=''; bodireto:Boolean=false):Boolean;
procedure formatar_evento_email(cdeventoemail:string; var dados:TReportDados);

var
  frmdlgrichedit: Tfrmdlgrichedit;

implementation

uses uDtmMain, classeemail;

{$R *.dfm}

procedure HTMLtoRTF(html: string; var rtf: TRichedit);
var
  i, dummy, row: Integer;
  cfont: TFont; { Standard sschrift }
  Tag, tagparams: string;
  params: TStringList;

  function GetTag(s: string; var i: Integer; var Tag, tagparams: string): Boolean;
  var
    a_tag: Boolean;
  begin
    GetTag  := False;
    Tag  := '';
    tagparams := '';
    a_tag  := False;

    while i <= Length(s) do
    begin
      Inc(i);
      // es wird nochein tag geöffnet --> das erste war kein tag;
      if s[i] = '<' then
      begin
        GetTag := False;
        Exit;
      end;

      if s[i] = '>' then
      begin
        GetTag := True;
        Exit;
      end;

      if not a_tag then
      begin
        if s[i] = ' ' then
        begin
          if Tag <> '' then a_tag := True;
        end
        else
          Tag := Tag + s[i];
      end
      else
        tagparams := tagparams + s[i];
    end;
  end;

  procedure GetTagParams(tagparams: string; var params: TStringList);
  var
    i: Integer;
    s: string;
    gleich: Boolean;

    // kontrolliert ob nach dem zeichen bis zum nächsten zeichen ausser
    // leerzeichen ein Ist-Gleich-Zeichen kommt
    function notGleich(s: string; i: Integer): Boolean;
    begin
      notGleich := True;
      while i <= Length(s) do
      begin
        Inc(i);
        if s[i] = '=' then
        begin
          notGleich := False;
          Exit;
        end
        else if s[i] <> ' ' then Exit;
      end;
    end;
  begin
    Params.Clear;
    s := '';
    for i := 1 to Length(tagparams) do
    begin
      if (tagparams[i] <> ' ') then
      begin
        if tagparams[i] <> '=' then gleich := False;
        if (tagparams[i] <> '''') and (tagparams[i] <> '"') then s := s + tagparams[i]
      end
      else
      begin
        if (notGleich(tagparams, i)) and (not Gleich) then
        begin
          params.Add(s);
          s := '';
        end
        else
          Gleich := True;
      end;
    end;
    params.Add(s);
  end;

  function HtmlToColor(Color: string): TColor;
  begin
    Result := StringToColor('$' + Copy(Color, 6, 2) + Copy(Color, 4,
      2) + Copy(Color, 2, 2));
  end;

  procedure TransformSpecialChars(var s: string; i: Integer);
  var
    c: string;
    z, z2: Byte;
    i2: Integer;
  const
    nchars = 9;
    chars: array[1..nchars, 1..2] of string =
      (('Ö', 'Ö'), ('ö', 'ö'), ('Ä', 'Ä'), ('ä', 'ä'),
      ('Ü', 'Ü'), ('ü', 'ü'), ('ß', 'ß'), ('<', '<'),
      ('>', '>'));
  begin
    // Maximal die nächsten 7 zeichen auf sonderzeichen überprüfen
    c  := '';
    i2 := i;
    for z := 1 to 7 do
    begin
      c := c + s[i2];
      for z2 := 1 to nchars do
      begin
        if chars[z2, 1] = c then
        begin
          Delete(s, i, Length(c));
          Insert(chars[z2, 2], s, i);
          Exit;
        end;
      end;
      Inc(i2);
    end;
  end;

  // HtmlTag Schriftgröße in pdf größe umwandeln
  function CalculateRTFSize(pt: Integer): Integer;
  begin
    case pt of
      1: Result := 6;
      2: Result := 9;
      3: Result := 12;
      4: Result := 15;
      5: Result := 18;
      6: Result := 22;
      else
        Result := 30;
    end;
  end;


  // Die Font-Stack Funktionen
type
  fontstack = record
    Font: array[1..100] of tfont;
    Pos: Byte;
  end;

  procedure CreateFontStack(var s: fontstack);
  begin
    s.Pos := 0;
  end;

  procedure PushFontStack(var s: Fontstack; fnt: TFont);
  begin
    Inc(s.Pos);
    s.Font[s.Pos] := TFont.Create;
    s.Font[s.Pos].Assign(fnt);
  end;

  procedure PopFontStack(var s: Fontstack; var fnt: TFont);
  begin
    if (s.Font[s.Pos] <> nil) and (s.Pos > 0) then
    begin
      fnt.Assign(s.Font[s.Pos]);
      // vom stack nehmen
      s.Font[s.Pos].Free;
      Dec(s.Pos);
    end;
  end;

  procedure FreeFontStack(var s: Fontstack);
  begin
    while s.Pos > 0 do
    begin
      s.Font[s.Pos].Free;
      Dec(s.Pos);
    end;
  end;
var
  fo_cnt: array[1..1000] of tfont;
  fo_liste: array[1..1000] of Boolean;
  fo_pos: TStringList;
  fo_stk: FontStack;
  wordwrap, liste: Boolean;
begin
  CreateFontStack(fo_Stk);

  fo_Pos := TStringList.Create;

  rtf.Lines.BeginUpdate;
  rtf.Lines.Clear;
  // Das wordwrap vom richedit merken
  wordwrap  := rtf.wordwrap;
  rtf.WordWrap := False;


  // erste Zeile hinzufügen
  rtf.Lines.Add('');
  Params := TStringList.Create;



  cfont := TFont.Create;
  cfont.Assign(rtf.Font);


  i := 1;
  row := 0;
  Liste := False;
  // Den eigentlichen Text holen und die Formatiorung merken
  rtf.selstart := 0;
  if Length(html) = 0 then Exit;
  repeat;


    if html[i] = '<' then
    begin
      //dummy := i;
      GetTag(html, i, Tag, tagparams);
      GetTagParams(tagparams, params);

      // Das Font-Tag
      if Uppercase(Tag) = 'FONT' then
      begin
        // Schrift auf fontstack sichern
        pushFontstack(fo_stk, cfont);
        if params.Values['size'] <> '' then
          cfont.Size := CalculateRTFSize(StrToInt(params.Values['size']));

        if params.Values['color'] <> '' then cfont.Color :=
            htmltocolor(params.Values['color']);
      end
      else if Uppercase(Tag) = '/FONT' then  popFontstack(fo_stk, cfont)
      else // Die H-Tags-Überschriften
      if Uppercase(Tag) = 'H1' then
      begin
        // Schrift auf fontstack sichern
        pushFontstack(fo_stk, cfont);
        cfont.Size := 6;
      end
      else if Uppercase(Tag) = '/H1' then  popFontstack(fo_stk, cfont)
      else // Die H-Tags-Überschriften
      if Uppercase(Tag) = 'H2' then
      begin
        // Schrift auf fontstack sichern
        pushFontstack(fo_stk, cfont);
        cfont.Size := 9;
      end
      else if Uppercase(Tag) = '/H2' then  popFontstack(fo_stk, cfont)
      else // Die H-Tags-Überschriften
      if Uppercase(Tag) = 'H3' then
      begin
        // Schrift auf fontstack sichern
        pushFontstack(fo_stk, cfont);
        cfont.Size := 12;
      end
      else if Uppercase(Tag) = '/H3' then  popFontstack(fo_stk, cfont)
      else // Die H-Tags-Überschriften
      if Uppercase(Tag) = 'H4' then
      begin
        // Schrift auf fontstack sichern
        pushFontstack(fo_stk, cfont);
        cfont.Size := 15;
      end
      else if Uppercase(Tag) = '/H4' then  popFontstack(fo_stk, cfont)
      else // Die H-Tags-Überschriften
      if Uppercase(Tag) = 'H5' then
      begin
        // Schrift auf fontstack sichern
        pushFontstack(fo_stk, cfont);
        cfont.Size := 18;
      end
      else if Uppercase(Tag) = '/H5' then  popFontstack(fo_stk, cfont)
      else // Die H-Tags-Überschriften
      if Uppercase(Tag) = 'H6' then
      begin
        // Schrift auf fontstack sichern
        pushFontstack(fo_stk, cfont);
        cfont.Size := 22;
      end
      else if Uppercase(Tag) = '/H6' then  popFontstack(fo_stk, cfont)
      else // Die H-Tags-Überschriften
      if Uppercase(Tag) = 'H7' then
      begin
        // Schrift auf fontstack sichern
        pushFontstack(fo_stk, cfont);
        cfont.Size := 27;
      end
      else if Uppercase(Tag) = '/H7' then  popFontstack(fo_stk, cfont)
      else // Bold-Tag

      if Uppercase(Tag) = 'B' then cfont.Style := cfont.Style + [fsbold]
      else if Uppercase(Tag) = '/B' then cfont.Style := cfont.Style - [fsbold]
      else // Italic-Tag

      if Uppercase(Tag) = 'I' then cfont.Style := cfont.Style + [fsitalic]
      else if Uppercase(Tag) = '/I' then cfont.Style := cfont.Style - [fsitalic]
      else // underline-Tag

      if Uppercase(Tag) = 'U' then cfont.Style := cfont.Style + [fsunderline]
      else if Uppercase(Tag) = '/U' then cfont.Style := cfont.Style - [fsunderline]
      else // underline-Tag

      if Uppercase(Tag) = 'UL' then liste := True
      else if Uppercase(Tag) = '/UL' then
      begin
        liste := False;
        rtf.Lines.Add('');
        Inc(row);
        rtf.Lines.Add('');
        Inc(row);
      end
      else // BR - Breakrow tag

      if (Uppercase(Tag) = 'BR') or (Uppercase(Tag) = 'LI') then
      begin
        rtf.Lines.Add('');
        Inc(row);
      end;

      // unbekanntes tag als text ausgeben
      // else rtf.Lines[row]:=RTF.lines[row]+'<'+tag+' '+tagparams+'>';

      fo_pos.Add(IntToStr(rtf.selstart));
      fo_cnt[fo_pos.Count] := TFont.Create;
      fo_cnt[fo_pos.Count].Assign(cfont);
      fo_liste[fo_pos.Count] := liste;
    end
    else
    begin
      // Spezialzeichen übersetzen
      if html[i] = '&' then Transformspecialchars(html, i);

      if (Ord(html[i]) <> 13) and (Ord(html[i]) <> 10) then
        rtf.Lines[row] := RTF.Lines[row] + html[i];
    end;

    Inc(i);

  until i >= Length(html);
  // dummy eintragen
  fo_pos.Add('999999');

  // Den fertigen Text formatieren
  for i := 0 to fo_pos.Count - 2 do
  begin
    rtf.SelStart := StrToInt(fo_pos[i]);
    rtf.SelLength := StrToInt(fo_pos[i + 1]) - rtf.SelStart;
    rtf.SelAttributes.Style := fo_cnt[i + 1].Style;
    rtf.SelAttributes.Size := fo_cnt[i + 1].Size;
    rtf.SelAttributes.Color := fo_cnt[i + 1].Color;

    // die font wieder freigeben;
    fo_cnt[i + 1].Free;
  end;

  // die Paragraphen also Listen setzen
  i := 0;
  while i <= fo_pos.Count - 2 do
  begin
    if fo_liste[i + 1] then
    begin
      rtf.SelStart := StrToInt(fo_pos[i + 1]);
      while fo_liste[i + 1] do Inc(i);
      rtf.SelLength := StrToInt(fo_pos[i - 1]) - rtf.SelStart;
      // erro $$ rtf.Paragraph.Numbering := nsBullet;
    end;
    Inc(i);
  end;
  rtf.Lines.EndUpdate;
  Params.Free;
  cfont.Free;
  rtf.WordWrap := wordwrap;
  FreeFontStack(fo_stk);
end;

procedure ExcluirListView(lsv: TcxListView; botodos:Boolean=false);
var
  i : integer;
begin
  if botodos then
  begin
    while lsv.Items.Count > 0 do
    begin
      lsv.Items[0].Delete;
    end;
    Exit;
  end;
  i := -1;
  repeat
    inc(i);
    if lsv.Items[i].Selected then
    begin
      lsv.Items[i].Delete;
      i := i - 1;
    end;
  until i = lsv.items.count - 1;
end;

procedure formatar_evento_email(cdeventoemail:string; var dados:TReportDados);
var
  q : TClassequery;
begin
  q := TClasseQuery.create('select * from eventoemail where cdempresa='+Empresa.cdempresa.ToString+' and cdeventoemail='+cdeventoemail);
  try
    dados.dstitulo   := q.q.fieldbyname(_dstitulo).AsString;
    dados.dsassunto  := q.q.fieldbyname(_dsassunto).AsString;
    dados.email      := q.q.fieldbyname(_dsdestinatario).AsString;
    dados.listaemail := q.q.fieldbyname(_emailcopia).AsString;
  finally
    freeandnil(q);
  end;
end;

function Formatar_Email(boexcluir_arquivo: Boolean;dstitulo, dsassunto, lista_arquivo, email, listaemail: string; nmusuario : string = ''; dssenha:string = ''; tpenvio:string=''; nmtabela:string=''; cdtabela:string=''; bodireto:Boolean=false):Boolean;
begin
  frmdlgrichedit := Tfrmdlgrichedit.create(nil);
  try
    frmdlgrichedit.Caption               := 'Envio de email';
    frmdlgrichedit.pnlemail.Visible      := true;
    frmdlgrichedit.pnl.Visible           := False;
    frmdlgrichedit.actsairsalvar.Visible := False;
    frmdlgrichedit.edtdstitulo.Text      := dstitulo;
    frmdlgrichedit.getStringStream(dsassunto);
    frmdlgrichedit.tbsAnexo.TabVisible   := True;
    frmdlgrichedit.lista_arquivo.Text    := lista_arquivo;
    frmdlgrichedit.boexcluir_arquivo     := boexcluir_arquivo;
    frmdlgrichedit.email                 := email;
    frmdlgrichedit.edtdestinatario.Text  := email;
    frmdlgrichedit.edtcco.Text           := listaemail;
    frmdlgrichedit.nmusuario             := nmusuario;
    frmdlgrichedit.dssenha               := dssenha;
    frmdlgrichedit.tpenvio               := tpenvio;
    frmdlgrichedit.nmtabela              := nmtabela;
    frmdlgrichedit.cdtabela              := cdtabela;
    frmdlgrichedit.carregar_arquivo;
    if bodireto then
    begin
      frmdlgrichedit.actenviaremailExecute(frmdlgrichedit.actenviaremail);
    end
    else
    begin
      frmdlgrichedit.ShowModal;
    end;
    result := True;
  finally
    freeandnil(frmdlgrichedit);
  end;
end;

function FormatarRichEdit(tbl, cdfield, nmfield:string; bopnl:boolean):boolean;
begin
  frmdlgrichedit := Tfrmdlgrichedit.create(nil);
  try
    frmdlgrichedit.tbl                 := tbl;
    frmdlgrichedit.pnl.visible         := bopnl;
    frmdlgrichedit.tbsAnexo.TabVisible := false;
    frmdlgrichedit.setdados(tbl, cdfield, nmfield);
    frmdlgrichedit.ShowModal;
    result := frmdlgrichedit.ModalResult = mrok;
    if frmdlgrichedit.ModalResult <> mrok then
    begin
      frmdlgrichedit.cancelar;
    end;
  finally
    freeandnil(frmdlgrichedit);
  end;
end;

function FormatarRichEdit(tbl, codigo, cdequipamento:string; bopnl:boolean; boassociarfuncionario:boolean):boolean;
begin
  frmdlgrichedit := Tfrmdlgrichedit.create(nil);
  try
    frmdlgrichedit.pnl.Visible   := bopnl;
    frmdlgrichedit.tbl           := tbl;
    frmdlgrichedit.cdfield       := codigo;
    frmdlgrichedit.acao          := _inserir;
    frmdlgrichedit.cdequipamento := cdequipamento;
    if boassociarfuncionario then
    begin
      frmdlgrichedit.cbxcdfuncionario.Text := frmdlgrichedit.get_nmfuncionario;
    end;
    frmdlgrichedit.tbsAnexo.TabVisible := false;
    frmdlgrichedit.setdados;
    frmdlgrichedit.setshow;
    frmdlgrichedit.ShowModal;
    result := frmdlgrichedit.ModalResult = mrok;
    if frmdlgrichedit.ModalResult = mrok then
    begin
      frmdlgrichedit.salvar;
    end
    else
    begin
      frmdlgrichedit.cancelar;
    end;
  finally
    freeandnil(frmdlgrichedit);
  end;
end;

procedure Tfrmdlgrichedit.cancelar;
begin
  q.q.Cancel;
end;

procedure Tfrmdlgrichedit.FileOpen1Accept(Sender: TObject);
begin
  rce.Lines.LoadFromFile(FileOpen1.Dialog.FileName);
end;

procedure Tfrmdlgrichedit.FileSaveAs1Accept(Sender: TObject);
begin
  rce.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);
end;

function Tfrmdlgrichedit.salvar:boolean;
var
  b : TBlobField;
  StreamMemo : TMemoryStream;
begin
  if tbl = '' then
  begin
    result := true;
    exit;
  end;
  try
    if tbl = _hlocacaoequipamento then
    begin
      if cbxcdfuncionario.text = '' then
      begin
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Funcionario]), mtinformation, [mbok], 0);
        cbxcdfuncionario.SetFocus;
        result := false;
        exit;
      end;
      q.q.Edit;
      q.q.Fieldbyname(_cd+_locacao).AsString   := cdfield;
      q.q.fieldbyname(_dthistorico).AsDateTime := edtdata.Date;
      q.q.fieldbyname(_hr+_historico).AsString := FormatDateTime(_hh_mm_ss, edthora.Time);
      q.q.fieldbyname(_cdfuncionario).AsString := cbxcdfuncionario.EditValue;
      q.q.fieldbyname(_cdequipamento).AsString := cdequipamento;
      q.q.fieldbyname(_dsobservacao).Value     := rce.Lines.Text;
    end
    else if tbl = _tplocacao then
    begin
      q.q.Edit;
      StreamMemo := TMemoryStream.Create;
      rce.Lines.SaveToStream(StreamMemo);
      b := TBlobField(q.q.fields[1]);
      b.LoadFromStream(StreamMemo);
    end
    else if tbl <> '' then
    begin
      if nmcampo = '' then
      begin
        q.q.fieldbyname(_ds+tbl).Value := rce.Lines.Text;
      end
      else
      begin
        q.q.Edit;
        StreamMemo := TMemoryStream.Create;
        rce.Lines.SaveToStream(StreamMemo);
        b := TBlobField(q.q.FieldByName(nmcampo));
        b.LoadFromStream(StreamMemo);
      end;
    end
    else
    begin
      q.q.fields[1].Value := rce.Lines.Text;
    end;
    q.q.Post;
    result := true;
  except
    q.q.CancelUpdates;
    result := false;
  end;
end;

procedure Tfrmdlgrichedit.setdados(tbl, cdfield, nmfield: string);
  function makesql:string;
  begin
    result := 'select cd'+tbl+
                    ','+nmfield+
                    ',tsinclusao'+
                    ',cdusuarioi'+
                    ',cdcomputadori'+
                    ',tsalteracao'+
                    ',cdusuarioa'+
                    ',cdcomputadora'+
                    ',cdempresa '+
              'from '+uppercase(tbl)+' '+
              'where cdempresa='+empresa.cdempresa.ToString+' and cd'+tbl+'='+cdfield
  end;
begin
  q.q.sql.text := makesql;
  q.q.open;
  nmcampo := nmfield;
  getStringStream(q.q.FieldByName(nmfield).AsString);
end;

procedure Tfrmdlgrichedit.setdados;
begin
  q.q.sql.text := QRetornaSQL.get_select_from(_hlocacaoequipamento, cdequipamento, _cd+_equipamento);
  q.q.Open;
  rce.OnChange := nil;
  rce.OnChange := rceChange;
end;

procedure Tfrmdlgrichedit.actsairsalvarExecute(Sender: TObject);
begin
  if salvar then
  begin
    self.modalresult := mrok;
  end;
end;

procedure Tfrmdlgrichedit.actsairExecute(Sender: TObject);
begin
  sair;
end;

procedure Tfrmdlgrichedit.Verificar_Salvar;
begin
  if (tbl = '') or (not ((q.q.State = dsedit) or (q.q.State = dsinsert))) then
  begin
    exit;
  end;
  if messagedlg('Deseja salvar as alterações?', mtconfirmation, [mbyes, mbno], 0) = mrno then
  begin
    cancelar;
    Exit;
  end;
  if salvar then
  begin
    self.modalresult := mrok;
  end;
end;

procedure TFrmDlgRichEdit.transacao;
begin
  if (not q.q.Active) or (q.q.State = dsinsert) or (q.q.State = dsedit) then
  begin
    exit;
  end;
  if acao = _inserir then
  begin
    q.q.insert;
  end
  else
  begin
    q.q.Edit;
  end;
end;

procedure Tfrmdlgrichedit.sair;
begin
  verificar_Salvar;
end;

procedure Tfrmdlgrichedit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sair;
  if boexcluir_arquivo then
  begin
    excluir_arquivo;
  end;
end;

procedure Tfrmdlgrichedit.setshow;
begin
  if tbl = _hlocacaoequipamento then
  begin
    lblhora.Visible          := true;
    edthora.Visible          := true;
    edthora.Time             := HrBanco;
    edtdata.Date             := DtBanco;
    lblfuncionario.Visible   := true;
    cbxcdfuncionario.Visible := true;
    exit;
  end;
  rce.OnChange                 := nil;
  edtdata.Visible              := false;
  edtdata.Enabled              := false;
  pnl.Visible                  := false;
  ToolActionBar1.Visible       := false;
  ToolActionBar2.Visible       := false;
  ToolActionBar3.Visible       := false;
  EditCut1.Visible             := false;
  EditCopy1.Visible            := false;
  EditPaste1.Visible           := false;
  EditSelectAll1.Visible       := false;
  EditUndo1.Visible            := false;
  EditDelete1.Visible          := false;
  FileOpen1.Visible            := false;
  FileSaveAs1.Visible          := false;
  FilePrintSetup1.Visible      := false;
  RichEditBold1.Visible        := false;
  RichEditItalic1.Visible      := false;
  RichEditUnderline1.Visible   := false;
  RichEditStrikeOut1.Visible   := false;
  RichEditBullets1.Visible     := false;
  RichEditAlignLeft1.Visible   := false;
  RichEditAlignRight1.Visible  := false;
  RichEditAlignCenter1.Visible := false;
  SearchFind1.Visible          := false;
  SearchFindNext1.Visible      := false;
  SearchReplace1.Visible       := false;
  SearchFindFirst1.Visible     := false;
  CustomizeActionBars1.Visible := false;
end;

procedure Tfrmdlgrichedit.check_destinatario_obrigatorio;
begin
  if edtdestinatario.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Destinatario]), mtinformation, [mbok], 0);
    edtdestinatario.SetFocus;
    abort;
  end;
end;

procedure Tfrmdlgrichedit.check_titulo_obrigatorio;
begin
  if edtdstitulo.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Titulo]), mtinformation, [mbok], 0);
    edtdstitulo.SetFocus;
    abort;
  end;
end;

procedure Tfrmdlgrichedit.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  dts.dataset := q.q;
  q.q.BeforePost := qryBeforePost;
  cbxcdfuncionario.Properties.ListSource := abrir_tabela(_funcionario);
  lista_arquivo                          := TStringList.Create;
  boanexo                                := TStringList.Create;
end;

procedure Tfrmdlgrichedit.actenviaremailExecute(Sender: TObject);
var
  mensagem : TStrings;
  enviaremail : tenviaremail;
begin
  check_titulo_obrigatorio;
  check_destinatario_obrigatorio;
  mensagem := TStringList.Create;
  enviaremail := tenviaremail.create;
  try
    rtftohtml.ConvertToHtmlStrings(TRichEdit(rce), mensagem);
    carregar_arquivo_list_view;
    enviaremail.botexto := false;
    enviaremail.boexcluir_arquivo := boexcluir_arquivo;
    enviaremail.dsanexo := lista_arquivo;
    enviaremail.boanexo := boanexo;
    enviaremail.dsdestinatario := edtdestinatario.Text;
    enviaremail.dscc := edtcco.Text;
    enviaremail.dstitulo := edtdstitulo.Text;
    enviaremail.dsmensagem := mensagem.Text;
    enviaremail.nmremetente := '';
    enviaremail.nmusuario := nmusuario;
    enviaremail.dssenha := dssenha;
    enviaremail.tpenvio := tpenvio;
    enviaremail.nmtabela := nmtabela;
    enviaremail.codigo := cdtabela;
    enviaremail.enviar_email;
  finally
    mensagem.Free;
    freeandnil(enviaremail);
  end;
  close;
end;

procedure Tfrmdlgrichedit.rceChange(Sender: TObject);
begin
  transacao;
end;

procedure Tfrmdlgrichedit.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
  freeandnil(lista_arquivo);
  freeandnil(boanexo);
end;

procedure Tfrmdlgrichedit.getStringStream(texto: string);
var
  StringStream: TStringStream;
begin
  StringStream := TStringStream.Create(texto);
  rce.OnChange := nil;
  try
    rce.lines.LoadFromStream(StringStream);
  finally
    rce.OnChange := rceChange;
    freeandnil(StringStream);
  end;
end;

function Tfrmdlgrichedit.get_nmfuncionario: string;
begin
  if usuario.funcionario.cdfuncionario <> 0 then
  begin
    result                   := NomedoCodigo(_funcionario, IntToStr(usuario.funcionario.cdfuncionario));
    cbxcdfuncionario.Enabled := result = '';
  end;
end;

procedure Tfrmdlgrichedit.carregar_arquivo;
var
  i : Integer;
  lista : TListItem;
begin
  for i := 0 to lista_arquivo.Count - 1 do
  begin
    lista         := lsv.Items.Add;
    lista.Caption := lista_arquivo[i];
    lista.SubItems.Add(_sim);
  end;
end;

procedure Tfrmdlgrichedit.carregar_arquivo_list_view;
var
  i : Integer;
begin
  lista_arquivo.Clear;
  if lsv.Items.Count = 0 then
  begin
    Exit;
  end;
  for i := 0 to lsv.Items.Count - 1 do
  begin
    lista_arquivo.Add(lsv.Items[i].Caption);
    boanexo.Add(lsv.Items[i].SubItems[0]);
  end;
end;

procedure Tfrmdlgrichedit.Excluir_arquivo;
var
  i : Integer;
begin
  if not boexcluir_arquivo then
  begin
    Exit;
  end;
  for i := 0 to lsv.Items.Count - 1 do
  begin
    if lsv.Items[i].SubItems[0] = _sim then
    begin
      DeleteFile(lsv.Items[i].Caption);
    end;
  end;
end;

procedure Tfrmdlgrichedit.actfontcolorExecute(Sender: TObject);
begin
  ColorDialog1.Color := dxColorToAlphaColor(rce.SelAttributes.Color);
  if ColorDialog1.Execute then
  begin
    rce.SelAttributes.Color := dxAlphaColorToColor(ColorDialog1.Color);
  end;
end;

procedure Tfrmdlgrichedit.befontnameChange(Sender: TObject);
begin
  rce.SelAttributes.Name := beFontName.EditValue;
end;

procedure Tfrmdlgrichedit.befontsizeChange(Sender: TObject);
begin
  rce.SelAttributes.Size := StrToInt(beFontSize.EditValue);
end;

procedure Tfrmdlgrichedit.qryBeforePost(DataSet: TDataSet);
begin
  if (tbl <> _hlocacaoequipamento) and
     (tbl <> _tplocacao) and
     (tbl <> _tpordserv) and
     (tbl <> _eventoemail) and
     (tbl <> _tpfaturamento) then
  begin
    dataset.fieldbyname(_dt+tbl).AsDateTime := edtdata.Date;
  end;
  registrainformacao_(dataset);
end;

procedure Tfrmdlgrichedit.actnovoarquivoExecute(Sender: TObject);
var
  opendialog : TOpenDialog;
  ListItem: TListItem;
  i : Integer;
begin
  opendialog := topendialog.Create(nil);
  try
    OpenDialog.Options := [ofHideReadOnly,ofAllowMultiSelect,ofEnableSizing];
    if not opendialog.Execute then
    begin
      Exit;
    end;
    for i := 0 to opendialog.Files.Count - 1 do
    begin
      ListItem         := lsv.items.Add;
      ListItem.Caption := opendialog.Files[i];
      ListItem.SubItems.Add(__Nao);
    end;
  finally
    freeandnil(opendialog);
  end;
end;

procedure Tfrmdlgrichedit.actexcluirarquivoExecute(Sender: TObject);
begin
  ExcluirListView(lsv);
end;

procedure Tfrmdlgrichedit.actexcluirtodosarquivoExecute(Sender: TObject);
begin
  ExcluirListView(lsv, true);
end;

end.

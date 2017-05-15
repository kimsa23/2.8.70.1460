unit udlgaprovarconciliado;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons, ExtCtrls,
  DBClient, DB,
  classeaplicacao, classeempresa, classeregistrainformacao, classegerar, classeexecutasql,
  classeretornasql, classequery,
  uexportarexcel, ustrings, uConstantes, uprogressbar, uRegistro,
  cxDBData, cxGridLevel, cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit,
  cxCheckBox, cxNavigator;

type
  Tfrmdlgaprovarconciliado = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    grdDBTableView1: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    grdLevel2: TcxGridLevel;
    grdDBTableView2: TcxGridDBTableView;
    dts1: TDataSource;
    dtsextrato: TDataSource;
    cds: TClientDataSet;
    cdsDTEMISSAO: TDateField;
    cdsCDMOVBANCARIO: TIntegerField;
    cdsNMMOVIMENTACAO: TStringField;
    cdsDSHISTORICO: TStringField;
    cdsVLPAGAMENTO: TFMTBCDField;
    cdsVLSALDO: TFMTBCDField;
    cdsVLDEPOSITO: TFMTBCDField;
    cdsBOCONCILIADO: TStringField;
    cdsNUMOVBANCARIO: TStringField;
    cdsextrato: TClientDataSet;
    cdsextratoCDEXTRATO: TIntegerField;
    cdsextratoCDCONTA: TIntegerField;
    cdsextratoDTEMISSAO: TDateField;
    cdsextratoNMTPEXTRATO: TStringField;
    cdsextratoNMCATEXTRATO: TStringField;
    cdsextratoVLPAGAMENTO: TFMTBCDField;
    cdsextratoVLDEPOSITO: TFMTBCDField;
    cdsextratoVLEXTRATO: TFMTBCDField;
    cdsextratoVLSALDO: TFMTBCDField;
    cdsextratoBOCONCILIADO: TStringField;
    cdsextratoCDNATUREZA: TStringField;
    cdsextratoNUEXTRATO: TStringField;
    cdsextratoCDTPEXTRATO: TIntegerField;
    cdsextratoCDCATEXTRATO: TIntegerField;
    grdDBTableView1DTEMISSAO: TcxGridDBColumn;
    grdDBTableView1CDMOVBANCARIO: TcxGridDBColumn;
    grdDBTableView1NMMOVIMENTACAO: TcxGridDBColumn;
    grdDBTableView1DSHISTORICO: TcxGridDBColumn;
    grdDBTableView1VLPAGAMENTO: TcxGridDBColumn;
    grdDBTableView1VLDEPOSITO: TcxGridDBColumn;
    grdDBTableView1BOCONCILIADO: TcxGridDBColumn;
    grdDBTableView1NUMOVBANCARIO: TcxGridDBColumn;
    grdDBTableView2CDEXTRATO: TcxGridDBColumn;
    grdDBTableView2DTEMISSAO: TcxGridDBColumn;
    grdDBTableView2NMTPEXTRATO: TcxGridDBColumn;
    grdDBTableView2NMCATEXTRATO: TcxGridDBColumn;
    grdDBTableView2VLPAGAMENTO: TcxGridDBColumn;
    grdDBTableView2VLDEPOSITO: TcxGridDBColumn;
    grdDBTableView2NUEXTRATO: TcxGridDBColumn;
    cdsextratoCDMOVBANCARIO: TIntegerField;
    cdsCDNATUREZA: TStringField;
    cdsCDMOVIMENTACAO: TIntegerField;
    cdsVLLANCAMENTO: TCurrencyField;
    cdsextratoCDEMPRESA: TFMTBCDField;
    cdsextratoCDUSUARIOI: TIntegerField;
    cdsextratoCDUSUARIOA: TIntegerField;
    cdsextratoCDCOMPUTADORI: TIntegerField;
    cdsextratoCDCOMPUTADORA: TIntegerField;
    cdsextratoTSINCLUSAO: TDateTimeField;
    cdsextratoTSALTERACAO: TDateTimeField;
    procedure grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmdlgaprovarconciliado: Tfrmdlgaprovarconciliado;

function Aprovar_pre_conciliar(qry, qryextrato:TDataset; tipo:string):Boolean;

implementation

{$R *.dfm}

function Aprovar_pre_conciliar(qry, qryextrato:TDataset; tipo:string):Boolean;
  function get_cdmovbancario:string;
  begin
    if tipo = 'cp' then
    begin
      result := RetornaSQLString('select first 1 cdmovbancario '+
                                 'from movbancario '+
                                 'where cdempresa='+empresa.cdempresa.tostring+' '+
                                 'and cdconta='+qryextrato.fieldbyname(_cdconta).asstring+' '+
                                 'and vlpagamento='+getcurrencys(qryextrato.fieldbyname(_vlpagamento).AsCurrency)+' '+
                                 'and numovbancario='+quotedstr(qryextrato.fieldbyname(_nuextrato).AsString)+' and boconciliado=''N'' '+
                                 'order by dtemissao desc');
    end
    else
    begin
      if qryextrato.FieldByName(_vlpagamento).AsCurrency > 0 then
      begin
        result := RetornaSQLString('select first 1 cdmovbancario '+
                                   'from movbancario '+
                                   'where cdempresa='+empresa.cdempresa.tostring+' '+
                                   'and cdconta='+qryextrato.fieldbyname(_cdconta).asstring+' '+
                                   'and vlpagamento='+getcurrencys(qryextrato.fieldbyname(_vlpagamento).AsCurrency)+' '+
                                   'and dtemissao='+getdtbanco(qryextrato.fieldbyname(_dtemissao).AsDateTime)+' and boconciliado=''N'' '+
                                   'order by dtemissao desc');
      end
      else if qryextrato.FieldByName(_vldeposito).AsCurrency > 0 then
      begin
        Result := RetornaSQLString('select first 1 cdmovbancario '+
                                   'from movbancario '+
                                   'where cdempresa='+empresa.cdempresa.tostring+' '+
                                   'and cdconta='+qryextrato.fieldbyname(_cdconta).asstring+' '+
                                   'and vldeposito='+getcurrencys(qryextrato.fieldbyname(_vldeposito).AsCurrency)+' '+
                                   'and dtemissao='+getdtbanco(qryextrato.fieldbyname(_dtemissao).AsDateTime)+' and boconciliado=''N'' '+
                                   'order by dtemissao desc');
      end;
    end;
    if result = '' then
    begin
      result := _0;
    end;
  end;
  function makesql:string;
  begin
    if tipo = 'lk' then
    begin
      Result := 'SELECT first 1 L.cdmovimentacao'+
                    ',l.dshistorico'+
                    ',(SELECT M.nmmovimentacao FROM MOVIMENTACAO m WHERE m.cdempresa=l.cdempresa and m.CDMOVIMENTACAO=L.cdmovimentacao) nmmovimentacao '+
                'FROM LINKEXTRATO l '+
                'where l.cdempresa='+empresa.cdempresa.tostring+' and cdtpextrato='+qryextrato.fieldbyname(_cdtpextrato).AsString+' and ((cdcatextrato='+qryextrato.fieldbyname(_cdcatextrato).AsString+'))';//+' or (dsextrato like '+)));
    end
    else
    begin
      result := 'SELECT M.BOCONCILIADO,M.DTEMISSAO'+
                      ',M.CDMOVBANCARIO'+
                      ',mv.NMMOVIMENTACAO'+
                      ',M.DSHISTORICO'+
                      ',M.VLPAGAMENTO'+
                      ',M.VLSALDO'+
                      ',M.VLDEPOSITO'+
                      ',M.NUMOVBANCARIO '+
                'FROM MOVBANCARIO M '+
                'left JOIN MOVIMENTACAO MV on mv.cdmovimentacao=m.cdmovimentacao and m.cdempresa=mv.cdempresa '+
                'WHERE m.cdempresa='+empresa.cdempresa.tostring+' and m.CDMOVBANCARIO='+get_cdmovbancario;
    end;
  end;
  function preencher_movbancario:Boolean;
  var
    c : TClasseQuery;
  begin
    result := False;
    c      := TClasseQuery.Create(makesql);
    try
      frmprogressbar.gau1.MaxValue := c.q.RecordCount;
      while not c.q.Eof do
      begin
        frmprogressbar.gau1.Progress := c.q.RecNo;
        Application.ProcessMessages;
        result := True;
        frmdlgaprovarconciliado.cds.Append;
        frmdlgaprovarconciliado.cds.FieldByName(_BOCONCILIADO).AsString   := _S;
        if tipo = 'lk' then
        begin
          frmdlgaprovarconciliado.cds.FieldByName(_dtemissao).AsDateTime     := qryextrato.FieldByName(_dtemissao).AsDateTime;
          frmdlgaprovarconciliado.cds.FieldByName(_CDMOVBANCARIO).AsString   := GerarCodigo(_movbancario);
          frmdlgaprovarconciliado.cds.FieldByName(_NMMOVIMENTACAO).AsString  := c.q.fieldbyname(_NMMOVIMENTACAO).AsString;
          frmdlgaprovarconciliado.cds.FieldByName(_cdMOVIMENTACAO).AsString  := c.q.fieldbyname(_cdMOVIMENTACAO).AsString;
          if c.q.FieldByName(_dshistorico).AsString <> '' then
          begin
            frmdlgaprovarconciliado.cdsDSHISTORICO.AsString := c.q.fieldbyname(_dshistorico).AsString;
          end;
          frmdlgaprovarconciliado.cds.FieldByName(_cdnatureza).AsString      := qryextrato.FieldByName(_cdnatureza).AsString;
          if qryextrato.FieldByName(_cdnatureza).AsString = _D then
          begin
            frmdlgaprovarconciliado.cds.FieldByName(_VLPAGAMENTO).AsCurrency  := qryextrato.fieldbyname(_VLPAGAMENTO).AsCurrency;
            frmdlgaprovarconciliado.cds.FieldByName(_vllancamento).AsCurrency := qryextrato.fieldbyname(_VLPAGAMENTO).AsCurrency;
          end
          else
          begin
            frmdlgaprovarconciliado.cds.FieldByName(_VLDEPOSITO).AsCurrency   := qryextrato.fieldbyname(_VLDEPOSITO).AsCurrency;
            frmdlgaprovarconciliado.cds.FieldByName(_VLlancamento).AsCurrency := qryextrato.fieldbyname(_vldeposito).AsCurrency;
          end;
        end
        else
        begin
          frmdlgaprovarconciliado.cds.FieldByName(_DTEMISSAO).AsDateTime    := c.q.fieldbyname(_DTEMISSAO).AsDateTime;
          frmdlgaprovarconciliado.cds.FieldByName(_CDMOVBANCARIO).AsString  := c.q.fieldbyname(_CDMOVBANCARIO).AsString;
          frmdlgaprovarconciliado.cds.FieldByName(_NMMOVIMENTACAO).AsString := c.q.fieldbyname(_NMMOVIMENTACAO).AsString;
          frmdlgaprovarconciliado.cds.FieldByName(_DSHISTORICO).AsString    := c.q.fieldbyname(_DSHISTORICO).AsString;
          frmdlgaprovarconciliado.cds.FieldByName(_VLPAGAMENTO).AsCurrency  := c.q.fieldbyname(_VLPAGAMENTO).AsCurrency;
          frmdlgaprovarconciliado.cds.FieldByName(_VLSALDO).AsCurrency      := c.q.fieldbyname(_VLSALDO).AsCurrency;
          frmdlgaprovarconciliado.cds.FieldByName(_VLDEPOSITO).AsCurrency   := c.q.fieldbyname(_VLDEPOSITO).AsCurrency;
          frmdlgaprovarconciliado.cds.FieldByName(_NUMOVBANCARIO).AsString  := c.q.fieldbyname(_NUMOVBANCARIO).AsString;
        end;
        frmdlgaprovarconciliado.cds.Post;
        c.q.Next;
      end;
    finally
      freeandnil(c);
    end;
  end;
  procedure preencher_extrato;
  var
    i : Integer;
  begin
    frmdlgaprovarconciliado.cdsextrato.Append;
    for i := 0 to qryextrato.FieldCount - 1 do
    begin
      if qryextrato.Fields[i].FieldName = UpperCase(_bo+_ativar) then
      begin
        Continue;
      end;
      frmdlgaprovarconciliado.cdsextrato.FieldByName(qryextrato.Fields[i].FieldName).AsVariant := qryextrato.Fields[i].AsVariant;
    end;
    frmdlgaprovarconciliado.cdsextrato.FieldByName(_CDMOVBANCARIO).AsString := frmdlgaprovarconciliado.cds.FieldByName(_CDMOVBANCARIO).AsString;
    frmdlgaprovarconciliado.cdsextrato.post;
  end;
  function get_valor(nmcampo:string):string;
  begin
    if frmdlgaprovarconciliado.cds.FieldByName(nmcampo).IsNull then
    begin
      result := _0;
      Exit;
    end;
    result := getcurrencys(frmdlgaprovarconciliado.cds.fieldbyname(nmcampo).AsCurrency);
  end;
var
  sql : TStrings;
  dshistorico : string;
  function get_insert_movbancario:string;
    function get_cntcusto(cdmovimentacao:string):string;
    begin
      result := NomedoCodigo(_movimentacao, cdmovimentacao, _cdcntcusto);
      if result = '' then
      begin
        Result := _null;
      end;
    end;
    function get_plconta(cdmovimentacao:string):string;
    begin
      result := NomedoCodigo(_movimentacao, cdmovimentacao, _cd+_plconta);
      if result = '' then
      begin
        Result := _null;
      end;
    end;
    {2.7.21.1110
    function get_nuplconta(cdmovimentacao:string):string;
    begin
      result := NomedoCodigo(_movimentacao, cdmovimentacao, _cdplconta);
      if result = '' then
      begin
        Result := _null;
        Exit;
      end;
      result := QuotedStr(NomedoCodigo(_plconta, Result, _NUPLCONTA));
    end;
    }
  begin
    result := 'insert into movbancario'+
              '(dshistorico,CDMOVBANCARIO,CDEXTRATO,CDCONTA,CDMOVIMENTACAO,cdplconta,'+
              {2.7.21.1110
              nuplconta,
              }
              'cdcntcusto,'+
              'DTEMISSAO,VLLANCAMENTO,CDNATUREZA,BOCONCILIADO,VLDEPOSITO,VLPAGAMENTO,'+_sqlreg+
                   dshistorico+','+
                   frmdlgaprovarconciliado.cds.fieldbyname(_cdmovbancario).AsString+','+
                   frmdlgaprovarconciliado.cdsextrato.FieldByName(_cdextrato).AsString+','+
                   frmdlgaprovarconciliado.cdsextrato.fieldbyname(_cdconta).AsString+','+
                   frmdlgaprovarconciliado.cds.fieldbyname(_cdmovimentacao).AsString+','+
                   get_plconta(frmdlgaprovarconciliado.cds.fieldbyname(_cdmovimentacao).AsString)+','+
                   { 2.7.21.1110
                   get_nuplconta(frmdlgaprovarconciliado.cds.fieldbyname(_cdmovimentacao).AsString)+','+
                   }
                   get_cntcusto(frmdlgaprovarconciliado.cds.fieldbyname(_cdmovimentacao).AsString)+','+
                   getdtbanco(qry.fieldbyname(_dtemissao).asdatetime)+','+
                   getcurrencys(frmdlgaprovarconciliado.cds.fieldbyname(_vllancamento).ascurrency)+','+
                   QuotedStr(frmdlgaprovarconciliado.cds.fieldbyname(_cdnatureza).AsString)+',''S'','+
                   get_valor(_vldeposito)+','+
                   get_valor(_vlpagamento)+','+sqlregistra+';';
  end;
begin
  result := False;
  if not qryextrato.Active then
  begin
    exit;
  end;
  qryextrato.DisableControls;
  sql                     := TStringlist.Create;
  frmdlgaprovarconciliado := Tfrmdlgaprovarconciliado.Create(nil);
  frmprogressbar          := Tfrmprogressbar.Create(nil);
  try
    frmdlgaprovarconciliado.cds.Open;
    frmdlgaprovarconciliado.cdsextrato.Open;
    qryextrato.First;
    frmprogressbar.gau.MaxValue := qryextrato.RecordCount;
    frmprogressbar.Show;
    while not qryextrato.Eof do
    begin
      frmprogressbar.gau.Progress := qryextrato.RecNo;
      Application.ProcessMessages;
      if (qryextrato.FieldByName(_boconciliado).AsString = _N) and preencher_movbancario then
      begin
        preencher_extrato;
      end;
      qryextrato.Next;
    end;
    if (frmdlgaprovarconciliado.cds.RecordCount = 0) or (frmdlgaprovarconciliado.ShowModal <> mrok) then
    begin
      Exit;
    end;
    frmdlgaprovarconciliado.cds.First;
    frmprogressbar.gau.MaxValue := frmdlgaprovarconciliado.cds.RecordCount;
    frmprogressbar.Show;
    while not frmdlgaprovarconciliado.cds.Eof do
    begin
      frmprogressbar.gau.Progress := frmdlgaprovarconciliado.cds.RecNo;
      Application.ProcessMessages;
      if frmdlgaprovarconciliado.cds.FieldByName(_boconciliado).AsString = _S then
      begin
        frmdlgaprovarconciliado.cdsextrato.Filter := 'CDMOVBANCARIO='+frmdlgaprovarconciliado.cds.fieldbyname(_cdmovbancario).AsString;
        frmdlgaprovarconciliado.cdsextrato.Filtered := True;
        if tipo = 'lk' then
        begin
          dshistorico := _null;
          if frmdlgaprovarconciliado.cdsDSHISTORICO.AsString <> '' then
          begin
            dshistorico := QuotedStr(frmdlgaprovarconciliado.cdsDSHISTORICO.AsString);
          end;
          sql.add(get_insert_movbancario);
          sql.add('update extrato set boconciliado=''S'' where cdempresa='+empresa.cdempresa.tostring+' and cdextrato='+frmdlgaprovarconciliado.cdsextrato.FieldByName(_cdextrato).AsString+';');
        end
        else
        begin
          sql.add('update movbancario set boconciliado=''S'',cdextrato='+frmdlgaprovarconciliado.cdsextrato.FieldByName(_cdextrato).AsString+' where cdempresa='+empresa.cdempresa.tostring+' and cdmovbancario='+frmdlgaprovarconciliado.cdsextrato.FieldByName(_cdmovbancario).AsString+';');
          sql.add('update extrato set boconciliado=''S'' where cdempresa='+empresa.cdempresa.tostring+' and cdextrato='+frmdlgaprovarconciliado.cdsextrato.FieldByName(_cdextrato).AsString+';');
        end;
      end;
      frmdlgaprovarconciliado.cds.Next;
    end;
    if sql.Count > 0 then
    begin
      ExecutaScript(Sql);
      result := True;
    end;
  finally
    frmprogressbar.Free;
    qryextrato.EnableControls;
    FreeAndNil(sql);
    freeandnil(frmdlgaprovarconciliado);
  end;
end;

procedure Tfrmdlgaprovarconciliado.grdDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.

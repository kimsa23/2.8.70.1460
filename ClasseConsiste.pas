unit ClasseConsiste;

interface

uses
  System.Actions, System.UITypes,
  classes, dialogs, sysutils,
  uconstantes, sqlexpr, db, uvalidadocumento, ustrings, uregistro, controls, StdCtrls,
  ACBrValidador,
  cxPC, cxGroupBox;

procedure ConsisteInscricaoEstadual       (dataset:tdataset; gbxJuridica, gbxFisica: TcxGroupBox; edtnuinscest, edtnuinscest2: TEdit; pgc: TcxPageControl=nil);
procedure ConsisteCNPJ                    (dataset: tdataset; tbl, exibe:string; repetido:boolean=false);overload;
procedure ConsisteCPF                     (dataset: tdataset; tbl, exibe:string; repetido:boolean);overload;

implementation

procedure ConsisteInscricaoEstadual(dataset:tdataset; gbxJuridica, gbxFisica: TcxGroupBox; edtnuinscest, edtnuinscest2: TEdit; pgc: TcxPageControl=nil);
var
  mensagem : string;
begin
  if dataset.FieldByName(_nuinscest).AsString = '' then
  begin
    exit;
  end;
  if dataset.FieldByName(_cduf).IsNull then
  begin
    messagedlg('Unidade Federativa obrigatório para validação da Inscrição Estadual!', mtinformation, [mbok], 0);
    if pgc <> nil then
    begin
      pgc.ActivePageIndex := 0;
    end;
    Dataset.FieldByName(_cduf).FocusControl;
    abort;
  end;
  mensagem := ValidarIE(dataset.fieldbyname(_nuinscest).AsString, NomedoCodigo(_uf, dataset.fieldbyname(_cduf).Asstring, _sguf));
  if mensagem <> '' then
  begin
    if pgc <> nil then
    begin
      pgc.ActivePageIndex := 0;
    end;
    if Dataset.Fieldbyname(_tppessoa).AsString = _J then
    begin
      gbxJuridica.BringToFront;
      edtnuinscest.SetFocus;
      messagedlg(mensagem, mtinformation, [mbok], 0);
      abort;
    end
    else
    begin
      gbxFisica.BringToFront;
      edtnuinscest2.SetFocus;
      messagedlg(mensagem, mtinformation, [mbok], 0);
      abort;
    end;
  end;
end;

procedure ConsisteCPF(dataset: tdataset; tbl, exibe:string; repetido:boolean);
var
  mensagem, cdcliente, nmcliente, numero: string;
begin
  if dataset.fieldbyname(_nucpf).isnull then
  begin
    exit;
  end;
  numero := removercaracteres(dataset.fieldbyname(_nucpf).Asstring);
  if numero = '' then
  begin
    exit;
  end;
  //@mensagem := ACBrValidadorValidarCPF(dataset.fieldbyname(_nucpf).Asstring);
  mensagem := ValidarCPF(dataset.fieldbyname(_nucpf).Asstring);
  if mensagem <> '' then
  begin
    messagedlg(mensagem, mtinformation, [mbok], 0);
    dataset.fieldbyname(_nucpf).FocusControl;
    abort;
  end;
  cdcliente := qregistro.codigo_do_registro_existe(_nucpf, dataset.fieldbyname(_nucpf).Asstring, tbl, dataset.fieldbyname(_cd+tbl).asstring);
  if cdcliente = '' then
  begin
    exit;
  end;
  if repetido then
  begin
    nmcliente := NomedoCodigo(tbl, cdcliente);
    if messagedlg('CPF '+dataset.fieldbyname(_nucpf).Asstring+' repetido no '+exibe+#13+cdcliente+' - '+nmcliente+'!'#13+_msg_deseja_Continuar, mtinformation, [mbyes, mbno], 0) = mrno then
    begin
      dataset.fieldbyname(_nucpf).FocusControl;
      abort;
    end;
  end
  else
  begin
    messagedlg('CPF '+dataset.fieldbyname(_nucpf).Asstring+' repetido no '+exibe+#13+cdcliente+' - '+nmcliente+'!', mtinformation, [mbok], 0);
    dataset.fieldbyname(_nucpf).FocusControl;
    abort;
  end
end;

procedure ConsisteCNPJ(dataset: tdataset; tbl, exibe:string; repetido:boolean=false);
var
  mensagem, cdcliente, nmcliente, numero: string;
begin
  if dataset.fieldbyname(_nucnpj).isnull then
  begin
    exit;
  end;
  numero := dataset.fieldbyname(_nucnpj).Asstring;
  numero := removercaracteres(NUMERO);
  if numero = '' then
  begin
    exit;
  end;
  if (dataset.fieldbyname(_cduf).asstring = _99) and (dataset.fieldbyname(_nucnpj).asstring = _cnpj_exterior) then
  begin
    exit;
  end;
  //@mensagem := ACBrValidadorValidarCNPJ(dataset.fieldbyname(_nucnpj).Asstring);
  mensagem := ValidarCNPJ(dataset.fieldbyname(_nucnpj).Asstring);
  if mensagem <> '' then
  begin
    messagedlg(mensagem, mtinformation, [mbok], 0);
    dataset.fieldbyname(_nucnpj).FocusControl;
    abort;
  end;
  cdcliente := qregistro.codigo_do_registro_existe(_nucnpj, dataset.fieldbyname(_nucnpj).Asstring, tbl, dataset.fieldbyname(_cd+tbl).asstring);
  if cdcliente <> '' then
  begin
    nmcliente := NomedoCodigo(tbl, cdcliente);
    if repetido then
    begin
      if messagedlg('CNPJ '+dataset.fieldbyname(_nucnpj).Asstring+' repetido no '+exibe+#13+cdcliente+' - '+nmcliente+'!'#13+_msg_deseja_Continuar, mtinformation, [mbyes, mbno], 0) = mrno then
      begin
        dataset.fieldbyname(_nucnpj).FocusControl;
        abort;
      end;
    end
    else
    begin
      messagedlg('CNPJ '+dataset.fieldbyname(_nucnpj).Asstring+' repetido no '+exibe+#13+cdcliente+' - '+nmcliente+'!', mtinformation, [mbok], 0);
      dataset.fieldbyname(_nucnpj).FocusControl;
      abort;
    end;
  end;
end;

end.

unit usaidaexportaralterdatasaca;

interface

uses
  forms, controls, classes, sysutils, dialogs, ComCtrls, ExtCtrls, gauges,
  udatahora, uconstantes, ustrings, uprogressbar, usystem,
  classeempresa, classeretornasql, classeaplicacao, classeQuery;

function Exportar_Serie_D_Alterdata(dti, dtf: TDate):boolean;

implementation

type
  TExportar = class(tobject)
  private
  protected
    dti, dtf : TDate;
    linha : tstrings;
    c, cit : TClasseQuery;
    savedialog : TSaveDialog;
    function makesql:string;
    function makesqlit:string;
    procedure Abrir_saida;
    procedure Abrir_itsaida;
    procedure Registro01;
    procedure Registro02;
    procedure Registro03;
    procedure registro04;
    procedure selecionar_registro_filho;
  public
    constructor create;
    function    gerar(datai, dataf:TDate):boolean;
    destructor  destroy; override;
  end;


function Exportar_Serie_D_Alterdata(dti, dtf: TDate):boolean;
var
  exportar : TExportar;
begin
  exportar := TExportar.create;
  try
    result := exportar.gerar(dti, dtf);
  finally
    exportar.Free;
  end;
end;

procedure TExportar.Abrir_itsaida;
begin
  cit.q.Connection := aplicacao.confire;
  cit.q.sql.text   := makesqlit;
  cit.q.Open;
end;

procedure TExportar.Abrir_saida;
begin
  c.q.Connection := aplicacao.confire;
  c.q.sql.text      := makesql;
  c.q.Open;
end;

constructor TExportar.create;
begin
  c   := TClasseQuery.Create;
  cit := TClasseQuery.Create;
  linha      := tstringlist.Create;
  savedialog := tsavedialog.Create(nil);
end;

destructor TExportar.destroy;
begin
  freeandnil(c);
  freeandnil(cit);
  freeandnil(linha);
  freeandnil(savedialog);
  inherited;
end;

function TExportar.gerar(datai, dataf: TDate): boolean;
begin
  dti := datai;
  dtf := dataf;
  Abrir_saida;
  Abrir_itsaida;
  while not c.q.Eof do
  begin
    Registro01;
    Registro02;
    Registro03;
    selecionar_registro_filho;
    while not cit.q.Eof do
    begin
      registro04;
      cit.q.Next;
    end;
    c.q.Next;
  end;
  savedialog.FileName := 'Serie D '+empresa.nmempresa+' '+FormatDateTime(_yyyymm, dti)+'.'+_txt;
  Result              := savedialog.Execute;
  if result then
  begin
    linha.SaveToFile(savedialog.FileName);
  end;
end;

function TExportar.makesql: string;
begin
  result := 'select s.cdsaida'+
                  ',e.nuserie'+
                  ',s.nusaida'+
                  ',s.dtemissao'+
                  ',s.dtsaida'+
                  ',c.q.cdcliente'+
                  ',c.q.nmcliente'+
                  ',c.q.dsendereco'+
                  ',c.q.nmbairro'+
                  ',m.nmmunicipio'+
                  ',c.q.nucep'+
                  ',u.sguf'+
                  ',c.q.nufone1'+
                  ',c.q.nucnpj'+
                  ',c.q.nuinscest'+
                  ',s.tpentsai'+
                  ',s.cdcfop'+
                  ',c.q.cdmunicipio'+
                  ',s.vltotal'+
                  ',s.vlicms'+
                  ',s.vlbaseicms'+
                  ',(select first 1 alicms from itsaida where cdempresa=s.cdempresa and cdsaida=s.cdsaida) alicms'+
                  ',s.nudocfiscalicms '+
            'from saida s '+
            'inner join serie e on e.cdserie=s.cdserie and s.cdempresa=e.cdempresa '+
            'left join cliente c on c.q.cdcliente=s.cdcliente and s.cdempresa=c.q.cdempresa '+
            'left join municipio m on m.cdmunicipio=c.q.cdmunicipio '+
            'left join uf u on u.cduf=c.q.cduf '+
            'where s.nudocfiscalicms=''02'' and s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)
end;

function TExportar.makesqlit: string;
begin
  result := 'select i.cdproduto'+
                  ',p.nmproduto'+
                  ',p.nuclfiscal'+
                  ',u.nmunidade'+
                  ',i.cdsaida'+
                  ',i.qtitem'+
                  ',i.vltotal'+
                  ',i.nusticms'+
                  ',i.vlunitario'+
                  ',i.vlipi'+
                  ',i.vlbaseicms'+
                  ',i.vldesconto '+
            ' from saida s '+
            'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
            'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
            'left join unidade u on u.cdunidade=p.cdunidade and u.cdempresa=p.cdempresa '+
            'where s.nudocfiscalicms=''02'' and s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)
end;

procedure TExportar.Registro01;
begin
  linha.Add(
                                                                                //NOME DO CAMPO	                                  DE	ATÉ	TAMANHO	TIPO
  FormatarTextoEsquerda(empresa.livro.cdalterdata, 5, _0)+                                             //Código da Empresa	                              1	  5	  5	      Numérico
  FormatarTextoDireita('NF', 5)+                                               //Espécie NF	                                    6	  10	5	      Alfanumérico
  FormatarTextoDireita(c.q.fieldbyname(_nuserie).AsString, 5)+                    //Serie NF	                                      11	15	5	      Alfanumérico
  FormatarTextoDireita(c.q.fieldbyname(_nusaida).AsString, 13)+                   //Numero NF	                                      16	28	13	    Alfanumérico
  stringofchar(_0, 3)+                                                          //Código Fiscal (**)	                            29	31	3	      Numérico
  FormatDateTime(_DDMMAA, c.q.fieldbyname(_dtemissao).AsDateTime)+                //Data de Emissão (DDMMAA)	                      32	37	6	      Numérico
  FormatDateTime(_DDMMAA, c.q.fieldbyname(_dtsaida).AsDateTime)+                  //Data de Entrada/Saída (DDMMAA)	                38	43	6	      Numérico
  stringofchar('*', 5)+                                                         //Código Contábil UM (valor contábil)	            44	48	5	      Alfanumérico
  stringofchar('*', 5)+                                                         //Código Contábil DOIS (valor ICMS)	              49	53	5	      Alfanumérico
  stringofchar('*', 5)+                                                         //Código Contábil TRÊS (valor IPI)	              54	58	5	      Alfanumérico
  FormatarTextoEsquerda(c.q.fieldbyname(_cdcliente).AsString, 16, _0)+            //Código ou CNPJ do Fornecedor ou Cliente	        59	74	16	    Numérico
  FormatarTextoDireita(RetiraAcentos(c.q.fieldbyname(_nmcliente).AsString), 40)+  //Nome	                                          75	114	40	    Alfanumérico
  FormatarTextoDireita(RetiraAcentos(c.q.fieldbyname(_dsendereco).AsString), 40)+ //Endereço	                                      115	154	40	    Alfanumérico
  FormatarTextoDireita(RetiraAcentos(c.q.fieldbyname(_nmbairro).AsString), 15)+   //Bairro	                                        155	169	15	    Alfanumérico
  FormatarTextoDireita(RetiraAcentos(c.q.fieldbyname(_nmmunicipio).AsString), 15)+//Cidade	                                        170	184	15	    Alfanumérico
  FormatarTextoEsquerda(removercaracteres(c.q.fieldbyname(_nucep).AsString), 8, _0)+//CEP                                           185	192	8	      Numérico
  FormatarTextoDireita(RetiraAcentos(c.q.fieldbyname(_sguf).AsString), 2)+        //UF	                                            193	194	2	      Alfabético
  FormatarTextoDireita(c.q.fieldbyname(_nufone1).AsString, 12)+                   //Telefone	                                      195	206	12	    Alfanumérico
  FormatarTextoEsquerda(removercaracteres(c.q.fieldbyname(_nucnpj).AsString), 14, _0)+//CNPJ/CPF                                    207	220	14	    Numérico
  FormatarTextoDireita(RetiraAcentos(c.q.fieldbyname(_nuinscest).AsString), 16)+  //Inscrição Estadual	                            221	236	16	    Alfanumérico
  espaco(5)+                                                                    //Conta (código no plano de contas)	              237	241	5	      Alfanumérico
  stringofchar(_0, 3)+                                                          //Código da Natureza das operações	              242	244	3	      Numérico
  FormatarTextoEsquerda(c.q.fieldbyname(_tpentsai).AsString, 1)+                  //Tipo da Nota: Entrada ou Saída	                245	245	1	      E ou S
  FormatarTextoEsquerda(c.q.fieldbyname(_cdsaida).AsString, 6, _0)+               //Registro Seqüencial para cada NF	              246	251	6	      Numérico
  espaco(1)+                                                                    //Cancelamento ou Exclusão de notas	              252	252	1	      C ou E
  FormatarTextoEsquerda(c.q.fieldbyname(_cdcfop).AsString, 4)+                    //Código Fiscal (usar para cfop de 4 digitos)	    253	256	4	      Numérico
  espaco(10)+                                                                   //Conta (código no plano de contas)	              257	266	10	    Alfanumérico
  espaco(5)+                                                                    //Código Contábil QUATRO (valor st)	              267	271	5	      Alfanumérico
  espaco(16)+                                                                   //Código ou CNPJ do destinatário ou remente (*)	  272	287	16	    Alfanumérico
  espaco(40)+                                                                   //Nome do destinatário ou remetente (*)	          288	327	40	    Alfanumérico
  espaco(40)+                                                                   //Endereço do destinatário ou remetente (*)	      328	367	40	    Alfanumérico
  espaco(15)+                                                                   //Bairro do destinatário ou remetente (*)	        368	382	15	    Alfanumérico
  espaco(15)+                                                                   //Cidade do destinatário ou remetente (*)	        383	397	15	    Alfanumérico
  Stringofchar(_0, 8)+                                                          //CEP do destinatário ou remetente (*)	          398	405	8	      Numérico
  espaco(2)+                                                                    //UF do destinatário ou remetente (*)	            406	407	2	      Alfabético
  espaco(12)+                                                                   //Telefone do destinatário ou remetente (*)	      408	419	12	    Alfanumérico
  stringofchar(_0, 14)+                                                         //CNPJ/CPF do destinatário ou remetente (*)	      420	433	14	    Numérico
  espaco(16)+                                                                   //Insc.q. Estadual do destinatário ou remetente (*)	434	449	16	    Alfanumérico
  espaco(5)+                                                                    //Conta (cód no plano contas) destin/remet (*)	  450	454	5	      Alfanumérico
  stringofchar(_0, 5)+                                                          //Código do País	                                455	459	5	      Numérico
  stringofchar(_0, 14)+                                                         //Inscrição Suframa	                              460	473	14	    Numerico
  FormatarTextoEsquerda(c.q.fieldbyname(_cdmunicipio).AsString, 7, _0)+           //Cód do município IBGE	                          474	480	7	      Numérico
  espaco(16)+                                                                   //Código ou CNPJ do remetente	                    481	496	16	    Alfanumérico
  espaco(40)+                                                                   //Nome do remetente 	                            497	536	40	    Alfanumérico
  espaco(40)+                                                                   //Endereço do remetente 	                        537	576	40	    Alfanumérico
  espaco(15)+                                                                   //Bairro do remetente 	                          577	591	15	    Alfanumérico
  espaco(15)+                                                                   //Cidade do remetente 	                          592	606	15	    Alfanumérico
  stringofchar(_0, 8)+                                                          //CEP do remetente 	                              607	614	8	      Numérico
  espaco(2)+                                                                    //UF do remetente 	                              615	616	2	      Alfabético
  espaco(12)+                                                                   //Telefone do remetente 	                        617	628	12	    Alfanumérico
  stringofchar(_0, 14)+                                                         //CNPJ/CPF do remetente 	                        629	642	14	    Numérico
  espaco(16)+                                                                   //Insc.q. Estadual do remetente 	                  643	658	16	    Alfanumérico
  espaco(5)+                                                                    //Conta (código no plano de contas) do remetente 	659	663	5	      Alfanumérico
  espaco(16)+                                                                   //Código ou CNPJ do consignatário	                664	679	16	    Alfanumérico
  espaco(40)+                                                                   //Nome do consignatário	                          680	719	40	    Alfanumérico
  espaco(40)+                                                                   //Endereço do consignatário	                      720	759	40	    Alfanumérico
  espaco(15)+                                                                   //Bairro do consignatário 	                      760	774	15	    Alfanumérico
  espaco(15)+                                                                   //Cidade do consignatário 	                      775	789	15	    Alfanumérico
  stringofchar(_0, 8)+                                                          //CEP do consignatário	                          790	797	8	      Numérico
  espaco(2)+                                                                    //UF do consignatário 	                          798	799	2	      Alfabético
  espaco(12)+                                                                   //Telefone do consignatário	                      800	811	12	    Alfanumérico
  stringofchar(_0, 14)+                                                         //CNPJ/CPF do consignatário	                      812	825	14	    Numérico
  espaco(16)+                                                                   //Insc.q. Estadual do consignatário 	              826	841	16	    Alfanumérico
  espaco(5)+                                                                    //Conta (cód no plano contas) consignatário	      842	846	5	      Alfanumérico
  espaco(44)+                                                                   //Chave de Acesso NFe	                            847	890	44	    Alfanumérico
  espaco(1)+                                                                    //Emissão Própria	                                891	891	1	      Alfanumérico
  stringofchar(_0, 5)                                                           //Código Contábil CINCO (STI)	                    892	896	5	      Numérico
  )
end;

procedure TExportar.Registro02;
begin
  linha.Add(stringofchar(' ', 250));
{
NOME DO CAMPO	    DE	AT?	TAMANHO	TIPO
Observação da NF	1	  250	250	    Alfanumérico
}
end;

procedure TExportar.Registro03;
begin
  linha.add(
                                                                     //NOME DO CAMPO	                                  DE	AT?	TAMANHO	TIPO
  FormatarMoedaSPonto_(c.q.fieldbyname(_vltotal).AsCurrency, 12)+         //Valor Contábil	                                  1	  12	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12) +                                         //ICMS Isentas	                                    13	24	(12,2)	Numérico
  FormatarMoedaSPonto_(c.q.fieldbyname(_vltotal).AsCurrency, 12)+         //ICMS Outras	                                    25	36	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12) +                                         //ICMS Base	                                      37	48	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 04) +                                          //ICMS Alíquota	                                  49	52	(4,2)	  Numérico
  FormatarMoedaSPonto_(0, 12) +                                         //ICMS Valor	                                      53	64	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //ICMS Ajuste	                                    65	76	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //IPI Isentas	                                    77	88	(12,2)	Numérico
  FormatarMoedaSPonto_(c.q.fieldbyname(_vltotal).AsCurrency, 12)+         //IPI Outras	                                      89	100	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //IPI Base	                                        101	112	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 04)+                                          //IPI Alíquota	                                    113	116	(4,2)	  Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //IPI Valor	                                      117	128	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //IPI Ajuste	                                      129	140	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor a abater da base de cal. PIS	              141	152	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor a abater da base de cal. COFINS	          153	164	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Base da Substituição tributária	                165	176	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor da Substituição tributária	                177	188	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor das Despesas Acessórias	                  189	200	(12,2)	Numérico
  espaco(1)+                                                         //Código CIF_FOB (1=CIF, 2=FOB)	                  201	201	1	      Numérico
  FormatarTextoEsquerda(c.q.fieldbyname(_nudocfiscalicms).AsString, 2)+//Código de Modelo Fiscal	                        202	203	2	      Alfanumérico
  espaco(1)+                                                         //Identifica nota de Combustível (S/N)	            204	204	1	      Alfabético
  espaco(5)+                                                         //Código Situação Tributária Federal	              205	209	5	      Alfanumérico
  espaco(1)+                                                         //Cesta Básica (ES) (S/N)	                        210	210	1	      Alfanumérico
  FormatarMoedaSPonto_(0, 13)+                                          //Base do Diferencial	                            211	223	(13,2)	Numérico
  FormatarMoedaSPonto_(0, 06)+                                          //Alíquota do Diferencial	                        224	229	(06,2)	Numérico
  FormatarMoedaSPonto_(0, 13)+                                          //Valor do Diferencial	                            230	242	(13,2)	Numérico
  espaco(1)+                                                         //Ajuste ICMS	                                    243	243	1	      Alfanumérico
  espaco(1)+                                                         //Ajuste IPI	                                      244	244	1	      Alfanumérico
  espaco(3)+                                                         //Código ECF	                                      245	247	3	      Alfanumérico
  stringofchar(_0, 6)+                                               //Contador Redução Z	                              248	253	6	      Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor Total Inicial	                            254	265	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor Total Final	                              266	277	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor de venda (NF entrada)	                    278	289	(12,2)	Numérico
  espaco(1)+                                                         //Desoneração Industria Naval (RJ) (S/N)	          290	290	1	      Alfanumérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor Cancelamento	                              291	302	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor Descontos	                                303	314	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor ISSQN	                                    315	326	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor Abatimento da base do IR	                  327	338	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor Abatimento da base do CSLL	                339	350	(12,2)	Numérico
  espaco(1)+                                                         //Status ICMS Antecipado	                          351	351	1	      Alfanumérico
  espaco(1)+                                                         //Status ICMS na Fonte	                            352	352	1	      Alfanumérico
  espaco(1)+                                                         //Status ICMS Valor Recolhido	                    353	353	1	      Alfanumérico
  FormatarMoedaSPonto_(0, 12)+                                          //Base ICMS interest.(Sub.Trib Interna RJ e GO)	  354	365	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor ICMS interest.(Sub.Trib Interna RJ e GO)	  366	377	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //ICMS Normal (GO)	                                378	389	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor de venda Bruta	                            390	401	(12,2)	Numérico
  stringofchar(_0, 6)+                                              //Contador de reinício	                            402	407	6	      Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor do Frete 	                                408	419	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor do Seguro	                                420	431	(12,2)	Numérico
  stringofchar(_0, 4)+                                               //Código da Embarcação (*)	                        432	435	4	      Numérico
  espaco(40)+                                                        //Descrição da Embarcação	                        436	475	40	    Alfanumérico
  espaco(6)+                                                         //Alíquota FECP-RJ	                                476	481	6	      Alfanumérico
  espaco(16)+                                                        //Código Remetente	                                482	497	16	    Alfanumérico
  espaco(16)+                                                        //Código Destinatário	                            498	513	16	    Alfanumérico
  espaco(1)+                                                         //Tomador (R)emetente ou (D)estinatário ou (C)onsignatário	514	514	1	Alfanumérico
  stringofchar(_0, 6)+                                               //Data Emissão da Nota Fiscal atrelada ao CT	      515	520	6	      Numérico
  espaco(2)+                                                         //Modelo da Nota Fiscal atrelada ao CT	            521	522	2	      Alfanumérico
  espaco(5)+                                                         //Série da Nota Fiscal atrelada ao CT	            523	527	5	      Alfanumérico
  espaco(6)+                                                         //Número da Nota Fiscal atrelada ao CT	            528	533	6	      Alfanumérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor Contábil da Nota Fiscal atrelada ao CT	    534	545	(12,2)	Numérico
  espaco(1)+                                                         //Código da antecipação tributária (1a5 ou vazio)	546	546	1	      Alfanumérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor da Parcela Reduzida (GO)	                  547	558	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor da Parcela Não Tributada (GO)	            559	570	(12,2)	Numérico
  stringofchar(_0, 4)+                                               //Número do caixa (DIEF CE)	                      571	574	4	      Numérico
  stringofchar(_0, 2)+                                               //Cód. Operação Doc.q. Fiscal (DIEF CE)	            575	576	2	      Numérico
  stringofchar(_0, 2)+                                               //Cód. Situação Doc.q. Fiscal (DIEF CE)	            577	578	2	      Numérico
  stringofchar(_0, 2)+                                               //Cód. Condição Participante (DIEF CE)	            579	580	2	      Numérico
  stringofchar(_0, 2)+                                               //Cód. Motivo Referência Doc.q. Fiscal (DIEF CE)	    581	582	2	      Numérico
  stringofchar(_0, 2)+                                               //Cód. Número Segurança (DIEF CE)	                583	584	2	      Numérico
  stringofchar(_0, 5)+                                               //Cód. Município (DIEF CE)	                        585	589	5	      Numérico
  espaco(50)+                                                        //Descrição Município (DIEF CE)	                  590	639	50	    Alfanumérico
  espaco(2)+                                                         //UF Município (DIEF CE)	                          640	641	2	      Alfanumérico
  espaco(3)+                                                         //Subsérie da Nota (DIEF CE)	                      642	644	3	      Alfanumérico
  espaco(10)+                                                        //Número Dispositivo Segurança (DIEF CE)	          645	654	10	    Alfanumérico
  espaco(3)+                                                         //Série Formulário (DIEF CE)	                      655	657	3	      Alfanumérico
  espaco(3)+                                                         //Subsérie Formulário (DIEF CE)	                  658	660	3	      Alfanumérico
  espaco(10)+                                                        //Número Inicial Formulário (DIEF CE)	            661	670	10	    Alfanumérico
  espaco(10)+                                                        //Número Final Formulário (DIEF CE)	              671	680	10	    Alfanumérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor Desconto Global (DIEF CE) 	                681	692	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor Antecipado (DIEF CE)	                      693	704	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //ICMS Antecipado (DIEF CE)	                      705	716	(12,2)	Numérico
  stringofchar(_0, 10)+                                              //Número Inicial Formulário (PI)	                  717	726	10	    Numérico
  stringofchar(_0, 10)+                                              //Número Final Formulário (PI)	                    727	736	10	    Numérico
  FormatarMoedaSPonto_(0, 12)+                                          //Valor IPI não aproveitado	                      737	748	(12,2)	Numérico
  espaco(20)+                                                        //Número AIDF	                                    749	768	20	    Alfanumérico
  stringofchar(_0, 4)+                                               //Ano AIDF	                                        769	772	4	      Numérico
  espaco(2)+                                                         //Código de Situação do Documento	                773	774	2	      Alfanumérico
  espaco(1)+                                                         //Tipo de Pagamento	                              775	775	1	0 - à vista ou 1 - a prazo
  FormatarMoedaSPonto_(0, 12)+                                           //Valor de Cancelamento do ISSQN	                776	787	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                           //Valor de Cancelamento do ICMS	                  788	799	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                           //Valor de Desconto do ISSQN	                    800	811	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                           //Valor de Desconto do ICMS	                      812	823	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                           //Valor de Acréscimo do ISSQN	                    824	835	(12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                           //Valor de Acréscimo do ICMS	                    836	847	(12,2)	Numérico
  espaco(3)+                                                          //Código do Tipo de Receita (Simples Nacional)	  848	850	3	      Alfanumérico
  espaco(16)                                                          //Código Consignatário	                          851	866	16	    Alfanumérico
  );
end;

procedure TExportar.registro04;
begin
  linha.add(
                                                                                //NOME DO CAMPO	                                DE	AT?	TAMANHO	TIPO
  FormatarTextoDireita(cit.q.fieldbyname(_nuclfiscal).AsString, 20)+              // Código de IPI (classificação fiscal - NBM/SH)	1	  20	   20	    Alfanumérico
  FormatarTextoDireita(RetiraAcentos(cit.q.fieldbyname(_nmunidade).AsString), 3)+ // Unidade (KG,TN, M2,M3,etc.q.)	                  21	23	   03	    Alfanumérico
  FormatarDecimal3sponto(cit.q.fieldbyname(_qtitem).AsCurrency, 10, _e, _0)+                // Quantidade (3 decimais)	                      24	33	  (10,3)	Numérico
  FormatarMoedaSPonto_(cit.q.fieldbyname(_vltotal).AsCurrency, 12)+               // Valor Bruto (Quantidade x Valor Unitário) 	    34	45	  (12,2)	Numérico
  FormatarMoedaSPonto_(cit.q.fieldbyname(_vlipi).AsCurrency, 10)+                    // Valor do IPI	                                  46	55	  (10,2)	Numérico
  FormatarTextoEsquerda(cit.q.fieldbyname(_nusticms).AsString, 3, _0)+            // Código situação tributária	                    56	58	  03	    Numérico
  stringofchar(_0, 5)+                                                          // Código do Produto	                            59	63	  05	    Numérico
  FormatarMoedaSPonto_(cit.q.fieldbyname(_vlbaseicms).AsCurrency, 12)+               // Base de Cálculo do ICMS Próprio	              64	75	  (12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                                     // Base de Cálculo do ICMS Subst. Tributaria/Base de ICMS Agregação (DIEF CE)	            76	87	  (12,2)	Numérico
  espaco(03)+                                                                   // Vago	                                          88	90	  3	      Alfanumérico
  FormatarMoedaSPonto_(cit.q.fieldbyname(_vldesconto).AsCurrency, 12)+               // Desconto	                                      91	102	  (12,2)	Numérico
  FormatarTextoDireita(RetiraAcentos(cit.q.fieldbyname(_nmproduto).AsString), 35)+// Descrição do produto	                          103	137	  35	    Alfanumérico
  stringofchar(_0, 3)+                                                          // Código Prodepe/Funcresce(PE)	                  138	 140	3	      Numérico
  espaco(14)+                                                                   // Código Específico	                            141  154	14	    Alfanumérico
  stringofchar(_0, 6)+                                                          // Número Ordem Doc.q. Fiscal (COO)	                155	160	  6	      Numérico
  stringofchar(_0, 5)+                                                          // Capacidade Volumétrica	                        161	165	  5	      Numérico
  FormatarMoedaSPonto_(0, 12)+                                                     // Valor ICMS Próprio (DIEF CE)	                  166	177	  (12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                                     // Valor ICMS Agregação (DIEF CE)	                178	189	  (12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                                     // Valor IPI Isentas (DIEF CE)	                  190	201	  (12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                                     // Valor IPI Outros (DIEF CE)	                    202	213	  (12,2)	Numérico
  FormatarMoedaSPonto_(0, 10)+                                                     // Qtd na Unidade Padrão (DIEF CE)	              214	223	  (10,3)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                                     // Valor Unitário na Unidade (DIEF CE)	          224	235	  (12,2)	Numérico
  FormatarMoedaSPonto_(0, 12)+                                                     // Valor Unitário Bruto (DIEF CE)	                236	247	  (12,2)	Numérico
  stringofchar(_0, 2)+                                                          // Tipo de ICMS Agregação (DIEF CE)	              248	249	  2	      Numérico
  stringofchar(_0, 2)+                                                          // Código do Valor Fiscal de ICMS (DIEF CE)	      250	251	  2	      Numérico
  stringofchar(_0, 2)+                                                          // Código do Valor Fiscal de IPI (DIEF CE)	      252	253	  2	      Numérico
  FormatarMoedaSPonto_(0, 12)+                                                     // Base de IPI (DIEF CE)	                        254	265	  (12,2)	Numérico
  espaco(15)+                                                                   // Código Contábil do Produto (DIEF CE)	          266	280	  15	    Alfanumérico
  espaco(50)+                                                                   // Descrição Contábil do Produto (DIEF CE)	      281	330	  50	    Alfanumérico
  espaco(53)+                                                                   // Descrição do produto	                          331	383	  53	    Alfanumérico
  FormatarTextoEsquerda(cit.q.fieldbyname(_cdproduto).AsString , 09)+             // Código do Produto	                            384	392	  9	      Numérico
  espaco(14)+
  FormatarMoedaSPonto_(cit.q.fieldbyname(_vlunitario).AsCurrency, 12)             // Valor unitario
  );
end;

procedure TExportar.selecionar_registro_filho;
begin
  cit.q.Filtered := false;
  cit.q.Filter   := UpperCase(_CDSAIDA)+'='+c.q.fieldbyname(_cdsaida).AsString;
  cit.q.Filtered := True;
end;

end.

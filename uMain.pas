unit uMain;

interface

uses
  System.Actions, System.UITypes,

  ExceptionLog7,

  Windows, ShellAPI, forms, Controls, ComCtrls, ToolWin, ExtCtrls, SysUtils, ActnCtrls,
  WinInet, ActnMenus, StdCtrls, dialogs, Menus, Classes, ActnList, ActnMan,
  dbclient, midaslib, db,

  uexportarexcel, uregistroib, uregistro, urotinas, uprotector,
  ustrings, udatahora, usystem, uconstantes, uDtmMain,

  classequery, classeexportacaodatasulcte, classeexportacaodatasulcontabil, classeretornasql,
  classeusuario, classeversao, classeempresa, ClasseMain, classeexecutasql, classeimportacaocliente,
  classeimportacaofornecedor, ClasseImportacaoTransportadora, classeexportacaodatasulduplicata,
  classeform, ClasseExportacaoDatasulMovto, ClasseExportacaoDatasulAutpagto, classeimportacaodados,
  classeorcamento, ClasseImportacaoDOVerleih,

  Vcl.XPStyleActnCtrls,

  OgUtil, OnGuard,

  cxGraphics, cxClasses, cxLookAndFeels, cxMaskEdit, cxDropDownEdit,
  dxStatusBar, cxControls, cxContainer, cxEdit, cxLookAndFeelPainters, cxTextEdit,
  cxPC, cxLocalization, cxTreeView, cxImage, cxDBEdit, dxBar, cxLabel,
  cxButtons, dxBarBuiltInMenu;

type
  Tfrmmain = class(TForm)
    act: TActionManager;
    actFechar: TAction;
    actstfornecedor: TAction;
    actLogoff: TAction;
    actLogin: TAction;
    actSair: TAction;
    actStPedido: TAction;
    actsttransportadora: TAction;
    actStRepresentante: TAction;
    actstCliente: TAction;
    acttpcobranca: TAction;
    acttpmovto: TAction;
    acttpproduto: TAction;
    actCFOP: TAction;
    actCor: TAction;
    actuf: TAction;
    actTurma: TAction;
    actTurno: TAction;
    actMovimentacao: TAction;
    actCondpagto: TAction;
    actExportarExcel: TAction;
    actSobre: TAction;                         
    actTransportadora: TAction;
    actRepresentante: TAction;
    actMovto: TAction;
    actCliente: TAction;
    actFornecedor: TAction;
    actUnidade: TAction;
    actProduto: TAction;
    actPedido: TAction;
    actTpPedido: TAction;
    actConsultaCliente: TAction;
    actConsultaPedido: TAction;
    actConsultaRepresentante: TAction;
    actconsultasaida: TAction;
    actmanagerpedido: TAction;
    actConta: TAction;
    actsaida: TAction;
    actentrada: TAction;
    actDuplicata: TAction;
    actAutpagto: TAction;
    actserie: TAction;
    acttpentrada: TAction;
    acttpsaida: TAction;
    actManagerproduto: TAction;
    actManagerDuplicata: TAction;
    actManagerAutPagto: TAction;
    actadntcliente: TAction;
    actconsultaentrada: TAction;
    actconsultaautpagto: TAction;
    actconsultaduplicata: TAction;
    actconsultaMovBancario: TAction;
    actConsultaMovto: TAction;
    actconsultaproduto: TAction;
    actadntfornecedor: TAction;
    actlivro: TAction;
    actcobranca: TAction;
    actempresa: TAction;
    acttprpa: TAction;
    actrpa: TAction;
    acttpordcompra: TAction;
    actmanagercntcusto: TAction;
    actsttransporte: TAction;
    acttransporte: TAction;
    actbaixaestoque: TAction;
    actentradaestoque: TAction;
    actcheque: TAction;
    actstcheque: TAction;
    actmanageruser: TAction;
    actfuncionario: TAction;
    actetapa: TAction;
    actfuncao: TAction;
    actimpvalvula: TAction;
    actpintura: TAction;
    actprioridade: TAction;
    actservico: TAction;
    actsinalclb: TAction;
    actTamanho: TAction;
    actstcontrato: TAction;
    actstitordserv: TAction;
    actstlink: TAction;
    actstordserv: TAction;
    actacessorio: TAction;
    actmarca: TAction;
    actmodelo: TAction;
    acttpcondentrega: TAction;
    acttpequipamento: TAction;
    acttpveicmanut: TAction;
    acttpordserv: TAction;
    acttpveiculo: TAction;
    actcondentrega: TAction;
    actdefeito: TAction;
    actgarantia: TAction;
    actstgarantia: TAction;
    actstequipamento: TAction;
    actstitetapa: TAction;
    actequipamento: TAction;
    actveiculo: TAction;
    actcontrato: TAction;
    actordserv: TAction;
    actworkbox: TAction;
    actconsultacheque: TAction;
    acttpgradevalor: TAction;
    acttppagtocomissao: TAction;
    actpagtocomissao: TAction;
    actFaturamento: TAction;
    actstfaturamento: TAction;
    actlivrop3: TAction;
    actclpressao: TAction;
    actgrauparentesco: TAction;
    actlocaltrabalho: TAction;
    acttpcliente: TAction;
    acttpclientemensalidade: TAction;
    actclfornecedor: TAction;
    actclpedidoMaterial: TAction;
    acttppedidomaterial: TAction;
    actpedidomaterial: TAction;
    actrim: TAction;
    actOrdCompra: TAction;
    actstregcobranca: TAction;
    acttpcombustivel: TAction;
    actferiado: TAction;
    actmanagerplconta: TAction;
    acttpfaturamento: TAction;
    actrmatividade: TAction;
    actgrade: TAction;
    actConsulta: TAction;
    acttprim: TAction;
    acttpeletricpneum: TAction;
    actcaixafinanceiro: TAction;
    acttpanotacao: TAction;
    actsticms: TAction;
    actstipi: TAction;
    actstpis: TAction;
    actstcofins: TAction;
    actLocacao: TAction;
    actstlocacao: TAction;
    acttplocacao: TAction;
    tic: TTrayIcon;
    actefd0450: TAction;
    stb: TdxStatusBar;
    dxStatusBar1Container2: TdxStatusBarContainerControl;
    cbx: TcxComboBox;
    bmg: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxbrtoolbar: TdxBar;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxbrmenu: TdxBar;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    mniutilitarios: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarButton32: TdxBarButton;
    dxBarSeparator2: TdxBarSeparator;
    dxBarSeparator4: TdxBarSeparator;
    dxBarButton38: TdxBarButton;
    dxBarSeparator5: TdxBarSeparator;
    dxBarButton42: TdxBarButton;
    dxBarSeparator6: TdxBarSeparator;
    dxBarButton43: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarSeparator7: TdxBarSeparator;
    dxBarButton46: TdxBarButton;
    dxBarButton48: TdxBarButton;
    mniMovimentacao: TdxBarSubItem;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarSeparator8: TdxBarSeparator;
    dxBarButton63: TdxBarButton;
    dxBarSeparator9: TdxBarSeparator;
    dxBarSeparator10: TdxBarSeparator;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarSeparator11: TdxBarSeparator;
    dxBarButton77: TdxBarButton;
    dxBarSeparator12: TdxBarSeparator;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarSeparator13: TdxBarSeparator;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarSeparator14: TdxBarSeparator;
    dxBarSeparator15: TdxBarSeparator;
    dxBarSeparator16: TdxBarSeparator;
    dxBarButton98: TdxBarButton;                                                
    dxBarSeparator17: TdxBarSeparator;
    dxBarSeparator18: TdxBarSeparator;
    dxBarSeparator19: TdxBarSeparator;
    dxBarButton99: TdxBarButton;
    dxBarSeparator20: TdxBarSeparator;
    dxBarSeparator21: TdxBarSeparator;
    dxBarButton103: TdxBarButton;
    dxBarButton104: TdxBarButton;
    dxBarButton107: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarButton109: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarButton113: TdxBarButton;
    dxBarButton114: TdxBarButton;
    dxBarSeparator22: TdxBarSeparator;
    dxBarSeparator23: TdxBarSeparator;
    dxBarSeparator24: TdxBarSeparator;
    dxBarSeparator25: TdxBarSeparator;
    dxBarSeparator26: TdxBarSeparator;
    dxBarButton116: TdxBarButton;
    dxBarButton121: TdxBarButton;
    dxBarButton122: TdxBarButton;
    dxBarButton123: TdxBarButton;
    dxBarButton124: TdxBarButton;
    dxBarButton128: TdxBarButton;
    dxBarButton129: TdxBarButton;
    dxBarButton131: TdxBarButton;
    mniclassificacao: TdxBarSubItem;
    dxBarButton132: TdxBarButton;
    dxBarButton133: TdxBarButton;
    mnitabelafuncionario: TdxBarSubItem;
    dxBarButton134: TdxBarButton;
    dxBarButton135: TdxBarButton;
    dxBarButton136: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarSubItem16: TdxBarSubItem;
    dxBarSubItem17: TdxBarSubItem;
    mniordserv: TdxBarSubItem;
    dxBarButton146: TdxBarButton;
    dxBarButton147: TdxBarButton;
    dxBarButton148: TdxBarButton;
    dxBarButton149: TdxBarButton;
    dxBarButton150: TdxBarButton;
    dxBarButton151: TdxBarButton;
    dxBarButton152: TdxBarButton;
    dxBarButton153: TdxBarButton;
    dxBarButton154: TdxBarButton;
    dxBarButton155: TdxBarButton;
    dxBarButton156: TdxBarButton;
    dxBarButton158: TdxBarButton;
    dxBarButton159: TdxBarButton;
    dxBarSeparator27: TdxBarSeparator;
    dxBarSubItem19: TdxBarSubItem;
    dxBarSubItem20: TdxBarSubItem;
    dxBarButton160: TdxBarButton;
    dxBarButton161: TdxBarButton;
    dxBarButton162: TdxBarButton;
    dxBarButton163: TdxBarButton;
    dxBarButton164: TdxBarButton;
    dxBarButton166: TdxBarButton;
    dxBarButton167: TdxBarButton;
    dxBarButton169: TdxBarButton;
    dxBarButton170: TdxBarButton;
    dxBarButton171: TdxBarButton;
    dxBarButton172: TdxBarButton;
    mniproduto: TdxBarSubItem;
    mniproducao: TdxBarSubItem;
    mnitributacao: TdxBarSubItem;
    mnitipo: TdxBarSubItem;
    mnistatus: TdxBarSubItem;
    dxBarButton174: TdxBarButton;
    dxBarButton176: TdxBarButton;
    dxBarButton177: TdxBarButton;
    dxBarSubItem26: TdxBarSubItem;
    dxBarSubItem27: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem28: TdxBarSubItem;
    dxBarButton185: TdxBarButton;
    dxBarButton186: TdxBarButton;
    dxBarButton188: TdxBarButton;
    dxBarButton189: TdxBarButton;
    dxBarButton191: TdxBarButton;
    dxBarButton193: TdxBarButton;
    dxBarButton195: TdxBarButton;
    dxBarButton196: TdxBarButton;
    dxBarButton197: TdxBarButton;
    dxBarButton206: TdxBarButton;
    dxBarButton207: TdxBarButton;
    dxBarButton211: TdxBarButton;
    dxBarButton216: TdxBarButton;
    dxBarButton217: TdxBarButton;
    dxBarButton219: TdxBarButton;
    dxBarButton221: TdxBarButton;
    dxBarButton226: TdxBarButton;
    dxBarButton230: TdxBarButton;
    dxBarButton231: TdxBarButton;
    dxBarButton233: TdxBarButton;
    dxBarButton235: TdxBarButton;
    dxBarButton238: TdxBarButton;
    dxBarButton239: TdxBarButton;
    dxBarButton240: TdxBarButton;
    dxBarButton241: TdxBarButton;
    dxBarButton242: TdxBarButton;
    dxBarButton247: TdxBarButton;
    dxBarButton248: TdxBarButton;
    dxBarButton250: TdxBarButton;
    dxBarButton252: TdxBarButton;
    dxBarButton254: TdxBarButton;
    dxBarButton255: TdxBarButton;
    dxBarButton257: TdxBarButton;
    dxBarButton258: TdxBarButton;
    dxBarButton260: TdxBarButton;
    dxBarButton261: TdxBarButton;
    dxBarButton268: TdxBarButton;
    mnisituacaotributaria: TdxBarSubItem;
    dxBarButton269: TdxBarButton;
    dxBarButton270: TdxBarButton;
    dxBarButton271: TdxBarButton;
    dxBarButton272: TdxBarButton;
    dxBarButton279: TdxBarButton;
    dxBarButton281: TdxBarButton;
    actmaterial: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    actreport: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    actcorridaquimica: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    LAF: TcxLookAndFeelController;
    acttpservico: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    actbancodados: TAction;
    dxBarButton120: TdxBarButton;
    acttpaplicacao: TAction;
    dxBarButton130: TdxBarButton;
    actcte: TAction;
    dxBarButton157: TdxBarButton;
    actctetpvlprestacao: TAction;
    actctetpmedida: TAction;
    dxBarButton204: TdxBarButton;
    dxBarButton224: TdxBarButton;
    actfinalidadeordcompra: TAction;
    dxBarButton194: TdxBarButton;
    acttpfornecedor: TAction;
    dxBarButton205: TdxBarButton;
    cxLocalizer1: TcxLocalizer;
    actsuporteremoto: TAction;
    dxBarButton106: TdxBarButton;
    actsuporteremotot: TAction;
    dxBarButton126: TdxBarButton;
    actorcamento: TAction;
    dxBarButton210: TdxBarButton;
    odc1: TOgDateCode;
    dxBarButton223: TdxBarButton;
    omk1: TOgMakeKeys;
    actchave: TAction;
    dxBarButton228: TdxBarButton;
    dxBarButton236: TdxBarButton;
    acttporcamento: TAction;
    dxBarButton119: TdxBarButton;
    dxBarButton256: TdxBarButton;
    dxBarButton265: TdxBarButton;
    stbContainer6: TdxStatusBarContainerControl;
    acttpcriterioiqf: TAction;
    dxBarButton286: TdxBarButton;
    actdownload: TAction;
    dxBarButton287: TdxBarButton;
    actordproducao: TAction;
    dxBarButton288: TdxBarButton;
    tlbnew: TToolBar;
    actnfefazendagovbr: TAction;
    dxBarButton237: TdxBarButton;
    dxBarButton289: TdxBarButton;
    actconsultardisponibilidadenfe: TAction;
    actecac: TAction;
    dxBarButton290: TdxBarButton;
    actconsultainutilizacaomg: TAction;
    dxBarButton291: TdxBarButton;
    actconsultanfemg: TAction;
    dxBarButton292: TdxBarButton;
    actstatusservicomg: TAction;
    dxBarButton293: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    MNILINKS: TdxBarSubItem;
    actvalidadorsintegra2014: TAction;
    dxBarButton294: TdxBarButton;
    actstatusservicocte: TAction;
    dxBarButton118: TdxBarButton;
    actativopiscofins: TAction;
    dxBarButton127: TdxBarButton;
    acttpdeclinarorcamento: TAction;
    dxBarButton253: TdxBarButton;
    dxBarButton100: TdxBarButton;
    acttpcriterioorcamento: TAction;
    actrota: TAction;
    dxBarButton295: TdxBarButton;
    Actmanagertarefa: TAction;
    dxBarButton35: TdxBarButton;
    actsttarefa: TAction;
    dxBarButton296: TdxBarButton;
    acttptarefa: TAction;
    dxBarButton297: TdxBarButton;
    dxBarButton298: TdxBarButton;
    acttpcontrato: TAction;
    dxBarButton299: TdxBarButton;
    actbccalculocredito: TAction;
    dxBarButton300: TdxBarButton;
    dxBarButton182: TdxBarButton;
    actnegociacao: TAction;
    dxBarButton184: TdxBarButton;
    actmanagerordproducao: TAction;
    dxBarButton13: TdxBarButton;
    acttpparada: TAction;
    dxBarButton33: TdxBarButton;
    actregrast: TAction;
    dxBarButton50: TdxBarButton;
    actsuporte: TAction;
    actescolaridade: TAction;
    dxBarButton69: TdxBarButton;
    actctefazendagov: TAction;
    dxBarButton85: TdxBarButton;
    actsintegragovbr: TAction;
    dxBarButton86: TdxBarButton;
    actconsultadisponibilidadecte: TAction;
    dxBarButton94: TdxBarButton;
    actsetor: TAction;
    dxBarButton95: TdxBarButton;
    actgraudificuldade: TAction;
    dxBarButton175: TdxBarButton;
    actorcamentoatravesde: TAction;
    dxBarButton96: TdxBarButton;
    actlinkextrato: TAction;
    dxBarButton178: TdxBarButton;
    acttpaprovacaocotacao: TAction;
    dxBarButton179: TdxBarButton;
    actpreselecaofornecedor: TAction;
    dxBarButton180: TdxBarButton;
    acttpcomissaoproduto: TAction;
    acttpcomissaorepresentante: TAction;
    acttpcomissao: TAction;
    dxBarButton183: TdxBarButton;
    dxBarButton190: TdxBarButton;
    dxBarButton198: TdxBarButton;
    actstorcamento: TAction;
    actstordproducao: TAction;
    dxBarButton36: TdxBarButton;
    dxBarButton199: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton61: TdxBarButton;
    dxBarButton137: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarSubItem18: TdxBarSubItem;
    actconsultactemg: TAction;
    dxBarButton200: TdxBarButton;
    actconsultainutilizacaomgcte: TAction;
    dxBarButton201: TdxBarButton;
    acttpordproducao: TAction;
    dxBarButton202: TdxBarButton;
    acttphoraextra: TAction;
    dxBarButton203: TdxBarButton;
    acttpagenda: TAction;
    dxBarButton208: TdxBarButton;
    actagenda: TAction;
    actstitagenda: TAction;
    dxBarButton209: TdxBarButton;
    dxBarButton213: TdxBarButton;
    dxBarButton214: TdxBarButton;
    actregiaocorpo: TAction;
    dxBarButton215: TdxBarButton;
    acttptarefa1: TAction;
    dxBarButton218: TdxBarButton;
    dxBarButton220: TdxBarButton;
    actspedfiscal: TAction;
    dxBarButton1: TdxBarButton;
    actspedpiscofins: TAction;
    dxBarButton8: TdxBarButton;
    actcatextrato: TAction;
    dxBarButton9: TdxBarButton;
    acttpmotivotarefa: TAction;
    dxBarButton34: TdxBarButton;
    actregiaoaplicacao: TAction;
    dxBarButton39: TdxBarButton;
    actformulacao: TAction;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    actreportuser: TAction;
    dxBarButton97: TdxBarButton;
    acttpconta: TAction;
    dxBarButton102: TdxBarButton;
    actmdfe: TAction;
    dxBarButton64: TdxBarButton;
    acttpmdfe: TAction;
    dxBarButton84: TdxBarButton;
    dxBarButton125: TdxBarButton;
    actforma: TAction;
    actnorma: TAction;
    dxBarButton165: TdxBarButton;
    dxBarButton168: TdxBarButton;
    acttprota: TAction;
    dxBarButton173: TdxBarButton;
    actstprojeto: TAction;
    acttpprojeto1: TAction;
    acttpprojeto: TAction;
    dxBarButton192: TdxBarButton;
    dxBarButton229: TdxBarButton;
    dxBarButton232: TdxBarButton;
    actstconferenciapedido: TAction;
    actconferenciapedido: TAction;
    dxBarButton181: TdxBarButton;
    dxBarButton234: TdxBarButton;
    actchat: TAction;
    dxBarButton243: TdxBarButton;
    dxBarButton245: TdxBarButton;
    acttpmotivorevisao: TAction;
    dxBarButton246: TdxBarButton;
    actimportacao: TAction;
    actexportacao: TAction;
    actimportacaocliente: TAction;
    actimportacaofornecedor: TAction;
    actimportacaotransportadora: TAction;
    dxBarSubItem21: TdxBarSubItem;
    dxBarButton249: TdxBarButton;
    dxBarButton251: TdxBarButton;
    dxBarButton259: TdxBarButton;
    dxBarSubItem22: TdxBarSubItem;
    actexportacaodatasul: TAction;
    actexportacaodatasulduplicata: TAction;
    dxBarSubItem23: TdxBarSubItem;
    dxBarButton263: TdxBarButton;
    actexportacaodatasulcte: TAction;
    actexportacaodatasulcontabil: TAction;
    dxBarButton262: TdxBarButton;
    dxBarButton264: TdxBarButton;
    actexportacaodatasulRPA: TAction;
    dxBarButton266: TdxBarButton;
    dxBarButton267: TdxBarButton;
    actexportacaodatasulautpagto: TAction;
    actmetrologia: TAction;
    actstmetrologia: TAction;
    dxBarButton278: TdxBarButton;
    dxBarButton280: TdxBarButton;
    actapontamento: TAction;
    dxBarButton282: TdxBarButton;
    dxBarButton244: TdxBarButton;
    stbContainer7: TdxStatusBarContainerControl;
    edtcmd: TcxTextEdit;
    acttpsolicitacaocompra: TAction;
    actstsolicitacaocompra: TAction;
    actsolicitacaocompra: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton6: TdxBarButton;
    actrequisicaoproducao: TAction;
    actstrequisicaoproducao: TAction;
    acttprequisicaoproducao: TAction;
    dxBarButton31: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton49: TdxBarButton;
    actsetcomando: TAction;
    acttpbancohoras: TAction;
    acttpabono: TAction;
    dxBarButton75: TdxBarButton;
    dxBarButton117: TdxBarButton;
    actpontotrabalho: TAction;
    dxBarButton138: TdxBarButton;
    actferiadolocal: TAction;
    dxBarButton139: TdxBarButton;
    acteventoemail: TAction;
    dxBarButton140: TdxBarButton;
    act1: TActionList;
    actpaciente: TAction;
    dxBarButton141: TdxBarButton;
    actprofissao: TAction;
    dxBarButton142: TdxBarButton;
    actrhocorrencia: TAction;
    acttprhocorrencia: TAction;
    dxBarButton143: TdxBarButton;
    dxBarButton144: TdxBarButton;
    actsubtpparada: TAction;
    dxBarButton44: TdxBarButton;
    actparada: TAction;
    dxBarButton74: TdxBarButton;
    actespecialidade: TAction;
    dxBarButton101: TdxBarButton;
    dxBarButton145: TdxBarButton;
    actprofissional: TAction;
    actrisco: TAction;
    dxBarButton187: TdxBarButton;
    acttpconvenio: TAction;
    dxBarButton222: TdxBarButton;
    actdespesaconvenio: TAction;
    dxBarButton225: TdxBarButton;
    actstpaciente: TAction;
    dxBarButton227: TdxBarButton;
    acttprisco: TAction;
    dxBarButton273: TdxBarButton;
    pnl: TPanel;
    img: TcxImage;
    acttpcnh: TAction;
    dxBarButton283: TdxBarButton;
    actstembarque: TAction;
    dxBarButton284: TdxBarButton;
    acttprevisaocomercial: TAction;
    dxBarButton301: TdxBarButton;
    acttpcomercial: TAction;
    acttpcredito: TAction;
    dxBarButton302: TdxBarButton;
    dxBarButton303: TdxBarButton;
    actstitpedido: TAction;
    dxBarButton304: TdxBarButton;
    acttpvolume: TAction;
    dxBarButton305: TdxBarButton;
    tmr: TTimer;
    acttpresposta: TAction;
    dxBarButton306: TdxBarButton;
    actanydesk: TAction;
    dxBarButton16: TdxBarButton;
    actaeroadmin: TAction;
    dxBarButton307: TdxBarButton;
    acttpvoltagem: TAction;
    dxBarButton308: TdxBarButton;
    acttprespostachecklist: TAction;
    dxBarButton309: TdxBarButton;
    dxBarButton310: TdxBarButton;
    dxBarButton311: TdxBarButton;
    actrelatoriobug: TAction;
    btnrelatoriobug: TdxBarButton;
    actembarque: TAction;
    dxBarButton312: TdxBarButton;
    acttpembarque: TAction;
    dxBarButton313: TdxBarButton;
    acttpapontamentomanual: TAction;
    dxBarButton314: TdxBarButton;
    actapontamentomanual: TAction;
    dxBarButton315: TdxBarButton;
    acttpcorrecao: TAction;
    dxBarButton316: TdxBarButton;
    actPeriodicidade: TAction;
    dxBarButton317: TdxBarButton;
    acttpaprovacao: TAction;
    dxBarButton318: TdxBarButton;
    dxBarButton319: TdxBarButton;
    actscripter: TAction;
    actimportacaodigisatproduto: TAction;
    actimportacaodigisatcliente: TAction;
    actimportacaodigisatFornecedor: TAction;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton212: TdxBarButton;
    dxBarButton320: TdxBarButton;
    dxBarButton321: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    actimportacaodigisat: TAction;
    actimportacaodatasul: TAction;
    actlocalservico: TAction;
    dxBarButton322: TdxBarButton;
    acttpequipamento2: TAction;
    dxBarButton323: TdxBarButton;
    actlacrebalanca: TAction;
    actselobalanca: TAction;
    dxBarButton324: TdxBarButton;
    dxBarButton325: TdxBarButton;
    acttpexameperiodico: TAction;
    dxBarButton115: TdxBarButton;
    acttpatestadomedico: TAction;
    dxBarButton285: TdxBarButton;
    acttpfuncionariocurso: TAction;
    dxBarButton326: TdxBarButton;
    acttptreinamento: TAction;
    dxBarButton327: TdxBarButton;
    acttreinamento: TAction;
    dxBarButton328: TdxBarButton;
    actimportacaoDOVerleih: TAction;
    dxBarButton37: TdxBarButton;
    actImportacaoSenior: TAction;
    actImportacaoSeniorCliente: TAction;
    actImportacaoSeniorFornecedor: TAction;
    actImportacaoSeniorProduto: TAction;
    actImportacaoSeniorTodos: TAction;
    dxBarSubItem24: TdxBarSubItem;
    dxBarButton105: TdxBarButton;
    dxBarButton112: TdxBarButton;
    dxBarButton274: TdxBarButton;
    dxBarButton275: TdxBarButton;
    dxBarButton68: TdxBarButton;
    actImportacaoSeniorDuplicata: TAction;
    actImportacaoSeniorAutpagto: TAction;
    dxBarButton276: TdxBarButton;
    actversao: TAction;
    dxBarButton277: TdxBarButton;
    actimportacaoseniorbaixaautpagto: TAction;
    dxBarButton329: TdxBarButton;
    actimportacaoseniorbaixaduplicata: TAction;
    dxBarButton330: TdxBarButton;
    actimportacaogesoftProduto: TAction;
    actimportacaoGesoft: TAction;
    dxBarSubItem25: TdxBarSubItem;
    dxBarButton331: TdxBarButton;
    actimportacaogesoftfornecedor: TAction;
    dxBarButton332: TdxBarButton;
    actimportacaogesoftcliente: TAction;
    dxBarButton333: TdxBarButton;
    actimportacaogesoftsaida: TAction;
    dxBarButton334: TdxBarButton;
    actImportacaoGesoftEntrada: TAction;
    dxBarButton335: TdxBarButton;
    actimportacaoseniorEntrada: TAction;
    dxBarButton336: TdxBarButton;
    procedure actFecharExecute(Sender: TObject);
    procedure actLoginExecute(Sender: TObject);
    procedure actLogoffExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure acttpprodutoExecute(Sender: TObject);
    procedure actCondpagtoExecute(Sender: TObject);
    procedure actExportarExcelExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actTransportadoraExecute(Sender: TObject);
    procedure actRepresentanteExecute(Sender: TObject);
    procedure actMovtoExecute(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure actFornecedorExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actProdutoExecute(Sender: TObject);
    procedure actPedidoExecute(Sender: TObject);
    procedure actConsultaClienteExecute(Sender: TObject);
    procedure actConsultaPedidoExecute(Sender: TObject);
    procedure actConsultaRepresentanteExecute(Sender: TObject);
    procedure actconsultasaidaExecute(Sender: TObject);
    procedure actmanagerpedidoExecute(Sender: TObject);
    procedure actContaExecute(Sender: TObject);
    procedure actsaidaExecute(Sender: TObject);
    procedure actDuplicataExecute(Sender: TObject);
    procedure acttpentradaExecute(Sender: TObject);
    procedure acttpsaidaExecute(Sender: TObject);
    procedure actentradaExecute(Sender: TObject);
    procedure actAutpagtoExecute(Sender: TObject);
    procedure actabrirTabela(Sender: TObject);
    procedure actManagerDuplicataExecute(Sender: TObject);
    procedure actManagerAutPagtoExecute(Sender: TObject);
    procedure actadntclienteExecute(Sender: TObject);
    procedure actconsultaduplicataExecute(Sender: TObject);
    procedure actconsultaentradaExecute(Sender: TObject);
    procedure actconsultaautpagtoExecute(Sender: TObject);
    procedure actconsultaMovBancarioExecute(Sender: TObject);
    procedure actConsultaMovtoExecute(Sender: TObject);
    procedure actconsultaprodutoExecute(Sender: TObject);
    procedure actadntfornecedorExecute(Sender: TObject);
    procedure actlivroExecute(Sender: TObject);
    procedure actcobrancaExecute(Sender: TObject);
    procedure actempresaExecute(Sender: TObject);
    procedure actrpaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acttransporteExecute(Sender: TObject);
    procedure actbaixaestoqueExecute(Sender: TObject);
    procedure actentradaestoqueExecute(Sender: TObject);
    procedure actchequeExecute(Sender: TObject);
    procedure actmanageruserExecute(Sender: TObject);
    procedure actetapaExecute(Sender: TObject);
    procedure actfuncionarioExecute(Sender: TObject);
    procedure acttpordservExecute(Sender: TObject);
    procedure actequipamentoExecute(Sender: TObject);
    procedure actveiculoExecute(Sender: TObject);
    procedure actcontratoExecute(Sender: TObject);
    procedure actordservExecute(Sender: TObject);
    procedure actworkboxExecute(Sender: TObject);
    procedure actconsultachequeExecute(Sender: TObject);
    procedure actFaturamentoExecute(Sender: TObject);
    procedure actlivrop3Execute(Sender: TObject);
    procedure actpedidomaterialExecute(Sender: TObject);
    procedure actrimExecute(Sender: TObject);
    procedure actOrdCompraExecute(Sender: TObject);
    procedure actgradeExecute(Sender: TObject);
    procedure actConsultaExecute(Sender: TObject);
    procedure acttpanotacaoExecute(Sender: TObject);
    procedure actLocacaoExecute(Sender: TObject);
    procedure acttplocacaoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbxPropertiesChange(Sender: TObject);
    procedure actreportExecute(Sender: TObject);
    procedure actcorridaquimicaExecute(Sender: TObject);
    procedure actcaixafinanceiroExecute(Sender: TObject);
    procedure actbancodadosExecute(Sender: TObject);
    procedure actcteExecute(Sender: TObject);
    procedure acttpordcompraExecute(Sender: TObject);
    procedure acttppedidomaterialExecute(Sender: TObject);
    procedure acttprimExecute(Sender: TObject);
    procedure actsuporteremotoExecute(Sender: TObject);
    procedure actsuporteremototExecute(Sender: TObject);
    procedure actCFOPExecute(Sender: TObject);
    procedure actorcamentoExecute(Sender: TObject);
    procedure actufExecute(Sender: TObject);
    procedure odc1Checked(Sender: TObject; Status: TCodeStatus);
    procedure odc1GetKey(Sender: TObject; var Key: TKey);
    procedure odc1GetCode(Sender: TObject; var Code: TCode);
    procedure actchaveExecute(Sender: TObject);
    procedure acttporcamentoExecute(Sender: TObject);
    procedure actTpPedidoExecute(Sender: TObject);
    procedure acttpfaturamentoExecute(Sender: TObject);
    procedure acttpequipamentoExecute(Sender: TObject);
    procedure actdownloadExecute(Sender: TObject);
    procedure actordproducaoExecute(Sender: TObject);
    procedure actnfefazendagovbrExecute(Sender: TObject);
    procedure actconsultardisponibilidadenfeExecute(Sender: TObject);
    procedure actecacExecute(Sender: TObject);
    procedure actconsultainutilizacaomgExecute(Sender: TObject);
    procedure actconsultanfemgExecute(Sender: TObject);
    procedure actstatusservicomgExecute(Sender: TObject);
    procedure actvalidadorsintegra2014Execute(Sender: TObject);
    procedure actstatusservicocteExecute(Sender: TObject);
    procedure actativopiscofinsExecute(Sender: TObject);
    procedure actrotaExecute(Sender: TObject);
    procedure ActmanagertarefaExecute(Sender: TObject);
    procedure acttpcontratoExecute(Sender: TObject);
    procedure actmanagercntcustoExecute(Sender: TObject);
    procedure actManagerprodutoExecute(Sender: TObject);
    procedure actmanagerplcontaExecute(Sender: TObject);
    procedure actTurnoExecute(Sender: TObject);
    procedure actnegociacaoExecute(Sender: TObject);
    procedure actmanagerordproducaoExecute(Sender: TObject);
    procedure actregrastExecute(Sender: TObject);
    procedure actctefazendagovExecute(Sender: TObject);
    procedure actsintegragovbrExecute(Sender: TObject);
    procedure actconsultadisponibilidadecteExecute(Sender: TObject);
    procedure actsuporteExecute(Sender: TObject);
    procedure actconsultactemgExecute(Sender: TObject);
    procedure actconsultainutilizacaomgcteExecute(Sender: TObject);
    procedure acttpordproducaoExecute(Sender: TObject);
    procedure actagendaExecute(Sender: TObject);
    procedure actspedfiscalExecute(Sender: TObject);
    procedure actspedpiscofinsExecute(Sender: TObject);
    procedure actreportuserExecute(Sender: TObject);
    procedure actformulacaoExecute(Sender: TObject);
    procedure actmdfeExecute(Sender: TObject);
    procedure actconferenciapedidoExecute(Sender: TObject);
    procedure actchatExecute(Sender: TObject);
    procedure actimportacaoclienteExecute(Sender: TObject);
    procedure actimportacaofornecedorExecute(Sender: TObject);
    procedure actimportacaotransportadoraExecute(Sender: TObject);
    procedure actexportacaoExecute(Sender: TObject);
    procedure actimportacaoExecute(Sender: TObject);
    procedure actexportacaodatasulExecute(Sender: TObject);
    procedure actexportacaodatasulduplicataExecute(Sender: TObject);
    procedure actexportacaodatasulcontabilExecute(Sender: TObject);
    procedure actexportacaodatasulcteExecute(Sender: TObject);
    procedure actexportacaodatasulRPAExecute(Sender: TObject);
    procedure actexportacaodatasulautpagtoExecute(Sender: TObject);
    procedure actmetrologiaExecute(Sender: TObject);
    procedure actapontamentoExecute(Sender: TObject);
    procedure edtcmdKeyPress(Sender: TObject; var Key: Char);
    procedure actrequisicaoproducaoExecute(Sender: TObject);
    procedure actsetcomandoExecute(Sender: TObject);
    procedure actpontotrabalhoExecute(Sender: TObject);
    procedure acteventoemailExecute(Sender: TObject);
    procedure actpacienteExecute(Sender: TObject);
    procedure actrhocorrenciaExecute(Sender: TObject);
    procedure actparadaExecute(Sender: TObject);
    procedure actprofissionalExecute(Sender: TObject);
    procedure actdespesaconvenioExecute(Sender: TObject);
    procedure tmrTimer(Sender: TObject);
    procedure acttprespostaExecute(Sender: TObject);
    procedure acttpcriterioorcamentoExecute(Sender: TObject);
    procedure actanydeskExecute(Sender: TObject);
    procedure actaeroadminExecute(Sender: TObject);
    procedure actrelatoriobugExecute(Sender: TObject);
    procedure actembarqueExecute(Sender: TObject);
    procedure acttpembarqueExecute(Sender: TObject);
    procedure acttpapontamentomanualExecute(Sender: TObject);
    procedure actapontamentomanualExecute(Sender: TObject);
    procedure acttpaprovacaoExecute(Sender: TObject);
    procedure actscripterExecute(Sender: TObject);
    procedure acttpcorrecaoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure act1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure actimportacaodatasulExecute(Sender: TObject);
    procedure actimportacaodigisatExecute(Sender: TObject);
    procedure actimportacaodigisatprodutoExecute(Sender: TObject);
    procedure actimportacaodigisatclienteExecute(Sender: TObject);
    procedure actimportacaodigisatFornecedorExecute(Sender: TObject);
    procedure acttreinamentoExecute(Sender: TObject);
    procedure actimportacaoDOVerleihExecute(Sender: TObject);
    procedure actImportacaoSeniorExecute(Sender: TObject);
    procedure actImportacaoSeniorTodosExecute(Sender: TObject);
    procedure actImportacaoSeniorClienteExecute(Sender: TObject);
    procedure actImportacaoSeniorFornecedorExecute(Sender: TObject);
    procedure actImportacaoSeniorProdutoExecute(Sender: TObject);
    procedure actImportacaoSeniorDuplicataExecute(Sender: TObject);
    procedure actImportacaoSeniorAutpagtoExecute(Sender: TObject);
    procedure actversaoExecute(Sender: TObject);
    procedure actimportacaoseniorbaixaautpagtoExecute(Sender: TObject);
    procedure actimportacaoseniorbaixaduplicataExecute(Sender: TObject);
    procedure actimportacaoGesoftExecute(Sender: TObject);
    procedure actimportacaogesoftProdutoExecute(Sender: TObject);
    procedure actimportacaogesoftfornecedorExecute(Sender: TObject);
    procedure actimportacaogesoftclienteExecute(Sender: TObject);
    procedure actimportacaogesoftsaidaExecute(Sender: TObject);
    procedure actImportacaoGesoftEntradaExecute(Sender: TObject);
    procedure actimportacaoseniorEntradaExecute(Sender: TObject);
  private    { Private declarations }
    versao : TVersao;
    procedure abrirtarefa        (cdtarefa: integer);
    procedure AbrirAdntcliente   (cdadntcliente:integer);
    procedure AbrirMDFE(cdmdfe:integer);
    procedure AbrirAdntfornecedor(cdadntfornecedor:integer);
    procedure AbrirAutPagto      (cdautpagto:integer);
    procedure AbrirCheque        (cdcheque:integer);
    procedure AbrirCliente       (cdcliente:LargeInt);
    procedure Abrirprofissional  (cdprofissional:integer);
    procedure Abrirpaciente      (cdpaciente:integer);
    procedure AbrirCobranca      (cdcobranca:integer);
    procedure AbrirCondPagto     (cdcondpagto:integer);
    procedure Abrircontrato      (cdcontrato:integer);
    procedure AbrirConta         (cdconta:integer);
    procedure abrirrequisicaoproducao(cdrequisicaoproducao:integer);
    procedure AbrirDuplicata     (cdduplicata:integer);
    procedure AbrirEntrada       (cdentrada:integer);
    procedure AbrirFornecedor    (cdfornecedor:LargeInt);
    procedure AbrirMovBancario   (cdmovbancario:integer);
    procedure AbrirRota          (cdrota: integer);
    procedure Abrirmovto         (cdmovto:integer);
    procedure Abrirorcamento     (cdorcamento:Integer);
    procedure Abrirregrast       (cdregrast:integer);
    procedure AbrirOrdServ       (cdordserv:Integer);
    procedure AbrirOrdCompra     (cdordcompra:integer);
    procedure Abrirlocacao       (cdlocacao:integer);
    procedure AbrirOrdProducao   (cdordproducao:integer);
    procedure AbrirPedido        (cdpedido:Integer);
    procedure abrirformulacao    (cdformulacao:integer);
    procedure AbrirPedidoMaterial(cdpedido:integer);
    procedure AbrirProduto       (cdproduto:integer);
    procedure AbrirRepresentante (cdrepresentante:integer);
    procedure Abrirtppedido      (cdtppedido:integer);
    procedure Abrirtpfaturamento (cdtpfaturamento:integer);
    procedure Abrirtppedidomaterial(cdtppedidomaterial:integer);
    procedure Abrirtpcontrato    (cdtpcontrato:integer);
    procedure Abrirtpordcompra   (cdtpordcompra:integer);
    procedure Abrirtporcamento   (cdtporcamento:integer);
    procedure Abrirtpordproducao (cdtpordproducao:integer);
    procedure Abrirveiculo       (cdveiculo:integer);
    procedure AbrirRpa           (cdrpa:integer);
    procedure AbrirSaida         (cdsaida :integer);
    procedure Abrirrim           (cdrim :integer);
    procedure Abrircte           (cdcte :integer);
    procedure Abrirnegociacao    (cdnegociacao :integer);
    procedure AbrirTpentrada     (cdtpentrada:integer);
    procedure AbrirTpproduto     (cdtpproduto:integer);
    procedure AbrirTpsaida       (cdtpsaida:integer);
    procedure Abrirtpapontamentomanual(cdtpapontamentomanual:integer);
    procedure AbrirTprim         (cdtprim:integer);
    procedure AbrirTpequipamento (cdtpequipamento:integer);
    procedure AbrirTpordserv     (cdtpordserv:integer);
    procedure AbrirTransportadora(cdtransportadora:LargeInt);
    procedure Abrirtransporte    (cdtransporte:integer);
    procedure SetForm;
    procedure set_merge(bmgf :Tdxbarmanager);
    procedure set_traducao;
    procedure CreateSkinsMenuItems;
    function BuscaChaveWEB:boolean; (**)
    procedure set_rota;
    procedure set_transporte;
    procedure set_veiculo;
    procedure set_equipamento;
    procedure set_intervencao;
    procedure set_login;
    procedure set_funcionario;
    procedure Set_Paciente;
    procedure set_profissional;
    procedure set_parada;
    procedure set_agenda;
    procedure set_cte;
    procedure set_rpa;
    procedure set_producao;
    procedure Set_Representante;
    procedure Set_Cheque;
    procedure Set_Pedido;
    procedure set_embarque;
    procedure set_tarefa;
    procedure set_orcamento;
    procedure Set_metrologia;
    procedure Set_Locacao;
    procedure Set_OrdCompra;
    procedure Set_PagtoComissao;
    procedure set_faturamento;
    procedure Abrirapontamentomanual(cdapontamentomanual: integer);
  public     { Public declarations }
    chave : string;
    main : TMain;
    bmg1 : TdxBarManager;
    procedure Abrirfuncionario   (cdfuncionario:integer);
    procedure informacao_caption(boler:Boolean=True);
    procedure AbrirDireto        (act: TAction; qp, qd: tclientdataset; id:string='cd'; boid:boolean=false);overload;
    procedure AbrirDireto        (act: TAction; qp, qd: TDataset; id:string='cd'; boid:boolean=false);overload;
    procedure AbrirDireto        (act: TAction; qp: tclientdataset; qd: TDataset; id:string='cd'; boid:boolean=false);overload;
    procedure AbrirDireto        (campo:string;act: TAction; qp, qd: tclientdataset; id:string='cd');overload;
    procedure Abrirformulario    (tbl: string; codigo:LargeInt);
    procedure Abrirequipamento   (cdequipamento:integer);
    procedure Abrirtplocacao     (cdtplocacao:integer);
    procedure NovoOrdCompra      (cdpedidomaterial: Integer; cdfornecedor: Largeint; cdtpordcompra: integer; bonovo:boolean);overload;
    function  NovaDevolucao      (qdo, qdoDetail:TClientDataSet; tipo, cdtptipo, cdcfop, nutipo : string):boolean;overload;

    procedure NovaVenda          (cdittransporte, cdtpsaida:integer; dtemissao: TDate);overload;
    procedure NovaVenda          (cdittransporte:TStrings; cdtpsaida:Integer; dtemissao: TDate);overload;
    procedure NovaVenda          (cdpedido: integer; cditpedido, cditpedidoestrutura: string; cdtpsaida, cdcondpagto: integer; qtd, qtp:string);overload;
    procedure NovaVenda          (cdordserv, cdtpsaida, cdcondpagto: integer; cdcliente, cditordserv: string);overload;
    procedure NovoCTE            (cditembarque:string);
    procedure Gerar_CTE          (cdembarque:string);
    procedure NovoRPA            (cdembarque:string);
    procedure NovoMDFE           (cdembarque:string);

    procedure NovoPedido         (cdorcamento:integer; dtprevisao: TDate; itorcamento: Titorcamentolist; cdtppedido: integer; nucotacao: string);
    procedure NovoRequisicaoProducao(cdorcamento: integer; dtprevisao: TDate; cdtprequisicaoproducao: Integer; itorcamento: titorcamentolist);
    procedure NovaCompra         (nuentrada: string; cdordcompra: Integer; cditordcompra, cdtpentrada, cdcfop, nudocfiscalicms, nuchave, nuserie: string; dtemissao: TDate);
    procedure set_logomarca;
  end;

var
  frmmain: Tfrmmain;

implementation
             
uses
  urpa,
  uconferenciapedido,
  utreinamento,
  usaida,
  uPedido,
  uconsultapedido,
  uconsultarepresentante,
  uAutPagto,
  uAdntCliente,
  uAdntFornecedor,
  uProduto,
  uentrada,
  utpentrada,
  utpproduto,
  utpsaida,
  uFornecedor,
  ucondpagto,
  uconta,
  uDuplicata,
  uRepresentante,
  uconsultacliente,
  uconsultasaida,
  uManagerDuplicata,
  uManagerAutPagto,
  uConsultaDuplicata,
  uConsultaEntrada,
  uConsultaAutpagto,
  uconsultamovbancario,
  uconsultamovto,
  uconsultaProduto,
  ulivro,
  uempresa,
  uBaixa,
  uBaixaEstoque,
  ucliente,
  ucheque,
  uManageruser,
  UEquipamento,
  uEtapa,
  uFuncionario,
  uveiculo,
  ucontrato,
  uordserv,
  //uIntervencao,
  uworkbox,
  uconsultacheque,
  utpaprovacao,
  utpordserv,
  uFaturamento,
  //ulivrop3,
  uPedidoMaterial,
  uOrdCompra,
  uconsulta,
  utpanotacao,
  uLocacao,
  utplocacao,
  umanagerpedido,
  //uregrast,
  ureport,
  ucorridaquimica,
  utppedido,
  ucaixafinanceiro,
  ucte,
  utpordcompra,
  utppedidomaterial,
  utprim,
  ucfop,
  uorcamento,
  uuf,
  utporcamento,
  ucobranca,
  urim,
  utpfaturamento,
  umovto,
  utpequipamento,
  uordproducao,
  uativopiscofins,
  urota,
  umanagerTarefa,
  utpcontrato,
  utransporte,
  umanager,
  umanagerproduto,
  uturno,
  utransportadora,
  unegociacao,
  ugrade,
  umanagerordproducao,
  uregrast,
  udlgchaveuso,
  //uChave,
  utabela,
  utpordproducao,
  uagenda,
  ureportuser,
  uformulacao,
  umdfe,
  umetrologia,
  uapontamento,
  udownload,
  urequisicaoproducao,
  upontotrabalho,
  ueventoemail,
  upaciente,
  urhocorrencia,
  uparada,
  uprofissional,
  udespesaconvenio,
  utpresposta,
  utpcriterioorcamento, uembarque, utpembarque, utpapontamentomanual,
  uapontamentomanual, utpcorrecao, ClasseImportacaoSenior, urelease, classeimportacaoGesoft;//, uscripter;

{$R *.dfm}

procedure Tfrmmain.AbrirDireto(act: TAction; qp, qd: tclientdataset; id:string='cd'; boid:boolean=false);
var
  cdfield, tbl : string;
begin
  if not act.Enabled then
  begin
    exit;
  end;
  tbl     := act.Hint;
  cdfield := id;
  if not boid then
  begin
    cdfield := cdfield + tbl;
  end;
  if (not (qp.State = dsbrowse)) and (tbl <> _tarefa) then
  begin
    exit;
  end;
  if not qd.fieldbyname(cdfield).IsNull then
  begin
    frmmain.abrirformulario(tbl, qd.fieldbyname(cdfield).AsLargeInt);
  end;
end;

procedure Tfrmmain.AbrirDireto(act: TAction; qp, qd: TDataset; id:string='cd'; boid:boolean=false);
var
  cdfield, tbl : string;
begin
  if not act.Enabled then
  begin
    exit;
  end;
  tbl     := act.Hint;
  cdfield := id;
  if not boid then
  begin
    cdfield := cdfield + tbl;
  end;
  if (not (qp.State = dsbrowse)) and (tbl <> _tarefa) then
  begin
    exit;
  end;
  if not qd.fieldbyname(cdfield).IsNull then
  begin
    frmmain.abrirformulario(tbl, qd.fieldbyname(cdfield).AsLargeInt);
  end;
end;

procedure Tfrmmain.AbrirDireto(act: TAction; qp: tclientdataset; qd: TDataset; id:string='cd'; boid:boolean=false);
var
  cdfield, tbl : string;
begin
  if not act.Enabled then
  begin
    exit;
  end;
  tbl     := act.Hint;
  cdfield := id;
  if not boid then
  begin
    cdfield := cdfield + tbl;
  end;
  if not (qp.State = dsbrowse) then
  begin
    exit;
  end;
  if not qd.fieldbyname(cdfield).IsNull then
  begin
    frmmain.abrirformulario(tbl, qd.fieldbyname(cdfield).AsLargeInt);
  end;
end;

procedure Tfrmmain.AbrirDireto(campo:string;act: TAction; qp, qd:TClientdataset; id:string='cd');
var
  cdfield, tbl : string;
begin
  if not act.Enabled then
  begin
    exit;
  end;
  tbl     := act.Hint;
  cdfield := campo;
  if (qp.State = dsbrowse) and (not qd.fieldbyname(cdfield).IsNull) then
  begin
    frmmain.abrirformulario(tbl, qd.fieldbyname(cdfield).AsLargeInt);
  end;
end;

procedure Tfrmmain.AbrirFormulario(tbl: string; codigo:LargeInt);
begin
  tbl := lowercase(tbl);
       if tbl = _tarefa           then abrirtarefa(codigo)
  else if tbl = _adntcliente      then Abriradntcliente(codigo)
  else if tbl = _mdfe              then AbrirMDFE(codigo)
  else if tbl = _apontamentomanual then Abrirapontamentomanual(codigo)
  else if tbl = _adntfornecedor   then Abriradntfornecedor(codigo)
  else if tbl = _autpagto         then Abrirautpagto(codigo)
  else if tbl = _cheque           then AbrirCheque(codigo)
  else if tbl = _cliente          then Abrircliente(codigo)
  else if tbl = _cobranca         then Abrircobranca(codigo)
  else if tbl = _condpagto        then Abrircondpagto(codigo)
  else if tbl = _contrato         then Abrircontrato(codigo)
  else if tbl = _conta            then Abrirconta(codigo)
  else if tbl = _requisicaoproducao then abrirrequisicaoproducao(codigo)
  else if tbl = _duplicata        then Abrirduplicata(codigo)
  else if tbl = _entrada          then Abrirentrada(codigo)
  else if tbl = _funcionario      then Abrirfuncionario(codigo)
  else if tbl = _equipamento      then Abrirequipamento(codigo)
  else if tbl = _tplocacao        then Abrirtplocacao(codigo)
  else if tbl = _fornecedor       then Abrirfornecedor(codigo)
  else if tbl = _movbancario      then Abrirmovbancario(codigo)
  else if tbl = _rota             then AbrirRota(codigo)
  else if tbl = _movto            then Abrirmovto(codigo)
  else if tbl = _orcamento        then Abrirorcamento(codigo)
  else if tbl = _ordserv          then Abrirordserv(codigo)
  else if tbl = _regrast          then Abrirregrast(codigo)
  else if tbl = _ordproducao      then Abrirordproducao(codigo)
  else if tbl = _paciente         then Abrirpaciente(codigo)
  else if tbl = _pedido           then Abrirpedido(codigo)
  else if tbl = _formulacao       then abrirformulacao(codigo)
  else if tbl = _pedidomaterial   then AbrirPedidoMaterial(codigo)
  else if tbl = _produto          then Abrirproduto(codigo)
  else if tbl = _profissional     then Abrirprofissional(codigo)
  else if tbl = _representante    then Abrirrepresentante(codigo)
  else if tbl = _tppedido         then Abrirtppedido(codigo)
  else if tbl = _tpfaturamento    then Abrirtpfaturamento(codigo)
  else if tbl = _tppedidomaterial then Abrirtppedidomaterial(codigo)
  else if tbl = _tpcontrato       then Abrirtpcontrato(codigo)
  else if tbl = _tpordcompra      then Abrirtpordcompra(codigo)
  else if tbl = _tporcamento      then Abrirtporcamento(codigo)
  else if tbl = _tpordproducao    then Abrirtpordproducao(codigo)
  else if tbl = _veiculo          then Abrirveiculo(codigo)
  else if tbl = _saida            then Abrirsaida(codigo)
  else if tbl = _rim              then Abrirrim(codigo)
  else if tbl = _cte              then Abrircte(codigo)
  else if tbl = _negociacao       then Abrirnegociacao(codigo)
  else if tbl = _tpentrada        then Abrirtpentrada(codigo)
  else if tbl = _tpproduto        then Abrirtpproduto(codigo)
  else if tbl = _tpsaida          then Abrirtpsaida(codigo)
  else if tbl = _tpapontamentomanual then abrirtpapontamentomanual(codigo)
  else if tbl = _tprim            then Abrirtprim(codigo)
  else if tbl = _tpequipamento    then Abrirtpequipamento(codigo)
  else if tbl = _tpordserv        then Abrirtpordserv(codigo)
  else if tbl = _transportadora   then Abrirtransportadora(codigo)
  else if tbl = _transporte       then Abrirtransporte(codigo)
  else if tbl = _rpa              then Abrirrpa(codigo)
  else if tbl = _ordcompra        then AbrirOrdCompra(codigo)
  else if tbl = _locacao          then Abrirlocacao(codigo);
end;

procedure Tfrmmain.NovaVenda(cdittransporte, cdtpsaida:integer; dtemissao : TDate);
begin
  actsaidaExecute(nil);
  frmsaida.Novo(cdittransporte, cdtpsaida, dtemissao);
end;

procedure Tfrmmain.NovaVenda(cdpedido: integer; cditpedido, cditpedidoestrutura: string;  cdtpsaida, cdcondpagto: integer; qtd, qtp:string);
begin
  actsaidaExecute(nil);
  frmsaida.NovoPedido(cdpedido, cditpedido, cditpedidoestrutura, cdtpsaida, cdcondpagto, qtd, qtp);
end;

procedure Tfrmmain.NovoPedido(cdorcamento:integer; dtprevisao: TDate; itorcamento: Titorcamentolist; cdtppedido: integer; nucotacao: string);
begin
  actpedidoExecute(nil);
  frmpedido.NovoOrcamento(cdorcamento, dtprevisao, itorcamento, cdtppedido, nucotacao);
end;

procedure Tfrmmain.NovaVenda(cdordserv, cdtpsaida, cdcondpagto: integer; cdcliente, cditordserv: string);
begin
  actsaidaExecute(nil);
  frmsaida.Novo(cdordserv, cdtpsaida, cdcondpagto, cdcliente, cditordserv);
end;

procedure Tfrmmain.NovaVenda(cdittransporte:TStrings; cdtpsaida:integer; dtemissao: TDate);
begin
  actsaidaExecute(nil);
  frmsaida.Novo(cdittransporte, cdtpsaida, dtemissao);
end;

procedure Tfrmmain.Abrirpedido(cdpedido:integer);
begin
  if not (lowercase(main.formatual) = _frm+_pedido) then
  begin
    actPedidoExecute(nil);
  end;
  frmpedido.Abrir(cdpedido);
end;

procedure Tfrmmain.Abrirorcamento(cdorcamento:integer);
begin
  if not (lowercase(main.formatual) = _frm+_orcamento) then
  begin
    actorcamentoExecute(nil);
  end;
  frmorcamento.Abrir(cdorcamento);
end;

procedure Tfrmmain.Abrirregrast(cdregrast:integer);
begin
  if not (lowercase(main.formatual) = _frm+_regrast) then
  begin
    actregrastExecute(nil);
  end;
  frmRegrast.Abrir(cdregrast);
end;

procedure Tfrmmain.Abrirordserv(cdordserv:integer);
begin
  if not (lowercase(main.formatual) = _frm+_ordserv) then
  begin
    actordservExecute(nil);
  end;
  frmordserv.Abrir(cdordserv);
end;

procedure Tfrmmain.Abrirmovto(cdmovto:integer);
begin
  if not (lowercase(main.formatual) = _frm+_movto) then
  begin
    actMovtoExecute(nil);
  end;
  frmmovto.Abrir(cdmovto);
end;

procedure Tfrmmain.Abrirproduto(cdproduto:integer);
begin
  if not (lowercase(main.formatual) = _frm+_produto) then
  begin
    actProdutoExecute(nil);
  end;
  frmproduto.Abrir(cdproduto);
end;

procedure Tfrmmain.AbrirSaida(cdsaida:integer);
begin
  if not (lowercase(main.formatual) = _frm+_saida) then
  begin
    actsaidaExecute(nil);
  end;
  frmsaida.Abrir(cdsaida);
end;

procedure Tfrmmain.Abrirrim(cdrim:integer);
begin
  if not (lowercase(main.formatual) = _frm+_rim) then
  begin
    actrimExecute(nil);
  end;
  frmrim.Abrir(cdrim);
end;

procedure Tfrmmain.AbrirEntrada(cdentrada:integer);
begin
  if not (lowercase(main.formatual) = _frm+_entrada) then
  begin
    actentradaExecute(nil);
  end;
  frmentrada.Abrir(cdentrada);
end;

procedure Tfrmmain.Abrirfuncionario(cdfuncionario:integer);
begin
  if not (lowercase(main.formatual) = _frm+_funcionario) then
  begin
    actfuncionarioExecute(nil);
  end;
  frmfuncionario.Abrir(cdfuncionario);
end;

procedure Tfrmmain.Abrirtpentrada(cdtpentrada:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tpentrada) then
  begin
    acttpentradaExecute(nil);
  end;
  frmtpentrada.Abrir(cdtpentrada);
end;

procedure Tfrmmain.Abrirtpproduto(cdtpproduto:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tpproduto) then
  begin
    acttpprodutoExecute(nil);
  end;
  frmtpproduto.Abrir(cdtpproduto);
end;

procedure Tfrmmain.Abrirtpsaida(cdtpsaida:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tpsaida) then
  begin
    acttpsaidaExecute(nil);
  end;
  frmtpsaida.Abrir(cdtpsaida);
end;

procedure Tfrmmain.Abrirtpapontamentomanual(cdtpapontamentomanual:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tpapontamentomanual) then
  begin
    acttpapontamentomanualExecute(nil);
  end;
  frmtpapontamentomanual.Abrir(cdtpapontamentomanual);
end;

procedure Tfrmmain.Abrirtprim(cdtprim:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tprim) then
  begin
    acttprimExecute(nil);
  end;
  frmtprim.Abrir(cdtprim);
end;

procedure Tfrmmain.Abrirtpequipamento(cdtpequipamento:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tpequipamento) then
  begin
    acttpequipamentoExecute(nil);
  end;
  frmtpequipamento.Abrir(cdtpequipamento);
end;

procedure Tfrmmain.Abrirtpordserv(cdtpordserv:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tpordserv) then
  begin
    acttpordservExecute(nil);
  end;
  frmtpordserv.Abrir(cdtpordserv);
end;

procedure Tfrmmain.Abrirfornecedor(cdfornecedor:LargeInt);
begin
  if not (lowercase(main.formatual) = _frm+_fornecedor) then
  begin
    actFornecedorExecute(nil);
  end;
  frmfornecedor.Abrir(cdfornecedor);
end;

procedure Tfrmmain.Abrirequipamento(cdequipamento:integer);
begin
  if not (lowercase(main.formatual) = _frm+_equipamento) then
  begin
    actequipamentoExecute(nil);
  end;
  frmequipamento.Abrir(cdequipamento);
end;

procedure Tfrmmain.Abrirtplocacao(cdtplocacao:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tplocacao) then
  begin
    acttplocacaoExecute(nil);
  end;
  frmtplocacao.Abrir(cdtplocacao);
end;

procedure Tfrmmain.Abrirtransportadora(cdtransportadora:LargeInt);
begin
  if not (lowercase(main.formatual) = _frm+_transportadora) then
  begin
    actTransportadoraExecute(nil);
  end;
  frmtransportadora.Abrir(cdtransportadora);
end;

procedure Tfrmmain.Abrirtransporte(cdtransporte:integer);
begin
  if not (lowercase(main.formatual) = _frm+_transporte) then
  begin
    acttransporteExecute(nil);
  end;
  frmtransporte.Abrir(cdtransporte);
end;

procedure Tfrmmain.Abrircheque(cdcheque:integer);
begin
  if not (lowercase(main.formatual) = _frm+_cheque) then
  begin
    actchequeExecute(nil);
  end;
  frmcheque.Abrir(cdcheque);
end;

procedure Tfrmmain.Abrirautpagto(cdautpagto:integer);
begin
  if not (lowercase(main.formatual) = _frm+_autpagto) then
  begin
    actAutpagtoExecute(nil);
  end;
  frmautpagto.Abrir(cdautpagto);
end;

procedure Tfrmmain.Abriradntcliente(cdadntcliente:integer);
begin
  if not (lowercase(main.formatual) = _frm+_adntcliente) then
  begin
    actadntclienteExecute(nil);
  end;
  frmadntcliente.Abrir(cdadntcliente);
end;

procedure Tfrmmain.Abrirapontamentomanual(cdapontamentomanual:integer);
begin
  if not (lowercase(main.formatual) = _frm+_apontamentomanual) then
  begin
    actapontamentomanualExecute(nil);
  end;
  frmapontamentomanual.Abrir(cdapontamentomanual);
end;

procedure Tfrmmain.Abriradntfornecedor(cdadntfornecedor:integer);
begin
  if not (lowercase(main.formatual) = _frm+_adntfornecedor) then
  begin
    actadntfornecedorExecute(nil);
  end;
  frmadntfornecedor.Abrir(cdadntfornecedor);
end;

procedure Tfrmmain.Abrirtarefa(cdtarefa:integer);
begin
  if not (lowercase(main.formatual) = _frm+_manager+_tarefa) then
  begin
    ActmanagertarefaExecute(nil);
  end;
  frmmanagertarefa.Abrir(cdtarefa);
end;

procedure Tfrmmain.Abrircondpagto(cdcondpagto:integer);
begin
  if not (lowercase(main.formatual) = _frm+_condpagto) then
  begin
    actCondpagtoExecute(nil);
  end;
  frmcondpagto.Abrir(cdcondpagto);
end;

procedure Tfrmmain.Abrircontrato(cdcontrato:integer);
begin
  if not (lowercase(main.formatual) = _frm+_contrato) then
  begin
    actcontratoExecute(nil);
  end;
  frmcontrato.Abrir(cdcontrato);
end;

procedure Tfrmmain.Abrirconta(cdconta:integer);
begin
  if not (lowercase(main.formatual) = _frm+_conta) then
  begin
    actContaExecute(nil);
  end;
  frmconta.Abrir(cdconta);
end;

procedure Tfrmmain.Abrirduplicata(cdduplicata:integer);
begin
  if not (lowercase(main.formatual) = _frm+_duplicata) then
  begin
    actDuplicataExecute(nil);
  end;
  frmduplicata.Abrir(cdduplicata);
end;

procedure Tfrmmain.Abrirrepresentante(cdrepresentante:integer);
begin
  if not (lowercase(main.formatual) = _frm+_representante) then
  begin
    actRepresentanteExecute(nil);
  end;
  frmrepresentante.Abrir(cdrepresentante);
end;

procedure Tfrmmain.Abrirtppedido(cdtppedido:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tppedido) then
  begin
    acttppedidoExecute(nil);
  end;
  frmtppedido.Abrir(cdtppedido);
end;

procedure Tfrmmain.Abrirtpfaturamento(cdtpfaturamento:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tp+_faturamento) then
  begin
    acttpfaturamentoExecute(nil);
  end;
  frmtpfaturamento.Abrir(cdtpfaturamento);
end;

procedure Tfrmmain.Abrirtpcontrato(cdtpcontrato:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tpcontrato) then
  begin
    acttpcontratoExecute(nil);
  end;
  frmtpcontrato.Abrir(cdtpcontrato);
end;

procedure Tfrmmain.Abrirtpordcompra(cdtpordcompra:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tpordcompra) then
  begin
    acttpordcompraExecute(nil);
  end;
  frmtpordcompra.Abrir(cdtpordcompra);
end;

procedure Tfrmmain.Abrirtporcamento(cdtporcamento:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tporcamento) then
  begin
    acttporcamentoExecute(nil);
  end;
  frmtporcamento.Abrir(cdtporcamento);
end;

procedure Tfrmmain.Abrirtpordproducao(cdtpordproducao:integer);
begin
  if not (lowercase(main.formatual) = _frm+_tpordproducao) then
  begin
    acttpordproducaoExecute(nil);
  end;
  frmtpordproducao.Abrir(cdtpordproducao);
end;

procedure Tfrmmain.Abrirveiculo(cdveiculo:integer);
begin
  if not (lowercase(main.formatual) = _frm+_veiculo) then
  begin
    actveiculoExecute(nil);
  end;
  frmveiculo.Abrir(cdveiculo);
end;

procedure Tfrmmain.AbrirMDFE(cdmdfe: integer);
begin
  if not (lowercase(main.formatual) = _frm+_mdfe) then
  begin
    actmdfeExecute(nil);
  end;
  frmmdfe.Abrir(cdmdfe);
end;

procedure Tfrmmain.Abrirmovbancario(cdmovbancario:integer);
begin
  if not (lowercase(main.formatual) = _frm+_caixa+_financeiro) then
  begin
    actcaixafinanceiroExecute(nil);
  end;
  frmcaixafinanceiro.Abrir(cdmovbancario);
end;

procedure Tfrmmain.Abrirrota(cdrota:integer);
begin
  if not (lowercase(main.formatual) = _frm+_rota) then
  begin
    actRotaExecute(nil);
  end;
  frmRota.Abrir(cdrota);
end;

procedure Tfrmmain.actFecharExecute(Sender: TObject);
begin
  if main.formAtual <> '' then
  begin
    main.DestruirFormAtual(main.formatual, tlbnew);
  end;
end;

procedure Tfrmmain.actLoginExecute(Sender: TObject);
begin
  if efetuarLogin then
  begin
    dxbrtoolbar.Visible := False;
    AtivarAction(act, True);
    FormShow(self);
    dxbrtoolbar.Visible := true;
  end;
end;

procedure Tfrmmain.actLogoffExecute(Sender: TObject);
begin
  if messagedlg(_msg_Deseja_realmente_efetuar_logoff, mtconfirmation, [mbyes, mbno], 0) <> mryes then
  begin
    exit;
  end;
  DesConfigurarPermissoes(self);
  main.FecharTodosForms;
  usuario.ZerarVariaveisConexao; // zerar variaveis de conexao: usuario, computador, formulario, permissao
  AtivarAction(act, false);     // desabilitar todas as opções do menu disponibilizando apenas login e sair
  stb.panels[1].Text := Maiuscula(_Desconectado);
  main.formatual := '';
  Repaint;
  actLoginExecute(sender);
end;

procedure Tfrmmain.actSairExecute(Sender: TObject);
begin
  close;
end;

procedure Tfrmmain.acttpprodutoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpproduto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpproduto) then
  begin
    frmtpproduto := TFrmtpproduto.Create(frmMain);
  end;
  set_merge(frmtpproduto.bmg1);
  main.configform(frmtpproduto, tlbnew, frmtpproduto.registro);
end;

procedure Tfrmmain.actCondpagtoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_condpagto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_condpagto) then
  begin
    frmcondpagto := TFrmcondpagto.Create(frmMain);
  end;
  set_merge(frmcondpagto.bmg1);
  main.configform(frmcondpagto, tlbnew, frmcondpagto.registro);
end;

procedure Tfrmmain.actExportarExcelExecute(Sender: TObject);
begin
  ExportarExcel;                                                       
end;

procedure Tfrmmain.actSobreExecute(Sender: TObject);
begin
  ShellAbout(Self.Handle,PChar(Application.Title),'Desenvolvido www.quipos.inf.br - (31)3826-0476/(31)3091-7799/(31)3091-7744/(31)3091-7789', Application.Icon.Handle) ;
end;

procedure Tfrmmain.FormShow(Sender: TObject);
begin
  ConfigurarPermissoes(self);
  qrotinas.setDecimalSeparator;
  set_logomarca;
  set_login;
  edtcmd.SetFocus;
end;

procedure Tfrmmain.actTransportadoraExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_transportadora) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_transportadora) then
  begin
    frmtransportadora := TFrmtransportadora.Create(frmMain);
  end;
  set_merge(frmtransportadora.bmg1);
  main.configform(frmtransportadora, tlbnew, frmtransportadora.registro);
end;

procedure Tfrmmain.actRepresentanteExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_representante) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_representante) then
  begin
    frmrepresentante := TFrmrepresentante.Create(frmMain);
  end;
  set_merge(frmrepresentante.bmg1);
  main.configform(frmrepresentante, tlbnew, frmrepresentante.registro);
end;

procedure Tfrmmain.actMovtoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_movto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_movto) then
  begin
    frmmovto := TFrmmovto.Create(frmMain);
  end;
  set_merge(frmmovto.bmg1);
  main.configform(frmmovto, tlbnew, frmmovto.registro);
end;

procedure Tfrmmain.Abrircliente(cdcliente:LargeInt);
begin
  if not (lowercase(main.formatual) = _frm+_cliente) then
  begin
    actClienteExecute(nil);
  end;
  frmcliente.Abrir(cdcliente);
end;

procedure Tfrmmain.actClienteExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_cliente) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_cliente) then
  begin
    frmcliente := TFrmcliente.Create(frmMain);
  end;
  set_merge(frmcliente.bmg1);
  main.configform(frmcliente, tlbnew, frmcliente.registro);
end;

procedure Tfrmmain.actFornecedorExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_fornecedor) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_fornecedor) then
  begin
    frmfornecedor := TFrmfornecedor.Create(frmMain);
  end;
  set_merge(frmfornecedor.bmg1);
  main.configform(frmfornecedor, tlbnew, frmfornecedor.registro);
end;

procedure Tfrmmain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if messagedlg('Deseja realmente sair?', mtconfirmation, [mbyes, mbno], 0) = mrno then
  begin
    canclose := false;
    Exit;
  end;
  main.FecharTodosForms;
end;

procedure Tfrmmain.actProdutoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_produto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_produto) then
  begin
    frmproduto := TFrmproduto.Create(frmMain);
  end;
  set_merge(frmproduto.bmg1);
  main.configform(frmproduto, tlbnew, frmproduto.registro);
end;

procedure Tfrmmain.actPedidoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_pedido) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_pedido) then
  begin
    frmpedido := TFrmpedido.Create(frmMain);
  end;
  set_merge(frmpedido.bmg1);
  main.configform(frmpedido, tlbnew, frmpedido.registro);
end;

procedure Tfrmmain.actConsultaClienteExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_cliente) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_cliente) then
  begin
    frmconsultacliente := TFrmconsultacliente.Create(frmMain);
  end;
  set_merge(frmconsultacliente.bmg1);
  main.configform(frmconsultacliente, tlbnew);
end;

procedure Tfrmmain.actConsultaRepresentanteExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_representante) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_representante) then
  begin
    frmconsultarepresentante := TFrmconsultarepresentante.Create(frmMain);
  end;
  set_merge(frmconsultarepresentante.bmg1);
  main.configform(frmconsultarepresentante, tlbnew);
end;

procedure Tfrmmain.actConsultaPedidoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_pedido) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_pedido) then
  begin
    frmconsultapedido := TFrmconsultapedido.Create(frmMain);
  end;
  set_merge(frmconsultapedido.bmg1);
  main.configform(frmconsultapedido, tlbnew);
end;

procedure Tfrmmain.actconsultasaidaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_saida) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_saida) then
  begin
    frmconsultasaida := TFrmconsultasaida.Create(frmMain);
  end;
  set_merge(frmconsultasaida.bmg1);
  main.configform(frmconsultasaida, tlbnew);
end;

procedure Tfrmmain.actmanagerpedidoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_manager+_pedido+_2) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_manager+_pedido+_2) then
  begin
    frmmanagerpedido := Tfrmmanagerpedido.Create(frmMain);
  end;
  main.configform(frmmanagerpedido, tlbnew);
end;

procedure Tfrmmain.actContaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_conta) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_conta) then
  begin
    frmconta := TFrmconta.Create(frmMain);
  end;
  set_merge(frmconta.bmg1);
  main.configform(frmconta, tlbnew, frmconta.registro);
end;

procedure Tfrmmain.actsaidaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_saida) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_saida) then
  begin
    frmsaida := TFrmsaida.Create(frmMain);
  end;
  set_merge(frmsaida.bmg1);
  main.configform(frmsaida, tlbnew, frmsaida.registro);
end;

procedure Tfrmmain.actDuplicataExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_duplicata) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_duplicata) then
  begin
    frmduplicata := TFrmduplicata.Create(frmMain);
  end;
  set_merge(frmduplicata.bmg1);
  main.configform(frmduplicata, tlbnew, frmduplicata.registro);
end;

procedure Tfrmmain.acttpentradaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpentrada) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpentrada) then
  begin
    frmtpentrada := Tfrmtpentrada.Create(frmMain);
  end;
  set_merge(frmtpentrada.bmg1);
  main.configform(frmtpentrada, tlbnew, frmtpentrada.registro);
end;

procedure Tfrmmain.acttpsaidaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpsaida) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpsaida) then
  begin
    frmtpsaida := Tfrmtpsaida.Create(frmMain);
  end;
  set_merge(frmtpsaida.bmg1);
  main.configform(frmtpsaida, tlbnew, frmtpsaida.registro);
end;

procedure Tfrmmain.actentradaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_entrada) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_entrada) then
  begin
    frmentrada := TFrmentrada.Create(frmMain);
  end;
  set_merge(frmentrada.bmg1);
  main.configform(frmentrada, tlbnew, frmentrada.registro);
end;

procedure Tfrmmain.actAutpagtoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_autpagto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_autpagto) then
  begin
    frmautpagto := TFrmautpagto.Create(frmMain);
  end;
  set_merge(frmautpagto.bmg1);
  main.configform(frmautpagto, tlbnew, frmautpagto.registro);
end;

procedure Tfrmmain.actManagerDuplicataExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_manager+_duplicata) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_manager+_duplicata) then
  begin
    frmmanagerduplicata := TFrmmanagerduplicata.Create(frmMain);
  end;
  set_merge(frmmanagerduplicata.bmg1);
  main.configform(frmmanagerduplicata, tlbnew);
end;

procedure Tfrmmain.actManagerAutPagtoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_manager+_autpagto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_manager+_autpagto) then
  begin
    frmmanagerautpagto := TFrmmanagerautpagto.Create(frmMain);
  end;
  set_merge(frmmanagerautpagto.bmg1);
  main.configform(frmmanagerautpagto, tlbnew);
end;

procedure Tfrmmain.actadntclienteExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_adntcliente) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_adntcliente) then
  begin
    frmadntcliente := TFrmadntcliente.Create(frmMain);
  end;
  set_merge(frmadntcliente.bmg1);
  main.configform(frmadntcliente, tlbnew, frmadntcliente.registro);
end;

procedure Tfrmmain.actconsultaduplicataExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_duplicata) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_duplicata) then
  begin
    frmconsultaduplicata := TFrmconsultaduplicata.Create(frmMain);
  end;
  set_merge(frmconsultaduplicata.bmg1);
  main.configform(frmconsultaduplicata, tlbnew);
end;

procedure Tfrmmain.actconsultaentradaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_entrada) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_entrada) then
  begin
    frmconsultaentrada := TFrmconsultaentrada.Create(frmMain);
  end;
  set_merge(frmconsultaentrada.bmg1);
  main.configform(frmconsultaentrada, tlbnew);
end;

procedure Tfrmmain.actconferenciapedidoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_conferencia+_pedido) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_conferencia+_pedido) then
  begin
    frmconferenciapedido := TFrmconferenciapedido.Create(frmMain);
  end;
  set_merge(frmconferenciapedido.bmg1);
  main.configform(frmconferenciapedido, tlbnew, frmconferenciapedido.registro);
end;

procedure Tfrmmain.actconsultaautpagtoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_autpagto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_autpagto) then
  begin
    frmconsultaautpagto := TFrmconsultaautpagto.Create(frmMain);
  end;
  set_merge(frmconsultaautpagto.bmg1);
  main.configform(frmconsultaautpagto, tlbnew);
end;

procedure Tfrmmain.actconsultaMovBancarioExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_movbancario) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_movbancario) then
  begin
    frmconsultamovbancario := TFrmconsultamovbancario.Create(frmMain);
  end;
  set_merge(frmconsultamovbancario.bmg1);
  main.configform(frmconsultamovbancario, tlbnew);
end;

procedure Tfrmmain.actConsultaMovtoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_movto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_movto) then
  begin
    frmconsultamovto := TFrmconsultamovto.Create(frmMain);
  end;
  set_merge(frmconsultamovto.bmg1);
  main.configform(frmconsultamovto, tlbnew);
end;

procedure Tfrmmain.actconsultaprodutoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_produto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_produto) then
  begin
    frmconsultaproduto := TFrmconsultaproduto.Create(frmMain);
  end;
  set_merge(frmconsultaproduto.bmg1);
  main.configform(frmconsultaproduto, tlbnew);
end;

procedure Tfrmmain.actadntfornecedorExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_adntfornecedor) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_adntfornecedor) then
  begin
    frmadntfornecedor := TFrmadntfornecedor.Create(frmMain);
  end;
  set_merge(frmadntfornecedor.bmg1);
  main.configform(frmadntfornecedor, tlbnew, frmadntfornecedor.registro);
end;

procedure Tfrmmain.actlivroExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_livro) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_livro) then
  begin
    frmlivro := TFrmlivro.Create(frmMain);
  end;
  set_merge(frmlivro.bmg1);
  main.configform(frmlivro, tlbnew, frmlivro.registro);
end;

procedure Tfrmmain.Abrircobranca(cdcobranca:integer);
begin
  if not (lowercase(main.formatual) = _frm+_cobranca) then
  begin
    actcobrancaExecute(nil);
  end;
  frmcobranca.Abrir(cdcobranca);
end;

procedure Tfrmmain.actcobrancaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_cobranca) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_cobranca) then
  begin
    frmcobranca := TFrmcobranca.Create(frmMain);
  end;
  set_merge(frmcobranca.bmg1);
  main.configform(frmcobranca, tlbnew, frmcobranca.registro);
end;

procedure Tfrmmain.actempresaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_empresa) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_empresa) then
  begin
    frmempresa := TFrmempresa.Create(frmMain);
  end;
  set_merge(frmempresa.bmg1);
  main.configform(frmempresa, tlbnew, frmempresa.registro);
end;

procedure Tfrmmain.actrpaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_rpa) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_rpa) then
  begin
    frmrpa := TFrmrpa.Create(frmMain);
  end;
  set_merge(frmrpa.bmg1);
  main.configform(frmrpa, tlbnew);
end;

procedure Tfrmmain.odc1GetKey(Sender: TObject; var Key: TKey);
begin
  omk1.GenerateMDKey(Key, 16, empresa.nucnpj+empresa.rzsocial);
end;

procedure Tfrmmain.odc1GetCode(Sender: TObject; var Code: TCode);
begin
  HexToBuffer(chave, Code, SizeOf(Code));
end;

procedure Tfrmmain.odc1Checked(Sender: TObject; Status: TCodeStatus);
begin
  empresa.bochaveuso := Status = ogvalidcode;
  if Status = ogvalidcode then
  begin
    ExecutaSQL('update empresa set dschave='+quotedstr(chave)+' where cdempresa='+empresa.cdempresa.tostring);
    Exit;
  end;
  if not Informe_Chave_uso(empresa.rzsocial, empresa.nucnpj, FormatDateTime(_dd_mm_yyyy, odc1.GetValue), chave) then
  begin
    Exit;
  end;
  if chave = '' then
  begin
    informacao_caption(True);
  end
                else odc1.CheckCode(True);
end;

procedure Tfrmmain.actchatExecute(Sender: TObject);
var
  nmsuporte, link : string;
  function get_identificacao:string;
  begin
    result := Copy(nmsuporte, 1, 15)+' - '+Copy(empresa.nmempresa, 1, 17)+' - '+empresa.nufone1+' - '+Versao.GetBuildInfo(4);
  end;
begin
  if messagedlg('Tem certeza que deseja abrir o chat do suporte?', mtinformation, [mbyes, mbno], 0) = mrno then
  begin
    exit;
  end;
  nmsuporte := usuario.nmusuario;
  if LowerCase(nmsuporte) = _administrador then
  begin
    nmsuporte := InputBox('Nome do Usuário', 'Informe o seu nome para o suporte', '');
  end;
  if nmsuporte = '' then
  begin
    Exit;
  end;
  link := 'http://quipos.inf.br/mibew/client.php?locale=pt-br&usuario='+get_identificacao+' &url=http%3A//quipos.inf.br/&referrer=';
  //link := 'http://quipos.inf.br/livezilla/chat.php?a=84ef4';
  ShellExecute(Handle, _open, PChar(link), Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actchaveExecute(Sender: TObject);
begin
  if not Informe_Chave_uso(empresa.rzsocial, empresa.nucnpj, FormatDateTime(_dd_mm_yyyy, odc1.GetValue), chave) then
  begin
    Exit;
  end;
  if chave <> '' then
  begin
    ExecutaSQL('update empresa set dschave='+quotedstr(chave)+' where cdempresa='+empresa.cdempresa.tostring);
    informacao_caption;
  end
  else
  begin
    informacao_caption(True)
  end;                                                                                  
end;

function Tfrmmain.BuscaChaveWEB:boolean; (**)
  function IsConectadoNaInternet: Boolean;
  begin
    Result := InternetCheckConnection('http://www.quipos.inf.br', 1, 0);
  end;
var
  vChave: string;
  q : TClasseQuery;
begin
  result := false;
  if not IsConectadoNaInternet then
  begin
    Exit;
  end;
  q := tclasseQuery.create(dtmmain.consite, '');
  try
    try
      dtmmain.consite.Open;
      q.q.Open('SELECT chave FROM clientes WHERE cnpj='+quotedstr(empresa.nucnpj));
      vchave := q.q.fieldbyname(_chave).Asstring;
      //vChave := GetquiposPortType.retornachave(empresa.nucnpj);
      ExecutaSQL('update empresa set dschave='+quotedstr(vChave)+' WHERE CDEMPRESA='+empresa.cdempresa.tostring);
      result := True;
    except
    end;
  finally
    freeandnil(q);
    dtmmain.consite.close;
  end;
end;

procedure Tfrmmain.informacao_caption(boler:Boolean=True);
begin
  Caption := Application.Title + ' ' + Versao.GetBuildInfo(4);
  if boler then
  begin
    BuscaChaveWEB;
    chave := RetornaSQLString('select dschave from empresa where cdempresa='+empresa.cdempresa.tostring);
  end;
  odc1.CheckCode(TRUE);
  if odc1.GetValue < DtBanco then
  begin
    Caption := Caption + ' - Expirado '+FormatDateTime(_dd_mm_yyyy, odc1.GetValue)
  end
  else if odc1.GetValue - DtBanco < 5 then
  begin
    Caption := Caption + ' - Expira: ' +FormatDateTime(_dd_mm_yyyy, odc1.GetValue);
  end;
  Caption            := Caption +  ' - Banco: '+dtmmain.confire.Params[0]+':'+dtmmain.confire.Params[2];
  Empresa.dtchaveuso := odc1.GetValue;
end;

procedure Tfrmmain.FormCreate(Sender: TObject);
begin
  btnrelatoriobug.Down := true;
  main              := TMain.create;
  Application.Title := empresa.nmempresa;
  informacao_caption;
  CreateSkinsMenuItems;
  set_traducao;
end;

procedure Tfrmmain.acttransporteExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_transporte) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_transporte) then
  begin
    frmtransporte := TFrmtransporte.Create(frmMain);
  end;
  set_merge(frmtransporte.bmg1);
  main.configform(frmtransporte, tlbnew, frmtransporte.registro);
end;

procedure Tfrmmain.acttreinamentoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_treinamento) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_treinamento) then
  begin
    frmtreinamento := TFrmtreinamento.Create(frmMain);
  end;
  set_merge(frmtreinamento.bmg1);
  main.configform(frmtreinamento, tlbnew, frmtreinamento.registro);
end;

procedure Tfrmmain.actbaixaestoqueExecute(Sender: TObject);
begin
  baixarestoque;
end;

procedure Tfrmmain.actentradaestoqueExecute(Sender: TObject);
begin
  EntrarEstoque;
end;

procedure Tfrmmain.actchequeExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_cheque) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_cheque) then
  begin
    frmcheque := TFrmcheque.Create(frmMain);
  end;
  set_merge(frmcheque.bmg1);
  main.configform(frmcheque, tlbnew, frmcheque.registro);
end;

procedure Tfrmmain.actmanageruserExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_manager+_user) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_manager+_user) then
  begin
    frmmanageruser := TFrmmanageruser.Create(frmMain);
  end;
  set_merge(frmmanageruser.bmg1);
  main.configform(frmmanageruser, tlbnew);
end;

procedure Tfrmmain.actetapaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_etapa) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_etapa) then
  begin
    frmetapa := TFrmetapa.Create(frmMain);
  end;
  set_merge(frmetapa.bmg1);
  main.configform(frmetapa, tlbnew, frmetapa.registro);
end;

procedure Tfrmmain.actexportacaoExecute(Sender: TObject);
begin
//
end;

procedure Tfrmmain.actfuncionarioExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_funcionario) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_funcionario) then
  begin
    frmfuncionario := TFrmfuncionario.Create(frmMain);
  end;
  set_merge(frmfuncionario.bmg1);
  main.configform(frmfuncionario, tlbnew, frmfuncionario.registro);
end;

procedure Tfrmmain.acttpordservExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpordserv) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpordserv) then
  begin
    frmtpordserv := TFrmtpordserv.Create(frmMain);
  end;
  set_merge(frmtpordserv.bmg1);
  main.configform(frmtpordserv, tlbnew, frmtpordserv.registro);
end;

procedure Tfrmmain.actequipamentoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_equipamento) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_equipamento) then
  begin
    frmequipamento := TFrmequipamento.Create(frmMain);
  end;
  set_merge(frmequipamento.bmg1);
  main.configform(frmequipamento, tlbnew, frmequipamento.registro);
end;

procedure Tfrmmain.actveiculoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_veiculo) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_veiculo) then
  begin
    frmveiculo := TFrmveiculo.Create(frmMain);
  end;
  set_merge(frmveiculo.bmg1);
  main.configform(frmveiculo, tlbnew, frmveiculo.registro);
end;

procedure Tfrmmain.actversaoExecute(Sender: TObject);
begin
  urelease.Exibir;
end;

procedure Tfrmmain.actcontratoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_contrato) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_contrato) then
  begin
    frmcontrato := TFrmcontrato.Create(frmMain);
  end;
  set_merge(frmcontrato.bmg1);
  main.configform(frmcontrato, tlbnew, frmcontrato.registro);
end;

procedure Tfrmmain.actordservExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_ordserv) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_ordserv) then
  begin
    frmordserv := Tfrmordserv.Create(frmMain);
  end;
  set_merge(frmordserv.bmg1);
  main.configform(frmordserv, tlbnew, frmordserv.registro);
end;

procedure Tfrmmain.actimportacaoclienteExecute(Sender: TObject);
begin
  ImportarCliente;
end;

procedure Tfrmmain.actimportacaodatasulExecute(Sender: TObject);
begin
  //
end;

procedure Tfrmmain.actimportacaodigisatclienteExecute(Sender: TObject);
begin
  if ImportarDigisatcliente then
  begin
    showmessage('Importação concluída!');
  end;
end;

procedure Tfrmmain.actimportacaodigisatExecute(Sender: TObject);
begin
  //
end;

procedure Tfrmmain.actimportacaodigisatFornecedorExecute(Sender: TObject);
begin
  if ImportarDigisatFornecedor then
  begin
    showmessage('Importação concluída!');
  end;
end;

procedure Tfrmmain.actimportacaodigisatprodutoExecute(Sender: TObject);
begin
  if ImportarDigisatProduto then
  begin
    showmessage('Importação concluída!');
  end;
end;

procedure Tfrmmain.actimportacaoDOVerleihExecute(Sender: TObject);
begin
  TImportacaoDOVerleih.SequenciaImportacao;
end;

procedure Tfrmmain.actimportacaoExecute(Sender: TObject);
begin
//
end;

procedure Tfrmmain.actimportacaofornecedorExecute(Sender: TObject);
begin
  ImportarFornecedor;
end;

procedure Tfrmmain.actimportacaogesoftclienteExecute(Sender: TObject);
begin
  TImportacaoGesoft.SequenciaImportacao(_cliente);
end;

procedure Tfrmmain.actImportacaoGesoftEntradaExecute(Sender: TObject);
begin
  TImportacaoGesoft.SequenciaImportacao(_entrada);
end;

procedure Tfrmmain.actimportacaoGesoftExecute(Sender: TObject);
begin
//
end;

procedure Tfrmmain.actimportacaogesoftfornecedorExecute(Sender: TObject);
begin
  TImportacaoGesoft.SequenciaImportacao(_fornecedor);
end;

procedure Tfrmmain.actimportacaogesoftProdutoExecute(Sender: TObject);
begin
  TImportacaoGesoft.SequenciaImportacao(_produto);
end;

procedure Tfrmmain.actimportacaogesoftsaidaExecute(Sender: TObject);
begin
  timportacaogesoft.sequenciaimportacao(_saida);
end;

procedure Tfrmmain.actImportacaoSeniorAutpagtoExecute(Sender: TObject);
begin
  TImportacaoSenior.SequenciaImportacao(_autpagto);
end;

procedure Tfrmmain.actimportacaoseniorbaixaautpagtoExecute(Sender: TObject);
begin
  TImportacaoSenior.SequenciaImportacao(_baixa+_autpagto);
end;

procedure Tfrmmain.actimportacaoseniorbaixaduplicataExecute(Sender: TObject);
begin
  TImportacaoSenior.SequenciaImportacao(_baixa+_duplicata);
end;

procedure Tfrmmain.actImportacaoSeniorClienteExecute(Sender: TObject);
begin
  TImportacaoSenior.SequenciaImportacao(_cliente);
end;

procedure Tfrmmain.actImportacaoSeniorDuplicataExecute(Sender: TObject);
begin
  TImportacaoSenior.SequenciaImportacao(_duplicata);
end;

procedure Tfrmmain.actimportacaoseniorEntradaExecute(Sender: TObject);
begin
  TImportacaoSenior.SequenciaImportacao(_entrada);
end;

procedure Tfrmmain.actImportacaoSeniorExecute(Sender: TObject);
begin
  //
end;

procedure Tfrmmain.actImportacaoSeniorFornecedorExecute(Sender: TObject);
begin
  TImportacaoSenior.SequenciaImportacao(_fornecedor);
end;

procedure Tfrmmain.actImportacaoSeniorProdutoExecute(Sender: TObject);
begin
  TImportacaoSenior.SequenciaImportacao(_produto);
end;

procedure Tfrmmain.actImportacaoSeniorTodosExecute(Sender: TObject);
begin
  TImportacaoSenior.SequenciaImportacao;
end;

procedure Tfrmmain.actimportacaotransportadoraExecute(Sender: TObject);
begin
  ImportarTransportadora;
end;

procedure Tfrmmain.actexportacaodatasulExecute(Sender: TObject);
begin
//
end;

procedure Tfrmmain.actexportacaodatasulRPAExecute(Sender: TObject);
begin
  if ExportacaoRPA then
  begin
    messagedlg(_msg_Exportacao_concluida, mtinformation, [mbok], 0);
  end;
end;

procedure Tfrmmain.actexportacaodatasulautpagtoExecute(Sender: TObject);
begin
  if Exportacaoautpagto then
  begin
    messagedlg(_msg_Exportacao_concluida, mtinformation, [mbok], 0);
  end;
end;

procedure Tfrmmain.actexportacaodatasulcontabilExecute(Sender: TObject);
begin
  if ExportacaoContabil then
  begin
    messagedlg(_msg_Exportacao_concluida, mtinformation, [mbok], 0);
  end;
end;

procedure Tfrmmain.actexportacaodatasulcteExecute(Sender: TObject);
begin
  if ExportacaoCTE then
  begin
    messagedlg(_msg_Exportacao_concluida, mtinformation, [mbok], 0);
  end;
end;

procedure Tfrmmain.actexportacaodatasulduplicataExecute(Sender: TObject);
begin
  if ExportacaoDuplicata then
  begin
    messagedlg(_msg_Exportacao_concluida, mtinformation, [mbok], 0);
  end;
end;

procedure Tfrmmain.actworkboxExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_workbox) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_workbox) then
  begin
    frmworkbox := TFrmworkbox.Create(frmMain);
  end;
  set_merge(frmworkbox.bmg1);
  main.configform(frmworkbox, tlbnew);
end;

procedure Tfrmmain.actconsultachequeExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta+_cheque) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta+_cheque) then
  begin
    frmconsultacheque := TFrmconsultacheque.Create(frmMain);
  end;
  set_merge(frmconsultacheque.bmg1);
  main.configform(frmconsultacheque, tlbnew);
end;

procedure Tfrmmain.actFaturamentoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_faturamento) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_faturamento) then
  begin
    frmfaturamento := tfrmfaturamento.Create(frmMain);
  end;
  set_merge(frmfaturamento.bmg1);
  main.configform(frmfaturamento, tlbnew, frmfaturamento.registro);
end;

procedure Tfrmmain.actlivrop3Execute(Sender: TObject);
begin
  {
  if main.processarabertura(_frm+_livro+_p+_3) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_livro+_P+_3) then
  begin
    frmlivroP3 := tfrmlivroP3.Create(frmMain);
  end;
  set_merge(frmlivrop3.bmg1);
  main.configform(frmlivroP3, tlbnew, frmlivrop3.registro);
  }
end;

procedure Tfrmmain.actpedidomaterialExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_pedidomaterial) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_pedidomaterial) then
  begin
    frmPedidoMaterial := tfrmPedidoMaterial.Create(frmMain);
  end;
  set_merge(frmpedidomaterial.bmg1);
  main.configform(frmPedidoMaterial, tlbnew, frmpedidomaterial.registro);
end;

procedure Tfrmmain.actrimExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_rim) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_rim) then
  begin
    frmrim := tfrmrim.Create(frmMain);
  end;
  set_merge(frmrim.bmg1);
  main.configform(frmrim, tlbnew, frmrim.registro);
end;

procedure Tfrmmain.actOrdCompraExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_ordcompra) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_ordcompra) then
  begin
    frmordcompra := tfrmordcompra.Create(frmMain);
  end;
  set_merge(frmordcompra.bmg1);
  main.configform(frmordcompra, tlbnew, frmordcompra.registro);
end;

procedure Tfrmmain.NovoOrdCompra(cdpedidomaterial: Integer; cdfornecedor: Largeint; cdtpordcompra: integer; bonovo:boolean);
begin
  actOrdCompraExecute(nil);
  frmordcompra.Novo(cdpedidomaterial, cdfornecedor, cdtpordcompra, bonovo);
end;

procedure Tfrmmain.AbrirPedidoMaterial(cdpedido: integer);
begin
  if not (lowercase(main.formatual) = _frm+_pedidomaterial) then
  begin
    actPedidomaterialExecute(nil);
  end;
  frmpedidomaterial.Abrir(cdpedido);
end;

procedure Tfrmmain.AbrirOrdCompra(cdordcompra: integer);
begin
  if not (lowercase(main.formatual) = _frm+_ordCompra) then
  begin
    actordCompraExecute(nil);
  end;
  frmordCompra.Abrir(cdordCompra);
end;

procedure Tfrmmain.Abrirlocacao(cdlocacao: integer);
begin
  if not (lowercase(main.formatual) = _frm+_locacao) then
  begin
    actlocacaoExecute(nil);
  end;
  frmlocacao.Abrir(cdlocacao);
end;

procedure Tfrmmain.AbrirOrdproducao(cdordproducao: integer);
begin
  if not (lowercase(main.formatual) = _frm+_ordproducao) then
  begin
    actordproducaoExecute(nil);
  end;
  frmordproducao.Abrir(cdordproducao);
end;

procedure Tfrmmain.AbrirRpa(cdrpa: integer);
begin
  if not (lowercase(main.formatual) = _frm+_rpa) then
  begin
    actRpaExecute(nil);
  end;
  frmrpa.Abrir(cdrpa);
end;

procedure Tfrmmain.set_faturamento;
begin
  if actfaturamento.enabled   then
  begin
    actfaturamento.enabled   := empresa.faturamento.bo;
    actfaturamento.Visible   := empresa.faturamento.bo;
  end;
  if actstfaturamento.Enabled then
  begin
    actstfaturamento.Enabled := empresa.faturamento.bo;
    actstfaturamento.Visible := empresa.faturamento.bo;
  end;
  if acttpfaturamento.Enabled then
  begin
    acttpfaturamento.Enabled := empresa.faturamento.bo;
    acttpfaturamento.Visible := empresa.faturamento.bo;
  end;
end;

procedure Tfrmmain.Set_PagtoComissao;
begin
  if actpagtocomissao.Enabled   then
  begin
    actpagtocomissao.Enabled   := Empresa.financeiro.bopagtocomissao;
    acttppagtocomissao.Enabled := Empresa.financeiro.bopagtocomissao;
  end;
  if actpagtocomissao.Enabled   then
  begin
    actpagtocomissao.visible   := Empresa.financeiro.bopagtocomissao;
    acttppagtocomissao.visible := Empresa.financeiro.bopagtocomissao;
  end;
end;

procedure Tfrmmain.Set_OrdCompra;
begin
  if acttpordcompra.Enabled then
  begin
    acttpordcompra.Enabled := empresa.aquisicao.ordcompra.bo;
    acttpordcompra.Visible := empresa.aquisicao.ordcompra.bo;
  end;
end;

procedure Tfrmmain.Set_Locacao;
begin
  if actLocacao.Enabled   then
  begin
    actLocacao.Visible   := empresa.bolocacao;
    actstlocacao.Visible := empresa.bolocacao;
  end;
  if acttplocacao.Enabled then
  begin
    acttplocacao.Visible := empresa.bolocacao;
    actLocacao.enabled   := empresa.bolocacao;
  end;
  if actstlocacao.enabled then
  begin
    actstlocacao.enabled := empresa.bolocacao;
    acttplocacao.enabled := empresa.bolocacao;
  end;
end;

procedure Tfrmmain.Set_metrologia;
begin
  if actmetrologia.Enabled   then
  begin
    actmetrologia.Visible   := empresa.equipamento.metrologia.bo;
    actstmetrologia.Visible := empresa.equipamento.metrologia.bo;
  end;
  if actmetrologia.enabled   then
  begin
    actmetrologia.enabled   := empresa.equipamento.metrologia.bo;
    actstmetrologia.enabled := empresa.equipamento.metrologia.bo;
  end;
end;

procedure Tfrmmain.set_orcamento;
begin
  if actorcamento.enabled                 then
  begin
    actorcamento.enabled                 := empresa.comercial.orcamento.bo;
    actorcamento.Visible                 := empresa.comercial.orcamento.bo;
  end;
  if actstorcamento.enabled               then
  begin
    actstorcamento.enabled               := empresa.comercial.orcamento.bo;
    actstorcamento.Visible               := empresa.comercial.orcamento.bo;
  end;
  if acttporcamento.Enabled               then
  begin
    acttporcamento.Enabled               := empresa.comercial.orcamento.bo;
    acttporcamento.Visible               := empresa.comercial.orcamento.bo;
  end;
  if actorcamentoatravesde.Enabled        then
  begin
    actorcamentoatravesde.Enabled        := empresa.comercial.orcamento.bo;
    actorcamentoatravesde.Visible        := empresa.comercial.orcamento.bo;
  end;
end;

procedure Tfrmmain.set_tarefa;
begin
  if actsttarefa.Enabled       then
  begin
    actsttarefa.Enabled       := Empresa.tarefa.bo;
    actsttarefa.Visible       := Empresa.tarefa.bo;
  end;
  if acttptarefa.Enabled       then
  begin
    acttptarefa.Enabled       := Empresa.tarefa.bo;
    acttptarefa.Visible       := Empresa.tarefa.bo;
  end;
  if acttptarefa1.Enabled      then
  begin
    acttptarefa1.Enabled      := Empresa.tarefa.bo;
    acttptarefa1.Visible      := Empresa.tarefa.bo;
  end;
  if acttpmotivotarefa.Enabled then
  begin
    acttpmotivotarefa.Enabled := Empresa.tarefa.bo;
    acttpmotivotarefa.Visible := Empresa.tarefa.bo;
  end;
  if actmanagertarefa.Enabled  then
  begin
    actmanagertarefa.Enabled  := Empresa.tarefa.bo;
    actmanagertarefa.Visible  := Empresa.tarefa.bo;
  end;
end;

procedure Tfrmmain.Set_Pedido;
begin
  if acttpvolume.enabled            then
  begin
    acttpvolume.enabled            := empresa.comercial.pedido.bo;
    acttpvolume.Visible            := empresa.comercial.pedido.bo;
  end;
  if actpedido.enabled              then
  begin
    actpedido.enabled              := empresa.comercial.pedido.bo;
    actpedido.Visible              := empresa.comercial.pedido.bo;
  end;
  if acttppedido.Enabled            then
  begin
    acttppedido.Enabled            := empresa.comercial.pedido.bo;
    acttppedido.Visible            := empresa.comercial.pedido.bo;
  end;
  if actstpedido.Enabled            then
  begin
    actstpedido.Enabled            := empresa.comercial.pedido.bo;
    actstpedido.Visible            := empresa.comercial.pedido.bo;
  end;
  if actstitpedido.Enabled          then
  begin
    actstitpedido.Enabled          := empresa.comercial.pedido.bo;
    actstitpedido.Visible          := empresa.comercial.pedido.bo;
  end;
  if actconsultapedido.Enabled      then
  begin
    actconsultapedido.Enabled      := empresa.comercial.pedido.bo;
    actconsultapedido.Visible      := empresa.comercial.pedido.bo;
  end;
  if actmanagerpedido.Enabled       then
  begin
    actmanagerpedido.Enabled       := Empresa.comercial.pedido.bomanager;
    actmanagerpedido.Visible       := Empresa.comercial.pedido.bomanager;
  end;
  if actconferenciapedido.Enabled   then
  begin
    actconferenciapedido.Enabled   := Empresa.comercial.pedido.boconferencia;
    actconferenciapedido.Visible   := empresa.comercial.pedido.boconferencia;
  end;
  if actstconferenciapedido.Enabled then
  begin
    actstconferenciapedido.Enabled := Empresa.comercial.pedido.boconferencia;
    actstconferenciapedido.Visible := empresa.comercial.pedido.boconferencia;
  end;
  if acttpcomercial.Enabled         then
  begin
    acttpcomercial.Enabled         := Empresa.comercial.pedido.bo;
    acttpcomercial.Visible         := Empresa.comercial.pedido.bo;
  end;
  if acttpcredito.Enabled           then
  begin
    acttpcredito.Enabled           := Empresa.comercial.pedido.bo;
    acttpcredito.Visible           := Empresa.comercial.pedido.bo;
  end;
  if acttprevisaocomercial.Enabled  then
  begin
    acttprevisaocomercial.Enabled  := Empresa.comercial.pedido.botprevisaocomercial;
    acttprevisaocomercial.Visible  := Empresa.comercial.pedido.botprevisaocomercial;
  end;
end;

procedure Tfrmmain.Set_Cheque;
begin
  if actcheque.Enabled         then
  begin
    actcheque.Enabled         := empresa.financeiro.cheque.bo;
    actcheque.Visible         := empresa.financeiro.cheque.bo;
  end;
  if actstcheque.Enabled       then
  begin
    actstcheque.Enabled       := empresa.financeiro.cheque.bo;
    actstcheque.Visible       := empresa.financeiro.cheque.bo;
  end;
  if actconsultacheque.Enabled then
  begin
    actconsultacheque.Enabled := empresa.financeiro.cheque.bo;
    actconsultacheque.Visible := empresa.financeiro.cheque.bo;
  end;
end;

procedure Tfrmmain.Set_Representante;
begin
  if actrepresentante.Enabled         then
  begin
    actrepresentante.Enabled         := Empresa.comercial.representante.bo;
    actrepresentante.Visible         := Empresa.comercial.representante.bo;
  end;
  if actStRepresentante.Enabled       then
  begin
    actStRepresentante.Visible       := Empresa.comercial.representante.bo;
    actStRepresentante.Enabled       := Empresa.comercial.representante.bo;
  end;
  if actConsultaRepresentante.Enabled then
  begin
    actConsultaRepresentante.Visible := Empresa.comercial.representante.bo;
    actConsultaRepresentante.Enabled := Empresa.comercial.representante.bo;
  end;
end;

procedure Tfrmmain.set_producao;
begin
  if actrequisicaoproducao.Enabled   then
  begin
    actrequisicaoproducao.Enabled   := empresa.producao.requisicaoproducao.bo;
    actrequisicaoproducao.visible   := empresa.producao.requisicaoproducao.bo;
  end;
  if actstrequisicaoproducao.Enabled then
  begin
    actstrequisicaoproducao.Enabled := empresa.producao.requisicaoproducao.bo;
    actstrequisicaoproducao.visible := empresa.producao.requisicaoproducao.bo;
  end;
  if acttprequisicaoproducao.Enabled then
  begin
    acttprequisicaoproducao.Enabled := empresa.producao.requisicaoproducao.bo;
    acttprequisicaoproducao.visible := empresa.producao.requisicaoproducao.bo;
  end;
  if actregiaoaplicacao.Enabled   then
  begin
    actregiaoaplicacao.Enabled := empresa.producao.ordproducao.boregiaoaplicacao;
    actregiaoaplicacao.visible := empresa.producao.ordproducao.boregiaoaplicacao;
  end;
  if actformulacao.Enabled        then
  begin
    actformulacao.Enabled      := empresa.producao.ordproducao.boformulacao;
    actformulacao.visible      := empresa.producao.ordproducao.boformulacao;
  end;
  if actordproducao.Enabled       then
  begin
    actordproducao.Enabled     := Empresa.producao.ordproducao.bo;
    actordproducao.Visible     := Empresa.producao.ordproducao.bo;
  end;
  if acttpmotivorevisao.Enabled   then
  begin
    acttpmotivorevisao.Enabled := Empresa.producao.ordproducao.bo;
    acttpmotivorevisao.Visible := Empresa.producao.ordproducao.bo;
  end;
  if acttphoraextra.enabled   then
  begin
    acttphoraextra.enabled   := empresa.producao.ordproducao.bo;
    acttphoraextra.visible   := empresa.producao.ordproducao.bo;
  end;
  if acttpordproducao.Enabled then
  begin
    acttpordproducao.Enabled := Empresa.producao.ordproducao.bo;
    acttpordproducao.Visible := Empresa.producao.ordproducao.bo;
  end;
  if actstordproducao.Enabled then
  begin
    actstordproducao.Enabled := Empresa.producao.ordproducao.bo;
    actstordproducao.Visible := Empresa.producao.ordproducao.bo;
  end;
  if actmanagerordproducao.Enabled then
  begin
    actmanagerordproducao.Enabled := Empresa.producao.ordproducao.bo;
    actmanagerordproducao.Visible := Empresa.producao.ordproducao.bo;
  end;
  if actcorridaquimica.Enabled then
  begin
    actcorridaquimica.Visible := empresa.producao.bocorridaquimica;
    actcorridaquimica.Enabled := empresa.producao.bocorridaquimica;
  end;
  if mniproducao.Visible = ivAlways then
  begin
    if Empresa.producao.ordproducao.bo then
    begin
      mniproducao.Visible := ivAlways
    end
    else
    begin
      mniproducao.Visible := ivNever;
    end;
  end;
end;

procedure Tfrmmain.set_rpa;
begin
  if actrpa.Enabled then
  begin
    actrpa.Enabled            := Empresa.financeiro.rpa.bo;
    actrpa.Visible            := Empresa.financeiro.rpa.bo;
  end;
  if acttprpa.Enabled then
  begin
    acttprpa.Enabled        := Empresa.financeiro.rpa.bo;
    acttprpa.Visible        := Empresa.financeiro.rpa.bo;
  end;
end;

procedure Tfrmmain.set_cte;
begin
  if actcte.Enabled then
  begin
    actcte.Visible := empresa.faturamento.cte.bo;
    actcte.Enabled := actcte.Visible;
  end;
  if actmdfe.Enabled then
  begin
    actmdfe.Visible := empresa.faturamento.mdfe.Bo;
    actmdfe.Enabled := empresa.faturamento.mdfe.Bo;
  end;
  if acttpmdfe.Enabled then
  begin
    acttpmdfe.Visible := empresa.faturamento.mdfe.Bo;
    acttpmdfe.Enabled := empresa.faturamento.mdfe.Bo;
  end;
end;

procedure Tfrmmain.set_agenda;
begin
  if actagenda.Enabled      then
  begin
    actagenda.Enabled      := empresa.producao.boagenda;
    actagenda.Visible      := empresa.producao.boagenda;
  end;
  if actagenda.Enabled      then
  begin
    actstitagenda.Enabled  := empresa.producao.boagenda;
    actstitagenda.Visible  := empresa.producao.boagenda;
  end;
  if acttpagenda.Enabled    then
  begin
    acttpagenda.Enabled    := empresa.producao.boagenda;
    acttpagenda.Visible    := empresa.producao.boagenda;
  end;
  if actregiaocorpo.Enabled then
  begin
    actregiaocorpo.Enabled := empresa.producao.boagenda;
    actregiaocorpo.Visible := empresa.producao.boagenda;
  end;
end;

procedure Tfrmmain.set_parada;
begin
  if actsubtpparada.Enabled then
  begin
    actsubtpparada.Visible := empresa.equipamento.boparada;
    actsubtpparada.enabled := empresa.equipamento.boparada;
  end;
  if acttpparada.Enabled    then
  begin
    acttpparada.Visible    := Empresa.equipamento.boparada;
    acttpparada.enabled    := Empresa.equipamento.boparada;
  end;
  if actparada.Enabled      then
  begin
    actparada.Visible      := empresa.equipamento.boparada;
    actparada.enabled      := empresa.equipamento.boparada;
  end;
end;

procedure Tfrmmain.SetForm;
begin
  if actapontamento.Enabled then
  begin
    actapontamento.visible := empresa.producao.boapontamento;
  end;
  set_agenda;
  set_parada;

  if actgrade.Enabled then
  begin
    actgrade.visible := retornasqlinteger('select count(*) from tpproduto where cdempresa='+empresa.cdempresa.tostring+' and bogradevalor=''S''')>0;
    actgrade.Enabled := actgrade.visible;
  end;
  //
  if actrmatividade.enabled then
  begin
    actrmatividade.Visible := empresa.bormatividade;
    actrmatividade.enabled := actrmatividade.Visible;
  end;
  //
  if actmanagerplconta.Visible then
  begin
    actmanagerplconta.Visible  := empresa.financeiro.boplconta;
  end;
  //
  set_faturamento;
  set_pagtocomissao;
  Set_OrdCompra;
  Set_Pedido;
  set_embarque;
  set_tarefa;
  set_orcamento;
  set_locacao;
  Set_metrologia;
  Set_Cheque;
  Set_Representante;
  //

  if actnegociacao.Enabled then
  begin
    actnegociacao.Enabled := empresa.financeiro.duplicata.bonegociacao;
    actnegociacao.Visible := empresa.financeiro.duplicata.bonegociacao;
  end;

  if actcobranca.Enabled then
  begin
    actcobranca.Enabled := empresa.financeiro.bocobrancabancaria;
    actcobranca.Visible := empresa.financeiro.bocobrancabancaria;
  end;
  //
  if actlivro.Enabled then
  begin
    actlivro.Enabled := Empresa.livro.bolivrofiscal;
    actlivro.visible := Empresa.livro.bolivrofiscal;
  end;
  //
  if actlivrop3.Enabled then
  begin
    actlivrop3.Enabled := empresa.livroproducao.bo;
    actlivrop3.Visible := empresa.livroproducao.bo;
  end;
  actativopiscofins.Enabled := empresa.livro.boativopiscofins;
  actativopiscofins.Visible := empresa.livro.boativopiscofins;
  //
  if actcor.enabled then
  begin
    actcor.Visible := Empresa.bocor;
    actcor.Enabled := Empresa.bocor;
  end;
  //
  set_producao;
  set_rpa;
  //
  set_rota;
  set_transporte;
  set_veiculo;
  if acttpaprovacao.enabled then
  begin
    acttpaprovacao.Visible := Empresa.boaprovacao;
    acttpaprovacao.Enabled := Empresa.boaprovacao;
  end;
  set_equipamento;
  set_intervencao;
  set_cte;

  if actmarca.enabled then
  begin
    actmarca.Visible := actcte.Visible or actequipamento.Visible;
    actmarca.Enabled := actcte.Visible or actequipamento.Visible;
  end;
  if actctetpvlprestacao.enabled then
  begin
    actctetpvlprestacao.Visible := actcte.Visible;
    actctetpvlprestacao.Enabled := actcte.Visible;
  end;
  if actctetpmedida.enabled then
  begin
    actctetpmedida.Visible := actcte.Visible;
    actctetpmedida.Enabled := actcte.Visible;
  end;
  if acttpcobranca.enabled then
  begin
    acttpcobranca.Visible := not ((not Empresa.faturamento.saida.bo)
                             and (not empresa.entrada.bo)
                             and (not empresa.financeiro.autpagto.bo)
                             and (not empresa.financeiro.duplicata.bo));
    acttpcobranca.Enabled := acttpcobranca.Visible;
  end;
  //
  if actordserv.Enabled then
  begin
    actordserv.Enabled := Empresa.ordserv.bo;
    actordserv.visible := Empresa.ordserv.bo;
  end;
  if actworkbox.Enabled then
  begin
    actworkbox.Enabled := Empresa.ordserv.workbox.bo;
    actworkbox.visible := Empresa.ordserv.workbox.bo;
  end;
  if actcondentrega.enabled then
  begin
    actcondentrega.Visible := Empresa.ordserv.bo;
    actcondentrega.Enabled := Empresa.ordserv.bo;
  end;
  if acttpvoltagem.enabled then
  begin
    acttpvoltagem.Visible := empresa.ordserv.bo;
    acttpvoltagem.Enabled := empresa.ordserv.bo;
  end;
  if actcontrato.Enabled then
  begin
    actcontrato.Enabled := Empresa.bocontrato;
    actcontrato.Visible := Empresa.bocontrato;
  end;
  if actstlink.Enabled then
  begin
    actstlink.Enabled := Empresa.ordserv.bo;
    actstlink.Visible := Empresa.ordserv.bo;
  end;
  if actstordserv.Enabled then
  begin
    actstordserv.Enabled := Empresa.ordserv.bo;
    actstordserv.Visible := Empresa.ordserv.bo;
  end;
  if actstitordserv.Enabled then
  begin
    actstitordserv.Enabled := Empresa.ordserv.bo;
    actstitordserv.Visible := Empresa.ordserv.bo;
  end;
  if actstcontrato.Enabled then
  begin
    actstcontrato.Enabled := empresa.bocontrato;
    actstcontrato.Visible := empresa.bocontrato;
  end;
  if acttpcontrato.Enabled then
  begin
    acttpcontrato.Enabled := empresa.bocontrato;
    acttpcontrato.Visible := empresa.bocontrato;
  end;

  if mniordserv.Enabled then
  begin
    mniordserv.Enabled := Empresa.ordserv.bo;
  end;
  actetapa.Visible := empresa.ordserv.boetapa;
  if mniordserv.Visible = ivAlways then
  begin
    if Empresa.ordserv.bo then
    begin
      mniordserv.Visible := ivAlways
    end
    else
    begin
      mniordserv.Visible := ivNever;
    end;
  end;
  if acttpordserv.Enabled     then
  begin
    acttpordserv.Visible        := Empresa.ordserv.bo;
    acttpordserv.Enabled        := Empresa.ordserv.bo;
  end;
  if actstgarantia.Enabled    then
  begin
    actstgarantia.Enabled       := Empresa.ordserv.bo;
    actstgarantia.Visible       := Empresa.ordserv.bo;
  end;
  if actstitetapa.Enabled     then
  begin
    actstitetapa.Visible        := Empresa.ordserv.bo;
    actstitetapa.Enabled        := Empresa.ordserv.bo;
  end;
  if actgarantia.Enabled      then
  begin
    actgarantia.Enabled         := Empresa.ordserv.bo;
    actgarantia.Visible         := Empresa.ordserv.bo;
  end;
  if acttpcondentrega.Enabled then
  begin
    acttpcondentrega.Enabled    := Empresa.ordserv.bo;
    acttpcondentrega.Visible    := Empresa.ordserv.bo;
  end;
  //
  if actequipamento.Enabled then
  begin
    actequipamento.Visible   := empresa.equipamento.bo;
    actequipamento.Enabled   := empresa.equipamento.bo;
  end;
  //
  set_funcionario;
  set_paciente;
  set_profissional;
  if actcliente.Enabled then
  begin
    actcliente.Enabled            := empresa.cliente.bo;
    actcliente.Visible            := empresa.cliente.bo;
  end;
  if actstcliente.Enabled then
  begin
    actstcliente.Visible        := empresa.cliente.bo;
    actstcliente.Enabled        := empresa.cliente.bo;
  end;
  if actConsultaCliente.Enabled then
  begin
    actConsultaCliente.Enabled  := empresa.cliente.bo;
    actconsultacliente.Visible  := empresa.cliente.bo;
  end;
  //
  if actclfornecedor.Enabled  then
  begin
    actclfornecedor.Enabled  := Empresa.fornecedor.IQF.bo;
    actclfornecedor.Visible  := Empresa.fornecedor.IQF.bo;
  end;
  if acttpcriterioiqf.enabled then
  begin
    acttpcriterioiqf.enabled := empresa.fornecedor.iqf.bo;
    acttpcriterioiqf.visible := empresa.fornecedor.iqf.bo;
  end;

  if actfornecedor.Enabled then
  begin
    actfornecedor.Enabled     := empresa.fornecedor.bo;
    actfornecedor.Visible     := empresa.fornecedor.bo;
  end;
  if acttpfornecedor.Enabled then
  begin
    acttpfornecedor.Enabled := empresa.fornecedor.bo;
    acttpfornecedor.Visible := empresa.fornecedor.bo;
  end;
  if actstfornecedor.Enabled then
  begin
    actstfornecedor.Visible := empresa.fornecedor.bo;
    actstfornecedor.Enabled := empresa.fornecedor.bo;
  end;
  if actpreselecaofornecedor.Enabled then
  begin
    actpreselecaofornecedor.Visible := empresa.fornecedor.bopreselecaco;
    actpreselecaofornecedor.Enabled := empresa.fornecedor.bopreselecaco;
  end;
  //
  if acttransportadora.Enabled then
  begin
    acttransportadora.Enabled                  := Empresa.transportadora.bo;
    acttransportadora.Visible                 := Empresa.transportadora.bo;
  end;
  if actsttransportadora.Enabled then
  begin
    actsttransportadora.Visible             := Empresa.transportadora.bo;
    actsttransportadora.Enabled             := Empresa.transportadora.bo;
  end;
  //
  if actadntcliente.Enabled then
  begin
    actadntcliente.Enabled := Empresa.financeiro.boadntcliente;
    actadntcliente.Visible := Empresa.financeiro.boadntcliente;
  end;
  //
  if actadntfornecedor.Enabled then
  begin
    actadntfornecedor.Enabled := empresa.financeiro.boadntfornecedor;
    actadntfornecedor.Visible := empresa.financeiro.boadntfornecedor;
  end;
  //
  if actsaida.Enabled then
  begin
    actsaida.Enabled                 := empresa.faturamento.saida.bo;
    actsaida.Visible                 := empresa.faturamento.saida.bo;
  end;
  if acttpsaida.Enabled then
  begin
    acttpsaida.Enabled             := empresa.faturamento.saida.bo;
    acttpsaida.Visible             := empresa.faturamento.saida.bo;
  end;
  if actconsultasaida.Enabled then
  begin
    actconsultasaida.Enabled := empresa.faturamento.saida.bo;
    actconsultasaida.Visible := empresa.faturamento.saida.bo;
  end;
  //
  if actentrada.Enabled         then
  begin
    actentrada.Enabled         := empresa.entrada.bo;
    actentrada.Visible         := empresa.entrada.bo;
  end;
  if acttpentrada.Enabled       then
  begin
    acttpentrada.Enabled       := empresa.entrada.bo;
    acttpentrada.Visible       := empresa.entrada.bo;
  end;
  if actconsultaentrada.Enabled then
  begin
    actconsultaentrada.Enabled := empresa.entrada.bo;
    actconsultaentrada.Visible := empresa.entrada.bo;
  end;
  //
  if actcaixafinanceiro.Enabled     then
  begin
    actcaixafinanceiro.Enabled     := Empresa.financeiro.caixafinanceiro.bo;
    actcaixafinanceiro.Visible     := Empresa.financeiro.caixafinanceiro.bo;
  end;
  if actcatextrato.Enabled          then
  begin
    actcatextrato.Enabled          := empresa.financeiro.caixafinanceiro.bo;
    actcatextrato.visible          := empresa.financeiro.caixafinanceiro.bo;
  end;
  if actMovimentacao.Enabled        then
  begin
    actMovimentacao.Enabled        := empresa.financeiro.caixafinanceiro.bo;
    actMovimentacao.Visible        := empresa.financeiro.caixafinanceiro.bo;
  end;
  if actconsultamovbancario.Enabled then
  begin
    actconsultamovbancario.Enabled := empresa.financeiro.caixafinanceiro.bo;
    actconsultamovbancario.Visible := empresa.financeiro.caixafinanceiro.bo;
  end;
  //
  if actconta.enabled then
  begin
    actconta.enabled   := empresa.financeiro.boconta;
    actconta.Visible   := empresa.financeiro.boconta;
  end;
  //
  if actstregcobranca.Enabled     then 
  begin
    actstregcobranca.Enabled     := empresa.financeiro.duplicata.bo;
    actstregcobranca.Visible     := empresa.financeiro.duplicata.bo;
  end;
  if actduplicata.enabled         then 
  begin
    actduplicata.enabled         := empresa.financeiro.duplicata.bo;
    actduplicata.Visible         := empresa.financeiro.duplicata.bo;
  end;
  if actconsultaduplicata.enabled then
  begin
    actconsultaduplicata.enabled := empresa.financeiro.duplicata.bo;
    actconsultaduplicata.visible := empresa.financeiro.duplicata.bo;
  end;
  if actmanagerduplicata.Enabled  then
  begin
    actmanagerduplicata.Enabled  := empresa.financeiro.duplicata.bo;
    actmanagerduplicata.Visible  := empresa.financeiro.duplicata.bo;
  end;
  //
  if actautpagto.enabled         then
  begin
    actautpagto.enabled         := empresa.financeiro.autpagto.bo;
    actautpagto.Visible         := empresa.financeiro.autpagto.bo;
  end;
  if actconsultaautpagto.enabled then
  begin
    actconsultaautpagto.enabled := empresa.financeiro.autpagto.bo;
    actconsultaautpagto.visible := empresa.financeiro.autpagto.bo;
  end;
  if actManagerAutPagto.Enabled  then
  begin
    actManagerAutPagto.Enabled  := empresa.financeiro.autpagto.bo;
    actmanagerautpagto.Visible  := empresa.financeiro.autpagto.bo;
  end;
  //
  if actmovto.Enabled          then
  begin
    actmovto.Enabled          := empresa.material.movto.bo;
    actmovto.Visible          := empresa.material.movto.bo;
  end;
  if acttpmovto.Enabled        then
  begin
    acttpmovto.Enabled        := empresa.material.movto.bo;
    acttpmovto.Visible        := empresa.material.movto.bo;
  end;
  if actbaixaestoque.Enabled   then
  begin
    actbaixaestoque.Enabled   := empresa.material.movto.bo;
    actbaixaestoque.Visible   := empresa.material.movto.bo;
  end;
  if actentradaestoque.Enabled then
  begin
    actentradaestoque.Enabled := empresa.material.movto.bo;
    actentradaestoque.Visible := empresa.material.movto.bo;
  end;
  if actconsultamovto.Enabled  then
  begin
    actconsultamovto.Enabled  := empresa.material.movto.bo;
    actconsultamovto.Visible  := empresa.material.movto.bo;
  end;
  //
  if mniproduto.Visible = ivAlways then
  begin
    if empresa.material.produto.bo then
    begin
      mniproduto.Visible := ivAlways
    end
    else
    begin
      mniproduto.Visible := ivNever;
    end;
  end;
  if acttpgradevalor.Enabled then
  begin
    acttpgradevalor.Visible    := empresa.material.produto.bo;
    acttpgradevalor.Enabled    := empresa.material.produto.bo;
  end;
  if actproduto.Enabled      then
  begin
    actproduto.Enabled         := empresa.material.produto.bo;
    actproduto.Visible         := empresa.material.produto.bo;
  end;
  if acttpproduto.Enabled then
  begin
    acttpproduto.Enabled       := empresa.material.produto.bo;
    acttpproduto.Visible       := empresa.material.produto.bo;
  end;
  if actconsultaproduto.Enabled then
  begin
    actconsultaproduto.Enabled := empresa.material.produto.bo;
    actconsultaproduto.Visible := empresa.material.produto.bo;
  end;
  if actManagerproduto.Enabled then
  begin
    actManagerproduto.Enabled    := empresa.material.produto.bo;
    actmanagerproduto.Visible    := empresa.material.produto.bo;
  end;
  if actunidade.Enabled then
  begin
    actunidade.Enabled         := empresa.material.produto.bo;
    actunidade.Visible         := empresa.material.produto.bo;
  end;
  //
  if actmanagercntcusto.Enabled then
  begin
    actmanagercntcusto.Enabled := empresa.financeiro.bocntcusto;
    actmanagercntcusto.Visible := empresa.financeiro.bocntcusto;
  end;
  //
  if actcondpagto.Enabled then
  begin
    actcondpagto.Enabled   := empresa.financeiro.bocondpagto;
    actcondpagto.Visible   := empresa.financeiro.bocondpagto;
  end;
  //
  if actuf.Enabled then
  begin
    actuf.Enabled := Empresa.bouf;
    actuf.Visible := Empresa.bouf;
  end;
  if actrim.Enabled then
  begin
    actrim.Enabled   := Empresa.aquisicao.borim;
    actrim.Visible   := Empresa.aquisicao.borim;
  end;
  if acttprim.enabled then
  begin
    acttprim.enabled := Empresa.aquisicao.borim;
    acttprim.visible := Empresa.aquisicao.borim;
  end;
  //
  actsolicitacaocompra.Enabled   := false;
  actsolicitacaocompra.Visible   := false;
  actstsolicitacaocompra.Enabled := false;
  actstsolicitacaocompra.Visible := false;
  acttpsolicitacaocompra.Enabled := false;
  acttpsolicitacaocompra.Visible := false;
  if actpedidomaterial.Enabled      then
  begin
    actpedidomaterial.Enabled      := Empresa.aquisicao.pedidomaterial.bo;
    actpedidomaterial.visible      := Empresa.aquisicao.pedidomaterial.bo;
  end;
  if actfinalidadeordcompra.Enabled then
  begin
    actfinalidadeordcompra.Enabled := empresa.aquisicao.pedidomaterial.bo;
    actfinalidadeordcompra.Visible := empresa.aquisicao.pedidomaterial.bo;
  end;
  if acttpaprovacaocotacao.Enabled  then
  begin
    acttpaprovacaocotacao.Enabled  := Empresa.aquisicao.pedidomaterial.bo;
    acttpaprovacaocotacao.visible  := Empresa.aquisicao.pedidomaterial.bo;
  end;

  if actclpedidoMaterial.Enabled    then
  begin
    actclpedidoMaterial.Enabled    := Empresa.aquisicao.pedidomaterial.bo;
    actclpedidoMaterial.Visible    := Empresa.aquisicao.pedidomaterial.bo;
  end;
  if acttppedidomaterial.Enabled    then
  begin
    acttppedidomaterial.Enabled    := Empresa.aquisicao.pedidomaterial.bo;
    acttppedidomaterial.Visible    := Empresa.aquisicao.pedidomaterial.bo;
  end;
  //
  if actOrdCompra.Enabled then
  begin
    actOrdCompra.Enabled   := Empresa.aquisicao.ordcompra.bo;
    actordcompra.Visible   := Empresa.aquisicao.ordcompra.bo;
  end;
  //
  if mniclassificacao.Visible = ivAlways then
  begin
    if actclfornecedor.visible or actclpedidomaterial.visible then
    begin
      mniclassificacao.Visible := ivAlways
    end
    else
    begin
      mniclassificacao.Visible := ivNever;
    end;
  end;
  if mnitributacao.Visible = ivAlways then
  begin
    if actentrada.Visible or actsaida.Visible then
    begin
      mnitributacao.Visible := ivAlways
    end
    else
    begin
      mnitributacao.Visible := ivNever;
    end;
  end;
  if acttpaplicacao.Enabled then
  begin
    acttpaplicacao.Enabled             := actOrdCompra.Enabled or actpedidomaterial.Enabled or actrim.Enabled;
    acttpaplicacao.Visible             := actOrdCompra.Enabled or actpedidomaterial.Enabled or actrim.Enabled;
  end;
  acttpcombustivel.Enabled           := actveiculo.Enabled;
  acttpcombustivel.Visible           := actveiculo.Visible;
  acttpcomissao.Enabled              := actRepresentante.Enabled;
  acttpcomissao.Visible              := actRepresentante.Visible;
  acttpcomissaoproduto.Enabled       := actRepresentante.Enabled;
  acttpcomissaoproduto.Visible       := actRepresentante.Visible;
  acttpcomissaorepresentante.Enabled := actRepresentante.Enabled;
  acttpcomissaorepresentante.Visible := actRepresentante.Visible;
  acttpcriterioorcamento.Enabled     := actorcamento.Enabled;
  acttpcriterioorcamento.Visible     := actorcamento.Visible;
  acttpdeclinarorcamento.Visible     := actorcamento.Visible;
  acttpdeclinarorcamento.Enabled     := actorcamento.Enabled;
  actlinkextrato.Enabled             := actcaixafinanceiro.Enabled;
  actlinkextrato.Visible             := actcaixafinanceiro.Visible;
  if actmodelo.Enabled then
  begin
    actmodelo.Enabled                  := actequipamento.Enabled or actveiculo.Enabled or actordserv.Enabled or empresa.livro.bopdv;
    actmodelo.visible                  := actequipamento.visible or actveiculo.visible or actordserv.visible or empresa.livro.bopdv;
  end;
  if actmarca.Enabled then
  begin
    actmarca.Enabled                   := actequipamento.Enabled or actveiculo.Enabled or actordserv.Enabled;
    actmarca.visible                   := actequipamento.visible or actveiculo.visible or actordserv.visible;
  end;
end;

function Tfrmmain.NovaDevolucao(qdo, qdoDetail:TClientDataSet; tipo, cdtptipo, cdcfop, nutipo : string):boolean;
begin
  result := false;
  Exit;
  if tipo = _saida then
  begin
    result := frmsaida.Novo(cdtptipo, cdcfop, nutipo)
  end
  else if tipo = _entrada then
  begin
    if main.processarabertura(_frm+_entrada) then
    begin
      exit;
    end;
    if not TQForm.ExisteFormulario(_frm+_entrada) then
    begin
      frmentrada := TFrmentrada.Create(frmMain);
    end;
    set_merge(frmentrada.bmg1);
    main.configform(frmentrada, tlbnew);
    if not result then
    begin
      main.configform(frmsaida, tlbnew);
    end;
  end;
end;

procedure Tfrmmain.actgradeExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_grade) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_grade) then
  begin
    frmgrade := TFrmgrade.Create(frmMain);
  end;
  set_merge(frmgrade.bmg1);
  main.configform(frmgrade, tlbnew, frmgrade.registro);
end;

procedure Tfrmmain.actConsultaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_consulta) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_consulta) then
  begin
    frmconsulta := TFrmconsulta.Create(frmMain);
  end;
  set_merge(frmconsulta.bmg1);
  main.configform(frmconsulta, tlbnew);
end;

procedure Tfrmmain.acttpanotacaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpanotacao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpanotacao) then
  begin
    frmtpanotacao := Tfrmtpanotacao.Create(frmMain);
  end;
  set_merge(frmtpanotacao.bmg1);
  main.configform(frmtpanotacao, tlbnew, frmtpanotacao.registro);
end;

procedure Tfrmmain.actLocacaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_locacao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_locacao) then
  begin
    frmlocacao := TFrmlocacao.Create(frmMain);
  end;
  set_merge(frmlocacao.bmg1);
  main.configform(frmlocacao, tlbnew);
end;

procedure Tfrmmain.acttplocacaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tplocacao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tplocacao) then
  begin
    frmtplocacao := TFrmtplocacao.Create(frmMain);
  end;
  set_merge(frmtplocacao.bmg1);
  main.configform(frmtplocacao, tlbnew, frmtplocacao.registro);
end;

procedure Tfrmmain.FormDestroy(Sender: TObject);
begin
  //if tic.Active then
  //begin
    //tic.active := false;
  //end;
  FreeAndNil(main);
end;

procedure Tfrmmain.CreateSkinsMenuItems;
begin
  cbx.Text := usuario.dsskin;
end;

procedure Tfrmmain.cbxPropertiesChange(Sender: TObject);
begin
       if cbx.Text = 'Office11'  then begin laf.Kind := lfOffice11;  stb.PaintStyle := stpsOffice11; end
  else if cbx.Text = 'Ultraflat' then begin LAF.Kind := lfUltraFlat; stb.PaintStyle := stpsXP;       end
  else if cbx.Text = 'Standard'  then begin LAF.Kind := lfStandard;  stb.PaintStyle := stpsStandard; end
  else if cbx.Text = 'Flat'      then begin LAF.Kind := lfFlat;      stb.PaintStyle := stpsFlat;     end;
  if usuario.dsskin <> cbx.Text then
  begin
    ExecutaSQL('update usuario set dsskin='+quotedstr(cbx.text)+' where cdusuario='+inttostr(usuario.cdusuario));
    usuario.dsskin := cbx.text;
  end;
end;

procedure Tfrmmain.set_equipamento;
begin
  if actstequipamento.Enabled then actstequipamento.Enabled := empresa.equipamento.bo;
  if actstequipamento.Visible then actstequipamento.Visible := empresa.equipamento.bo;
  if acttpequipamento.Enabled then acttpequipamento.Enabled := empresa.equipamento.bo;
  if acttpequipamento.Visible then acttpequipamento.Visible := empresa.equipamento.bo;
  if acttpequipamento2.Enabled then acttpequipamento2.Enabled := empresa.equipamento.bo;
  if acttpequipamento2.Visible then acttpequipamento2.Visible := empresa.equipamento.bo;
end;

procedure Tfrmmain.set_intervencao;
begin
  //if actintervencao.Enabled then actintervencao.Enabled := empresa.ordserv.bointervencao;
  //if actintervencao.Visible then actintervencao.Visible := empresa.ordserv.bointervencao;
end;

procedure Tfrmmain.set_login;
begin
  stb.panels[1].Text := 'Usuário: '+usuario.usulogin;
  stb.panels[2].text := 'Micro: '+qp_nmcomputador;
  ConfigurarPermissoes(self);
  setform;
  //tic.Active := usuario.botrayicon = _s;
  if not empresa.cliente.botpcliente then
  begin
    acttpcliente.Visible := false;
  end;
  if not empresa.cliente.bomensalidade then
  begin
    acttpclientemensalidade.Visible := false;
  end;
  actLogin.Enabled := false;
  actlogin.Visible := false;
end;

procedure Tfrmmain.set_logomarca;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('SELECT LOGOMARCA FROM EMPRESA WHERE CDEMPRESA='+empresa.cdempresa.tostring);
    img.Properties.GraphicClassName := 'TdxSmartImage';
    img.EditValue := q.q.FieldByName(_logomarca).Value;
  finally
    q.Free;
  end;
end;

procedure Tfrmmain.set_merge(bmgf: Tdxbarmanager);
begin
  if bmg1 <> nil then
  begin
    bmg.Unmerge(bmg1);
  end;
  if bmgf <> nil then
  begin
    bmg1 := bmgf;
    bmg.Merge(bmg1, false);
  end;
end;

procedure Tfrmmain.set_rota;
begin
  if actrota.Enabled   then actrota.Enabled   := empresa.logistica.borota;
  if actrota.Visible   then actrota.Visible   := empresa.logistica.borota;
  if acttprota.Enabled then acttprota.Enabled := empresa.logistica.borota;
  if acttprota.Visible then acttprota.Visible := empresa.logistica.borota;
end;

procedure Tfrmmain.actreportExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_report) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_report) then
  begin
    frmreport := TFrmreport.Create(frmMain);
  end;
  set_merge(frmreport.bmg1);
  main.configform(frmreport, tlbnew, frmreport.registro);
end;

procedure Tfrmmain.actcorridaquimicaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_corridaquimica) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_corridaquimica) then
  begin
    frmcorridaquimica := tfrmcorridaquimica.Create(frmMain);
  end;
  set_merge(frmcorridaquimica.bmg1);
  main.configform(frmcorridaquimica, tlbnew, frmcorridaquimica.registro);
end;

procedure Tfrmmain.actcaixafinanceiroExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_caixa+_financeiro) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_caixa+_financeiro) then
  begin
    frmcaixafinanceiro := Tfrmcaixafinanceiro.Create(frmMain);
  end;
  set_merge(frmcaixafinanceiro.bmg1);
  main.configform(frmcaixafinanceiro, tlbnew, frmcaixafinanceiro.registro);
end;
                                                                                                    
procedure Tfrmmain.actbancodadosExecute(Sender: TObject);
begin
  //IB_UtilityBar1.Visible := not IB_UtilityBar1.Visible;
end;

procedure Tfrmmain.actcteExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_cte) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_cte) then
  begin
    frmcte := TFrmcte.Create(frmMain);
  end;
  set_merge(frmcte.bmg1);
  main.configform(frmcte, tlbnew, frmcte.registro);
end;

procedure Tfrmmain.acttpordcompraExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpordcompra) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpordcompra) then
  begin
    frmtpordcompra := TFrmtpordcompra.Create(frmMain);
  end;
  set_merge(frmtpordcompra.bmg1);
  main.configform(frmtpordcompra, tlbnew, frmtpordcompra.registro);
end;

procedure Tfrmmain.acttppedidomaterialExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tppedidomaterial) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tppedidomaterial) then
  begin
    frmtppedidomaterial := TFrmtppedidomaterial.Create(frmMain);
  end;
  set_merge(frmtppedidomaterial.bmg1);
  main.configform(frmtppedidomaterial, tlbnew, frmtppedidomaterial.registro);
end;

procedure Tfrmmain.acttprimExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tp+_rim) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tp+_rim) then
  begin
    frmtprim := TFrmtprim.Create(frmMain);
  end;
  set_merge(frmtprim.bmg1);
  main.configform(frmtprim, tlbnew, frmtprim.registro);
end;

procedure Tfrmmain.set_traducao;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'\'+_Traducao+_pt+'.'+_ini) then // VERIFICA SE EXISTE O ARQUIVO DENTRO DA PASTA
  begin
    cxLocalizer1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\'+_Traducao+_pt+'.'+_ini);
    cxLocalizer1.LanguageIndex := 1; // MUDA DE LINGUAGEM
    cxLocalizer1.Active := TRUE;     // ATIVA O COMPONENTE
  end;
end;

procedure Tfrmmain.set_transporte;
begin
  if acttransporte.Enabled   then acttransporte.Enabled    := empresa.logistica.transporte.bo;
  if acttransporte.Visible   then acttransporte.Visible    := empresa.logistica.transporte.bo;
  if actsttransporte.Enabled then actsttransporte.Enabled  := empresa.logistica.transporte.bo;
  if actsttransporte.Visible then actsttransporte.Visible  := empresa.logistica.transporte.bo;
end;

procedure Tfrmmain.set_veiculo;
begin
  if actveiculo.enabled     then actveiculo.enabled     := Empresa.boveiculo;
  if actveiculo.Visible     then actveiculo.Visible     := Empresa.boveiculo;
  if acttpveiculo.Enabled   then acttpveiculo.Enabled   := Empresa.boveiculo;
  if acttpveiculo.Visible   then acttpveiculo.Visible   := Empresa.boveiculo;
  if acttpveicmanut.Enabled then acttpveicmanut.Enabled := Empresa.boveiculo;
  if acttpveicmanut.Visible then acttpveicmanut.Visible := Empresa.boveiculo;
end;

procedure Tfrmmain.actsuporteremotoExecute(Sender: TObject);
begin
  if (ShellExecute(Handle, nil, PChar(ExtractFilePath(Application.ExeName)+'\ShowMyPC3160.exe'), nil, nil, SW_SHOWNORMAL) = ERROR_FILE_NOT_FOUND) and
     (MessageDlg('Arquivo não existe no seu computador.'#13'Baixar o arquivo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    ShellExecute(Handle, _open, 'http://download3.showmypc.com/ShowMyPC3160.exe', Nil, Nil, SW_SHOWDEFAULT);
  end;
end;

procedure Tfrmmain.actsuporteremototExecute(Sender: TObject);
begin
  if (ShellExecute(Handle, nil, PChar(ExtractFilePath(Application.ExeName)+'\TeamViewerQS_pt.exe'), nil, nil, SW_SHOWNORMAL) = ERROR_FILE_NOT_FOUND) and
     (ShellExecute(Handle, nil, PChar(ExtractFilePath(Application.ExeName)+'\TeamViewerQS.exe'), nil, nil, SW_SHOWNORMAL) = ERROR_FILE_NOT_FOUND) and
     (MessageDlg('Arquivo não existe no seu computador.'#13'Baixar o arquivo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    ShellExecute(Handle, _open, 'http://www.teamviewer.com/download/version_7x/TeamViewerQS.exe', Nil, Nil, SW_SHOWDEFAULT);
  end;
end;

procedure Tfrmmain.actCFOPExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_cfop) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_cfop) then
  begin
    frmcfop := TFrmcfop.Create(frmMain);
  end;
  set_merge(frmcfop.bmg1);
  main.configform(frmcfop, tlbnew, frmcfop.registro);
end;

procedure Tfrmmain.actorcamentoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_orcamento) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_orcamento) then
  begin
    frmorcamento := TFrmorcamento.Create(frmMain);
  end;
  set_merge(frmorcamento.bmg1);
  main.configform(frmorcamento, tlbnew, frmorcamento.registro);
end;

procedure Tfrmmain.actufExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_uf) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_uf) then
  begin
    frmUF := TFrmUF.Create(frmMain);
  end;
  set_merge(frmUF.bmg1);
  main.configform(frmUF, tlbnew, frmUF.registro);
end;

procedure Tfrmmain.acttporcamentoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tporcamento) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tporcamento) then
  begin
    frmtporcamento := TFrmtporcamento.Create(frmMain);
  end;
  set_merge(frmtporcamento.bmg1);
  main.configform(frmtporcamento, tlbnew, frmtporcamento.registro);
end;

procedure Tfrmmain.actTpPedidoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tppedido) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tppedido) then
  begin
    frmtppedido := TFrmtppedido.Create(frmMain);
  end;
  set_merge(frmtppedido.bmg1);
  main.configform(frmtppedido, tlbnew, frmtppedido.registro);
end;

procedure Tfrmmain.acttpfaturamentoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tp+_faturamento) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpfaturamento) then
  begin
    frmtpfaturamento := TFrmtpfaturamento.Create(frmMain);
  end;
  set_merge(frmtpfaturamento.bmg1);
  main.configform(frmtpfaturamento, tlbnew, frmtpfaturamento.registro);
end;

procedure Tfrmmain.acttpequipamentoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpequipamento) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpequipamento) then
  begin
    frmtpequipamento := TFrmtpequipamento.Create(frmMain);
  end;
  set_merge(frmtpequipamento.bmg1);
  main.configform(frmtpequipamento, tlbnew, frmtpequipamento.registro);
end;

procedure Tfrmmain.NovaCompra(nuentrada: string; cdordcompra: Integer; cditordcompra, cdtpentrada, cdcfop, nudocfiscalicms, nuchave, nuserie: string; dtemissao: TDate);
begin
  actentradaExecute(nil);
  frmentrada.Novo(nuentrada, cdordcompra, cditordcompra, cdtpentrada, cdcfop, nudocfiscalicms, nuchave, nuserie, dtemissao);
end;

procedure Tfrmmain.actdownloadExecute(Sender: TObject);
begin
  dlg_atualizaco_quipos;
  //ShellExecute(Handle, _open, _path_download_atualizacao, Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actordproducaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_ordproducao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_ordproducao) then
  begin
    frmordproducao := TFrmordproducao.Create(frmMain);
  end;
  set_merge(frmordproducao.bmg1);
  main.configform(frmordproducao, tlbnew, frmordproducao.registro);
end;

procedure Tfrmmain.actnfefazendagovbrExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://www.nfe.fazenda.gov.br', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actconsultardisponibilidadenfeExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://www.nfe.fazenda.gov.br/portal/disponibilidade.aspx?versao=2.00&tipoConteudo=Skeuqr8PQBY=', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actecacExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'https://cav.receita.fazenda.gov.br/eCAC/publico/login.aspx', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actconsultainutilizacaomgExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://nfe.fazenda.mg.gov.br/consulta/ConsultarInutilizacao.do?act=executar', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actconsultanfemgExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://nfe.fazenda.mg.gov.br/consulta/Welcome.do', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actstatusservicomgExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'https://nfe.fazenda.mg.gov.br/nfe2/services/NfeStatus2', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actvalidadorsintegra2014Execute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'https://www.sefaz.rs.gov.br/ASP/Download/SAT/Sintegra/InstalaValidadorSintegra2015.5.3.0.exe', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actstatusservicocteExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'https://cte.fazenda.mg.gov.br/cte/services/CteStatusServico', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actativopiscofinsExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_ativo+_pis+_cofins) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_ativo+_pis+_cofins) then
  begin
    frmativopiscofins := Tfrmativopiscofins.Create(frmMain);
  end;
  set_merge(frmativopiscofins.bmg1);
  main.configform(frmativopiscofins, tlbnew, frmativopiscofins.registro);
end;

procedure Tfrmmain.Abrircte(cdcte: integer);
begin
  if not (lowercase(main.formatual) = _frm+_cte) then
  begin
    actcteExecute(nil);
  end;
  frmcte.Abrir(cdcte);
end;

procedure Tfrmmain.Abrirnegociacao(cdnegociacao: integer);
begin
  if not (lowercase(main.formatual) = _frm+_negociacao) then
  begin
    actnegociacaoExecute(nil);
  end;
  frmnegociacao.Abrir(cdnegociacao);
end;

procedure Tfrmmain.actrotaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_rota) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_rota) then
  begin
    frmrota := TFrmrota.Create(frmMain);
  end;
  set_merge(frmrota.bmg1);
  main.configform(frmrota, tlbnew, frmrota.registro);
end;

procedure Tfrmmain.ActmanagertarefaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_manager+_tarefa) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_manager+_tarefa) then
  begin
    frmmanagertarefa := Tfrmmanagertarefa.Create(frmMain);
  end;
  main.configform(frmmanagertarefa, tlbnew);
end;

procedure Tfrmmain.acttpcontratoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpcontrato) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpcontrato) then
  begin
    frmtpcontrato := TFrmtpcontrato.Create(frmMain);
  end;
  set_merge(frmtpcontrato.bmg1);
  main.configform(frmtpcontrato, tlbnew, frmtpcontrato.registro);
end;

procedure Tfrmmain.actmanagercntcustoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_manager+_cntcusto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_manager+_cntcusto) then
  begin
    frmmanagercntcusto := TFrmmanager.Create(frmMain);
  end;
  set_merge(frmmanagercntcusto.bmg1);
  frmmanagercntcusto.tbl  := _cntcusto;
  main.configform(frmmanagercntcusto, tlbnew);
end;

procedure Tfrmmain.actManagerprodutoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_manager+_produto) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_manager+_produto) then
  begin
    frmmanagerproduto := TFrmmanagerproduto.Create(frmMain);
  end;
  set_merge(frmmanagerproduto.bmg1);
  main.configform(frmmanagerproduto, tlbnew);
end;

procedure Tfrmmain.actmanagerplcontaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_manager+_plconta) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_manager+_plconta) then
  begin
    frmmanagerplconta := TFrmmanager.Create(frmMain);
  end;
  set_merge(frmmanagerplconta.bmg1);
  frmmanagerplconta.tbl  := _plconta;
  main.configform(frmmanagerplconta, tlbnew);
end;

procedure Tfrmmain.actTurnoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_turno) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_turno) then
  begin
    frmturno := TFrmturno.Create(frmMain);
  end;
  set_merge(frmturno.bmg1);
  main.configform(frmturno, tlbnew, frmturno.registro);
end;

procedure Tfrmmain.actnegociacaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_negociacao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_negociacao) then
  begin
    frmnegociacao := TFrmnegociacao.Create(frmMain);
  end;
  set_merge(frmnegociacao.bmg1);
  main.configform(frmnegociacao, tlbnew, frmnegociacao.registro);
end;

procedure Tfrmmain.actmanagerordproducaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_manager+_ordproducao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_manager+_ordproducao) then
  begin
    frmmanagerordproducao := Tfrmmanagerordproducao.Create(frmMain);
  end;
  main.configform(frmmanagerordproducao, tlbnew);
end;

procedure Tfrmmain.actregrastExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_regrast+_1) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_regrast+_1) then
  begin
    frmregrast := TFrmregrast.Create(frmMain);
  end;
  set_merge(frmregrast.bmg1);
  main.configform(frmregrast, tlbnew);
end;

procedure Tfrmmain.actctefazendagovExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://www.cte.fazenda.gov.br', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actsintegragovbrExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://www.sintegra.gov.br', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actconsultadisponibilidadecteExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://www.cte.fazenda.gov.br/disponibilidade.aspx?versao=1.00&tipoConteudo=XbSeqxE8pl8=', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.act1Execute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmmain.actabrirTabela(Sender: TObject);
var
  nmtbl : string;
begin
  nmtbl := taction(sender).Name;
  nmtbl := copy(nmtbl, 4, length(nmtbl) - 3);
  utabela.AbrirTabela(pnl, nmtbl);
end;

procedure Tfrmmain.actsuporteExecute(Sender: TObject);
begin
//
end;

procedure Tfrmmain.actconsultactemgExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://cte.fazenda.mg.gov.br/consulta/pages/consultaCte/consulta.cte', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actconsultainutilizacaomgcteExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://cte.fazenda.mg.gov.br/consulta/pages/inutilizacao/inutilizacao.cte', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.acttpordproducaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpordproducao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpordproducao) then
  begin
    frmtpordproducao := TFrmtpordproducao.Create(frmMain);
  end;
  set_merge(frmtpordproducao.bmg1);
  main.configform(frmtpordproducao, tlbnew, frmtpordproducao.registro);
end;

procedure Tfrmmain.actagendaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_agenda) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_agenda) then
  begin
    frmagenda := TFrmagenda.Create(frmMain);
  end;
  set_merge(frmagenda.bmg1);
  main.configform(frmagenda, tlbnew, frmagenda.registro);
end;

procedure Tfrmmain.actapontamentoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_apontamento) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_apontamento) then
  begin
    frmapontamento := Tfrmapontamento.Create(frmMain);
  end;
  set_merge(frmapontamento.bmg);
  main.configform(frmapontamento, tlbnew);
end;

procedure Tfrmmain.actspedfiscalExecute(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://www.receita.fazenda.gov.br/publico/programas/Sped/SpedFiscal/PVA_EFD_w32-2.3.0.exe', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actspedpiscofinsExecute(Sender: TObject);
begin                          
  ShellExecute(Handle, _open, 'http://www.receita.fazenda.gov.br/publico/programas/SpedPisCofinsPVA/spedcontribuicoes_w32-2.0.12.exe', Nil, Nil, SW_SHOWDEFAULT);
end;

procedure Tfrmmain.actreportuserExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_report+_user) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_report+_user) then
  begin
    frmreportuser := TFrmreportuser.Create(frmMain);
  end;
  set_merge(frmreportuser.bmg1);
  main.configform(frmreportuser, tlbnew, frmreportuser.registro);
end;

procedure Tfrmmain.actformulacaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_formulacao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_formulacao) then
  begin
    frmformulacao := TFrmformulacao.Create(frmMain);
  end;
  set_merge(frmformulacao.bmg1);
  main.configform(frmformulacao, tlbnew, frmformulacao.registro);
end;

procedure Tfrmmain.actmdfeExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_mdfe) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_mdfe) then
  begin
    frmmdfe := Tfrmmdfe.Create(frmMain);
  end;
  set_merge(frmmdfe.bmg1);
  main.configform(frmmdfe, tlbnew, frmmdfe.registro);
end;

procedure Tfrmmain.actmetrologiaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_metrologia) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_metrologia) then
  begin
    frmmetrologia := TFrmmetrologia.Create(frmMain);
  end;
  set_merge(frmmetrologia.bmg1);
  main.configform(frmmetrologia, tlbnew);
end;

procedure Tfrmmain.edtcmdKeyPress(Sender: TObject; var Key: Char);
var
  palavra : TStrings;
  nmform: string;
  codigo : integer;
  procedure set_palavra(texto:string);
  var
    i, i1 : Integer;
  begin
    i1 := 1;
    for i := 1 to Length(texto) do
    begin
      if texto[i] = ' ' then
      begin
        palavra.Add(Copy(texto, i1, i -i1));
        i1 := i + 1;
      end;
    end;
    palavra.Add(Copy(texto, i1, Length(texto)));
    nmform := palavra[0];
    if palavra.Count = 2 then
    begin
      codigo := strtoint(palavra[1]);
    end;
  end;
begin
  if key <> #13 then
  begin
    Exit;
  end;
  palavra := TStringList.Create;
  try
    set_palavra(LowerCase(RetiraAcentos(edtcmd.Text)));
    if codigo = 0 then
    begin
           if (nmform = 'tipo nota fiscal') and acttpsaida.Enabled         then acttpsaidaExecute(acttpsaida)
      else if (nmform = 'contrato')         and actcontrato.Enabled        then actcontratoExecute(actcontrato)
      else if (nmform = 'faturamento')      and actfaturamento.Enabled     then actfaturamentoExecute(actfaturamento)
      else if (nmform = 'cliente')          and actcliente.Enabled         then actclienteExecute(actcliente)
      else if (nmform = 'fornecedor')       and actfornecedor.enabled      then actfornecedorExecute(actfornecedor)
      else if (nmform = 'pedido')           and actpedido.Enabled          then actpedidoExecute(actpedido)
      else if (nmform = 'transportadora')   and acttransportadora.Enabled  then acttransportadoraExecute(acttransportadora)
      else if (nmform = 'compra')           and actentrada.Enabled         then actentradaExecute(actentrada)
      else if (nmform = 'orcamento')        and actorcamento.Enabled       then actorcamentoExecute(actorcamento)
      else if (nmform = 'tipo pedido')      and acttppedido.Enabled        then acttppedidoExecute(acttppedido)
      else if (nmform = 'nota fiscal')      and actsaida.Enabled           then actsaidaExecute(actsaida)
      else if (nmform = 'contas a receber') and actduplicata.Enabled       then actduplicataExecute(actduplicata)
      else if (nmform = 'contas a pagar')   and actautpagto.Enabled        then actautpagtoExecute(actautpagto)
      else if (nmform = 'caixa financeiro') and actcaixafinanceiro.Enabled then actcaixafinanceiroExecute(actcaixafinanceiro)
      else if (nmform = 'conta')            and actconta.Enabled           then actcontaExecute(actconta);
    end
    else
    begin
           if (nmform = 'tipo nota fiscal') and acttpsaida.Enabled         then AbrirTpsaida(codigo)
      else if (nmform = 'contrato')         and actcontrato.Enabled        then Abrircontrato(codigo)
      //else if (nmform = 'faturamento')      and actfaturamento.Enabled     then abrirfaturamento(codigo)
      else if (nmform = 'cliente')          and actcliente.Enabled         then AbrirCliente(codigo)
      else if (nmform = 'fornecedor')       and actfornecedor.enabled      then AbrirFornecedor(codigo)
      else if (nmform = 'pedido')           and actpedido.Enabled          then AbrirPedido(codigo)
      else if (nmform = 'transportadora')   and acttransportadora.Enabled  then AbrirTransportadora(codigo)
      else if (nmform = 'compra')           and actentrada.Enabled         then AbrirEntrada(codigo)
      else if (nmform = 'orcamento')        and actorcamento.Enabled       then Abrirorcamento(codigo)
      else if (nmform = 'nota fiscal')      and actsaida.Enabled           then AbrirSaida(codigo)
      else if (nmform = 'contas a receber') and actduplicata.Enabled       then AbrirDuplicata(codigo)
      else if (nmform = 'contas a pagar')   and actautpagto.Enabled        then AbrirAutPagto(codigo)
      //else if (nmform = 'caixa financeiro') and actcaixafinanceiro.Enabled then actcaixafinanceiroExecute(actcaixafinanceiro)
      else if (nmform = 'conta')            and actconta.Enabled           then AbrirConta(codigo);
    end;
    edtcmd.Clear;
  finally
    palavra.Free;
  end;
end;

procedure Tfrmmain.actrequisicaoproducaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_requisicaoproducao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_requisicaoproducao) then
  begin
    frmrequisicaoproducao := tfrmrequisicaoproducao.Create(frmMain);
  end;
  set_merge(frmrequisicaoproducao.bmg1);
  main.configform(frmrequisicaoproducao, tlbnew, frmrequisicaoproducao.registro);
end;

procedure Tfrmmain.actsetcomandoExecute(Sender: TObject);
begin
  edtcmd.SetFocus;
end;

procedure TFrmMain.Set_Paciente;
begin
  if actpaciente.Enabled   then actpaciente.Enabled   := Empresa.paciente.bo;
  if actpaciente.Visible   then actpaciente.Visible   := Empresa.paciente.bo;
  if actstpaciente.Enabled then actstpaciente.Enabled := Empresa.paciente.bo;
  if actstpaciente.Visible then actstpaciente.Visible := Empresa.paciente.bo;
  if actprofissao.Enabled  then actprofissao.Enabled  := Empresa.paciente.bo;
  if actprofissao.Visible  then actprofissao.Visible  := Empresa.paciente.bo;
  if actrisco.enabled      then actrisco.Enabled      := empresa.paciente.bo;
  if actrisco.visible      then actrisco.visible      := empresa.paciente.bo;
  if acttprisco.enabled    then acttprisco.Enabled    := empresa.paciente.bo;
  if acttprisco.visible    then acttprisco.visible    := empresa.paciente.bo;
end;

procedure TFrmMain.Set_profissional;
begin
  if actprofissional.Enabled  then actprofissional.Enabled  := Empresa.profissional.bo;
  if actprofissional.Visible  then actprofissional.Visible  := Empresa.profissional.bo;
  if actespecialidade.Enabled then actespecialidade.Enabled := Empresa.profissional.bo;
  if actespecialidade.Visible then actespecialidade.Visible := Empresa.profissional.bo;
end;

procedure Tfrmmain.set_funcionario;
begin
  if acttptreinamento.Enabled then
  begin
    acttptreinamento.Enabled := empresa.funcionario.botreinamento;
  end;
  if acttptreinamento.Visible then
  begin
    acttptreinamento.Visible := empresa.funcionario.botreinamento;
  end;
  if acttreinamento.Enabled then
  begin
    acttreinamento.Enabled := empresa.funcionario.botreinamento;
  end;
  if acttreinamento.Visible then
  begin
    acttreinamento.Visible := empresa.funcionario.botreinamento;
  end;
  if actrhocorrencia.Enabled    then
  begin
    actrhocorrencia.Enabled    := Empresa.funcionario.bopontotrabalho;
  end;
  if actrhocorrencia.Visible    then
  begin
    actrhocorrencia.Visible    := empresa.funcionario.bopontotrabalho;
  end;
  if acttprhocorrencia.Enabled  then
  begin
    acttprhocorrencia.Enabled  := Empresa.funcionario.bopontotrabalho;
  end;
  if acttprhocorrencia.Visible  then
  begin
    acttprhocorrencia.Visible  := empresa.funcionario.bopontotrabalho;
  end;
  if acttpconvenio.Enabled      then acttpconvenio.Enabled      := Empresa.funcionario.bopontotrabalho;
  if acttpconvenio.Visible      then acttpconvenio.Visible      := empresa.funcionario.bopontotrabalho;
  if actdespesaconvenio.Enabled then
  begin
    actdespesaconvenio.Enabled := empresa.funcionario.bodespesaconvenio;
  end;
  if actdespesaconvenio.Visible then
  begin
    actdespesaconvenio.Visible := empresa.funcionario.bodespesaconvenio;
  end;
  if actpontotrabalho.Enabled   then actpontotrabalho.Enabled   := Empresa.funcionario.bopontotrabalho;
  if actpontotrabalho.Visible   then actpontotrabalho.Visible   := empresa.funcionario.bopontotrabalho;
  if actferiadolocal.Enabled    then actferiadolocal.Enabled    := empresa.funcionario.bopontotrabalho;
  if actferiadolocal.Visible    then actferiadolocal.Visible    := empresa.funcionario.bopontotrabalho;
  if actturno.Enabled           then actturno.Enabled           := Empresa.funcionario.bo;
  if actturno.Visible           then actturno.Visible           := Empresa.funcionario.bo;
  if actfuncionario.Enabled     then actfuncionario.Enabled     := Empresa.funcionario.bo;
  if actfuncionario.Visible     then actfuncionario.Visible     := Empresa.funcionario.bo;
  if actfuncao.Enabled          then actfuncao.Enabled          := Empresa.funcionario.bo;
  if actfuncao.Visible          then actfuncao.Visible          := Empresa.funcionario.bo;
  if acttpexameperiodico.visible then acttpexameperiodico.visible := Empresa.funcionario.bo;
  if acttpbancohoras.Enabled    then acttpbancohoras.Enabled    := empresa.funcionario.bopontotrabalho;
  if acttpbancohoras.Visible    then acttpbancohoras.Visible    := empresa.funcionario.bopontotrabalho;
  if acttpabono.Enabled         then acttpabono.Enabled         := empresa.funcionario.bopontotrabalho;
  if acttpabono.Visible         then acttpabono.Visible         := empresa.funcionario.bopontotrabalho;
  if mnitabelafuncionario.Visible = ivAlways then                                                    
  begin
    if Empresa.funcionario.bo then
    begin
      mnitabelafuncionario.Visible := ivAlways
    end
    else
    begin
      mnitabelafuncionario.Visible := ivNever;
    end;
  end;
  if mnitabelafuncionario.Enabled then
  begin
    mnitabelafuncionario.Enabled := Empresa.funcionario.bo;
  end;
end;

procedure Tfrmmain.actpontotrabalhoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_pontotrabalho) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_pontotrabalho) then
  begin
    frmpontotrabalho := Tfrmpontotrabalho.Create(frmMain);
  end;
  set_merge(frmpontotrabalho.bmg);
  main.configform(frmpontotrabalho, tlbnew);
end;

procedure Tfrmmain.acteventoemailExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_eventoemail) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_eventoemail) then
  begin
    frmeventoemail := Tfrmeventoemail.Create(frmMain);
  end;
  set_merge(frmeventoemail.bmg1);
  main.configform(frmeventoemail, tlbnew, frmeventoemail.registro);
end;

procedure Tfrmmain.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmmain.actpacienteExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_paciente) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_paciente) then
  begin
    frmpaciente := TFrmpaciente.Create(frmMain);
  end;
  set_merge(frmpaciente.bmg1);
  main.configform(frmpaciente, tlbnew, frmpaciente.registro);
end;

procedure Tfrmmain.actrhocorrenciaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_rhocorrencia) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_rhocorrencia) then
  begin
    frmrhocorrencia := TFrmrhocorrencia.Create(frmMain);
  end;
  set_merge(frmrhocorrencia.bmg1);
  main.configform(frmrhocorrencia, tlbnew);
end;

procedure Tfrmmain.actparadaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_parada) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_parada) then
  begin
    frmparada := TFrmparada.Create(frmMain);
  end;
  set_merge(frmparada.bmg1);
  main.configform(frmparada, tlbnew, frmparada.registro);
end;

procedure Tfrmmain.actprofissionalExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_profissional) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_profissional) then
  begin
    frmprofissional := TFrmprofissional.Create(frmMain);
  end;
  set_merge(frmprofissional.bmg1);
  main.configform(frmprofissional, tlbnew, frmprofissional.registro);
end;

procedure Tfrmmain.actdespesaconvenioExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_despesaconvenio) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_despesaconvenio) then
  begin
    frmdespesaconvenio := TFrmdespesaconvenio.Create(frmMain);
  end;
  set_merge(frmdespesaconvenio.bmg1);
  main.configform(frmdespesaconvenio, tlbnew, frmdespesaconvenio.registro);
end;

procedure Tfrmmain.Abrirpaciente(cdpaciente: integer);
begin
  if not (lowercase(main.formatual) = _frm+_paciente) then
  begin
    actpacienteExecute(nil);
  end;
  frmpaciente.Abrir(cdpaciente);
end;

procedure Tfrmmain.Abrirprofissional(cdprofissional: integer);
begin
  if not (lowercase(main.formatual) = _frm+_profissional) then
  begin
    actprofissionalExecute(nil);
  end;
  frmprofissional.Abrir(cdprofissional);
end;

procedure Tfrmmain.NovoRequisicaoProducao(cdorcamento: integer; dtprevisao: TDate; cdtprequisicaoproducao: Integer; itorcamento: titorcamentolist);
begin
  actrequisicaoproducaoExecute(nil);
  frmrequisicaoproducao.Novo_Orcamento(cdorcamento, dtprevisao, cdtprequisicaoproducao, itorcamento);
end;

procedure Tfrmmain.abrirrequisicaoproducao(cdrequisicaoproducao: integer);
begin
  if not (lowercase(main.formatual) = _frm+_requisicaoproducao) then
  begin
    actrequisicaoproducaoExecute(nil);
  end;
  frmrequisicaoproducao.Abrir(cdrequisicaoproducao);
end;

procedure Tfrmmain.tmrTimer(Sender: TObject);
var
  qtregistro : Integer;
  function makesql_pedido:string;
  begin
    result := 'select count(*) '+
              'from pedido '+
              'where cdstpedido<>4 and cdtpcredito=1 and cdtpcomercial=1 and cdempresa='+empresa.cdempresa.tostring;
  end;
  function get_field_notificar(dsadicional:string):string;
  begin
    result := _bonotificarresponsavel;
    if dsadicional <> '' then
    begin
      result := _bonotificarsolicitante;
    end;
  end;
  function get_field_notificar_setor(dsadicional:string):string;
  begin
    result := _bonotificarsetorresponsavel;
    if dsadicional <> '' then
    begin
      result := _bonotificarsetorsolicitante;
    end;
  end;
  function makesql_(tabela:string; dsadicional:string=''):string;
  begin
    if tabela = _stembarque then
    begin
      result := 'select count(*) '+
                'from pedido '+
                'inner join itpedido on itpedido.cdempresa=pedido.cdempresa and itpedido.cdpedido=pedido.cdpedido '+
                'inner join stembarque on stembarque.cdempresa=itpedido.cdempresa and stembarque.cdstembarque=itpedido.cdstembarque ';
      if dsadicional = '' then
      begin
        result := result + 'where pedido.cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' and stembarque.bonotificarresponsavel=''S'' and pedido.cdempresa='+Empresa.cdempresa.tostring;
      end
      else
      begin
        result := result + 'where pedido.cdfaturista='+inttostr(usuario.funcionario.cdfuncionario)+' and stembarque.bonotificarsolicitante=''S'' and pedido.cdempresa='+Empresa.cdempresa.tostring;
      end;
    end
    else
    begin
      result := 'select count(*) '+
                'from '+tabela+' r '+
                'inner join st'+tabela+' s on s.cdempresa=r.cdempresa and s.cdst'+tabela+'=r.cdst'+tabela+' '+
                'where r.cdfuncionario'+dsadicional+'='+inttostr(usuario.funcionario.cdfuncionario)+' and s.'+get_field_notificar(dsadicional)+'=''S'' and r.cdempresa='+Empresa.cdempresa.tostring;
    end;
  end;
  function makesql_setor(tabela:string; dsadicional:string=''):string;
  begin
    if tabela = _stembarque then
    begin
      result := 'select count(*) '+
                'from pedido '+
                'inner join itpedido on itpedido.cdempresa=pedido.cdempresa and itpedido.cdpedido=pedido.cdpedido '+
                'inner join stembarque on stembarque.cdempresa=itpedido.cdempresa and stembarque.cdstembarque=itpedido.cdstembarque ';
      if dsadicional = '' then
      begin
        result := result + 'inner join funcionario on funcionario.cdempresa=pedido.cdempresa and funcionario.cdfuncionario=pedido.cdfuncionario '+
                           'where pedido.cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' and stembarque.bonotificarresponsavel=''S'' and pedido.cdempresa='+Empresa.cdempresa.tostring;
      end
      else
      begin
        result := result + 'inner join funcionario on funcionario.cdempresa=pedido.cdempresa and funcionario.cdfuncionario=pedido.cdfaturista '+
                           'where pedido.cdfaturista='+inttostr(usuario.funcionario.cdfuncionario)+' and stembarque.bonotificarsolicitante=''S'' and pedido.cdempresa='+Empresa.cdempresa.tostring;
      end;
    end
    else
    begin
      result := 'select count(*) '+
                'from '+tabela+' r '+
                'inner join st'+tabela+' s on s.cdempresa=r.cdempresa and s.cdst'+tabela+'=r.cdst'+tabela+' '+
                'inner join funcionario f on f.cdempresa=r.cdempresa and f.cdfuncionario=r.cdfuncionario'+dsadicional+' '+
                'where f.cdsetor='+inttostr(usuario.funcionario.cdsetor)+' and s.'+get_field_notificar_setor(dsadicional)+'=''S'' and r.cdempresa='+Empresa.cdempresa.tostring;
    end;
  end;
  function get_nmstatus(tabela:string; dsadicional:string=''):string;
    function makesql_nmstatus:string;
    begin
      if tabela = _stembarque then
      begin
        result := 'select nmstembarque '+
                  'from pedido '+
                  'inner join itpedido on itpedido.cdempresa=pedido.cdempresa and itpedido.cdpedido=pedido.cdpedido '+
                  'inner join stembarque on stembarque.cdempresa=itpedido.cdempresa and stembarque.cdstembarque=itpedido.cdstembarque ';
        if dsadicional = '' then
        begin
          result := result + 'where pedido.cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' and stembarque.bonotificarresponsavel=''S'' and pedido.cdempresa='+Empresa.cdempresa.tostring;
        end
        else
        begin
          result := result + 'where pedido.cdfaturista='+inttostr(usuario.funcionario.cdfuncionario)+' and stembarque.bonotificarsolicitante=''S'' and pedido.cdempresa='+Empresa.cdempresa.tostring;
        end;
      end
      else
      begin
        result := 'select nmst'+tabela+' '+
                  'from '+tabela+' r '+
                  'inner join st'+tabela+' s on s.cdempresa=r.cdempresa and s.cdst'+tabela+'=r.cdst'+tabela+' '+
                  'where r.cdfuncionario'+dsadicional+'='+inttostr(usuario.funcionario.cdfuncionario)+' and s.'+get_field_notificar(dsadicional)+'=''S'' and r.cdempresa='+Empresa.cdempresa.tostring;
      end;
    end;
  begin
    result := RetornaSQLString(makesql_nmstatus);
  end;
  function get_nmstatus_setor(tabela:string; dsadicional:string=''):string;
    function makesql_nmstatus_setor:string;
    begin
      if tabela = _stembarque then
      begin
        result := 'select nmstembarque '+
                  'from pedido '+
                  'inner join itpedido on itpedido.cdempresa=pedido.cdempresa and itpedido.cdpedido=pedido.cdpedido '+
                  'inner join stembarque on stembarque.cdempresa=itpedido.cdempresa and stembarque.cdstembarque=itpedido.cdstembarque ';
        if dsadicional = '' then
        begin
          result := result + 'inner join funcionario on funcionario.cdempresa=pedido.cdempresa and funcionario.cdfuncionario=pedido.cdfuncionario '+
                             'where funcionario.cdsetor='+inttostr(usuario.funcionario.cdsetor)+' and stembarque.bonotificarresponsavel=''S'' and r.cdempresa='+Empresa.cdempresa.tostring;
        end
        else
        begin
          result := result + 'inner join funcionario on funcionario.cdempresa=pedido.cdempresa and funcionario.cdfuncionario=pedido.cdfaturista '+
                             'where funcionario.cdsetor='+inttostr(usuario.funcionario.cdsetor)+' and stembarque.bonotificarsolicitante=''S'' and pedido.cdempresa='+Empresa.cdempresa.tostring;
        end;
      end
      else
      begin
        result := 'select nmst'+tabela+' '+
                  'from '+tabela+' r '+
                  'inner join st'+tabela+' s on s.cdempresa=r.cdempresa and s.cdst'+tabela+'=r.cdst'+tabela+' '+
                  'inner join funcionario f on f.cdempresa=r.cdempresa and f.cdfuncionario=r.cdfuncionario'+dsadicional+' '+
                  'where f.cdsetor='+inttostr(usuario.funcionario.cdsetor)+' and s.'+get_field_notificar_setor(dsadicional)+'=''S'' and r.cdempresa='+Empresa.cdempresa.tostring;
      end;
    end;
  begin
    result := RetornaSQLString(makesql_nmstatus_setor);
  end;
begin
  if tmr.Enabled then
  begin
    tmr.Enabled := (actmanagerpedido.Visible and empresa.comercial.pedido.botemporizador) or ((actrequisicaoproducao.Visible or actordproducao.Visible) and (usuario.funcionario.cdfuncionario <> 0));
  end;
  if not tmr.Enabled then
  begin
    Exit;
  end;
  //tic.Active := false;
  if actmanagerpedido.Visible and empresa.comercial.pedido.botemporizador then
  begin
    qtregistro := RetornaSQLInteger(makesql_pedido);
    if qtregistro > 0 then
    begin
      //tic.Active := true;
      //tic.BalloonHint('Gerenciador de Pedido', 'Existe(m) '+IntToStr(qtregistro)+' pedido(s) em "Aguardando Aprovação', TBalloonType(2), 50000, true);
    end;
  end;
  if usuario.funcionario.cdfuncionario = 0 then
  begin
    Exit;
  end;
  if actrequisicaoproducao.Visible then
  begin
    qtregistro := RetornaSQLInteger(makesql_(_requisicaoproducao));
    if qtregistro > 0 then
    begin
      //tic.Active := true;
      //tic.BalloonHint('Requisição de Produção - Responsável', 'Existe(m) '+IntToStr(qtregistro)+' requisição(ões) em "'+get_nmstatus(_requisicaoproducao)+'', TBalloonType(2), 50000, true);
    end
    else if usuario.funcionario.cdsetor <> 0 then
    begin
      qtregistro := RetornaSQLInteger(makesql_setor(_requisicaoproducao));
      if qtregistro > 0 then
      begin
        //tic.Active := true;
        //tic.BalloonHint('Requisição de Produção - Setor Responsável', 'Existe(m) '+IntToStr(qtregistro)+' requisição(ões) em "'+get_nmstatus_setor(_requisicaoproducao)+'', TBalloonType(2), 50000, true);
      end;
    end;
    qtregistro := RetornaSQLInteger(makesql_(_requisicaoproducao, _solicitante));
    if qtregistro > 0 then
    begin
      //tic.Active := true;
      //tic.BalloonHint('Requisição de Produção - Solicitante', 'Existe(m) '+IntToStr(qtregistro)+' requisição(ões) em "'+get_nmstatus(_requisicaoproducao, _solicitante)+'', TBalloonType(2), 50000, true);
    end
    else if usuario.funcionario.cdsetor <> 0 then
    begin
      qtregistro := RetornaSQLInteger(makesql_setor(_requisicaoproducao, _solicitante));
      if qtregistro > 0 then
      begin
        //tic.Active := true;
        //tic.BalloonHint('Requisição de Produção - Setor Solicitante', 'Existe(m) '+IntToStr(qtregistro)+' requisição(ões) em "'+get_nmstatus_setor(_requisicaoproducao, _solicitante)+'', TBalloonType(2), 50000, true);
      end;
    end;
  end;
  if actordproducao.Visible then
  begin
    qtregistro := RetornaSQLInteger(makesql_(_ordproducao));
    if qtregistro > 0 then
    begin
      //tic.Active := true;
      //tic.BalloonHint('Ordem de Produção - Responsável', 'Existe(m) '+IntToStr(qtregistro)+' ordem(ns) de Produção em "'+get_nmstatus(_ordproducao)+'', TBalloonType(2), 50000, true);
    end
    else if usuario.funcionario.cdsetor <> 0 then
    begin
      qtregistro := RetornaSQLInteger(makesql_setor(_ordproducao));
      if qtregistro > 0 then
      begin
        //tic.Active := true;
        //tic.BalloonHint('Ordem de Produção - Responsável', 'Existe(m) '+IntToStr(qtregistro)+' ordem(ns) de Produção em "'+get_nmstatus_setor(_ordproducao)+'', TBalloonType(2), 50000, true);
      end;
    end;
    qtregistro := RetornaSQLInteger(makesql_(_ordproducao, _solicitante));
    if qtregistro > 0 then
    begin
      //tic.Active := true;
      //tic.BalloonHint('Ordem de Produção - Solicitante', 'Existe(m) '+IntToStr(qtregistro)+' ordem(ns) de Produção em "'+get_nmstatus(_ordproducao, _solicitante)+'', TBalloonType(2), 50000, true);
    end
    else if usuario.funcionario.cdsetor <> 0 then
    begin
      qtregistro := RetornaSQLInteger(makesql_setor(_ordproducao, _solicitante));
      if qtregistro > 0 then
      begin
        //tic.Active := true;
        //tic.BalloonHint('Ordem de Produção - Setor Solicitante', 'Existe(m) '+IntToStr(qtregistro)+' ordem(ns) de Produção em "'+get_nmstatus_setor(_ordproducao, _solicitante)+'', TBalloonType(2), 50000, true);
      end;
    end;
  end;
  if actpedido.Visible then
  begin
    qtregistro := RetornaSQLInteger(makesql_(_stembarque));
    if qtregistro > 0 then
    begin
      //tic.Active := true;
      //tic.BalloonHint('Embarque - Responsável', 'Existe(m) '+IntToStr(qtregistro)+' requisição(ões) em "'+get_nmstatus(_embarque)+'', TBalloonType(2), 50000, true);
    end
    else if usuario.funcionario.cdsetor <> 0 then
    begin
      qtregistro := RetornaSQLInteger(makesql_setor(_stembarque));
      if qtregistro > 0 then
      begin
        //tic.Active := true;
        //tic.BalloonHint('Embarque - Setor Responsável', 'Existe(m) '+IntToStr(qtregistro)+' requisição(ões) em "'+get_nmstatus_setor(_stembarque)+'', TBalloonType(2), 50000, true);
      end;
    end;
    qtregistro := RetornaSQLInteger(makesql_(_stembarque, _solicitante));
    if qtregistro > 0 then
    begin
      //tic.Active := true;
      //tic.BalloonHint('Embarque - Solicitante', 'Existe(m) '+IntToStr(qtregistro)+' requisição(ões) em "'+get_nmstatus(_stembarque, _solicitante)+'', TBalloonType(2), 50000, true);
    end
    else if usuario.funcionario.cdsetor <> 0 then
    begin
      qtregistro := RetornaSQLInteger(makesql_setor(_stembarque, _solicitante));
      if qtregistro > 0 then
      begin
        //tic.Active := true;
        //tic.BalloonHint('Embarque - Setor Solicitante', 'Existe(m) '+IntToStr(qtregistro)+' requisição(ões) em "'+get_nmstatus_setor(_stembarque, _solicitante)+'', TBalloonType(2), 50000, true);
      end;
    end;
  end;
end;

procedure Tfrmmain.acttprespostaExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpresposta) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpresposta) then
  begin
    frmtpresposta := TFrmtpresposta.Create(frmMain);
  end;
  set_merge(frmtpresposta.bmg1);
  main.configform(frmtpresposta, tlbnew, frmtpresposta.registro);
end;

procedure Tfrmmain.acttpcriterioorcamentoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpcriterioorcamento) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpcriterioorcamento) then
  begin
    frmtpcriterioorcamento := TFrmtpcriterioorcamento.Create(frmMain);
  end;
  set_merge(frmtpcriterioorcamento.bmg1);
  main.configform(frmtpcriterioorcamento, tlbnew, frmtpcriterioorcamento.registro);
end;

procedure Tfrmmain.abrirformulacao(cdformulacao: integer);
begin
  if not (lowercase(main.formatual) = _frm+_formulacao) then
  begin
    actformulacaoExecute(nil);
  end;
  frmformulacao.Abrir(cdformulacao);
end;

procedure Tfrmmain.actanydeskExecute(Sender: TObject);
begin
  if (ShellExecute(Handle, nil, PChar(ExtractFilePath(Application.ExeName)+'\AnyDesk.exe'), nil, nil, SW_SHOWNORMAL) = ERROR_FILE_NOT_FOUND) and
  (MessageDlg('Arquivo não existe no seu computador.'#13'Baixar o arquivo?', mtConfirmation, [mbYes, mbNo], 0) = mryes) then
  begin
    ShellExecute(Handle, _open, 'http://anydesk.pt/download', Nil, Nil, SW_SHOWDEFAULT);
  end;
end;

procedure Tfrmmain.actaeroadminExecute(Sender: TObject);
begin
  if (ShellExecute(Handle, nil, PChar(ExtractFilePath(Application.ExeName)+'\AeroAdmin.exe'), nil, nil, SW_SHOWNORMAL) = ERROR_FILE_NOT_FOUND) and
  (MessageDlg('Arquivo não existe no seu computador.'#13'Baixar o arquivo?', mtConfirmation, [mbYes, mbNo], 0) = mryes) then
  begin
    ShellExecute(Handle, _open, 'http://www.aeroadmin.com/AeroAdmin.exe', Nil, Nil, SW_SHOWDEFAULT);
  end;
end;

procedure Tfrmmain.actrelatoriobugExecute(Sender: TObject);
begin
  btnrelatoriobug.Down := not btnrelatoriobug.Down;
  SetEurekaLogState(btnrelatoriobug.Down);
  {
  if IsEurekaLogActive then
  begin
    btnrelatoriobug.Down := False;
    SetEurekaLogState(False);
  end
  else
  begin
    btnrelatoriobug.Down := true;
    SetEurekaLogState(True);
  end;
  }
end;

procedure Tfrmmain.actembarqueExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_embarque) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_embarque) then
  begin
    frmembarque := TFrmembarque.Create(frmMain);
  end;
  set_merge(frmembarque.bmg1);
  main.configform(frmembarque, tlbnew, frmembarque.registro);
end;

procedure Tfrmmain.set_embarque;
begin
  if actstembarque.Enabled then actstembarque.Enabled := Empresa.comercial.pedido.bo or empresa.faturamento.boembarque;
  if actstembarque.Visible then actstembarque.Visible := Empresa.comercial.pedido.bo or empresa.faturamento.boembarque;
  if actembarque.Enabled   then actembarque.Enabled   := empresa.faturamento.boembarque;
  if actembarque.Visible   then actembarque.Visible   := empresa.faturamento.boembarque;
  if acttpembarque.Enabled then acttpembarque.Enabled := empresa.faturamento.boembarque;
  if acttpembarque.Visible then acttpembarque.Visible := empresa.faturamento.boembarque;
end;

procedure Tfrmmain.NovoCTE(cditembarque: string);
begin
  actcteExecute(nil);
  frmcte.Novo(cditembarque);
end;

procedure Tfrmmain.NovoMDFE(cdembarque: string);
begin
  actMDFEExecute(nil);
  frmmdfe.Novo(cdembarque);
end;

procedure Tfrmmain.NovoRPA(cdembarque: string);
begin
  actrpaExecute(nil);
  frmrpa.Novo(cdembarque);
end;

procedure Tfrmmain.acttpembarqueExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpembarque) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpembarque) then
  begin
    frmtpembarque := TFrmtpembarque.Create(frmMain);
  end;
  set_merge(frmtpembarque.bmg1);
  main.configform(frmtpembarque, tlbnew, frmtpembarque.registro);
end;

procedure Tfrmmain.acttpapontamentomanualExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpapontamentomanual) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpapontamentomanual) then
  begin
    frmtpapontamentomanual := TFrmtpapontamentomanual.Create(frmMain);
  end;
  set_merge(frmtpapontamentomanual.bmg1);
  main.configform(frmtpapontamentomanual, tlbnew, frmtpapontamentomanual.registro);
end;

procedure Tfrmmain.actapontamentomanualExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_apontamentomanual) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_apontamentomanual) then
  begin
    frmapontamentomanual := TFrmapontamentomanual.Create(frmMain);
  end;
  set_merge(frmapontamentomanual.bmg1);
  main.configform(frmapontamentomanual, tlbnew, frmapontamentomanual.registro);
end;

procedure Tfrmmain.Abrirtppedidomaterial(cdtppedidomaterial: integer);
begin
  if not (lowercase(main.formatual) = _frm+_tppedidomaterial) then
  begin
    acttppedidomaterialExecute(nil);
  end;
  frmtppedidomaterial.Abrir(cdtppedidomaterial);
end;

procedure Tfrmmain.Gerar_CTE(cdembarque: string);
begin
  actcteExecute(nil);
  frmcte.Gerar_CTE(cdembarque);
end;

procedure Tfrmmain.acttpaprovacaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpaprovacao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpaprovacao) then
  begin
    frmtpaprovacao := TFrmtpaprovacao.Create(frmMain);
  end;
  set_merge(frmtpaprovacao.bmg1);
  main.configform(frmtpaprovacao, tlbnew, frmtpaprovacao.registro);
end;

procedure Tfrmmain.actscripterExecute(Sender: TObject);
begin
{
  frmscript := tfrmscript.create(nil);
  try
    frmscript.showmodal;
  finally
    freeandnil(frmscript);
  end;
}
end;

procedure Tfrmmain.acttpcorrecaoExecute(Sender: TObject);
begin
  if main.processarabertura(_frm+_tpcorrecao) then
  begin
    exit;
  end;
  if not TQForm.ExisteFormulario(_frm+_tpcorrecao) then
  begin
    frmtpcorrecao := TFrmtpcorrecao.Create(frmMain);
  end;
  set_merge(frmtpcorrecao.bmg1);
  main.configform(frmtpcorrecao, tlbnew, frmtpcorrecao.registro);
end;

end.

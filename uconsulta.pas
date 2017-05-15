unit uconsulta;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, ComCtrls, StdCtrls, Mask, Buttons, Controls, ExtCtrls,
  dialogs, sysutils, windows, ToolWin, CheckLst, shellapi, comobj, idglobal,
  variants,
  DB, SqlExpr,
  uXLConst, unumero, uprogressbar, uregistro, udatahora, umontarsql,
  uAdicionarListView, uconstantes, ustrings, usystem,
  classecteimportar, classeimportacaodados, classeusuario, classeretornasql,
  classeform, classeempresa, classefornecedor, classeordcompra,
  classeexecutasql, classegerar, classeregistrainformacao, classecliente, classetransportadora,
  classequery, classeordproducao,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxCalc, dxBar, cxClasses, cxSplitter, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxTreeView, cxListView, cxPC, cxCalendar, cxPCdxBarPopupMenu, cxCheckBox, dxCore,
  cxDateUtils, dxBarBuiltInMenu;

type
  Tfrmconsulta = class(TForm)
    pnl: TPanel;
    ActionList1: TActionList;
    actGerar: TAction;
    ntb: TNotebook;
    Panel2: TPanel;
    lblemissao: TLabel;
    lblvencimento: TLabel;
    lblatevencimento: TLabel;
    actfechar: TAction;
    cbxtabela: TComboBox;
    lbltabela: TLabel;
    rdgtpcurvaabc: TRadioGroup;
    rdgorientacao: TRadioGroup;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    spl1: TcxSplitter;
    trv: TTreeView;
    pgc: TcxPageControl;
    tbscliente: TcxTabSheet;
    tbsstpedido: TcxTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    Bevel17: TBevel;
    ToolBar17: TToolBar;
    ToolButton15: TToolButton;
    ToolButton19: TToolButton;
    ToolButton21: TToolButton;
    edtnmstpedido: TEdit;
    edtcdstpedido: TEdit;
    lsvstpedido: TcxListView;
    tbsrepresentante: TcxTabSheet;
    Label35: TLabel;
    Label36: TLabel;
    Bevel18: TBevel;
    ToolBar18: TToolBar;
    ToolButton22: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    edtcdrepresentante: TEdit;
    edtnmrepresentante: TEdit;
    lsvrepresentante: TcxListView;
    tbsgrupo: TcxTabSheet;
    tbscondpagto: TcxTabSheet;
    Bevel21: TBevel;
    Label41: TLabel;
    Label42: TLabel;
    ToolBar21: TToolBar;
    ToolButton48: TToolButton;
    ToolButton52: TToolButton;
    ToolButton56: TToolButton;
    edtcdcondpagto: TEdit;
    edtnmcondpagto: TEdit;
    lsvcondpagto: TcxListView;
    tbstpcobranca: TcxTabSheet;
    Label43: TLabel;
    Label44: TLabel;
    Bevel22: TBevel;
    ToolBar22: TToolBar;
    ToolButton60: TToolButton;
    ToolButton64: TToolButton;
    ToolButton66: TToolButton;
    edtnmtpcobranca: TEdit;
    edtcdtpcobranca: TEdit;
    lsvtpcobranca: TcxListView;
    tbstppedido: TcxTabSheet;
    Bevel23: TBevel;
    Label45: TLabel;
    Label46: TLabel;
    edtcdtppedido: TEdit;
    edtnmtppedido: TEdit;
    ToolBar23: TToolBar;
    ToolButton67: TToolButton;
    ToolButton68: TToolButton;
    ToolButton69: TToolButton;
    lsvtppedido: TcxListView;
    tbsfuncionario: TcxTabSheet;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    bvl1: TBevel;
    lsvfuncionario: TcxListView;
    Label3: TLabel;
    Label4: TLabel;
    edtnmfuncionario: TEdit;
    edtcdfuncionario: TEdit;
    tbsstordcompra: TcxTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    bvl2: TBevel;
    lsvstordcompra: TcxListView;
    Label1: TLabel;
    Label2: TLabel;
    edtnmstordcompra: TEdit;
    edtcdstordcompra: TEdit;
    tbstpordcompra: TcxTabSheet;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    Bevel5: TBevel;
    lsvtpordcompra: TcxListView;
    Label5: TLabel;
    Label6: TLabel;
    edtnmtpordcompra: TEdit;
    edtcdtpordcompra: TEdit;
    tbsfornecedor: TcxTabSheet;
    ToolBar3: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton16: TToolButton;
    Bevel6: TBevel;
    lsvfornecedor: TcxListView;
    Label7: TLabel;
    Label8: TLabel;
    edtnmfornecedor: TEdit;
    edtcdfornecedor: TEdit;
    tbsTransportadora: TcxTabSheet;
    ToolBar5: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton20: TToolButton;
    bvl3: TBevel;
    lsvtransportadora: TcxListView;
    Label9: TLabel;
    Label10: TLabel;
    edtcdtransportadora: TEdit;
    edtnmtransportadora: TEdit;
    ToolBar6: TToolBar;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton29: TToolButton;
    bvl4: TBevel;
    lsvcliente: TcxListView;
    lblcdcliente: TLabel;
    lblnmcliente: TLabel;
    edtcdcliente: TEdit;
    edtnmcliente: TEdit;
    ToolBar9: TToolBar;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton37: TToolButton;
    bvl5: TBevel;
    lsvgrupo: TcxListView;
    Label13: TLabel;
    Label14: TLabel;
    edtnmgrupo: TEdit;
    edtcdgrupo: TEdit;
    tbstpsaida: TcxTabSheet;
    ToolBar10: TToolBar;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton41: TToolButton;
    bvl6: TBevel;
    lsvtpsaida: TcxListView;
    Label15: TLabel;
    Label16: TLabel;
    edtnmtpsaida: TEdit;
    edtcdtpsaida: TEdit;
    tbstpordserv: TcxTabSheet;
    ToolBar11: TToolBar;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton45: TToolButton;
    bvl7: TBevel;
    lsvtpordserv: TcxListView;
    Label17: TLabel;
    Label18: TLabel;
    edtcdtpordserv: TEdit;
    edtnmtpordserv: TEdit;
    tbstpentrada: TcxTabSheet;
    ToolBar12: TToolBar;
    ToolButton46: TToolButton;
    ToolButton47: TToolButton;
    ToolButton49: TToolButton;
    bvl8: TBevel;
    lsvtpentrada: TcxListView;
    Label19: TLabel;
    Label20: TLabel;
    edtcdtpentrada: TEdit;
    edtnmtpentrada: TEdit;
    tbstpmovto: TcxTabSheet;
    ToolBar13: TToolBar;
    ToolButton50: TToolButton;
    ToolButton51: TToolButton;
    ToolButton53: TToolButton;
    bvl9: TBevel;
    lsvtpmovto: TcxListView;
    Label21: TLabel;
    Label22: TLabel;
    edtcdtpmovto: TEdit;
    edtnmtpmovto: TEdit;
    tbsconta: TcxTabSheet;
    ToolBar14: TToolBar;
    ToolButton54: TToolButton;
    ToolButton55: TToolButton;
    ToolButton57: TToolButton;
    bvl10: TBevel;
    lsvconta: TcxListView;
    Label23: TLabel;
    Label24: TLabel;
    edtcdconta: TEdit;
    edtnmconta: TEdit;
    tbsmovimentacao: TcxTabSheet;
    ToolBar15: TToolBar;
    ToolButton58: TToolButton;
    ToolButton59: TToolButton;
    ToolButton61: TToolButton;
    bvl11: TBevel;
    lsvmovimentacao: TcxListView;
    Label25: TLabel;
    Label26: TLabel;
    edtnmmovimentacao: TEdit;
    edtcdmovimentacao: TEdit;
    tbsproduto: TcxTabSheet;
    ToolBar7: TToolBar;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton33: TToolButton;
    Bevel8: TBevel;
    lsvproduto: TcxListView;
    Label11: TLabel;
    Label12: TLabel;
    edtcdproduto: TEdit;
    edtnmproduto: TEdit;
    ckbprodutoinversa: TCheckBox;
    lblateemissao: TLabel;
    tbsstorcamento: TcxTabSheet;
    ToolBar8: TToolBar;
    ToolButton3: TToolButton;
    ToolButton7: TToolButton;
    ToolButton11: TToolButton;
    bvl13: TBevel;
    lsvstorcamento: TcxListView;
    Label31: TLabel;
    Label32: TLabel;
    edtcdstorcamento: TEdit;
    edtnmstorcamento: TEdit;
    tbsstordproducao: TcxTabSheet;
    ToolBar19: TToolBar;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton32: TToolButton;
    Bevel1: TBevel;
    Label29: TLabel;
    Label30: TLabel;
    edtcdstordproducao: TEdit;
    edtnmstordproducao: TEdit;
    lsvstordproducao: TcxListView;
    lblprventrega: TLabel;
    lblateprventrega: TLabel;
    lblentrega: TLabel;
    lblateentrega: TLabel;
    tbsstfornecedor: TcxTabSheet;
    ToolBar24: TToolBar;
    ToolButton70: TToolButton;
    ToolButton71: TToolButton;
    ToolButton72: TToolButton;
    Bevel3: TBevel;
    Label37: TLabel;
    Label38: TLabel;
    edtnmstfornecedor: TEdit;
    edtcdstfornecedor: TEdit;
    lsvstfornecedor: TcxListView;
    tbsuf: TcxTabSheet;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    Bevel4: TBevel;
    Label47: TLabel;
    Label48: TLabel;
    edtnmuf: TEdit;
    edtcduf: TEdit;
    lsvuf: TcxListView;
    lbli: TLabel;
    edtdti: TcxDateEdit;
    lblf: TLabel;
    edtdtf: TcxDateEdit;
    tbsstrim: TcxTabSheet;
    ToolBar25: TToolBar;
    btnadicionarrim: TToolButton;
    btnexcluirstrim: TToolButton;
    btnexcluirtodasstrim: TToolButton;
    Label49: TLabel;
    edtcdrim: TEdit;
    Label50: TLabel;
    edtnmstrim: TEdit;
    Bevel2: TBevel;
    lsvstrim: TcxListView;
    tbscntcusto: TcxTabSheet;
    ToolBar26: TToolBar;
    btnadicionarcntcusto: TToolButton;
    btnexcluircntcusto: TToolButton;
    btnexcluirtodascntcusto: TToolButton;
    Bevel7: TBevel;
    edtnmcntcusto: TEdit;
    edtcdcntcusto: TEdit;
    Label51: TLabel;
    Label52: TLabel;
    lsvcntcusto: TcxListView;
    tbsitcontcliente: TcxTabSheet;
    ToolBar27: TToolBar;
    ToolButton73: TToolButton;
    ToolButton74: TToolButton;
    Bevel9: TBevel;
    Label53: TLabel;
    lsvnmitcontcliente: TcxListView;
    edtnmitcontcliente: TEdit;
    tbsclfornecedor: TcxTabSheet;
    ToolBar20: TToolBar;
    ToolButton36: TToolButton;
    ToolButton40: TToolButton;
    ToolButton44: TToolButton;
    Label39: TLabel;
    Label40: TLabel;
    edtnmclfornecedor: TEdit;
    edtclfornecedor: TEdit;
    Bevel10: TBevel;
    lsvclfornecedor: TcxListView;
    tbsufinicio: TcxTabSheet;
    tbsuftermino: TcxTabSheet;
    tbsmunicipioinicio: TcxTabSheet;
    tbsmunicipiotermino: TcxTabSheet;
    ToolBar28: TToolBar;
    ToolButton75: TToolButton;
    ToolButton76: TToolButton;
    ToolButton77: TToolButton;
    edtnmufinicio: TEdit;
    edtcdufinicio: TEdit;
    Label54: TLabel;
    Label55: TLabel;
    Bevel11: TBevel;
    lsvufinicio: TcxListView;
    ToolBar29: TToolBar;
    ToolButton78: TToolButton;
    ToolButton79: TToolButton;
    ToolButton80: TToolButton;
    edtnmuftermino: TEdit;
    edtcduftermino: TEdit;
    Label56: TLabel;
    Label57: TLabel;
    Bevel12: TBevel;
    lsvuftermino: TcxListView;
    ToolBar30: TToolBar;
    ToolButton81: TToolButton;
    ToolButton82: TToolButton;
    ToolButton83: TToolButton;
    edtnmmunicipioinicio: TEdit;
    edtcdmunicipioinicio: TEdit;
    Label58: TLabel;
    Label59: TLabel;
    Bevel13: TBevel;
    lsvmunicipioinicio: TcxListView;
    ToolBar31: TToolBar;
    ToolButton84: TToolButton;
    ToolButton85: TToolButton;
    ToolButton86: TToolButton;
    edtnmmunicipiotermino: TEdit;
    edtcdmunicipiotermino: TEdit;
    Label60: TLabel;
    Label61: TLabel;
    Bevel14: TBevel;
    lsvmunicipiotermino: TcxListView;
    tbsremetente: TcxTabSheet;
    tbsdestinatario: TcxTabSheet;
    ToolBar32: TToolBar;
    ToolButton87: TToolButton;
    ToolButton88: TToolButton;
    ToolButton89: TToolButton;
    ToolBar33: TToolBar;
    ToolButton90: TToolButton;
    ToolButton91: TToolButton;
    ToolButton92: TToolButton;
    Bevel15: TBevel;
    edtnmremetente: TEdit;
    edtcdremetente: TEdit;
    Label62: TLabel;
    Label63: TLabel;
    Bevel16: TBevel;
    edtnmdestinatario: TEdit;
    edtcddestinatario: TEdit;
    Label64: TLabel;
    Label65: TLabel;
    lsvremetente: TcxListView;
    lsvdestinatario: TcxListView;
    edtdtemissaoi: TcxDateEdit;
    edtdtemissaof: TcxDateEdit;
    edtdtvencimentoi: TcxDateEdit;
    edtdtvencimentof: TcxDateEdit;
    edtdtprventregai: TcxDateEdit;
    edtdtprventregaf: TcxDateEdit;
    edtdtentregai: TcxDateEdit;
    edtdtentregaf: TcxDateEdit;
    tbssttarefa: TcxTabSheet;
    tbstptarefa: TcxTabSheet;
    tbstptarefa1: TcxTabSheet;
    ToolBar16: TToolBar;
    ToolButton62: TToolButton;
    ToolButton63: TToolButton;
    ToolButton65: TToolButton;
    ToolBar34: TToolBar;
    ToolButton93: TToolButton;
    ToolButton94: TToolButton;
    ToolButton95: TToolButton;
    ToolBar35: TToolBar;
    ToolButton96: TToolButton;
    ToolButton97: TToolButton;
    ToolButton98: TToolButton;
    Bevel19: TBevel;
    edtnmsttarefa: TEdit;
    edtcdsttarefa: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Bevel20: TBevel;
    edtnmtptarefa: TEdit;
    edtcdtptarefa: TEdit;
    Label66: TLabel;
    Label67: TLabel;
    Bevel24: TBevel;
    edtnmtptarefa1: TEdit;
    edtcdtptarefa1: TEdit;
    Label68: TLabel;
    Label69: TLabel;
    lsvsttarefa: TcxListView;
    lsvtptarefa: TcxListView;
    lsvtptarefa1: TcxListView;
    lblentrada: TLabel;
    edtdtei: TcxDateEdit;
    lblateentrada: TLabel;
    edtdtef: TcxDateEdit;
    lblsaida: TLabel;
    edtdtsi: TcxDateEdit;
    lblatesaida: TLabel;
    edtdtsf: TcxDateEdit;
    tbsprioridade: TcxTabSheet;
    ToolBar36: TToolBar;
    btnPrioridadeAdicionar: TToolButton;
    btnPrioridadeExcluir: TToolButton;
    ToolButton99: TToolButton;
    edtnmprioridade: TEdit;
    edtcdprioridade: TEdit;
    Label70: TLabel;
    Label71: TLabel;
    Bevel25: TBevel;
    lsvprioridade: TcxListView;
    tbsatendente: TcxTabSheet;
    ToolBar37: TToolBar;
    ToolButton100: TToolButton;
    ToolButton101: TToolButton;
    ToolButton102: TToolButton;
    Label72: TLabel;
    Label73: TLabel;
    edtnmatendente: TEdit;
    edtcdatendente: TEdit;
    Bevel26: TBevel;
    lsvatendente: TcxListView;
    lblorder: TLabel;
    cbxorder: TComboBox;
    rdgorder: TRadioGroup;
    ckbclienteinversa: TcxCheckBox;
    cbxquebra: TComboBox;
    lblquebra: TLabel;
    tbsequipamento: TcxTabSheet;
    Label76: TLabel;
    Label77: TLabel;
    edtcdequipamento: TEdit;
    edtnmequipamento: TEdit;
    ToolBar39: TToolBar;
    ToolButton106: TToolButton;
    ToolButton107: TToolButton;
    ToolButton108: TToolButton;
    Bevel28: TBevel;
    lsvequipamento: TcxListView;
    tbsetapa: TcxTabSheet;
    ToolBar40: TToolBar;
    ToolButton109: TToolButton;
    ToolButton110: TToolButton;
    ToolButton111: TToolButton;
    Bevel29: TBevel;
    edtnmetapa: TEdit;
    edtcdetapa: TEdit;
    Label78: TLabel;
    Label79: TLabel;
    lsvetapa: TcxListView;
    tbstpordproducao: TcxTabSheet;
    Bevel30: TBevel;
    lsvtpordproducao: TcxListView;
    Label80: TLabel;
    Label81: TLabel;
    edtcdtpordproducao: TEdit;
    edtnmtpordproducao: TEdit;
    ToolBar41: TToolBar;
    ToolButton112: TToolButton;
    ToolButton113: TToolButton;
    ToolButton114: TToolButton;
    tbstpcliente: TcxTabSheet;
    lsvtpcliente: TcxListView;
    bvltpcliente: TBevel;
    lbl1: TLabel;
    edtcdtpcliente: TEdit;
    edtnmtpcliente: TEdit;
    lbl2: TLabel;
    tlb2: TToolBar;
    ToolButton115: TToolButton;
    ToolButton116: TToolButton;
    ToolButton117: TToolButton;
    tbsstordserv: TcxTabSheet;
    lsvstordserv: TcxListView;
    lbl3: TLabel;
    lbl4: TLabel;
    edtcdstordserv: TEdit;
    edtnmstordserv: TEdit;
    bvl12: TBevel;
    tlb3: TToolBar;
    ToolButton118: TToolButton;
    ToolButton119: TToolButton;
    ToolButton120: TToolButton;
    tbstprpa: TcxTabSheet;
    ToolBar43: TToolBar;
    ToolButton124: TToolButton;
    ToolButton125: TToolButton;
    ToolButton126: TToolButton;
    Label82: TLabel;
    Label83: TLabel;
    edtcdtprpa: TEdit;
    edtnmtprpa: TEdit;
    Bevel31: TBevel;
    lsvtprpa: TcxListView;
    tbstpparada: TcxTabSheet;
    ToolBar42: TToolBar;
    ToolButton121: TToolButton;
    ToolButton122: TToolButton;
    ToolButton123: TToolButton;
    Label84: TLabel;
    edtcdtpparada: TEdit;
    Label85: TLabel;
    edtnmtpparada: TEdit;
    Bevel32: TBevel;
    lsvtpparada: TcxListView;
    tbstag: TcxTabSheet;
    ToolBar44: TToolBar;
    ToolButton127: TToolButton;
    ToolButton128: TToolButton;
    Bevel33: TBevel;
    edtdstag: TEdit;
    Label86: TLabel;
    lsvdstag: TcxListView;
    tbstecnico: TcxTabSheet;
    ToolBar45: TToolBar;
    ToolButton129: TToolButton;
    ToolButton130: TToolButton;
    ToolButton131: TToolButton;
    Label87: TLabel;
    Label88: TLabel;
    edtcdtecnico: TEdit;
    edtnmtecnico: TEdit;
    Bevel34: TBevel;
    lsvtecnico: TcxListView;
    lbldttermino: TLabel;
    edtdtterminoi: TcxDateEdit;
    lblatetermino: TLabel;
    edtdtterminof: TcxDateEdit;
    tbsstitordproducaorecurso: TcxTabSheet;
    ToolBar38: TToolBar;
    ToolButton103: TToolButton;
    ToolButton104: TToolButton;
    ToolButton105: TToolButton;
    Label74: TLabel;
    edtcdstitordproducaorecurso: TEdit;
    Label75: TLabel;
    edtnmstitordproducaorecurso: TEdit;
    Bevel27: TBevel;
    lsvstitordproducaorecurso: TcxListView;
    tbstpequipamento: TcxTabSheet;
    tlb4: TToolBar;
    btn4: TToolButton;
    btn5: TToolButton;
    btn6: TToolButton;
    lbl5: TLabel;
    lbl6: TLabel;
    edtcdtpequipamento: TEdit;
    edtnmtpequipamento: TEdit;
    bvl14: TBevel;
    lsvtpequipamento: TcxListView;
    tbstporcamento: TcxTabSheet;
    ToolBar46: TToolBar;
    ToolButton132: TToolButton;
    ToolButton133: TToolButton;
    ToolButton134: TToolButton;
    Label89: TLabel;
    Label90: TLabel;
    Bevel35: TBevel;
    edtcdtporcamento: TEdit;
    edtnmtporcamento: TEdit;
    lsvtporcamento: TcxListView;
    tbstpfornecedor: TcxTabSheet;
    ToolBar47: TToolBar;
    ToolButton135: TToolButton;
    ToolButton136: TToolButton;
    ToolButton137: TToolButton;
    Label91: TLabel;
    Label92: TLabel;
    Bevel36: TBevel;
    edtcdtpfornecedor: TEdit;
    edtnmtpfornecedor: TEdit;
    lsvtpfornecedor: TcxListView;
    tbstptreinamento: TcxTabSheet;
    ToolBar48: TToolBar;
    ToolButton138: TToolButton;
    ToolButton139: TToolButton;
    ToolButton140: TToolButton;
    Label93: TLabel;
    Label94: TLabel;
    Bevel37: TBevel;
    edtcdtptreinamento: TEdit;
    edtnmtptreinamento: TEdit;
    lsvtptreinamento: TcxListView;
    tbstpexameperiodico: TcxTabSheet;
    ToolBar49: TToolBar;
    ToolButton141: TToolButton;
    ToolButton142: TToolButton;
    ToolButton143: TToolButton;
    Label95: TLabel;
    Label96: TLabel;
    Bevel38: TBevel;
    edtcdtpexameperiodico: TEdit;
    edtnmtpexameperiodico: TEdit;
    lsvtpexameperiodico: TcxListView;
    procedure FormShow(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure edtnmfuncionarioChange(Sender: TObject);
    procedure edtnmfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure edtcdstordcompraKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdtpordcompraKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstordcompraChange(Sender: TObject);
    procedure edtnmtpordcompraChange(Sender: TObject);
    procedure edtnmfornecedorChange(Sender: TObject);
    procedure edtnmfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmtpordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmstordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure edtcdtransportadoraKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmtransportadoraChange(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure ToolButton29Click(Sender: TObject);
    procedure edtnmclienteChange(Sender: TObject);
    procedure edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton30Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmprodutoChange(Sender: TObject);
    procedure edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton34Click(Sender: TObject);
    procedure ToolButton35Click(Sender: TObject);
    procedure ToolButton37Click(Sender: TObject);
    procedure edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmgrupoChange(Sender: TObject);
    procedure edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton38Click(Sender: TObject);
    procedure ToolButton39Click(Sender: TObject);
    procedure ToolButton41Click(Sender: TObject);
    procedure edtcdtpsaidaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpsaidaChange(Sender: TObject);
    procedure edtnmtpsaidaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton42Click(Sender: TObject);
    procedure ToolButton43Click(Sender: TObject);
    procedure ToolButton45Click(Sender: TObject);
    procedure edtcdtpordservKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpordservChange(Sender: TObject);
    procedure edtnmtpordservKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton46Click(Sender: TObject);
    procedure ToolButton47Click(Sender: TObject);
    procedure ToolButton49Click(Sender: TObject);
    procedure edtcdtpentradaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpentradaChange(Sender: TObject);
    procedure edtnmtpentradaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxtabelaChange(Sender: TObject);
    procedure ToolButton50Click(Sender: TObject);
    procedure ToolButton51Click(Sender: TObject);
    procedure ToolButton53Click(Sender: TObject);
    procedure edtcdtpmovtoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpmovtoChange(Sender: TObject);
    procedure edtnmtpmovtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton54Click(Sender: TObject);
    procedure ToolButton55Click(Sender: TObject);
    procedure ToolButton57Click(Sender: TObject);
    procedure edtcdcontaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmcontaChange(Sender: TObject);
    procedure edtnmcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton58Click(Sender: TObject);
    procedure ToolButton59Click(Sender: TObject);
    procedure ToolButton61Click(Sender: TObject);
    procedure edtcdmovimentacaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmmovimentacaoChange(Sender: TObject);
    procedure edtnmmovimentacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure edtcdstorcamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstorcamentoChange(Sender: TObject);
    procedure edtnmstorcamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton48Click(Sender: TObject);
    procedure ToolButton52Click(Sender: TObject);
    procedure ToolButton56Click(Sender: TObject);
    procedure ToolButton60Click(Sender: TObject);
    procedure ToolButton64Click(Sender: TObject);
    procedure ToolButton66Click(Sender: TObject);
    procedure edtcdstpedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdcondpagtoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdtpcobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdtppedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtppedidoChange(Sender: TObject);
    procedure edtnmtpcobrancaChange(Sender: TObject);
    procedure edtnmcondpagtoChange(Sender: TObject);
    procedure edtnmrepresentanteChange(Sender: TObject);
    procedure edtnmstpedidoChange(Sender: TObject);
    procedure edtnmtppedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmtpcobrancaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmcondpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmstpedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton27Click(Sender: TObject);
    procedure ToolButton28Click(Sender: TObject);
    procedure ToolButton32Click(Sender: TObject);
    procedure edtcdstordproducaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstordproducaoChange(Sender: TObject);
    procedure edtnmstordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton70Click(Sender: TObject);
    procedure ToolButton71Click(Sender: TObject);
    procedure ToolButton72Click(Sender: TObject);
    procedure edtcdstfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstfornecedorChange(Sender: TObject);
    procedure edtnmstfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edtcdufKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmufChange(Sender: TObject);
    procedure edtnmufKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdrimKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstrimChange(Sender: TObject);
    procedure edtnmstrimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnadicionarrimClick(Sender: TObject);
    procedure btnexcluirstrimClick(Sender: TObject);
    procedure btnexcluirtodasstrimClick(Sender: TObject);
    procedure btnadicionarcntcustoClick(Sender: TObject);
    procedure btnexcluircntcustoClick(Sender: TObject);
    procedure btnexcluirtodascntcustoClick(Sender: TObject);
    procedure edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmcntcustoChange(Sender: TObject);
    procedure edtnmcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton73Click(Sender: TObject);
    procedure ToolButton74Click(Sender: TObject);
    procedure edtnmitcontclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure ToolButton36Click(Sender: TObject);
    procedure ToolButton40Click(Sender: TObject);
    procedure ToolButton44Click(Sender: TObject);
    procedure edtclfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmclfornecedorChange(Sender: TObject);
    procedure edtnmclfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton75Click(Sender: TObject);
    procedure ToolButton76Click(Sender: TObject);
    procedure ToolButton77Click(Sender: TObject);
    procedure edtcdufinicioKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmufinicioChange(Sender: TObject);
    procedure ToolButton78Click(Sender: TObject);
    procedure ToolButton79Click(Sender: TObject);
    procedure ToolButton80Click(Sender: TObject);
    procedure edtcdufterminoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmufterminoChange(Sender: TObject);
    procedure edtnmufinicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmufterminoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton81Click(Sender: TObject);
    procedure ToolButton82Click(Sender: TObject);
    procedure ToolButton83Click(Sender: TObject);
    procedure edtcdmunicipioinicioKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmmunicipioinicioChange(Sender: TObject);
    procedure edtnmmunicipioinicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton84Click(Sender: TObject);
    procedure ToolButton85Click(Sender: TObject);
    procedure ToolButton86Click(Sender: TObject);
    procedure edtcdmunicipioterminoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmmunicipioterminoChange(Sender: TObject);
    procedure edtnmmunicipioterminoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton87Click(Sender: TObject);
    procedure ToolButton88Click(Sender: TObject);
    procedure ToolButton89Click(Sender: TObject);
    procedure edtcdremetenteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmremetenteChange(Sender: TObject);
    procedure edtnmremetenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton90Click(Sender: TObject);
    procedure ToolButton91Click(Sender: TObject);
    procedure ToolButton92Click(Sender: TObject);
    procedure edtcddestinatarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmdestinatarioChange(Sender: TObject);
    procedure edtnmdestinatarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton62Click(Sender: TObject);
    procedure ToolButton93Click(Sender: TObject);
    procedure ToolButton96Click(Sender: TObject);
    procedure ToolButton63Click(Sender: TObject);
    procedure ToolButton94Click(Sender: TObject);
    procedure ToolButton97Click(Sender: TObject);
    procedure ToolButton65Click(Sender: TObject);
    procedure ToolButton95Click(Sender: TObject);
    procedure ToolButton98Click(Sender: TObject);
    procedure edtcdsttarefaKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdtptarefaKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdtptarefa1KeyPress(Sender: TObject; var Key: Char);
    procedure edtnmsttarefaChange(Sender: TObject);
    procedure edtnmtptarefaChange(Sender: TObject);
    procedure edtnmtptarefa1Change(Sender: TObject);
    procedure edtnmsttarefaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmtptarefaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmtptarefa1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPrioridadeAdicionarClick(Sender: TObject);
    procedure btnPrioridadeExcluirClick(Sender: TObject);
    procedure ToolButton99Click(Sender: TObject);
    procedure edtcdprioridadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmprioridadeChange(Sender: TObject);
    procedure edtnmprioridadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton100Click(Sender: TObject);
    procedure ToolButton101Click(Sender: TObject);
    procedure ToolButton102Click(Sender: TObject);
    procedure edtcdatendenteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmatendenteChange(Sender: TObject);
    procedure edtnmatendenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton106Click(Sender: TObject);
    procedure ToolButton107Click(Sender: TObject);
    procedure ToolButton108Click(Sender: TObject);
    procedure edtcdequipamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmequipamentoChange(Sender: TObject);
    procedure edtnmequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton109Click(Sender: TObject);
    procedure ToolButton110Click(Sender: TObject);
    procedure ToolButton111Click(Sender: TObject);
    procedure edtcdetapaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmetapaChange(Sender: TObject);
    procedure edtnmetapaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton112Click(Sender: TObject);
    procedure ToolButton113Click(Sender: TObject);
    procedure ToolButton114Click(Sender: TObject);
    procedure edtcdtpordproducaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpordproducaoChange(Sender: TObject);
    procedure edtnmtpordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton115Click(Sender: TObject);
    procedure ToolButton116Click(Sender: TObject);
    procedure ToolButton117Click(Sender: TObject);
    procedure edtcdtpclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpclienteChange(Sender: TObject);
    procedure edtnmtpclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton118Click(Sender: TObject);
    procedure ToolButton119Click(Sender: TObject);
    procedure ToolButton120Click(Sender: TObject);
    procedure edtcdstordservKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstordservChange(Sender: TObject);
    procedure edtnmstordservKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton124Click(Sender: TObject);
    procedure ToolButton125Click(Sender: TObject);
    procedure ToolButton126Click(Sender: TObject);
    procedure edtcdtprpaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtprpaChange(Sender: TObject);
    procedure edtnmtprpaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton121Click(Sender: TObject);
    procedure ToolButton122Click(Sender: TObject);
    procedure ToolButton123Click(Sender: TObject);
    procedure edtcdtpparadaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpparadaChange(Sender: TObject);
    procedure edtnmtpparadaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton127Click(Sender: TObject);
    procedure ToolButton128Click(Sender: TObject);
    procedure edtdstagKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton129Click(Sender: TObject);
    procedure ToolButton130Click(Sender: TObject);
    procedure ToolButton131Click(Sender: TObject);
    procedure edtcdtecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtecnicoChange(Sender: TObject);
    procedure edtnmtecnicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton103Click(Sender: TObject);
    procedure ToolButton104Click(Sender: TObject);
    procedure ToolButton105Click(Sender: TObject);
    procedure edtcdstitordproducaorecursoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstitordproducaorecursoChange(Sender: TObject);
    procedure edtnmstitordproducaorecursoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure edtcdtpequipamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpequipamentoChange(Sender: TObject);
    procedure edtnmtpequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtporcamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtporcamentoChange(Sender: TObject);
    procedure edtnmtporcamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton132Click(Sender: TObject);
    procedure ToolButton133Click(Sender: TObject);
    procedure ToolButton134Click(Sender: TObject);
    procedure ToolButton135Click(Sender: TObject);
    procedure ToolButton136Click(Sender: TObject);
    procedure ToolButton137Click(Sender: TObject);
    procedure edtcdtpfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpfornecedorChange(Sender: TObject);
    procedure edtnmtpfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton138Click(Sender: TObject);
    procedure ToolButton139Click(Sender: TObject);
    procedure ToolButton140Click(Sender: TObject);
    procedure edtcdtptreinamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtptreinamentoChange(Sender: TObject);
    procedure edtnmtptreinamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton141Click(Sender: TObject);
    procedure ToolButton142Click(Sender: TObject);
    procedure ToolButton143Click(Sender: TObject);
    procedure edtcdtpexameperiodicoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpexameperiodicoChange(Sender: TObject);
    procedure edtnmtpexameperiodicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private    { Private declarations }
    ordcompra : TOrdCompra;
    //cte : TCTE2;
    cteimportar : TCteImportar;
    fornecedor : tfornecedor;
    lista : TStrings;
    tpcodigo : string;
    executar_on_change_equipamento,
    executar_on_change_tpequipamento,
    executar_on_change_tporcamento,
    executar_on_change_tpfornecedor,
    executar_on_change_stitordproducaorecurso,
    executar_on_change_tag,
    executar_on_change_tpparada,
    executar_on_change_atendente,
    executar_on_change_tecnico,
    executar_on_change_prioridade,
    executar_on_change_etapa,
    executar_on_change_tpcliente,
    executar_on_change_sttarefa,
    executar_on_change_tptarefa,
    executar_on_change_tptarefa1,
    executar_on_change_clfornecedor,
    executar_on_change_remetente,
    executar_on_change_destinatario,
    executar_on_change_cntcusto,
    executar_on_change_strim,
    executar_on_change_tppedido,
    executar_on_change_representante,
    executar_on_change_condpagto,
    executar_on_change_tpcobranca,
    executar_on_change_storcamento,
    executar_on_change_stpedido,
    executar_on_change_funcionario,
    executar_on_change_transportadora,
    executar_on_change_tprpa,
    executar_on_change_tpordcompra,
    executar_on_change_stordcompra,
    executar_on_change_fornecedor,
    executar_on_change_cliente,
    executar_on_change_produto,
    executar_on_change_grupo,
    executar_on_change_tpsaida,
    executar_on_change_tpordserv,
    executar_on_change_stordserv,
    executar_on_change_tpentrada,
    executar_on_change_tpmovto,
    executar_on_change_conta,
    executar_on_change_itcontcliente,
    executar_on_change_uf,
    executar_on_change_movimentacao,
    executar_on_change_stordproducao,
    executar_on_change_tpordproducao,
    executar_on_change_stfornecedor,
    executar_on_change_uf_inicio,
    executar_on_change_uf_termino,
    executar_on_change_tptreinamento,
    executar_on_change_tpexameperiodico,
    executar_on_change_municipio_inicio,
    executar_on_change_municipio_termino : boolean;
    cdequipamento,
    cdremetente,
    cddestinatario,
    cdcliente,
    cdtpentrada,
    cdtpmovto,
    dstag,
    cdtptreinamento,
    cdtpexameperiodico,
    cdtpordserv,
    cdstordserv,
    cdtpsaida,
    cdproduto,
    cdgrupo,
    cdtransportadora,
    cdtprpa,
    cdtpparada,
    cdstitordproducaorecurso, 
    cdtpequipamento, 
    cdstordcompra,
    cdtpordcompra,
    cdfornecedor,
    cdfuncionario,
    cdtppedido,
    cdsttarefa,
    cdtptarefa,
    cdtptarefa1,
    cduf,
    cdcondpagto,
    cdstorcamento,
    cdtporcamento,
    cdtpfornecedor,
    cdtpcobranca,
    cdstcliente,
    cdmunicipio,
    cdtpcliente,
    cdrota,
    cdrepresentante,
    cdconta,
    cdmovimentacao,
    cdrmatividade,
    cdfuncionariotecnico,
    cdfuncionarioatendente,
    cdprioridade,
    cdetapa,
    nmitcontcliente,
    cdclfornecedor,
    cdstrim,
    cdstfornecedor,
    cdstordproducao,
    cdtpordproducao,
    cdcntcusto,
    cdufinicio,
    cduftermino,
    cdmunicipioinicio,
    cdmunicipiotermino : tstrings;
    procedure set_report_user;
    procedure set_treeview;
    procedure exportar_excel(nmconsulta:string);
    procedure imprimir_relatorio;
    procedure set_lista;
    procedure criar_objetos;
    procedure preencher_lista;
    procedure executar_funcao;
    function  makesql16:string;
    function  makesql1:string;
    function  makesql72:string;
    function  makesql73:string;
    function  makesqlwhereequipamento:string;
    function  makesqlwhereordserv(cdreport:Integer=0):string;
    function  makesql55:string;
    function  makesqlwhereacao:string;
    function  makesqlwheretarefa:string;
    function  makesql009:string;
    function  makesql053:string;
    function  makesql471:string;
    function  makesql003:string;
    function  makesql649:string;
    function  consistir_data:string;
    function  makesql506:string;
    function  makesqlwherefornecedorcadastro:string;
    function  makesqlwherefornecedorcritico:string;
    function  makesqlwhereordcompra:string;
    function  makesqlwhereiqf:string;
    function  makesqlwhereiqf423:string;
    function  makesqlwherecteautpagtorpa:string;
    function  makesqlwhere17:string;
    function  makesqlwhere12:string;
    function  makesqlwhere11:string;
    function  makesqlwhere21:string;
    function  makesqlwhere23:string;
    function  makesqlwhere24:string;
    function  makesqlwheredtemissao:string;
    function  makesqlwherecte:string;
    function  makesqlwhererim:string;
    function  makesqlwhereorcamentoproduto:string;
    function  makesqlwhereorcamento:string;
    function  makesqlwhereapontamento:string;
    function  makesqlwhereordproducaoatrasado:string;
    function  makesql20:string;
    function  makesql18:string;
    function  makesqlwhereordproducao(boand:Boolean=False):string;
    function  makesqlwhereordproducao43(boand:Boolean=False):string;
    function  makesqlwhereordproducao52:string;
    procedure setfalse;
    procedure setdata(edtdti, edtdtf: TCxDateEdit; lbl, lblate: TLabel;status:boolean);
    procedure setdata2(status:boolean);
    procedure setcurvaabc(bo:boolean);
    procedure setactivepage;
    procedure setcomponentes;
    procedure Limpar_lista;
    procedure set_cte(no1, no2 : TTreeNode);
    procedure set_fornecedor(no1, no2 : TTreeNode);
    procedure set_funcionario(no1, no2 : TTreeNode);
    procedure set_locacao(no1, no2 : TTreeNode);
    procedure set_orcamento(no1, no2 : TTreeNode);
    procedure set_ordcompra(no1, no2 : TTreeNode);
    procedure set_ordproducao(no1, no2 : TTreeNode);
    procedure set_ordserv(no1, no2 : TTreeNode);
    procedure set_parada(no1, no2 : TTreeNode);
    procedure set_rim(no1, no2 : TTreeNode);
    procedure set_tarefa(no1, no2 : TTreeNode);
    procedure set_transportadora(no1, no2 : TTreeNode);
    procedure set_funcao(no1, no2 : TTreeNode);
    procedure set_embarque(no1, no2: TTreeNode);
    procedure CorrigirNomeBenefiado;
  public    { Public declarations }
  end;

var
  frmconsulta: Tfrmconsulta;

implementation

uses
  uLocalizar,
  uMain,
  //uconsultafornecedorImprimirEtiqueta,
  //uconsultaimprimirCurvaABC,
  uimprimirrelatoriopadrao,
  {$IFDEF VER210}uconsultasaidaImprimirMensalProdutoPM,{$ENDIF}
  {$IFDEF VER210}uconsultasaidaImprimirMensalProdutoPP,{$ENDIF}
  uDtmMain,
  //uconsultaOrdServImprimirPrimeiraOS,
  uimp_grafico_pareto_tpparada;

{$R *.dfm}


procedure Tfrmconsulta.FormShow(Sender: TObject);
begin
  tpcodigo        := 'Código';
  ntb.ActivePage  := 'Default';
  trv.Items[1].Expand(true);
end;

procedure Tfrmconsulta.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvfuncionario);
end;

procedure Tfrmconsulta.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvfuncionario);
end;

procedure Tfrmconsulta.ToolButton120Click(Sender: TObject);
begin
  lsvstordserv.Clear;
end;

procedure Tfrmconsulta.ToolButton12Click(Sender: TObject);
begin
  lsvfuncionario.Clear;
end;

procedure Tfrmconsulta.actGerarExecute(Sender: TObject);
begin
  try
    Limpar_lista;
    preencher_lista;
    if (trv.selected.text = '001 - Lista de Cesta Básica') or
       (trv.selected.text = '016 - Pagamento Convênio') then
    begin
      consistir_data;
    end;
    TQForm.mudarcontroles(self, false);
    if trv.selected.parent.text = 'Exportar para Excel' then
    begin
      exportar_excel(trv.selected.text);
      Exit;
    end;
    executar_funcao;
    imprimir_relatorio;
  finally
    TQForm.mudarcontroles(self, true);
  end;
end;

procedure Tfrmconsulta.edtnmfuncionarioChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_funcionario);
end;

procedure Tfrmconsulta.edtnmfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvfuncionario, executar_on_change_funcionario, tedit(sender), key);
end;

procedure Tfrmconsulta.edtcdfuncionarioKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvfuncionario, TEdit(sender), key);
end;

procedure Tfrmconsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconsulta.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvstordcompra);
end;

procedure Tfrmconsulta.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvstordcompra);
end;

procedure Tfrmconsulta.ToolButton4Click(Sender: TObject);
begin
  lsvstordcompra.Clear;
end;

procedure Tfrmconsulta.ToolButton5Click(Sender: TObject);
begin
  AdicionarListView(lsvtpordcompra);
end;

procedure Tfrmconsulta.ToolButton6Click(Sender: TObject);
begin
  ExcluirListView(lsvtpordcompra);
end;

procedure Tfrmconsulta.ToolButton8Click(Sender: TObject);
begin
  lsvtpordcompra.Clear;
end;

procedure Tfrmconsulta.ToolButton16Click(Sender: TObject);
begin
  lsvfornecedor.Clear;
end;

procedure Tfrmconsulta.edtcdstordcompraKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstordcompra, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdtpordcompraKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstordcompra, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdtpordproducaoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpordproducao, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvfornecedor, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmstordcompraChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stordcompra);
end;

procedure Tfrmconsulta.edtnmtpordcompraChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpordcompra);
end;

procedure Tfrmconsulta.edtnmfornecedorChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_fornecedor);
end;

procedure Tfrmconsulta.edtnmfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvfornecedor, executar_on_change_fornecedor, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpordcompra, executar_on_change_tpordcompra, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpordproducaoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpordproducao);
end;

procedure Tfrmconsulta.edtnmtpordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpordproducao, executar_on_change_tpordproducao, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmstordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpordcompra, executar_on_change_stordcompra, tedit(sender), key);
end;

procedure Tfrmconsulta.setdata(edtdti, edtdtf: TCxDateEdit; lbl, lblate: TLabel;status:boolean);
begin
  edtdti.Visible := status;
  edtdtf.Visible := status;
  lbl.Visible    := status;
  lblate.Visible := status;
end;

procedure Tfrmconsulta.setdata2(status:boolean);
begin
  edtdti.Visible := status;
  edtdtf.Visible := status;
  lbli.Visible   := status;
  lblf.Visible   := status;
end;

procedure Tfrmconsulta.setcurvaabc(bo:boolean);
begin
  lbltabela.visible     := bo;
  cbxtabela.visible     := bo;
  rdgtpcurvaabc.visible := bo;
  rdgorientacao.Visible := bo;
end;

procedure Tfrmconsulta.setactivepage;
var
  i : integer;
begin
  pgc.Visible := false;
  for i := 0 to pgc.PageCount - 1 do
  begin
    if pgc.Pages[i].TabVisible then
    begin
      pgc.Visible    := true;
      pgc.ActivePage := pgc.Pages[i];
      break;
    end;
  end;
end;

procedure Tfrmconsulta.setcomponentes;
var
  i : integer;
begin
  setfalse;
  for i := 0 to lista.Count - 1 do
  begin
         if lista[i] = _dtemissao          then setdata(edtdtemissaoi   , edtdtemissaof   , lblemissao   , lblateemissao   , true)
    else if lista[i] = _dtentrada          then setdata(edtdtei         , edtdtef         , lblentrada   , lblateentrada   , true)
    else if lista[i] = _dttermino          then setdata(edtdtterminoi   , edtdtterminof   , lbldttermino , lblatetermino   , True)
    else if lista[i] = _dtsaida            then setdata(edtdtsi         , edtdtsf         , lblsaida     , lblatesaida     , true)
    else if lista[i] = _dtvencimento       then setdata(edtdtvencimentoi, edtdtvencimentof, lblvencimento, lblatevencimento, true)
    else if lista[i] = _dtprventrega       then setdata(edtdtprventregai, edtdtprventregaf, lblprventrega, lblateprventrega, true)
    else if lista[i] = _dtentrega          then setdata(edtdtentregai   , edtdtentregaf   , lblentrega   , lblateentrega   , true)
    else if lista[i] = _data               then setdata2(true)
    else if lista[i] = _curva+_abc         then setcurvaabc(true)
    else if lista[i] = _tecnico            then tbstecnico.TabVisible          := true
    else if lista[i] = _atendente          then tbsatendente.TabVisible        := true
    else if lista[i] = _equipamento        then tbsequipamento.TabVisible      := true
    else if lista[i] = _tag                then tbstag.TabVisible              := True               
    else if lista[i] = _prioridade         then tbsprioridade.TabVisible       := true
    else if lista[i] = _etapa              then tbsetapa.TabVisible            := true
    else if lista[i] = _cliente            then tbscliente.TabVisible          := true
    else if lista[i] = _remetente          then tbsremetente.TabVisible        := true
    else if lista[i] = _destinatario       then tbsdestinatario.TabVisible     := true
    else if lista[i] = _itcontcliente      then tbsitcontcliente.TabVisible    := true
    else if lista[i] = _cntcusto           then tbscntcusto.TabVisible         := true
    else if lista[i] = _strim              then tbsstrim.TabVisible            := true
    else if lista[i] = _clfornecedor       then tbsclfornecedor.TabVisible     := true
    else if lista[i] = _stpedido           then tbsstpedido.TabVisible         := true
    else if lista[i] = _representante      then tbsrepresentante.TabVisible    := true
    else if lista[i] = _grupo              then tbsgrupo.TabVisible            := true
    else if lista[i] = _condpagto          then tbscondpagto.TabVisible        := true
    else if lista[i] = _tpcobranca         then tbstpcobranca.TabVisible       := true
    else if lista[i] = _tppedido           then tbstppedido.TabVisible         := true
    else if lista[i] = _sttarefa           then tbssttarefa.TabVisible         := true
    else if lista[i] = _tptarefa           then tbstptarefa.TabVisible         := true
    else if lista[i] = _tptarefa1          then tbstptarefa1.TabVisible        := true
    else if lista[i] = _stordproducao      then tbsstordproducao.TabVisible    := true
    else if lista[i] = _tpordproducao      then tbstpordproducao.TabVisible    := true
    else if lista[i] = _stordcompra        then tbsstordcompra.TabVisible      := true
    else if lista[i] = _tpordcompra        then tbstpordcompra.TabVisible      := true
    else if lista[i] = _funcionario        then tbsfuncionario.TabVisible      := true
    else if lista[i] = _tptreinamento      then tbstptreinamento.TabVisible    := true
    else if lista[i] = _tpexameperiodico      then tbstpexameperiodico.TabVisible    := true
    else if lista[i] = _Transportadora     then tbsTransportadora.TabVisible   := true
    else if lista[i] = _tprpa              then tbstprpa.tabvisible            := True
    else if lista[i] = _tpparada           then tbstpparada.tabvisible         := True
    else if lista[i] = _tpsaida            then tbstpsaida.TabVisible          := true
    else if lista[i] = _tpordserv          then tbstpordserv.TabVisible        := true
    else if lista[i] = _stordserv          then tbsstordserv.TabVisible        := true
    else if lista[i] = _tpentrada          then tbstpentrada.TabVisible        := true
    else if lista[i] = _tpmovto            then tbstpmovto.TabVisible          := true
    else if lista[i] = _tpcliente          then tbstpcliente.TabVisible        := true
    else if lista[i] = _conta              then tbsconta.TabVisible            := true
    else if lista[i] = _movimentacao       then tbsmovimentacao.TabVisible     := true
    else if lista[i] = _produto            then tbsproduto.TabVisible          := true
    else if lista[i] = _storcamento        then tbsstorcamento.TabVisible      := true
    else if lista[i] = _tporcamento        then tbstporcamento.TabVisible      := true
    else if lista[i] = _tpfornecedor       then tbstpfornecedor.TabVisible      := true
    else if lista[i] = _tpequipamento      then tbstpequipamento.TabVisible    := true
    else if lista[i] = _stfornecedor       then tbsstfornecedor.TabVisible     := true
    else if lista[i] = _fornecedor         then tbsfornecedor.TabVisible       := true
    else if lista[i] = _municipio+_inicio  then tbsmunicipioinicio.TabVisible  := true
    else if lista[i] = _municipio+_termino then tbsmunicipiotermino.TabVisible := true
    else if lista[i] = _uf+_inicio         then tbsufinicio.TabVisible         := true
    else if lista[i] = _uf+_termino        then tbsuftermino.TabVisible        := true
    else if lista[i] = _uf                 then tbsuf.TabVisible               := true
    else if lista[i] = _cbx+_quebra        then cbxquebra.Visible              := true;
  end;
  setactivepage;
end;

procedure Tfrmconsulta.trvChange(Sender: TObject; Node: TTreeNode);
begin
  try
    if node.Level = 0 then
    begin
      exit;
    end;
    if node.Parent.Text = 'Exportar para Excel' then
    begin
      actGerar.Enabled := true;
      Exit;
    end;
    set_lista;
    actGerar.Enabled := lista.Text <> '';
  finally
    setcomponentes;
  end;
end;

procedure Tfrmconsulta.ToolButton17Click(Sender: TObject);
begin
  AdicionarListView(lsvtransportadora);
end;

procedure Tfrmconsulta.ToolButton18Click(Sender: TObject);
begin
  ExcluirListView(lsvtransportadora);
end;

procedure Tfrmconsulta.ToolButton20Click(Sender: TObject);
begin
  lsvtransportadora.Clear;
end;

procedure Tfrmconsulta.edtcdtransportadoraKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtransportadora, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtransportadora, executar_on_change_transportadora, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmtransportadoraChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_transportadora);
end;

procedure Tfrmconsulta.ToolButton23Click(Sender: TObject);
begin
  AdicionarListview(lsvcliente)
end;

procedure Tfrmconsulta.ToolButton24Click(Sender: TObject);
begin
  ExcluirListView(lsvcliente);
end;

procedure Tfrmconsulta.ToolButton29Click(Sender: TObject);
begin
  lsvCliente.Clear;
end;

procedure Tfrmconsulta.edtnmclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cliente);
end;

procedure Tfrmconsulta.edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcliente, executar_on_change_cliente, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton30Click(Sender: TObject);
begin
  AdicionarListView(lsvproduto);
end;

procedure Tfrmconsulta.ToolButton31Click(Sender: TObject);
begin
  ExcluirListView(lsvproduto);
end;

procedure Tfrmconsulta.ToolButton33Click(Sender: TObject);
begin
  lsvproduto.Clear;
end;

procedure Tfrmconsulta.edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvproduto, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmprodutoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_produto);
end;

procedure Tfrmconsulta.edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvproduto, executar_on_change_produto, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton34Click(Sender: TObject);
begin
  AdicionarListView(lsvgrupo);
end;

procedure Tfrmconsulta.ToolButton35Click(Sender: TObject);
begin
  ExcluirListView(lsvgrupo);
end;

procedure Tfrmconsulta.ToolButton37Click(Sender: TObject);
begin
  lsvGrupo.Clear;
end;

procedure Tfrmconsulta.edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvgrupo, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmgrupoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_grupo);
end;

procedure Tfrmconsulta.edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvGrupo, executar_on_change_Grupo, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton38Click(Sender: TObject);
begin
  AdicionarListView(lsvtpsaida);
end;

procedure Tfrmconsulta.ToolButton39Click(Sender: TObject);
begin
  ExcluirListView(lsvtpsaida);
end;

procedure Tfrmconsulta.ToolButton41Click(Sender: TObject);
begin
  lsvtpsaida.Clear;
end;

procedure Tfrmconsulta.edtcdtpsaidaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpsaida, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpsaidaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpsaida);
end;

procedure Tfrmconsulta.edtnmtpsaidaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpsaida, executar_on_change_tpsaida, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton42Click(Sender: TObject);
begin
  AdicionarListView(lsvtpordserv);
end;

procedure Tfrmconsulta.ToolButton43Click(Sender: TObject);
begin
  ExcluirListView(lsvtpordserv);
end;

procedure Tfrmconsulta.ToolButton45Click(Sender: TObject);
begin
  lsvtpordserv.Clear;
end;

procedure Tfrmconsulta.edtcdtpordservKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpordserv, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpordservChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpordserv);
end;

procedure Tfrmconsulta.edtnmtpordservKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpordserv, executar_on_change_tpordserv, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton46Click(Sender: TObject);
begin
  AdicionarListView(lsvtpentrada);
end;

procedure Tfrmconsulta.ToolButton47Click(Sender: TObject);
begin
  ExcluirListView(lsvtpentrada);
end;

procedure Tfrmconsulta.ToolButton49Click(Sender: TObject);
begin
  lsvtpentrada.Clear;
end;

procedure Tfrmconsulta.edtcdtpentradaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpentrada, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpentradaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpentrada);
end;

procedure Tfrmconsulta.edtnmtpentradaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpentrada, executar_on_change_tpentrada, tedit(sender), key);
end;

procedure Tfrmconsulta.cbxtabelaChange(Sender: TObject);
begin
  pgc.Visible := true;
  if cbxtabela.text = 'Movimento Bancário' then
  begin
    rdgorientacao.Visible      := false;
    tbsmovimentacao.tabvisible := true;
    tbsconta.TabVisible        := true;
    tbsfornecedor.TabVisible   := false;
    tbsproduto.TabVisible      := false;
    tbsGrupo.TabVisible        := false;
    tbstpentrada.TabVisible    := false;
    tbstpmovto.tabvisible      := false;
    tbstpsaida.TabVisible      := false;
    tbstpordserv.TabVisible    := false;
    tbscliente.TabVisible      := false;
    //
    lsvcliente.clear;
    lsvfornecedor.clear;
    lsvproduto.clear;
    lsvGrupo.clear;
    lsvtpentrada.clear;
    lsvtpmovto.clear;
    lsvtpsaida.clear;
    lsvtpordserv.clear;
  end
  else if cbxtabela.Text = 'Compra' then
  begin
    rdgorientacao.Visible      := true;
    tbsmovimentacao.tabvisible := false;
    tbsconta.TabVisible        := false;
    tbsfornecedor.TabVisible   := true;
    tbsproduto.TabVisible      := true;
    tbsGrupo.TabVisible        := true;
    tbstpentrada.TabVisible    := true;
    tbstpmovto.tabvisible      := false;
    tbstpsaida.TabVisible      := false;
    tbstpordserv.TabVisible    := false;
    //
    lsvmovimentacao.clear;
    lsvconta.clear;
    lsvtpmovto.clear;
    lsvtpsaida.clear;
    lsvtpordserv.clear;
  end
  else if cbxtabela.Text = 'Movimentação Estoque' then
  begin
    rdgorientacao.Visible      := true;
    tbsmovimentacao.tabvisible := false;
    tbsconta.TabVisible        := false;
    tbsfornecedor.TabVisible   := false;
    tbsproduto.TabVisible      := true;
    tbsGrupo.TabVisible        := true;
    tbstpmovto.tabvisible      := true;
    tbstpentrada.TabVisible    := false;
    tbstpsaida.TabVisible      := false;
    tbstpordserv.TabVisible    := false;
    //
    lsvmovimentacao.clear;
    lsvconta.clear;
    lsvfornecedor.clear;
    lsvtpentrada.clear;
    lsvtpsaida.clear;
    lsvtpordserv.clear;
  end
  else if cbxtabela.Text = 'Nota Fiscal' then
  begin
    rdgorientacao.Visible      := true;
    tbsmovimentacao.tabvisible := false;
    tbsconta.TabVisible        := false;
    tbsfornecedor.TabVisible   := false;
    tbstpsaida.TabVisible      := true;
    tbscliente.TabVisible      := true;
    tbsproduto.TabVisible      := true;
    tbsGrupo.TabVisible        := true;
    tbstpentrada.TabVisible    := false;
    tbstpmovto.tabvisible      := false;
    tbstpordserv.TabVisible    := false;
    //
    lsvmovimentacao.clear;
    lsvconta.clear;
    lsvfornecedor.clear;
    lsvtpentrada.clear;
    lsvtpmovto.clear;
    lsvtpordserv.clear;
  end
  else if cbxtabela.Text = 'Ordem Serviço' then
  begin
    rdgorientacao.Visible      := true;
    tbsmovimentacao.tabvisible := false;
    tbsconta.TabVisible        := false;
    tbsfornecedor.TabVisible   := false;
    tbstpordserv.TabVisible    := true;
    tbscliente.TabVisible      := true;
    tbsproduto.TabVisible      := true;
    tbsGrupo.TabVisible        := true;
    tbstpentrada.TabVisible    := false;
    tbstpmovto.tabvisible      := false;
    tbstpsaida.TabVisible      := false;
    //
    lsvmovimentacao.clear;
    lsvconta.clear;
    lsvfornecedor.clear;
    lsvtpentrada.clear;
    lsvtpmovto.clear;
    lsvtpsaida.clear;
  end
  else if cbxtabela.Text = 'Pedido' then
  begin
    rdgorientacao.Visible      := true;
    tbsmovimentacao.tabvisible := false;
    tbsconta.TabVisible        := false;
    tbsfornecedor.TabVisible   := false;
    tbscliente.TabVisible      := true;
    tbsproduto.TabVisible      := true;
    tbsGrupo.TabVisible        := true;
    tbstpentrada.TabVisible    := false;
    tbstpmovto.tabvisible      := false;
    tbstpsaida.TabVisible      := false;
    tbstpordserv.TabVisible    := false;
    //
    lsvmovimentacao.clear;
    lsvconta.clear;
    lsvfornecedor.clear;
    lsvtpentrada.clear;
    lsvtpmovto.clear;
    lsvtpsaida.clear;
    lsvtpordserv.clear;
  end;
end;

procedure Tfrmconsulta.ToolButton50Click(Sender: TObject);
begin
  AdicionarListView(lsvtpmovto);
end;

procedure Tfrmconsulta.ToolButton51Click(Sender: TObject);
begin
  ExcluirListView(lsvtpmovto);
end;

procedure Tfrmconsulta.ToolButton53Click(Sender: TObject);
begin
  lsvtpmovto.Clear;
end;

procedure Tfrmconsulta.edtcdtpmovtoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpmovto, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpmovtoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpmovto);
end;

procedure Tfrmconsulta.edtnmtpmovtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpmovto, executar_on_change_tpmovto, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton54Click(Sender: TObject);
begin
  AdicionarListView(lsvconta);
end;

procedure Tfrmconsulta.ToolButton55Click(Sender: TObject);
begin
  ExcluirListView(lsvconta);
end;

procedure Tfrmconsulta.ToolButton57Click(Sender: TObject);
begin
  lsvconta.Clear;
end;

procedure Tfrmconsulta.edtcdcontaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvconta, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmcontaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_conta);
end;

procedure Tfrmconsulta.edtnmcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvconta, executar_on_change_conta, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton58Click(Sender: TObject);
begin
  AdicionarListView(lsvmovimentacao);
end;

procedure Tfrmconsulta.ToolButton59Click(Sender: TObject);
begin
  ExcluirListView(lsvmovimentacao);
end;

procedure Tfrmconsulta.ToolButton61Click(Sender: TObject);
begin
  lsvmovimentacao.Clear;
end;

procedure Tfrmconsulta.edtcdmovimentacaoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvmovimentacao, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmmovimentacaoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_movimentacao);
end;

procedure Tfrmconsulta.edtnmmovimentacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvmovimentacao, executar_on_change_movimentacao, tedit(sender), key);
end;

procedure Tfrmconsulta.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure Tfrmconsulta.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
var
  ListItem: TListItem;
  cdcliente : string;
  i : integer;
begin
  if (key <> #13) or (not codigoexiste(_cliente, edtcdcliente.text)) then
  begin
    exit;
  end;
  cdcliente := edtcdcliente.text;
  edtcdcliente.Clear;
  for i := 0 to lsvcliente.Items.Count - 1 do
  begin
    if lsvcliente.Items.Item[i].Caption = cdcliente then
    begin
      exit;
    end;
  end;
  ListItem         := lsvcliente.Items.Add;
  ListItem.Caption := cdcliente;
  ListItem.SubItems.Add(NomedoCodigo(_cliente, cdcliente));
end;

procedure Tfrmconsulta.ToolButton3Click(Sender: TObject);
begin
  AdicionarListView(lsvstorcamento);
end;

procedure Tfrmconsulta.ToolButton7Click(Sender: TObject);
begin
  ExcluirListView(lsvstorcamento);
end;

procedure Tfrmconsulta.ToolButton11Click(Sender: TObject);
begin
  lsvstorcamento.Clear;
end;

procedure Tfrmconsulta.edtcdstorcamentoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstorcamento, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmstorcamentoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_storcamento);
end;

procedure Tfrmconsulta.edtnmstorcamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstorcamento, executar_on_change_storcamento, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton48Click(Sender: TObject);
begin
  AdicionarListView(lsvcondpagto);
end;

procedure Tfrmconsulta.ToolButton52Click(Sender: TObject);
begin
  ExcluirListView(lsvcondpagto);
end;

procedure Tfrmconsulta.ToolButton56Click(Sender: TObject);
begin
  lsvcondpagto.Clear;
end;

procedure Tfrmconsulta.ToolButton60Click(Sender: TObject);
begin
  AdicionarListView(lsvtpcobranca);
end;

procedure Tfrmconsulta.ToolButton64Click(Sender: TObject);
begin
  ExcluirListView(lsvtpcobranca);
end;

procedure Tfrmconsulta.ToolButton66Click(Sender: TObject);
begin
  lsvtpcobranca.Clear;
end;

procedure Tfrmconsulta.edtcdstpedidoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstpedido, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvrepresentante, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdcondpagtoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcondpagto, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdtpclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpcliente, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdtpcobrancaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpcobranca, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdtppedidoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtppedido, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtppedidoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tppedido);
end;

procedure Tfrmconsulta.edtnmtpclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpcliente);
end;

procedure Tfrmconsulta.edtnmtpclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpcliente, executar_on_change_tpcliente, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpcobrancaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpcobranca);
end;

procedure Tfrmconsulta.edtnmcondpagtoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_condpagto);
end;

procedure Tfrmconsulta.edtnmrepresentanteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_representante);
end;

procedure Tfrmconsulta.edtnmstpedidoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stpedido);
end;

procedure Tfrmconsulta.edtnmtppedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtppedido, executar_on_change_tppedido, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpcobrancaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpcobranca, executar_on_change_tpcobranca, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmcondpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcondpagto, executar_on_change_condpagto, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvrepresentante, executar_on_change_representante, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmstpedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstpedido, executar_on_change_stpedido, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton27Click(Sender: TObject);
begin
  AdicionarListView(lsvstordproducao);
end;

procedure Tfrmconsulta.ToolButton28Click(Sender: TObject);
begin
  ExcluirListView(lsvstordproducao);
end;

procedure Tfrmconsulta.ToolButton32Click(Sender: TObject);
begin
  lsvstordproducao.Clear;
end;

procedure Tfrmconsulta.edtcdstordproducaoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstordproducao, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdstordservKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstordserv, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmstordproducaoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stordproducao);
end;

procedure Tfrmconsulta.edtnmstordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstordproducao, executar_on_change_stordproducao, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmstordservChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stordserv);
end;

procedure Tfrmconsulta.edtnmstordservKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstordserv, executar_on_change_stordserv, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton70Click(Sender: TObject);
begin
  AdicionarListView(lsvstfornecedor);
end;

procedure Tfrmconsulta.ToolButton71Click(Sender: TObject);
begin
  ExcluirListView(lsvstfornecedor);
end;

procedure Tfrmconsulta.ToolButton72Click(Sender: TObject);
begin
  lsvstfornecedor.Clear;
end;

procedure Tfrmconsulta.edtcdstfornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstfornecedor, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmstfornecedorChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stfornecedor);
end;

procedure Tfrmconsulta.edtnmstfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstfornecedor, executar_on_change_stfornecedor, tedit(sender), key);
end;

procedure Tfrmconsulta.btn1Click(Sender: TObject);
begin
  AdicionarListView(lsvuf);
end;

procedure Tfrmconsulta.btn2Click(Sender: TObject);
begin
  ExcluirListView(lsvuf);
end;

procedure Tfrmconsulta.btn3Click(Sender: TObject);
begin
  lsvuf.Clear;
end;

procedure Tfrmconsulta.edtcdufKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvuf, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmufChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_uf);
end;

procedure Tfrmconsulta.edtnmufKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvuf, executar_on_change_uf, tedit(sender), key);
end;

procedure Tfrmconsulta.edtcdrimKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstrim, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmstrimChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_strim);
end;

procedure Tfrmconsulta.edtnmstrimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstrim, executar_on_change_strim, tedit(sender), key);
end;

procedure Tfrmconsulta.btnadicionarrimClick(Sender: TObject);
begin
  AdicionarListView(lsvstrim);
end;

procedure Tfrmconsulta.btnexcluirstrimClick(Sender: TObject);
begin
  ExcluirListView(lsvstrim);
end;

procedure Tfrmconsulta.btnexcluirtodasstrimClick(Sender: TObject);
begin
  lsvstrim.Clear;
end;

procedure Tfrmconsulta.btnadicionarcntcustoClick(Sender: TObject);
begin
  AdicionarListView(lsvcntcusto);
end;

procedure Tfrmconsulta.btnexcluircntcustoClick(Sender: TObject);
begin
  ExcluirListView(lsvcntcusto);
end;

procedure Tfrmconsulta.btnexcluirtodascntcustoClick(Sender: TObject);
begin
  lsvcntcusto.Clear;
end;

procedure Tfrmconsulta.edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcntcusto, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmcntcustoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cntcusto);
end;

procedure Tfrmconsulta.edtnmcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcntcusto, executar_on_change_cntcusto, tedit(sender), key);
end;

procedure Tfrmconsulta.FormCreate(Sender: TObject);
begin
  set_treeview;
  set_report_user;
  criar_objetos;
end;

procedure Tfrmconsulta.ToolButton73Click(Sender: TObject);
begin
  ExcluirListView(lsvnmitcontcliente);
end;

procedure Tfrmconsulta.ToolButton74Click(Sender: TObject);
begin
  lsvnmitcontcliente.Clear;
end;

procedure Tfrmconsulta.edtnmitcontclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvnmitcontcliente, executar_on_change_itcontcliente, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton22Click(Sender: TObject);
begin
  AdicionarListView(lsvrepresentante);
end;

procedure Tfrmconsulta.ToolButton25Click(Sender: TObject);
begin
  ExcluirListView(lsvrepresentante);
end;

procedure Tfrmconsulta.ToolButton26Click(Sender: TObject);
begin
  lsvrepresentante.Clear;
end;

procedure Tfrmconsulta.ToolButton36Click(Sender: TObject);
begin
  AdicionarListView(lsvclfornecedor);
end;

procedure Tfrmconsulta.ToolButton40Click(Sender: TObject);
begin
  ExcluirListView(lsvclfornecedor);
end;

procedure Tfrmconsulta.ToolButton44Click(Sender: TObject);
begin
  lsvclfornecedor.Clear;
end;

procedure Tfrmconsulta.edtclfornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvclfornecedor, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmclfornecedorChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_clfornecedor);
end;

procedure Tfrmconsulta.edtnmclfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvclfornecedor, executar_on_change_clfornecedor, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton75Click(Sender: TObject);
begin
  AdicionarListView(lsvufinicio, _uf);
end;

procedure Tfrmconsulta.ToolButton76Click(Sender: TObject);
begin
  ExcluirListView(lsvufinicio);
end;

procedure Tfrmconsulta.ToolButton77Click(Sender: TObject);
begin
  lsvufinicio.Clear;
end;

procedure Tfrmconsulta.edtcdufinicioKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvufinicio, TEdit(sender), key, _uf);
end;

procedure Tfrmconsulta.edtnmufinicioChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_uf_inicio, _uf);
end;

procedure Tfrmconsulta.ToolButton78Click(Sender: TObject);
begin
  AdicionarListView(lsvuftermino, _uf);
end;

procedure Tfrmconsulta.ToolButton79Click(Sender: TObject);
begin
  ExcluirListView(lsvuftermino);
end;

procedure Tfrmconsulta.ToolButton80Click(Sender: TObject);
begin
  lsvuftermino.Clear;
end;

procedure Tfrmconsulta.edtcdufterminoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvuftermino, TEdit(sender), key, _uf);
end;

procedure Tfrmconsulta.edtnmufterminoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_uf_termino, _uf);
end;

procedure Tfrmconsulta.edtnmufinicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvufinicio, executar_on_change_uf_inicio, tedit(sender), key, _uf);
end;

procedure Tfrmconsulta.edtnmufterminoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvuftermino, executar_on_change_uf_termino, tedit(sender), key, _uf);
end;

procedure Tfrmconsulta.ToolButton81Click(Sender: TObject);
begin
  AdicionarListView(lsvmunicipioinicio, _municipio);
end;

procedure Tfrmconsulta.ToolButton82Click(Sender: TObject);
begin
  ExcluirListView(lsvmunicipioinicio);
end;

procedure Tfrmconsulta.ToolButton83Click(Sender: TObject);
begin
  lsvmunicipioinicio.Clear;
end;

procedure Tfrmconsulta.edtcdmunicipioinicioKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvmunicipioinicio, TEdit(sender), key, _municipio);
end;

procedure Tfrmconsulta.edtnmmunicipioinicioChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_municipio_inicio, _municipio);
end;

procedure Tfrmconsulta.edtnmmunicipioinicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvmunicipioinicio, executar_on_change_municipio_inicio, tedit(sender), key, _municipio);
end;

procedure Tfrmconsulta.ToolButton84Click(Sender: TObject);
begin
  AdicionarListView(lsvmunicipiotermino, _municipio);
end;

procedure Tfrmconsulta.ToolButton85Click(Sender: TObject);
begin
  ExcluirListView(lsvmunicipiotermino);
end;

procedure Tfrmconsulta.ToolButton86Click(Sender: TObject);
begin
  lsvmunicipiotermino.Clear;
end;

procedure Tfrmconsulta.edtcdmunicipioterminoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvmunicipiotermino, TEdit(sender), key, _municipio);
end;

procedure Tfrmconsulta.edtnmmunicipioterminoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_municipio_termino, _municipio);
end;

procedure Tfrmconsulta.edtnmmunicipioterminoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvmunicipiotermino, executar_on_change_municipio_termino, tedit(sender), key, _municipio);
end;

procedure Tfrmconsulta.ToolButton13Click(Sender: TObject);
begin
  AdicionarListView(lsvfornecedor);
end;

procedure Tfrmconsulta.ToolButton140Click(Sender: TObject);
begin
  lsvtptreinamento.Clear;
end;

procedure Tfrmconsulta.ToolButton141Click(Sender: TObject);
begin
  AdicionarListView(lsvtpexameperiodico);
end;

procedure Tfrmconsulta.ToolButton142Click(Sender: TObject);
begin
  ExcluirListView(lsvtpexameperiodico);
end;

procedure Tfrmconsulta.ToolButton143Click(Sender: TObject);
begin
  lsvtpexameperiodico.Clear;
end;

procedure Tfrmconsulta.ToolButton14Click(Sender: TObject);
begin
  ExcluirListView(lsvfornecedor);
end;

procedure Tfrmconsulta.ToolButton87Click(Sender: TObject);
begin
  AdicionarListview(lsvremetente)
end;

procedure Tfrmconsulta.ToolButton88Click(Sender: TObject);
begin
  ExcluirListView(lsvremetente);
end;

procedure Tfrmconsulta.ToolButton89Click(Sender: TObject);
begin
  lsvremetente.Clear;
end;

procedure Tfrmconsulta.edtcdremetenteKeyPress(Sender: TObject; var Key: Char);
var
  ListItem: TListItem;
  cdcliente : string;
  i : integer;
begin
  if (key <> #13) or (not codigoexiste(_cliente, edtcdremetente.text)) then
  begin
    exit;
  end;
  cdcliente := edtcdremetente.text;
  edtcdremetente.Clear;
  for i := 0 to lsvremetente.Items.Count - 1 do
  begin
    if lsvremetente.Items.Item[i].Caption = cdcliente then
    begin
      exit;
    end;
  end;
  ListItem         := lsvremetente.Items.Add;
  ListItem.Caption := cdcliente;
  ListItem.SubItems.Add(NomedoCodigo(_cliente, cdcliente));
end;

procedure Tfrmconsulta.edtnmremetenteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_remetente);
end;

procedure Tfrmconsulta.edtnmremetenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvremetente, executar_on_change_remetente, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton90Click(Sender: TObject);
begin
  AdicionarListview(lsvdestinatario)
end;

procedure Tfrmconsulta.ToolButton91Click(Sender: TObject);
begin
  ExcluirListView(lsvdestinatario);
end;

procedure Tfrmconsulta.ToolButton92Click(Sender: TObject);
begin
  lsvdestinatario.Clear;
end;

procedure Tfrmconsulta.edtcddestinatarioKeyPress(Sender: TObject; var Key: Char);
var
  ListItem: TListItem;
  cdcliente : string;
  i : integer;
begin
  if (key <> #13) or (not codigoexiste(_cliente, edtcddestinatario.text)) then
  begin
    exit;
  end;
  cdcliente := edtcddestinatario.text;
  edtcddestinatario.Clear;
  for i := 0 to lsvdestinatario.Items.Count - 1 do
  begin
    if lsvdestinatario.Items.Item[i].Caption = cdcliente then
    begin
      exit;
    end;
  end;
  ListItem         := lsvdestinatario.Items.Add;
  ListItem.Caption := cdcliente;
  ListItem.SubItems.Add(NomedoCodigo(_cliente, cdcliente));
end;

procedure Tfrmconsulta.edtnmdestinatarioChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_destinatario);
end;

procedure Tfrmconsulta.edtnmdestinatarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvdestinatario, executar_on_change_destinatario, tedit(sender), key);
end;

procedure Tfrmconsulta.set_report_user;
var
  q: TClasseQuery;
  no1 : TTreeNode;
begin
  q := TClasseQuery.Create;
  try
    q.q.Open('select cdreportuser,dstitulo from reportuser where cdempresa='+empresa.cdempresa.tostring+' and cdstreport=1');
    if q.q.RecordCount = 0 then
    begin
      Exit;
    end;
    no1 := trv.Items.AddChild(nil, 'Exportar para Excel');
    while not q.q.Eof do
    begin
      trv.Items.AddChild(no1, q.q.fieldbyname(_cdreportuser).asstring+' - '+q.q.fieldbyname(_dstitulo).AsString);
      q.q.Next;
    end;
  finally
    q.Free;
  end;
end;

procedure Tfrmconsulta.exportar_excel(nmconsulta: string);
  function makesql:string;
  var
    codigo : string;
    p : integer;
  begin
    p := pos(' ',nmconsulta);
    p := p - 1;
    codigo := Copy(nmconsulta, 1, p);
    result := NomedoCodigo(_reportuser, codigo, _dsrelatorio);
  end;
var
  q: TClasseQuery;
  l, i: Integer;
  XLApp, Sheet: Variant;
begin
  q := TClasseQuery.create;
  try
    q.q.open(makesql);
    XLApp         := CreateOleObject('Excel.Application');
    XLApp.Visible := True;
    XLApp.Workbooks.Add(xlWBatWorkSheet);
    XLApp.Workbooks[1].WorkSheets[1].Name := _exportar;
    //  Inserir Dados
    Sheet := XLApp.Workbooks[1].WorkSheets[_exportar];  // montar colunas
    for i := 0 to q.q.Fields.Count - 1 do
    begin
      sheet.cells[1, i+1] := q.q.fields[i].FieldName;
    end;
    q.q.first;
    i := 1;
    While not q.q.Eof do
    begin
      inc(i);
      for l := 0 to q.q.fields.Count - 1 do
      begin
             if q.q.fields[l].DataType = ftCurrency then Sheet.Cells[i, l+1] := q.q.Fields[l].AsCurrency
        else if q.q.fields[l].DataType = ftFloat    then sheet.cells[i, l+1] := q.q.fields[l].AsFloat
        else if q.q.fields[l].DataType = ftDateTime then sheet.cells[i, l+1] := q.q.fields[l].AsDateTime
        else if q.q.fields[l].DataType = ftDate     then sheet.cells[i, l+1] := q.q.fields[l].AsDateTime
        else if q.q.fields[l].DataType = ftTime     then sheet.cells[i, l+1] := q.q.fields[l].AsDateTime
        else if q.q.fields[l].DataType = ftInteger  then sheet.cells[i, l+1] := q.q.fields[l].AsInteger
        else if q.q.fields[l].DataType = ftString   then sheet.cells[i, l+1] := q.q.fields[l].AsString
        else if q.q.fields[l].DataType = ftBlob     then sheet.cells[i, l+1] := q.q.fields[l].AsVariant
        else                                             Sheet.Cells[i, l+1] := q.q.Fields[l].asString + ' ';
      end;
      q.q.Next;
    End;
    showmessage('Dados Exportados');
  finally
    q.free;
  end;
end;

procedure Tfrmconsulta.ToolButton62Click(Sender: TObject);
begin
  AdicionarListView(lsvsttarefa);
end;

procedure Tfrmconsulta.ToolButton93Click(Sender: TObject);
begin
  AdicionarListView(lsvtptarefa);
end;

procedure Tfrmconsulta.ToolButton96Click(Sender: TObject);
begin
  AdicionarListView(lsvtptarefa1);
end;

procedure Tfrmconsulta.ToolButton63Click(Sender: TObject);
begin
  ExcluirListView(lsvsttarefa);
end;

procedure Tfrmconsulta.ToolButton94Click(Sender: TObject);
begin
  ExcluirListView(lsvtptarefa);
end;

procedure Tfrmconsulta.ToolButton97Click(Sender: TObject);
begin
  ExcluirListView(lsvtptarefa1);
end;

procedure Tfrmconsulta.ToolButton65Click(Sender: TObject);
begin
  lsvsttarefa.Clear;
end;

procedure Tfrmconsulta.ToolButton95Click(Sender: TObject);
begin
  lsvtptarefa.Clear;
end;

procedure Tfrmconsulta.ToolButton98Click(Sender: TObject);
begin
  lsvtptarefa1.Clear;
end;

procedure Tfrmconsulta.edtcdsttarefaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvsttarefa, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdtptarefaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtptarefa, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdtptreinamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  AdicionarCodigoListView(lsvtptreinamento, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdtptarefa1KeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtptarefa1, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmsttarefaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_sttarefa);
end;

procedure Tfrmconsulta.edtnmtptarefaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tptarefa);
end;

procedure Tfrmconsulta.edtnmtptarefa1Change(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tptarefa1);
end;

procedure Tfrmconsulta.edtnmsttarefaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvsttarefa, executar_on_change_sttarefa, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmtptarefaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtptarefa, executar_on_change_tptarefa, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmtptreinamentoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tptreinamento);
end;

procedure Tfrmconsulta.edtnmtptreinamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtptreinamento, executar_on_change_tptreinamento, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmtptarefa1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtptarefa1, executar_on_change_tptarefa1, tedit(sender), key);
end;

procedure Tfrmconsulta.btnPrioridadeAdicionarClick(Sender: TObject);
begin
  AdicionarListView(lsvprioridade);
end;

procedure Tfrmconsulta.btnPrioridadeExcluirClick(Sender: TObject);
begin
  ExcluirListView(lsvprioridade);
end;

procedure Tfrmconsulta.ToolButton99Click(Sender: TObject);
begin
  lsvprioridade.Clear;
end;

procedure Tfrmconsulta.edtcdprioridadeKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvprioridade, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmprioridadeChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_prioridade);
end;

procedure Tfrmconsulta.edtnmprioridadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvprioridade, executar_on_change_prioridade, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton100Click(Sender: TObject);
begin
  AdicionarListView(lsvatendente);
end;

procedure Tfrmconsulta.ToolButton101Click(Sender: TObject);
begin
  ExcluirListView(lsvatendente);
end;

procedure Tfrmconsulta.ToolButton102Click(Sender: TObject);
begin
  lsvatendente.Clear;
end;

procedure Tfrmconsulta.edtcdatendenteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvatendente, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmatendenteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_atendente);
end;

procedure Tfrmconsulta.edtnmatendenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvatendente, executar_on_change_atendente, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton106Click(Sender: TObject);
begin
  AdicionarListView(lsvequipamento);
end;

procedure Tfrmconsulta.ToolButton107Click(Sender: TObject);
begin
  ExcluirListView(lsvequipamento);
end;

procedure Tfrmconsulta.ToolButton108Click(Sender: TObject);
begin
  lsvequipamento.Clear;
end;

procedure Tfrmconsulta.edtcdequipamentoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvequipamento, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmequipamentoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_equipamento);
end;

procedure Tfrmconsulta.edtnmequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvequipamento, executar_on_change_equipamento, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton109Click(Sender: TObject);
begin
  AdicionarListView(lsvetapa);
end;

procedure Tfrmconsulta.ToolButton110Click(Sender: TObject);
begin
  ExcluirListView(lsvetapa);
end;

procedure Tfrmconsulta.ToolButton111Click(Sender: TObject);
begin
  lsvetapa.Clear;
end;

procedure Tfrmconsulta.ToolButton112Click(Sender: TObject);
begin
  AdicionarListView(lsvtpordproducao);
end;

procedure Tfrmconsulta.ToolButton113Click(Sender: TObject);
begin
  ExcluirListView(lsvtpordproducao);
end;

procedure Tfrmconsulta.ToolButton114Click(Sender: TObject);
begin
  lsvtpordproducao.Clear;
end;

procedure Tfrmconsulta.ToolButton115Click(Sender: TObject);
begin
  AdicionarListView(lsvtpcliente);
end;

procedure Tfrmconsulta.ToolButton116Click(Sender: TObject);
begin
  ExcluirListView(lsvtpcliente);
end;

procedure Tfrmconsulta.ToolButton117Click(Sender: TObject);
begin
  lsvtpcliente.Clear;
end;

procedure Tfrmconsulta.ToolButton118Click(Sender: TObject);
begin
  AdicionarListView(lsvstordserv);
end;

procedure Tfrmconsulta.ToolButton119Click(Sender: TObject);
begin
  ExcluirListView(lsvstordserv);
end;

procedure Tfrmconsulta.edtcdetapaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvetapa, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmetapaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_etapa);
end;

procedure Tfrmconsulta.edtnmetapaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvetapa, executar_on_change_etapa, tedit(sender), key);
end;

procedure Tfrmconsulta.set_cte(no1, no2 : TTreeNode);
begin
  if not empresa.faturamento.cte.bo then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'CTE');
  trv.Items.AddChild(no2, '472 - Por Comprador');
  trv.Items.AddChild(no2, '535 - Local de Prestação');
  trv.Items.AddChild(no2, '539 - INSS por Transportadora');
  trv.Items.AddChild(no2, '540 - Sintético Contas a Pagar RPA');
  trv.Items.AddChild(no2, '547 - Sintético Notas Fiscais');
  trv.Items.AddChild(no2, '650 - Sintético Notas Fiscais - Proprietário');
end;

procedure Tfrmconsulta.set_fornecedor(no1, no2 : TTreeNode);
begin
  if not empresa.fornecedor.bo then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Fornecedor');
  if empresa.fornecedor.IQF.bo then
  begin
    trv.Items.AddChild(no2, '424 - Acompanhamento Performance');
  end;
  trv.Items.AddChild(no2, 'Etiqueta');
  if empresa.fornecedor.IQF.bo then
  begin
    trv.Items.AddChild(no2, '423 - IQF Global');
  end;
  trv.Items.AddChild(no2, '062 - Lista');
  if empresa.fornecedor.IQF.bo then
  begin
    trv.Items.AddChild(no2, '498 - Lista de Fornecedores Críticos');
  end;
  trv.Items.AddChild(no2, '478 - Número Fornecedores Cadastrados');
end;

procedure Tfrmconsulta.set_funcionario(no1, no2 : TTreeNode);
begin
  if not empresa.funcionario.bo then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Funcionário');
  if empresa.funcionario.bopontotrabalho then
  begin
    trv.Items.AddChild(no2, '001 - Lista de Cesta Básica');
    trv.Items.AddChild(no2, '016 - Pagamento Convênio');
  end;
  trv.Items.AddChild(no2, '506 - Lista de Aniversariante');
  trv.Items.AddChild(no2, '073 - Lista de Exame Periódico Realizado');
  trv.Items.AddChild(no2, '072 - Lista de Treinamento por Funcionário');
end;

procedure Tfrmconsulta.set_locacao(no1, no2 : TTreeNode);
begin
  if not empresa.bolocacao then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Locação');
  trv.Items.AddChild(no2, '649 - Faturamento Equipamento por Locação');
end;

procedure Tfrmconsulta.set_orcamento(no1, no2 : TTreeNode);
begin
  if not empresa.comercial.orcamento.bo then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Orçamento');
  trv.Items.AddChild(no2, '383 - Analítico');
  trv.Items.AddChild(no2, '422 - Analítico Declinado');
  trv.Items.AddChild(no2, '597 - Analítico Itens Declinados');
  trv.Items.AddChild(no2, '060 - Analítico Ordem Produção');
  trv.Items.AddChild(no2, '384 - Diário');
  trv.Items.AddChild(no2, '385 - Diário por Representante');
  trv.Items.AddChild(no2, '386 - Diário por Vendedor');
  trv.Items.AddChild(no2, '387 - Mensal');
  trv.Items.AddChild(no2, 'Mensal por Cliente (Quebra Mês)');
  trv.Items.AddChild(no2, 'Mensal por Cliente (Quebra Cliente)');
  trv.Items.AddChild(no2, 'Mensal por Produto (Quebra Mês)');
  trv.Items.AddChild(no2, 'Mensal por Produto (Quebra Produto)');
  trv.Items.AddChild(no2, 'Mensal por Vendedor');
  trv.Items.AddChild(no2, '389 - Sintético');
  trv.Items.AddChild(no2, '061 - Sintético - Matéria-Prima e Hora de Recurso');
  trv.Items.AddChild(no2, '390 - Sintético por Cliente');
  trv.Items.AddChild(no2, '391 - Sintético por Representante');
  trv.Items.AddChild(no2, '392 - Sintético por Status');
  trv.Items.AddChild(no2, '393 - Sintético por Vendedor');
end;

procedure Tfrmconsulta.set_ordcompra(no1, no2 : TTreeNode);
begin
  if not Empresa.aquisicao.ordcompra.bo then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Ordem Compra');
  if empresa.fornecedor.IQF.bo then
  begin
    trv.Items.AddChild(no2, '415 - Analítico IQF');
  end;
  trv.Items.AddChild(no2, '416 - Sintético');
  if empresa.fornecedor.IQF.bo then
  begin
    trv.Items.AddChild(no2, '414 - Sintético IQF');
  end;
end;

procedure Tfrmconsulta.set_ordproducao(no1, no2 : TTreeNode);
begin
  if not empresa.producao.ordproducao.bo then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Ordem Produção');
  trv.Items.AddChild(no2, '435 - Analítico - Apontamento por Funcionário');
  trv.Items.AddChild(no2, '436 - Analítico - Apontamento por Recurso');
  trv.Items.AddChild(no2, '048 - Analítico - Data de Término do Recurso');
  trv.Items.AddChild(no2, '441 - Analítico - Matéria-Prima versus Ordem Compra');
  trv.Items.AddChild(no2, '042 - Analítico - Produto');
  trv.Items.AddChild(no2, '049 - Analítico - Produto com erro de estrutura no Apontamento');
  trv.Items.AddChild(no2, '043 - Analítico - Produto com Recurso');
  trv.Items.AddChild(no2, '044 - Analítico - Recurso por Etapa');
  trv.Items.AddChild(no2, '658 - Analítico - Quantidade Horas Vendidas por Equipamento');
  trv.Items.AddChild(no2, '440 - Analítico - Recursos versus Apontamento');
  trv.Items.AddChild(no2, '024 - Cálculo de OEE Equipamento');
  trv.Items.AddChild(no2, '052 - Consumo Matéria-Prima pelo Produto da OP');
  trv.Items.AddChild(no2, '045 - Contador de Etapa por Produto');
  trv.Items.AddChild(no2, '047 - Contador de Etapa / Data de Término por Produto');
  trv.Items.AddChild(no2, '046 - Contador de Etapa / Produto por Data de Término');
  trv.Items.AddChild(no2, '419 - Diário Apontamento');
  trv.Items.AddChild(no2, '577 - Gráfico - Apontamento por Funcionário');
  trv.Items.AddChild(no2, '020 - Gráfico de Consumo Diário de Matéria-Prima');
  trv.Items.AddChild(no2, '011 - Gráfico Produção Diária');
  trv.Items.AddChild(no2, '021 - Gráfico Produção Diária de Produto Acabado');
  trv.Items.AddChild(no2, '019 - Gráfico Produçã Mensal de Itens');
  trv.Items.AddChild(no2, '023 - Gráfico Rendimento por Arranjo');
  trv.Items.AddChild(no2, '420 - Mensal Apontamento');
  trv.Items.AddChild(no2, '473 - Mensal Quantidade Horas Vendidas');
  trv.Items.AddChild(no2, '474 - Mensal Quantidade Horas Vendidas por Equipamento');
  trv.Items.AddChild(no2, '018 - Produçã Mensal de Itens por Tipo de Ordem de Produção');
  trv.Items.AddChild(no2, '396 - Sintético');
  trv.Items.AddChild(no2, '434 - Sintético - Apontamento por Funcionário');
  trv.Items.AddChild(no2, '437 - Sintético - Apontamento por Recurso');
  trv.Items.AddChild(no2, '659 - Sintético - Atrasado');
  trv.Items.AddChild(no2, '623 - Sintético - Hora Produzida acima do Orçado');
  trv.Items.AddChild(no2, '439 - Sintético - Matéria-Prima versus Ordem Compra');
  trv.Items.AddChild(no2, '541 - Sintético - Status para Entrega');
end;

procedure Tfrmconsulta.set_ordserv(no1, no2 : TTreeNode);
begin
  if not empresa.ordserv.bo then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Ordem Serviço');
  trv.Items.AddChild(no2, '338 - Analítico');
  trv.Items.AddChild(no2, '594 - Analítico Custo Equipamento Diário');
  trv.Items.AddChild(no2, '593 - Analítico Manutenção Equipamento Diário');
  trv.Items.AddChild(no2, 'Mensal por Produto (Quebra Mês)');
  trv.Items.AddChild(no2, 'Mensal por Produto (Quebra Produto)');
  trv.Items.AddChild(no2, 'Primeira Ordem Serviço');
  trv.Items.AddChild(no2, '341 - Sintético');
  trv.Items.AddChild(no2, '347 - Sintético Etapa');
  trv.Items.AddChild(no2, '464 - Sintético por Produto');
  trv.Items.AddChild(no2, '055 - Sintético Quebra');
end;

procedure Tfrmconsulta.set_parada(no1, no2 : TTreeNode);
begin
  if not empresa.equipamento.boparada then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Parada');
  trv.Items.AddChild(no2, '012 - Gráfico Parada por Tipo Parada');
  trv.Items.AddChild(no2, '013 - Gráfico Parada por Sub Tipo Parada');
  trv.Items.AddChild(no2, '014 - Gráfico Pareto Parada por Tipo Parada');
  trv.Items.AddChild(no2, '015 - Gráfico Pareto Parada por Sub Tipo Parada');
  trv.Items.AddChild(no2, '017 - Controle de Horas do Horímetro');
end;

procedure Tfrmconsulta.set_rim(no1, no2 : TTreeNode);
begin
  if not empresa.aquisicao.borim then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Requisição Material');
  trv.Items.AddChild(no2, '443 - Analítico');
  trv.Items.AddChild(no2, '442 - Sintético');
end;

procedure Tfrmconsulta.set_tarefa(no1, no2 : TTreeNode);
begin
  if not empresa.tarefa.bo then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Tarefa');
  trv.Items.AddChild(no2, '581 - Diário por Data de Emissão');
  trv.Items.AddChild(no2, '582 - Diário por Data de Término');
  trv.Items.AddChild(no2, '584 - Mensal por Data de Emissão');
  trv.Items.AddChild(no2, '589 - Mensal por Data de Emissão/Cliente');
  trv.Items.AddChild(no2, '592 - Mensal por Data de Emissão/Funcionário');
  trv.Items.AddChild(no2, '590 - Mensal por Data de Emissão/Tipo Tarefa');
  trv.Items.AddChild(no2, '591 - Mensal por Data de Emissão/Tipo Tarefa 1');
  trv.Items.AddChild(no2, '583 - Mensal por Data de Término');
  trv.Items.AddChild(no2, '580 - Quantidade de Horas por Cliente');
  trv.Items.AddChild(no2, '604 - Quantidade de Horas por Tipo');
  trv.Items.AddChild(no2, '605 - Quantidade de Horas por Tipo 1');
  trv.Items.AddChild(no2, '599 - Quantidade de Horas Diária');
  trv.Items.AddChild(no2, '596 - Quantidade de Horas Diária por Cliente');
  trv.Items.AddChild(no2, '595 - Quantidade de Horas Diária por Funcionário');
  trv.Items.AddChild(no2, '603 - Quantidade de Horas Diária por Tipo');
  trv.Items.AddChild(no2, '600 - Quantidade de Horas Mensal');
  trv.Items.AddChild(no2, '579 - Quantidade por Cliente');
  trv.Items.AddChild(no2, '585 - Quantidade por Funcionário');
  trv.Items.AddChild(no2, '586 - Quantidade por Tipo de Tarefa');
  trv.Items.AddChild(no2, '587 - Quantidade por Tipo de Tarefa 1');
  trv.Items.AddChild(no2, '588 - Quantidade por Cliente/Tipo Tarefa 1');
end;

procedure Tfrmconsulta.set_transportadora(no1, no2 : TTreeNode);
begin
  if not empresa.transportadora.bo then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Transportadora');
  trv.Items.AddChild(no2, '002 - Lista INSS');
  if empresa.faturamento.saida.bo then
  begin
    trv.Items.AddChild(no2, '003 - Clientes Atendidos na Nota Fiscal');
  end;
  if empresa.faturamento.cte.bo then
  begin
    trv.Items.AddChild(no2, '471 - CTE - Imposto Renda');
  end;
  if empresa.financeiro.rpa.bo then
  begin
    trv.Items.AddChild(no2, '009 - Mapa Frete Simples');
    trv.Items.AddChild(no2, '010 - RPA Diário');
    trv.Items.AddChild(no2, '006 - RPA por Transportadora');
    trv.Items.AddChild(no2, '007 - Mapa Frete Mensal');
    trv.Items.AddChild(no2, '008 - Valor INSS');
  end;
end;

procedure Tfrmconsulta.set_funcao(no1, no2 : TTreeNode);
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__Funcao));
  if empresa.cliente.bo then
  begin
    no2 := trv.Items.AddChild(no1, 'Cliente');
    trv.Items.AddChild(no2, 'Inserir restrição tipo cobrança');
  end;
  if empresa.faturamento.cte.bo then
  begin
    no2 := trv.Items.AddChild(no1, 'CTE');
    trv.Items.AddChild(no2, 'Importar');
  end;
  if empresa.fornecedor.bo then
  begin
    no2 := trv.Items.AddChild(no1, 'Fornecedor');
    if empresa.fornecedor.IQF.bo then
    begin
      trv.Items.AddChild(no2, 'Calcular IQF');
    end;
    trv.Items.AddChild(no2, 'Gerar código reduzido');
  end;
  if empresa.producao.ordproducao.bo then
  begin
    no2 := trv.Items.AddChild(no1, 'Ordem Produção');
    trv.items.addchild(no2, 'Corrigir nome de produto benefiado');
  end;
  if empresa.producao.ordproducao.boformulacao then
  begin
    no2 := trv.Items.AddChild(no1, 'Formulação');
    trv.Items.AddChild(no2, 'Gerar número de sequência');
  end;
  if Empresa.aquisicao.ordcompra.bo then
  begin
    no2 := trv.Items.AddChild(no1, 'Ordem Compra');
    if empresa.fornecedor.IQF.bo then
    begin
      trv.Items.AddChild(no2, 'Gerar Avaliação do Histórico IQF');
    end;
  end;
  if empresa.transportadora.bo then
  begin
    no2 := trv.Items.AddChild(no1, 'Transportadora');
    trv.Items.AddChild(no2, 'Gerar código reduzido');
    trv.Items.AddChild(no2, 'Gerar código CNPJ/CPF');
  end;
end;

procedure Tfrmconsulta.set_treeview;
var
  no1, no2 : TTreeNode;
  procedure set_relatorio;
  begin
    no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
    set_cte(no1, no2);
    trv.Items.AddChild(no1, 'Curva ABC');
    set_embarque(no1, no2);
    set_fornecedor(no1, no2);
    set_funcionario(no1, no2);
    set_locacao(no1, no2);
    set_orcamento(no1, no2);
    set_ordcompra(no1, no2);
    set_ordproducao(no1, no2);
    set_ordserv(no1, no2);
    set_parada(no1, no2);
    set_rim(no1, no2);
    set_tarefa(no1, no2);
    set_transportadora(no1, no2);
  end;
  procedure set_importacao_dados;
  begin
    no1 := trv.Items.AddChild(nil, Maiuscula(__Importacao+' '+_de+' '+_dados));
    no2 := trv.Items.AddChild(no1, 'Excel');
    trv.Items.AddChild(no2, 'Cliente');
  end;
begin
  set_relatorio;
  set_funcao(no1, no2);
  set_importacao_dados;
end;

procedure Tfrmconsulta.ToolButton124Click(Sender: TObject);
begin
  AdicionarListView(lsvtprpa);
end;

procedure Tfrmconsulta.ToolButton125Click(Sender: TObject);
begin
  ExcluirListView(lsvtprpa);
end;

procedure Tfrmconsulta.ToolButton126Click(Sender: TObject);
begin
  lsvtprpa.Clear;
end;

procedure Tfrmconsulta.edtcdtprpaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtprpa, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtprpaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tprpa);
end;

procedure Tfrmconsulta.edtnmtprpaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtprpa, executar_on_change_tprpa, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton121Click(Sender: TObject);
begin
  AdicionarListView(lsvtpparada);
end;

procedure Tfrmconsulta.ToolButton122Click(Sender: TObject);
begin
  ExcluirListView(lsvtpparada);
end;

procedure Tfrmconsulta.ToolButton123Click(Sender: TObject);
begin
  lsvtpparada.Clear;
end;

procedure Tfrmconsulta.edtcdtpparadaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpparada, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpparadaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpparada);
end;

procedure Tfrmconsulta.edtnmtpparadaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpparada, executar_on_change_tpparada, tedit(sender), key);
end;

procedure Tfrmconsulta.imprimir_relatorio;
begin
  dtmmain.LogSiteAction(self.name, trv.selected.text);
       if trv.selected.text = 'Curva ABC'                                               then //imprimirconsultacurvaabc(edtdtemissaoi, edtdtemissaof, cdconta, cdmovimentacao, cdfornecedor, cdcliente, cdtpentrada, cdtpmovto, cdtpordserv, cdtpsaida, cdproduto, ckbprodutoinversa.Checked, cdgrupo, tpo, tabela)
  else if trv.selected.text = '001 - Lista de Cesta Básica'                             then ImpimirRelatorioPadrao1(1 , makesql1, False, edtdti.Date, edtdtf.Date)
  else if trv.selected.text = '072 - Lista de Treinamento por Funcionário'              then ImpimirRelatorioPadrao1(72, makesql72)
  else if trv.Selected.Text = '073 - Lista de Exame Periódico Realizado'                then impimirrelatoriopadrao1(73, makesql73)
  else if trv.selected.text = '011 - Gráfico Produção Diária'                           then ImpimirRelatorioPadrao1(11, makesqlwhere11)
  else if trv.selected.text = '021 - Gráfico Produção Diária de Produto Acabado'        then ImpimirRelatorioPadrao1(21, makesqlwhere21)
  else if trv.Selected.Text = '023 - Gráfico Rendimento por Arranjo'                    then ImpimirRelatorioPadrao1(23, makesqlwhere23)
  else if trv.Selected.Text = '024 - Cálculo de OEE Equipamento'                        then ImpimirRelatorioPadrao1(24, makesqlwhere24, makesqlwheredtemissao)
  else if trv.Selected.Text = '052 - Consumo Matéria-Prima pelo Produto da OP'          then ImpimirRelatorioPadrao1(52, makesqlwhereordproducao52)
  else if trv.Selected.Text = '019 - Gráfico Produçã Mensal de Itens'                   then ImpimirRelatorioPadrao1(19, makesql18)
  else if trv.selected.text = '012 - Gráfico Parada por Tipo Parada'                    then ImpimirRelatorioPadrao1(12, makesqlwhere12)
  else if trv.selected.text = '013 - Gráfico Parada por Sub Tipo Parada'                then ImpimirRelatorioPadrao1(13, makesqlwhere12)
  else if trv.selected.text = '014 - Gráfico Pareto Parada por Tipo Parada'             then ImpimirRelatorioPadrao1(14, makesqlwhere12)
  else if trv.selected.text = '015 - Gráfico Pareto Parada por Sub Tipo Parada'         then ImpimirRelatorioPadrao1(15, makesqlwhere12)
  else if trv.selected.text = '016 - Pagamento Convênio'                                then ImpimirRelatorioPadrao1(16 , makesql16)
  else if trv.selected.text = '017 - Controle de Horas do Horímetro'                    then ImpimirRelatorioPadrao1(17, makesqlwhere17)
  else if trv.Selected.Text = '018 - Produçã Mensal de Itens por Tipo de Ordem de Produção' then ImpimirRelatorioPadrao1(18, makesql18)
  else if trv.Selected.Text = '020 - Gráfico de Consumo Diário de Matéria-Prima'            then ImpimirRelatorioPadrao1(20, makesql20)
  else if trv.selected.text = '506 - Lista de Aniversariante'                          then ImpimirRelatorioPadrao1(506, makesql506)
  else if trv.selected.text = '649 - Faturamento Equipamento por Locação'              then ImpimirRelatorioPadrao1(649, makesql649)
  else if trv.selected.text = '416 - Sintético'                                        then ImpimirRelatorioPadrao1(416, makesqlwhereordcompra)
  else if trv.selected.text = '414 - Sintético IQF'                                    then ImpimirRelatorioPadrao1(414, makesqlwhereordcompra)
  else if trv.selected.text = '415 - Analítico IQF'                                    then ImpimirRelatorioPadrao1(415, makesqlwhereordcompra)
  else if trv.selected.text = '498 - Lista de Fornecedores Críticos'                   then ImpimirRelatorioPadrao1(498, makesqlwherefornecedorcritico)
  else if trv.selected.text = '062 - Lista'                                            then ImpimirRelatorioPadrao1(062, makesqlwherefornecedorcadastro)
  else if trv.selected.text = '435 - Analítico - Apontamento por Funcionário'          then ImpimirRelatorioPadrao1(435, makesqlwhereapontamento)
  else if trv.selected.text = '436 - Analítico - Apontamento por Recurso'              then ImpimirRelatorioPadrao1(436, makesqlwhereapontamento)
  else if trv.selected.text = '441 - Analítico - Matéria-Prima versus Ordem Compra'    then ImpimirRelatorioPadrao1(441, makesqlwhereordproducao)
  else if trv.selected.text = '042 - Analítico - Produto'                              then ImpimirRelatorioPadrao1(042, makesqlwhereordproducao)
  else if trv.selected.text = '043 - Analítico - Produto com Recurso'                  then ImpimirRelatorioPadrao1(043, makesqlwhereordproducao43)
  else if trv.selected.text = '044 - Analítico - Recurso por Etapa'                    then ImpimirRelatorioPadrao1(044, makesqlwhereordproducao43)
  else if trv.selected.text = '045 - Contador de Etapa por Produto'                    then ImpimirRelatorioPadrao1(045, makesqlwhereordproducao43)
  else if trv.selected.text = '046 - Contador de Etapa / Produto por Data de Término'  then ImpimirRelatorioPadrao1(046, makesqlwhereordproducao43)
  else if trv.selected.text = '047 - Contador de Etapa / Data de Término por Produto'  then ImpimirRelatorioPadrao1(047, makesqlwhereordproducao43)
  else if trv.selected.text = '048 - Analítico - Data de Término do Recurso'           then ImpimirRelatorioPadrao1(048, makesqlwhereordproducao43)
  else if trv.selected.text = '049 - Analítico - Produto com erro de estrutura no Apontamento' then ImpimirRelatorioPadrao1(049, makesqlwhereordproducao)
  else if trv.selected.text = '440 - Analítico - Recursos versus Apontamento'          then ImpimirRelatorioPadrao1(440, makesqlwhereordproducao)
  else if trv.selected.text = '419 - Diário Apontamento'                               then ImpimirRelatorioPadrao1(419, makesqlwhereapontamento)
  else if trv.selected.text = '420 - Mensal Apontamento'                               then ImpimirRelatorioPadrao1(420, makesqlwhereapontamento)
  else if trv.selected.text = '473 - Mensal Quantidade Horas Vendidas'                 then ImpimirRelatorioPadrao1(473, makesqlwhereordproducao)
  else if trv.selected.text = '474 - Mensal Quantidade Horas Vendidas por Equipamento' then ImpimirRelatorioPadrao1(474, makesqlwhereordproducao)
  else if trv.selected.text = '658 - Analítico - Quantidade Horas Vendidas por Equipamento' then ImpimirRelatorioPadrao1(658, makesqlwhereordproducao)
  else if trv.selected.text = '396 - Sintético'                                        then ImpimirRelatorioPadrao1(396, makesqlwhereordproducao)
  else if trv.selected.text = '659 - Sintético - Atrasado'                             then ImpimirRelatorioPadrao1(659, makesqlwhereordproducaoatrasado)
  else if trv.selected.text = '434 - Sintético - Apontamento por Funcionário'          then ImpimirRelatorioPadrao1(434, makesqlwhereapontamento)
  else if trv.selected.text = '577 - Gráfico - Apontamento por Funcionário'            then ImpimirRelatorioPadrao1(577, makesqlwhereapontamento)
  else if trv.selected.text = '437 - Sintético - Apontamento por Recurso'              then ImpimirRelatorioPadrao1(437, makesqlwhereapontamento)
  else if trv.selected.text = '439 - Sintético - Matéria-Prima versus Ordem Compra'    then ImpimirRelatorioPadrao1(439, makesqlwhereordproducao)
  else if trv.selected.text = '541 - Sintético - Status para Entrega'                  then ImpimirRelatorioPadrao1(541, makesqlwhereordproducao)
  else if trv.selected.text = '623 - Sintético - Hora Produzida acima do Orçado'       then ImpimirRelatorioPadrao1(623, makesqlwhereordproducao(true))
  else if trv.selected.text = 'Etiqueta'                                               then //imprimirconsultafornecedoretiquetalaser    (cdFornecedor)
  else if trv.selected.text = '478 - Número Fornecedores Cadastrados'                  then ImpimirRelatorioPadrao1(478, makesqlwherefornecedorcadastro)
  else if trv.selected.text = '423 - IQF Global'                                       then ImpimirRelatorioPadrao1(423, makesqlwhereiqf423)
  else if trv.selected.text = '424 - Acompanhamento Performance'                       then ImpimirRelatorioPadrao1(424, makesqlwhereiqf)
  else if trv.selected.text = '053 - Conferência de Frete de Venda'                    then ImpimirRelatorioPadrao1(053, makesql053)
  else if trv.selected.text = '383 - Analítico'                                        then ImpimirRelatorioPadrao1(383, makesqlwhereorcamentoproduto)
  else if trv.selected.text = '060 - Analítico Ordem Produção'                         then ImpimirRelatorioPadrao1(060, makesqlwhereorcamentoproduto)
  else if trv.selected.text = '597 - Analítico Itens Declinados'                       then ImpimirRelatorioPadrao1(597, makesqlwhereorcamentoproduto)
  else if trv.selected.text = '389 - Sintético'                                        then ImpimirRelatorioPadrao1(389, makesqlwhereorcamentoproduto)
  else if trv.Selected.Text = '061 - Sintético - Matéria-Prima e Hora de Recurso'      then ImpimirRelatorioPadrao1(061, makesqlwhereorcamentoproduto)
  else if trv.selected.text = '422 - Analítico Declinado'                              then ImpimirRelatorioPadrao1(422, makesqlwhereorcamento)
  else if trv.selected.text = '384 - Diário'                                           then ImpimirRelatorioPadrao1(384, makesqlwhereorcamento)
  else if trv.selected.text = '385 - Diário por Representante'                         then ImpimirRelatorioPadrao1(385, makesqlwhereorcamento)
  else if trv.selected.text = '386 - Diário por Vendedor'                              then ImpimirRelatorioPadrao1(386, makesqlwhereorcamento)
  else if trv.selected.text = '387 - Mensal'                                           then ImpimirRelatorioPadrao1(387, makesqlwhereorcamento)
  else if trv.selected.text = '388 - Mensal por Vendedor'                              then ImpimirRelatorioPadrao1(388, makesqlwhereorcamento)
  else if trv.selected.text = '390 - Sintético por Cliente'                            then ImpimirRelatorioPadrao1(390, makesqlwhereorcamento)
  else if trv.selected.text = '391 - Sintético por Representante'                      then ImpimirRelatorioPadrao1(391, makesqlwhereorcamento)
  else if trv.selected.text = '392 - Sintético por Status'                             then ImpimirRelatorioPadrao1(392, makesqlwhereorcamento)
  else if trv.selected.text = '393 - Sintético por Vendedor'                           then ImpimirRelatorioPadrao1(393, makesqlwhereorcamentoproduto)
  else if trv.selected.text = '442 - Sintético'                                        then ImpimirRelatorioPadrao1(442, makesqlwhererim)
  else if trv.selected.text = '443 - Analítico'                                        then ImpimirRelatorioPadrao1(443, makesqlwhererim)
  else if trv.selected.text = '472 - Por Comprador'                                    then ImpimirRelatorioPadrao1(472, makesqlwherecte)
  else if trv.selected.text = '535 - Local de Prestação'                               then ImpimirRelatorioPadrao1(535, makesqlwherecte)
  else if trv.selected.text = '539 - INSS por Transportadora'                          then ImpimirRelatorioPadrao1(539, makesqlwherecte)
  else if trv.selected.text = '547 - Sintético Notas Fiscais'                          then ImpimirRelatorioPadrao1(547, makesqlwherecte)
  else if trv.selected.text = '650 - Sintético Notas Fiscais - Proprietário'           then ImpimirRelatorioPadrao1(650, makesqlwherecte)
  else if trv.selected.text = '540 - Sintético Contas a Pagar RPA'                     then ImpimirRelatorioPadrao1(540, makesqlwherecteautpagtorpa)
  else if trv.selected.text = '579 - Quantidade por Cliente'                           then ImpimirRelatorioPadrao1(579, makesqlwheretarefa)
  else if trv.selected.text = '580 - Quantidade de Horas por Cliente'                  then ImpimirRelatorioPadrao1(580, makesqlwhereacao)
  else if trv.selected.text = '604 - Quantidade de Horas por Tipo'                     then ImpimirRelatorioPadrao1(604, makesqlwhereacao)
  else if trv.selected.text = '605 - Quantidade de Horas por Tipo 1'                   then ImpimirRelatorioPadrao1(605, makesqlwhereacao)
  else if trv.selected.text = '581 - Diário por Data de Emissão'                       then ImpimirRelatorioPadrao1(581, makesqlwheretarefa)
  else if trv.selected.text = '582 - Diário por Data de Término'                       then ImpimirRelatorioPadrao1(582, makesqlwheretarefa)
  else if trv.selected.text = '583 - Mensal por Data de Término'                       then ImpimirRelatorioPadrao1(583, makesqlwheretarefa)
  else if trv.selected.text = '584 - Mensal por Data de Emissão'                       then ImpimirRelatorioPadrao1(584, makesqlwheretarefa)
  else if trv.selected.text = '585 - Quantidade por Funcionário'                       then ImpimirRelatorioPadrao1(585, makesqlwheretarefa)
  else if trv.selected.text = '595 - Quantidade de Horas Diária por Funcionário'       then ImpimirRelatorioPadrao1(595, makesqlwhereacao)
  else if trv.selected.text = '603 - Quantidade de Horas Diária por Tipo'              then ImpimirRelatorioPadrao1(603, makesqlwhereacao)
  else if trv.selected.text = '599 - Quantidade de Horas Diária'                       then ImpimirRelatorioPadrao1(599, makesqlwhereacao)
  else if trv.selected.text = '600 - Quantidade de Horas Mensal'                       then ImpimirRelatorioPadrao1(600, makesqlwhereacao)
  else if trv.selected.text = '596 - Quantidade de Horas Diária por Cliente'           then ImpimirRelatorioPadrao1(596, makesqlwhereacao)
  else if trv.selected.text = '586 - Quantidade por Tipo de Tarefa'                    then ImpimirRelatorioPadrao1(586, makesqlwheretarefa)
  else if trv.selected.text = '587 - Quantidade por Tipo de Tarefa 1'                  then ImpimirRelatorioPadrao1(587, makesqlwheretarefa)
  else if trv.selected.text = '002 - Lista INSS'                                       then ImpimirRelatorioPadrao1(002, 'and cdempresa='+empresa.cdempresa.tostring)
  else if trv.selected.text = '003 - Clientes Atendidos na Nota Fiscal'                then ImpimirRelatorioPadrao1(003, makesql003)
  else if trv.selected.text = '471 - CTE - Imposto Renda'                              then ImpimirRelatorioPadrao1(471, makesql471)
  else if trv.selected.text = '009 - Mapa Frete Simples'                               then ImpimirRelatorioPadrao1(009, makesql009)
  else if trv.selected.text = '010 - RPA Diário'                                       then ImpimirRelatorioPadrao1(010, makesql009)
  else if trv.selected.text = '006 - RPA por Transportadora'                           then ImpimirRelatorioPadrao1(006, makesql009)
  else if trv.selected.text = '007 - Mapa Frete Mensal'                                then ImpimirRelatorioPadrao1(007, makesql009)
  else if trv.selected.text = '008 - Valor INSS'                                       then ImpimirRelatorioPadrao1(008, makesql009)
  else if trv.selected.text = '588 - Quantidade por Cliente/Tipo Tarefa 1'             then ImpimirRelatorioPadrao1(588, makesqlwheretarefa)
  else if trv.selected.text = '589 - Mensal por Data de Emissão/Cliente'               then ImpimirRelatorioPadrao1(589, makesqlwheretarefa)
  else if trv.selected.text = '590 - Mensal por Data de Emissão/Tipo Tarefa'           then ImpimirRelatorioPadrao1(590, makesqlwheretarefa)
  else if trv.selected.text = '591 - Mensal por Data de Emissão/Tipo Tarefa 1'         then ImpimirRelatorioPadrao1(591, makesqlwheretarefa)
  else if trv.selected.text = '592 - Mensal por Data de Emissão/Funcionário'           then ImpimirRelatorioPadrao1(592, makesqlwheretarefa)
  else if trv.selected.text = '593 - Analítico Manutenção Equipamento Diário'          then ImpimirRelatorioPadrao1(593, makesqlwhereequipamento)
  else if trv.selected.text = '594 - Analítico Custo Equipamento Diário'               then ImpimirRelatorioPadrao1(594, makesqlwhereequipamento)
  else if trv.selected.text = '338 - Analítico'                                        then ImpimirRelatorioPadrao1(338, makesqlwhereordserv)
  else if trv.selected.text = '341 - Sintético'                                        then ImpimirRelatorioPadrao1(341, makesqlwhereordserv)
  else if trv.selected.text = '347 - Sintético Etapa'                                  then ImpimirRelatorioPadrao1(347, makesqlwhereordserv(347))
  else if trv.selected.text = '464 - Sintético por Produto'                            then ImpimirRelatorioPadrao1(464, makesqlwhereordserv)
  else if trv.selected.text = 'Primeira Ordem Serviço'                                 then //imprimirconsultaordservprimeiraos         (cdstordserv, cdtpordserv, cdcliente, cdtpcliente, cdprioridade, cdetapa, edtdtei, edtdtef, edtdtsi, edtdtsf,  cbxorder.text, rdgorder.itemindex)
  else if trv.selected.text = '055 - Sintético Quebra'                                 then ImpimirRelatorioPadrao1(055, makesql55)
  else if trv.selected.parent.text = 'Ordem Serviço' then
  begin
    if edtdti.Text = '' then
    begin
      messagedlg('Data inicial deve ser preenchida.', mtinformation, [mbok], 0);
      exit;
    end;
    if edtdtf.Text = '' then
    begin
      messagedlg('Data final deve ser preenchida.', mtinformation, [mbok], 0);
      exit;
    end;
         if trv.selected.text = 'Mensal por Produto (Quebra Mês)'                        then //imprimirconsultasaidamensalprodutoqm      (_ordserv, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtpordserv, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdti.Date, edtdtf.Date, _Produto)
    else if trv.selected.text = 'Mensal por Produto (Quebra Produto)'                    then //imprimirconsultasaidamensalprodutoqp      (_ordserv, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtpordserv, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdti.Date, edtdtf.Date, _Produto);
  end
  else if trv.selected.parent.text = 'Orçamento' then
  begin
    if edtdti.Text = '' then
    begin
      messagedlg('Data inicial deve ser preenchida.', mtinformation, [mbok], 0);
      exit;
    end;
    if edtdtf.Text = '' then
    begin
      messagedlg('Data final deve ser preenchida.', mtinformation, [mbok], 0);
      exit;
    end;
         if trv.selected.text = 'Mensal por Produto (Quebra Mês)'                        then {$IFDEF VER210}imprimirconsultasaidamensalprodutoqm(_orcamento, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtppedido, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdti.Date, edtdtf.Date, _produto){$ENDIF}
    else if trv.selected.text = 'Mensal por Produto (Quebra Produto)'                    then {$IFDEF VER210}imprimirconsultasaidamensalprodutoqp(_orcamento, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtppedido, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdti.Date, edtdtf.Date, _Produto){$ENDIF}
    else if trv.selected.text = 'Mensal por Cliente (Quebra Mês)'                        then {$IFDEF VER210}imprimirconsultasaidamensalprodutoqm(_orcamento, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtppedido, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdti.Date, edtdtf.Date, _cliente){$ENDIF}
    else if trv.selected.text = 'Mensal por Cliente (Quebra Cliente)'                    then {$IFDEF VER210}imprimirconsultasaidamensalprodutoqp(_orcamento, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtppedido, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdti.Date, edtdtf.Date, _cliente){$ENDIF};
  end;
end;

procedure Tfrmconsulta.set_lista;
begin
       if (trv.selected.text = Maiuscula(_Cliente)) and (trv.selected.parent.text = 'Excel') then lista.Text := ' '
  else if trv.selected.text = 'Importar'                                                  then lista.text := ' '
  else if trv.selected.text = '424 - Acompanhamento Performance'                          then lista.text := _fornecedor+#13+_clfornecedor
  else if trv.selected.text = '011 - Gráfico Produção Diária'                             then lista.text := _dtemissao+#13+_tpordproducao+#13+_produto
  else if trv.selected.text = '021 - Gráfico Produção Diária de Produto Acabado'          then lista.text := _dtentrega+#13+_tpordproducao+#13+_produto
  else if trv.Selected.Text = '023 - Gráfico Rendimento por Arranjo'                      then lista.text := _dtemissao+#13+_tpordproducao+#13+_produto+#13+_tag
  else if trv.Selected.Text = '024 - Cálculo de OEE Equipamento'                          then lista.Text := _dtemissao+#13+_equipamento
  else if trv.Selected.Text = '052 - Consumo Matéria-Prima pelo Produto da OP'            then lista.Text := _dtemissao+#13+_tpordproducao+#13+_stordproducao
  else if trv.Selected.Text = '019 - Gráfico Produçã Mensal de Itens'                     then lista.text := _dtemissao+#13+_tpordproducao+#13+_produto
  else if trv.selected.text = '012 - Gráfico Parada por Tipo Parada'                      then lista.text := _dtemissao+#13+_tpparada+#13+_equipamento
  else if trv.selected.text = '013 - Gráfico Parada por Sub Tipo Parada'                  then lista.text := _dtemissao+#13+_tpparada+#13+_equipamento
  else if trv.selected.text = '014 - Gráfico Pareto Parada por Tipo Parada'               then lista.text := _dtemissao+#13+_tpparada+#13+_equipamento
  else if trv.selected.text = '015 - Gráfico Pareto Parada por Sub Tipo Parada'           then lista.text := _dtemissao+#13+_tpparada+#13+_equipamento
  else if trv.selected.text = '017 - Controle de Horas do Horímetro'                      then lista.text := _dtemissao+#13+_equipamento
  //else if trv.selected.text = 'Ajustar Cancelado'                                         then lista.text := ' '
  else if trv.selected.text = 'Calcular IQF'                                              then lista.text := ' '
  else if trv.Selected.Text = 'Gerar número de sequência'                                 then lista.text := ' '
  else if trv.selected.text = 'Inserir restrição tipo cobrança'                           then lista.text := _cliente+#13+_tpcobranca+#13+_tpcliente+#13+_stcliente
  else if trv.selected.text = 'Gerar código reduzido'                                     then lista.text := ' '
  else if trv.selected.text = 'Corrigir nome de produto benefiado'                        then lista.text := ' '
  else if trv.selected.text = 'Gerar Avaliação do Histórico IQF'                          then lista.Text := ' '
  else if trv.selected.text = '435 - Analítico - Apontamento por Funcionário'             then lista.Text := _dtemissao+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao+#13+_funcionario
  else if trv.selected.text = '436 - Analítico - Apontamento por Recurso'                 then lista.Text := _dtemissao+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao+#13+_funcionario
  else if trv.selected.text = '441 - Analítico - Matéria-Prima versus Ordem Compra'       then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '042 - Analítico - Produto'                                 then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '043 - Analítico - Produto com Recurso'                     then lista.Text := _dttermino+#13+_dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '044 - Analítico - Recurso por Etapa'                       then lista.Text := _dttermino+#13+_dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '045 - Contador de Etapa por Produto'                       then lista.Text := _dttermino+#13+_dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '046 - Contador de Etapa / Produto por Data de Término'     then lista.Text := _dttermino+#13+_dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '047 - Contador de Etapa / Data de Término por Produto'     then lista.Text := _dttermino+#13+_dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '048 - Analítico - Data de Término do Recurso'              then lista.Text := _dttermino+#13+_dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '049 - Analítico - Produto com erro de estrutura no Apontamento'  then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '440 - Analítico - Recursos versus Apontamento'             then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '473 - Mensal Quantidade Horas Vendidas'                    then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '623 - Sintético - Hora Produzida acima do Orçado'          then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '541 - Sintético - Status para Entrega'                     then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '474 - Mensal Quantidade Horas Vendidas por Equipamento'    then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '018 - Produçã Mensal de Itens por Tipo de Ordem de Produção'then lista.Text := _dtemissao+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '020 - Gráfico de Consumo Diário de Matéria-Prima'            then lista.Text := _dtemissao+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '439 - Sintético - Matéria-Prima versus Ordem Compra'         then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '658 - Analítico - Quantidade Horas Vendidas por Equipamento' then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '396 - Sintético'                                        then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao
  else if trv.selected.text = '659 - Sintético - Atrasado'                             then lista.text := _dtemissao+#13+_dtprventrega+#13+_cliente+#13+_produto+#13+_tpordproducao
  else if trv.selected.text = '649 - Faturamento Equipamento por Locação'              then lista.text := _dtemissao+#13+_cliente+#13+_equipamento
  else if trv.selected.text = 'Curva ABC'                                              then lista.text := _dtemissao+#13+_curva+_abc+#13+_conta+#13+_movimentacao+#13+_fornecedor+#13+_cliente+#13+_tpentrada+#13+_tpmovto+#13+_tpordserv+#13+_tpsaida+#13+_produto+#13+_grupo
  else if trv.selected.text = '419 - Diário Apontamento'                               then lista.text := _dtemissao
  else if trv.selected.text = 'Etiqueta'                                               then lista.text := _Fornecedor
  else if trv.selected.text = '423 - IQF Global'                                       then lista.Text := _data+#13+_fornecedor+#13+_clfornecedor
  else if trv.selected.text = '498 - Lista de Fornecedores Críticos'                   then lista.text := _fornecedor+#13+_uf
  else if trv.selected.text = '062 - Lista'                                            then lista.text := _data+#13+_fornecedor+#13+_uf+#13+_tpfornecedor+#13+_stfornecedor
  else if trv.selected.text = '506 - Lista de Aniversariante'                          then lista.Text := _dtemissao+#13+_funcionario
  else if trv.selected.text = '001 - Lista de Cesta Básica'                            then lista.Text := _data
  else if trv.selected.text = '072 - Lista de Treinamento por Funcionário'             then lista.Text := _data+#13+_funcionario+#13+_tptreinamento
  else if trv.Selected.Text = '073 - Lista de Exame Periódico Realizado'               then lista.Text := _data+#13+_funcionario+#13+_tpexameperiodico
  else if trv.selected.text = '016 - Pagamento Convênio'                               then lista.Text := _data
  else if trv.selected.text = 'Lista Cadastro'                                         then lista.text := _data+#13+_Fornecedor+#13+_stfornecedor+#13+_uf
  else if trv.selected.text = 'Lista Cadastro (Produtos)'                              then lista.text := _data+#13+_Fornecedor+#13+_stfornecedor+#13+_uf
  else if trv.selected.text = '420 - Mensal Apontamento'                               then lista.text := _dtemissao
  else if trv.selected.text = '478 - Número Fornecedores Cadastrados'                  then lista.text := _data+#13+_tpfornecedor+#13+_stfornecedor+#13+_uf+#13+_fornecedor
  else if trv.selected.text = '416 - Sintético'                                        then lista.text := _dtemissao+#13+_stordcompra+#13+_tpordcompra+#13+_fornecedor+#13+_transportadora
  else if trv.selected.text = '414 - Sintético IQF'                                    then lista.text := _dtemissao+#13+_stordcompra+#13+_tpordcompra+#13+_fornecedor+#13+_transportadora
  else if trv.selected.text = '415 - Analítico IQF'                                    then lista.text := _dtemissao+#13+_stordcompra+#13+_tpordcompra+#13+_fornecedor+#13+_transportadora
  else if trv.selected.text = '383 - Analítico'                                        then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_produto+#13+_tporcamento
  else if trv.selected.text = '060 - Analítico Ordem Produção'                         then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_produto+#13+_tporcamento
  else if trv.selected.text = '597 - Analítico Itens Declinados'                       then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_produto+#13+_tporcamento
  else if trv.selected.text = '422 - Analítico Declinado'                              then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '384 - Diário'                                           then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '385 - Diário por Representante'                         then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '386 - Diário por Vendedor'                              then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '387 - Mensal'                                           then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = 'Mensal por Produto (Quebra Mês)'                        then lista.text := _data+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota
  else if trv.selected.text = 'Mensal por Produto (Quebra Produto)'                    then lista.text := _data+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota
  else if trv.selected.text = 'Mensal por Cliente (Quebra Mês)'                        then lista.text := _data+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota
  else if trv.selected.text = 'Mensal por Cliente (Quebra Cliente)'                    then lista.text := _data+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota
  else if trv.selected.text = '388 - Mensal por Vendedor'                              then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '389 - Sintético'                                        then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '061 - Sintético - Matéria-Prima e Hora de Recurso'      then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '390 - Sintético por Cliente'                            then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '391 - Sintético por Representante'                      then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '392 - Sintético por Status'                             then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_tporcamento
  else if trv.selected.text = '393 - Sintético por Vendedor'                           then lista.text := _dtemissao+#13+_cliente+#13+_representante+#13+_storcamento+#13+_condpagto+#13+_tpcobranca+#13+_rota+#13+_PRODUTO+#13+_tporcamento
  else if trv.selected.text = '472 - Por Comprador'                                    then lista.text := _dtemissao+#13+_remetente+#13+_destinatario+#13+_itcontcliente+#13+_uf+_inicio+#13+_uf+_termino+#13+_municipio+_inicio+#13+_municipio+_termino
  else if trv.selected.text = '535 - Local de Prestação'                               then lista.text := _dtemissao+#13+_remetente+#13+_destinatario+#13+_itcontcliente+#13+_uf+_inicio+#13+_uf+_termino+#13+_municipio+_inicio+#13+_municipio+_termino
  else if trv.selected.text = '539 - INSS por Transportadora'                          then lista.text := _dtemissao+#13+_remetente+#13+_destinatario+#13+_itcontcliente+#13+_uf+_inicio+#13+_uf+_termino+#13+_municipio+_inicio+#13+_municipio+_termino
  else if trv.selected.text = '547 - Sintético Notas Fiscais'                          then lista.Text := _dtemissao+#13+_remetente+#13+_destinatario+#13+_itcontcliente+#13+_uf+_inicio+#13+_uf+_termino+#13+_municipio+_inicio+#13+_municipio+_termino
  else if trv.selected.text = '650 - Sintético Notas Fiscais - Proprietário'           then lista.text := _dtemissao+#13+_remetente+#13+_destinatario+#13+_itcontcliente+#13+_uf+_inicio+#13+_uf+_termino+#13+_municipio+_inicio+#13+_municipio+_termino
  else if trv.selected.text = '540 - Sintético Contas a Pagar RPA'                     then lista.Text := _dtemissao+#13+_fornecedor+#13+_itcontcliente+#13+_uf+_inicio+#13+_uf+_termino+#13+_municipio+_inicio+#13+_municipio+_termino
  else if trv.selected.text = '442 - Sintético'                                        then lista.Text := _dtemissao+#13+_funcionario+#13+_cntcusto+#13+_st+_rim
  else if trv.selected.text = '443 - Analítico'                                        then lista.Text := _dtemissao+#13+_funcionario+#13+_cntcusto+#13+_st+_rim
  else if trv.selected.text = '434 - Sintético - Apontamento por Funcionário'          then lista.Text := _dtemissao+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao+#13+_funcionario
  else if trv.selected.text = '577 - Gráfico - Apontamento por Funcionário'            then lista.Text := _dtemissao+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao+#13+_funcionario
  else if trv.selected.text = '437 - Sintético - Apontamento por Recurso'              then lista.Text := _dtemissao+#13+_cliente+#13+_produto+#13+_stordproducao+#13+_tpordproducao+#13+_funcionario
  else if trv.selected.text = '579 - Quantidade por Cliente'                           then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '580 - Quantidade de Horas por Cliente'                  then lista.Text := _dtemissao+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '604 - Quantidade de Horas por Tipo'                     then lista.Text := _dtemissao+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '605 - Quantidade de Horas por Tipo 1'                   then lista.Text := _dtemissao+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '581 - Diário por Data de Emissão'                       then lista.Text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '582 - Diário por Data de Término'                       then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '583 - Mensal por Data de Término'                       then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '584 - Mensal por Data de Emissão'                       then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '585 - Quantidade por Funcionário'                       then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '595 - Quantidade de Horas Diária por Funcionário'       then lista.text := _dtemissao+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '603 - Quantidade de Horas Diária por Tipo'              then lista.text := _dtemissao+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '599 - Quantidade de Horas Diária'                       then lista.text := _dtemissao+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '600 - Quantidade de Horas Mensal'                       then lista.text := _dtemissao+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '596 - Quantidade de Horas Diária por Cliente'           then lista.text := _dtemissao+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '586 - Quantidade por Tipo de Tarefa'                    then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '587 - Quantidade por Tipo de Tarefa 1'                  then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '002 - Lista INSS'                                       then lista.text := ' '
  else if trv.selected.text = '003 - Clientes Atendidos na Nota Fiscal'                then lista.Text := _dtemissao+#13+_transportadora
  else if trv.selected.text = '006 - RPA por Transportadora'                           then lista.Text := _dtemissao+#13+_transportadora+#13+_tprpa
  else if trv.selected.text = '007 - Mapa Frete Mensal'                                then lista.Text := _dtemissao+#13+_transportadora+#13+_tprpa
  else if trv.selected.text = '008 - Valor INSS'                                       then lista.Text := _dtemissao+#13+_transportadora+#13+_tprpa
  else if trv.selected.text = '471 - CTE - Imposto Renda'                              then lista.Text := _dtemissao+#13+_transportadora
  else if trv.selected.text = '009 - Mapa Frete Simples'                               then lista.Text := _dtemissao+#13+_transportadora+#13+_tprpa
  else if trv.selected.text = '053 - Conferência de Frete de Venda'                    then lista.text := _dtemissao+#13+_transportadora
  else if trv.selected.text = '010 - RPA Diário'                                       then lista.Text := _dtemissao+#13+_transportadora+#13+_tprpa
  else if trv.selected.text = '588 - Quantidade por Cliente/Tipo Tarefa 1'             then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '589 - Mensal por Data de Emissão/Cliente'               then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '590 - Mensal por Data de Emissão/Tipo Tarefa'           then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '591 - Mensal por Data de Emissão/Tipo Tarefa 1'         then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '592 - Mensal por Data de Emissão/Funcionário'           then lista.text := _dtemissao+#13+_dtentrega+#13+_dtprventrega+#13+_cliente+#13+_funcionario+#13+_sttarefa+#13+_tptarefa+#13+_tptarefa+_1
  else if trv.selected.text = '593 - Analítico Manutenção Equipamento Diário'          then lista.text := _dtemissao+#13+_cliente+#13+_equipamento+#13+_produto
  else if trv.selected.text = '594 - Analítico Custo Equipamento Diário'               then lista.text := _dtemissao+#13+_cliente+#13+_equipamento+#13+_produto
  else if trv.selected.text = '338 - Analítico'                                        then lista.Text := _dtentrada+#13+_dtsaida+#13+_cliente+#13+_tpcliente+#13+_stordserv+#13+_tpordserv+#13+_prioridade+#13+_etapa+#13+_representante+#13+_atendente+#13+_tecnico+#13+_produto
  else if trv.selected.text = '341 - Sintético'                                        then lista.Text := _dtentrada+#13+_dtsaida+#13+_cliente+#13+_tpcliente+#13+_stordserv+#13+_tpordserv+#13+_prioridade+#13+_etapa+#13+_representante+#13+_atendente+#13+_tecnico+#13+_produto
  else if trv.selected.text = '347 - Sintético Etapa'                                  then lista.Text := _dtentrada+#13+_dtsaida+#13+_cliente+#13+_tpcliente+#13+_stordserv+#13+_tpordserv+#13+_prioridade+#13+_etapa+#13+_representante+#13+_atendente+#13+_tecnico
  else if trv.selected.text = '464 - Sintético por Produto'                            then lista.Text := _dtentrada+#13+_dtsaida+#13+_cliente+#13+_tpcliente+#13+_stordserv+#13+_tpordserv+#13+_prioridade+#13+_etapa+#13+_representante+#13+_atendente+#13+_tecnico+#13+_produto
  else if trv.selected.text = 'Mensal por Produto (Quebra Mês)'                        then lista.Text := _data+#13+_cliente+#13+_representante+#13+_produto+#13+_grupo+#13+_tpordserv+#13+_uf+#13+_tpcliente+#13+_stordserv+#13+_etapa+#13
  else if trv.selected.text = 'Mensal por Produto (Quebra Produto)'                    then lista.Text := _data+#13+_cliente+#13+_representante+#13+_produto+#13+_grupo+#13+_tpordserv+#13+_uf+#13+_tpcliente+#13+_stordserv+#13+_etapa+#13
  else if trv.selected.text = 'Primeira Ordem Serviço'                                 then lista.Text := _dtentrada+#13+_dtsaida+#13+_stordserv+#13+_tpordserv+#13+_cliente+#13+_tpcliente+#13+_prioridade+#13+_etapa+#13+_cbx+_order+_rdg+_order
  else if trv.selected.text = 'Gerar código reduzido'                                  then lista.Text := ' '
  else if trv.selected.text = 'Gerar código CNPJ/CPF'                                  then lista.Text := ' '
  else if trv.selected.text = '055 - Sintético Quebra'                                 then lista.Text := _dtentrada+#13+_dtsaida+#13+_cliente+#13+_tpcliente+#13+_stordserv+#13+_tpordserv+#13+_prioridade+#13+_etapa+#13+_representante+#13+_funcionario+_atendente+#13+_funcionario+_tecnico+#13+_cbx+_quebra;
end;

procedure Tfrmconsulta.FormDestroy(Sender: TObject);
begin
  lista.free;
  cdequipamento.Free;
  cdprioridade.Free;
  nmitcontcliente.Free;
  ordcompra.Free;
  cdstorcamento.Free;
  freeandnil(cdtporcamento);
  freeandnil(cdtpfornecedor);
  cdcntcusto.Free;
  cdstrim.Free;
  cdclfornecedor.Free;
  cdetapa.Free;
  cdtpcliente.Free;
  cdstordserv.Free;
  cduf.Free;
  cdufinicio.Free;
  cduftermino.Free;
  cdmunicipioinicio.Free;
  cdmunicipiotermino.Free;
  cdtppedido.Free;
  cdfuncionario.Free;
  freeandnil(cdtptreinamento);
  freeandnil(cdtpexameperiodico);
  cdtptarefa1.Free;
  cdtptarefa.Free;
  cdsttarefa.Free;
  cdtransportadora.Free;
  cdtprpa.Free;
  cdtpparada.Free;
  cdstitordproducaorecurso.Free;
  cdtpequipamento.Free;
  cdfornecedor.Free;
  cdstordproducao.Free;
  cdtpordproducao.Free;
  cdstordcompra.Free;
  cdtpordcompra.Free;
  cdcliente.Free;
  cdconta.Free;
  cdstfornecedor.Free;
  cdtpcobranca.Free;
  cdcondpagto.Free;
  cdrepresentante.Free;
  cdtpentrada.Free;
  cdtpmovto.Free;
  dstag.Free;
  cdtpordserv.Free;
  cdtpsaida.Free;
  cdproduto.Free;
  cdgrupo.Free;
  cdrota.Free;
  cdrmatividade.Free;
  cdstcliente.Free;
  cdmunicipio.Free;
  cdmovimentacao.Free;
  cdfuncionarioatendente.free;
  cdfuncionariotecnico.free;
  cdremetente.Free;
  cddestinatario.Free;
end;

procedure Tfrmconsulta.criar_objetos;
begin
  lista := TStringList.Create;
  cdfuncionariotecnico   := TStringList.Create;
  cdfuncionarioatendente := TStringList.Create;
  cdequipamento          := TStringList.Create;
  cdprioridade           := TStringList.Create;
  cdstorcamento          := TStringList.create;
  cdtporcamento          := TStringList.Create;
  cdtpfornecedor          := TStringList.Create;
  cdcntcusto             := TStringList.create;
  cdstrim                := tstringlist.Create;
  cdclfornecedor         := tstringlist.Create;
  cdetapa                := TStringList.create;
  cdtpcliente            := TStringList.create;
  cdstordserv            := TStringList.create;
  cduf                   := TStringList.create;
  cdufinicio             := TStringList.create;
  cduftermino            := TStringList.create;
  cdmunicipioinicio      := TStringList.create;
  cdmunicipiotermino     := TStringList.create;
  cdtppedido             := TStringList.create;
  cdtpcobranca           := TStringList.create;
  cdcondpagto            := TStringList.create;
  cdmovimentacao         := TStringList.create;
  cdconta                := TStringList.create;
  cdrota                 := TStringList.create;
  cdrmatividade          := TStringList.create;
  cdrepresentante        := TStringList.create;
  cdfuncionario          := TStringList.create;
  cdtptreinamento        := TStringList.Create;
  cdtpexameperiodico        := TStringList.Create;
  cdtptarefa1            := TStringList.create;
  cdtptarefa             := TStringList.create;
  cdsttarefa             := TStringList.create;
  cdtransportadora       := TStringList.create;
  cdtprpa                := TStringList.Create;
  cdtpparada             := TStringList.Create;
  cdstitordproducaorecurso := TStringList.Create;
  cdtpequipamento        := TStringList.Create;
  cdfornecedor           := TStringList.create;
  cdstordcompra          := TStringList.create;
  cdstordproducao        := TStringList.create;
  cdtpordproducao        := TStringList.create;
  cdtpordcompra          := TStringList.create;
  cdcliente              := TStringList.create;
  cdremetente            := TStringList.Create;
  cddestinatario         := TStringList.Create;
  cdtpentrada            := TStringList.create;
  cdtpmovto              := TStringList.create;
  dstag                  := TStringList.Create;
  cdtpordserv            := TStringList.create;
  cdstordserv            := TStringList.create;
  cdtpsaida              := TStringList.create;
  cdproduto              := TStringList.create;
  cdgrupo                := TStringList.create;
  cdstcliente            := TStringList.create;
  cdmunicipio            := TStringList.create;
  cdstfornecedor         := tstringlist.create;
  nmitcontcliente        := tstringlist.Create;
  ordcompra              := TOrdCompra.create;
end;

procedure Tfrmconsulta.preencher_lista;
var
  i : Integer;
begin
  for I := 0 to lsvatendente.Items.count        - 1 do cdfuncionarioatendente.add(lsvatendente.items   [i].caption);
  for I := 0 to lsvtecnico.Items.count          - 1 do cdfuncionariotecnico.add(lsvtecnico.items [i].caption);
  for I := 0 to lsvprioridade.Items.count       - 1 do cdprioridade.add      (lsvprioridade.items      [i].caption);
  for I := 0 to lsvetapa.Items.count            - 1 do cdetapa.add           (lsvetapa.items           [i].caption);
  for I := 0 to lsvtpcliente.Items.count        - 1 do cdtpcliente.add       (lsvtpcliente.items       [i].caption);
  for I := 0 to lsvequipamento.Items.count      - 1 do cdequipamento.add     (lsvequipamento.items     [i].caption);
  for I := 0 to lsvmovimentacao.Items.count     - 1 do cdmovimentacao.add    (lsvmovimentacao.items    [i].caption);
  for I := 0 to lsvstorcamento.Items.count      - 1 do cdstorcamento.add     (lsvstorcamento.items     [i].caption);
  for I := 0 to lsvtporcamento.Items.count      - 1 do cdtporcamento.add     (lsvtporcamento.items     [i].caption);
  for I := 0 to lsvtpfornecedor.Items.count     - 1 do cdtpfornecedor.add    (lsvtpfornecedor.items     [i].caption);
  for I := 0 to lsvstfornecedor.Items.count     - 1 do cdstfornecedor.add    (lsvstfornecedor.items    [i].caption);
  for I := 0 to lsvcntcusto.Items.count         - 1 do cdcntcusto.add        (lsvcntcusto.items        [i].caption);
  for I := 0 to lsvstrim.Items.count            - 1 do cdstrim.add           (lsvstrim.items           [i].caption);
  for I := 0 to lsvclfornecedor.Items.count     - 1 do cdclfornecedor.add    (lsvclfornecedor.items    [i].caption);
  for I := 0 to lsvuf.Items.count               - 1 do cduf.add              (lsvuf.items              [i].caption);
  for I := 0 to lsvufinicio.Items.count         - 1 do cdufinicio.add        (lsvufinicio.items        [i].caption);
  for I := 0 to lsvuftermino.Items.count        - 1 do cduftermino.add       (lsvuftermino.items       [i].caption);
  for I := 0 to lsvmunicipioinicio.Items.count  - 1 do cdmunicipioinicio.add (lsvmunicipioinicio.items [i].caption);
  for I := 0 to lsvmunicipiotermino.Items.count - 1 do cdmunicipiotermino.add(lsvmunicipiotermino.items[i].caption);
  for I := 0 to lsvtppedido.Items.count         - 1 do cdtppedido.add        (lsvtppedido.items        [i].caption);
  for I := 0 to lsvtpcobranca.Items.count       - 1 do cdtpcobranca.add      (lsvtpcobranca.items      [i].caption);
  for I := 0 to lsvcondpagto.Items.count        - 1 do cdcondpagto.add       (lsvcondpagto.items       [i].caption);
  for I := 0 to lsvrepresentante.Items.count    - 1 do cdrepresentante.add   (lsvrepresentante.items   [i].caption);
  for I := 0 to lsvconta.Items.count            - 1 do cdconta.add           (lsvconta.items           [i].caption);
  for I := 0 to lsvfuncionario.Items.count      - 1 do cdfuncionario.add     (lsvfuncionario.items     [i].caption);
  for I := 0 to lsvtptreinamento.Items.count    - 1 do cdtptreinamento.add   (lsvtptreinamento.items   [i].caption);
  for I := 0 to lsvtpexameperiodico.Items.count    - 1 do cdtpexameperiodico.add   (lsvtpexameperiodico.items   [i].caption);
  for I := 0 to lsvsttarefa.Items.count         - 1 do cdsttarefa.add        (lsvsttarefa.items        [i].caption);
  for I := 0 to lsvtptarefa.Items.count         - 1 do cdtptarefa.add        (lsvtptarefa.items        [i].caption);
  for I := 0 to lsvtptarefa1.Items.count        - 1 do cdtptarefa1.add       (lsvtptarefa1.items       [i].caption);
  for I := 0 to lsvtransportadora.Items.count   - 1 do cdtransportadora.add  (lsvtransportadora.items  [i].caption);
  for I := 0 to lsvtprpa.Items.count            - 1 do cdtprpa.add           (lsvtprpa.items           [i].caption);
  for I := 0 to lsvtpparada.Items.count         - 1 do cdtpparada.add        (lsvtpparada.items        [i].caption);
  for I := 0 to lsvstitordproducaorecurso.Items.count - 1 do cdstitordproducaorecurso.add(lsvstitordproducaorecurso.items[i].caption);
  for i := 0 to lsvtpequipamento.Items.Count    - 1 do cdtpequipamento.add   (lsvtpequipamento.Items   [i].Caption);
  for I := 0 to lsvfornecedor.Items.count       - 1 do cdfornecedor.add      (lsvfornecedor.items      [i].caption);
  for I := 0 to lsvstordcompra.Items.count      - 1 do cdstordcompra.add     (lsvstordcompra.items     [i].caption);
  for I := 0 to lsvstordproducao.Items.count    - 1 do cdstordproducao.add   (lsvstordproducao.items   [i].caption);
  for I := 0 to lsvtpordproducao.Items.count    - 1 do cdtpordproducao.add   (lsvtpordproducao.items   [i].caption);
  for I := 0 to lsvtpordcompra.Items.count      - 1 do cdtpordcompra.add     (lsvtpordcompra.items     [i].caption);
  for I := 0 to lsvcliente.Items.count          - 1 do cdcliente.add         (lsvcliente.items         [i].caption);
  for I := 0 to lsvremetente.Items.count        - 1 do cdremetente.add       (lsvremetente.items       [i].caption);
  for I := 0 to lsvdestinatario.Items.count     - 1 do cddestinatario.add    (lsvdestinatario.items    [i].caption);
  for I := 0 to lsvnmitcontcliente.Items.count  - 1 do nmitcontcliente.add   (lsvnmitcontcliente.items [i].caption);
  for I := 0 to lsvtpentrada.Items.count        - 1 do cdtpentrada.add       (lsvtpentrada.items       [i].caption);
  for I := 0 to lsvtpmovto.Items.count          - 1 do cdtpmovto.add         (lsvtpmovto.items         [i].caption);
  for I := 0 to lsvdstag.Items.count            - 1 do dstag.add             (lsvdstag.items           [i].caption);
  for I := 0 to lsvtpordserv.Items.count        - 1 do cdtpordserv.add       (lsvtpordserv.items       [i].caption);
  for I := 0 to lsvstordserv.Items.count        - 1 do cdstordserv.add       (lsvstordserv.items       [i].caption);
  for I := 0 to lsvtpsaida.Items.count          - 1 do cdtpsaida.add         (lsvtpsaida.items         [i].caption);
  for I := 0 to lsvproduto.Items.count          - 1 do cdproduto.add         (lsvproduto.items         [i].caption);
  for I := 0 to lsvgrupo.Items.count            - 1 do cdgrupo.add           (CodigodoCampo(_grupo, lsvgrupo.items[i].caption, _nunivel));
end;

function Tfrmconsulta.makesqlwhereordproducao(boand:Boolean=False):string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  if boand then Inc(t);
  InsercaoDataSQl(edtdtemissaoi   , edtdtemissaof   , result, _ordproducao+'.'+_dtemissao   , t);
  InsercaoDataSQl(edtdtentregai   , edtdtentregaf   , result, _ordproducao+'.'+_dtentrega   , t);
  InsercaoDataSQl(edtdtprventregai, edtdtprventregaf, result, _ordproducao+'.'+_dtprventrega, t);
  sqlmontarlista(cdcliente      , _pedido     , _cdcliente      , result, t);
  sqlmontarlista(cdproduto      , _ordproducao, _cdproduto      , result, t);
  sqlmontarlista(cdstordproducao, _ordproducao, _cdstordproducao, result, t);
  sqlmontarlista(cdtpordproducao, _ordproducao, _cdtpordproducao, result, t);
end;

function Tfrmconsulta.makesqlwhereordproducao43(boand:Boolean=False):string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  if boand then Inc(t);
  InsercaoDataSQl(edtdtemissaoi   , edtdtemissaof   , result, _ordproducao+'.'+_dtemissao   , t);
  InsercaoDataSQl(edtdtentregai   , edtdtentregaf   , result, _ordproducao+'.'+_dtentrega   , t);
  InsercaoDataSQl(edtdtprventregai, edtdtprventregaf, result, _ordproducao+'.'+_dtprventrega, t);
  InsercaoDataSQl(edtdtterminoi   , edtdtterminof   , result, _itordproducaorecurso+'.'+_dttermino, t);
  sqlmontarlista(cdcliente               , _pedido              , _cdcliente               , result, t);
  sqlmontarlista(cdproduto               , _ordproducao         , _cdproduto               , result, t);
  sqlmontarlista(cdstordproducao         , _ordproducao         , _cdstordproducao         , result, t);
  sqlmontarlista(cdtpordproducao         , _ordproducao         , _cdtpordproducao         , result, t);
  sqlmontarlista(cdtpequipamento         , _itordproducaorecurso, _cdtpequipamento         , result, t);
  sqlmontarlista(cdstitordproducaorecurso, _itordproducaorecurso, _cdstitordproducaorecurso, result, t);
end;

function Tfrmconsulta.makesqlwhereordproducao52:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi , edtdtemissaof, result, _ordproducao+'.'+_dtemissao   , t);
  sqlmontarlista(cdproduto      , _ordproducao, _cdproduto               , result, t);
  sqlmontarlista(cdstordproducao, _ordproducao, _cdstordproducao         , result, t);
  sqlmontarlista(cdtpordproducao, _ordproducao, _cdtpordproducao         , result, t);
end;

function Tfrmconsulta.makesqlwhereordproducaoatrasado:string;
begin
  result := 'where ORDPRODUCAO.dtentrega IS NULL '+
            'and STORDPRODUCAO.BOGERARINFO=''S'' '+
            'AND ORDPRODUCAO.dtprventrega<'+GetDtBanco(DtBanco)+' ';
  InsercaoDataSQl(edtdtemissaoi   , edtdtemissaof   , result, _ordproducao+'.'+_dtemissao);
  InsercaoDataSQl(edtdtprventregai, edtdtprventregaf, result, _ordproducao+'.'+_dtprventrega);
  sqlmontarlista(cdcliente      , _pedido     , _cdcliente          , result);
  sqlmontarlista(cdproduto      , _ordproducao   , _cdproduto          , result);
  sqlmontarlista(cdtpordproducao, _ordproducao, _cdtpordproducao, result);
end;

function Tfrmconsulta.makesqlwhereapontamento:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _APONTAMENTO+'.'+_dtemissao, t);
  sqlmontarlista(cdfuncionario  , _APONTAMENTO, _cdfuncionario  , result, t);
  sqlmontarlista(cdcliente      , _pedido      , _cdcliente      , result, t);
  sqlmontarlista(cdproduto      , _ordproducao , _cdproduto      , result, t);
  sqlmontarlista(cdstordproducao, _ordproducao , _cdstordproducao, result, t);
  sqlmontarlista(cdtpordproducao, _ordproducao , _cdtpordproducao, result, t);
end;

function Tfrmconsulta.makesqlwhereorcamento:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _orcamento+'.'+_dtemissao, t);
  sqlmontarlista(cdrepresentante, _orcamento  , _cdrepresentante, result, t);
  sqlmontarlista(cdcliente      , _orcamento  , _cdcliente      , result, t);
  sqlmontarlista(cdstorcamento  , _orcamento  , _cdstorcamento  , result, t);
  sqlmontarlista(cdcondpagto    , _orcamento  , _cdcondpagto    , result, t);
  sqlmontarlista(cdtpcobranca   , _orcamento  , _cdtpcobranca   , result, t);
  sqlmontarlista(cdrota         , _orcamento  , _cdrota         , result, t);
  sqlmontarlista(cdtporcamento  , _orcamento  , _cdtporcamento  , result, t);
end;

function Tfrmconsulta.makesqlwhereorcamentoproduto:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _orcamento+'.'+_dtemissao, t);
  sqlmontarlista(cdrepresentante, _orcamento  , _cdrepresentante, result, t);
  sqlmontarlista(cdcliente      , _orcamento  , _cdcliente      , result, t);
  sqlmontarlista(cdstorcamento  , _orcamento  , _cdstorcamento  , result, t);
  sqlmontarlista(cdcondpagto    , _orcamento  , _cdcondpagto    , result, t);
  sqlmontarlista(cdtpcobranca   , _orcamento  , _cdtpcobranca   , result, t);
  sqlmontarlista(cdrota         , _orcamento  , _cdrota         , result, t);
  sqlmontarlista(cdproduto      , _itorcamento, _cdproduto      , result, t);
  sqlmontarlista(cdtporcamento  , _orcamento  , _cdtporcamento  , result, t);
end;

function Tfrmconsulta.makesqlwhererim:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _rim+'.'+_dtemissao, t);
  sqlmontarlista(cdstrim      , _rim  , _cdstrim  , result, t);
  sqlmontarlista(cdproduto    , _itrim, _cdproduto    , result, t);
  sqlmontarlista(cdfuncionario, _rim  , _cdfuncionario, result, t);
  sqlmontarlista(cdcntcusto   , _rim  , _cdcntcusto   , result, t);
end;

function Tfrmconsulta.makesqlwherecte:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _cte+'.'+_dtemissao, t);
  sqlmontarlista(cdremetente       , _cte          , _cdremetente         , result, t);
  sqlmontarlista(cddestinatario    , _cte          , _cddestinatario      , result, t);
  sqlmontarlista(cdufinicio        , _cte          , _cduf+_inicio        , result, t);
  sqlmontarlista(cduftermino       , _cte          , _cduf+_termino       , result, t);
  sqlmontarlista(cdmunicipioinicio , _cte          , _cdmunicipio+_inicio , result, t);
  sqlmontarlista(cdmunicipiotermino, _cte          , _cdmunicipio+_termino, result, t);
  sqlmontarlista(nmitcontcliente   , _itcontcliente, _nmitcontcliente     , result, t);
end;

function Tfrmconsulta.makesqlwhere12:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _parada+'.'+_dtemissao, t);
  sqlmontarlista(cdtpparada   , _itparada, _cdtpparada   , result, t);
  sqlmontarlista(cdequipamento, _parada  , _cdequipamento, result, t);
end;

function Tfrmconsulta.makesqlwhere11:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _ordproducao+'.'+_dtemissao, t);
  sqlmontarlista(cdtpordproducao, _ordproducao  , _cdtpordproducao, result, t);
  sqlmontarlista(cdproduto      , _itordproducao, _cdproduto      , result, t);
end;

function Tfrmconsulta.makesql72:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdti, edtdtf, result, _treinamento+'.'+_dtinicio, t);
  sqlmontarlista(cdtptreinamento, _treinamento  , _cdtptreinamento, result, t);
  sqlmontarlista(cdfuncionario, _ittreinamento, _cdfuncionario      , result, t);
end;

function Tfrmconsulta.makesql73:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdti, edtdtf, result, _exameperiodico+'.'+_dtrealizada, t);
  sqlmontarlista(cdtpexameperiodico, _exameperiodico  , _cdtpexameperiodico, result, t);
  sqlmontarlista(cdfuncionario, _exameperiodico, _cdfuncionario      , result, t);
end;

function Tfrmconsulta.makesqlwhere17:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _apontamento+'.'+_dtemissao, t);
  sqlmontarlista(cdequipamento, _apontamento  , _cdequipamento, result, t);
end;

function Tfrmconsulta.makesqlwherecteautpagtorpa:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _autpagto+'.'+_dtemissao, t);
  sqlmontarlista(cdfornecedor , _fornecedor, _cdfornecedor, result, t);
  sqlmontarlista(cdufinicio, _cte, _cduf+_inicio, result, t);
  sqlmontarlista(cduftermino, _cte, _cduf+_termino, result, t);
  sqlmontarlista(cdmunicipioinicio, _cte, _cdmunicipio+_inicio, result, t);
  sqlmontarlista(cdmunicipiotermino, _cte, _cdmunicipio+_termino, result, t);
  sqlmontarlista(nmitcontcliente, _itcontcliente, _nmitcontcliente, result, t);
end;

function Tfrmconsulta.makesqlwhereiqf423:string;
begin
  if FormatDateTime(_dd_mm_yyyy, edtdti.Date) = _00_00_0000 then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_inicial]), mtinformation, [mbok], 0);
    Abort;
  end;
  if FormatDateTime(_dd_mm_yyyy, edtdtf.Date) = _00_00_0000 then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_final]), mtinformation, [mbok], 0);
    Abort;
  end;
  result := 'fornecedor.cdempresa='+empresa.cdempresa.tostring+' ';
  InsercaoDataSQl(edtdti, edtdtf, result, _hclfornecedor+'.'+_tsavaliacao);
  sqlmontarlista(cdfornecedor  , _fornecedor, _cdfornecedor  , result);
  sqlmontarlista(cdclfornecedor, _fornecedor, _cdclfornecedor, result);
end;

function Tfrmconsulta.makesqlwhereiqf:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  sqlmontarlista(cdfornecedor  , _fornecedor, _cdfornecedor  , result, t);
  sqlmontarlista(cdclfornecedor, _fornecedor, _cdclfornecedor, result, t);
end;

function Tfrmconsulta.makesqlwhereordcompra:string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _ordcompra+'.'+_dtemissao, t);
  sqlmontarlista(cdfornecedor    , _ordcompra, _cdfornecedor    , result, t);
  sqlmontarlista(cdstordcompra   , _ordcompra, _cdstordcompra   , result, t);
  sqlmontarlista(cdtpordcompra   , _ordcompra, _cdtpordcompra   , result, t);
  sqlmontarlista(cdtransportadora, _ordcompra, _cdtransportadora, result, t);
end;

function Tfrmconsulta.makesqlwherefornecedorcritico:string;
begin
  sqlmontarlista(cdfornecedor, _fornecedor, _cdfornecedor, result);
  sqlmontarlista(cduf        , _uf        , _cduf        , result);
end;

function Tfrmconsulta.makesqlwherefornecedorcadastro:string;
begin
  result := 'where fornecedor.cdempresa='+empresa.cdempresa.tostring+' ';
  InsercaoDataSQl(edtdti, edtdtf, result, _fornecedor+'.'+_dtcadastro);
  sqlmontarlista(cdfornecedor  , _fornecedor, _cdfornecedor  , result);
  sqlmontarlista(cdstfornecedor, _fornecedor, _cdstfornecedor, result);
  sqlmontarlista(cdtpfornecedor, _fornecedor, _cdtpfornecedor, result);
  sqlmontarlista(cduf          , _fornecedor, _cduf          , result);
end;

function Tfrmconsulta.makesql506:string;
begin
  result := 'where EXTRACT(month FROM f.dtnascimento) between '+formatdatetime(_mm, edtdtemissaoi.date)+' and '+formatdatetime(_mm, edtdtemissaof.Date)+' '+
              'and EXTRACT(day FROM f.dtnascimento) between '  +formatdatetime(_dd, edtdtemissaoi.Date)+' and '+formatdatetime(_dd, edtdtemissaof.Date)+' ';
  sqlmontarlista(cdfuncionario, _f, _cdfuncionario, result);
end;

function Tfrmconsulta.consistir_data:string;
begin
  if FormatDateTime(_dd_mm_yyyy, edtdti.Date) = _00_00_0000 then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_inicial]), mtinformation, [mbok], 0);
    edtdti.SetFocus;
    Abort;
  end;
  if FormatDateTime(_dd_mm_yyyy, edtdtf.Date) = _00_00_0000 then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_final]), mtinformation, [mbok], 0);
    edtdtf.SetFocus;
    Abort;
  end;
  if Primeiro_dia_mes(edtdti.Date) <> edtdti.Date then
  begin
    messagedlg('A data inicial deve ser o primeiro dia do mês.', mtinformation, [mbok], 0);
    edtdti.SetFocus;
    Abort;
  end;
  if Ultimo_Dia_Mes(edtdtf.Date) <> edtdtf.Date then
  begin
    messagedlg('A data final deve ser o último dia do mês.', mtinformation, [mbok], 0);
    edtdtf.SetFocus;
    Abort;
  end;
  if Mes_data(edtdti.Date) <> Mes_data(edtdtf.Date) then
  begin
    MessageDlg('Data inicial e data final devem ser do mesmo mês.', mtInformation, [mbOK], 0);
    edtdti.SetFocus;
    Abort;
  end;
  if  FormatDateTime(_YYYY, edtdti.Date) <> FormatDateTime(_YYYY, edtdtf.Date) then
  begin
    MessageDlg('Data inicial e data final devem ser do mesmo ano.', mtInformation, [mbOK], 0);
    edtdti.SetFocus;
    Abort;
  end;
end;

procedure Tfrmconsulta.CorrigirNomeBenefiado;
var
  ordproducao : tordproducao;
begin
  ordproducao := tordproducao.create;
  try
    if ordproducao.CorrigirNomeProdutoBeneficiado then
    begin
      messagedlg('Nome de benefiado corrigido.', mtinformation, [mbok], 0);
    end;
  finally
    freeandnil(ordproducao);
  end;
end;

function Tfrmconsulta.makesql649:string;
var
  t : Integer;
begin
  result := ' ';
  t      := 1;
  InsercaoDataSQl(edtdtemissaoi   , edtdtemissaof   , result, _saida+'.'+_dtemissao , t);
  sqlmontarlista(cdcliente    , _saida, _cdcliente    , result, t);
  sqlmontarlista(cdequipamento, _locacao, _cdequipamento, result, t);
end;

function Tfrmconsulta.makesql003:string;
var
  t : Integer;
begin
  result := ' ';
  t      := 1;
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _saida+'.'+_dtemissao, t);
  sqlmontarlista(cdtransportadora, _saida, _cdtransportadora, Result, t);
end;

function Tfrmconsulta.makesql471:string;
var
  t : Integer;
begin
  result := ' ';
  t      := 1;
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _cte+'.'+_dtemissao, t);
  sqlmontarlista(cdtransportadora, _veiculo, _cdtransportadora, Result, t);
end;

function Tfrmconsulta.makesql009:string;
var
  t : Integer;
begin
  result := ' ';
  t      := 1;
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _rpa+'.'+_dtemissao, t);
  sqlmontarlista(cdtransportadora, _transportadora, _cdtransportadora, Result, t);
  sqlmontarlista(cdtprpa         , _rpa           , _cdtprpa         , result);
end;

function Tfrmconsulta.makesql053:string;
var
  t : Integer;
begin
  result := ' ';
  t      := 1;
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _embarque+'.'+_dtemissao, t);
  sqlmontarlista(cdtransportadora, _embarque, _cdtransportadora, Result, t);
end;

function Tfrmconsulta.makesqlwheretarefa:string;
var
  t : Integer;
begin
  result := ' ';
  t      := 1;
  InsercaoDataSQl(edtdtemissaoi   , edtdtemissaof   , result, _tarefa+'.'+_dtemissao , t);
  InsercaoDataSQl(edtdtentregai   , edtdtentregaf   , result, _tarefa+'.'+_dttermino , t);
  InsercaoDataSQl(edtdtprventregai, edtdtprventregaf, result, _tarefa+'.'+_dtprevista, t);
  sqlmontarlista(cdcliente    , _tarefa, _cdcliente    , result, t);
  sqlmontarlista(cdfuncionario, _tarefa, _cdfuncionario, result, t);
  sqlmontarlista(cdsttarefa   , _tarefa, _cdsttarefa   , result, t);
  sqlmontarlista(cdtptarefa   , _tarefa, _cdtptarefa   , result, t);
  sqlmontarlista(cdtptarefa1  , _tarefa, _cdtptarefa1  , result, t);
end;

function Tfrmconsulta.makesqlwhereacao:string;
var
  t : Integer;
begin
  result := ' ';
  t      := 1;
  InsercaoDataSQl(edtdtemissaoi   , edtdtemissaof   , result, _acao+'.'+_dtemissao , t);
  sqlmontarlista(cdcliente    , _tarefa, _cdcliente    , result, t);
  sqlmontarlista(cdfuncionario, _acao, _cdfuncionario, result, t);
  sqlmontarlista(cdsttarefa   , _tarefa, _cdsttarefa   , result, t);
  sqlmontarlista(cdtptarefa   , _tarefa, _cdtptarefa   , result, t);
  sqlmontarlista(cdtptarefa1  , _tarefa, _cdtptarefa1  , result, t);
end;

function Tfrmconsulta.makesqlwhereordserv(cdreport:Integer=0):string;
begin
  result := 'where ordserv.cdempresa='+empresa.cdempresa.tostring+' ';
  InsercaoDataSQl(edtdtei, edtdtef, result, _ordserv+'.'+_dtentrada);
  InsercaoDataSQl(edtdtsi, edtdtsf, result, _ordserv+'.'+_dtsaida  );
  sqlmontarlista(cdcliente             , _ordserv  , _cdcliente               , result);
  sqlmontarlista(cdtpcliente           , _cliente  , _cdtpcliente             , result);
  sqlmontarlista(cdstordserv           , _ordserv  , _cdstordserv             , result);
  sqlmontarlista(cdtpordserv           , _ordserv  , _cdtpordserv             , result);
  sqlmontarlista(cdprioridade          , _ordserv  , _cdprioridade            , result);
  sqlmontarlista(cdetapa               , _ordserv  , _cdetapa                 , result);
  sqlmontarlista(cdrepresentante       , _ordserv  , _cdrepresentante         , result);
  sqlmontarlista(cdfuncionarioatendente, _ordserv  , _cdfuncionarioatendente, result);
  sqlmontarlista(cdfuncionariotecnico  , _ordserv  , _cdfuncionariotecnico  , result);
  if cdreport <> 347 then
  begin
    sqlmontarlista(cdproduto             , _itordserv, _cdproduto               , result);
  end;
end;

function Tfrmconsulta.makesql55:string;
  function get_tbl : string;
  begin
    result := cbxquebra.text;
    if lowercase(result) = _status then
    begin
      result := _stordserv;
    end;
  end;
begin
  result := 'where ordserv.cdempresa='+empresa.cdempresa.tostring+' ';
  InsercaoDataSQl(edtdtei, edtdtef, result, _ordserv+'.'+_dtentrada);
  InsercaoDataSQl(edtdtsi, edtdtsf, result, _ordserv+'.'+_dtsaida  );
  sqlmontarlista(cdcliente             , _ordserv  , _cdcliente               , result, 0, ckbclienteinversa.Checked);
  sqlmontarlista(cdtpcliente           , _cliente  , _cdtpcliente             , result);
  sqlmontarlista(cdstordserv           , _ordserv  , _cdstordserv             , result);
  sqlmontarlista(cdtpordserv           , _ordserv  , _cdtpordserv             , result);
  sqlmontarlista(cdprioridade          , _ordserv  , _cdprioridade            , result);
  sqlmontarlista(cdetapa               , _ordserv  , _cdetapa                 , result);
  sqlmontarlista(cdrepresentante       , _ordserv  , _cdrepresentante         , result);
  sqlmontarlista(cdfuncionarioatendente, _ordserv  , _cdfuncionarioatendente, result);
  sqlmontarlista(cdfuncionariotecnico  , _ordserv  , _cdfuncionariotecnico  , result);
  result := result + ' order by ordserv.cd'+get_tbl+',nuordserv';
  qreportvfieldquebra := quotedstr(_nm+get_tbl);
end;

function Tfrmconsulta.makesqlwhereequipamento:string;
begin
  result := 'where ordserv.cdempresa='+empresa.cdempresa.tostring+' ';
  InsercaoDataSQl(edtdtei, edtdtef, result, _ordserv+'.'+_dtentrada);
  sqlmontarlista(cdcliente    , _ordserv  , _cdcliente    , result);
  sqlmontarlista(cdequipamento, _ordserv  , _cdequipamento, result);
  sqlmontarlista(cdproduto    , _itordserv, _cdproduto    , result);
end;

function Tfrmconsulta.makesql16:string;
begin
  result := 'where despesaconvenio.cdempresa='+empresa.cdempresa.tostring+' '+
            'and despesaconvenio.dtinicio>='+GetDtBanco(edtdti.Date)+' '+
            'and despesaconvenio.dttermino<='+GetDtBanco(edtdtf.Date)+' ';
end;

procedure Tfrmconsulta.executar_funcao;
  procedure calcular_iqf;
  begin
    fornecedor := Tfornecedor.create;
    try
      fornecedor.CalcularIQF;
    finally
      fornecedor.Free;
    end;
  end;
  procedure gerar_codigo_reduzido;
  begin
    fornecedor := Tfornecedor.create;
    try
      fornecedor.GerarCodigoReduzido;
    finally
      fornecedor.Free;
    end;
  end;
  procedure gerar_avaliacao_historico_iqf;
  begin
    fornecedor := Tfornecedor.create;
    try
      fornecedor.GerarAvaliacaoHistorico;
    finally
      fornecedor.Free;
    end;
  end;
  procedure importar_cte;
  begin
    cteimportar := TCteImportar.create;
    try
      cteimportar.importar;
    finally
      cteimportar.Free;
    end;
  end;
  procedure Inserir_restricao_tpcobranca_cliente;
  var
    cliente : TCliente;
  begin
    cliente := TCliente.create;
    try
      cliente.inserir_restricao(cdcliente, cdstcliente, cdtpcliente, _tpcobranca, cdtpcobranca);
    finally
      cliente.free;
    end;
  end;
  procedure transportadora_gerar_codigo_reduzido;
  var
    transportadora : TTransportadora;
  begin
    transportadora := TTransportadora.create;
    try
      transportadora.GerarCodigoReduzido;
    finally
      transportadora.destroy;
    end;
  end;
  procedure transportadora_gerar_codigo_cnpj_cpf;
  var
    transportadora : TTransportadora;
  begin
    transportadora := TTransportadora.create;
    try
      transportadora.GerarCodigoCNPJCPF;
    finally
      transportadora.destroy;
    end;
  end;
  procedure gerar_formulacao_numero_sequencia;
    function makesql:string;
    begin
      result := 'select cdformulacao,cditformulacao from itformulacao order by cdformulacao,cditformulacao';
    end;
  var
    q : TClasseQuery;
    sql : TStrings;
    nusequencia : integer;
    cdformulacao : string;
  begin
    nusequencia  := 0;
    sql := TStringList.Create;
    q   := TClasseQuery.create;
    try
      q.q.Open(makesql);
      while not q.q.Eof do
      begin
        if cdformulacao <> q.q.FieldByName(_cdformulacao).AsString then
        begin
          cdformulacao := q.q.FieldByName(_cdformulacao).AsString;
          nusequencia  := 0;
        end;
        Inc(nusequencia);
        sql.Add('update itformulacao set nusequencia='+inttostr(nusequencia)+' where cdempresa='+empresa.cdempresa.tostring+' and cditformulacao='+q.q.fieldbyname(_cditformulacao).AsString);
        q.q.Next;
      end;
      if sql.Count > 0 then
      begin
        ExecutaScript(sql);
      end;
    finally
      sql.Free;
      q.Free;
    end;
  end;
begin
  if (trv.selected.Level = 2) and (trv.selected.parent.parent.text = 'Importação de dados') then
  begin
    dtmmain.LogSiteAction(self.name, trv.selected.parent.text + '/' + trv.selected.text);
    Importar_Dados_para_banco(trv.selected.parent.text, trv.selected.text)
  end
  else
  begin
    dtmmain.LogSiteAction(self.name, trv.selected.text);
         if trv.selected.text = 'Importar'                         then importar_cte
    //else if trv.selected.text = 'Ajustar Cancelado'                then ajustar_cancelado
    else if trv.selected.text = 'Calcular IQF'                     then calcular_IQF
    else if trv.selected.text = 'Gerar código reduzido'            then gerar_codigo_reduzido
    else if trv.Selected.Text = 'Gerar número de sequência'        then gerar_formulacao_numero_sequencia
    else if trv.selected.text = 'Inserir restrição tipo cobrança'  then Inserir_restricao_tpcobranca_cliente
    else if trv.selected.text = 'Gerar Avaliação do Histórico IQF' then gerar_avaliacao_Historico_iqf
    else if trv.selected.text = 'Gerar código reduzido'            then transportadora_gerar_codigo_reduzido
    else if trv.Selected.Text = 'Corrigir nome de produto benefiado' then CorrigirNomeBenefiado
    else if trv.selected.text = 'Gerar código CNPJ/CPF'            then transportadora_gerar_codigo_cnpj_cpf;
  end
end;

procedure Tfrmconsulta.setfalse;
begin
  tbsatendente.TabVisible        := False;
  tbsequipamento.tabvisible      := False;
  tbstag.TabVisible              := False;
  tbsprioridade.TabVisible       := False;
  tbsetapa.TabVisible            := False;
  tbssttarefa.TabVisible         := False;
  tbstptarefa.TabVisible         := False;
  tbstptarefa1.TabVisible        := False;
  tbscliente.TabVisible          := false;
  tbsremetente.TabVisible        := false;
  tbsdestinatario.TabVisible     := false;
  tbsitcontcliente.TabVisible    := False;
  tbsstpedido.TabVisible         := false;
  tbsrepresentante.TabVisible    := false;
  tbsgrupo.TabVisible            := false;
  tbsstrim.TabVisible            := False;
  tbscntcusto.TabVisible         := False;
  tbscondpagto.TabVisible        := false;
  tbstpcobranca.TabVisible       := false;
  tbsclfornecedor.TabVisible     := False;
  tbstppedido.TabVisible         := false;
  tbsfuncionario.TabVisible      := false;
  tbstecnico.TabVisible          := false;
  tbsstitordproducaorecurso.TabVisible := false;
  tbstpequipamento.TabVisible    := false;
  tbstporcamento.TabVisible      := false;
  tbstpfornecedor.TabVisible     := false;
  tbstptreinamento.tabvisible    := false;
  tbstpexameperiodico.tabvisible    := false;
  tbsstordcompra.TabVisible      := false;
  tbsstordproducao.TabVisible    := false;
  tbstpordproducao.TabVisible    := false;
  tbstpordcompra.TabVisible      := false;
  tbsfornecedor.TabVisible       := false;
  tbsTransportadora.TabVisible   := false;
  tbstprpa.tabvisible            := False;
  tbstpparada.tabvisible         := False;
  tbstpsaida.TabVisible          := false;
  tbstpordserv.TabVisible        := false;
  tbsstordserv.TabVisible        := false;
  tbstpentrada.TabVisible        := false;
  tbstpmovto.TabVisible          := false;
  tbstpcliente.TabVisible        := False;
  tbsconta.TabVisible            := false;
  tbsmovimentacao.TabVisible     := false;
  tbsproduto.TabVisible          := false;
  tbsstorcamento.TabVisible      := false;
  tbsfornecedor.TabVisible       := false;
  tbsstfornecedor.TabVisible     := false;
  tbsuf.TabVisible               := false;
  tbsufinicio.TabVisible         := false;
  tbsuftermino.TabVisible        := false;
  tbsmunicipioinicio.TabVisible  := false;
  tbsmunicipiotermino.TabVisible := false;
  cbxquebra.Visible              := false;
  setdata2(false);
  setdata(edtdtei         , edtdtef         , lblentrada   , lblateentrada   , false);
  setdata(edtdtsi         , edtdtsf         , lblsaida     , lblatesaida     , false);
  setdata(edtdtemissaoi   , edtdtemissaof   , lblemissao   , lblateemissao   , false);
  setdata(edtdtvencimentoi, edtdtvencimentof, lblvencimento, lblatevencimento, false);
  setdata(edtdtprventregai, edtdtprventregaf, lblprventrega, lblateprventrega, false);
  setdata(edtdtentregai   , edtdtentregaf   , lblentrega   , lblateentrega   , false);
  setcurvaabc(false);
end;

procedure Tfrmconsulta.Limpar_lista;
begin
  dstag.Clear;
  cdfuncionarioatendente.Clear;
  cdfuncionariotecnico.Clear;
  cdprioridade.Clear;
  cdetapa.Clear;
  cdtpcliente.Clear;
  cdequipamento.Clear;
  cdmovimentacao.Clear;
  cdstorcamento.Clear;
  cdtporcamento.Clear;
  cdtpfornecedor.Clear;
  cdstfornecedor.Clear;
  cdcntcusto.Clear;
  cdstrim.Clear;
  cdclfornecedor.Clear;
  cduf.Clear;
  cdufinicio.Clear;
  cduftermino.Clear;
  cdmunicipioinicio.Clear;
  cdmunicipiotermino.Clear;
  cdtppedido.Clear;
  cdtpcobranca.Clear;
  cdcondpagto.Clear;
  cdrepresentante.Clear;
  cdconta.Clear;
  cdfuncionario.Clear;
  cdsttarefa.Clear;
  cdtptarefa.Clear;
  cdtptarefa1.Clear;
  cdtransportadora.Clear;
  cdtprpa.Clear;
  cdtpparada.Clear;
  cdstitordproducaorecurso.Clear;
  cdtpequipamento.Clear;
  cdfornecedor.Clear;
  cdstordcompra.Clear;
  cdstordproducao.Clear;
  cdtpordproducao.Clear;
  cdtpordcompra.Clear;
  cdcliente.Clear;
  cdremetente.Clear;
  cddestinatario.Clear;
  nmitcontcliente.Clear;
  cdtpentrada.Clear;
  cdtpmovto.Clear;
  cdtpordserv.Clear;
  cdstordserv.Clear;
  cdtpsaida.Clear;
  cdproduto.Clear;
  cdgrupo.Clear;
end;

function Tfrmconsulta.makesql18: string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi   , edtdtemissaof   , result, _ordproducao+'.'+_dtemissao   , t);
  sqlmontarlista(cdproduto      , _ordproducao, _cdproduto      , result, t);
  sqlmontarlista(cdstordproducao, _ordproducao, _cdstordproducao, result, t);
  sqlmontarlista(cdtpordproducao, _ordproducao, _cdtpordproducao, result, t);
end;

function Tfrmconsulta.makesql20: string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi , edtdtemissaof, result, _ordproducao+'.'+_dtemissao   , t);
  sqlmontarlista(cdproduto      , _ordproducao, _cdproduto      , result, t);
  sqlmontarlista(cdstordproducao, _ordproducao, _cdstordproducao, result, t);
  sqlmontarlista(cdtpordproducao, _ordproducao, _cdtpordproducao, result, t);
end;

function Tfrmconsulta.makesqlwhere21: string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtentregai, edtdtentregaf, result, _ordproducao+'.'+_dtentrega, t);
  sqlmontarlista(cdtpordproducao, _ordproducao  , _cdtpordproducao, result, t);
  sqlmontarlista(cdproduto      , _itordproducao, _cdproduto      , result, t);
end;

function Tfrmconsulta.makesqlwhere23: string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _ordproducao+'.'+_dtemissao, t);
  sqlmontarlista(cdtpordproducao, _ordproducao          , _cdtpordproducao, result, t);
  sqlmontarlista(cdproduto      , _itordproducaomaterial, _cdproduto      , result, t);
  sqlmontarlista(dstag          , _ordproducao          , _dstag          , result, t);
end;

function Tfrmconsulta.makesql1: string;
begin
  result := 'where pontotrabalho.cdempresa='+empresa.cdempresa.tostring+' and pontotrabalho.dtemissao between '+GetDtBanco(edtdti.Date)+' and '+GetDtBanco(edtdtf.Date)+' ';
end;

procedure Tfrmconsulta.ToolButton127Click(Sender: TObject);
begin
  ExcluirListView(lsvdstag);
end;

procedure Tfrmconsulta.ToolButton128Click(Sender: TObject);
begin
  lsvdstag.Clear;
end;

procedure Tfrmconsulta.edtdstagKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvdstag, executar_on_change_tag, tedit(sender), key);
end;

function Tfrmconsulta.makesqlwhere24: string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  sqlmontarlista(cdequipamento, _equipamento          , _cdequipamento, result, t);
end;

function Tfrmconsulta.makesqlwheredtemissao: string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result)+1;
  InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _dtemissao, t);
end;

procedure Tfrmconsulta.ToolButton129Click(Sender: TObject);
begin
  AdicionarListView(lsvtecnico, _responsavel);
end;

procedure Tfrmconsulta.ToolButton130Click(Sender: TObject);
begin
  ExcluirListView(lsvtecnico);
end;

procedure Tfrmconsulta.ToolButton131Click(Sender: TObject);
begin
  lsvtecnico.Clear;
end;

procedure Tfrmconsulta.edtcdtecnicoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtecnico, TEdit(sender), key, _responsavel);
end;

procedure Tfrmconsulta.edtnmtecnicoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tecnico, _responsavel);
end;

procedure Tfrmconsulta.edtnmtecnicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtecnico, executar_on_change_tecnico, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton103Click(Sender: TObject);
begin
  AdicionarListView(lsvstitordproducaorecurso);
end;

procedure Tfrmconsulta.ToolButton104Click(Sender: TObject);
begin
  ExcluirListView(lsvstitordproducaorecurso);
end;

procedure Tfrmconsulta.ToolButton105Click(Sender: TObject);
begin
  lsvstitordproducaorecurso.Clear;
end;

procedure Tfrmconsulta.edtcdstitordproducaorecursoKeyPress(Sender: TObject;var Key: Char);
begin
  AdicionarCodigoListView(lsvstitordproducaorecurso, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmstitordproducaorecursoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stitordproducaorecurso);
end;

procedure Tfrmconsulta.edtnmstitordproducaorecursoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstitordproducaorecurso, executar_on_change_stitordproducaorecurso, tedit(sender), key);
end;

procedure Tfrmconsulta.btn4Click(Sender: TObject);
begin
  AdicionarListView(lsvtpequipamento);
end;

procedure Tfrmconsulta.btn5Click(Sender: TObject);
begin
  ExcluirListView(lsvtpequipamento);
end;

procedure Tfrmconsulta.btn6Click(Sender: TObject);
begin
  lsvtpequipamento.Clear;
end;

procedure Tfrmconsulta.edtcdtpequipamentoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpequipamento, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtcdtpexameperiodicoKeyPress(Sender: TObject;
  var Key: Char);
begin
  AdicionarCodigoListView(lsvtpexameperiodico, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpequipamentoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpequipamento);
end;

procedure Tfrmconsulta.edtnmtpequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpequipamento, executar_on_change_tpequipamento, tedit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpexameperiodicoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpexameperiodico);
end;

procedure Tfrmconsulta.edtnmtpexameperiodicoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpexameperiodico, executar_on_change_tpexameperiodico, tedit(sender), key);
end;

procedure Tfrmconsulta.edtcdtporcamentoKeyPress(Sender: TObject;var Key: Char);
begin
  AdicionarCodigoListView(lsvtporcamento, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtporcamentoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tporcamento);
end;

procedure Tfrmconsulta.edtnmtporcamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtporcamento, executar_on_change_tporcamento, tedit(sender), key);
end;

procedure Tfrmconsulta.ToolButton132Click(Sender: TObject);
begin
  AdicionarListView(lsvtporcamento);
end;

procedure Tfrmconsulta.ToolButton133Click(Sender: TObject);
begin
  ExcluirListView(lsvtporcamento);
end;

procedure Tfrmconsulta.ToolButton134Click(Sender: TObject);
begin
  lsvtporcamento.Clear;
end;

procedure Tfrmconsulta.set_embarque(no1, no2: TTreeNode);
begin
  if not empresa.faturamento.boembarque then
  begin
    Exit;
  end;
  no2 := trv.Items.AddChild(no1, 'Embarque');
  trv.Items.AddChild(no2, '053 - Conferência de Frete de Venda');
end;

procedure Tfrmconsulta.ToolButton135Click(Sender: TObject);
begin
  AdicionarListView(lsvtpfornecedor);
end;

procedure Tfrmconsulta.ToolButton136Click(Sender: TObject);
begin
  ExcluirListView(lsvtpfornecedor);
end;

procedure Tfrmconsulta.ToolButton137Click(Sender: TObject);
begin
  lsvtpfornecedor.Clear;
end;

procedure Tfrmconsulta.ToolButton138Click(Sender: TObject);
begin
  AdicionarListView(lsvtptreinamento);
end;

procedure Tfrmconsulta.ToolButton139Click(Sender: TObject);
begin
  ExcluirListView(lsvtptreinamento);
end;

procedure Tfrmconsulta.edtcdtpfornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpfornecedor, TEdit(sender), key);
end;

procedure Tfrmconsulta.edtnmtpfornecedorChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpfornecedor);
end;

procedure Tfrmconsulta.edtnmtpfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpfornecedor, executar_on_change_tpfornecedor, tedit(sender), key);
end;

end.

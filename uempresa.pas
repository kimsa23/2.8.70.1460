unit uempresa;

interface

uses
  System.Actions, System.UITypes, Winapi.Messages,
  forms, Windows, Classes, ActnList, StdCtrls, Mask, ComCtrls, ToolWin, Controls,
  ExtCtrls, dialogs, ActnMan, ActnCtrls, ExtActns, StdActns, Buttons, sysutils,
  Graphics, Menus,
  DB,
  ustrings, urotinas, uregistroIb, uregistro, uvalidadocumento, uconstantes,
  classeempresa, classeversao, classeusuario, classeconsiste,
  classeRegistro, classeregistrainformacao, classeform, classeexecutasql,

  cxGraphics, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxGroupBox, cxPC, cxControls, dxBar, cxClasses,
  cxLookAndFeels, cxLabel, cxStyles, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxDropDownEdit, cxDBLookupComboBox, cxImage, cxDBEdit,
  cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit,
  cxCalendar, cxButtonEdit, cxDBLabel, cxCheckBox, cxCalc, cxSpinEdit,
  cxRadioGroup, cxPCdxBarPopupMenu, dxBarBuiltInMenu, cxTimeEdit,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmEmpresa = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    cld: TColorDialog;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnNovo: TdxBarLargeButton;
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtncancelar: TdxBarLargeButton;
    dxbrlrgbtnexcluir: TdxBarLargeButton;
    dxbrsprtr1: TdxBarSeparator;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrsprtr2: TdxBarSeparator;
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    Panel1: TPanel;
    bvl1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    pgc: TcxPageControl;
    tbscadastro: TcxTabSheet;
    tbslogomarca1: TcxTabSheet;
    pnl: TcxLabel;
    tbsopcoes: TcxTabSheet;
    grd: TcxDBVerticalGrid;
    grdCategoryRow1: TcxCategoryRow;
    grdDBEditorRow1: TcxDBEditorRow;
    grdDBEditorRow2: TcxDBEditorRow;
    grdDBEditorRow3: TcxDBEditorRow;
    grdDBEditorRow4: TcxDBEditorRow;
    grdDBEditorRow5: TcxDBEditorRow;
    grdDBEditorRow6: TcxDBEditorRow;
    grdDBEditorRow7: TcxDBEditorRow;
    grdDBEditorRow8: TcxDBEditorRow;
    grdDBEditorRow9: TcxDBEditorRow;
    grdDBEditorRow10: TcxDBEditorRow;
    grdDBEditorRow11: TcxDBEditorRow;
    grdDBEditorRow12: TcxDBEditorRow;
    grdDBEditorRow13: TcxDBEditorRow;
    grdDBEditorRow14: TcxDBEditorRow;
    grdDBEditorRow15: TcxDBEditorRow;
    grdDBEditorRow16: TcxDBEditorRow;
    grdDBEditorRow17: TcxDBEditorRow;
    grdDBEditorRow18: TcxDBEditorRow;
    grdDBEditorRow19: TcxDBEditorRow;
    grdDBEditorRow20: TcxDBEditorRow;
    grdCategoryRow4: TcxCategoryRow;
    grdCategoryRow6: TcxCategoryRow;
    grdCategoryRow7: TcxCategoryRow;
    grdCategoryRow9: TcxCategoryRow;
    grdCategoryRow10: TcxCategoryRow;
    grdCategoryRow11: TcxCategoryRow;
    grdCategoryRow15: TcxCategoryRow;
    grdCategoryRow16: TcxCategoryRow;
    grdDBEditorRow24: TcxDBEditorRow;
    grdDBEditorRow25: TcxDBEditorRow;
    grdDBEditorRow26: TcxDBEditorRow;
    grdDBEditorRow28: TcxDBEditorRow;
    grdDBEditorRow29: TcxDBEditorRow;
    grdDBEditorRow30: TcxDBEditorRow;
    grdDBEditorRow31: TcxDBEditorRow;
    grdDBEditorRow32: TcxDBEditorRow;
    grdDBEditorRow34: TcxDBEditorRow;
    grdCategoryRow20: TcxCategoryRow;
    grdCategoryRow21: TcxCategoryRow;
    grdDBEditorRow37: TcxDBEditorRow;
    grdDBEditorRow38: TcxDBEditorRow;
    grdDBEditorRow39: TcxDBEditorRow;
    grdDBEditorRow40: TcxDBEditorRow;
    grdDBEditorRow41: TcxDBEditorRow;
    grdDBEditorRow42: TcxDBEditorRow;
    grdDBEditorRow43: TcxDBEditorRow;
    grdDBEditorRow44: TcxDBEditorRow;
    grdDBEditorRow45: TcxDBEditorRow;
    grdDBEditorRow47: TcxDBEditorRow;
    grdDBEditorRow49: TcxDBEditorRow;
    grdDBEditorRow50: TcxDBEditorRow;
    grdDBEditorRow52: TcxDBEditorRow;
    grdDBEditorRow53: TcxDBEditorRow;
    grdDBEditorRow54: TcxDBEditorRow;
    grdDBEditorRow56: TcxDBEditorRow;
    grdDBEditorRow57: TcxDBEditorRow;
    grdDBEditorRow58: TcxDBEditorRow;
    grdDBEditorRow59: TcxDBEditorRow;
    grdDBEditorRow60: TcxDBEditorRow;
    grdDBEditorRow61: TcxDBEditorRow;
    grdDBEditorRow62: TcxDBEditorRow;
    grdDBEditorRow63: TcxDBEditorRow;
    grdDBEditorRow65: TcxDBEditorRow;
    grdDBEditorRow66: TcxDBEditorRow;
    grdDBEditorRow71: TcxDBEditorRow;
    grdDBEditorRow72: TcxDBEditorRow;
    grdDBEditorRow73: TcxDBEditorRow;
    grdDBEditorRow78: TcxDBEditorRow;
    grdDBEditorRow81: TcxDBEditorRow;
    grdDBEditorRow82: TcxDBEditorRow;
    grdDBEditorRow85: TcxDBEditorRow;
    grdDBEditorRow86: TcxDBEditorRow;
    grdDBEditorRow88: TcxDBEditorRow;
    grdDBEditorRow89: TcxDBEditorRow;
    grdDBEditorRow90: TcxDBEditorRow;
    grdCategoryRow25: TcxCategoryRow;
    grdCategoryRow26: TcxCategoryRow;
    grdCategoryRow27: TcxCategoryRow;
    grdCategoryRow28: TcxCategoryRow;
    grdDBEditorRow91: TcxDBEditorRow;
    grdDBEditorRow92: TcxDBEditorRow;
    grdDBEditorRow93: TcxDBEditorRow;
    grdDBEditorRow94: TcxDBEditorRow;
    grdDBEditorRow95: TcxDBEditorRow;
    grdDBEditorRow97: TcxDBEditorRow;
    grdDBEditorRow98: TcxDBEditorRow;
    grdDBEditorRow100: TcxDBEditorRow;
    grdDBEditorRow101: TcxDBEditorRow;
    grdDBEditorRow102: TcxDBEditorRow;
    grdDBEditorRow103: TcxDBEditorRow;
    grdDBEditorRow106: TcxDBEditorRow;
    grdDBEditorRow107: TcxDBEditorRow;
    grdDBEditorRow109: TcxDBEditorRow;
    grdDBEditorRow111: TcxDBEditorRow;
    grdDBEditorRow112: TcxDBEditorRow;
    grdDBEditorRow113: TcxDBEditorRow;
    grdDBEditorRow114: TcxDBEditorRow;
    grdDBEditorRow115: TcxDBEditorRow;
    grdDBEditorRow116: TcxDBEditorRow;
    grdDBEditorRow121: TcxDBEditorRow;
    grdDBEditorRow134: TcxDBEditorRow;
    grdDBEditorRow135: TcxDBEditorRow;
    grdDBEditorRow136: TcxDBEditorRow;
    grdDBEditorRow137: TcxDBEditorRow;
    grdDBEditorRow139: TcxDBEditorRow;
    grdDBEditorRow140: TcxDBEditorRow;
    grdDBEditorRow141: TcxDBEditorRow;
    grdDBEditorRow142: TcxDBEditorRow;
    grdDBEditorRow143: TcxDBEditorRow;
    grdDBEditorRow144: TcxDBEditorRow;
    grdDBEditorRow145: TcxDBEditorRow;
    grdDBEditorRow146: TcxDBEditorRow;
    grdDBEditorRow147: TcxDBEditorRow;
    grdDBEditorRow148: TcxDBEditorRow;
    grdDBEditorRow149: TcxDBEditorRow;
    grdDBEditorRow150: TcxDBEditorRow;
    grdDBEditorRow152: TcxDBEditorRow;
    grdDBEditorRow154: TcxDBEditorRow;
    grdDBEditorRow155: TcxDBEditorRow;
    grdDBEditorRow156: TcxDBEditorRow;
    grdDBEditorRow157: TcxDBEditorRow;
    grdDBEditorRow158: TcxDBEditorRow;
    grdDBEditorRow159: TcxDBEditorRow;
    grdDBEditorRow160: TcxDBEditorRow;
    grdDBEditorRow161: TcxDBEditorRow;
    grdDBEditorRow162: TcxDBEditorRow;
    grdDBEditorRow163: TcxDBEditorRow;
    grdDBEditorRow164: TcxDBEditorRow;
    grdDBEditorRow165: TcxDBEditorRow;
    grdDBEditorRow166: TcxDBEditorRow;
    grdDBEditorRow167: TcxDBEditorRow;
    grdDBEditorRow168: TcxDBEditorRow;
    grdDBEditorRow183: TcxDBEditorRow;
    grdDBEditorRow185: TcxDBEditorRow;
    img1: TcxDBImage;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    actAdicionar: TAction;
    actexcluir: TAction;
    actsalvarlogo: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dts: TDataSource;
    edtnome: TcxDBTextEdit;
    edtrzsocial: TcxDBTextEdit;
    gbxComercial: TcxGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    edtnufax: TcxDBMaskEdit;
    edtnufone2: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtnucxpostal: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    edtnufone3: TcxDBMaskEdit;
    edtemail: TcxDBTextEdit;
    Label58: TLabel;
    edtemailnfe: TcxDBTextEdit;
    Label12: TLabel;
    gbxJuridica: TcxGroupBox;
    Label24: TLabel;
    Label29: TLabel;
    edtnucnpj: TcxDBMaskEdit;
    edtnuinscest: TcxDBTextEdit;
    Label1: TLabel;
    edtNUINSCMUNICIPAL: TcxDBTextEdit;
    edtNUCNAE: TcxDBTextEdit;
    Label13: TLabel;
    Label14: TLabel;
    edtNMRESPONSAVEL: TcxDBTextEdit;
    edtDTFUNDACAO: TcxDBDateEdit;
    Label15: TLabel;
    Label37: TLabel;
    cbxCDTPREGIMETRIBUTARIO: TcxDBLookupComboBox;
    gbxcontador: TcxGroupBox;
    edtcdfornecedor: TcxDBButtonEdit;
    edtnucrc: TcxDBTextEdit;
    lbl1: TLabel;
    grdDBEditorRow188: TcxDBEditorRow;
    chkbosubstituto: TcxDBCheckBox;
    grdDBEditorRow189: TcxDBEditorRow;
    edtcodigo: TcxTextEdit;
    grdDBEditorRow169: TcxDBEditorRow;
    grdDBEditorRow170: TcxDBEditorRow;
    grdDBEditorRow174: TcxDBEditorRow;
    rdgtpregime: TcxDBRadioGroup;
    edtnucpfcontador: TcxDBMaskEdit;
    Label2: TLabel;
    grdDBEditorRow175: TcxDBEditorRow;
    grdDBEditorRow176: TcxDBEditorRow;
    grdDBEditorRow177: TcxDBEditorRow;
    grdCategoryRow2: TcxCategoryRow;
    grdDBEditorRow178: TcxDBEditorRow;
    grdDBEditorRow179: TcxDBEditorRow;
    grdDBEditorRow181: TcxDBEditorRow;
    lblhomepage: TLabel;
    edthomepage: TcxDBTextEdit;
    grdDBEditorRow186: TcxDBEditorRow;
    grdCategoryRow5: TcxCategoryRow;
    grdDBEditorRow192: TcxDBEditorRow;
    grdDBEditorRow193: TcxDBEditorRow;
    grdDBEditorRow194: TcxDBEditorRow;
    grdDBEditorRow195: TcxDBEditorRow;
    grdDBEditorRow196: TcxDBEditorRow;
    lblnmcontabilista: TLabel;
    edtnmcontador: TcxDBTextEdit;
    lblcontabilidade: TLabel;
    grdDBEditorRow198: TcxDBEditorRow;
    grdDBEditorRow199: TcxDBEditorRow;
    grdDBEditorRow200: TcxDBEditorRow;
    grdDBEditorRow201: TcxDBEditorRow;
    lblnmfornecedor: TLabel;
    actabrirfornecedor: TAction;
    grdDBEditorRow202: TcxDBEditorRow;
    grdDBEditorRow204: TcxDBEditorRow;
    grdDBEditorRow205: TcxDBEditorRow;
    grdDBEditorRow206: TcxDBEditorRow;
    grdDBEditorRow207: TcxDBEditorRow;
    grdDBEditorRow209: TcxDBEditorRow;
    grdDBEditorRow210: TcxDBEditorRow;
    grdDBEditorRow211: TcxDBEditorRow;
    grdCategoryRow8: TcxCategoryRow;
    grdDBEditorRow212: TcxDBEditorRow;
    grdCDCTETPTOMADOR: TcxDBEditorRow;
    grdCDIND_ATIV: TcxDBEditorRow;
    grdCDIND_PERFIL: TcxDBEditorRow;
    grdCategoryRow13: TcxCategoryRow;
    grdDBEditorRow215: TcxDBEditorRow;
    grdDBEditorRow216: TcxDBEditorRow;
    Label27: TLabel;
    edtnucpf: TcxDBMaskEdit;
    grdDBEditorRow217: TcxDBEditorRow;
    grdDBEditorRow218: TcxDBEditorRow;
    grdDBEditorRow219: TcxDBEditorRow;
    grdDBEditorRow220: TcxDBEditorRow;
    grdDBEditorRow222: TcxDBEditorRow;
    grdDBEditorRow223: TcxDBEditorRow;
    grdDBEditorRow224: TcxDBEditorRow;
    grdDBEditorRow225: TcxDBEditorRow;
    grdDBEditorRow226: TcxDBEditorRow;
    grdDBEditorCDINDESCRITURACAO: TcxDBEditorRow;
    grdDBEditorRow227: TcxDBEditorRow;
    grdDBEditorRow228: TcxDBEditorRow;
    grdDBEditorRow46: TcxDBEditorRow;
    grdCDINDICADORPESSOAJURIDICA: TcxDBEditorRow;
    grdCDINDICADORATIVIDADE: TcxDBEditorRow;
    grdCDINDICADORINCIDENCIA: TcxDBEditorRow;
    grdDBEditorRow117: TcxDBEditorRow;
    grdCDINDICADORAPROPRIACAO: TcxDBEditorRow;
    grdCDINDICADORCONTRIBUICAO: TcxDBEditorRow;
    grdCDIND_REG_CUM: TcxDBEditorRow;
    grdDBEditorRow33: TcxDBEditorRow;
    grdDBEditorRow104: TcxDBEditorRow;
    grdDBEditorRow105: TcxDBEditorRow;
    grdCategoryRow14: TcxCategoryRow;
    grdDBEditorRow64: TcxDBEditorRow;
    grdDBEditorRow67: TcxDBEditorRow;
    grdDBEditorRow68: TcxDBEditorRow;
    grdDBEditorRow69: TcxDBEditorRow;
    grdDBEditorRow70: TcxDBEditorRow;
    grdDBEditorRow74: TcxDBEditorRow;
    grdDBEditorRow79: TcxDBEditorRow;
    grdDBEditorRow80: TcxDBEditorRow;
    grdDBEditorRow110: TcxDBEditorRow;
    grdDBEditorRow118: TcxDBEditorRow;
    grdDBEditorRow119: TcxDBEditorRow;
    grdDBEditorRow120: TcxDBEditorRow;
    grdDBEditorRow122: TcxDBEditorRow;
    grdDBEditorRow124: TcxDBEditorRow;
    grdCategoryRow3: TcxCategoryRow;
    grdCategoryRow17: TcxCategoryRow;
    grdCategoryRow18: TcxCategoryRow;
    grdCategoryRow19: TcxCategoryRow;
    actcontadores: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    grdCategoryRow22: TcxCategoryRow;
    grdcdtpcteresponsavelseguro: TcxDBEditorRow;
    grdcdfornedorseguradora: TcxDBEditorRow;
    grdDBEditorRow133: TcxDBEditorRow;
    grdDBEditorRow131: TcxDBEditorRow;
    grdDBEditorRow132: TcxDBEditorRow;
    grdDBEditorRow36: TcxDBEditorRow;
    grdDBEditorRow48: TcxDBEditorRow;
    grdDBEditorRow153: TcxDBEditorRow;
    grdDBEditorRow184: TcxDBEditorRow;
    grdDBEditorRow187: TcxDBEditorRow;
    grdDBEditorRow190: TcxDBEditorRow;
    lbltpempresa: TLabel;
    cbxcdtpempresa: TcxDBLookupComboBox;
    grdDBEditorRow83: TcxDBEditorRow;
    grdDBEditorRow180: TcxDBEditorRow;
    grdDBEditorRow182: TcxDBEditorRow;
    grdDBEditorRow191: TcxDBEditorRow;
    grdDBEditorRow221: TcxDBEditorRow;
    grdDBEditorRow229: TcxDBEditorRow;
    grdDBEditorRow230: TcxDBEditorRow;
    grdDBEditorRow231: TcxDBEditorRow;
    grdDBEditorRow232: TcxDBEditorRow;
    grdDBEditorRow233: TcxDBEditorRow;
    grdDBEditorRow234: TcxDBEditorRow;
    grdDBEditorRow235: TcxDBEditorRow;
    grdDBEditorRow236: TcxDBEditorRow;
    grdCategoryRow23: TcxCategoryRow;
    grdDBEditorRow237: TcxDBEditorRow;
    grdDBEditorRow238: TcxDBEditorRow;
    grdDBEditorRow239: TcxDBEditorRow;
    grdDBEditorRow240: TcxDBEditorRow;
    grdDBEditorRow241: TcxDBEditorRow;
    grdDBEditorRow242: TcxDBEditorRow;
    grdDBEditorRow243: TcxDBEditorRow;
    grdDBEditorRow244: TcxDBEditorRow;
    grdDBEditorRow245: TcxDBEditorRow;
    grdDBEditorRow246: TcxDBEditorRow;
    grdDBEditorRow247: TcxDBEditorRow;
    grdDBEditorRow250: TcxDBEditorRow;
    grdCategoryRow24: TcxCategoryRow;
    grdCategoryRow29: TcxCategoryRow;
    grdCategoryRow30: TcxCategoryRow;
    grdCategoryRow31: TcxCategoryRow;
    grdCategoryRow33: TcxCategoryRow;
    grdDBEditorRow251: TcxDBEditorRow;
    grdDBEditorRow252: TcxDBEditorRow;
    grdDBEditorRow253: TcxDBEditorRow;
    grdDBEditorRow248: TcxDBEditorRow;
    grdDBEditorRow249: TcxDBEditorRow;
    grdDBEditorRow254: TcxDBEditorRow;
    grdDBEditorRow255: TcxDBEditorRow;
    grdCDCTETPPREVISAOENTREGAH: TcxDBEditorRow;
    grdCDCTETPPREVISAOENTREGA: TcxDBEditorRow;
    grdCDPRODUTOCTE: TcxDBEditorRow;
    grdDBEditorRow257: TcxDBEditorRow;
    grdDBEditorRow258: TcxDBEditorRow;
    grdDBEditorRow259: TcxDBEditorRow;
    grdDBEditorRow260: TcxDBEditorRow;
    grdDBEditorRow261: TcxDBEditorRow;
    grdDBEditorRow262: TcxDBEditorRow;
    grdDBEditorRow263: TcxDBEditorRow;
    grdDBEditorRow264: TcxDBEditorRow;
    grdDBEditorRow265: TcxDBEditorRow;
    grdDBEditorRow208: TcxDBEditorRow;
    grdDBEditorRow266: TcxDBEditorRow;
    grdcdcntcustorpa: TcxDBEditorRow;
    grdcdplcontarpa: TcxDBEditorRow;
    grdCategoryRow34: TcxCategoryRow;
    grdCategoryRow35: TcxCategoryRow;
    grdDBEditorRow268: TcxDBEditorRow;
    grdDBEditorRow269: TcxDBEditorRow;
    grdDBEditorRow270: TcxDBEditorRow;
    grdDBEditorRow271: TcxDBEditorRow;
    grdDBEditorRow272: TcxDBEditorRow;
    grdDBEditorRow273: TcxDBEditorRow;
    grdDBEditorRow76: TcxDBEditorRow;
    grdDBEditorRow99: TcxDBEditorRow;
    grdDBEditorRow267: TcxDBEditorRow;
    grdDBEditorRow274: TcxDBEditorRow;
    grdDBEditorRow51: TcxDBEditorRow;
    grdDBEditorRow96: TcxDBEditorRow;
    grdDBEditorRow138: TcxDBEditorRow;
    grdDBEditorRow197: TcxDBEditorRow;
    grdDBEditorRow275: TcxDBEditorRow;
    grdDBEditorRow276: TcxDBEditorRow;
    grdDBEditorRow277: TcxDBEditorRow;
    grdCDEVENTOEMAILMANAGERDUPLICATA: TcxDBEditorRow;
    grdDBEditorRow278: TcxDBEditorRow;
    grdDBEditorRow279: TcxDBEditorRow;
    grdDBEditorRow87: TcxDBEditorRow;
    grdDBEditorRow280: TcxDBEditorRow;
    grdDBEditorRow281: TcxDBEditorRow;
    grdDBEditorRow282: TcxDBEditorRow;
    grdDBEditorRow171: TcxDBEditorRow;
    grdDBEditorRow84: TcxDBEditorRow;
    grdDBEditorRow172: TcxDBEditorRow;
    grdDBEditorRow173: TcxDBEditorRow;
    grdDBEditorRow283: TcxDBEditorRow;
    grdDBEditorRow284: TcxDBEditorRow;
    grdDBEditorRow285: TcxDBEditorRow;
    grdDBEditorRow203: TcxDBEditorRow;
    grdCategoryRow12: TcxCategoryRow;
    grdDBEditorRow286: TcxDBEditorRow;
    grdDBEditorRow287: TcxDBEditorRow;
    grdDBEditorRow288: TcxDBEditorRow;
    grdCDEVENTOEMAILDUPLICATABOLETO: TcxDBEditorRow;
    grdDBEditorRow289: TcxDBEditorRow;
    grdDBEditorRow127: TcxDBEditorRow;
    grdCDCTEFORMAPAGAMENTO: TcxDBEditorRow;
    grdDBEditorRow128: TcxDBEditorRow;
    grdDBEditorRow151: TcxDBEditorRow;
    grdDBEditorRow290: TcxDBEditorRow;
    grdDBEditorRow291: TcxDBEditorRow;
    grdDBEditorRow129: TcxDBEditorRow;
    grdDBEditorRow130: TcxDBEditorRow;
    grdDBEditorRow292: TcxDBEditorRow;
    grdDBEditorRow293: TcxDBEditorRow;
    grdDBEditorRow294: TcxDBEditorRow;
    grdDBEditorRow295: TcxDBEditorRow;
    grdCategoryRow32: TcxCategoryRow;
    grdDBEditorRow296: TcxDBEditorRow;
    grdDBEditorRow297: TcxDBEditorRow;
    grdDBEditorRow21: TcxDBEditorRow;
    grdDBEditorRow22: TcxDBEditorRow;
    qry: TFDQuery;
    grdDBEditorRow23: TcxDBEditorRow;
    grdDBEditorRow27: TcxDBEditorRow;
    grdCategoryRow36: TcxCategoryRow;
    grdDBEditorRow35: TcxDBEditorRow;
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure actAdicionarExecute(Sender: TObject);
    procedure actexcluirExecute(Sender: TObject);
    procedure actsalvarlogoExecute(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure ColorEnter(Sender: TObject);
    procedure ColorExit(Sender: TObject);
    procedure lblnmfornecedorDblClick(Sender: TObject);
    procedure actabrirfornecedorExecute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure actcontadoresExecute(Sender: TObject);
    procedure grdCDPRODUTOCTEEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actChange(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure grdDBEditorRow27EditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grdDBEditorRow35EditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private      { Private declarations }
    procedure check_produto_cte;
    procedure AbrirTabelas;
    procedure ConsistirPlcontaCteRPA;
    procedure ConsistirCntCustoCteRPA;
  public  { Public declarations }
    registro : TRegistro;
  end;

var
  frmEmpresa: TfrmEmpresa;

implementation

uses uDtmMain, uMain, ulocalizarfornecedor,
  udlgtabela, ulocalizar;

{$R *.DFM}

const
  tbl      = 'empresa';
  exibe    = 'Empresa';
  artigoI  = 'a';

procedure TfrmEmpresa.actSalvarExecute(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL,0,0);
  if edtnuinscest.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Inscricao_Estadual]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbscadastro;
    qry.fieldbyname(_nuinscest).FocusControl;
    Abort;
  end;
  ConsistirPlcontaCteRPA;
  ConsistirCntCustoCteRPA;
  registro.salvar;
  MessageDlg('Para aplicar as alterações ao sistema é necessário fechá-lo e abrí-lo novamente.', mtInformation, [mbOK], 0);
end;

procedure TfrmEmpresa.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure TfrmEmpresa.actChange(Sender: TObject);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmEmpresa.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmEmpresa.FormShow(Sender: TObject);
begin
  registro.RegistroAbrir(empresa.cdempresa);
  img1.DataBinding.DataSource := dts;
  img1.DataBinding.DataField  := _logomarca;
  pgc.ActivePageIndex := 0;
end;

procedure TfrmEmpresa.grdCDPRODUTOCTEEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditcdProduto(qry, _cdproduto+_cte);
end;

procedure TfrmEmpresa.grdDBEditorRow27EditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (qry.State <> dsedit) and (qry.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar( _plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  qry.fieldbyname(_nuplconta+_cte+_rpa).AsString := cd;
end;

procedure TfrmEmpresa.grdDBEditorRow35EditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (qry.State <> dsedit) and (qry.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar( _cntcusto, _nunivel, _nmcntcusto, 'Centro de Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  qry.fieldbyname(_nucntcusto+_cte+_rpa).AsString := cd;
end;

procedure TfrmEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmEmpresa.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmEmpresa.actAdicionarExecute(Sender: TObject);
var
  b : TBlobField;
  extensao, filename : string;
begin
  if not QRotinas.getfilename(filename) then
  begin
    exit;
  end;
  try
    extensao := copy(LowerCase(ExtractFileExt(filename)), 2, 3);
    qry.FieldByName(_nm+_extensao+_logomarca).AsString := UpperCase(extensao);
    b := TBlobField(qry.FieldByName(_logomarca));
    b.LoadFromFile(filename);
  except
    qry.fieldbyname(_LOGOMARCA).Clear;
    MessageDlg('Arquivo inválido! Selecione outro arquivo para continuar.', mtError, [mbOk], 0)
  end;
end;

procedure TfrmEmpresa.actexcluirExecute(Sender: TObject);
begin
  qry.Edit;
  qry.fieldbyname(_LOGOMARCA).Clear;
  if not registro.aplicar_atualizacao then
  begin
    Exit;
  end;
end;

procedure TfrmEmpresa.actsalvarlogoExecute(Sender: TObject);
var
  savedialog : TSaveDialog;
  b : TBlobField;
begin
  savedialog := tsavedialog.Create(nil);
  try
    if not savedialog.Execute then
    begin
      exit;
    end;
    b := TBlobField(qry.FieldByName(_logomarca));
    b.SaveToFile(savedialog.FileName);
  finally
    freeandnil(savedialog);
  end;
end;

procedure TfrmEmpresa.check_produto_cte;
begin
  if qry.fieldbyname(_cdproduto+_CTE).asstring = '' then
  begin
    exit;
  end;
  if not CodigoExiste(_produto, qry.fieldbyname(_cdproduto+_CTE).asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [qry.fieldbyname(_cdproduto+_CTE).asstring, maiuscula(_produto)]), mterror, [mbok], 0);
    abort;
  end;
end;

procedure TfrmEmpresa.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+ ' ' + edtNome.Text;
end;

procedure TfrmEmpresa.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, qry);
end;

procedure TfrmEmpresa.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmEmpresa.FormDestroy(Sender: TObject);
begin
  registro.destroy;
end;

procedure TfrmEmpresa.dtsStateChange(Sender: TObject);
begin
  actAdicionar.Enabled := actSalvar.Enabled;
  actexcluir.Enabled   := actsalvar.Enabled;
end;

procedure TfrmEmpresa.ColorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmEmpresa.ColorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmEmpresa.ConsistirCntCustoCteRPA;
var
  cd : integer;
begin
  if qry.FieldByName(_nucntcusto+_cte+_rpa).AsString = '' then
  begin
    qry.FieldByName(_cdcntcusto+_cte+_rpa).Clear;
    Exit;
  end;
  cd := QRegistro.CodigodoString(_cntcusto, qry.FieldByName(_nucntcusto+_cte+_rpa).AsString, _nunivel);
  if cd = 0 then
  begin
    MessageDlg('Centro de Custo '+qry.FieldByName(_nucntcusto+_cte+_rpa).AsString+' inexistente.', mtInformation, [mbOK], 0);
    Abort;
  end;
  qry.FieldByName(_cdcntcusto+_cte+_rpa).AsInteger := cd;
end;

procedure TfrmEmpresa.ConsistirPlcontaCteRPA;
var
  cd : integer;
begin
  if qry.FieldByName(_nuplconta+_cte+_rpa).AsString = '' then
  begin
    qry.FieldByName(_cdplconta+_cte+_rpa).Clear;
    Exit;
  end;
  cd := QRegistro.CodigodoString(_plconta, qry.FieldByName(_nuplconta+_cte+_rpa).AsString, _nunivel);
  if cd = 0 then
  begin
    MessageDlg('Plano de Contas '+qry.FieldByName(_nuplconta+_cte+_rpa).AsString+' inexistente.', mtInformation, [mbOK], 0);
    Abort;
  end;
  qry.FieldByName(_cdplconta+_cte+_rpa).AsInteger := cd;
end;

procedure TfrmEmpresa.lblnmfornecedorDblClick(Sender: TObject);
begin
  actabrirfornecedorExecute(actabrirfornecedor);
end;

procedure TfrmEmpresa.AbrirTabelas;
begin
  cbxcduf.Properties.ListSource                                                                      := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource                                                               := abrir_tabela(_municipio);
  TcxLookupComboBoxProperties(grdCDCTEFORMAPAGAMENTO.Properties.EditProperties).ListSource           := abrir_tabela(_cteformapagamento);
  TcxLookupComboBoxProperties(grdcdcntcustorpa.Properties.EditProperties).ListSource                 := abrir_tabela(_cntcusto);
  TcxLookupComboBoxProperties(grdcdplcontarpa.Properties.EditProperties).ListSource                  := abrir_tabela(_plconta);
  TcxLookupComboBoxProperties(grdcdctetpprevisaoentrega.Properties.EditProperties).ListSource        := abrir_tabela(_cte+_tp+_previsao+_entrega);
  TcxLookupComboBoxProperties(grdcdctetpprevisaoentregah.Properties.EditProperties).ListSource       := abrir_tabela(_cte+_tp+_previsao+_entrega+_h);
  TcxLookupComboBoxProperties(grdcdindicadorpessoajuridica.Properties.EditProperties).ListSource     := abrir_tabela(_indicador+_pessoa+_juridica);
  TcxLookupComboBoxProperties(grdcdindicadoratividade.Properties.EditProperties).ListSource          := abrir_tabela(_indicador+_atividade);
  TcxLookupComboBoxProperties(grdcdindicadorincidencia.Properties.EditProperties).ListSource         := abrir_tabela(_indicador+_incidencia);
  TcxLookupComboBoxProperties(grdcdindicadorapropriacao.Properties.EditProperties).ListSource        := abrir_tabela(_indicador+_apropriacao);
  TcxLookupComboBoxProperties(grdcdindicadorcontribuicao.Properties.EditProperties).ListSource       := abrir_tabela(_indicador+_contribuicao);
  TcxLookupComboBoxProperties(grdcdind_reg_cum.Properties.EditProperties).ListSource                 := abrir_tabela(_ind_reg_cum);
  TcxLookupComboBoxProperties(grdcdtpcteresponsavelseguro.Properties.EditProperties).ListSource      := abrir_tabela(_tp+_cte+_responsavel+_seguro);
  TcxLookupComboBoxProperties(grdcdfornedorseguradora.Properties.EditProperties).ListSource          := abrir_tabela(_fornecedor+_seguradora);
  TcxLookupComboBoxProperties(grdCDEVENTOEMAILMANAGERDUPLICATA.Properties.EditProperties).ListSource := abrir_tabela(_eventoemail);
  TcxLookupComboBoxProperties(grdCDEVENTOEMAILDUPLICATABOLETO.Properties.EditProperties).ListSource  := abrir_tabela(_eventoemail);
  cbxCDTPREGIMETRIBUTARIO.Properties.ListSource                                                      := abrir_tabela(_tpregime+_tributario);
  cbxCDTPempresa.Properties.ListSource                                                               := abrir_tabela(_tp+_empresa);
  TcxLookupComboBoxProperties(grdCDCTETPTOMADOR.Properties.EditProperties).ListSource                := abrir_tabela(_ctetptomador);
  TcxLookupComboBoxProperties(grdCDIND_ATIV.Properties.EditProperties).ListSource                    := abrir_tabela(_ind_ativ);
  TcxLookupComboBoxProperties(grdCDIND_PERFIL.Properties.EditProperties).ListSource                  := abrir_tabela(_ind_+_perfil);
  TcxLookupComboBoxProperties(grdDBEditorCDINDESCRITURACAO.Properties.EditProperties).ListSource     := abrir_tabela(_IND+_ESCRITURACAO);
end;

procedure TfrmEmpresa.actabrirfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qry);
end;

procedure TfrmEmpresa.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmEmpresa.qryAfterScroll(DataSet: TDataSet);
begin
  edtcodigo.Text := DataSet.fieldbyname(_cdempresa).AsString;
end;

procedure TfrmEmpresa.qryBeforePost(DataSet: TDataSet);
begin
  check_produto_cte;
  ConsisteCNPJ(dataset, tbl, exibe);
  ConsisteCPF(DataSet, tbl, exibe, true);
  if (DataSet.fieldbyname(_NUCNPJ).Asstring <> '') then
  begin
    if DataSet.fieldbyname(_NUCNPJ).asstring = '' then
    begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CNPJ]), mtinformation, [mbok], 0);
      DataSet.fieldbyname(_nucnpj).FocusControl;
      Abort;
    end;
  end;
  if (DataSet.FieldByName(_cdtpregime+_tributario).AsString = _2) and (UpperCase(DataSet.FieldByName(_tpregime).AsString) = _s) then
  begin
    MessageDlg('O regime de apuração não pode ser simples nacional para o tipo de regime tributário '+cbxCDTPREGIMETRIBUTARIO.Text+'.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    cbxCDTPREGIMETRIBUTARIO.SetFocus;
    Abort;
  end;
  if (DataSet.FieldByName(_cdtpregime+_tributario).AsString <> _2) and (UpperCase(DataSet.FieldByName(_tpregime).AsString)<> _s) then
  begin
    MessageDlg('O tipo de regime tributário '+cbxCDTPREGIMETRIBUTARIO.Text+' não pode ter o regime de apuração diferente de simples nacional.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    cbxCDTPREGIMETRIBUTARIO.SetFocus;
    Abort;
  end;
  if (DataSet.FieldByName(_BOCLIENTECDREDUZIDO).AsString = _N) and (DataSet.FieldByName(_BOPDV).AsString = _S) then
  begin
    MessageDlg('Se a empresa é Emissor de PDV não pode ter gerar o código do cliente como CPF/CNPJ.', mtInformation, [mbOK], 0);
    Abort;
  end;
  begin
    registro.set_update(DataSet);
  end;
end;

procedure TfrmEmpresa.FormCreate(Sender: TObject);
begin
  AbrirTabelas;
  registro := tregistro.create(self, tbl, exibe, artigoI, qry, dts, edtcodigo);
end;

procedure TfrmEmpresa.actcontadoresExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_empresa+_generator))), qry.fieldbyname(_cdempresa).AsInteger, _cdempresa);
end;

end.

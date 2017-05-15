object frmmain: Tfrmmain
  Left = 506
  Top = 276
  Caption = ';'
  ClientHeight = 450
  ClientWidth = 853
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stb: TdxStatusBar
    Left = 0
    Top = 423
    Width = 853
    Height = 27
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = stbContainer7
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 120
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 120
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Bevel = dxpbNone
        Text = 'Estilo'
        Width = 27
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxStatusBar1Container2
        Width = 80
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taRightJustify
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clBlue
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'MS Sans Serif'
        PanelStyle.Font.Style = [fsBold]
        PanelStyle.ParentFont = False
        Text = 'www.quipos.inf.br - Suporte (31)3091-7744/(31)3826-0476'
        Width = 335
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = stbContainer6
      end>
    PaintStyle = stpsOffice11
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ShowHint = True
    ParentShowHint = False
    object dxStatusBar1Container2: TdxStatusBarContainerControl
      Left = 385
      Top = 2
      Width = 80
      Height = 23
      object cbx: TcxComboBox
        Left = 0
        Top = 0
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Flat'
          'Office11'
          'Standard'
          'Ultraflat')
        Properties.MaxLength = 0
        Properties.OnChange = cbxPropertiesChange
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.ButtonStyle = btsUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 80
      end
    end
    object stbContainer6: TdxStatusBarContainerControl
      Left = 808
      Top = 2
      Width = 29
      Height = 23
      object tlbnew: TToolBar
        Left = 0
        Top = 0
        Width = 29
        Height = 29
        Caption = 'tlbnew'
        Images = dtmmain.imlMain
        TabOrder = 0
        Transparent = True
      end
    end
    object stbContainer7: TdxStatusBarContainerControl
      Left = 2
      Top = 2
      Width = 100
      Height = 23
      object edtcmd: TcxTextEdit
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        OnKeyPress = edtcmdKeyPress
        Width = 100
      end
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 65
    Width = 853
    Height = 358
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitLeft = 227
    ExplicitWidth = 626
    object img: TcxImage
      Left = 0
      Top = 0
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 626
      Height = 358
      Width = 853
    end
  end
  object act: TActionManager
    Images = dtmmain.imlMain
    PrioritySchedule.Strings = (
      '0=3'
      '1=3'
      '10=23'
      '11=23'
      '12=23'
      '13=23'
      '14=31'
      '15=31'
      '16=31'
      '17=31'
      '18=31'
      '19=31'
      '2=6'
      '20=31'
      '21=31'
      '22=31'
      '23=31'
      '24=31'
      '25=31'
      '3=9'
      '4=12'
      '5=12'
      '6=17'
      '7=17'
      '8=17'
      '9=23')
    OnExecute = actExecute
    Left = 269
    Top = 160
    StyleName = 'XP Style'
    object actefd0450: TAction
      Caption = '0450 - Informa'#231#227'o complementar Documento Fiscal'
      OnExecute = actabrirTabela
    end
    object actacessorio: TAction
      Caption = 'Acess'#243'rio'
      Hint = 'Acess'#243'rio'
      ImageIndex = 103
      OnExecute = actabrirTabela
    end
    object actadntcliente: TAction
      Caption = 'Adiantamento Cliente'
      Hint = 'Adiantamento Cliente'
      ImageIndex = 20
      OnExecute = actadntclienteExecute
    end
    object actadntfornecedor: TAction
      Caption = 'Adiantamento Fornecedor'
      Hint = 'Adiantamento Fornecedor'
      ImageIndex = 20
      OnExecute = actadntfornecedorExecute
    end
    object acttpagenda: TAction
      Caption = 'Agenda'
      ImageIndex = 29
      OnExecute = actabrirTabela
    end
    object actaeroadmin: TAction
      Caption = 'Aero Admin'
      OnExecute = actaeroadminExecute
    end
    object acttpanotacao: TAction
      Caption = 'Anota'#231#227'o'
      OnExecute = acttpanotacaoExecute
    end
    object actanydesk: TAction
      Caption = 'Any Desk'
      OnExecute = actanydeskExecute
    end
    object acttpaplicacao: TAction
      Caption = 'Aplica'#231#227'o'
      OnExecute = actabrirTabela
    end
    object actapontamento: TAction
      Caption = 'Apontamento'
      ImageIndex = 172
      ShortCut = 49217
      OnExecute = actapontamentoExecute
    end
    object actativopiscofins: TAction
      Caption = 'Ativo Imob PIS/COFINS'
      OnExecute = actativopiscofinsExecute
    end
    object actbancodados: TAction
      Caption = 'Banco de Dados'
      OnExecute = actbancodadosExecute
    end
    object actbccalculocredito: TAction
      Caption = 'Base C'#225'lculo Cr'#233'dito'
      OnExecute = actabrirTabela
    end
    object actbaixaestoque: TAction
      Caption = 'Baixa Estoque'
      Hint = 'Baixa Estoque'
      ImageIndex = 45
      OnExecute = actbaixaestoqueExecute
    end
    object actcaixafinanceiro: TAction
      Caption = 'Caixa Financeiro'
      ImageIndex = 134
      ShortCut = 49240
      OnExecute = actcaixafinanceiroExecute
    end
    object actcatextrato: TAction
      Caption = 'Categoria Extrato'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actworkbox: TAction
      Caption = 'Caixa Trabalho'
      Hint = 'Caixa de Trabalho'
      ImageIndex = 61
      ShortCut = 49239
      OnExecute = actworkboxExecute
    end
    object actmanagercntcusto: TAction
      Caption = 'Centro Custo'
      ImageIndex = 71
      OnExecute = actmanagercntcustoExecute
    end
    object actCFOP: TAction
      Caption = 'CFOP'
      Hint = 'CFOP'
      ImageIndex = 6
      OnExecute = actCFOPExecute
    end
    object actchave: TAction
      Caption = 'Chave de Uso'
      ImageIndex = 137
      OnExecute = actchaveExecute
    end
    object actcheque: TAction
      Caption = 'Cheque'
      Hint = 'Cheque'
      ImageIndex = 101
      OnExecute = actchequeExecute
    end
    object actstcheque: TAction
      Caption = 'Cheque'
      Hint = 'stcheque'
      ImageIndex = 101
      OnExecute = actabrirTabela
    end
    object actconsultacheque: TAction
      Caption = 'Cheque'
      Hint = 'Consulta Cheque'
      ImageIndex = 101
      OnExecute = actconsultachequeExecute
    end
    object actclpressao: TAction
      Caption = 'Classe Press'#227'o'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actstCliente: TAction
      Caption = 'Cliente'
      Hint = 'Status do Cliente'
      ImageIndex = 35
      OnExecute = actabrirTabela
    end
    object actCliente: TAction
      Caption = 'Cliente'
      Hint = 'Cliente'
      ImageIndex = 35
      ShortCut = 49219
      OnExecute = actClienteExecute
    end
    object actConsultaCliente: TAction
      Caption = 'Cliente'
      Hint = 'Consulta Cliente'
      ImageIndex = 35
      OnExecute = actConsultaClienteExecute
    end
    object acttpcliente: TAction
      Caption = 'Cliente'
      Hint = 'Tipo de Cliente'
      ImageIndex = 35
      OnExecute = actabrirTabela
    end
    object acttpcobranca: TAction
      Caption = 'Cobran'#231'a'
      Hint = 'Tipo de Cobran'#231'a'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actcobranca: TAction
      Caption = 'Cobran'#231'a Banc'#225'ria'
      Hint = 'Cobran'#231'a Banc'#225'ria'
      ImageIndex = 70
      OnExecute = actcobrancaExecute
    end
    object actstcofins: TAction
      Caption = 'COFINS'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object acttpcomissao: TAction
      Caption = 'Comiss'#227'o'
      OnExecute = actabrirTabela
    end
    object acttpcomissaoproduto: TAction
      Caption = 'Comiss'#227'o Produto'
      OnExecute = actabrirTabela
    end
    object acttpcomissaorepresentante: TAction
      Caption = 'Comiss'#227'o Representante'
      OnExecute = actabrirTabela
    end
    object acttpcombustivel: TAction
      Caption = 'Combust'#237'vel'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actconsultaentrada: TAction
      Caption = 'Compra'
      Hint = 'Consulta Compra'
      ImageIndex = 27
      OnExecute = actconsultaentradaExecute
    end
    object actentrada: TAction
      Caption = 'Compra'
      Hint = 'Compra'
      ImageIndex = 27
      ShortCut = 49221
      OnExecute = actentradaExecute
    end
    object acttpentrada: TAction
      Caption = 'Compra'
      Hint = 'Documento Compra'
      ImageIndex = 27
      OnExecute = acttpentradaExecute
    end
    object actcondentrega: TAction
      Caption = 'Condi'#231#227'o Entrega'
      Hint = 'Condi'#231#227'o Entrega'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object acttpcondentrega: TAction
      Caption = 'Condi'#231#227'o Entrega'
      Hint = 'Condi'#231#227'o Entrega'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actCondpagto: TAction
      Caption = 'Condi'#231#227'o Pagamento'
      Hint = 'Condi'#231#227'o Pagamento'
      ImageIndex = 47
      OnExecute = actCondpagtoExecute
    end
    object actstconferenciapedido: TAction
      Caption = 'Confer'#234'ncia Pedido'
      ImageIndex = 171
      OnExecute = actabrirTabela
    end
    object actconferenciapedido: TAction
      Caption = 'Confer'#234'ncia Pedido'
      ImageIndex = 171
      OnExecute = actconferenciapedidoExecute
    end
    object actConsulta: TAction
      Caption = 'Consulta'
      OnExecute = actConsultaExecute
    end
    object actconsultadisponibilidadecte: TAction
      Caption = 'Consulta disponibilidade do servi'#231'o CTE'
      OnExecute = actconsultadisponibilidadecteExecute
    end
    object actconsultardisponibilidadenfe: TAction
      Caption = 'Consulta disponibilidade do servico NFE'
      OnExecute = actconsultardisponibilidadenfeExecute
    end
    object actconsultanfemg: TAction
      Caption = 'Consulta NF-e Chave de Acesso MG'
      OnExecute = actconsultanfemgExecute
    end
    object actconsultactemg: TAction
      Caption = 'Consulta CT-e Chave de Acesso MG'
      OnExecute = actconsultactemgExecute
    end
    object actconsultainutilizacaomg: TAction
      Caption = 'Consultar Inutilizacao MG'
      OnExecute = actconsultainutilizacaomgExecute
    end
    object actconsultainutilizacaomgcte: TAction
      Caption = 'Consultar Inutilizacao MG'
      OnExecute = actconsultainutilizacaomgcteExecute
    end
    object actConta: TAction
      Caption = 'Conta'
      Hint = 'Conta'
      ImageIndex = 46
      OnExecute = actContaExecute
    end
    object acttpconta: TAction
      Caption = 'Conta'
      ImageIndex = 46
      OnExecute = actabrirTabela
    end
    object actconsultaautpagto: TAction
      Caption = 'Contas a Pagar'
      Hint = 'Contas a Pagar'
      ImageIndex = 31
      OnExecute = actconsultaautpagtoExecute
    end
    object actAutpagto: TAction
      Caption = 'Contas a Pagar'
      Hint = 'Contas a Pagar'
      ImageIndex = 31
      OnExecute = actAutpagtoExecute
    end
    object actDuplicata: TAction
      Caption = 'Contas a Receber'
      Hint = 'Contas a Receber'
      ImageIndex = 32
      ShortCut = 49234
      OnExecute = actDuplicataExecute
    end
    object actManagerDuplicata: TAction
      Caption = 'Contas a Receber'
      Hint = 'Gerenciador de Contas a Receber'
      ImageIndex = 32
      OnExecute = actManagerDuplicataExecute
    end
    object actconsultaduplicata: TAction
      Caption = 'Contas a Receber'
      Hint = 'Consulta Contas a Receber'
      ImageIndex = 32
      OnExecute = actconsultaduplicataExecute
    end
    object actstcontrato: TAction
      Caption = 'Contrato'
      Hint = 'Status do Contrato'
      ImageIndex = 106
      OnExecute = actabrirTabela
    end
    object actcontrato: TAction
      Caption = 'Contrato'
      Hint = 'Contrato'
      ImageIndex = 106
      OnExecute = actcontratoExecute
    end
    object acttpcontrato: TAction
      Caption = 'Contrato'
      Hint = 'Tipo Contrato'
      ImageIndex = 106
      OnExecute = acttpcontratoExecute
    end
    object actCor: TAction
      Caption = 'Cor'
      Hint = 'Cor'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actcorridaquimica: TAction
      Caption = 'Corrida Qu'#237'mica'
      ImageIndex = 6
      OnExecute = actcorridaquimicaExecute
    end
    object actpedidomaterial: TAction
      Caption = 'Cota'#231#227'o'
      Hint = 'Pedido Material'
      ImageIndex = 82
      OnExecute = actpedidomaterialExecute
    end
    object acttppedidomaterial: TAction
      Caption = 'Cota'#231#227'o'
      Hint = 'Tipo Cota'#231#227'o'
      ImageIndex = 82
      OnExecute = acttppedidomaterialExecute
    end
    object actclpedidoMaterial: TAction
      Caption = 'Cota'#231#227'o'
      Hint = 'Classifica'#231#227'o Cota'#231#227'o'
      ImageIndex = 82
      OnExecute = actabrirTabela
    end
    object acttpcriterioiqf: TAction
      Caption = 'Crit'#233'rio IQF'
      OnExecute = actabrirTabela
    end
    object acttpcriterioorcamento: TAction
      Caption = 'Crit'#233'rio Or'#231'amento'
      OnExecute = acttpcriterioorcamentoExecute
    end
    object actcte: TAction
      Caption = 'CT-e'
      ImageIndex = 113
      OnExecute = actcteExecute
    end
    object actctetpmedida: TAction
      Caption = 'CTE Medida'
      ImageIndex = 113
      OnExecute = actabrirTabela
    end
    object actctetpvlprestacao: TAction
      Caption = 'CTE Valor Presta'#231#227'o'
      ImageIndex = 113
      OnExecute = actabrirTabela
    end
    object acttpdeclinarorcamento: TAction
      Caption = 'Declinar Or'#231'amento'
      ImageIndex = 156
      OnExecute = actabrirTabela
    end
    object actdefeito: TAction
      Caption = 'Defeito'
      Hint = 'Defeito'
      ImageIndex = 110
      OnExecute = actabrirTabela
    end
    object actdownload: TAction
      Caption = 'Download'
      OnExecute = actdownloadExecute
    end
    object actecac: TAction
      Caption = 'E-Cac Central de Atendimento Virtual'
      OnExecute = actecacExecute
    end
    object acttpeletricpneum: TAction
      Caption = 'El'#233'trico/Pneum'#225'tico'
      Hint = 'Tipo El'#233'tico/Pneum'#225'tico'
      ImageIndex = 95
      OnExecute = actabrirTabela
    end
    object actempresa: TAction
      Caption = 'Empresa'
      Hint = 'Empresa'
      ImageIndex = 74
      OnExecute = actempresaExecute
    end
    object actentradaestoque: TAction
      Caption = 'Entrada Estoque'
      Hint = 'Entrada de Estoque'
      ImageIndex = 45
      OnExecute = actentradaestoqueExecute
    end
    object actescolaridade: TAction
      Caption = 'Escolaridade'
      OnExecute = actabrirTabela
    end
    object acttpequipamento: TAction
      Caption = 'Equipamento'
      Hint = 'Tipo Equipamento'
      ImageIndex = 95
      OnExecute = acttpequipamentoExecute
    end
    object actstequipamento: TAction
      Caption = 'Equipamento'
      Hint = 'Status Equipamento'
      ImageIndex = 95
      OnExecute = actabrirTabela
    end
    object actequipamento: TAction
      Caption = 'Equipamento'
      Hint = 'Equipamento'
      ImageIndex = 95
      OnExecute = actequipamentoExecute
    end
    object actetapa: TAction
      Caption = 'Etapa'
      Hint = 'Etapa'
      ImageIndex = 57
      OnExecute = actetapaExecute
    end
    object actExportarExcel: TAction
      Caption = 'Exportar Excel'
      Hint = 'Exportar Excel'
      ImageIndex = 15
      OnExecute = actExportarExcelExecute
    end
    object actFaturamento: TAction
      Caption = 'Faturamento'
      ImageIndex = 128
      OnExecute = actFaturamentoExecute
    end
    object actstfaturamento: TAction
      Caption = 'Faturamento'
      ImageIndex = 128
      OnExecute = actabrirTabela
    end
    object acttpfaturamento: TAction
      Caption = 'Faturamento'
      ImageIndex = 128
      OnExecute = acttpfaturamentoExecute
    end
    object actFechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ShortCut = 16499
      OnExecute = actFecharExecute
    end
    object actferiado: TAction
      Caption = 'Feriado'
      Hint = 'Feriado'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actManagerAutPagto: TAction
      Caption = 'Financeiro'
      Hint = 'Gerenciador Financeiro'
      ImageIndex = 18
      OnExecute = actManagerAutPagtoExecute
    end
    object actfinalidadeordcompra: TAction
      Caption = 'Finalidade Ord Compra'
      OnExecute = actabrirTabela
    end
    object actforma: TAction
      Caption = 'Forma'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actformulacao: TAction
      Caption = 'Formula'#231#227'o'
      ImageIndex = 6
      OnExecute = actformulacaoExecute
    end
    object actstfornecedor: TAction
      Caption = 'Fornecedor'
      Hint = 'Status do Fornecedor'
      ImageIndex = 36
      OnExecute = actabrirTabela
    end
    object actFornecedor: TAction
      Caption = 'Fornecedor'
      Hint = 'Fornecedor'
      ImageIndex = 36
      ShortCut = 49222
      OnExecute = actFornecedorExecute
    end
    object actclfornecedor: TAction
      Caption = 'Fornecedor'
      Hint = 'Classifica'#231#227'o Fornecedor'
      ImageIndex = 36
      OnExecute = actabrirTabela
    end
    object acttpfornecedor: TAction
      Caption = 'Fornecedor'
      Hint = 'Tipo Fornecedor'
      ImageIndex = 36
      OnExecute = actabrirTabela
    end
    object actfuncao: TAction
      Caption = 'Fun'#231#227'o'
      Hint = 'Fun'#231#227'o'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actfuncionario: TAction
      Caption = 'Funcion'#225'rio'
      Hint = 'Funcion'#225'rio'
      ImageIndex = 89
      OnExecute = actfuncionarioExecute
    end
    object actgarantia: TAction
      Caption = 'Garantia'
      Hint = 'Garantia'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actstgarantia: TAction
      Caption = 'Garantia'
      Hint = 'Status Garantia'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actgrade: TAction
      Caption = 'Grade'
      Hint = 'Grade'
      ImageIndex = 6
      OnExecute = actgradeExecute
    end
    object acttpgradevalor: TAction
      Caption = 'Grade Valor'
      Hint = 'Tipo Grade Valor'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actgrauparentesco: TAction
      Caption = 'Grau Parentesco'
      Hint = 'Grau Parentesco'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actgraudificuldade: TAction
      Caption = 'Grau Dificuldade'
      OnExecute = actabrirTabela
    end
    object actsticms: TAction
      Caption = 'ICMS'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object acttphoraextra: TAction
      Caption = 'Hora Extra'
      OnExecute = actabrirTabela
    end
    object actimpvalvula: TAction
      Caption = 'Import'#226'ncia V'#225'lvula'
      Hint = 'Import'#226'ncia da V'#225'lvula'
      ImageIndex = 66
      OnExecute = actabrirTabela
    end
    object actstipi: TAction
      Caption = 'IPI'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actstitagenda: TAction
      Caption = 'Item Agenda'
      ImageIndex = 29
      OnExecute = actabrirTabela
    end
    object actstitetapa: TAction
      Caption = 'Item Etapa'
      Hint = 'Status Item Etapa'
      ImageIndex = 57
      OnExecute = actabrirTabela
    end
    object actstitordserv: TAction
      Caption = 'Item Servi'#231'o'
      Hint = 'Status Item Servi'#231'o'
      ImageIndex = 64
      OnExecute = actabrirTabela
    end
    object actstlink: TAction
      Caption = 'Link'
      Hint = 'Status do Link'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actlinkextrato: TAction
      Caption = 'Link Extrato'
      OnExecute = actabrirTabela
    end
    object actlivro: TAction
      Caption = 'Livro Fiscal'
      Hint = 'Livro Fiscal'
      ImageIndex = 65
      OnExecute = actlivroExecute
    end
    object actlivrop3: TAction
      Caption = 'Livro Produc'#227'o'
      ImageIndex = 130
      OnExecute = actlivrop3Execute
    end
    object actLocacao: TAction
      Caption = 'Loca'#231#227'o'
      Hint = 'Loca'#231#227'o'
      ImageIndex = 108
      ShortCut = 49228
      OnExecute = actLocacaoExecute
    end
    object actstlocacao: TAction
      Caption = 'Loca'#231#227'o'
      Hint = 'Status Loca'#231#227'o'
      ImageIndex = 108
      OnExecute = actabrirTabela
    end
    object acttplocacao: TAction
      Caption = 'Loca'#231#227'o'
      Hint = 'Tipo Loca'#231#227'o'
      ImageIndex = 108
      OnExecute = acttplocacaoExecute
    end
    object actlocaltrabalho: TAction
      Caption = 'Local Trabalho'
      Hint = 'Local Trabalho'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actLogin: TAction
      Caption = 'Login'
      Enabled = False
      Hint = 'Login'
      ImageIndex = 102
      ShortCut = 32776
      Visible = False
      OnExecute = actLoginExecute
    end
    object actLogoff: TAction
      Caption = 'Logoff'
      Hint = 'Logoff'
      ImageIndex = 111
      ShortCut = 40968
      OnExecute = actLogoffExecute
    end
    object actmarca: TAction
      Caption = 'Marca'
      Hint = 'Marca'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object acttpveicmanut: TAction
      Caption = 'Manuten'#231#227'o Ve'#237'culo'
      Hint = 'Tipo Manuten'#231#227'o Ve'#237'culo'
      ImageIndex = 105
      OnExecute = actabrirTabela
    end
    object actmaterial: TAction
      Caption = 'Material'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object acttpclientemensalidade: TAction
      Caption = 'Mensalidade'
      Hint = 'Tipo de Mensalidade'
      ImageIndex = 35
      OnExecute = actabrirTabela
    end
    object actmetrologia: TAction
      Caption = 'Metrologia'
      OnExecute = actmetrologiaExecute
    end
    object actstmetrologia: TAction
      Caption = 'Metrologia'
      OnExecute = actabrirTabela
    end
    object actmodelo: TAction
      Caption = 'Modelo'
      Hint = 'Modelo'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actconsultaMovBancario: TAction
      Caption = 'Mov. Banc'#225'rio'
      Hint = 'Consulta Movimento Banc'#225'rio'
      ImageIndex = 18
      OnExecute = actconsultaMovBancarioExecute
    end
    object actMovimentacao: TAction
      Caption = 'Movimenta'#231#227'o'
      Hint = 'Movimenta'#231#227'o'
      ImageIndex = 18
      OnExecute = actabrirTabela
    end
    object actMovto: TAction
      Caption = 'Movimenta'#231#227'o Estoque'
      Hint = 'Movimenta'#231#227'o'
      ImageIndex = 45
      ShortCut = 49229
      OnExecute = actMovtoExecute
    end
    object actConsultaMovto: TAction
      Caption = 'Movimenta'#231#227'o Estoque'
      Hint = 'Consulta Movimenta'#231#227'o Estoque'
      ImageIndex = 45
      OnExecute = actConsultaMovtoExecute
    end
    object acttpmovto: TAction
      Caption = 'Movimenta'#231#227'o Estoque'
      Hint = 'Tipo de Movimento'
      ImageIndex = 45
      OnExecute = actabrirTabela
    end
    object acttpaprovacaocotacao: TAction
      Caption = 'Motivo Aprova'#231#227'o Cota'#231#227'o'
      OnExecute = actabrirTabela
    end
    object actpreselecaofornecedor: TAction
      Caption = 'Motivo Pr'#233'-Sele'#231#227'o Fornecedor'
      OnExecute = actabrirTabela
    end
    object acttpmotivorevisao: TAction
      Caption = 'Motivo de Revis'#227'o'
      Hint = 'tpmotivorevisao'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actnegociacao: TAction
      Caption = 'Negocia'#231#227'o'
      ImageIndex = 159
      ShortCut = 49223
      OnExecute = actnegociacaoExecute
    end
    object actnorma: TAction
      Caption = 'Norma'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actsaida: TAction
      Caption = 'Nota Fiscal'
      Hint = 'Nota Fiscal'
      ImageIndex = 19
      ShortCut = 49230
      OnExecute = actsaidaExecute
    end
    object acttpsaida: TAction
      Caption = 'Nota Fiscal'
      Hint = 'Documento Nota Fiscal'
      ImageIndex = 19
      OnExecute = acttpsaidaExecute
    end
    object actconsultasaida: TAction
      Caption = 'Nota Fiscal'
      Hint = 'Consulta Notas Fiscais'
      ImageIndex = 19
      OnExecute = actconsultasaidaExecute
    end
    object actorcamento: TAction
      Caption = 'Or'#231'amento'
      ImageIndex = 156
      ShortCut = 49231
      OnExecute = actorcamentoExecute
    end
    object acttporcamento: TAction
      Caption = 'Or'#231'amento'
      ImageIndex = 156
      OnExecute = acttporcamentoExecute
    end
    object actstorcamento: TAction
      Caption = 'Or'#231'amento'
      Hint = 'Status do Or'#231'amento'
      ImageIndex = 156
      OnExecute = actabrirTabela
    end
    object actorcamentoatravesde: TAction
      Caption = 'Or'#231'amento - Atrav'#233's de'
      ImageIndex = 156
      OnExecute = actabrirTabela
    end
    object actstordproducao: TAction
      Caption = 'Ordem Produ'#231#227'o'
      ImageIndex = 157
      OnExecute = actabrirTabela
    end
    object actmanagerordproducao: TAction
      Caption = 'Ordem Produ'#231#227'o'
      Hint = 'Gerenciador Ordem Produ'#231#227'o'
      ImageIndex = 157
      OnExecute = actmanagerordproducaoExecute
    end
    object actordproducao: TAction
      Caption = 'Ordem Produ'#231#227'o'
      ImageIndex = 157
      ShortCut = 49220
      OnExecute = actordproducaoExecute
    end
    object acttpordproducao: TAction
      Caption = 'Ordem Produ'#231#227'o'
      ImageIndex = 157
      OnExecute = acttpordproducaoExecute
    end
    object acttpordcompra: TAction
      Caption = 'Ordem Compra'
      Hint = 'Tipo Ordem Compra'
      ImageIndex = 77
      OnExecute = acttpordcompraExecute
    end
    object actOrdCompra: TAction
      Caption = 'Ordem Compra'
      Hint = 'Ordem de compra'
      ImageIndex = 77
      OnExecute = actOrdCompraExecute
    end
    object actstordserv: TAction
      Caption = 'Ordem Servi'#231'o'
      Hint = 'Status Ordem Servi'#231'o'
      ImageIndex = 64
      OnExecute = actabrirTabela
    end
    object acttpordserv: TAction
      Caption = 'Ordem Servi'#231'o'
      Hint = 'Tipo Ordem Servi'#231'o'
      ImageIndex = 64
      OnExecute = acttpordservExecute
    end
    object actordserv: TAction
      Caption = 'Ordem Servi'#231'o'
      Hint = 'Ordem Servi'#231'o'
      ImageIndex = 64
      ShortCut = 49241
      OnExecute = actordservExecute
    end
    object acttppagtocomissao: TAction
      Caption = 'Pagamento Comiss'#227'o'
      Hint = 'Tipo Pagamento Comiss'#227'o'
      ImageIndex = 127
      OnExecute = actabrirTabela
    end
    object actpagtocomissao: TAction
      Caption = 'Pagamento Comiss'#227'o'
      Hint = 'Pagamento Comiss'#227'o'
      ImageIndex = 127
    end
    object acttpparada: TAction
      Caption = 'Parada'
      OnExecute = actabrirTabela
    end
    object actStPedido: TAction
      Caption = 'Pedido Venda'
      Hint = 'Status do Pedido'
      ImageIndex = 25
      OnExecute = actabrirTabela
    end
    object actTpPedido: TAction
      Caption = 'Pedido Venda'
      Hint = 'Tipo de Pedido'
      ImageIndex = 25
      OnExecute = actTpPedidoExecute
    end
    object actPedido: TAction
      Caption = 'Pedido Venda'
      Hint = 'Pedido'
      ImageIndex = 25
      ShortCut = 49232
      OnExecute = actPedidoExecute
    end
    object actConsultaPedido: TAction
      Caption = 'Pedido Venda'
      Hint = 'Consulta Pedido'
      ImageIndex = 25
      OnExecute = actConsultaPedidoExecute
    end
    object actmanagerpedido: TAction
      Caption = 'Pedido Venda'
      Hint = 'Gerenciador de Pedido'
      ImageIndex = 25
      OnExecute = actmanagerpedidoExecute
    end
    object actpintura: TAction
      Caption = 'Pintura'
      Hint = 'Pintura'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actstpis: TAction
      Caption = 'PIS'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actmanagerplconta: TAction
      Caption = 'Plano Contas'
      Hint = 'Gerenciador Plano Contas'
      OnExecute = actmanagerplcontaExecute
    end
    object actprioridade: TAction
      Caption = 'Prioridade'
      Hint = 'Prioridade'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actManagerproduto: TAction
      Caption = 'Produto'
      Hint = 'Gerenciador de Produto'
      ImageIndex = 24
      OnExecute = actManagerprodutoExecute
    end
    object actProduto: TAction
      Caption = 'Produto'
      Hint = 'Produto'
      ImageIndex = 24
      ShortCut = 49233
      OnExecute = actProdutoExecute
    end
    object acttpproduto: TAction
      Caption = 'Produto'
      Hint = 'Tipo de Produto'
      ImageIndex = 24
      OnExecute = acttpprodutoExecute
    end
    object actconsultaproduto: TAction
      Caption = 'Produto'
      Hint = 'Consulta Produto'
      ImageIndex = 24
      OnExecute = actconsultaprodutoExecute
    end
    object actstprojeto: TAction
      Caption = 'Projeto'
      Hint = 'stprojeto'
      OnExecute = actabrirTabela
    end
    object acttpprojeto: TAction
      Caption = 'Projeto'
      Hint = 'tpprojeto'
      OnExecute = actabrirTabela
    end
    object acttpprojeto1: TAction
      Caption = 'Projeto 1'
      Hint = 'tpprojeto1'
      OnExecute = actabrirTabela
    end
    object actrmatividade: TAction
      Caption = 'Ramo Atividade'
      Hint = 'Ramo Atividade'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actregiaoaplicacao: TAction
      Caption = 'Regi'#227'o Aplica'#231#227'o'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actstregcobranca: TAction
      Caption = 'Registro Cobran'#231'a'
      Hint = 'Status Registro Cobran'#231'a'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actregrast: TAction
      Caption = 'Regra Situa'#231#227'o Tribut'#225'ria'
      ImageIndex = 6
      OnExecute = actregrastExecute
    end
    object actreport: TAction
      Caption = 'Relat'#243'rio'
      ImageIndex = 6
      OnExecute = actreportExecute
    end
    object actreportuser: TAction
      Caption = 'Relat'#243'rio do Usu'#225'rio'
      ImageIndex = 6
      OnExecute = actreportuserExecute
    end
    object actStRepresentante: TAction
      Caption = 'Representante'
      Hint = 'Status do Representante'
      ImageIndex = 42
      OnExecute = actabrirTabela
    end
    object actRepresentante: TAction
      Caption = 'Representante'
      Hint = 'Representante'
      ImageIndex = 42
      OnExecute = actRepresentanteExecute
    end
    object actConsultaRepresentante: TAction
      Caption = 'Representante'
      Hint = 'Consulta Representante'
      ImageIndex = 42
      OnExecute = actConsultaRepresentanteExecute
    end
    object actrim: TAction
      Caption = 'Requisi'#231#227'o Materiais'
      Hint = 'Requisi'#231#227'o Materiais'
      ImageIndex = 50
      OnExecute = actrimExecute
    end
    object acttprim: TAction
      Caption = 'Requisi'#231#227'o Material'
      ImageIndex = 50
      OnExecute = acttprimExecute
    end
    object actrota: TAction
      Caption = 'Rota'
      OnExecute = actrotaExecute
    end
    object acttprota: TAction
      Caption = 'Rota'
      OnExecute = actabrirTabela
    end
    object acttprpa: TAction
      Caption = 'RPA'
      Hint = 'Tipo de RPA'
      ImageIndex = 52
      OnExecute = actabrirTabela
    end
    object actrpa: TAction
      Caption = 'RPA'
      Hint = 'RPA'
      ImageIndex = 52
      OnExecute = actrpaExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      Hint = 'Sair'
      OnExecute = actSairExecute
    end
    object actserie: TAction
      Caption = 'S'#233'rie'
      Hint = 'S'#233'rie'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actservico: TAction
      Caption = 'Servi'#231'o'
      Hint = 'Servi'#231'o'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object acttpservico: TAction
      Caption = 'Servi'#231'o'
      OnExecute = actabrirTabela
    end
    object actsetor: TAction
      Caption = 'Setor'
      OnExecute = actabrirTabela
    end
    object actsuporteremoto: TAction
      Caption = 'ShowMyPC'
      ImageIndex = 162
      OnExecute = actsuporteremotoExecute
    end
    object actsinalclb: TAction
      Caption = 'Sinal de Calibra'#231'ao'
      Hint = 'Sinal de Calibra'#231#227'o'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actSobre: TAction
      Caption = 'Sobre...'
      Hint = 'Sobre...'
      OnExecute = actSobreExecute
    end
    object actstatusservicomg: TAction
      Caption = 'Status Servico MG'
      OnExecute = actstatusservicomgExecute
    end
    object actagenda: TAction
      Caption = 'Agenda'
      ImageIndex = 29
      OnExecute = actagendaExecute
    end
    object actstatusservicocte: TAction
      Caption = 'Status Servi'#231'o CTE MG'
      OnExecute = actstatusservicocteExecute
    end
    object actsuporte: TAction
      Caption = 'Suporte'
      ImageIndex = 160
      OnExecute = actsuporteExecute
    end
    object actTamanho: TAction
      Caption = 'Tamanho'
      Hint = 'Tamanho'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object acttptarefa: TAction
      Caption = 'Tarefa'
      ImageIndex = 143
      OnExecute = actabrirTabela
    end
    object Actmanagertarefa: TAction
      Caption = 'Tarefa'
      Hint = 'Gerenciador Tarefa'
      ImageIndex = 143
      OnExecute = ActmanagertarefaExecute
    end
    object actsttarefa: TAction
      Caption = 'Tarefa'
      ImageIndex = 143
      OnExecute = actabrirTabela
    end
    object acttptarefa1: TAction
      Caption = 'Tarefa 1'
      ImageIndex = 143
      OnExecute = actabrirTabela
    end
    object acttpmotivotarefa: TAction
      Caption = 'Motivo Tarefa'
      ImageIndex = 143
      OnExecute = actabrirTabela
    end
    object actsuporteremotot: TAction
      Caption = 'TeamViewer'
      ImageIndex = 158
      OnExecute = actsuporteremototExecute
    end
    object actsttransportadora: TAction
      Caption = 'Transportadora'
      Hint = 'Status da Transportadora'
      ImageIndex = 16
      OnExecute = actabrirTabela
    end
    object actTransportadora: TAction
      Caption = 'Transportadora'
      Hint = 'Transportadora'
      ImageIndex = 16
      OnExecute = actTransportadoraExecute
    end
    object actsttransporte: TAction
      Caption = 'Transporte'
      Hint = 'Status do Transporte'
      ImageIndex = 113
      OnExecute = actabrirTabela
    end
    object acttransporte: TAction
      Caption = 'Transporte'
      Hint = 'Transporte'
      ImageIndex = 113
      OnExecute = acttransporteExecute
    end
    object actTurma: TAction
      Caption = 'Turma'
      Hint = 'Turma'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actTurno: TAction
      Caption = 'Turno'
      Hint = 'Turno'
      ImageIndex = 6
      OnExecute = actTurnoExecute
    end
    object actUnidade: TAction
      Caption = 'Unidade'
      Hint = 'Unidade'
      ImageIndex = 6
      OnExecute = actabrirTabela
    end
    object actuf: TAction
      Caption = 'Unidade Federativa'
      Hint = 'Unidade Federativa'
      ImageIndex = 6
      OnExecute = actufExecute
    end
    object actmanageruser: TAction
      Caption = 'Usu'#225'rios'
      Hint = 'Gerenciador de Usu'#225'rios'
      ImageIndex = 23
      OnExecute = actmanageruserExecute
    end
    object actvalidadorsintegra2014: TAction
      Caption = 'Validador Sintegra 2014'
      OnExecute = actvalidadorsintegra2014Execute
    end
    object acttpveiculo: TAction
      Caption = 'Ve'#237'culo'
      Hint = 'Tipo Ve'#237'culo'
      ImageIndex = 105
      OnExecute = actabrirTabela
    end
    object actveiculo: TAction
      Caption = 'Ve'#237'culo'
      Hint = 'Ve'#237'culo'
      ImageIndex = 105
      OnExecute = actveiculoExecute
    end
    object actnfefazendagovbr: TAction
      Caption = 'www.nfe.fazenda.gov.br'
      OnExecute = actnfefazendagovbrExecute
    end
    object actsintegragovbr: TAction
      Caption = 'www.sintegra.gov.br'
      OnExecute = actsintegragovbrExecute
    end
    object actctefazendagov: TAction
      Caption = 'www.cte.fazenda.gov.br'
      OnExecute = actctefazendagovExecute
    end
    object actregiaocorpo: TAction
      Caption = 'Regi'#227'o Corpo'
      OnExecute = actabrirTabela
    end
    object actspedfiscal: TAction
      Caption = 'Sped Fiscal ICMS/IPI'
      OnExecute = actspedfiscalExecute
    end
    object actspedpiscofins: TAction
      Caption = 'Sped PIS/COFINS'
      OnExecute = actspedpiscofinsExecute
    end
    object actmdfe: TAction
      Caption = 'MDF-e'
      OnExecute = actmdfeExecute
    end
    object acttpmdfe: TAction
      Caption = 'MDFE'
      OnExecute = actabrirTabela
    end
    object actchat: TAction
      Caption = 'Chat Online'
      ImageIndex = 124
      OnExecute = actchatExecute
    end
    object actimportacao: TAction
      Caption = 'Importa'#231#227'o'
      OnExecute = actimportacaoExecute
    end
    object actexportacao: TAction
      Caption = 'Exporta'#231#227'o'
      OnExecute = actexportacaoExecute
    end
    object actimportacaocliente: TAction
      Caption = 'Cliente'
      OnExecute = actimportacaoclienteExecute
    end
    object actimportacaofornecedor: TAction
      Caption = 'Fornecedor'
      OnExecute = actimportacaofornecedorExecute
    end
    object actimportacaotransportadora: TAction
      Caption = 'Transportadora'
      OnExecute = actimportacaotransportadoraExecute
    end
    object actexportacaodatasul: TAction
      Caption = 'Datasul'
      OnExecute = actexportacaodatasulExecute
    end
    object actexportacaodatasulduplicata: TAction
      Caption = 'Contas a Receber'
      OnExecute = actexportacaodatasulduplicataExecute
    end
    object actexportacaodatasulcte: TAction
      Caption = 'Recebimento Fiscal'
      OnExecute = actexportacaodatasulcteExecute
    end
    object actexportacaodatasulcontabil: TAction
      Caption = 'Lan'#231'amento Cont'#225'bil'
      OnExecute = actexportacaodatasulcontabilExecute
    end
    object actexportacaodatasulRPA: TAction
      Caption = 'Movimenta'#231#227'o Prestador Servi'#231'o'
      OnExecute = actexportacaodatasulRPAExecute
    end
    object actexportacaodatasulautpagto: TAction
      Caption = 'Contas a Pagar'
      OnExecute = actexportacaodatasulautpagtoExecute
    end
    object acttpsolicitacaocompra: TAction
      Caption = 'Solicita'#231#227'o Compra'
      OnExecute = actabrirTabela
    end
    object actstsolicitacaocompra: TAction
      Caption = 'Solicita'#231#227'o Compra'
      OnExecute = actabrirTabela
    end
    object actsolicitacaocompra: TAction
      Caption = 'Solicita'#231#227'o Compra'
    end
    object actrequisicaoproducao: TAction
      Caption = 'Requisi'#231#227'o Produ'#231#227'o'
      OnExecute = actrequisicaoproducaoExecute
    end
    object actstrequisicaoproducao: TAction
      Caption = 'Requisi'#231#227'o Produ'#231#227'o'
      OnExecute = actabrirTabela
    end
    object acttprequisicaoproducao: TAction
      Caption = 'Requisi'#231#227'o Produ'#231#227'o'
      OnExecute = actabrirTabela
    end
    object actsetcomando: TAction
      ShortCut = 16506
      OnExecute = actsetcomandoExecute
    end
    object acttpbancohoras: TAction
      Caption = 'Banco Horas'
      OnExecute = actabrirTabela
    end
    object acttpabono: TAction
      Caption = 'Abono'
      OnExecute = actabrirTabela
    end
    object actpontotrabalho: TAction
      Caption = 'Ponto Trabalho'
      OnExecute = actpontotrabalhoExecute
    end
    object actferiadolocal: TAction
      Caption = 'Feriado Local'
      OnExecute = actabrirTabela
    end
    object acteventoemail: TAction
      Caption = 'Evento Email'
      OnExecute = acteventoemailExecute
    end
    object actrhocorrencia: TAction
      Caption = 'RH Ocorr'#234'ncia'
      OnExecute = actrhocorrenciaExecute
    end
    object acttprhocorrencia: TAction
      Caption = 'RH Ocorr'#234'ncia'
      OnExecute = actabrirTabela
    end
    object actsubtpparada: TAction
      Caption = 'Sub Parada'
      OnExecute = actabrirTabela
    end
    object actparada: TAction
      Caption = 'Parada Equipamento'
      OnExecute = actparadaExecute
    end
    object actespecialidade: TAction
      Caption = 'Especialidade'
      OnExecute = actabrirTabela
    end
    object actprofissional: TAction
      Caption = 'Profissional'
      OnExecute = actprofissionalExecute
    end
    object actrisco: TAction
      Caption = 'Risco'
      OnExecute = actabrirTabela
    end
    object acttpconvenio: TAction
      Caption = 'Conv'#234'nio'
      OnExecute = actabrirTabela
    end
    object actdespesaconvenio: TAction
      Caption = 'Despesa Conv'#234'nio'
      OnExecute = actdespesaconvenioExecute
    end
    object actstpaciente: TAction
      Caption = 'Paciente'
      OnExecute = actabrirTabela
    end
    object acttprisco: TAction
      Caption = 'Risco'
      OnExecute = actabrirTabela
    end
    object acttpcnh: TAction
      Caption = 'CHN'
      OnExecute = actabrirTabela
    end
    object actstembarque: TAction
      Caption = 'Embarque'
      ImageIndex = 167
      OnExecute = actabrirTabela
    end
    object acttprevisaocomercial: TAction
      Caption = 'Revis'#227'o Comercial'
      OnExecute = actabrirTabela
    end
    object acttpcomercial: TAction
      Caption = 'Comercial'
      OnExecute = actabrirTabela
    end
    object acttpcredito: TAction
      Caption = 'Cr'#233'dito'
      OnExecute = actabrirTabela
    end
    object actstitpedido: TAction
      Caption = 'Item do Pedido'
      OnExecute = actabrirTabela
    end
    object acttpvolume: TAction
      Caption = 'Volume'
      OnExecute = actabrirTabela
    end
    object acttpresposta: TAction
      Caption = 'Resposta'
      OnExecute = acttprespostaExecute
    end
    object acttpvoltagem: TAction
      Caption = 'Voltagem'
      OnExecute = actabrirTabela
    end
    object acttprespostachecklist: TAction
      Caption = 'Resposta Check List'
      OnExecute = actabrirTabela
    end
    object actrelatoriobug: TAction
      Caption = 'Relat'#243'rio de Bug'
      Checked = True
      OnExecute = actrelatoriobugExecute
    end
    object actembarque: TAction
      Caption = 'Embarque'
      ImageIndex = 167
      OnExecute = actembarqueExecute
    end
    object acttpembarque: TAction
      Caption = 'Embarque'
      ImageIndex = 167
      OnExecute = acttpembarqueExecute
    end
    object acttpapontamentomanual: TAction
      Caption = 'Apontamento Manual'
      ImageIndex = 6
      OnExecute = acttpapontamentomanualExecute
    end
    object actapontamentomanual: TAction
      Caption = 'Apontamento Manual'
      ImageIndex = 159
      OnExecute = actapontamentomanualExecute
    end
    object acttpcorrecao: TAction
      Caption = 'Corre'#231#227'o'
      OnExecute = acttpcorrecaoExecute
    end
    object actPeriodicidade: TAction
      Caption = 'Periodicidade'
      OnExecute = actabrirTabela
    end
    object acttpaprovacao: TAction
      Caption = 'Aprova'#231#227'o'
      OnExecute = acttpaprovacaoExecute
    end
    object actscripter: TAction
      Caption = 'Scripter'
      OnExecute = actscripterExecute
    end
    object actimportacaodigisatproduto: TAction
      Caption = 'Produto'
      OnExecute = actimportacaodigisatprodutoExecute
    end
    object actimportacaodigisatcliente: TAction
      Caption = 'Cliente'
      OnExecute = actimportacaodigisatclienteExecute
    end
    object actimportacaodigisatFornecedor: TAction
      Caption = 'Fornecedor'
      OnExecute = actimportacaodigisatFornecedorExecute
    end
    object actimportacaodigisat: TAction
      Caption = 'Digisat'
      OnExecute = actimportacaodigisatExecute
    end
    object actimportacaodatasul: TAction
      Caption = 'Datasul'
      OnExecute = actimportacaodatasulExecute
    end
    object actlocalservico: TAction
      Caption = 'Local Servi'#231'o'
      OnExecute = actabrirTabela
    end
    object acttpequipamento2: TAction
      Caption = 'Equipamento 2'
      OnExecute = actabrirTabela
    end
    object actlacrebalanca: TAction
      Caption = 'Lacre Balan'#231'a'
      OnExecute = actabrirTabela
    end
    object actselobalanca: TAction
      Caption = 'Selo Balan'#231'a'
      OnExecute = actabrirTabela
    end
    object acttpexameperiodico: TAction
      Caption = 'Exame Peri'#243'dico'
      OnExecute = actabrirTabela
    end
    object acttpatestadomedico: TAction
      Caption = 'Atestado M'#233'dico'
      OnExecute = actabrirTabela
    end
    object acttpfuncionariocurso: TAction
      Caption = 'Tipo de Curso'
      OnExecute = actabrirTabela
    end
    object acttptreinamento: TAction
      Caption = 'Treinamento'
      OnExecute = actabrirTabela
    end
    object acttreinamento: TAction
      Caption = 'Treinamento'
      OnExecute = acttreinamentoExecute
    end
    object actimportacaoDOVerleih: TAction
      Caption = 'D&O VerleIH'
      OnExecute = actimportacaoDOVerleihExecute
    end
    object actImportacaoSenior: TAction
      Caption = 'Senior'
      OnExecute = actImportacaoSeniorExecute
    end
    object actImportacaoSeniorCliente: TAction
      Caption = 'Cliente'
      OnExecute = actImportacaoSeniorClienteExecute
    end
    object actImportacaoSeniorFornecedor: TAction
      Caption = 'Fornecedor'
      OnExecute = actImportacaoSeniorFornecedorExecute
    end
    object actImportacaoSeniorProduto: TAction
      Caption = 'Produto'
      OnExecute = actImportacaoSeniorProdutoExecute
    end
    object actImportacaoSeniorDuplicata: TAction
      Caption = 'Contas a Receber'
      OnExecute = actImportacaoSeniorDuplicataExecute
    end
    object actimportacaoseniorbaixaduplicata: TAction
      Caption = 'Baixa Contas a Receber'
      OnExecute = actimportacaoseniorbaixaduplicataExecute
    end
    object actImportacaoSeniorTodos: TAction
      Caption = 'Todos'
      OnExecute = actImportacaoSeniorTodosExecute
    end
    object actImportacaoSeniorAutpagto: TAction
      Caption = 'Contas a Pagar'
      OnExecute = actImportacaoSeniorAutpagtoExecute
    end
    object actimportacaoseniorbaixaautpagto: TAction
      Caption = 'Baixa de Contas a Pagar'
      OnExecute = actimportacaoseniorbaixaautpagtoExecute
    end
    object actversao: TAction
      Caption = 'Vers'#227'o'
      OnExecute = actversaoExecute
    end
    object actimportacaoGesoft: TAction
      Caption = 'Gesoft'
      OnExecute = actimportacaoGesoftExecute
    end
    object actimportacaogesoftProduto: TAction
      Caption = 'Produto'
      OnExecute = actimportacaogesoftProdutoExecute
    end
    object actimportacaogesoftfornecedor: TAction
      Caption = 'Fornecedor'
      OnExecute = actimportacaogesoftfornecedorExecute
    end
    object actimportacaogesoftcliente: TAction
      Caption = 'Cliente'
      OnExecute = actimportacaogesoftclienteExecute
    end
    object actimportacaogesoftsaida: TAction
      Caption = 'Nota Fiscal'
      OnExecute = actimportacaogesoftsaidaExecute
    end
    object actImportacaoGesoftEntrada: TAction
      Caption = 'Compra'
      OnExecute = actImportacaoGesoftEntradaExecute
    end
    object actimportacaoseniorEntrada: TAction
      Caption = 'Compra'
      OnExecute = actimportacaoseniorEntradaExecute
    end
  end
  object bmg: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 436
    Top = 160
    DockControlHeights = (
      0
      0
      65
      0)
    object dxbrtoolbar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 247
      FloatTop = 181
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton214'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton41'
        end
        item
          Visible = True
          ItemName = 'dxBarButton119'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton182'
        end
        item
          Visible = True
          ItemName = 'dxBarButton256'
        end
        item
          Visible = True
          ItemName = 'dxBarButton125'
        end
        item
          Visible = True
          ItemName = 'dxBarButton265'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton298'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton220'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end>
      MultiLine = True
      OneOnRow = True
      RotateWhenVertical = False
      Row = 1
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrmenu: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 27
      FloatTop = 131
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          Visible = True
          ItemName = 'mniMovimentacao'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem6'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem7'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem8'
        end
        item
          Visible = True
          ItemName = 'mniutilitarios'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem10'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Arquivo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Cadastro'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
    end
    object dxBarButton4: TdxBarButton
      Action = actLogin
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actCliente
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actFornecedor
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actCliente
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton11: TdxBarButton
      Action = actFornecedor
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton12: TdxBarButton
      Action = actPedido
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton14: TdxBarButton
      Action = actsaida
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton15: TdxBarButton
      Action = actentrada
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton17: TdxBarButton
      Action = actProduto
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton18: TdxBarButton
      Action = actLogin
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton19: TdxBarButton
      Action = actLogoff
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton20: TdxBarButton
      Action = actordserv
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton21: TdxBarButton
      Action = actworkbox
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Operacional'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton245'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end>
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'Cadastro'
      Category = 0
      MergeOrder = 2
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarButton29'
        end
        item
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          Visible = True
          ItemName = 'dxBarButton141'
        end
        item
          Visible = True
          ItemName = 'dxBarButton145'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton38'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton42'
        end
        item
          Visible = True
          ItemName = 'dxBarButton43'
        end
        item
          Visible = True
          ItemName = 'dxBarButton45'
        end
        item
          Visible = True
          ItemName = 'dxBarButton295'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton46'
        end>
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'Movimenta'#231#227'o'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton48'
        end>
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = 'Consultas'
      Category = 0
      MergeOrder = 4
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton82'
        end
        item
          Visible = True
          ItemName = 'dxBarButton89'
        end
        item
          Visible = True
          ItemName = 'dxBarButton88'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton91'
        end
        item
          Visible = True
          ItemName = 'dxBarButton90'
        end
        item
          Visible = True
          ItemName = 'dxBarButton93'
        end
        item
          Visible = True
          ItemName = 'dxBarButton98'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton92'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton83'
        end
        item
          Visible = True
          ItemName = 'dxBarButton99'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator20'
        end
        item
          Visible = True
          ItemName = 'dxBarButton87'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton103'
        end>
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = 'Gerenciador'
      Category = 0
      MergeOrder = 5
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton104'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton107'
        end
        item
          Visible = True
          ItemName = 'dxBarButton110'
        end
        item
          Visible = True
          ItemName = 'dxBarButton114'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton113'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton109'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator25'
        end
        item
          Visible = True
          ItemName = 'dxBarButton108'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator26'
        end
        item
          Visible = True
          ItemName = 'dxBarButton35'
        end>
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = 'Tabelas'
      Category = 0
      MergeOrder = 6
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mniclassificacao'
        end
        item
          Visible = True
          ItemName = 'dxBarButton124'
        end
        item
          Visible = True
          ItemName = 'dxBarButton121'
        end
        item
          Visible = True
          ItemName = 'dxBarButton101'
        end
        item
          Visible = True
          ItemName = 'dxBarButton155'
        end
        item
          Visible = True
          ItemName = 'dxBarButton140'
        end
        item
          Visible = True
          ItemName = 'dxBarButton131'
        end
        item
          Visible = True
          ItemName = 'dxBarButton139'
        end
        item
          Visible = True
          ItemName = 'dxBarButton194'
        end
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end
        item
          Visible = True
          ItemName = 'mnitabelafuncionario'
        end
        item
          Visible = True
          ItemName = 'dxBarButton128'
        end
        item
          Visible = True
          ItemName = 'dxBarButton158'
        end
        item
          Visible = True
          ItemName = 'dxBarButton159'
        end
        item
          Visible = True
          ItemName = 'dxBarButton129'
        end
        item
          Visible = True
          ItemName = 'mniordserv'
        end
        item
          Visible = True
          ItemName = 'dxBarButton317'
        end
        item
          Visible = True
          ItemName = 'mniproducao'
        end
        item
          Visible = True
          ItemName = 'mniproduto'
        end
        item
          Visible = True
          ItemName = 'dxBarButton142'
        end
        item
          Visible = True
          ItemName = 'dxBarButton123'
        end
        item
          Visible = True
          ItemName = 'dxBarButton39'
        end
        item
          Visible = True
          ItemName = 'dxBarButton215'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton97'
        end
        item
          Visible = True
          ItemName = 'dxBarButton187'
        end
        item
          Visible = True
          ItemName = 'mnistatus'
        end
        item
          Visible = True
          ItemName = 'mnitipo'
        end
        item
          Visible = True
          ItemName = 'mnitributacao'
        end
        item
          Visible = True
          ItemName = 'dxBarButton116'
        end
        item
          Visible = True
          ItemName = 'dxBarButton174'
        end>
    end
    object mniutilitarios: TdxBarSubItem
      Caption = 'Utilit'#225'rios'
      Category = 0
      MergeOrder = 7
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton277'
        end
        item
          Visible = True
          ItemName = 'dxBarButton120'
        end
        item
          Visible = True
          ItemName = 'dxBarButton319'
        end
        item
          Visible = True
          ItemName = 'dxBarButton228'
        end
        item
          Visible = True
          ItemName = 'btnrelatoriobug'
        end
        item
          Visible = True
          ItemName = 'dxBarButton287'
        end
        item
          Visible = True
          ItemName = 'dxBarButton162'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem22'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem21'
        end
        item
          Visible = True
          ItemName = 'MNILINKS'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem11'
        end>
    end
    object dxBarSubItem10: TdxBarSubItem
      Caption = 'Ajuda'
      Category = 0
      MergeOrder = 8
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton163'
        end>
    end
    object dxBarButton22: TdxBarButton
      Action = actLogin
      Category = 0
    end
    object dxBarButton23: TdxBarButton
      Action = actLogoff
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = actFechar
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = actSair
      Category = 0
    end
    object dxBarButton26: TdxBarButton
      Action = actCliente
      Category = 0
    end
    object dxBarButton27: TdxBarButton
      Action = actFornecedor
      Category = 0
    end
    object dxBarButton28: TdxBarButton
      Action = actRepresentante
      Category = 0
    end
    object dxBarButton29: TdxBarButton
      Action = actTransportadora
      Category = 0
    end
    object dxBarButton30: TdxBarButton
      Action = actfuncionario
      Category = 0
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton32: TdxBarButton
      Action = actProduto
      Category = 0
    end
    object dxBarSeparator2: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator4: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton38: TdxBarButton
      Action = actConta
      Category = 0
    end
    object dxBarSeparator5: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton42: TdxBarButton
      Action = actequipamento
      Category = 0
    end
    object dxBarSeparator6: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton43: TdxBarButton
      Action = actveiculo
      Category = 0
    end
    object dxBarButton45: TdxBarButton
      Action = actcontrato
      Category = 0
    end
    object dxBarSeparator7: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton46: TdxBarButton
      Action = actempresa
      Category = 0
    end
    object dxBarButton48: TdxBarButton
      Action = actPedido
      Category = 0
    end
    object mniMovimentacao: TdxBarSubItem
      Caption = 'Movimenta'#231#227'o'
      Category = 0
      MergeOrder = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton210'
        end
        item
          Visible = True
          ItemName = 'dxBarButton51'
        end
        item
          Visible = True
          ItemName = 'dxBarButton181'
        end
        item
          Visible = True
          ItemName = 'dxBarButton60'
        end
        item
          Visible = True
          ItemName = 'dxBarButton52'
        end
        item
          Visible = True
          ItemName = 'dxBarButton312'
        end
        item
          Visible = True
          ItemName = 'dxBarButton157'
        end
        item
          Visible = True
          ItemName = 'dxBarButton64'
        end
        item
          Visible = True
          ItemName = 'dxBarButton62'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton63'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton54'
        end
        item
          Visible = True
          ItemName = 'dxBarButton56'
        end
        item
          Visible = True
          ItemName = 'dxBarButton53'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton66'
        end
        item
          Visible = True
          ItemName = 'dxBarButton67'
        end
        item
          Visible = True
          ItemName = 'dxBarButton70'
        end
        item
          Visible = True
          ItemName = 'dxBarButton278'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton58'
        end
        item
          Visible = True
          ItemName = 'dxBarButton57'
        end
        item
          Visible = True
          ItemName = 'dxBarButton184'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton59'
        end
        item
          Visible = True
          ItemName = 'dxBarButton71'
        end
        item
          Visible = True
          ItemName = 'dxBarButton72'
        end
        item
          Visible = True
          ItemName = 'dxBarButton73'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton225'
        end
        item
          Visible = True
          ItemName = 'dxBarButton138'
        end
        item
          Visible = True
          ItemName = 'dxBarButton76'
        end
        item
          Visible = True
          ItemName = 'dxBarButton143'
        end
        item
          Visible = True
          ItemName = 'dxBarButton328'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton77'
        end
        item
          Visible = True
          ItemName = 'dxBarButton78'
        end
        item
          Visible = True
          ItemName = 'dxBarButton79'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton213'
        end
        item
          Visible = True
          ItemName = 'dxBarButton282'
        end
        item
          Visible = True
          ItemName = 'dxBarButton315'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton288'
        end
        item
          Visible = True
          ItemName = 'dxBarButton74'
        end
        item
          Visible = True
          ItemName = 'dxBarButton31'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton127'
        end
        item
          Visible = True
          ItemName = 'dxBarButton80'
        end
        item
          Visible = True
          ItemName = 'dxBarButton81'
        end>
    end
    object dxBarButton51: TdxBarButton
      Action = actPedido
      Category = 0
    end
    object dxBarButton52: TdxBarButton
      Action = actsaida
      Category = 0
    end
    object dxBarButton53: TdxBarButton
      Action = actentrada
      Category = 0
    end
    object dxBarButton54: TdxBarButton
      Action = actpedidomaterial
      Category = 0
    end
    object dxBarButton55: TdxBarButton
      Caption = 'Mov. Banc'#225'rio'
      Category = 0
      Hint = 'Movimento Banc'#225'rio'
      Visible = ivAlways
      ImageIndex = 18
    end
    object dxBarButton56: TdxBarButton
      Action = actOrdCompra
      Category = 0
    end
    object dxBarButton57: TdxBarButton
      Action = actDuplicata
      Category = 0
    end
    object dxBarButton58: TdxBarButton
      Action = actAutpagto
      Category = 0
    end
    object dxBarButton59: TdxBarButton
      Action = actcheque
      Category = 0
    end
    object dxBarButton60: TdxBarButton
      Action = acttransporte
      Category = 0
    end
    object dxBarButton62: TdxBarButton
      Action = actFaturamento
      Category = 0
    end
    object dxBarSeparator8: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton63: TdxBarButton
      Action = actrim
      Category = 0
    end
    object dxBarSeparator9: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator10: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton65: TdxBarButton
      Caption = 'Caixa Trabalho'
      Category = 0
      Hint = 'Caixa Trabalho'
      Visible = ivAlways
      ImageIndex = 61
    end
    object dxBarButton66: TdxBarButton
      Action = actordserv
      Category = 0
    end
    object dxBarButton67: TdxBarButton
      Action = actworkbox
      Category = 0
    end
    object dxBarButton70: TdxBarButton
      Action = actLocacao
      Category = 0
    end
    object dxBarButton71: TdxBarButton
      Action = actadntcliente
      Category = 0
    end
    object dxBarButton72: TdxBarButton
      Action = actadntfornecedor
      Category = 0
    end
    object dxBarButton73: TdxBarButton
      Action = actcobranca
      Category = 0
    end
    object dxBarButton76: TdxBarButton
      Action = actrpa
      Category = 0
    end
    object dxBarSeparator11: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton77: TdxBarButton
      Action = actMovto
      Category = 0
    end
    object dxBarSeparator12: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton78: TdxBarButton
      Action = actbaixaestoque
      Category = 0
    end
    object dxBarButton79: TdxBarButton
      Action = actentradaestoque
      Category = 0
    end
    object dxBarButton80: TdxBarButton
      Action = actlivro
      Category = 0
    end
    object dxBarSeparator13: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton81: TdxBarButton
      Action = actlivrop3
      Category = 0
    end
    object dxBarButton82: TdxBarButton
      Action = actConsultaPedido
      Category = 0
    end
    object dxBarButton83: TdxBarButton
      Action = actConsultaCliente
      Category = 0
    end
    object dxBarButton87: TdxBarButton
      Action = actconsultaproduto
      Category = 0
    end
    object dxBarButton88: TdxBarButton
      Action = actconsultaentrada
      Category = 0
    end
    object dxBarButton89: TdxBarButton
      Action = actconsultasaida
      Category = 0
    end
    object dxBarButton90: TdxBarButton
      Action = actconsultaautpagto
      Category = 0
    end
    object dxBarButton91: TdxBarButton
      Action = actconsultaduplicata
      Category = 0
    end
    object dxBarButton92: TdxBarButton
      Action = actConsultaMovto
      Category = 0
    end
    object dxBarButton93: TdxBarButton
      Action = actconsultaMovBancario
      Category = 0
    end
    object dxBarSeparator14: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator15: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator16: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton98: TdxBarButton
      Action = actconsultacheque
      Category = 0
    end
    object dxBarSeparator17: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator18: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator19: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton99: TdxBarButton
      Action = actConsultaRepresentante
      Category = 0
    end
    object dxBarSeparator20: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator21: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton103: TdxBarButton
      Action = actConsulta
      Category = 0
    end
    object dxBarButton104: TdxBarButton
      Action = actmanagercntcusto
      Category = 0
    end
    object dxBarButton107: TdxBarButton
      Action = actManagerAutPagto
      Category = 0
    end
    object dxBarButton108: TdxBarButton
      Action = actmanageruser
      Category = 0
    end
    object dxBarButton109: TdxBarButton
      Action = actManagerproduto
      Category = 0
    end
    object dxBarButton110: TdxBarButton
      Action = actManagerDuplicata
      Category = 0
    end
    object dxBarButton111: TdxBarButton
      Caption = 'Aprova'#231#227'o'
      Category = 0
      Hint = 'Gerenciador Aprova'#231#227'o'
      Visible = ivAlways
      ImageIndex = 126
    end
    object dxBarButton113: TdxBarButton
      Action = actmanagerpedido
      Category = 0
    end
    object dxBarButton114: TdxBarButton
      Action = actmanagerplconta
      Category = 0
    end
    object dxBarSeparator22: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator23: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator24: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator25: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSeparator26: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton116: TdxBarButton
      Action = actUnidade
      Category = 0
    end
    object dxBarButton121: TdxBarButton
      Action = actCor
      Category = 0
    end
    object dxBarButton122: TdxBarButton
      Caption = 'Relat'#243'rio'
      Category = 0
      Hint = 'Relat'#243'rio'
      Visible = ivAlways
      ImageIndex = 122
    end
    object dxBarButton123: TdxBarButton
      Action = actrmatividade
      Category = 0
    end
    object dxBarButton124: TdxBarButton
      Action = actCondpagto
      Category = 0
    end
    object dxBarButton128: TdxBarButton
      Action = actgarantia
      Category = 0
    end
    object dxBarButton129: TdxBarButton
      Action = actMovimentacao
      Category = 0
    end
    object dxBarButton131: TdxBarButton
      Action = actferiado
      Category = 0
    end
    object mniclassificacao: TdxBarSubItem
      Caption = 'Classifica'#231#227'o'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton133'
        end
        item
          Visible = True
          ItemName = 'dxBarButton132'
        end>
    end
    object dxBarButton132: TdxBarButton
      Action = actclfornecedor
      Category = 0
    end
    object dxBarButton133: TdxBarButton
      Action = actclpedidoMaterial
      Category = 0
    end
    object mnitabelafuncionario: TdxBarSubItem
      Caption = 'Funcion'#225'rio'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton69'
        end
        item
          Visible = True
          ItemName = 'dxBarButton134'
        end
        item
          Visible = True
          ItemName = 'dxBarButton136'
        end
        item
          Visible = True
          ItemName = 'dxBarButton135'
        end
        item
          Visible = True
          ItemName = 'dxBarButton95'
        end
        item
          Visible = True
          ItemName = 'dxBarButton326'
        end
        item
          Visible = True
          ItemName = 'dxBarButton176'
        end>
    end
    object dxBarButton134: TdxBarButton
      Action = actfuncao
      Category = 0
    end
    object dxBarButton135: TdxBarButton
      Action = actlocaltrabalho
      Category = 0
    end
    object dxBarButton136: TdxBarButton
      Action = actgrauparentesco
      Category = 0
    end
    object dxBarSubItem14: TdxBarSubItem
      Caption = 'Status'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem16: TdxBarSubItem
      Caption = 'Tipo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem17: TdxBarSubItem
      Caption = 'Status'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object mniordserv: TdxBarSubItem
      Caption = 'Ordem Servi'#231'o'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton146'
        end
        item
          Visible = True
          ItemName = 'dxBarButton149'
        end
        item
          Visible = True
          ItemName = 'dxBarButton151'
        end
        item
          Visible = True
          ItemName = 'dxBarButton154'
        end
        item
          Visible = True
          ItemName = 'dxBarButton156'
        end
        item
          Visible = True
          ItemName = 'dxBarButton324'
        end
        item
          Visible = True
          ItemName = 'dxBarButton322'
        end
        item
          Visible = True
          ItemName = 'dxBarButton152'
        end
        item
          Visible = True
          ItemName = 'dxBarButton153'
        end
        item
          Visible = True
          ItemName = 'dxBarButton325'
        end
        item
          Visible = True
          ItemName = 'dxBarButton150'
        end
        item
          Visible = True
          ItemName = 'dxBarButton148'
        end
        item
          Visible = True
          ItemName = 'dxBarButton147'
        end>
    end
    object dxBarButton146: TdxBarButton
      Action = actacessorio
      Category = 0
    end
    object dxBarButton147: TdxBarButton
      Action = actTamanho
      Category = 0
    end
    object dxBarButton148: TdxBarButton
      Action = actsinalclb
      Category = 0
    end
    object dxBarButton149: TdxBarButton
      Action = actclpressao
      Category = 0
    end
    object dxBarButton150: TdxBarButton
      Action = actservico
      Category = 0
    end
    object dxBarButton151: TdxBarButton
      Action = actcondentrega
      Category = 0
    end
    object dxBarButton152: TdxBarButton
      Action = actpintura
      Category = 0
    end
    object dxBarButton153: TdxBarButton
      Action = actprioridade
      Category = 0
    end
    object dxBarButton154: TdxBarButton
      Action = actdefeito
      Category = 0
    end
    object dxBarButton155: TdxBarButton
      Action = actetapa
      Category = 0
    end
    object dxBarButton156: TdxBarButton
      Action = actimpvalvula
      Category = 0
    end
    object dxBarButton158: TdxBarButton
      Action = actmarca
      Category = 0
    end
    object dxBarButton159: TdxBarButton
      Action = actmodelo
      Category = 0
    end
    object dxBarSeparator27: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
    end
    object dxBarSubItem19: TdxBarSubItem
      Caption = 'Tipo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem20: TdxBarSubItem
      Caption = 'Status'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton160: TdxBarButton
      Caption = 'Calculadora'
      Category = 0
      Hint = 'Calculadora'
      Visible = ivAlways
      ImageIndex = 14
      ShortCut = 122
    end
    object dxBarButton161: TdxBarButton
      Caption = 'Banco Dados'
      Category = 0
      Hint = 'Banco Dados'
      Visible = ivAlways
      ImageIndex = 17
    end
    object dxBarButton162: TdxBarButton
      Action = actExportarExcel
      Category = 0
    end
    object dxBarButton163: TdxBarButton
      Action = actSobre
      Category = 0
    end
    object dxBarButton164: TdxBarButton
      Action = actstordserv
      Category = 0
    end
    object dxBarButton166: TdxBarButton
      Action = actstitordserv
      Category = 0
    end
    object dxBarButton167: TdxBarButton
      Action = actstlink
      Category = 0
    end
    object dxBarButton169: TdxBarButton
      Action = actstitetapa
      Category = 0
    end
    object dxBarButton170: TdxBarButton
      Action = acttpanotacao
      Category = 0
    end
    object dxBarButton171: TdxBarButton
      Action = acttpordserv
      Category = 0
    end
    object dxBarButton172: TdxBarButton
      Action = acttpeletricpneum
      Category = 0
    end
    object mniproduto: TdxBarSubItem
      Caption = 'Produto'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton165'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton168'
        end>
    end
    object mniproducao: TdxBarSubItem
      Caption = 'Produ'#231#227'o'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton177'
        end>
    end
    object mnitributacao: TdxBarSubItem
      Caption = 'Tributa'#231#227'o'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton279'
        end
        item
          Visible = True
          ItemName = 'dxBarButton300'
        end
        item
          Visible = True
          ItemName = 'dxBarButton261'
        end
        item
          Visible = True
          ItemName = 'dxBarButton50'
        end
        item
          Visible = True
          ItemName = 'dxBarButton268'
        end
        item
          Visible = True
          ItemName = 'mnisituacaotributaria'
        end>
    end
    object mnitipo: TdxBarSubItem
      Caption = 'Tipo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton117'
        end
        item
          Visible = True
          ItemName = 'dxBarButton208'
        end
        item
          Visible = True
          ItemName = 'dxBarButton170'
        end
        item
          Visible = True
          ItemName = 'dxBarButton130'
        end
        item
          Visible = True
          ItemName = 'dxBarButton314'
        end
        item
          Visible = True
          ItemName = 'dxBarButton318'
        end
        item
          Visible = True
          ItemName = 'dxBarButton285'
        end
        item
          Visible = True
          ItemName = 'dxBarButton75'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton231'
        end
        item
          Visible = True
          ItemName = 'dxBarButton238'
        end
        item
          Visible = True
          ItemName = 'dxBarButton235'
        end
        item
          Visible = True
          ItemName = 'dxBarButton302'
        end
        item
          Visible = True
          ItemName = 'dxBarButton183'
        end
        item
          Visible = True
          ItemName = 'dxBarButton190'
        end
        item
          Visible = True
          ItemName = 'dxBarButton198'
        end
        item
          Visible = True
          ItemName = 'dxBarButton248'
        end
        item
          Visible = True
          ItemName = 'dxBarButton247'
        end
        item
          Visible = True
          ItemName = 'dxBarButton102'
        end
        item
          Visible = True
          ItemName = 'dxBarButton299'
        end
        item
          Visible = True
          ItemName = 'dxBarButton222'
        end
        item
          Visible = True
          ItemName = 'dxBarButton316'
        end
        item
          Visible = True
          ItemName = 'dxBarButton257'
        end
        item
          Visible = True
          ItemName = 'dxBarButton283'
        end
        item
          Visible = True
          ItemName = 'dxBarButton303'
        end
        item
          Visible = True
          ItemName = 'dxBarButton100'
        end
        item
          Visible = True
          ItemName = 'dxBarButton286'
        end
        item
          Visible = True
          ItemName = 'dxBarButton204'
        end
        item
          Visible = True
          ItemName = 'dxBarButton224'
        end
        item
          Visible = True
          ItemName = 'dxBarButton253'
        end
        item
          Visible = True
          ItemName = 'dxBarButton172'
        end
        item
          Visible = True
          ItemName = 'dxBarButton313'
        end
        item
          Visible = True
          ItemName = 'dxBarButton250'
        end
        item
          Visible = True
          ItemName = 'dxBarButton323'
        end
        item
          Visible = True
          ItemName = 'dxBarButton115'
        end
        item
          Visible = True
          ItemName = 'dxBarButton240'
        end
        item
          Visible = True
          ItemName = 'dxBarButton205'
        end
        item
          Visible = True
          ItemName = 'dxBarButton185'
        end
        item
          Visible = True
          ItemName = 'dxBarButton175'
        end
        item
          Visible = True
          ItemName = 'dxBarButton203'
        end
        item
          Visible = True
          ItemName = 'dxBarButton178'
        end
        item
          Visible = True
          ItemName = 'dxBarButton242'
        end
        item
          Visible = True
          ItemName = 'dxBarButton239'
        end
        item
          Visible = True
          ItemName = 'dxBarButton241'
        end
        item
          Visible = True
          ItemName = 'dxBarButton84'
        end
        item
          Visible = True
          ItemName = 'dxBarButton179'
        end
        item
          Visible = True
          ItemName = 'dxBarButton180'
        end
        item
          Visible = True
          ItemName = 'dxBarButton246'
        end
        item
          Visible = True
          ItemName = 'dxBarButton34'
        end
        item
          Visible = True
          ItemName = 'dxBarButton233'
        end
        item
          Visible = True
          ItemName = 'dxBarButton230'
        end
        item
          Visible = True
          ItemName = 'dxBarButton236'
        end
        item
          Visible = True
          ItemName = 'dxBarButton96'
        end
        item
          Visible = True
          ItemName = 'dxBarButton226'
        end
        item
          Visible = True
          ItemName = 'dxBarButton202'
        end
        item
          Visible = True
          ItemName = 'dxBarButton171'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end
        item
          Visible = True
          ItemName = 'dxBarButton252'
        end
        item
          Visible = True
          ItemName = 'dxBarButton186'
        end
        item
          Visible = True
          ItemName = 'dxBarButton229'
        end
        item
          Visible = True
          ItemName = 'dxBarButton232'
        end
        item
          Visible = True
          ItemName = 'dxBarButton306'
        end
        item
          Visible = True
          ItemName = 'dxBarButton309'
        end
        item
          Visible = True
          ItemName = 'dxBarButton258'
        end
        item
          Visible = True
          ItemName = 'dxBarButton49'
        end
        item
          Visible = True
          ItemName = 'dxBarButton301'
        end
        item
          Visible = True
          ItemName = 'dxBarButton144'
        end
        item
          Visible = True
          ItemName = 'dxBarButton254'
        end
        item
          Visible = True
          ItemName = 'dxBarButton173'
        end
        item
          Visible = True
          ItemName = 'dxBarButton273'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton44'
        end
        item
          Visible = True
          ItemName = 'dxBarButton297'
        end
        item
          Visible = True
          ItemName = 'dxBarButton218'
        end
        item
          Visible = True
          ItemName = 'dxBarButton327'
        end
        item
          Visible = True
          ItemName = 'dxBarButton260'
        end
        item
          Visible = True
          ItemName = 'dxBarButton308'
        end
        item
          Visible = True
          ItemName = 'dxBarButton305'
        end>
    end
    object mnistatus: TdxBarSubItem
      Caption = 'Status'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton195'
        end
        item
          Visible = True
          ItemName = 'dxBarButton196'
        end
        item
          Visible = True
          ItemName = 'dxBarButton234'
        end
        item
          Visible = True
          ItemName = 'dxBarButton197'
        end
        item
          Visible = True
          ItemName = 'dxBarButton284'
        end
        item
          Visible = True
          ItemName = 'dxBarButton193'
        end
        item
          Visible = True
          ItemName = 'dxBarButton191'
        end
        item
          Visible = True
          ItemName = 'dxBarButton189'
        end
        item
          Visible = True
          ItemName = 'dxBarButton188'
        end
        item
          Visible = True
          ItemName = 'dxBarButton209'
        end
        item
          Visible = True
          ItemName = 'dxBarButton169'
        end
        item
          Visible = True
          ItemName = 'dxBarButton304'
        end
        item
          Visible = True
          ItemName = 'dxBarButton166'
        end
        item
          Visible = True
          ItemName = 'dxBarButton167'
        end
        item
          Visible = True
          ItemName = 'dxBarButton211'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarButton199'
        end
        item
          Visible = True
          ItemName = 'dxBarButton164'
        end
        item
          Visible = True
          ItemName = 'dxBarButton227'
        end
        item
          Visible = True
          ItemName = 'dxBarButton216'
        end
        item
          Visible = True
          ItemName = 'dxBarButton192'
        end
        item
          Visible = True
          ItemName = 'dxBarButton280'
        end
        item
          Visible = True
          ItemName = 'dxBarButton207'
        end
        item
          Visible = True
          ItemName = 'dxBarButton217'
        end
        item
          Visible = True
          ItemName = 'dxBarButton47'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton296'
        end
        item
          Visible = True
          ItemName = 'dxBarButton221'
        end
        item
          Visible = True
          ItemName = 'dxBarButton219'
        end>
    end
    object dxBarButton174: TdxBarButton
      Action = actuf
      Category = 0
    end
    object dxBarButton176: TdxBarButton
      Action = actTurno
      Category = 0
    end
    object dxBarButton177: TdxBarButton
      Action = actTurma
      Category = 0
    end
    object dxBarSubItem26: TdxBarSubItem
      Caption = 'Status'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem27: TdxBarSubItem
      Caption = 'Tipo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actgrade
      Category = 0
    end
    object dxBarSubItem28: TdxBarSubItem
      Caption = 'Tipo'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton185: TdxBarButton
      Action = acttpgradevalor
      Category = 0
    end
    object dxBarButton186: TdxBarButton
      Action = acttpproduto
      Category = 0
    end
    object dxBarButton188: TdxBarButton
      Action = actstgarantia
      Category = 0
    end
    object dxBarButton189: TdxBarButton
      Action = actstfornecedor
      Category = 0
    end
    object dxBarButton191: TdxBarButton
      Action = actstfaturamento
      Category = 0
    end
    object dxBarButton193: TdxBarButton
      Action = actstequipamento
      Category = 0
    end
    object dxBarButton195: TdxBarButton
      Action = actstcheque
      Category = 0
    end
    object dxBarButton196: TdxBarButton
      Action = actstCliente
      Category = 0
    end
    object dxBarButton197: TdxBarButton
      Action = actstcontrato
      Category = 0
    end
    object dxBarButton206: TdxBarButton
      Caption = 'Relat'#243'rio'
      Category = 0
      Hint = 'Status do Relat'#243'rio'
      Visible = ivAlways
      ImageIndex = 122
      OnClick = actabrirTabela
    end
    object dxBarButton207: TdxBarButton
      Action = actstregcobranca
      Category = 0
    end
    object dxBarButton211: TdxBarButton
      Action = actstlocacao
      Category = 0
    end
    object dxBarButton216: TdxBarButton
      Action = actStPedido
      Category = 0
    end
    object dxBarButton217: TdxBarButton
      Action = actStRepresentante
      Category = 0
    end
    object dxBarButton219: TdxBarButton
      Action = actsttransporte
      Category = 0
    end
    object dxBarButton221: TdxBarButton
      Action = actsttransportadora
      Category = 0
    end
    object dxBarButton226: TdxBarButton
      Action = acttpordcompra
      Category = 0
    end
    object dxBarButton230: TdxBarButton
      Action = acttpsaida
      Category = 0
    end
    object dxBarButton231: TdxBarButton
      Action = acttpcliente
      Category = 0
    end
    object dxBarButton233: TdxBarButton
      Action = acttpmovto
      Category = 0
    end
    object dxBarButton235: TdxBarButton
      Action = acttpcombustivel
      Category = 0
    end
    object dxBarButton238: TdxBarButton
      Action = acttpcobranca
      Category = 0
    end
    object dxBarButton239: TdxBarButton
      Action = acttpveicmanut
      Category = 0
    end
    object dxBarButton240: TdxBarButton
      Action = acttpfaturamento
      Category = 0
    end
    object dxBarButton241: TdxBarButton
      Action = acttpclientemensalidade
      Category = 0
    end
    object dxBarButton242: TdxBarButton
      Action = acttplocacao
      Category = 0
    end
    object dxBarButton247: TdxBarButton
      Action = acttpcondentrega
      Category = 0
    end
    object dxBarButton248: TdxBarButton
      Action = acttpentrada
      Category = 0
    end
    object dxBarButton250: TdxBarButton
      Action = acttpequipamento
      Category = 0
    end
    object dxBarButton252: TdxBarButton
      Action = actTpPedido
      Category = 0
    end
    object dxBarButton254: TdxBarButton
      Action = acttprpa
      Category = 0
    end
    object dxBarButton255: TdxBarButton
      Caption = 'Relat'#243'rio'
      Category = 0
      Hint = 'Tipo Relat'#243'rio'
      Visible = ivAlways
      ImageIndex = 122
      OnClick = actabrirTabela
    end
    object dxBarButton257: TdxBarButton
      Action = acttppedidomaterial
      Category = 0
    end
    object dxBarButton258: TdxBarButton
      Action = acttprim
      Category = 0
    end
    object dxBarButton260: TdxBarButton
      Action = acttpveiculo
      Category = 0
    end
    object dxBarButton261: TdxBarButton
      Action = actCFOP
      Category = 0
    end
    object dxBarButton268: TdxBarButton
      Action = actserie
      Category = 0
    end
    object mnisituacaotributaria: TdxBarSubItem
      Caption = 'Situa'#231#227'o Tribut'#225'ria'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton269'
        end
        item
          Visible = True
          ItemName = 'dxBarButton270'
        end
        item
          Visible = True
          ItemName = 'dxBarButton271'
        end
        item
          Visible = True
          ItemName = 'dxBarButton272'
        end>
    end
    object dxBarButton269: TdxBarButton
      Action = actstcofins
      Category = 0
    end
    object dxBarButton270: TdxBarButton
      Action = actsticms
      Category = 0
    end
    object dxBarButton271: TdxBarButton
      Action = actstipi
      Category = 0
    end
    object dxBarButton272: TdxBarButton
      Action = actstpis
      Category = 0
    end
    object dxBarButton279: TdxBarButton
      Action = actefd0450
      Category = 0
    end
    object dxBarButton281: TdxBarButton
      Caption = 'Equipamento'
      Category = 0
      Hint = 'Equipamento'
      Visible = ivAlways
      ImageIndex = 95
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actmaterial
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actreport
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actcorridaquimica
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actcaixafinanceiro
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acttpservico
      Category = 0
    end
    object dxBarButton120: TdxBarButton
      Action = actbancodados
      Category = 0
    end
    object dxBarButton130: TdxBarButton
      Action = acttpaplicacao
      Category = 0
    end
    object dxBarButton157: TdxBarButton
      Action = actcte
      Category = 0
    end
    object dxBarButton204: TdxBarButton
      Action = actctetpmedida
      Category = 0
    end
    object dxBarButton224: TdxBarButton
      Action = actctetpvlprestacao
      Category = 0
    end
    object dxBarButton194: TdxBarButton
      Action = actfinalidadeordcompra
      Category = 0
    end
    object dxBarButton205: TdxBarButton
      Action = acttpfornecedor
      Category = 0
    end
    object dxBarButton106: TdxBarButton
      Action = actsuporteremoto
      Category = 0
    end
    object dxBarButton126: TdxBarButton
      Action = actsuporteremotot
      Category = 0
    end
    object dxBarButton210: TdxBarButton
      Action = actorcamento
      Category = 0
    end
    object dxBarButton223: TdxBarButton
      Action = actcte
      Category = 0
    end
    object dxBarButton228: TdxBarButton
      Action = actchave
      Category = 0
    end
    object dxBarButton236: TdxBarButton
      Action = acttporcamento
      Category = 0
    end
    object dxBarButton119: TdxBarButton
      Action = actorcamento
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton256: TdxBarButton
      Action = actcte
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton265: TdxBarButton
      Action = actFaturamento
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton286: TdxBarButton
      Action = acttpcriterioiqf
      Category = 0
    end
    object dxBarButton287: TdxBarButton
      Action = actdownload
      Category = 0
    end
    object dxBarButton288: TdxBarButton
      Action = actordproducao
      Category = 0
    end
    object dxBarButton237: TdxBarButton
      Action = actnfefazendagovbr
      Category = 0
    end
    object dxBarButton289: TdxBarButton
      Action = actconsultardisponibilidadenfe
      Category = 0
    end
    object dxBarButton290: TdxBarButton
      Action = actecac
      Category = 0
    end
    object dxBarButton291: TdxBarButton
      Action = actconsultainutilizacaomg
      Category = 0
    end
    object dxBarButton292: TdxBarButton
      Action = actconsultanfemg
      Category = 0
    end
    object dxBarButton293: TdxBarButton
      Action = actstatusservicomg
      Category = 0
    end
    object dxBarSubItem11: TdxBarSubItem
      Action = actsuporte
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton307'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton106'
        end
        item
          Visible = True
          ItemName = 'dxBarButton126'
        end
        item
          Visible = True
          ItemName = 'dxBarButton243'
        end>
    end
    object MNILINKS: TdxBarSubItem
      Caption = 'Link'#39's'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem15'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton86'
        end
        item
          Visible = True
          ItemName = 'dxBarButton294'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton290'
        end>
    end
    object dxBarButton294: TdxBarButton
      Action = actvalidadorsintegra2014
      Category = 0
    end
    object dxBarButton118: TdxBarButton
      Action = actstatusservicocte
      Category = 0
    end
    object dxBarButton127: TdxBarButton
      Action = actativopiscofins
      Category = 0
    end
    object dxBarButton253: TdxBarButton
      Action = acttpdeclinarorcamento
      Category = 0
    end
    object dxBarButton100: TdxBarButton
      Action = acttpcriterioorcamento
      Category = 0
    end
    object dxBarButton295: TdxBarButton
      Action = actrota
      Category = 0
    end
    object dxBarButton35: TdxBarButton
      Action = Actmanagertarefa
      Category = 0
    end
    object dxBarButton296: TdxBarButton
      Action = actsttarefa
      Category = 0
    end
    object dxBarButton297: TdxBarButton
      Action = acttptarefa
      Category = 0
    end
    object dxBarButton298: TdxBarButton
      Action = actOrdCompra
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton299: TdxBarButton
      Action = acttpcontrato
      Category = 0
    end
    object dxBarButton300: TdxBarButton
      Action = actbccalculocredito
      Category = 0
    end
    object dxBarButton182: TdxBarButton
      Action = actordproducao
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton184: TdxBarButton
      Action = actnegociacao
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actmanagerordproducao
      Category = 0
    end
    object dxBarButton33: TdxBarButton
      Action = acttpparada
      Category = 0
    end
    object dxBarButton50: TdxBarButton
      Action = actregrast
      Category = 0
    end
    object dxBarButton69: TdxBarButton
      Action = actescolaridade
      Category = 0
    end
    object dxBarButton85: TdxBarButton
      Action = actctefazendagov
      Category = 0
    end
    object dxBarButton86: TdxBarButton
      Action = actsintegragovbr
      Category = 0
    end
    object dxBarButton94: TdxBarButton
      Action = actconsultadisponibilidadecte
      Category = 0
    end
    object dxBarButton95: TdxBarButton
      Action = actsetor
      Category = 0
    end
    object dxBarButton175: TdxBarButton
      Action = actgraudificuldade
      Category = 0
    end
    object dxBarButton96: TdxBarButton
      Action = actorcamentoatravesde
      Category = 0
    end
    object dxBarButton178: TdxBarButton
      Action = actlinkextrato
      Category = 0
    end
    object dxBarButton179: TdxBarButton
      Action = acttpaprovacaocotacao
      Category = 0
    end
    object dxBarButton180: TdxBarButton
      Action = actpreselecaofornecedor
      Category = 0
    end
    object dxBarButton183: TdxBarButton
      Action = acttpcomissao
      Category = 0
    end
    object dxBarButton190: TdxBarButton
      Action = acttpcomissaoproduto
      Category = 0
    end
    object dxBarButton198: TdxBarButton
      Action = acttpcomissaorepresentante
      Category = 0
    end
    object dxBarButton36: TdxBarButton
      Action = actstorcamento
      Category = 0
    end
    object dxBarButton199: TdxBarButton
      Action = actstordproducao
      Category = 0
    end
    object dxBarSubItem13: TdxBarSubItem
      Action = actsuporte
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton61'
        end
        item
          Visible = True
          ItemName = 'dxBarButton310'
        end
        item
          Visible = True
          ItemName = 'dxBarButton311'
        end
        item
          Visible = True
          ItemName = 'dxBarButton137'
        end
        item
          Visible = True
          ItemName = 'dxBarButton244'
        end>
    end
    object dxBarButton61: TdxBarButton
      Action = actsuporteremotot
      Category = 0
    end
    object dxBarButton137: TdxBarButton
      Action = actsuporteremoto
      Category = 0
    end
    object dxBarSubItem15: TdxBarSubItem
      Caption = 'NFE'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton289'
        end
        item
          Visible = True
          ItemName = 'dxBarButton292'
        end
        item
          Visible = True
          ItemName = 'dxBarButton291'
        end
        item
          Visible = True
          ItemName = 'dxBarButton293'
        end
        item
          Visible = True
          ItemName = 'dxBarButton237'
        end>
    end
    object dxBarSubItem18: TdxBarSubItem
      Caption = 'CTE'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton94'
        end
        item
          Visible = True
          ItemName = 'dxBarButton200'
        end
        item
          Visible = True
          ItemName = 'dxBarButton201'
        end
        item
          Visible = True
          ItemName = 'dxBarButton118'
        end
        item
          Visible = True
          ItemName = 'dxBarButton85'
        end>
    end
    object dxBarButton200: TdxBarButton
      Action = actconsultactemg
      Category = 0
    end
    object dxBarButton201: TdxBarButton
      Action = actconsultainutilizacaomgcte
      Category = 0
    end
    object dxBarButton202: TdxBarButton
      Action = acttpordproducao
      Category = 0
    end
    object dxBarButton203: TdxBarButton
      Action = acttphoraextra
      Category = 0
    end
    object dxBarButton208: TdxBarButton
      Action = acttpagenda
      Category = 0
    end
    object dxBarButton209: TdxBarButton
      Action = actstitagenda
      Category = 0
    end
    object dxBarButton213: TdxBarButton
      Action = actagenda
      Category = 0
    end
    object dxBarButton214: TdxBarButton
      Action = actagenda
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton215: TdxBarButton
      Action = actregiaocorpo
      Category = 0
    end
    object dxBarButton218: TdxBarButton
      Action = acttptarefa1
      Category = 0
    end
    object dxBarButton220: TdxBarButton
      Action = Actmanagertarefa
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton1: TdxBarButton
      Action = actspedfiscal
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actspedpiscofins
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actcatextrato
      Category = 0
    end
    object dxBarButton34: TdxBarButton
      Action = acttpmotivotarefa
      Category = 0
    end
    object dxBarButton39: TdxBarButton
      Action = actregiaoaplicacao
      Category = 0
    end
    object dxBarButton40: TdxBarButton
      Action = actformulacao
      Category = 0
    end
    object dxBarButton41: TdxBarButton
      Action = actLocacao
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton97: TdxBarButton
      Action = actreportuser
      Category = 0
    end
    object dxBarButton102: TdxBarButton
      Action = acttpconta
      Category = 0
    end
    object dxBarButton64: TdxBarButton
      Action = actmdfe
      Category = 0
    end
    object dxBarButton84: TdxBarButton
      Action = acttpmdfe
      Category = 0
    end
    object dxBarButton125: TdxBarButton
      Action = actmdfe
      Category = 0
    end
    object dxBarButton165: TdxBarButton
      Action = actforma
      Category = 0
    end
    object dxBarButton168: TdxBarButton
      Action = actnorma
      Category = 0
    end
    object dxBarButton173: TdxBarButton
      Action = acttprota
      Category = 0
    end
    object dxBarButton192: TdxBarButton
      Action = actstprojeto
      Category = 0
    end
    object dxBarButton229: TdxBarButton
      Action = acttpprojeto
      Category = 0
    end
    object dxBarButton232: TdxBarButton
      Action = acttpprojeto1
      Category = 0
    end
    object dxBarButton181: TdxBarButton
      Action = actconferenciapedido
      Category = 0
    end
    object dxBarButton234: TdxBarButton
      Action = actstconferenciapedido
      Category = 0
    end
    object dxBarButton243: TdxBarButton
      Action = actchat
      Category = 0
    end
    object dxBarButton245: TdxBarButton
      Action = actLogoff
      Category = 0
    end
    object dxBarButton246: TdxBarButton
      Action = acttpmotivorevisao
      Category = 0
    end
    object dxBarSubItem21: TdxBarSubItem
      Action = actimportacao
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem12'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem25'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem24'
        end>
    end
    object dxBarButton249: TdxBarButton
      Action = actimportacaocliente
      Category = 0
    end
    object dxBarButton251: TdxBarButton
      Action = actimportacaofornecedor
      Category = 0
    end
    object dxBarButton259: TdxBarButton
      Action = actimportacaotransportadora
      Category = 0
    end
    object dxBarSubItem22: TdxBarSubItem
      Action = actexportacao
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem23'
        end>
    end
    object dxBarSubItem23: TdxBarSubItem
      Action = actexportacaodatasul
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton263'
        end
        item
          Visible = True
          ItemName = 'dxBarButton264'
        end
        item
          Visible = True
          ItemName = 'dxBarButton262'
        end
        item
          Visible = True
          ItemName = 'dxBarButton266'
        end
        item
          Visible = True
          ItemName = 'dxBarButton267'
        end>
    end
    object dxBarButton263: TdxBarButton
      Action = actexportacaodatasulduplicata
      Category = 0
    end
    object dxBarButton262: TdxBarButton
      Action = actexportacaodatasulcontabil
      Category = 0
    end
    object dxBarButton264: TdxBarButton
      Action = actexportacaodatasulcte
      Category = 0
    end
    object dxBarButton266: TdxBarButton
      Action = actexportacaodatasulRPA
      Category = 0
    end
    object dxBarButton267: TdxBarButton
      Action = actexportacaodatasulautpagto
      Category = 0
    end
    object dxBarButton278: TdxBarButton
      Action = actmetrologia
      Category = 0
    end
    object dxBarButton280: TdxBarButton
      Action = actstmetrologia
      Category = 0
    end
    object dxBarButton282: TdxBarButton
      Action = actapontamento
      Category = 0
    end
    object dxBarButton244: TdxBarButton
      Action = actchat
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actsolicitacaocompra
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actstsolicitacaocompra
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = acttpsolicitacaocompra
      Category = 0
    end
    object dxBarButton31: TdxBarButton
      Action = actrequisicaoproducao
      Category = 0
    end
    object dxBarButton47: TdxBarButton
      Action = actstrequisicaoproducao
      Category = 0
    end
    object dxBarButton49: TdxBarButton
      Action = acttprequisicaoproducao
      Category = 0
    end
    object dxBarButton75: TdxBarButton
      Action = acttpbancohoras
      Category = 0
    end
    object dxBarButton117: TdxBarButton
      Action = acttpabono
      Category = 0
    end
    object dxBarButton138: TdxBarButton
      Action = actpontotrabalho
      Category = 0
    end
    object dxBarButton139: TdxBarButton
      Action = actferiadolocal
      Category = 0
    end
    object dxBarButton140: TdxBarButton
      Action = acteventoemail
      Category = 0
    end
    object dxBarButton141: TdxBarButton
      Action = actpaciente
      Category = 0
    end
    object dxBarButton142: TdxBarButton
      Action = actprofissao
      Category = 0
    end
    object dxBarButton143: TdxBarButton
      Action = actrhocorrencia
      Category = 0
    end
    object dxBarButton144: TdxBarButton
      Action = acttprhocorrencia
      Category = 0
    end
    object dxBarButton44: TdxBarButton
      Action = actsubtpparada
      Category = 0
    end
    object dxBarButton74: TdxBarButton
      Action = actparada
      Category = 0
    end
    object dxBarButton101: TdxBarButton
      Action = actespecialidade
      Category = 0
    end
    object dxBarButton145: TdxBarButton
      Action = actprofissional
      Category = 0
    end
    object dxBarButton187: TdxBarButton
      Action = actrisco
      Category = 0
    end
    object dxBarButton222: TdxBarButton
      Action = acttpconvenio
      Category = 0
    end
    object dxBarButton225: TdxBarButton
      Action = actdespesaconvenio
      Category = 0
    end
    object dxBarButton227: TdxBarButton
      Action = actstpaciente
      Category = 0
    end
    object dxBarButton273: TdxBarButton
      Action = acttprisco
      Category = 0
    end
    object dxBarButton283: TdxBarButton
      Action = acttpcnh
      Category = 0
    end
    object dxBarButton284: TdxBarButton
      Action = actstembarque
      Category = 0
    end
    object dxBarButton301: TdxBarButton
      Action = acttprevisaocomercial
      Category = 0
    end
    object dxBarButton302: TdxBarButton
      Action = acttpcomercial
      Category = 0
    end
    object dxBarButton303: TdxBarButton
      Action = acttpcredito
      Category = 0
    end
    object dxBarButton304: TdxBarButton
      Action = actstitpedido
      Category = 0
    end
    object dxBarButton305: TdxBarButton
      Action = acttpvolume
      Category = 0
    end
    object dxBarButton306: TdxBarButton
      Action = acttpresposta
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = actanydesk
      Category = 0
    end
    object dxBarButton307: TdxBarButton
      Action = actaeroadmin
      Category = 0
    end
    object dxBarButton308: TdxBarButton
      Action = acttpvoltagem
      Category = 0
    end
    object dxBarButton309: TdxBarButton
      Action = acttprespostachecklist
      Category = 0
    end
    object dxBarButton310: TdxBarButton
      Action = actanydesk
      Category = 0
    end
    object dxBarButton311: TdxBarButton
      Action = actaeroadmin
      Category = 0
    end
    object btnrelatoriobug: TdxBarButton
      Action = actrelatoriobug
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton312: TdxBarButton
      Action = actembarque
      Category = 0
    end
    object dxBarButton313: TdxBarButton
      Action = acttpembarque
      Category = 0
    end
    object dxBarButton314: TdxBarButton
      Action = acttpapontamentomanual
      Category = 0
    end
    object dxBarButton315: TdxBarButton
      Action = actapontamentomanual
      Category = 0
    end
    object dxBarButton316: TdxBarButton
      Action = acttpcorrecao
      Category = 0
    end
    object dxBarButton317: TdxBarButton
      Action = actPeriodicidade
      Category = 0
    end
    object dxBarButton318: TdxBarButton
      Action = acttpaprovacao
      Category = 0
    end
    object dxBarButton319: TdxBarButton
      Action = actscripter
      Category = 0
    end
    object dxBarSubItem9: TdxBarSubItem
      Action = actimportacaodigisat
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton212'
        end
        item
          Visible = True
          ItemName = 'dxBarButton321'
        end
        item
          Visible = True
          ItemName = 'dxBarButton320'
        end>
    end
    object dxBarButton212: TdxBarButton
      Action = actimportacaodigisatcliente
      Category = 0
    end
    object dxBarButton320: TdxBarButton
      Action = actimportacaodigisatproduto
      Category = 0
    end
    object dxBarButton321: TdxBarButton
      Action = actimportacaodigisatFornecedor
      Category = 0
    end
    object dxBarSubItem12: TdxBarSubItem
      Action = actimportacaodatasul
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton249'
        end
        item
          Visible = True
          ItemName = 'dxBarButton251'
        end
        item
          Visible = True
          ItemName = 'dxBarButton259'
        end>
    end
    object dxBarButton322: TdxBarButton
      Action = actlocalservico
      Category = 0
    end
    object dxBarButton323: TdxBarButton
      Action = acttpequipamento2
      Category = 0
    end
    object dxBarButton324: TdxBarButton
      Action = actlacrebalanca
      Category = 0
    end
    object dxBarButton325: TdxBarButton
      Action = actselobalanca
      Category = 0
    end
    object dxBarButton115: TdxBarButton
      Action = acttpexameperiodico
      Category = 0
    end
    object dxBarButton285: TdxBarButton
      Action = acttpatestadomedico
      Category = 0
    end
    object dxBarButton326: TdxBarButton
      Action = acttpfuncionariocurso
      Category = 0
    end
    object dxBarButton327: TdxBarButton
      Action = acttptreinamento
      Category = 0
    end
    object dxBarButton328: TdxBarButton
      Action = acttreinamento
      Category = 0
    end
    object dxBarButton37: TdxBarButton
      Action = actimportacaoDOVerleih
      Category = 0
    end
    object dxBarSubItem24: TdxBarSubItem
      Action = actImportacaoSenior
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton105'
        end
        item
          Visible = True
          ItemName = 'dxBarButton336'
        end
        item
          Visible = True
          ItemName = 'dxBarButton276'
        end
        item
          Visible = True
          ItemName = 'dxBarButton329'
        end
        item
          Visible = True
          ItemName = 'dxBarButton68'
        end
        item
          Visible = True
          ItemName = 'dxBarButton330'
        end
        item
          Visible = True
          ItemName = 'dxBarButton112'
        end
        item
          Visible = True
          ItemName = 'dxBarButton274'
        end
        item
          Visible = True
          ItemName = 'dxBarButton275'
        end>
    end
    object dxBarButton105: TdxBarButton
      Action = actImportacaoSeniorCliente
      Category = 0
    end
    object dxBarButton112: TdxBarButton
      Action = actImportacaoSeniorFornecedor
      Category = 0
    end
    object dxBarButton274: TdxBarButton
      Action = actImportacaoSeniorProduto
      Category = 0
    end
    object dxBarButton275: TdxBarButton
      Action = actImportacaoSeniorTodos
      Category = 0
    end
    object dxBarButton68: TdxBarButton
      Action = actImportacaoSeniorDuplicata
      Category = 0
    end
    object dxBarButton276: TdxBarButton
      Action = actImportacaoSeniorAutpagto
      Category = 0
    end
    object dxBarButton277: TdxBarButton
      Action = actversao
      Category = 0
    end
    object dxBarButton329: TdxBarButton
      Action = actimportacaoseniorbaixaautpagto
      Category = 0
    end
    object dxBarButton330: TdxBarButton
      Action = actimportacaoseniorbaixaduplicata
      Category = 0
    end
    object dxBarSubItem25: TdxBarSubItem
      Action = actimportacaoGesoft
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton333'
        end
        item
          Visible = True
          ItemName = 'dxBarButton335'
        end
        item
          Visible = True
          ItemName = 'dxBarButton332'
        end
        item
          Visible = True
          ItemName = 'dxBarButton334'
        end
        item
          Visible = True
          ItemName = 'dxBarButton331'
        end>
    end
    object dxBarButton331: TdxBarButton
      Action = actimportacaogesoftProduto
      Category = 0
    end
    object dxBarButton332: TdxBarButton
      Action = actimportacaogesoftfornecedor
      Category = 0
    end
    object dxBarButton333: TdxBarButton
      Action = actimportacaogesoftcliente
      Category = 0
    end
    object dxBarButton334: TdxBarButton
      Action = actimportacaogesoftsaida
      Category = 0
    end
    object dxBarButton335: TdxBarButton
      Action = actImportacaoGesoftEntrada
      Category = 0
    end
    object dxBarButton336: TdxBarButton
      Action = actimportacaoseniorEntrada
      Category = 0
    end
  end
  object TdxBarSeparator
    Category = -1
    Visible = ivAlways
  end
  object LAF: TcxLookAndFeelController
    Kind = lfOffice11
    Left = 353
    Top = 160
  end
  object cxLocalizer1: TcxLocalizer
    Left = 381
    Top = 160
  end
  object odc1: TOgDateCode
    AutoCheck = False
    OnChecked = odc1Checked
    OnGetKey = odc1GetKey
    OnGetCode = odc1GetCode
    Left = 297
    Top = 160
  end
  object omk1: TOgMakeKeys
    KeyType = ktMessageDigest
    Left = 325
    Top = 160
  end
  object act1: TActionList
    Images = dtmmain.imgMain
    OnExecute = act1Execute
    Left = 464
    Top = 160
    object actpaciente: TAction
      Caption = 'Paciente'
      OnExecute = actpacienteExecute
    end
    object actprofissao: TAction
      Caption = 'Profiss'#227'o'
      OnExecute = actabrirTabela
    end
  end
  object tmr: TTimer
    Interval = 60000
    OnTimer = tmrTimer
    Left = 260
    Top = 112
  end
  object tic: TTrayIcon
    Left = 411
    Top = 161
  end
end

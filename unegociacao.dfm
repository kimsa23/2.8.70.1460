object frmnegociacao: Tfrmnegociacao
  Left = 679
  Top = 231
  ClientHeight = 604
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl: TPanel
    Left = 0
    Top = 63
    Width = 1042
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
  end
  object pnl1: TPanel
    Left = 0
    Top = 82
    Width = 1042
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 33
      Height = 13
      Caption = '&C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 76
      Top = 3
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object lblcdcliente: TLabel
      Left = 183
      Top = 3
      Width = 40
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      OnDblClick = lblcdclienteDblClick
    end
    object lblrepresentante: TLabel
      Left = 545
      Top = 3
      Width = 70
      Height = 13
      Caption = 'Representante'
      Transparent = True
    end
    object lblNMCLIENTE: TDBText
      Left = 286
      Top = 19
      Width = 216
      Height = 17
      DataField = 'NMCLIENTE'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 76
      Top = 17
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 104
    end
    object edtcodigo: TcxTextEdit
      Left = 8
      Top = 17
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 66
    end
    object edtCDCLIENTE: TcxDBButtonEdit
      Left = 183
      Top = 17
      DataBinding.DataField = 'CDCLIENTE'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtCDCLIENTEPropertiesButtonClick
      Properties.OnEditValueChanged = edtCDCLIENTEPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnKeyDown = edtCDCLIENTEKeyDown
      OnKeyPress = eventokeypress
      Width = 101
    end
    object cbxcdrepresentante: TcxDBLookupComboBox
      Left = 545
      Top = 17
      DataBinding.DataField = 'CDREPRESENTANTE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDREPRESENTANTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMREPRESENTANTE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 180
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 122
    Width = 1042
    Height = 482
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tbstitulo
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 482
    ClientRectRight = 1042
    ClientRectTop = 24
    object tbstitulo: TcxTabSheet
      Caption = 'T'#237'tulos a Negociar'
      ImageIndex = 0
      object Panel2: TPanel
        Left = 0
        Top = 248
        Width = 1042
        Height = 210
        Align = alBottom
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object grdnegociacaosaida: TcxGrid
          Left = 0
          Top = 18
          Width = 1042
          Height = 192
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object grdnegociacaosaidaDBTableView1: TcxGridDBTableView
            OnKeyDown = exportarGradeExcel
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Append.Enabled = False
            Navigator.Buttons.Refresh.Enabled = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Enabled = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Enabled = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellDblClick = grdnegociacaosaidaDBTableView1CellDblClick
            DataController.DataSource = dtsnegociacaosaida
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDUPLICATA'
                Column = grdnegociacaosaidaDBTableView1VLDUPLICATA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLCOMISSAO'
                Column = grdnegociacaosaidaDBTableView1VLCOMISSAO
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object grdnegociacaosaidaDBTableView1NUDUPLICATA: TcxGridDBColumn
              Caption = 'Documento'
              DataBinding.FieldName = 'NUDUPLICATA'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Focusing = False
              Styles.Content = dtmmain.cxStyle1
            end
            object grdnegociacaosaidaDBTableView1VLDUPLICATA: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLDUPLICATA'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            end
            object grdnegociacaosaidaDBTableView1DTVENCIMENTO: TcxGridDBColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'DTVENCIMENTO'
              PropertiesClassName = 'TcxDateEditProperties'
            end
            object grdnegociacaosaidaDBTableView1PRMORADIARIA: TcxGridDBColumn
              Caption = 'Mora Mensal'
              DataBinding.FieldName = 'PRMORADIARIA'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 73
            end
            object grdnegociacaosaidaDBTableView1CDSTDUPLICATA: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'CDSTDUPLICATA'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CDSTDUPLICATA'
              Properties.ListColumns = <
                item
                  FieldName = 'NMSTDUPLICATA'
                end>
              Properties.ListOptions.ShowHeader = False
              Options.Focusing = False
              Width = 98
            end
            object grdnegociacaosaidaDBTableView1CDREPRESENTANTE: TcxGridDBColumn
              Caption = 'Representante'
              DataBinding.FieldName = 'CDREPRESENTANTE'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CDREPRESENTANTE'
              Properties.ListColumns = <
                item
                  FieldName = 'NMREPRESENTANTE'
                end>
              Width = 161
            end
            object grdnegociacaosaidaDBTableView1CDTPCOBRANCA: TcxGridDBColumn
              Caption = 'Tipo Cobran'#231'a'
              DataBinding.FieldName = 'CDTPCOBRANCA'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CDTPCOBRANCA'
              Properties.ListColumns = <
                item
                  FieldName = 'NMTPCOBRANCA'
                end>
              Properties.ListOptions.ShowHeader = False
              Width = 161
            end
            object grdnegociacaosaidaDBTableView1VLCOMISSAO: TcxGridDBColumn
              Caption = 'Comiss'#227'o'
              DataBinding.FieldName = 'VLCOMISSAO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
              Width = 100
            end
            object grdnegociacaosaidaDBTableView1CDDUPLICATA: TcxGridDBColumn
              DataBinding.FieldName = 'CDDUPLICATA'
              Visible = False
            end
          end
          object grdnegociacaosaidaLevel1: TcxGridLevel
            GridView = grdnegociacaosaidaDBTableView1
          end
        end
        object cxLabel2: TcxLabel
          Left = 0
          Top = 0
          Align = alTop
          Caption = 'T'#237'tulos negociados'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1042
        Height = 240
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object pnl2: TPanel
          Left = 0
          Top = 214
          Width = 1042
          Height = 26
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object lbldesconto: TLabel
            Left = 4
            Top = 10
            Width = 46
            Height = 13
            Caption = 'Desconto'
            Transparent = True
          end
          object Label3: TLabel
            Left = 165
            Top = 10
            Width = 49
            Height = 13
            Caption = 'Acr'#233'scimo'
            Transparent = True
          end
          object edtvldesconto: TcxDBCalcEdit
            Left = 56
            Top = 2
            DataBinding.DataField = 'VLDESCONTO'
            DataBinding.DataSource = dts
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 108
          end
          object edtvlacrescimo: TcxDBCalcEdit
            Left = 217
            Top = 2
            DataBinding.DataField = 'VLACRESCIMO'
            DataBinding.DataSource = dts
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 108
          end
        end
        object grdentrada: TcxGrid
          Left = 0
          Top = 0
          Width = 1042
          Height = 214
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbventrada: TcxGridDBTableView
            OnKeyDown = tbventradaKeyDown
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Refresh.Enabled = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Enabled = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Enabled = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellDblClick = tbventradaCellDblClick
            DataController.DataSource = dtsentrada
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLCOMISSAO'
                Column = tbventradaVLCOMISSAO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDUPLICATA'
                Column = tbventradaVLDUPLICATA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLJUROS'
                Column = tbventradaVLJUROS
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbventradaVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object tbventradaNUDUPLICATA: TcxGridDBColumn
              Caption = 'Documento'
              DataBinding.FieldName = 'NUDUPLICATA'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tbventradaNUDUPLICATAPropertiesButtonClick
              Styles.Content = dtmmain.cxStyle1
              Width = 108
            end
            object tbventradaVLDUPLICATA: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLDUPLICATA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
              Width = 100
            end
            object tbventradaDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Focusing = False
            end
            object tbventradaDTPRORROGACAO: TcxGridDBColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'DTPRORROGACAO'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Focusing = False
              Width = 100
            end
            object tbventradaVLJUROS: TcxGridDBColumn
              Caption = 'Juros'
              DataBinding.FieldName = 'VLJUROS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
              Width = 100
            end
            object tbventradaVLTOTAL: TcxGridDBColumn
              Caption = 'Valor Atual'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
              Width = 100
            end
            object tbventradaVLCOMISSAO: TcxGridDBColumn
              Caption = 'Comiss'#227'o'
              DataBinding.FieldName = 'VLCOMISSAO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
              Width = 100
            end
          end
          object grdentradaLevel1: TcxGridLevel
            GridView = tbventrada
          end
        end
      end
      object splcalculo: TcxSplitter
        Left = 0
        Top = 240
        Width = 1042
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = Panel2
        ExplicitWidth = 8
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memdsobservacao: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 0
        Height = 458
        Width = 1042
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 70
    object actNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actNovoExecute
    end
    object actAbrir: TAction
      Caption = 'Abrir'
      Hint = 'Abrir'
      ImageIndex = 1
      ShortCut = 16449
      OnExecute = actAbrirExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      Enabled = False
      Hint = 'Editar'
      ImageIndex = 7
      ShortCut = 16453
      OnExecute = actEditarExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      Enabled = False
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvarExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Imprimir'
      ImageIndex = 3
      ShortCut = 16457
      OnExecute = actImprimirExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      Enabled = False
      Hint = 'Excluir'
      ImageIndex = 5
      ShortCut = 16472
      OnExecute = actExcluirExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelarExecute
    end
    object actPrimeiro: TAction
      Caption = 'Primeiro'
      Hint = 'Primeiro'
      ImageIndex = 8
      ShortCut = 16454
      OnExecute = actPrimeiroExecute
    end
    object actAnterior: TAction
      Caption = 'Anterior'
      Enabled = False
      Hint = 'Anterior'
      ImageIndex = 9
      ShortCut = 16468
      OnExecute = actAnteriorExecute
    end
    object actProximo: TAction
      Caption = 'Pr'#243'ximo'
      Enabled = False
      Hint = 'Pr'#243'ximo'
      ImageIndex = 10
      ShortCut = 16464
      OnExecute = actProximoExecute
    end
    object actUltimo: TAction
      Caption = #218'ltimo'
      Hint = #218'ltimo'
      ImageIndex = 11
      ShortCut = 16469
      OnExecute = actUltimoExecute
    end
    object actprocessar: TAction
      Caption = 'Processar'
      Enabled = False
      Hint = 'Processar'
      ImageIndex = 99
      ShortCut = 16455
      Visible = False
      OnExecute = actprocessarExecute
    end
    object actabrirduplicata: TAction
      Hint = 'duplicata'
      OnExecute = actabrirduplicataExecute
    end
    object actabrirduplicatasaida: TAction
      Hint = 'duplicata'
      OnExecute = actabrirduplicatasaidaExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actdesfazer: TAction
      Caption = 'Desfazer'
      Enabled = False
      ImageIndex = 86
      Visible = False
      OnExecute = actdesfazerExecute
    end
    object actimprimirboleto: TAction
      Caption = 'Boleto'
      OnExecute = actimprimirboletoExecute
    end
    object actimprimirboletodoso: TAction
      Caption = 'Boleto(s) selecionado(s)'
      OnExecute = actimprimirboletodosoExecute
    end
    object actimprimircarne: TAction
      Caption = 'Carne'
      OnExecute = actimprimircarneExecute
    end
    object actabrircliente: TAction
      Hint = 'cliente'
      OnExecute = actabrirclienteExecute
    end
  end
  object bmg1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dtmmain.imlMain
    ImageOptions.LargeImages = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 42
    DockControlHeights = (
      0
      0
      63
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'reinspecao'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 240
      FloatTop = 96
      FloatClientWidth = 62
      FloatClientHeight = 494
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
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
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrManager1Bar1: TdxBar
      Caption = 'menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 235
      FloatTop = 192
      FloatClientWidth = 55
      FloatClientHeight = 21
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrsbtmRegistro'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxbrsbtmRegistro: TdxBarSubItem
      Caption = '&Registro'
      Category = 0
      MergeOrder = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnNovo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnAbrir'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnEditar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnsalvar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtncancelar'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnexcluir'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr1'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnprimeiro'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnanterior'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnproximo'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnultimo'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr3'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
    end
    object dxbrlrgbtnNovo: TdxBarLargeButton
      Action = actNovo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnEditar: TdxBarLargeButton
      Action = actEditar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnAbrir: TdxBarLargeButton
      Action = actAbrir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnsalvar: TdxBarLargeButton
      Action = actSalvar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtncancelar: TdxBarLargeButton
      Action = actCancelar
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnexcluir: TdxBarLargeButton
      Action = actExcluir
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnprimeiro: TdxBarLargeButton
      Action = actPrimeiro
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnanterior: TdxBarLargeButton
      Action = actAnterior
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnproximo: TdxBarLargeButton
      Action = actProximo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrlrgbtnultimo: TdxBarLargeButton
      Action = actUltimo
      Category = 0
      AutoGrayScale = False
    end
    object dxbrsprtr2: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pum
      AutoGrayScale = False
    end
    object dxbrsprtr3: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actprocessar
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actdesfazer
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actimprimirboleto
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actimprimirboletodoso
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actimprimircarne
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT N.*,C.NMCLIENTE'#13#10'FROM NEGOCIACAO N'#13#10'LEFT JOIN CLIENTE C O' +
      'N C.CDEMPRESA=N.CDEMPRESA AND C.CDCLIENTE=N.CDCLIENTE'#13#10'WHERE N.C' +
      'DEMPRESA=:CDEMPRESA AND N.CDNEGOCIACAO=:CDNEGOCIACAO'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDNEGOCIACAO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 98
    object sdsCDNEGOCIACAO: TIntegerField
      FieldName = 'CDNEGOCIACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsCDSTNEGOCIACAO: TIntegerField
      FieldName = 'CDSTNEGOCIACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLENTRADA: TFMTBCDField
      FieldName = 'VLENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLSAIDA: TFMTBCDField
      FieldName = 'VLSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 126
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    ReadOnly = True
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 155
    object cdsCDNEGOCIACAO: TIntegerField
      FieldName = 'CDNEGOCIACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVLENTRADA: TFMTBCDField
      FieldName = 'VLENTRADA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLSAIDA: TFMTBCDField
      FieldName = 'VLSAIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsCDSTNEGOCIACAO: TIntegerField
      FieldName = 'CDSTNEGOCIACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsnegociacaosaida: TDataSetField
      FieldName = 'sdsnegociacaosaida'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsentrada: TDataSetField
      FieldName = 'sdsentrada'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDCLIENTEValidate
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 183
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 215
    Top = 220
  end
  object sdsnegociacaosaida: TSQLDataSet
    CommandText = 
      'SELECT N.*,D.CDSTDUPLICATA '#13#10'FROM NEGOCIACAOSAIDA N '#13#10'LEFT JOIN ' +
      'DUPLICATA D ON D.CDDUPLICATA=N.CDDUPLICATA AND N.CDEMPRESA=D.CDE' +
      'MPRESA'#13#10'WHERE N.CDEMPRESA=:CDEMPRESA AND N.CDNEGOCIACAO=:CDNEGOC' +
      'IACAO'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDNEGOCIACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 401
    Top = 421
    object sdsnegociacaosaidaCDNEGOCIACAOSAIDA: TIntegerField
      FieldName = 'CDNEGOCIACAOSAIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsnegociacaosaidaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsnegociacaosaidaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaosaidaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaosaidaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaosaidaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaosaidaCDNEGOCIACAO: TIntegerField
      FieldName = 'CDNEGOCIACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaosaidaVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsnegociacaosaidaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaosaidaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaosaidaNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsnegociacaosaidaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaosaidaPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaosaidaCDSTDUPLICATA: TIntegerField
      FieldName = 'CDSTDUPLICATA'
      ProviderFlags = []
    end
    object sdsnegociacaosaidaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsnegociacaosaidaCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsnegociacaosaidaCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsnegociacaosaidaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsnegociacaosaida: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsnegociacaosaida
    Params = <>
    ReadOnly = True
    BeforePost = cdsnegociacaosaidaBeforePost
    OnNewRecord = cdsnegociacaosaidaNewRecord
    Left = 500
    Top = 421
    object cdsnegociacaosaidaCDNEGOCIACAOSAIDA: TIntegerField
      FieldName = 'CDNEGOCIACAOSAIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsnegociacaosaidaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsnegociacaosaidaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaosaidaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaosaidaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaosaidaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaosaidaCDNEGOCIACAO: TIntegerField
      FieldName = 'CDNEGOCIACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaosaidaVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsnegociacaosaidaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaosaidaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaosaidaNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsnegociacaosaidaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaosaidaPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaosaidaCDSTDUPLICATA: TIntegerField
      FieldName = 'CDSTDUPLICATA'
      ProviderFlags = []
    end
    object cdsnegociacaosaidaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsnegociacaosaidaCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsnegociacaosaidaCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsnegociacaosaidaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsnegociacaosaida: TDataSource
    DataSet = cdsnegociacaosaida
    Left = 597
    Top = 421
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 57
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      TextColor = clBlue
    end
  end
  object pum: TdxBarPopupMenu
    BarManager = bmg1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = True
    Left = 768
    Top = 94
  end
  object sdsentrada: TSQLDataSet
    CommandText = 
      'SELECT N.*'#13#10',D.DTEMISSAO'#13#10',D.DTPRORROGACAO '#13#10'FROM NEGOCIACAOENTR' +
      'ADA N '#13#10'LEFT JOIN DUPLICATA D ON D.CDDUPLICATA=N.CDDUPLICATA AND' +
      ' D.CDEMPRESA=N.CDEMPRESA'#13#10'WHERE N.CDEMPRESA=:CDEMPRESA AND N.CDN' +
      'EGOCIACAO=:CDNEGOCIACAO'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CDNEGOCIACAO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 384
    Top = 318
    object sdsentradaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsentradaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaCDNEGOCIACAO: TIntegerField
      FieldName = 'CDNEGOCIACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object sdsentradaVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object sdsentradaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsentradaNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsentradaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object sdsentradaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object sdsentradaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsentradaDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = []
    end
    object sdsentradaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsentrada: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsentrada
    Params = <>
    BeforePost = cdsentradaBeforePost
    OnNewRecord = cdsentradaNewRecord
    Left = 464
    Top = 318
    object cdsentradaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsentradaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsentradaCDDUPLICATAValidate
    end
    object cdsentradaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaCDNEGOCIACAO: TIntegerField
      FieldName = 'CDNEGOCIACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsentradaVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsentradaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsentradaNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsentradaNUDUPLICATAValidate
      Size = 15
    end
    object cdsentradaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsentradaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsentradaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsentradaDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = []
    end
    object cdsentradaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsentrada: TDataSource
    DataSet = cdsentrada
    Left = 536
    Top = 320
  end
end

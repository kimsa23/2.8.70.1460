object frmAutPagto: TfrmAutPagto
  Left = 411
  Top = 139
  ClientHeight = 661
  ClientWidth = 1159
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
  object Panel1: TPanel
    Left = 0
    Top = 59
    Width = 1159
    Height = 602
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl2: TBevel
      Left = 0
      Top = 65
      Width = 1159
      Height = 194
      Align = alTop
    end
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1159
      Height = 42
      Align = alTop
      ExplicitWidth = 1119
    end
    object Label1: TLabel
      Left = 6
      Top = 26
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label3: TLabel
      Left = 332
      Top = 26
      Width = 70
      Height = 13
      Caption = 'Dt Vencimento'
      Transparent = True
    end
    object Label6: TLabel
      Left = 454
      Top = 26
      Width = 72
      Height = 13
      Caption = 'Dt Prorroga'#231#227'o'
      Transparent = True
    end
    object Label4: TLabel
      Left = 90
      Top = 26
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object Label11: TLabel
      Left = 575
      Top = 26
      Width = 85
      Height = 13
      Caption = 'Tipo de Cobran'#231'a'
      Transparent = True
    end
    object lbldtentrada: TLabel
      Left = 211
      Top = 26
      Width = 51
      Height = 13
      Caption = 'Dt Entrada'
      Transparent = True
    end
    object cbxcdtpcobranca: TcxDBLookupComboBox
      Left = 576
      Top = 40
      DataBinding.DataField = 'CDTPCOBRANCA'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPCOBRANCA'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPCOBRANCA'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = cbxcdtpcobrancaEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 193
    end
    object edtDTPRORROGACAO: TcxDBDateEdit
      Left = 454
      Top = 40
      DataBinding.DataField = 'DTPRORROGACAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtDTVENCIMENTO: TcxDBDateEdit
      Left = 332
      Top = 40
      DataBinding.DataField = 'DTVENCIMENTO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object edtDTEMISSAO: TcxDBDateEdit
      Left = 90
      Top = 40
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
      Width = 121
    end
    object pgc: TcxPageControl
      Left = 0
      Top = 357
      Width = 1159
      Height = 245
      Align = alClient
      TabOrder = 13
      Properties.ActivePage = tbsbaixa
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dtmmain.imlMain
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 245
      ClientRectRight = 1159
      ClientRectTop = 25
      object tbsbaixa: TcxTabSheet
        Caption = 'Baixa'
        ImageIndex = 22
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object tlbbaixa: TToolBar
          Left = 0
          Top = 0
          Width = 1159
          Height = 26
          AutoSize = True
          Caption = 'tlbbaixa'
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          Images = dtmmain.imlMain
          TabOrder = 0
          Transparent = True
          Visible = False
          object ToolButton13: TToolButton
            Left = 0
            Top = 0
            Action = actexcluirbaixa
          end
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 26
          Width = 1159
          Height = 194
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object tbvbaixa: TcxGridDBBandedTableView
            OnKeyDown = tbvbaixaKeyDown
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Insert.Enabled = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Enabled = False
            Navigator.Buttons.Delete.Enabled = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Enabled = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Enabled = False
            Navigator.Buttons.Cancel.Visible = False
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
            OnCellDblClick = tbvbaixaCellDblClick
            DataController.DataSource = dtsbaixa
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLABATIMENTO'
                Column = tbvbaixaVLABATIMENTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLBAIXA'
                Column = tbvbaixaVLBAIXA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDESCONTO'
                Column = tbvbaixaVLDESCONTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDEVOLUCAO'
                Column = tbvbaixaVLDEVOLUCAO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLJURO'
                Column = tbvbaixaVLJURO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLLIQUIDO'
                Column = tbvbaixaVLLIQUIDO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLMULTA'
                Column = tbvbaixaVLMULTA
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Baixa'
              end
              item
                Caption = 'Adiantamento Fornecedor'
                Width = 148
              end
              item
                Caption = 'Valores'
              end>
            object tbvbaixaCDMOVBANCARIO: TcxGridDBBandedColumn
              Caption = 'Mov Banc'#225'rio'
              DataBinding.FieldName = 'CDMOVBANCARIO'
              Styles.Content = dtmmain.cxStyle1
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tbvbaixaCDADNTFORNECEDOR: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDADNTFORNECEDOR'
              Styles.Content = dtmmain.cxStyle1
              Width = 74
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tbvbaixaDTBAIXA: TcxGridDBBandedColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DTBAIXA'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tbvbaixaNMMOVIMENTACAO: TcxGridDBBandedColumn
              Caption = 'Movimenta'#231#227'o'
              DataBinding.FieldName = 'NMMOVIMENTACAO'
              Width = 84
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object tbvbaixaVLMULTA: TcxGridDBBandedColumn
              Caption = 'Multa'
              DataBinding.FieldName = 'VLMULTA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tbvbaixaVLJURO: TcxGridDBBandedColumn
              Caption = 'Juro'
              DataBinding.FieldName = 'VLJURO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tbvbaixaVLBAIXA: TcxGridDBBandedColumn
              Caption = 'Baixa'
              DataBinding.FieldName = 'VLBAIXA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object tbvbaixaVLDESCONTO: TcxGridDBBandedColumn
              Caption = 'Desconto'
              DataBinding.FieldName = 'VLDESCONTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object tbvbaixaVLABATIMENTO: TcxGridDBBandedColumn
              Caption = 'Abatimento'
              DataBinding.FieldName = 'VLABATIMENTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object tbvbaixaVLDEVOLUCAO: TcxGridDBBandedColumn
              Caption = 'Devolu'#231#227'o'
              DataBinding.FieldName = 'VLDEVOLUCAO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object tbvbaixaVLLIQUIDO: TcxGridDBBandedColumn
              Caption = 'L'#237'quido'
              DataBinding.FieldName = 'VLLIQUIDO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object tbvbaixaDSHISTORICO: TcxGridDBBandedColumn
              Caption = 'Hist'#243'rico'
              DataBinding.FieldName = 'DSHISTORICO'
              Width = 146
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object tbvbaixaNMCONTA: TcxGridDBBandedColumn
              Caption = 'Conta'
              DataBinding.FieldName = 'NMCONTA'
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object tbvbaixaDTEMISSAO: TcxGridDBBandedColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = tbvbaixa
          end
        end
      end
      object tbsencontrocontas: TcxTabSheet
        Caption = 'Encontro de Contas'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1159
          Height = 220
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            OnKeyDown = exportarGradeExcel
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Insert.Enabled = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Enabled = False
            Navigator.Buttons.Delete.Enabled = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Enabled = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Enabled = False
            Navigator.Buttons.Cancel.Visible = False
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
            DataController.DataSource = dtsencontrocontas
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLABATIMENTO'
                Column = cxGrid1DBBandedTableView1VLABATIMENTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLBAIXA'
                Column = cxGrid1DBBandedTableView1VLBAIXA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDESCONTO'
                Column = cxGrid1DBBandedTableView1VLDESCONTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDEVOLUCAO'
                Column = cxGrid1DBBandedTableView1VLDEVOLUCAO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDUPLICATA'
                Column = cxGrid1DBBandedTableView1VLDUPLICATA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLJURO'
                Column = cxGrid1DBBandedTableView1VLJURO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLMULTA'
                Column = cxGrid1DBBandedTableView1VLMULTA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLSALDODUPLICATA'
                Column = cxGrid1DBBandedTableView1VLSALDODUPLICATA
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Contas a Receber'
                Width = 324
              end
              item
                Caption = 'Cliente'
                Width = 256
              end
              item
                Caption = 'Fornecedor'
                Width = 256
              end
              item
                Caption = 'Valores'
              end>
            object cxGrid1DBBandedTableView1NUDUPLICATA: TcxGridDBBandedColumn
              Caption = 'Documento'
              DataBinding.FieldName = 'NUDUPLICATA'
              Width = 126
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NUENCONTROCONTAS: TcxGridDBBandedColumn
              Caption = 'N'#186' Encontro'
              DataBinding.FieldName = 'NUENCONTROCONTAS'
              Width = 121
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NMSTAPROVACAO: TcxGridDBBandedColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTAPROVACAO'
              Width = 122
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DTVENCIMENTO: TcxGridDBBandedColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'DTVENCIMENTO'
              Width = 145
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CDCLIENTE: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDCLIENTE'
              Width = 68
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NMCLIENTE: TcxGridDBBandedColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'NMCLIENTE'
              Width = 210
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CDFORNECEDOR: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDFORNECEDOR'
              Width = 68
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NMFORNECEDOR: TcxGridDBBandedColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'NMFORNECEDOR'
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1VLDUPLICATA: TcxGridDBBandedColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLDUPLICATA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1VLSALDODUPLICATA: TcxGridDBBandedColumn
              Caption = 'Saldo'
              DataBinding.FieldName = 'VLSALDODUPLICATA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1VLBAIXA: TcxGridDBBandedColumn
              Caption = 'Baixa'
              DataBinding.FieldName = 'VLBAIXA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1VLMULTA: TcxGridDBBandedColumn
              Caption = 'Multa'
              DataBinding.FieldName = 'VLMULTA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 3
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1VLJURO: TcxGridDBBandedColumn
              Caption = 'Juros'
              DataBinding.FieldName = 'VLJURO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 3
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1VLDESCONTO: TcxGridDBBandedColumn
              Caption = 'Desconto'
              DataBinding.FieldName = 'VLDESCONTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 3
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1VLABATIMENTO: TcxGridDBBandedColumn
              Caption = 'Abatimento'
              DataBinding.FieldName = 'VLABATIMENTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 3
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1VLDEVOLUCAO: TcxGridDBBandedColumn
              Caption = 'Devolu'#231#227'o'
              DataBinding.FieldName = 'VLDEVOLUCAO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 3
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
      end
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object gbxvalores: TcxGroupBox
      Left = 391
      Top = 69
      Caption = 'Valores'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Height = 48
      Width = 379
      object Label16: TLabel
        Left = 8
        Top = 11
        Width = 35
        Height = 13
        Caption = 'Original'
        Transparent = True
      end
      object Label17: TLabel
        Left = 130
        Top = 11
        Width = 61
        Height = 13
        Caption = 'Mora Mensal'
        Transparent = True
      end
      object Label18: TLabel
        Left = 344
        Top = 11
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo'
        Transparent = True
      end
      object edtvlautpagto: TcxDBCalcEdit
        Left = 8
        Top = 25
        DataBinding.DataField = 'VLAUTPAGTO'
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
        Width = 121
      end
      object edtprmoradiaria: TcxDBCalcEdit
        Left = 130
        Top = 25
        DataBinding.DataField = 'PRMORADIARIA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 121
      end
      object txt11: TcxDBLabel
        Left = 252
        Top = 25
        DataBinding.DataField = 'VLSALDO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 121
      end
    end
    object gbxdeducoes: TcxGroupBox
      Left = 391
      Top = 117
      Caption = 'Dedu'#231#245'es'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      Height = 49
      Width = 379
      object Label28: TLabel
        Left = 77
        Top = 14
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Devolu'#231#227'o'
        Transparent = True
      end
      object Label29: TLabel
        Left = 198
        Top = 14
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'Abatimento'
        Transparent = True
      end
      object Label30: TLabel
        Left = 327
        Top = 14
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Desconto'
        Transparent = True
      end
      object txtvldesconto: TcxDBLabel
        Left = 252
        Top = 28
        DataBinding.DataField = 'VLDESCONTO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 121
      end
      object txtvlabatimento: TcxDBLabel
        Left = 130
        Top = 28
        DataBinding.DataField = 'VLABATIMENTO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 121
      end
      object txtvldevolucao: TcxDBLabel
        Left = 8
        Top = 28
        DataBinding.DataField = 'VLDEVOLUCAO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 121
      end
    end
    object gbxacrescimos: TcxGroupBox
      Left = 391
      Top = 166
      Caption = 'Acr'#233'scimos'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Height = 49
      Width = 379
      object Label5: TLabel
        Left = 103
        Top = 14
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Multa'
        Transparent = True
      end
      object Label27: TLabel
        Left = 353
        Top = 14
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'Juro'
        Transparent = True
      end
      object Label10: TLabel
        Left = 214
        Top = 14
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = '% Multa'
        Transparent = True
      end
      object txtvljuros: TcxDBLabel
        Left = 252
        Top = 28
        DataBinding.DataField = 'VLJUROS'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 121
      end
      object txtprmulta: TcxDBLabel
        Left = 130
        Top = 28
        DataBinding.DataField = 'PRMULTA'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 121
      end
      object txtvlmulta: TcxDBLabel
        Left = 8
        Top = 28
        DataBinding.DataField = 'VLMULTA'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 121
      end
    end
    object gbxtotal: TcxGroupBox
      Left = 391
      Top = 215
      Caption = 'Total'
      TabOrder = 11
      Height = 39
      Width = 379
      object Label32: TLabel
        Left = 10
        Top = 15
        Width = 26
        Height = 13
        Caption = 'Baixa'
        Transparent = True
      end
      object Label33: TLabel
        Left = 163
        Top = 15
        Width = 82
        Height = 13
        Caption = 'Tot. Pagamento.:'
        Transparent = True
      end
      object txtvlbaixa: TcxDBLabel
        Left = 38
        Top = 15
        DataBinding.DataField = 'VLBAIXA'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 19
        Width = 91
      end
      object txtvlrecebido: TcxDBLabel
        Left = 252
        Top = 15
        DataBinding.DataField = 'VLRECEBIDO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 121
      end
    end
    object gbxbaixa: TcxGroupBox
      Left = 6
      Top = 182
      Caption = 'Baixa'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Height = 33
      Width = 382
      object Label14: TLabel
        Left = 4
        Top = 14
        Width = 23
        Height = 13
        Caption = 'Data'
        Transparent = True
      end
      object Label9: TLabel
        Left = 130
        Top = 14
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
        Transparent = True
      end
      object txtDTBAIXA: TcxDBLabel
        Left = 31
        Top = 13
        DataBinding.DataField = 'DTBAIXA'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 18
        Width = 96
      end
      object txtusuariobaixa: TcxDBLabel
        Left = 169
        Top = 12
        DataBinding.DataField = 'NMUSUARIO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 208
      end
    end
    object gbxdados: TcxGroupBox
      Left = 6
      Top = 69
      Caption = 'Dados'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Height = 113
      Width = 382
      object Label24: TLabel
        Left = 2
        Top = 54
        Width = 41
        Height = 13
        Caption = 'Hist'#243'rico'
        Transparent = True
      end
      object lblcntcusto: TLabel
        Left = 2
        Top = 91
        Width = 46
        Height = 13
        Caption = 'Cnt Custo'
        Transparent = True
      end
      object Label13: TLabel
        Left = 2
        Top = 33
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
        Transparent = True
      end
      object Label7: TLabel
        Left = 2
        Top = 12
        Width = 36
        Height = 13
        Caption = 'Compra'
        Transparent = True
      end
      object lblplconta: TLabel
        Left = 2
        Top = 70
        Width = 45
        Height = 13
        Caption = 'Pl Contas'
        Transparent = True
      end
      object txtnmfornecedor: TDBText
        Left = 172
        Top = 29
        Width = 207
        Height = 17
        DataField = 'NMFORNECEDOR'
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
        OnDblClick = txtnmfornecedorDblClick
      end
      object txtnuentrada: TDBText
        Left = 58
        Top = 10
        Width = 108
        Height = 17
        DataField = 'NUENTRADA'
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
        OnDblClick = txtnuentradaDblClick
      end
      object txtnuautpagto: TDBText
        Left = 230
        Top = 10
        Width = 108
        Height = 17
        DataField = 'NUAUTPAGTO'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
        OnDblClick = txtnuentradaDblClick
      end
      object lblnuautpagto: TLabel
        Left = 174
        Top = 12
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        Transparent = True
      end
      object edtdshistorico: TcxDBTextEdit
        Left = 58
        Top = 46
        DataBinding.DataField = 'DSHISTORICO'
        DataBinding.DataSource = dts
        Properties.CharCase = ecUpperCase
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = nextcontrol
        Width = 321
      end
      object edtcdfornecedor: TcxDBButtonEdit
        Left = 58
        Top = 25
        DataBinding.DataField = 'CDFORNECEDOR'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdfornecedorPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdfornecedorKeyDown
        OnKeyPress = eventokeypress
        Width = 112
      end
      object edtnuplconta: TcxDBButtonEdit
        Left = 58
        Top = 67
        DataBinding.DataField = 'NUPLCONTA'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtnuplcontaPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtnuplcontaKeyDown
        Width = 112
      end
      object txtnmplconta: TcxDBLabel
        Left = 169
        Top = 69
        DataBinding.DataField = 'NMPLCONTA'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 163
      end
      object edtnucntcusto: TcxDBButtonEdit
        Left = 58
        Top = 87
        DataBinding.DataField = 'NUCNTCUSTO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtnucntcustoPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtnucntcustoKeyDown
        Width = 112
      end
      object txtnmcntcusto: TcxDBLabel
        Left = 168
        Top = 88
        DataBinding.DataField = 'NMCNTCUSTO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 163
      end
      object ckbBORATEIOPLCONTA: TcxDBCheckBox
        Left = 327
        Top = 67
        Caption = 'Rateio'
        DataBinding.DataField = 'BORATEIOPLCONTA'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
      end
      object ckbborateiocntcusto: TcxDBCheckBox
        Left = 327
        Top = 87
        Caption = 'Rateio'
        DataBinding.DataField = 'BORATEIOCNTCUSTO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
      end
    end
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 40
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCODIGOEnter
      OnKeyDown = edtCODIGOKeyDown
      OnKeyPress = edtCODIGOKeyPress
      Width = 83
    end
    object gbxdsobservacao: TcxGroupBox
      Left = 0
      Top = 259
      Align = alTop
      Caption = 'Observa'#231#227'o'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 12
      Height = 98
      Width = 1159
      object memdsobservacao: TcxDBMemo
        Left = 2
        Top = 18
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        Properties.ScrollBars = ssBoth
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Height = 78
        Width = 1155
      end
    end
    object edtdtentrada: TcxDBDateEdit
      Left = 211
      Top = 40
      DataBinding.DataField = 'DTENTRADA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 121
    end
    object gbxaprovacao: TcxGroupBox
      Left = 6
      Top = 215
      Caption = 'Aprova'#231#227'o'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 15
      Height = 39
      Width = 382
      object lbl1: TLabel
        Left = 4
        Top = 14
        Width = 23
        Height = 13
        Caption = 'Data'
        Transparent = True
      end
      object lbl2: TLabel
        Left = 130
        Top = 14
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
        Transparent = True
      end
      object txtTSAPROVACAO: TcxDBLabel
        Left = 31
        Top = 13
        DataBinding.DataField = 'TSAPROVACAO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 18
        Width = 96
      end
      object txtNMUSUARIOAPROVACAO: TcxDBLabel
        Left = 169
        Top = 12
        DataBinding.DataField = 'NMUSUARIOAPROVACAO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 208
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 988
    Top = 180
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
    object actexcluirbaixa: TAction
      Caption = 'Excluir'
      Hint = 'Excluir'
      ImageIndex = 5
      OnExecute = actexcluirbaixaExecute
    end
    object actencontrocontas: TAction
      Caption = 'Encontro Contas'
      Enabled = False
      Hint = 'Encontro de Contas'
      ImageIndex = 21
      Visible = False
      OnExecute = actencontrocontasExecute
    end
    object actbaixa: TAction
      Caption = 'Baixar'
      Enabled = False
      Hint = 'Baixar Documento'
      ImageIndex = 22
      ShortCut = 16450
      Visible = False
      OnExecute = actbaixaExecute
    end
    object actAbrirFornecedor: TAction
      Caption = 'Abrir Fornecedor'
      Hint = 'fornecedor'
      ImageIndex = 36
      OnExecute = actAbrirFornecedorExecute
    end
    object actAbrirEntrada: TAction
      Caption = 'Abrir Entrada'
      Hint = 'entrada'
      ImageIndex = 27
      OnExecute = actAbrirEntradaExecute
    end
    object actAbrirMovBancario: TAction
      Caption = 'Abrir Movimento Banc'#225'rio'
      Hint = 'movbancario'
      ImageIndex = 18
      OnExecute = actAbrirMovBancarioExecute
    end
    object actimprimirmatricial: TAction
      Caption = 'Matricial'
      Hint = 'Imprimir Matricial'
      OnExecute = actimprimirmatricialExecute
    end
    object actimprimirrecibo: TAction
      Caption = '542 - Recibo'
      Enabled = False
      Hint = 'Recibo'
      OnExecute = actimprimirreciboExecute
    end
    object actAbrirCliente: TAction
      Caption = 'Abrir Cliente'
      Hint = 'Cliente'
      ImageIndex = 35
      OnExecute = actAbrirClienteExecute
    end
    object actAbrirDuplicata: TAction
      Caption = 'Abrir Contas a Receber'
      Hint = 'Duplicata'
      ImageIndex = 32
      OnExecute = actAbrirDuplicataExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actparcelamento: TAction
      Caption = 'Parcelamento'
      Hint = 'Parcelamento '
      ImageIndex = 144
      OnExecute = actparcelamentoExecute
    end
    object actajustarbaixa: TAction
      Caption = 'Ajustar Baixa'
      Enabled = False
      Visible = False
      OnExecute = actajustarbaixaExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actimprimirautpagto: TAction
      Caption = '500 - Autoriza'#231#227'o Pagamento'
      OnExecute = actimprimirautpagtoExecute
    end
    object actabriradntfornecedor: TAction
      Hint = 'adntfornecedor'
      OnExecute = actabriradntfornecedorExecute
    end
    object actaprovar: TAction
      Caption = 'Aprovar Pagamento'
      Enabled = False
      ImageIndex = 137
      ShortCut = 8308
      Visible = False
      OnExecute = actaprovarExecute
    end
    object actdesaprovar: TAction
      Caption = 'Desaprovar Pagamento'
      Enabled = False
      ImageIndex = 111
      ShortCut = 8309
      Visible = False
      OnExecute = actdesaprovarExecute
    end
    object actvisualizarhaprovacaoautpagto: TAction
      Caption = 'Visualizar Aprova'#231#227'o Pagamento'
      OnExecute = actvisualizarhaprovacaoautpagtoExecute
    end
  end
  object pumbaixa: TPopupMenu
    Images = dtmmain.imlMain
    Left = 832
    Top = 236
    object Abrir2: TMenuItem
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
    end
    object Excluir2: TMenuItem
      Action = actexcluirbaixa
    end
  end
  object pumEncontroContas: TPopupMenu
    Left = 860
    Top = 236
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
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
    Left = 776
    Top = 236
    DockControlHeights = (
      0
      0
      59
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'autpagto'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 392
      FloatTop = 299
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
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'btnopcoes'
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
      BorderStyle = bbsNone
      Caption = 'menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 27
      FloatTop = 131
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
          ItemName = 'dxbrsprtr3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbrsprtr2'
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
    object dxBarButton2: TdxBarButton
      Action = actencontrocontas
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actbaixa
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actparcelamento
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actimprimirmatricial
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actimprimirrecibo
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actbaixa
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actencontrocontas
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actajustarbaixa
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton9: TdxBarButton
      Action = actimprimirautpagto
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actbaixa
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actaprovar
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actdesaprovar
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = actvisualizarhaprovacaoautpagto
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT A.*,U.NMUSUARIO,AP.NMUSUARIO NMUSUARIOAPROVACAO,NMPLCONTA' +
      ',NUENTRADA,F.NMFORNECEDOR,C.NMCNTCUSTO'#13#10'FROM AUTPAGTO A '#13#10'LEFT J' +
      'OIN PLCONTA P ON P.CDPLCONTA=A.CDPLCONTA AND P.CDEMPRESA=A.CDEMP' +
      'RESA'#13#10'LEFT JOIN CNTCUSTO C ON C.CDCNTCUSTO=A.CDCNTCUSTO AND C.CD' +
      'EMPRESA=A.CDEMPRESA'#13#10'LEFT JOIN ENTRADA E ON E.CDENTRADA=A.CDENTR' +
      'ADA AND E.CDEMPRESA=A.CDEMPRESA'#13#10'LEFT JOIN USUARIO U ON U.CDUSUA' +
      'RIO=A.CDUSUARIOBAIXA '#13#10'LEFT JOIN USUARIO AP ON AP.CDUSUARIO=A.CD' +
      'USUARIOAPROVACAO'#13#10'LEFT JOIN FORNECEDOR F ON F.CDFORNECEDOR=A.CDF' +
      'ORNECEDOR AND F.CDEMPRESA=A.CDEMPRESA'#13#10'WHERE A.CDEMPRESA=:CDEMPR' +
      'ESA AND A.CDAUTPAGTO=:CDAUTPAGTO'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDAUTPAGTO'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 776
    Top = 136
    object sdsCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSTAUTPAGTO: TIntegerField
      FieldName = 'CDSTAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUAUTPAGTO: TStringField
      FieldName = 'NUAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLAUTPAGTO: TFMTBCDField
      FieldName = 'VLAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdsDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPREVISTO: TFMTBCDField
      FieldName = 'VLPREVISTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = []
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
    object sdsCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object sdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDUSUARIOAPROVACAO: TIntegerField
      FieldName = 'CDUSUARIOAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSAPROVACAO: TSQLTimeStampField
      FieldName = 'TSAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMUSUARIOAPROVACAO: TStringField
      FieldName = 'NMUSUARIOAPROVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsCDCOMPUTADORAPROVACAO: TIntegerField
      FieldName = 'CDCOMPUTADORAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBORATEIOCNTCUSTO: TStringField
      FieldName = 'BORATEIOCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBORATEIOPLCONTA: TStringField
      FieldName = 'BORATEIOPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps]
    UpdateMode = upWhereKeyOnly
    Left = 804
    Top = 136
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 832
    Top = 136
    object cdsCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSTAUTPAGTO: TIntegerField
      FieldName = 'CDSTAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDENTRADA: TIntegerField
      FieldName = 'CDENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUAUTPAGTO: TStringField
      FieldName = 'NUAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsDTVENCIMENTOValidate
    end
    object cdsDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLAUTPAGTO: TFMTBCDField
      FieldName = 'VLAUTPAGTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsVLAUTPAGTOValidate
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLPREVISTO: TFMTBCDField
      FieldName = 'VLPREVISTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUPLCONTAValidate
      Size = 100
    end
    object cdsDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNUENTRADA: TIntegerField
      FieldName = 'NUENTRADA'
      ProviderFlags = []
    end
    object cdssdsencontrocontas: TDataSetField
      FieldName = 'sdsencontrocontas'
      ProviderFlags = []
    end
    object cdssdsbaixa: TDataSetField
      FieldName = 'sdsbaixa'
      ProviderFlags = []
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
    object cdsCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object cdsNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDUSUARIOAPROVACAO: TIntegerField
      FieldName = 'CDUSUARIOAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSAPROVACAO: TSQLTimeStampField
      FieldName = 'TSAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMUSUARIOAPROVACAO: TStringField
      FieldName = 'NMUSUARIOAPROVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsCDCOMPUTADORAPROVACAO: TIntegerField
      FieldName = 'CDCOMPUTADORAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUCNTCUSTOValidate
      Size = 100
    end
    object cdsNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFORNECEDORValidate
    end
    object cdsCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBORATEIOCNTCUSTO: TStringField
      FieldName = 'BORATEIOCNTCUSTO'
      Size = 1
    end
    object cdsBORATEIOPLCONTA: TStringField
      FieldName = 'BORATEIOPLCONTA'
      Size = 1
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 860
    Top = 136
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 888
    Top = 136
  end
  object sdsbaixa: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT B.*'#13#10',F.DTEMISSAO'#13#10',T.NMTPBAIXA'#13#10',MV.NMMOVIMENTACAO'#13#10',C.N' +
      'MCONTA '#13#10',M.DSHISTORICO '#13#10'FROM BAIXA B '#13#10'LEFT JOIN TPBAIXA T ON ' +
      'T.CDTPBAIXA=B.CDTPBAIXA '#13#10'LEFT JOIN ADNTFORNECEDOR F ON F.CDEMPR' +
      'ESA=B.CDEMPRESA AND F.CDADNTFORNECEDOR=B.CDADNTFORNECEDOR'#13#10'LEFT ' +
      'JOIN MOVBANCARIO M ON M.CDEMPRESA=B.CDEMPRESA AND M.CDMOVBANCARI' +
      'O=B.CDMOVBANCARIO'#13#10'LEFT JOIN MOVIMENTACAO MV ON MV.CDEMPRESA=M.C' +
      'DEMPRESA AND MV.CDMOVIMENTACAO=M.CDMOVIMENTACAO'#13#10'LEFT JOIN CONTA' +
      ' C ON C.CDCONTA=M.CDCONTA AND C.CDEMPRESA=M.CDEMPRESA '#13#10'WHERE B.' +
      'CDEMPRESA=:CDEMPRESA AND B.CDAUTPAGTO=:CDAUTPAGTO'
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
        Name = 'CDAUTPAGTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 776
    Top = 164
    object sdsbaixaCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      Required = True
    end
    object sdsbaixaCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
    end
    object sdsbaixaCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
    end
    object sdsbaixaCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
    end
    object sdsbaixaCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
    end
    object sdsbaixaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
    end
    object sdsbaixaCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
    end
    object sdsbaixaCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
    end
    object sdsbaixaNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      Size = 15
    end
    object sdsbaixaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsbaixaVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      Precision = 15
      Size = 2
    end
    object sdsbaixaNMTPBAIXA: TStringField
      FieldName = 'NMTPBAIXA'
      Size = 100
    end
    object sdsbaixaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsbaixaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = []
    end
    object sdsbaixaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsbaixaNMMOVIMENTACAO: TStringField
      FieldName = 'NMMOVIMENTACAO'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaNMCONTA: TStringField
      FieldName = 'NMCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsbaixaCDADNTCLIENTEDESTINO: TIntegerField
      FieldName = 'CDADNTCLIENTEDESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsbaixaVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object cdsbaixa: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsbaixa
    Params = <>
    ReadOnly = True
    AfterScroll = cdsbaixaAfterScroll
    Left = 832
    Top = 164
    object cdsbaixaCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      Required = True
    end
    object cdsbaixaCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
    end
    object cdsbaixaCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
    end
    object cdsbaixaCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
    end
    object cdsbaixaCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
    end
    object cdsbaixaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
    end
    object cdsbaixaCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
    end
    object cdsbaixaCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
    end
    object cdsbaixaNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      Size = 15
    end
    object cdsbaixaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsbaixaVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      Precision = 15
      Size = 2
    end
    object cdsbaixaNMTPBAIXA: TStringField
      FieldName = 'NMTPBAIXA'
      Size = 100
    end
    object cdsbaixaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsbaixaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = []
    end
    object cdsbaixaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsbaixaNMMOVIMENTACAO: TStringField
      FieldName = 'NMMOVIMENTACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaNMCONTA: TStringField
      FieldName = 'NMCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsbaixaCDADNTCLIENTEDESTINO: TIntegerField
      FieldName = 'CDADNTCLIENTEDESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsbaixaVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dtsbaixa: TDataSource
    DataSet = cdsbaixa
    Left = 860
    Top = 164
  end
  object sdsencontrocontas: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select a.nuencontrocontas,a.cdduplicata,a.cdautpagto,d.nuduplica' +
      'ta'#13#10',c.cdcliente'#13#10',c.nmcliente'#13#10',f.cdfornecedor'#13#10',f.nmfornecedor' +
      #13#10',d.dtvencimento'#13#10',d.vlduplicata'#13#10',a.vlsaldoduplicata'#13#10',a.vlbai' +
      'xa'#13#10',a.vlmulta'#13#10',a.vljuro'#13#10',a.vldesconto'#13#10',a.vlabatimento'#13#10',a.vl' +
      'devolucao'#13#10',nmstaprovacao '#13#10'from aprovacao a '#13#10'inner join duplic' +
      'ata d on d.cdduplicata=a.cdduplicata and d.cdempresa=a.cdempresa' +
      #13#10'inner join autpagto ap on ap.cdautpagto=a.cdautpagto and ap.cd' +
      'empresa=a.cdempresa'#13#10'inner join cliente c on c.cdcliente=d.cdcli' +
      'ente and c.cdempresa=d.cdempresa'#13#10'inner join fornecedor f on f.c' +
      'dfornecedor=ap.cdfornecedor and f.cdempresa=ap.cdempresa'#13#10'inner ' +
      'join staprovacao s on s.cdstaprovacao=a.cdstaprovacao and s.cdem' +
      'presa=a.cdempresa'#13#10'where ap.cdempresa=:cdempresa and ap.cdautpag' +
      'to=:CDAUTPAGTO'
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
        Name = 'CDAUTPAGTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 776
    Top = 192
    object sdsencontrocontasNUENCONTROCONTAS: TIntegerField
      FieldName = 'NUENCONTROCONTAS'
    end
    object sdsencontrocontasCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
    end
    object sdsencontrocontasCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
    end
    object sdsencontrocontasNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      Required = True
      Size = 15
    end
    object sdsencontrocontasNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      Required = True
      Size = 100
    end
    object sdsencontrocontasNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      Required = True
      Size = 100
    end
    object sdsencontrocontasDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Required = True
    end
    object sdsencontrocontasVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLSALDODUPLICATA: TFMTBCDField
      FieldName = 'VLSALDODUPLICATA'
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasNMSTAPROVACAO: TStringField
      FieldName = 'NMSTAPROVACAO'
      Required = True
      Size = 100
    end
    object sdsencontrocontasCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsencontrocontasCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cdsencontrocontas: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsencontrocontas
    Params = <>
    ReadOnly = True
    Left = 832
    Top = 192
    object cdsencontrocontasNUENCONTROCONTAS: TIntegerField
      FieldName = 'NUENCONTROCONTAS'
    end
    object cdsencontrocontasCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
    end
    object cdsencontrocontasCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
    end
    object cdsencontrocontasNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      Required = True
      Size = 15
    end
    object cdsencontrocontasNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      Required = True
      Size = 100
    end
    object cdsencontrocontasNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      Required = True
      Size = 100
    end
    object cdsencontrocontasDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Required = True
    end
    object cdsencontrocontasVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLSALDODUPLICATA: TFMTBCDField
      FieldName = 'VLSALDODUPLICATA'
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasNMSTAPROVACAO: TStringField
      FieldName = 'NMSTAPROVACAO'
      Required = True
      Size = 100
    end
    object cdsencontrocontasCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsencontrocontasCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dtsencontrocontas: TDataSource
    DataSet = cdsencontrocontas
    Left = 860
    Top = 192
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
    end
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end>
    UseOwnFont = False
    Left = 776
    Top = 265
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
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
        ItemName = 'dxBarButton12'
      end>
    UseOwnFont = False
    Left = 808
    Top = 267
  end
end

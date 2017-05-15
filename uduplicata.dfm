object frmDuplicata: TfrmDuplicata
  Left = 379
  Top = 154
  Hint = 'Abrir'
  ClientHeight = 669
  ClientWidth = 1202
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
    Top = 63
    Width = 1202
    Height = 606
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl2: TBevel
      Left = 0
      Top = 65
      Width = 1202
      Height = 219
      Align = alTop
      ExplicitTop = 45
    end
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1202
      Height = 42
      Align = alTop
      ExplicitWidth = 933
    end
    object lblcodigo: TLabel
      Left = 6
      Top = 26
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 82
      Top = 26
      Width = 51
      Height = 13
      Caption = 'Dt Entrada'
      Transparent = True
    end
    object Label3: TLabel
      Left = 248
      Top = 26
      Width = 70
      Height = 13
      Caption = 'Dt Vencimento'
      Transparent = True
    end
    object Label6: TLabel
      Left = 331
      Top = 26
      Width = 72
      Height = 13
      Caption = 'Dt Prorroga'#231#227'o'
      Transparent = True
    end
    object Label4: TLabel
      Left = 165
      Top = 26
      Width = 53
      Height = 13
      Caption = 'Dt Emiss'#227'o'
      Transparent = True
    end
    object Label5: TLabel
      Left = 413
      Top = 26
      Width = 85
      Height = 13
      Caption = 'Tipo de Cobran'#231'a'
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 4
      Top = 40
      Properties.CharCase = ecUpperCase
      Properties.OnEditValueChanged = edtcodigoPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCODIGOEnter
      OnKeyDown = edtCODIGOKeyDown
      OnKeyPress = edtCODIGOKeyPress
      Width = 76
    end
    object edtdtentrada: TcxDBDateEdit
      Left = 82
      Top = 40
      DataBinding.DataField = 'DTENTRADA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 82
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 165
      Top = 40
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 82
    end
    object edtdtvencimento: TcxDBDateEdit
      Left = 248
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
      Width = 82
    end
    object edtdtprorrogacao: TcxDBDateEdit
      Left = 331
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
      Width = 82
    end
    object cbxcdtpcobranca: TcxDBLookupComboBox
      Left = 414
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
      OnEnter = colorenter
      OnExit = colorexit
      Width = 219
    end
    object pgc: TcxPageControl
      Left = 0
      Top = 382
      Width = 1202
      Height = 224
      Align = alClient
      TabOrder = 13
      Properties.ActivePage = tbsbaixa
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dtmmain.imlMain
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 224
      ClientRectRight = 1202
      ClientRectTop = 25
      object tbsbaixa: TcxTabSheet
        Caption = 'Baixa'
        ImageIndex = 22
        ExplicitHeight = 162
        object grdbaixa: TcxGrid
          Left = 0
          Top = 22
          Width = 1202
          Height = 177
          Align = alClient
          TabOrder = 0
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
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLCOMISSAO'
                Column = tbvbaixaVLCOMISSAO
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
                Caption = 'Adiantamento Cliente'
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
            object tbvbaixaNMCONTA: TcxGridDBBandedColumn
              Caption = 'Conta'
              DataBinding.FieldName = 'NMCONTA'
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object tbvbaixaDTBAIXA: TcxGridDBBandedColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DTBAIXA'
              Position.BandIndex = 0
              Position.ColIndex = 1
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
            object tbvbaixaCDADNTCLIENTE: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDADNTCLIENTE'
              Styles.Content = dtmmain.cxStyle1
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tbvbaixaDTEMISSAO: TcxGridDBBandedColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tbvbaixaVLMULTA: TcxGridDBBandedColumn
              Caption = 'Multa'
              DataBinding.FieldName = 'VLMULTA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tbvbaixaVLJURO: TcxGridDBBandedColumn
              Caption = 'Juros'
              DataBinding.FieldName = 'VLJURO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object tbvbaixaVLBAIXA: TcxGridDBBandedColumn
              Caption = 'Baixa'
              DataBinding.FieldName = 'VLBAIXA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 0
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
            object tbvbaixaVLCOMISSAO: TcxGridDBBandedColumn
              Caption = 'Comiss'#227'o'
              DataBinding.FieldName = 'VLCOMISSAO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 7
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
          end
          object grdbaixaLevel1: TcxGridLevel
            GridView = tbvbaixa
          end
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1202
          Height = 22
          Align = dalTop
          BarManager = bmg1
        end
      end
      object tbscobrancabancaria: TcxTabSheet
        Caption = 'Cobran'#231'a Banc'#225'ria'
        ImageIndex = 70
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grditcobranca: TcxGrid
          Left = 0
          Top = 0
          Width = 1202
          Height = 199
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvitcobranca: TcxGridDBTableView
            OnKeyDown = exportagradeexcel
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
            OnCellDblClick = tbvitcobrancaCellDblClick
            DataController.DataSource = dtsitcobranca
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvitcobrancaCDCOBRANCA: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDCOBRANCA'
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvitcobrancaDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
            end
            object tbvitcobrancaNMCONTA: TcxGridDBColumn
              Caption = 'Conta'
              DataBinding.FieldName = 'NMCONTA'
              Width = 199
            end
            object tbvitcobrancaNMBANCO: TcxGridDBColumn
              Caption = 'Banco'
              DataBinding.FieldName = 'NMBANCO'
              Width = 208
            end
          end
          object grditcobrancaLevel1: TcxGridLevel
            GridView = tbvitcobranca
          end
        end
      end
      object tbsencontrocontas: TcxTabSheet
        Caption = 'Encontro de Contas'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdencontrocontas: TcxGrid
          Left = 0
          Top = 0
          Width = 1202
          Height = 199
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvencontrocontas: TcxGridDBBandedTableView
            OnKeyDown = exportagradeexcel
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
                Column = tbvencontrocontasVLABATIMENTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLAUTPAGTO'
                Column = tbvencontrocontasVLAUTPAGTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLBAIXA'
                Column = tbvencontrocontasVLBAIXA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDESCONTO'
                Column = tbvencontrocontasVLDESCONTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDEVOLUCAO'
                Column = tbvencontrocontasVLDEVOLUCAO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLJURO'
                Column = tbvencontrocontasVLJURO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLMULTA'
                Column = tbvencontrocontasVLMULTA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLSALDOAUTPAGTO'
                Column = tbvencontrocontasVLSALDOAUTPAGTO
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Encontro Contas'
              end
              item
                Caption = 'Fornecedor'
                Width = 227
              end
              item
                Caption = 'Valores'
              end>
            object tbvencontrocontasNUENCONTROCONTAS: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'NUENCONTROCONTAS'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tbvencontrocontasCDAUTPAGTO: TcxGridDBBandedColumn
              Caption = 'Contas a Pagar'
              DataBinding.FieldName = 'CDAUTPAGTO'
              Width = 95
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tbvencontrocontasDTVENCIMENTO: TcxGridDBBandedColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'DTVENCIMENTO'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object tbvencontrocontasNMSTAPROVACAO: TcxGridDBBandedColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTAPROVACAO'
              Width = 149
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object tbvencontrocontasCDFORNECEDOR: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDFORNECEDOR'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tbvencontrocontasNMFORNECEDOR: TcxGridDBBandedColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'NMFORNECEDOR'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tbvencontrocontasVLAUTPAGTO: TcxGridDBBandedColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLAUTPAGTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object tbvencontrocontasVLSALDOAUTPAGTO: TcxGridDBBandedColumn
              Caption = 'Saldo'
              DataBinding.FieldName = 'VLSALDOAUTPAGTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object tbvencontrocontasVLBAIXA: TcxGridDBBandedColumn
              Caption = 'Baixa'
              DataBinding.FieldName = 'VLBAIXA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object tbvencontrocontasVLMULTA: TcxGridDBBandedColumn
              Caption = 'Multa'
              DataBinding.FieldName = 'VLMULTA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object tbvencontrocontasVLJURO: TcxGridDBBandedColumn
              Caption = 'Juros'
              DataBinding.FieldName = 'VLJURO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object tbvencontrocontasVLDESCONTO: TcxGridDBBandedColumn
              Caption = 'Desconto'
              DataBinding.FieldName = 'VLDESCONTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object tbvencontrocontasVLABATIMENTO: TcxGridDBBandedColumn
              Caption = 'Abatimento'
              DataBinding.FieldName = 'VLABATIMENTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object tbvencontrocontasVLDEVOLUCAO: TcxGridDBBandedColumn
              Caption = 'Devolu'#231#227'o'
              DataBinding.FieldName = 'VLDEVOLUCAO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 2
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
          object grdencontrocontasLevel1: TcxGridLevel
            GridView = tbvencontrocontas
          end
        end
      end
      object tbscobranca: TcxTabSheet
        Caption = 'Cobran'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdcobranca: TcxGrid
          Left = 0
          Top = 0
          Width = 1202
          Height = 199
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvcobranca: TcxGridDBTableView
            OnKeyDown = exportagradeexcel
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
            DataController.DataSource = dtscobranca
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvcobrancaDTCONTATO: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'DTCONTATO'
            end
            object tbvcobrancaDTAGENDAMENTO: TcxGridDBColumn
              Caption = 'Agendamento'
              DataBinding.FieldName = 'DTAGENDAMENTO'
              Width = 77
            end
            object tbvcobrancaDSCONTATO: TcxGridDBColumn
              Caption = 'Contato'
              DataBinding.FieldName = 'DSCONTATO'
              Width = 494
            end
            object tbvcobrancaVLSALDO: TcxGridDBColumn
              Caption = 'Saldo'
              DataBinding.FieldName = 'VLSALDO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
            end
            object tbvcobrancaNMSTREGCOBRANCA: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTREGCOBRANCA'
              Width = 172
            end
          end
          object grdcobrancaLevel1: TcxGridLevel
            GridView = tbvcobranca
          end
        end
      end
      object tbsboleto: TcxTabSheet
        Caption = 'Boleto'
        ImageIndex = 6
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lbl1: TLabel
          Left = 8
          Top = 9
          Width = 45
          Height = 13
          Caption = 'Nosso N'#186
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 1202
          Height = 30
          Align = alTop
        end
        object edtnunossonumero: TcxDBTextEdit
          Left = 85
          Top = 4
          OnFocusChanged = colorexit
          DataBinding.DataField = 'NUNOSSONUMERO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnExit = colorenter
          Width = 309
        end
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 30
          Align = alClient
          Caption = 'Observa'#231#227'o'
          TabOrder = 1
          Height = 169
          Width = 1202
          object memdsobservacaoboleto: TcxDBMemo
            Left = 2
            Top = 18
            Align = alClient
            OnFocusChanged = colorexit
            DataBinding.DataField = 'DSOBSERVACAOBOLETO'
            DataBinding.DataSource = dts
            Properties.ScrollBars = ssBoth
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnExit = colorenter
            Height = 149
            Width = 1198
          end
        end
      end
    end
    object gbxvalores: TcxGroupBox
      Left = 385
      Top = 69
      Caption = 'Valores'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Height = 48
      Width = 450
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
        Width = 68
        Height = 13
        Caption = '% Juro Mensal'
        Transparent = True
        OnDblClick = Label17DblClick
      end
      object Label18: TLabel
        Left = 390
        Top = 11
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo'
        Transparent = True
      end
      object Label8: TLabel
        Left = 273
        Top = 11
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Juro Di'#225'rio'
        Transparent = True
        Visible = False
      end
      object lblvlsaldo: TcxDBLabel
        Left = 325
        Top = 25
        DataBinding.DataField = 'VLSALDO'
        DataBinding.DataSource = dts
        Style.TextColor = clBlue
        Transparent = True
        Height = 21
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
        Width = 121
      end
      object edtvlduplicata: TcxDBCalcEdit
        Left = 8
        Top = 25
        DataBinding.DataField = 'VLDUPLICATA'
        DataBinding.DataSource = dts
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Width = 121
      end
      object cxDBLabel2: TcxDBLabel
        Left = 249
        Top = 25
        DataBinding.DataField = 'VLSALDO'
        DataBinding.DataSource = dts
        Style.TextColor = clBlue
        Transparent = True
        Visible = False
        Height = 21
        Width = 74
      end
    end
    object gbxdados: TcxGroupBox
      Left = 3
      Top = 69
      Caption = 'Dados'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Height = 173
      Width = 377
      object lblnmplconta: TDBText
        Left = 171
        Top = 70
        Width = 157
        Height = 17
        DataField = 'NMPLCONTA'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblfaturamento: TLabel
        Left = 3
        Top = 12
        Width = 53
        Height = 13
        Caption = 'Nota Fiscal'
        Transparent = True
      end
      object lblcdcliente: TLabel
        Left = 5
        Top = 33
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 5
        Top = 54
        Width = 41
        Height = 13
        Caption = 'Hist'#243'rico'
        Transparent = True
      end
      object lblplconta: TLabel
        Left = 5
        Top = 74
        Width = 45
        Height = 13
        Caption = 'Pl Contas'
        Transparent = True
      end
      object lblnusaida: TDBText
        Left = 57
        Top = 10
        Width = 65
        Height = 17
        DataField = 'NUSAIDA'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblnusaidaDblClick
      end
      object Label7: TLabel
        Left = 5
        Top = 126
        Width = 86
        Height = 13
        Caption = 'Comiss'#227'o Prevista'
        Transparent = True
      end
      object lblrepresentante: TLabel
        Left = 5
        Top = 142
        Width = 70
        Height = 13
        Caption = 'Representante'
        Transparent = True
      end
      object txtnmrepresentante: TDBText
        Left = 78
        Top = 142
        Width = 296
        Height = 17
        DataField = 'NMREPRESENTANTE'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = txtnmrepresentanteDblClick
      end
      object lblnmcntcusto: TDBText
        Left = 171
        Top = 90
        Width = 157
        Height = 17
        DataField = 'NMCNTCUSTO'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lblcntcusto: TLabel
        Left = 5
        Top = 94
        Width = 46
        Height = 13
        Caption = 'Cnt Custo'
        Transparent = True
      end
      object lblNMCLIENTE: TDBText
        Left = 171
        Top = 29
        Width = 203
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
        OnDblClick = lblNMCLIENTEDblClick
      end
      object Label12: TLabel
        Left = 5
        Top = 111
        Width = 45
        Height = 13
        Caption = 'Nosso N'#186
        Transparent = True
      end
      object edtnuplconta: TcxDBButtonEdit
        Left = 57
        Top = 66
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
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtnuplcontaKeyDown
        Width = 115
      end
      object edtcdcliente: TcxDBButtonEdit
        Left = 57
        Top = 25
        DataBinding.DataField = 'CDCLIENTE'
        DataBinding.DataSource = dts
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdclientePropertiesButtonClick
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnKeyDown = edtcdclienteKeyDown
        OnKeyPress = eventoKeyPress
        Width = 115
      end
      object edtdshistorico: TcxDBTextEdit
        Left = 57
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
        Width = 304
      end
      object cxDBLabel1: TcxDBLabel
        Left = 96
        Top = 126
        AutoSize = True
        DataBinding.DataField = 'VLCOMISSAO'
        DataBinding.DataSource = dts
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object edtnucntcusto: TcxDBButtonEdit
        Left = 57
        Top = 86
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
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtnucntcustoKeyDown
        Width = 115
      end
      object ckbborateiocntcusto: TcxDBCheckBox
        Left = 323
        Top = 86
        Caption = 'Rateio'
        DataBinding.DataField = 'BORATEIOCNTCUSTO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
      end
      object ckbBORATEIOPLCONTA: TcxDBCheckBox
        Left = 323
        Top = 66
        Caption = 'Rateio'
        DataBinding.DataField = 'BORATEIOPLCONTA'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
      end
      object lblnunossonumero: TcxDBLabel
        Left = 70
        Top = 107
        DataBinding.DataField = 'NUNOSSONUMERO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 304
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
    object gbxdsobservacao: TcxGroupBox
      Left = 0
      Top = 284
      Align = alTop
      Caption = 'Observa'#231#227'o'
      TabOrder = 12
      Height = 98
      Width = 1202
      object memdsobservacao: TcxDBMemo
        Left = 2
        Top = 18
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        Properties.ScrollBars = ssBoth
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Height = 78
        Width = 1198
      end
    end
    object gbxtotal: TcxGroupBox
      Left = 385
      Top = 240
      Caption = 'Total'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      Height = 38
      Width = 450
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
        Left = 325
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
    object gbxacrescimos: TcxGroupBox
      Left = 385
      Top = 166
      Caption = 'Acr'#233'scimos'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Height = 76
      Width = 450
      object Label1: TLabel
        Left = 98
        Top = 12
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Multa'
        Transparent = True
      end
      object Label27: TLabel
        Left = 390
        Top = 12
        Width = 25
        Height = 13
        Alignment = taRightJustify
        Caption = 'Juros'
        Transparent = True
      end
      object Label10: TLabel
        Left = 130
        Top = 12
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = '% Multa'
        Transparent = True
      end
      object lbl2: TLabel
        Left = 98
        Top = 47
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Multa do dia'
        Transparent = True
      end
      object lbl3: TLabel
        Left = 390
        Top = 47
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Juros do dia'
        Transparent = True
      end
      object edtprmulta: TcxDBCalcEdit
        Left = 130
        Top = 26
        DataBinding.DataField = 'PRMULTA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        Width = 121
      end
      object txtvljuros: TcxDBLabel
        Left = 325
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
      object txtvlmultadia: TcxDBLabel
        Left = 98
        Top = 59
        DataBinding.DataField = 'VLMULTADIA'
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
      object txtvljurosdia: TcxDBLabel
        Left = 325
        Top = 59
        DataBinding.DataField = 'VLJUROSDIA'
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
      Left = 385
      Top = 117
      Caption = 'Dedu'#231#245'es'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      Height = 49
      Width = 450
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
        Left = 390
        Top = 14
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Desconto'
        Transparent = True
      end
      object txtvldesconto: TcxDBLabel
        Left = 325
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
    object gbxbaixa: TcxGroupBox
      Left = 3
      Top = 240
      Caption = 'Baixa'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Height = 38
      Width = 377
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
      object txt1: TcxDBLabel
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
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 999
    Top = 37
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
    object actemail: TAction
      Caption = 'Email'
      Enabled = False
      ImageIndex = 146
      OnExecute = actemailExecute
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
    object actAbrirCliente: TAction
      Hint = 'cliente'
      ImageIndex = 35
      OnExecute = actAbrirClienteExecute
    end
    object actAbrirSaida: TAction
      Hint = 'saida'
      ImageIndex = 19
      OnExecute = actAbrirSaidaExecute
    end
    object actabrircte: TAction
      Hint = 'cte'
      OnExecute = actabrircteExecute
    end
    object actAbrirMovBancario: TAction
      Hint = 'movbancario'
      ImageIndex = 18
      OnExecute = actAbrirMovBancarioExecute
    end
    object actAbrirCobranca: TAction
      Hint = 'cobranca'
      ImageIndex = 70
      OnExecute = actAbrirCobrancaExecute
    end
    object actabrirbanco: TAction
      Hint = 'banco'
      ImageIndex = 49
      OnExecute = actabrirbancoExecute
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
      OnExecute = actencontrocontasExecute
    end
    object actbaixa: TAction
      Caption = 'Baixar'
      Enabled = False
      Hint = 'Baixa Documento'
      ImageIndex = 22
      ShortCut = 16450
      OnExecute = actbaixaExecute
    end
    object actAbrirFornecedor: TAction
      Hint = 'Fornecedor'
      ImageIndex = 36
      OnExecute = actAbrirFornecedorExecute
    end
    object actAbrirAutPagto: TAction
      Hint = 'AutPagto'
      ImageIndex = 31
      OnExecute = actAbrirAutPagtoExecute
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
      ImageIndex = 144
      OnExecute = actparcelamentoExecute
    end
    object actimprimirduplicata: TAction
      Caption = '331 - Duplicata'
      OnExecute = actimprimirduplicataExecute
    end
    object actemailduplicata: TAction
      Caption = '331 - Duplicata'
      OnExecute = actemailduplicataExecute
    end
    object actajustarbaixa: TAction
      Caption = 'Ajustar Baixa'
      OnExecute = actajustarbaixaExecute
    end
    object actabriradntcliente: TAction
      Caption = 'actabriradntcliente'
      Hint = 'adntcliente'
      OnExecute = actabriradntclienteExecute
    end
    object actimprimirboleto: TAction
      Caption = 'Boleto'
      OnExecute = actimprimirboletoExecute
    end
    object actemailboleto: TAction
      Caption = 'Boleto'
      OnExecute = actemailboletoExecute
    end
    object actabrirrepresentante: TAction
      Hint = 'representante'
      OnExecute = actabrirrepresentanteExecute
    end
    object actabrirnegociacao: TAction
      Hint = 'negociacao'
      OnExecute = actabrirnegociacaoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actabrircontrato: TAction
      Hint = 'contrato'
      OnExecute = actabrircontratoExecute
    end
  end
  object pumbaixa: TPopupMenu
    Images = dtmmain.imlMain
    Left = 915
    Top = 85
    object Excluir2: TMenuItem
      Action = actexcluirbaixa
    end
  end
  object pumEncontroContas: TPopupMenu
    Left = 859
    Top = 85
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
    Left = 1031
    Top = 36
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
      Caption = 'duplicata'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
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
          ItemName = 'btnemail'
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
    object barbaixa: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'baixa'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 349
      FloatTop = 138
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
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
          ItemName = 'btn2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
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
    object dxBarButton5: TdxBarButton
      Action = actparcelamento
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actencontrocontas
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object btn2: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actbaixa
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actimprimirduplicata
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actajustarbaixa
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actexcluirbaixa
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = actimprimirboleto
      Category = 0
    end
    object btnemail: TdxBarLargeButton
      Action = actemail
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumemail
    end
    object dxBarButton6: TdxBarButton
      Action = actemailboleto
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actemailduplicata
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actbaixa
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = True
    Left = 951
    Top = 35
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT S.NUSAIDA'#13#10',N.CDNEGOCIACAO'#13#10',P.NMPLCONTA'#13#10',C.NMCNTCUSTO'#13#10 +
      ',U.NMUSUARIO'#13#10',R.NMREPRESENTANTE'#13#10',IC.CDCONTRATO'#13#10',CL.NMCLIENTE'#13 +
      #10',D.* '#13#10'FROM DUPLICATA D '#13#10'LEFT JOIN SAIDA S ON S.CDSAIDA=D.CDSA' +
      'IDA AND D.CDEMPRESA=S.CDEMPRESA'#13#10'LEFT JOIN PLCONTA P ON P.CDPLCO' +
      'NTA=D.CDPLCONTA AND P.CDEMPRESA=D.CDEMPRESA '#13#10'LEFT JOIN CNTCUSTO' +
      ' C ON C.CDCNTCUSTO=D.CDCNTCUSTO AND C.CDEMPRESA=D.CDEMPRESA'#13#10'LEF' +
      'T JOIN CLIENTE CL ON CL.CDEMPRESA=D.CDEMPRESA AND CL.CDCLIENTE=D' +
      '.CDCLIENTE'#13#10'LEFT JOIN REPRESENTANTE R ON R.CDEMPRESA=D.CDEMPRESA' +
      ' AND R.CDREPRESENTANTE=D.CDREPRESENTANTE'#13#10'LEFT JOIN NEGOCIACAOSA' +
      'IDA N ON N.CDEMPRESA=D.CDEMPRESA AND N.CDNEGOCIACAOSAIDA=D.CDNEG' +
      'OCIACAOSAIDA'#13#10'LEFT JOIN ITCONTRATOPARCELA IP ON IP.CDEMPRESA=D.C' +
      'DEMPRESA AND IP.CDITCONTRATOPARCELA=D.CDITCONTRATOPARCELA'#13#10'LEFT ' +
      'JOIN ITCONTRATONEGOCIACAO IC ON IC.CDEMPRESA=IP.CDEMPRESA AND IC' +
      '.CDITCONTRATONEGOCIACAO=IP.CDITCONTRATONEGOCIACAO'#13#10'LEFT JOIN USU' +
      'ARIO U ON U.CDUSUARIO=D.CDUSUARIOBAIXA'#13#10'WHERE D.CDEMPRESA=:CDEMP' +
      'RESA AND D.CDDUPLICATA=:CDDUPLICATA'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDDUPLICATA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1003
    Top = 147
    object sdsCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSTDUPLICATA: TIntegerField
      FieldName = 'CDSTDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTREGCOBRANCA: TIntegerField
      FieldName = 'CDSTREGCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
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
    object sdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
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
    object sdsPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
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
    object sdsVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
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
    object sdsVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNUBOLETA: TStringField
      FieldName = 'NUBOLETA'
      ProviderFlags = [pfInUpdate]
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
    object sdsNUCAIXA: TIntegerField
      FieldName = 'NUCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUNOSSONUMERO: TStringField
      FieldName = 'NUNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 17
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
    object sdsCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = []
    end
    object sdsCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
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
    object sdsTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPDUPLICATA: TIntegerField
      FieldName = 'CDTPDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsNUCPFCNPJ: TStringField
      FieldName = 'NUCPFCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCPFCNPJ2: TStringField
      FieldName = 'NUCPFCNPJ2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMEMITENTE: TStringField
      FieldName = 'NMEMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNMEMITENTE2: TStringField
      FieldName = 'NMEMITENTE2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUCONTACORRENTE: TStringField
      FieldName = 'NUCONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsCDBANCODEVOLUCAO: TIntegerField
      FieldName = 'CDBANCODEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object sdsNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object sdsCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSOBSERVACAOBOLETO: TBlobField
      FieldName = 'DSOBSERVACAOBOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDNEGOCIACAOSAIDA: TIntegerField
      FieldName = 'CDNEGOCIACAOSAIDA'
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
    end
    object sdsNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNMREPRESENTANTE: TStringField
      FieldName = 'NMREPRESENTANTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDNEGOCIACAO: TIntegerField
      FieldName = 'CDNEGOCIACAO'
      ProviderFlags = []
    end
    object sdsCDITCONTRATOPARCELA: TIntegerField
      FieldName = 'CDITCONTRATOPARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = []
    end
    object sdsNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    end
    object sdsVLCOMISSAOABERTA: TFMTBCDField
      FieldName = 'VLCOMISSAOABERTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
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
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 1031
    Top = 147
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnCalcFields = cdsCalcFields
    OnNewRecord = cdsNewRecord
    Left = 1060
    Top = 147
    object cdsCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSTDUPLICATA: TIntegerField
      FieldName = 'CDSTDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSTREGCOBRANCA: TIntegerField
      FieldName = 'CDSTREGCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
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
    object cdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsVLDUPLICATAValidate
      Precision = 15
      Size = 2
    end
    object cdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
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
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
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
    object cdsPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
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
    object cdsVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNUBOLETA: TStringField
      FieldName = 'NUBOLETA'
      ProviderFlags = [pfInUpdate]
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
    object cdsNUCAIXA: TIntegerField
      FieldName = 'NUCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUNOSSONUMERO: TStringField
      FieldName = 'NUNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 17
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
    object cdsCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = []
    end
    object cdsCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
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
    object cdsTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPDUPLICATA: TIntegerField
      FieldName = 'CDTPDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNUCPFCNPJ: TStringField
      FieldName = 'NUCPFCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCPFCNPJ2: TStringField
      FieldName = 'NUCPFCNPJ2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMEMITENTE: TStringField
      FieldName = 'NMEMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNMEMITENTE2: TStringField
      FieldName = 'NMEMITENTE2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUCONTACORRENTE: TStringField
      FieldName = 'NUCONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsCDBANCODEVOLUCAO: TIntegerField
      FieldName = 'CDBANCODEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitcobranca: TDataSetField
      FieldName = 'sdsitcobranca'
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
    object cdssdscobranca: TDataSetField
      FieldName = 'sdscobranca'
      ProviderFlags = []
    end
    object cdsNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNUSAIDA: TIntegerField
      FieldName = 'NUSAIDA'
      ProviderFlags = []
    end
    object cdsNMUSUARIO: TStringField
      FieldName = 'NMUSUARIO'
      ProviderFlags = []
      Size = 40
    end
    object cdsCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAOBOLETO: TBlobField
      FieldName = 'DSOBSERVACAOBOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDNEGOCIACAOSAIDA: TIntegerField
      FieldName = 'CDNEGOCIACAOSAIDA'
    end
    object cdsNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNMREPRESENTANTE: TStringField
      FieldName = 'NMREPRESENTANTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsVLJUROSDIA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VLJUROSDIA'
      DisplayFormat = 'R$ ###,##0.00'
      Calculated = True
    end
    object cdsVLMULTADIA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VLMULTADIA'
      DisplayFormat = 'R$ ###,##0.00'
      Calculated = True
    end
    object cdsCDNEGOCIACAO: TIntegerField
      FieldName = 'CDNEGOCIACAO'
      ProviderFlags = []
    end
    object cdsCDITCONTRATOPARCELA: TIntegerField
      FieldName = 'CDITCONTRATOPARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = []
    end
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
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
      OnValidate = cdsCDCLIENTEValidate
    end
    object cdsVLCOMISSAOABERTA: TFMTBCDField
      FieldName = 'VLCOMISSAOABERTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsBORATEIOCNTCUSTO: TStringField
      FieldName = 'BORATEIOCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBORATEIOPLCONTA: TStringField
      FieldName = 'BORATEIOPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 1088
    Top = 147
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 1116
    Top = 147
  end
  object cdsitcobranca: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitcobranca
    Params = <>
    ReadOnly = True
    Left = 1061
    Top = 175
    object cdsitcobrancaCDCOBRANCA: TIntegerField
      FieldName = 'CDCOBRANCA'
      ProviderFlags = []
      Required = True
    end
    object cdsitcobrancaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
      Required = True
    end
    object cdsitcobrancaNMCONTA: TStringField
      FieldName = 'NMCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsitcobrancaNMBANCO: TStringField
      FieldName = 'NMBANCO'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsencontrocontas: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsencontrocontas
    Params = <>
    ReadOnly = True
    Left = 1062
    Top = 203
    object cdsencontrocontasNUENCONTROCONTAS: TIntegerField
      FieldName = 'NUENCONTROCONTAS'
      ProviderFlags = []
    end
    object cdsencontrocontasCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = []
    end
    object cdsencontrocontasCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = []
    end
    object cdsencontrocontasNUAUTPAGTO: TStringField
      FieldName = 'NUAUTPAGTO'
      ProviderFlags = []
      Required = True
      Size = 15
    end
    object cdsencontrocontasNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object cdsencontrocontasNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object cdsencontrocontasDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = []
      Required = True
    end
    object cdsencontrocontasVLAUTPAGTO: TFMTBCDField
      FieldName = 'VLAUTPAGTO'
      ProviderFlags = []
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLSALDOAUTPAGTO: TFMTBCDField
      FieldName = 'VLSALDOAUTPAGTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsencontrocontasNMSTAPROVACAO: TStringField
      FieldName = 'NMSTAPROVACAO'
      ProviderFlags = []
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
  object cdsbaixa: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsbaixa
    Params = <>
    ReadOnly = True
    AfterScroll = cdsbaixaAfterScroll
    Left = 1061
    Top = 231
    object cdsbaixaCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      ProviderFlags = []
      Required = True
    end
    object cdsbaixaCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = []
    end
    object cdsbaixaCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
      ProviderFlags = []
    end
    object cdsbaixaCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
      ProviderFlags = []
    end
    object cdsbaixaCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = []
    end
    object cdsbaixaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = []
    end
    object cdsbaixaCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
      ProviderFlags = []
    end
    object cdsbaixaCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
      ProviderFlags = []
    end
    object cdsbaixaNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      ProviderFlags = []
      Size = 15
    end
    object cdsbaixaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = []
    end
    object cdsbaixaVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = []
      Required = True
    end
    object cdsbaixaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = []
      Required = True
    end
    object cdsbaixaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = []
      Required = True
    end
    object cdsbaixaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = []
      Required = True
    end
    object cdsbaixaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = []
      Required = True
    end
    object cdsbaixaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = []
      Required = True
    end
    object cdsbaixaDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaNMCONTA: TStringField
      FieldName = 'NMCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object cdsbaixaNMTPBAIXA: TStringField
      FieldName = 'NMTPBAIXA'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaNMMOVIMENTACAO: TStringField
      FieldName = 'NMMOVIMENTACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsbaixaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsbaixaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsbaixaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate]
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
  object cdscobranca: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdscobranca
    Params = <>
    Left = 1061
    Top = 259
    object cdscobrancaDTCONTATO: TDateField
      FieldName = 'DTCONTATO'
      ProviderFlags = []
    end
    object cdscobrancaDTAGENDAMENTO: TDateField
      FieldName = 'DTAGENDAMENTO'
      ProviderFlags = []
    end
    object cdscobrancaDSCONTATO: TStringField
      FieldName = 'DSCONTATO'
      ProviderFlags = []
      Size = 250
    end
    object cdscobrancaVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdscobrancaNMSTREGCOBRANCA: TStringField
      FieldName = 'NMSTREGCOBRANCA'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object cdscobrancaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = []
      Required = True
    end
    object cdscobrancaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = []
      Required = True
    end
    object cdscobrancaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = []
      Required = True
    end
    object cdscobrancaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = []
      Required = True
    end
    object cdscobrancaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = []
      Required = True
    end
    object cdscobrancaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = []
      Required = True
    end
    object cdscobrancaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = []
      Required = True
    end
  end
  object dtsitcobranca: TDataSource
    DataSet = cdsitcobranca
    Left = 1090
    Top = 176
  end
  object dtsencontrocontas: TDataSource
    DataSet = cdsencontrocontas
    Left = 1090
    Top = 203
  end
  object dtsbaixa: TDataSource
    DataSet = cdsbaixa
    Left = 1089
    Top = 231
  end
  object dtscobranca: TDataSource
    DataSet = cdscobranca
    Left = 1089
    Top = 259
  end
  object sdsitcobranca: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT C.CDCOBRANCA'#13#10',C.DTEMISSAO'#13#10',N.NMCONTA'#13#10',B.NMBANCO '#13#10'FROM' +
      ' ITCOBRANCA I '#13#10'INNER JOIN COBRANCA C ON C.CDCOBRANCA=I.CDCOBRAN' +
      'CA AND I.CDEMPRESA=C.CDEMPRESA '#13#10'LEFT JOIN SETBOLETO ON SETBOLET' +
      'O.CDEMPRESA=C.CDEMPRESA AND SETBOLETO.CDSETBOLETO=C.CDSETBOLETO'#13 +
      #10'LEFT JOIN CONTA N ON N.CDCONTA=SETBOLETO.CDCONTA AND N.CDEMPRES' +
      'A=SETBOLETO.CDEMPRESA '#13#10'LEFT JOIN BANCO B ON B.CDBANCO=N.CDBANCO' +
      #13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDDUPLICATA=:CDDUPLICATA '#13#10 +
      'ORDER BY C.CDCOBRANCA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDDUPLICATA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1005
    Top = 175
    object sdsitcobrancaCDCOBRANCA: TIntegerField
      FieldName = 'CDCOBRANCA'
      ProviderFlags = []
      Required = True
    end
    object sdsitcobrancaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
      Required = True
    end
    object sdsitcobrancaNMCONTA: TStringField
      FieldName = 'NMCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsitcobrancaNMBANCO: TStringField
      FieldName = 'NMBANCO'
      ProviderFlags = []
      Size = 100
    end
  end
  object sdsencontrocontas: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select a.nuencontrocontas'#13#10',a.cdduplicata'#13#10',a.cdautpagto '#13#10',u.nu' +
      'autpagto'#13#10',c.cdcliente'#13#10',c.nmcliente'#13#10',f.cdfornecedor'#13#10',f.nmforn' +
      'ecedor'#13#10',u.dtvencimento'#13#10',u.vlautpagto'#13#10',a.vlsaldoautpagto'#13#10',a.v' +
      'lbaixa'#13#10',a.vlmulta'#13#10',a.vljuro'#13#10',a.vldesconto'#13#10',a.vlabatimento'#13#10',' +
      'a.vldevolucao'#13#10',s.nmstaprovacao'#13#10'from aprovacao a'#13#10'inner join du' +
      'plicata d on d.cdduplicata=a.cdduplicata and d.cdempresa=a.cdemp' +
      'resa'#13#10'inner join autpagto u on u.cdautpagto=a.cdautpagto and u.c' +
      'dempresa=a.cdempresa'#13#10'inner join cliente c on c.cdcliente=d.cdcl' +
      'iente and c.cdempresa=d.cdempresa'#13#10'inner join fornecedor f on f.' +
      'cdfornecedor=u.cdfornecedor and f.cdempresa=u.cdempresa'#13#10'inner j' +
      'oin staprovacao s on s.cdstaprovacao=a.cdstaprovacao and s.cdemp' +
      'resa=a.cdempresa'#13#10'where d.cdempresa=:cdempresa and d.cdduplicata' +
      '=:cdduplicata'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDDUPLICATA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1006
    Top = 203
    object sdsencontrocontasNUENCONTROCONTAS: TIntegerField
      FieldName = 'NUENCONTROCONTAS'
      ProviderFlags = []
    end
    object sdsencontrocontasCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = []
    end
    object sdsencontrocontasCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = []
    end
    object sdsencontrocontasNUAUTPAGTO: TStringField
      FieldName = 'NUAUTPAGTO'
      ProviderFlags = []
      Required = True
      Size = 15
    end
    object sdsencontrocontasNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object sdsencontrocontasNMFORNECEDOR: TStringField
      FieldName = 'NMFORNECEDOR'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object sdsencontrocontasDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = []
      Required = True
    end
    object sdsencontrocontasVLAUTPAGTO: TFMTBCDField
      FieldName = 'VLAUTPAGTO'
      ProviderFlags = []
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLSALDOAUTPAGTO: TFMTBCDField
      FieldName = 'VLSALDOAUTPAGTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsencontrocontasNMSTAPROVACAO: TStringField
      FieldName = 'NMSTAPROVACAO'
      ProviderFlags = []
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
  object sdsbaixa: TSQLDataSet
    CommandText = 
      'SELECT B.*'#13#10',M.DSHISTORICO'#13#10',C.NMCONTA'#13#10',T.NMTPBAIXA'#13#10',MV.NMMOVI' +
      'MENTACAO'#13#10',A.DTEMISSAO'#13#10'FROM BAIXA B '#13#10'LEFT JOIN MOVBANCARIO M O' +
      'N M.CDMOVBANCARIO=B.CDMOVBANCARIO AND B.CDEMPRESA=M.CDEMPRESA'#13#10'L' +
      'EFT JOIN MOVIMENTACAO MV ON MV.CDEMPRESA=M.CDEMPRESA AND MV.CDMO' +
      'VIMENTACAO=M.CDMOVIMENTACAO'#13#10'LEFT JOIN TPBAIXA T ON T.CDTPBAIXA=' +
      'B.CDTPBAIXA'#13#10'LEFT JOIN ADNTCLIENTE A ON A.CDADNTCLIENTE=B.CDADNT' +
      'CLIENTE AND A.CDEMPRESA=B.CDEMPRESA'#13#10'LEFT JOIN CONTA C ON C.CDCO' +
      'NTA=M.CDCONTA AND C.CDEMPRESA=M.CDEMPRESA'#13#10'WHERE B.CDEMPRESA=:CD' +
      'EMPRESA AND B.CDDUPLICATA=:CDDUPLICATA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDDUPLICATA'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1007
    Top = 231
    object sdsbaixaCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      ProviderFlags = []
      Required = True
    end
    object sdsbaixaCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = []
    end
    object sdsbaixaCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
      ProviderFlags = []
    end
    object sdsbaixaCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
      ProviderFlags = []
    end
    object sdsbaixaCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = []
    end
    object sdsbaixaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = []
    end
    object sdsbaixaCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
      ProviderFlags = []
    end
    object sdsbaixaCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
      ProviderFlags = []
    end
    object sdsbaixaNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      ProviderFlags = []
      Size = 15
    end
    object sdsbaixaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = []
    end
    object sdsbaixaVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = []
      Required = True
    end
    object sdsbaixaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = []
      Required = True
    end
    object sdsbaixaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = []
      Required = True
    end
    object sdsbaixaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = []
      Required = True
    end
    object sdsbaixaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = []
      Required = True
    end
    object sdsbaixaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = []
      Required = True
    end
    object sdsbaixaDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaNMCONTA: TStringField
      FieldName = 'NMCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = []
    end
    object sdsbaixaNMTPBAIXA: TStringField
      FieldName = 'NMTPBAIXA'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaNMMOVIMENTACAO: TStringField
      FieldName = 'NMMOVIMENTACAO'
      ProviderFlags = []
      Size = 100
    end
    object sdsbaixaVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdsbaixaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsbaixaCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate]
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
  object sdscobranca: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT R.DTCONTATO'#13#10',R.DTAGENDAMENTO'#13#10',R.DSCONTATO'#13#10',D.VLSALDO'#13#10 +
      ',S.NMSTREGCOBRANCA'#13#10',R.CDDUPLICATA'#13#10',r.TSinclusao '#13#10',r.CDUSUARIO' +
      'I'#13#10',r.CDCOMPUTADORI'#13#10',r.TSalteracao'#13#10',r.CDUSUARIOA'#13#10',r.CDCOMPUTA' +
      'DORA '#13#10'FROM REGCOBRANCA R'#13#10'INNER JOIN DUPLICATA D ON D.CDDUPLICA' +
      'TA=R.CDDUPLICATA AND D.CDEMPRESA=R.CDEMPRESA'#13#10'INNER JOIN STREGCO' +
      'BRANCA S ON R.CDSTREGCOBRANCA=S.CDSTREGCOBRANCA AND S.CDEMPRESA=' +
      'R.CDEMPRESA'#13#10'WHERE R.CDEMPRESA=:CDEMPRESA AND R.CDDUPLICATA=:CDD' +
      'UPLICATA'#13#10'UNION'#13#10'SELECT I.DTCONTATO'#13#10',I.DTAGENDAMENTO'#13#10',I.DSCONT' +
      'ATO'#13#10',I.VLSALDO'#13#10',S.NMSTREGCOBRANCA'#13#10',R.CDDUPLICATA'#13#10',r.tsinclus' +
      'ao'#13#10',r.cdusuarioi'#13#10',r.cdcomputadori'#13#10',r.tsalteracao'#13#10',r.cdusuari' +
      'oa'#13#10',r.cdcomputadora '#13#10'FROM REGCOBRANCA R '#13#10'INNER JOIN ITREGCOBR' +
      'ANCA I ON R.CDREGCOBRANCA=I.CDREGCOBRANCA AND I.CDEMPRESA=R.CDEM' +
      'PRESA'#13#10'INNER JOIN STREGCOBRANCA S ON I.CDSTREGCOBRANCA=S.CDSTREG' +
      'COBRANCA AND S.CDEMPRESA=S.CDEMPRESA'#13#10'WHERE R.CDEMPRESA=:CDEMPRE' +
      'SA AND R.CDDUPLICATA=:CDDUPLICATA'
    DataSource = dts1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDDUPLICATA'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDDUPLICATA'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 1007
    Top = 259
    object sdscobrancaDTCONTATO: TDateField
      FieldName = 'DTCONTATO'
      ProviderFlags = []
    end
    object sdscobrancaDTAGENDAMENTO: TDateField
      FieldName = 'DTAGENDAMENTO'
      ProviderFlags = []
    end
    object sdscobrancaDSCONTATO: TStringField
      FieldName = 'DSCONTATO'
      ProviderFlags = []
      Size = 250
    end
    object sdscobrancaVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object sdscobrancaNMSTREGCOBRANCA: TStringField
      FieldName = 'NMSTREGCOBRANCA'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object sdscobrancaCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = []
      Required = True
    end
    object sdscobrancaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = []
      Required = True
    end
    object sdscobrancaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = []
      Required = True
    end
    object sdscobrancaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = []
      Required = True
    end
    object sdscobrancaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = []
      Required = True
    end
    object sdscobrancaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = []
      Required = True
    end
    object sdscobrancaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = []
      Required = True
    end
  end
  object pumemail: TdxBarPopupMenu
    BarManager = bmg1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end>
    UseOwnFont = True
    Left = 897
    Top = 36
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
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end>
    UseOwnFont = False
    Left = 844
    Top = 36
  end
end

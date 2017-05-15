object frmManagerDuplicata: TfrmManagerDuplicata
  Left = 475
  Top = 239
  Hint = 'Cliente'
  ClientHeight = 645
  ClientWidth = 1118
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
  object Splitter2: TSplitter
    Left = 157
    Top = 85
    Width = 4
    Height = 560
    ExplicitHeight = 586
  end
  object ntb: TNotebook
    Left = 161
    Top = 85
    Width = 957
    Height = 560
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object splcobranca: TSplitter
        Left = 0
        Top = 307
        Width = 957
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Visible = False
        ExplicitTop = 333
        ExplicitWidth = 1036
      end
      object Splitter3: TSplitter
        Left = 0
        Top = 153
        Width = 957
        Height = 2
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 1036
      end
      object pnlduplicata: TPanel
        Left = 0
        Top = 155
        Width = 957
        Height = 152
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnlduplicatalabel: TPanel
          Left = 0
          Top = 0
          Width = 957
          Height = 15
          Align = alTop
          Alignment = taLeftJustify
          BevelInner = bvLowered
          BevelOuter = bvNone
          Caption = 'Contas a Receber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
        end
        object grd: TcxGrid
          Left = 0
          Top = 15
          Width = 957
          Height = 137
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object tbv: TcxGridDBTableView
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
            Navigator.Buttons.SaveBookmark.Enabled = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Enabled = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellDblClick = tbvCellDblClick
            DataController.DataSource = dts
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLABATIMENTO'
                Column = tbvVLABATIMENTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLBAIXA'
                Column = tbvVLBAIXA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDESCONTO'
                Column = tbvVLDESCONTO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDEVOLUCAO'
                Column = tbvVLDEVOLUCAO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDUPLICATA'
                Column = tbvVLDUPLICATA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLJUROS'
                Column = tbvVLJUROS
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLMULTA'
                Column = tbvVLMULTA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLRECEBIDO'
                Column = tbvVLRECEBIDO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLSALDO'
                Column = tbvVLSALDO
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLJUROSDIA'
                Column = tbvVLJUROSDIA
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLMULTADIA'
                Column = tbvVLMULTADIA
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object tbvNUDUPLICATA: TcxGridDBColumn
              Caption = 'Contas Receber'
              DataBinding.FieldName = 'NUDUPLICATA'
              Options.Focusing = False
              Styles.Content = dtmmain.cxStyle1
              Width = 90
            end
            object tbvCDCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd Cliente'
              DataBinding.FieldName = 'CDCLIENTE'
              Options.Focusing = False
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social'
              DataBinding.FieldName = 'RZSOCIAL'
              Options.Focusing = False
              Width = 200
            end
            object tbvNMCLIENTE: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'NMCLIENTE'
              Options.Focusing = False
              Width = 200
            end
            object tbvNMREPRESENTANTE: TcxGridDBColumn
              Caption = 'Representante'
              DataBinding.FieldName = 'NMREPRESENTANTE'
              Options.Focusing = False
              Width = 200
            end
            object tbvNUFONE1CBRNC: TcxGridDBColumn
              Caption = 'Fone Cobran'#231'a'
              DataBinding.FieldName = 'NUFONE1CBRNC'
              Options.Focusing = False
            end
            object tbvNMSTDUPLICATA: TcxGridDBColumn
              Caption = 'Staus'
              DataBinding.FieldName = 'NMSTDUPLICATA'
              Options.Focusing = False
              Width = 60
            end
            object tbvDTEMISSAO: TcxGridDBColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              Options.Focusing = False
            end
            object tbvDTPRORROGACAO: TcxGridDBColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'DTPRORROGACAO'
              Options.Focusing = False
            end
            object tbvVLDUPLICATA: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLDUPLICATA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLSALDO: TcxGridDBColumn
              Caption = 'Saldo'
              DataBinding.FieldName = 'VLSALDO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLBAIXA: TcxGridDBColumn
              Caption = 'Baixa'
              DataBinding.FieldName = 'VLBAIXA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLRECEBIDO: TcxGridDBColumn
              Caption = 'Recebido'
              DataBinding.FieldName = 'VLRECEBIDO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLJUROSDIA: TcxGridDBColumn
              Caption = 'Juros dia'
              DataBinding.FieldName = 'VLJUROSDIA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLMULTADIA: TcxGridDBColumn
              Caption = 'Multa dia'
              DataBinding.FieldName = 'VLMULTADIA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLMULTA: TcxGridDBColumn
              Caption = 'Multa'
              DataBinding.FieldName = 'VLMULTA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLJUROS: TcxGridDBColumn
              Caption = 'Juros'
              DataBinding.FieldName = 'VLJUROS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLDESCONTO: TcxGridDBColumn
              Caption = 'Desconto'
              DataBinding.FieldName = 'VLDESCONTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLDEVOLUCAO: TcxGridDBColumn
              Caption = 'Devolu'#231#227'o'
              DataBinding.FieldName = 'VLDEVOLUCAO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvVLABATIMENTO: TcxGridDBColumn
              Caption = 'Abatimento'
              DataBinding.FieldName = 'VLABATIMENTO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvCDDUPLICATA: TcxGridDBColumn
              DataBinding.FieldName = 'CDDUPLICATA'
              Visible = False
            end
          end
          object grdLevel1: TcxGridLevel
            GridView = tbv
          end
        end
      end
      object pnlcobranca: TPanel
        Left = 0
        Top = 310
        Width = 957
        Height = 250
        Align = alBottom
        TabOrder = 1
        Visible = False
        object pnlCobrancalabel: TPanel
          Left = 1
          Top = 1
          Width = 955
          Height = 15
          Align = alTop
          Alignment = taLeftJustify
          BevelInner = bvLowered
          BevelOuter = bvNone
          Caption = 'Contato'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
        end
        object ntbitregcobranca: TNotebook
          Left = 1
          Top = 16
          Width = 955
          Height = 233
          Align = alClient
          TabOrder = 1
          OnPageChanged = ntbitregcobrancaPageChanged
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grddetail: TcxGrid
              Left = 0
              Top = 0
              Width = 955
              Height = 233
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              object tbvdetail: TcxGridDBTableView
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
                DataController.DataSource = dtsdetail
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                object tbvdetailNMUSUARIO: TcxGridDBColumn
                  Caption = 'Usu'#225'rio'
                  DataBinding.FieldName = 'NMUSUARIO'
                  Options.Focusing = False
                  Width = 120
                end
                object tbvdetailDTCONTATO: TcxGridDBColumn
                  Caption = 'Contato'
                  DataBinding.FieldName = 'DTCONTATO'
                  Options.Focusing = False
                  Width = 70
                end
                object tbvdetailDTAGENDAMENTO: TcxGridDBColumn
                  Caption = 'Agendamento'
                  DataBinding.FieldName = 'DTAGENDAMENTO'
                  Options.Focusing = False
                  Width = 75
                end
                object tbvdetailDSCONTATO: TcxGridDBColumn
                  Caption = 'Descri'#231#227'o do Contato'
                  DataBinding.FieldName = 'DSCONTATO'
                  Options.Focusing = False
                  Width = 450
                end
                object tbvdetailVLSALDO: TcxGridDBColumn
                  Caption = 'Saldo'
                  DataBinding.FieldName = 'VLSALDO'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Options.Focusing = False
                end
              end
              object grddetailLevel1: TcxGridLevel
                GridView = tbvdetail
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            HelpContext = 1
            Caption = 'Cadastro'
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pnlcobrancadados: TPanel
              Left = 0
              Top = 0
              Width = 955
              Height = 65
              Align = alTop
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object Label10: TLabel
                Left = 87
                Top = 8
                Width = 80
                Height = 13
                Caption = 'Dt Agendamento'
              end
              object Label11: TLabel
                Left = 3
                Top = 8
                Width = 51
                Height = 13
                Caption = 'Dt Contato'
              end
              object Label13: TLabel
                Left = 2
                Top = 48
                Width = 48
                Height = 13
                Caption = 'Descri'#231#227'o'
              end
              object edtDTAGENDAMENTO: TcxDBDateEdit
                Left = 87
                Top = 22
                DataBinding.DataField = 'DTAGENDAMENTO'
                DataBinding.DataSource = dtsitregcobranca
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                Width = 84
              end
              object edtdtcontato: TcxDBDateEdit
                Left = 3
                Top = 22
                DataBinding.DataField = 'DTCONTATO'
                DataBinding.DataSource = dtsitregcobranca
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 2
                Width = 84
              end
              object ckbaplicar: TCheckBox
                Left = 173
                Top = 22
                Width = 276
                Height = 17
                Caption = 'Aplicar para todos os contas a receber deste cliente'
                TabOrder = 0
                Visible = False
              end
            end
            object memdscontato: TcxDBMemo
              Left = 0
              Top = 65
              Align = alClient
              DataBinding.DataField = 'DSCONTATO'
              DataBinding.DataSource = dtsitregcobranca
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Height = 168
              Width = 955
            end
          end
          object TPage
            Left = 0
            Top = 0
            HelpContext = 2
            Caption = 'Historico'
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grdHistorico: TcxGrid
              Left = 0
              Top = 0
              Width = 955
              Height = 233
              Align = alClient
              TabOrder = 0
              object tbvhistorico: TcxGridDBTableView
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
                DataController.DataSource = dtshistorico
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.GroupByBox = False
                object tbvhistoricoDTEMISSAO: TcxGridDBColumn
                  Caption = 'Data'
                  DataBinding.FieldName = 'DTEMISSAO'
                  Options.Focusing = False
                end
                object tbvhistoricoNMSTREGCOBRANCA: TcxGridDBColumn
                  Caption = 'Status'
                  DataBinding.FieldName = 'NMSTREGCOBRANCA'
                  Options.Focusing = False
                  Width = 200
                end
                object tbvhistoricoNMUSUARIO: TcxGridDBColumn
                  Caption = 'Usuario'
                  DataBinding.FieldName = 'NMUSUARIO'
                  Options.Focusing = False
                  Width = 200
                end
              end
              object grdHistoricoLevel1: TcxGridLevel
                GridView = tbvhistorico
              end
            end
          end
        end
      end
      object pnlcliente: TPanel
        Left = 0
        Top = 0
        Width = 957
        Height = 153
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object pnlclientelabel: TPanel
          Left = 0
          Top = 0
          Width = 957
          Height = 15
          Align = alTop
          Alignment = taLeftJustify
          BevelInner = bvLowered
          BevelOuter = bvNone
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
        end
        object grdcliente: TcxGrid
          Left = 0
          Top = 15
          Width = 957
          Height = 138
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object tbvcliente: TcxGridDBTableView
            OnDblClick = tbvclienteDblClick
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
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.SaveBookmark.Enabled = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Enabled = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            OnCellDblClick = tbvclienteCellDblClick
            DataController.DataSource = dtscliente
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object tbvclienteCDCLIENTE: TcxGridDBColumn
              Caption = 'C'#243'd Cliente'
              DataBinding.FieldName = 'CDCLIENTE'
              Options.Focusing = False
              Styles.Content = dtmmain.cxStyle1
            end
            object tbvclienteRZSOCIAL: TcxGridDBColumn
              Caption = 'Raz'#227'o Social'
              DataBinding.FieldName = 'RZSOCIAL'
              Options.Focusing = False
              Width = 300
            end
            object tbvclienteNMCLIENTE: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'NMCLIENTE'
              Options.Focusing = False
              Width = 300
            end
            object tbvclienteNUFONE1CBRNC: TcxGridDBColumn
              Caption = 'Fone Cobran'#231'a'
              DataBinding.FieldName = 'NUFONE1CBRNC'
            end
            object tbvclienteBOPENDENTECOBRANCA: TcxGridDBColumn
              Caption = 'Pendente'
              DataBinding.FieldName = 'BOPENDENTECOBRANCA'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Width = 55
            end
          end
          object grdclienteLevel1: TcxGridLevel
            GridView = tbvcliente
          end
        end
      end
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 63
    Width = 1118
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Gerenciador de Contas a Receber'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
  end
  object trv: TTreeView
    Left = 0
    Top = 85
    Width = 157
    Height = 560
    Align = alLeft
    HideSelection = False
    Indent = 19
    ReadOnly = True
    TabOrder = 6
    OnChange = trvChange
    OnDragDrop = trvDragDrop
    OnDragOver = trvDragOver
    Items.NodeData = {
      03020000002A0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000000000001065300540041005400550053002E0000000000000000000000FF
      FFFFFFFFFFFFFF000000000000000000000000010843004F004200520041004E
      0043004100}
  end
  object act: TActionManager
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 564
    Top = 136
    StyleName = 'XP Style'
    object actImprimir: TAction
      Caption = 'Imprimir'
      Hint = 'Imprimir'
      ImageIndex = 3
      Visible = False
      OnExecute = actImprimirExecute
    end
    object actAtualizar: TAction
      Caption = 'Atualizar'
      Hint = 'Atualizar'
      ImageIndex = 12
      ShortCut = 116
      OnExecute = actAtualizarExecute
    end
    object actAbrirDuplicata: TAction
      Hint = 'Duplicata'
      ImageIndex = 32
      OnExecute = actAbrirDuplicataExecute
    end
    object actImprimirProtocolo: TAction
      Caption = '504 - Protocolo'
      OnExecute = actImprimirProtocoloExecute
    end
    object actnovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      ShortCut = 16462
      Visible = False
      OnExecute = actnovoExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      Enabled = False
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      Visible = False
      OnExecute = actSalvarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      Visible = False
      OnExecute = actCancelarExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      Enabled = False
      Hint = 'Excluir'
      ImageIndex = 5
      ShortCut = 16472
      Visible = False
      OnExecute = actExcluirExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      Enabled = False
      Hint = 'Editar'
      ImageIndex = 7
      ShortCut = 16453
      Visible = False
      OnExecute = actEditarExecute
    end
    object actHistorico: TAction
      Caption = 'Hist'#243'rico'
      Hint = 'Hist'#243'rico'
      ImageIndex = 79
      ShortCut = 16456
      Visible = False
      OnExecute = actHistoricoExecute
    end
    object actLista: TAction
      Caption = 'Lista'
      Hint = 'Lista'
      ImageIndex = 6
      ShortCut = 16460
      Visible = False
      OnExecute = actListaExecute
    end
    object actAbrirCliente: TAction
      Hint = 'Cliente'
      ImageIndex = 35
      OnExecute = actAbrirClienteExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actabrircliente2: TAction
      Hint = 'cliente'
      OnExecute = actabrircliente2Execute
    end
    object actemail: TAction
      Caption = 'Email'
      ImageIndex = 146
      OnExecute = actemailExecute
    end
    object actemailcartacobranca: TAction
      Caption = 'Carta Cobran'#231'a'
      ImageIndex = 146
      OnExecute = actemailcartacobrancaExecute
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
    Left = 536
    Top = 136
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
      Caption = 'mduplicata'
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
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
          ItemName = 'dxbrlrgbtnfechar'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmg1Bar1: TdxBar
      Caption = 'menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 374
      FloatTop = 62
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actAtualizar
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actImprimirProtocolo
      Category = 0
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = '&Registro'
      Category = 0
      MergeOrder = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
    end
    object dxBarSeparator1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actnovo
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actEditar
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actSalvar
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actLista
      Category = 0
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = actCancelar
      Category = 0
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = actHistorico
      Category = 0
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = actExcluir
      Category = 0
    end
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pmuimprimir
    end
    object btnemail: TdxBarLargeButton
      Action = actemail
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumemail
    end
    object dxBarButton1: TdxBarButton
      Action = actemailcartacobranca
      Category = 0
    end
  end
  object dts: TDataSource
    Left = 421
    Top = 136
  end
  object dtsdetail: TDataSource
    Left = 420
    Top = 180
  end
  object dtshistorico: TDataSource
    Left = 422
    Top = 228
  end
  object dtsitregcobranca: TDataSource
    OnStateChange = dtsitregcobrancaStateChange
    Left = 737
    Top = 164
  end
  object dtscliente: TDataSource
    Left = 422
    Top = 92
  end
  object pmuimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 801
    Top = 149
  end
  object pumemail: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 833
    Top = 149
  end
end

object frmcaixafinanceiro: Tfrmcaixafinanceiro
  Left = 436
  Top = 103
  ClientHeight = 552
  ClientWidth = 1258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grd: TcxGrid
    Left = 0
    Top = 66
    Width = 1258
    Height = 217
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      OnDblClick = tbvDblClick
      OnKeyDown = tbvKeyDown
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
      OnFocusedRecordChanged = tbvFocusedRecordChanged
      OnSelectionChanged = tbvSelectionChanged
      DataController.DataSource = dts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLDEPOSITO'
          Column = tbvVLDEPOSITO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          FieldName = 'VLPAGAMENTO'
          Column = tbvVLPAGAMENTO
        end
        item
          Format = 'R$ ,0.00;-R$ ,0.00'
          Kind = skSum
          OnGetText = grdDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText
          FieldName = 'VLSALDO'
          Column = tbvVLSALDO
        end>
      DataController.Summary.SummaryGroups = <>
      Images = dtmmain.imlMain
      OptionsBehavior.NavigatorHints = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object tbvCDMOVBANCARIO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CDMOVBANCARIO'
      end
      object tbvDTEMISSAO: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'DTEMISSAO'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object tbvNUMOVBANCARIO: TcxGridDBColumn
        Caption = 'Cheque'
        DataBinding.FieldName = 'NUMOVBANCARIO'
      end
      object tbvBOCONCILIADO: TcxGridDBColumn
        Caption = 'Concilia'#231#227'o'
        DataBinding.FieldName = 'BOCONCILIADO'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dtmmain.imlMain
        Properties.Items = <
          item
            Description = 'Conciliado'
            ImageIndex = 154
            Value = 'S'
          end
          item
            Description = 'Pr'#233'-Conciliado'
            ImageIndex = 153
            Value = 'P'
          end
          item
            Description = 'N'#227'o conciliado'
            ImageIndex = 152
            Value = 'N'
          end>
        Width = 80
      end
      object tbvNMMOVIMENTACAO: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'NMMOVIMENTACAO'
        Width = 195
      end
      object tbvDSHISTORICO: TcxGridDBColumn
        Caption = 'Hist'#243'rico'
        DataBinding.FieldName = 'DSHISTORICO'
        Width = 194
      end
      object tbvVLPAGAMENTO: TcxGridDBColumn
        Caption = 'D'#233'bito'
        DataBinding.FieldName = 'VLPAGAMENTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvVLDEPOSITO: TcxGridDBColumn
        Caption = 'Cr'#233'dito'
        DataBinding.FieldName = 'VLDEPOSITO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tbvVLSALDO: TcxGridDBColumn
        Caption = 'Saldo'
        DataBinding.FieldName = 'VLSALDO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Width = 180
      end
      object tbvCAIXA: TcxGridDBColumn
        Caption = 'Status Caixa'
        DataBinding.FieldName = 'CAIXA'
        Width = 100
      end
    end
    object grdDBTableView2: TcxGridDBTableView
      OnKeyDown = ExportarGradeExcel
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
      OnSelectionChanged = tbvextratoSelectionChanged
      DataController.DataSource = dtsextratoview
      DataController.DetailKeyFieldNames = 'CDEXTRATO'
      DataController.KeyFieldNames = 'CDEXTRATO'
      DataController.MasterKeyFieldNames = 'CDEXTRATO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdDBTableView2DTEMISSAO: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'DTEMISSAO'
      end
      object grdDBTableView2NUEXTRATO: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'NUEXTRATO'
      end
      object grdDBTableView2NMTPEXTRATO: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'NMTPEXTRATO'
        Width = 180
      end
      object grdDBTableView2NMCATEXTRATO: TcxGridDBColumn
        Caption = 'Categoria'
        DataBinding.FieldName = 'NMCATEXTRATO'
        Width = 180
      end
      object grdDBTableView2VLPAGAMENTO: TcxGridDBColumn
        Caption = 'Pagamento'
        DataBinding.FieldName = 'VLPAGAMENTO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdDBTableView2VLDEPOSITO: TcxGridDBColumn
        Caption = 'Dep'#243'sito'
        DataBinding.FieldName = 'VLDEPOSITO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object grdDBTableView2VLSALDO: TcxGridDBColumn
        Caption = 'Saldo'
        DataBinding.FieldName = 'VLSALDO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
    end
    object grdLevel1: TcxGridLevel
      GridView = tbv
      object grdLevel2: TcxGridLevel
        GridView = grdDBTableView2
        Visible = False
      end
    end
  end
  object spl1: TcxSplitter
    Left = 0
    Top = 283
    Width = 1258
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salBottom
    Control = ntb
    ExplicitWidth = 8
  end
  object ntb: TNotebook
    Left = 0
    Top = 291
    Width = 1258
    Height = 261
    Align = alBottom
    TabOrder = 6
    object TPage
      Left = 0
      Top = 0
      Caption = 'Caixa'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pgc: TcxPageControl
        Left = 0
        Top = 0
        Width = 1258
        Height = 261
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Properties.ActivePage = tbspagamento
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 261
        ClientRectRight = 1258
        ClientRectTop = 24
        object tbspagamento: TcxTabSheet
          Caption = 'Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 0
          ParentFont = False
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label1: TLabel
            Left = 24
            Top = 9
            Width = 24
            Height = 13
            Caption = 'Tipo:'
            Transparent = True
          end
          object Label12: TLabel
            Left = 4
            Top = 36
            Width = 44
            Height = 13
            Caption = 'Historico:'
            Transparent = True
          end
          object Label14: TLabel
            Left = 23
            Top = 59
            Width = 25
            Height = 13
            Caption = 'Para:'
            Transparent = True
          end
          object Label16: TLabel
            Left = 11
            Top = 74
            Width = 37
            Height = 13
            Caption = 'Observ:'
            Transparent = True
          end
          object Label15: TLabel
            Left = 493
            Top = 33
            Width = 27
            Height = 13
            Caption = 'Valor:'
            Transparent = True
          end
          object Label13: TLabel
            Left = 493
            Top = 9
            Width = 26
            Height = 13
            Caption = 'Data:'
            Transparent = True
          end
          object edtcdmovimentacaopagamento: TcxDBLookupComboBox
            Left = 52
            Top = 5
            DataBinding.DataField = 'CDMOVIMENTACAO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DropDownWidth = 700
            Properties.KeyFieldNames = 'CDMOVIMENTACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMMOVIMENTACAO'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 418
          end
          object edtdtemissaopagamento: TcxDBDateEdit
            Left = 533
            Top = 5
            DataBinding.DataField = 'DTEMISSAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 121
          end
          object edtvllancamentopagamento: TcxDBCalcEdit
            Left = 533
            Top = 27
            DataBinding.DataField = 'VLLANCAMENTO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 121
          end
          object edtdsobservacaopagamento: TcxDBMemo
            Left = 52
            Top = 74
            DataBinding.DataField = 'DSOBSERVACAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 89
            Width = 418
          end
          object edtdshistoricopagamento: TcxDBTextEdit
            Left = 52
            Top = 28
            DataBinding.DataField = 'DSHISTORICO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Width = 418
          end
          object edtdsnominalpagamento: TcxDBTextEdit
            Left = 52
            Top = 51
            DataBinding.DataField = 'DSNOMINAL'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            Width = 418
          end
        end
        object tbsdeposito: TcxTabSheet
          Caption = 'Dep'#243'sito'
          ImageIndex = 1
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label11: TLabel
            Left = 24
            Top = 9
            Width = 24
            Height = 13
            Caption = 'Tipo:'
            Transparent = True
          end
          object Label3: TLabel
            Left = 4
            Top = 36
            Width = 44
            Height = 13
            Caption = 'Historico:'
            Transparent = True
          end
          object Label7: TLabel
            Left = 23
            Top = 59
            Width = 25
            Height = 13
            Caption = 'Para:'
            Transparent = True
          end
          object Label8: TLabel
            Left = 11
            Top = 74
            Width = 37
            Height = 13
            Caption = 'Observ:'
            Transparent = True
          end
          object Label10: TLabel
            Left = 493
            Top = 9
            Width = 26
            Height = 13
            Caption = 'Data:'
            Transparent = True
          end
          object Label9: TLabel
            Left = 493
            Top = 33
            Width = 27
            Height = 13
            Caption = 'Valor:'
            Transparent = True
          end
          object edtcdmovimentacaodeposito: TcxDBLookupComboBox
            Left = 52
            Top = 5
            DataBinding.DataField = 'CDMOVIMENTACAO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DropDownWidth = 700
            Properties.KeyFieldNames = 'CDMOVIMENTACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMMOVIMENTACAO'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 418
          end
          object edtdtemissaodeposito: TcxDBDateEdit
            Left = 533
            Top = 5
            DataBinding.DataField = 'DTEMISSAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 121
          end
          object edtvllancamentodeposito: TcxDBCalcEdit
            Left = 533
            Top = 27
            DataBinding.DataField = 'VLLANCAMENTO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 121
          end
          object edtdsobservacaodeposito: TcxDBMemo
            Left = 52
            Top = 74
            DataBinding.DataField = 'DSOBSERVACAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 89
            Width = 418
          end
          object edtdshistoricodeposito: TcxDBTextEdit
            Left = 52
            Top = 28
            DataBinding.DataField = 'DSHISTORICO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Width = 418
          end
          object edtdsnominaldeposito: TcxDBTextEdit
            Left = 52
            Top = 51
            DataBinding.DataField = 'DSNOMINAL'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            Width = 418
          end
        end
        object tbsduplicata: TcxTabSheet
          Caption = 'Contas a Receber'
          ImageIndex = 2
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label21: TLabel
            Left = 4
            Top = 36
            Width = 44
            Height = 13
            Caption = 'Historico:'
            Transparent = True
          end
          object Label19: TLabel
            Left = 24
            Top = 9
            Width = 24
            Height = 13
            Caption = 'Tipo:'
            Transparent = True
          end
          object Label17: TLabel
            Left = 493
            Top = 9
            Width = 26
            Height = 13
            Caption = 'Data:'
            Transparent = True
          end
          object Label18: TLabel
            Left = 493
            Top = 33
            Width = 27
            Height = 13
            Caption = 'Valor:'
            Transparent = True
          end
          object Bevel1: TBevel
            Left = 0
            Top = 0
            Width = 1258
            Height = 52
            Align = alTop
          end
          object edtvllancamentoduplicata: TcxDBCalcEdit
            Left = 533
            Top = 27
            DataBinding.DataField = 'VLLANCAMENTO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 121
          end
          object edtcdmovimentacaoduplicata: TcxDBLookupComboBox
            Left = 52
            Top = 5
            DataBinding.DataField = 'CDMOVIMENTACAO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DropDownWidth = 700
            Properties.KeyFieldNames = 'CDMOVIMENTACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMMOVIMENTACAO'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 418
          end
          object edtdtemissaoduplicata: TcxDBDateEdit
            Left = 533
            Top = 5
            DataBinding.DataField = 'DTEMISSAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 121
          end
          object edtdshistoricoduplicata: TcxDBTextEdit
            Left = 52
            Top = 28
            DataBinding.DataField = 'DSHISTORICO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Width = 418
          end
          object grdduplicata: TcxGrid
            Left = 0
            Top = 52
            Width = 1258
            Height = 185
            Align = alClient
            TabOrder = 4
            LookAndFeel.NativeStyle = False
            object tbvduplicata: TcxGridDBTableView
              OnKeyDown = ExportarGradeExcel
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
              OnCellDblClick = tbvduplicataCellDblClick
              DataController.DataSource = dtsdetail
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLABATIMENTO'
                  Column = tbvduplicataVLABATIMENTO
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLBAIXA'
                  Column = tbvduplicataVLBAIXA
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLDESCONTO'
                  Column = tbvduplicataVLDESCONTO
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLDEVOLUCAO'
                  Column = tbvduplicataVLDEVOLUCAO
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLJURO'
                  Column = tbvduplicataVLJURO
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLLIQUIDO'
                  Column = tbvduplicataVLLIQUIDO
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLMULTA'
                  Column = tbvduplicataVLMULTA
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object tbvduplicataNUBAIXA: TcxGridDBColumn
                Caption = 'T'#237'tulo'
                DataBinding.FieldName = 'NUBAIXA'
                Styles.Content = dtmmain.cxStyle1
              end
              object tbvduplicataRZSOCIALC: TcxGridDBColumn
                Caption = 'Cliente'
                DataBinding.FieldName = 'RZSOCIALC'
                Width = 118
              end
              object tbvduplicataDSHISTORICO: TcxGridDBColumn
                Caption = 'Hist'#243'rico'
                DataBinding.FieldName = 'DSHISTORICOD'
                Width = 141
              end
              object tbvduplicataVLBAIXA: TcxGridDBColumn
                Caption = 'Baixa'
                DataBinding.FieldName = 'VLBAIXA'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvduplicataVLMULTA: TcxGridDBColumn
                Caption = 'Multa'
                DataBinding.FieldName = 'VLMULTA'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvduplicataVLJURO: TcxGridDBColumn
                Caption = 'Juros'
                DataBinding.FieldName = 'VLJURO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvduplicataVLDESCONTO: TcxGridDBColumn
                Caption = 'Desconto'
                DataBinding.FieldName = 'VLDESCONTO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvduplicataVLABATIMENTO: TcxGridDBColumn
                Caption = 'Abatimento'
                DataBinding.FieldName = 'VLABATIMENTO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvduplicataVLDEVOLUCAO: TcxGridDBColumn
                Caption = 'Devolu'#231#227'o'
                DataBinding.FieldName = 'VLDEVOLUCAO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvduplicataVLLIQUIDO: TcxGridDBColumn
                Caption = 'L'#237'quido'
                DataBinding.FieldName = 'VLLIQUIDO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
            end
            object grdduplicataLevel1: TcxGridLevel
              GridView = tbvduplicata
            end
          end
        end
        object tbsautpagto: TcxTabSheet
          Caption = 'Contas a Pagar'
          ImageIndex = 3
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label22: TLabel
            Left = 493
            Top = 9
            Width = 26
            Height = 13
            Caption = 'Data:'
            Transparent = True
          end
          object Label23: TLabel
            Left = 493
            Top = 33
            Width = 27
            Height = 13
            Caption = 'Valor:'
            Transparent = True
          end
          object Label24: TLabel
            Left = 4
            Top = 36
            Width = 44
            Height = 13
            Caption = 'Historico:'
            Transparent = True
          end
          object Label20: TLabel
            Left = 24
            Top = 9
            Width = 24
            Height = 13
            Caption = 'Tipo:'
            Transparent = True
          end
          object Bevel2: TBevel
            Left = 0
            Top = 0
            Width = 1258
            Height = 52
            Align = alTop
          end
          object edtcdmovimentacaoautpagto: TcxDBLookupComboBox
            Left = 52
            Top = 5
            DataBinding.DataField = 'CDMOVIMENTACAO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DropDownWidth = 700
            Properties.KeyFieldNames = 'CDMOVIMENTACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMMOVIMENTACAO'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 418
          end
          object edtdtemissaoautpagto: TcxDBDateEdit
            Left = 533
            Top = 5
            DataBinding.DataField = 'DTEMISSAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 121
          end
          object edtvllancamentoautpagto: TcxDBCalcEdit
            Left = 533
            Top = 27
            DataBinding.DataField = 'VLLANCAMENTO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 121
          end
          object edtdshistoricoautpagto: TcxDBTextEdit
            Left = 52
            Top = 28
            DataBinding.DataField = 'DSHISTORICO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Width = 418
          end
          object grdautpagto: TcxGrid
            Left = 0
            Top = 52
            Width = 1258
            Height = 185
            Align = alClient
            PopupMenu = pumbaixa
            TabOrder = 4
            LookAndFeel.NativeStyle = False
            object tbvautpagto: TcxGridDBTableView
              OnKeyDown = ExportarGradeExcel
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
              OnCellDblClick = tbvautpagtoCellDblClick
              DataController.DataSource = dtsdetail
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLABATIMENTO'
                  Column = cxGridDBColumn6
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLBAIXA'
                  Column = cxGridDBColumn2
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLDESCONTO'
                  Column = cxGridDBColumn5
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLDEVOLUCAO'
                  Column = cxGridDBColumn7
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLJURO'
                  Column = cxGridDBColumn4
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLLIQUIDO'
                  Column = cxGridDBColumn8
                end
                item
                  Format = 'R$ ,0.00;-R$ ,0.00'
                  Kind = skSum
                  FieldName = 'VLMULTA'
                  Column = cxGridDBColumn3
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'T'#237'tulo'
                DataBinding.FieldName = 'NUBAIXA'
                Styles.Content = dtmmain.cxStyle1
              end
              object tbvautpagtoRZSOCIALF: TcxGridDBColumn
                Caption = 'Fornecedor'
                DataBinding.FieldName = 'RZSOCIALF'
                Width = 118
              end
              object tbvautpagtoColumn1: TcxGridDBColumn
                Caption = 'Hist'#243'rico'
                DataBinding.FieldName = 'DSHISTORICOA'
                Width = 141
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'Baixa'
                DataBinding.FieldName = 'VLBAIXA'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = 'Multa'
                DataBinding.FieldName = 'VLMULTA'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = 'Juros'
                DataBinding.FieldName = 'VLJURO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = 'Desconto'
                DataBinding.FieldName = 'VLDESCONTO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'Abatimento'
                DataBinding.FieldName = 'VLABATIMENTO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = 'Devolu'#231#227'o'
                DataBinding.FieldName = 'VLDEVOLUCAO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = 'L'#237'quido'
                DataBinding.FieldName = 'VLLIQUIDO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = tbvautpagto
            end
          end
        end
        object tbsadntcliente: TcxTabSheet
          Caption = 'Adiantamento Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 4
          ParentFont = False
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label27: TLabel
            Left = 316
            Top = 30
            Width = 27
            Height = 13
            Caption = 'Valor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = 22
            Top = 30
            Width = 26
            Height = 13
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label30: TLabel
            Left = 11
            Top = 95
            Width = 37
            Height = 13
            Caption = 'Observ:'
            Transparent = True
          end
          object Label29: TLabel
            Left = 23
            Top = 80
            Width = 25
            Height = 13
            Caption = 'Para:'
            Transparent = True
          end
          object Label28: TLabel
            Left = 4
            Top = 57
            Width = 44
            Height = 13
            Caption = 'Historico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 10
            Top = 7
            Width = 36
            Height = 13
            Caption = 'C'#243'digo:'
            Transparent = True
          end
          object txtnubaixaadntcliente: TDBText
            Left = 52
            Top = 7
            Width = 65
            Height = 17
            DataField = 'NUBAIXA'
            DataSource = dtsdetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnDblClick = txtnubaixaadntclienteDblClick
          end
          object edtdtemissaoadntcliente: TcxDBDateEdit
            Left = 52
            Top = 26
            DataBinding.DataField = 'DTEMISSAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 121
          end
          object edtvllancamentoadntcliente: TcxDBCalcEdit
            Left = 349
            Top = 26
            DataBinding.DataField = 'VLLANCAMENTO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 121
          end
          object edtdsobservacaoadntcliente: TcxDBMemo
            Left = 52
            Top = 95
            DataBinding.DataField = 'DSOBSERVACAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 89
            Width = 418
          end
          object edtdshistoricoadntcliente: TcxDBTextEdit
            Left = 52
            Top = 49
            DataBinding.DataField = 'DSHISTORICO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Width = 418
          end
          object edtdsnominaladntcliente: TcxDBTextEdit
            Left = 52
            Top = 72
            DataBinding.DataField = 'DSNOMINAL'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Width = 418
          end
        end
        object tbsadntfornecedor: TcxTabSheet
          Caption = 'Adiantamento Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 5
          ParentFont = False
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label32: TLabel
            Left = 20
            Top = 30
            Width = 26
            Height = 13
            Caption = 'Data:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label33: TLabel
            Left = 315
            Top = 30
            Width = 27
            Height = 13
            Caption = 'Valor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label34: TLabel
            Left = 2
            Top = 57
            Width = 44
            Height = 13
            Caption = 'Historico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label35: TLabel
            Left = 21
            Top = 80
            Width = 25
            Height = 13
            Caption = 'Para:'
            Transparent = True
          end
          object Label36: TLabel
            Left = 9
            Top = 95
            Width = 37
            Height = 13
            Caption = 'Observ:'
            Transparent = True
          end
          object Label4: TLabel
            Left = 10
            Top = 8
            Width = 36
            Height = 13
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object txtnubaixaadntfornecedor: TDBText
            Left = 52
            Top = 7
            Width = 65
            Height = 17
            DataField = 'NUBAIXA'
            DataSource = dtsdetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            OnDblClick = txtnubaixaadntfornecedorDblClick
          end
          object edtdtemissaoadntfornecedor: TcxDBDateEdit
            Left = 52
            Top = 26
            DataBinding.DataField = 'DTEMISSAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 121
          end
          object edtvllancamentoadntfornecedor: TcxDBCalcEdit
            Left = 349
            Top = 26
            DataBinding.DataField = 'VLLANCAMENTO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 121
          end
          object edtdsobservacaoadntfornecedor: TcxDBMemo
            Left = 52
            Top = 95
            DataBinding.DataField = 'DSOBSERVACAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 89
            Width = 418
          end
          object edtdshistoricoadntfornecedor: TcxDBTextEdit
            Left = 52
            Top = 49
            DataBinding.DataField = 'DSHISTORICO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Width = 418
          end
          object edtdsnominaladntfornecedor: TcxDBTextEdit
            Left = 52
            Top = 72
            DataBinding.DataField = 'DSNOMINAL'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Width = 418
          end
        end
        object tbstranferencia: TcxTabSheet
          Caption = 'Transfer'#234'ncia'
          ImageIndex = 6
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label37: TLabel
            Left = 24
            Top = 9
            Width = 24
            Height = 13
            Caption = 'Tipo:'
            Transparent = True
          end
          object Label40: TLabel
            Left = 4
            Top = 36
            Width = 44
            Height = 13
            Caption = 'Historico:'
            Transparent = True
          end
          object Label41: TLabel
            Left = 23
            Top = 59
            Width = 25
            Height = 13
            Caption = 'Para:'
            Transparent = True
          end
          object Label42: TLabel
            Left = 11
            Top = 74
            Width = 37
            Height = 13
            Caption = 'Observ:'
            Transparent = True
          end
          object Label38: TLabel
            Left = 493
            Top = 9
            Width = 26
            Height = 13
            Caption = 'Data:'
            Transparent = True
          end
          object Label39: TLabel
            Left = 493
            Top = 33
            Width = 27
            Height = 13
            Caption = 'Valor:'
            Transparent = True
          end
          object edtcdmovimentacaotransferencia: TcxDBLookupComboBox
            Left = 52
            Top = 5
            DataBinding.DataField = 'CDMOVIMENTACAO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DropDownWidth = 700
            Properties.KeyFieldNames = 'CDMOVIMENTACAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMMOVIMENTACAO'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 418
          end
          object edtdtemissaotransferencia: TcxDBDateEdit
            Left = 533
            Top = 5
            DataBinding.DataField = 'DTEMISSAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 121
          end
          object edtvllancamentotransferencia: TcxDBCalcEdit
            Left = 533
            Top = 27
            DataBinding.DataField = 'VLLANCAMENTO'
            DataBinding.DataSource = dtsmovbancario
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 121
          end
          object edtdsobservacaotransferencia: TcxDBMemo
            Left = 52
            Top = 74
            DataBinding.DataField = 'DSOBSERVACAO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 89
            Width = 418
          end
          object edtdshistoricotransferencia: TcxDBTextEdit
            Left = 52
            Top = 28
            DataBinding.DataField = 'DSHISTORICO'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Width = 418
          end
          object edtdsnominaltransferencia: TcxDBTextEdit
            Left = 52
            Top = 51
            DataBinding.DataField = 'DSNOMINAL'
            DataBinding.DataSource = dtsmovbancario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            Width = 418
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Concilia'#231#227'o'
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 18
        Width = 1258
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object grdextrato: TcxGrid
        Left = 0
        Top = 40
        Width = 1258
        Height = 221
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbvextrato: TcxGridDBTableView
          OnKeyDown = ExportarGradeExcel
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
          OnCustomDrawCell = tbvextratoCustomDrawCell
          OnSelectionChanged = tbvextratoSelectionChanged
          DataController.DataSource = dtsextrato
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLPAGAMENTO'
              Column = tbvextratoVLPAGAMENTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDEPOSITO'
              Column = tbvextratoVLDEPOSITO
            end
            item
              Format = 'Saldo Final R$ ,0.00;Saldo Final -R$ ,0.00'
              Kind = skSum
              OnGetText = tbvextratoTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText
              FieldName = 'VLSALDO'
              Column = tbvextratoVLSALDO
            end>
          DataController.Summary.SummaryGroups = <>
          Images = dtmmain.imlMain
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvextratoCDEXTRATO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDEXTRATO'
            Visible = False
          end
          object tbvextratoDTEMISSAO: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTEMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object tbvextratoNUEXTRATO: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'NUEXTRATO'
            Width = 64
          end
          object tbvextratoBOCONCILIADO: TcxGridDBColumn
            Caption = 'Concilia'#231#227'o'
            DataBinding.FieldName = 'BOCONCILIADO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = dtmmain.imlMain
            Properties.Items = <
              item
                Description = 'Pr'#233'-Conciliado'
                ImageIndex = 155
                Value = 'P'
              end
              item
                Description = 'Conciliado'
                ImageIndex = 154
                Value = 'S'
              end
              item
                Description = 'N'#227'o conciliado'
                ImageIndex = 152
                Value = 'N'
              end>
            Width = 80
          end
          object tbvextratoNMTPEXTRATO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'NMTPEXTRATO'
            Width = 195
          end
          object tbvextratoNMCATEXTRATO: TcxGridDBColumn
            Caption = 'Categoria'
            DataBinding.FieldName = 'NMCATEXTRATO'
            Width = 194
          end
          object tbvextratoVLPAGAMENTO: TcxGridDBColumn
            Caption = 'Pagamento'
            DataBinding.FieldName = 'VLPAGAMENTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvextratoVLDEPOSITO: TcxGridDBColumn
            Caption = 'Dep'#243'sito'
            DataBinding.FieldName = 'VLDEPOSITO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvextratoVLSALDO: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'VLSALDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 130
          end
          object tbvextratoBOATIVAR: TcxGridDBColumn
            DataBinding.FieldName = 'BOATIVAR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
          end
        end
        object grdextratoLevel1: TcxGridLevel
          GridView = tbvextrato
        end
      end
      object pnl: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Extrato Banc'#225'rio'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
  end
  object lbl1: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Caixa Financeiro'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -17
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object dts: TDataSource
    Left = 115
    Top = 129
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 475
    Top = 197
  end
  object dtsmovbancario: TDataSource
    DataSet = cdsmovbancario
    Left = 507
    Top = 149
  end
  object sdsmovbancario: TSQLDataSet
    CommandText = 
      'SELECT * FROM MOVBANCARIO WHERE CDEMPRESA=:CDEMPRESA AND CDMOVBA' +
      'NCARIO=:CDMOVBANCARIO'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'CDMOVBANCARIO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 423
    Top = 149
    object sdsmovbancarioCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmovbancarioCDEXTRATO: TIntegerField
      FieldName = 'CDEXTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmovbancarioCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmovbancarioCDMOVIMENTACAO: TIntegerField
      FieldName = 'CDMOVIMENTACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmovbancarioNUMOVBANCARIO: TStringField
      FieldName = 'NUMOVBANCARIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsmovbancarioDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmovbancarioCDNATUREZA: TStringField
      FieldName = 'CDNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsmovbancarioDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsmovbancarioDSNOMINAL: TStringField
      FieldName = 'DSNOMINAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsmovbancarioBOCONCILIADO: TStringField
      FieldName = 'BOCONCILIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsmovbancarioDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsmovbancarioVLDEPOSITO: TFMTBCDField
      FieldName = 'VLDEPOSITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsmovbancarioVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsmovbancarioVLPAGAMENTO: TFMTBCDField
      FieldName = 'VLPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsmovbancarioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmovbancarioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmovbancarioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmovbancarioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmovbancarioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmovbancarioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsmovbancarioCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmovbancarioCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmovbancarioCDMOVBANCARIODESTINO: TIntegerField
      FieldName = 'CDMOVBANCARIODESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmovbancarioVLLANCAMENTO: TFMTBCDField
      FieldName = 'VLLANCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsmovbancarioNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmovbancarioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsmovbancarioCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmovbancarioCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmovbancarioCDCONTADESTINO: TIntegerField
      FieldName = 'CDCONTADESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsmovbancarioARQUIVORETORNO: TBlobField
      FieldName = 'ARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsmovbancarioNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dspmovbancario: TDataSetProvider
    DataSet = sdsmovbancario
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 451
    Top = 149
  end
  object cdsmovbancario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspmovbancario'
    Left = 479
    Top = 149
    object cdsmovbancarioCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmovbancarioCDEXTRATO: TIntegerField
      FieldName = 'CDEXTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmovbancarioCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmovbancarioCDMOVIMENTACAO: TIntegerField
      FieldName = 'CDMOVIMENTACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmovbancarioNUMOVBANCARIO: TStringField
      FieldName = 'NUMOVBANCARIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsmovbancarioDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmovbancarioVLLANCAMENTO: TFMTBCDField
      FieldName = 'VLLANCAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsmovbancarioCDNATUREZA: TStringField
      FieldName = 'CDNATUREZA'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsmovbancarioDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsmovbancarioDSNOMINAL: TStringField
      FieldName = 'DSNOMINAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsmovbancarioBOCONCILIADO: TStringField
      FieldName = 'BOCONCILIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsmovbancarioDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsmovbancarioVLDEPOSITO: TFMTBCDField
      FieldName = 'VLDEPOSITO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsmovbancarioVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsmovbancarioVLPAGAMENTO: TFMTBCDField
      FieldName = 'VLPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsmovbancariosdsdetail: TDataSetField
      FieldName = 'sdsdetail'
    end
    object cdsmovbancarioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmovbancarioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmovbancarioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmovbancarioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmovbancarioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmovbancarioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsmovbancarioCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmovbancarioCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmovbancarioCDMOVBANCARIODESTINO: TIntegerField
      FieldName = 'CDMOVBANCARIODESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmovbancarioNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmovbancarioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsmovbancarioCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmovbancarioCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmovbancarioCDCONTADESTINO: TIntegerField
      FieldName = 'CDCONTADESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsmovbancarioARQUIVORETORNO: TBlobField
      FieldName = 'ARQUIVORETORNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsmovbancarioNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dts1: TDataSource
    DataSet = sdsmovbancario
    Left = 583
    Top = 149
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdsmovbancariosdsdetail
    Params = <>
    Left = 447
    Top = 197
    object cdsdetailCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
    end
    object cdsdetailCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
    end
    object cdsdetailCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
    end
    object cdsdetailCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
    end
    object cdsdetailCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
    end
    object cdsdetailCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
    end
    object cdsdetailCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
    end
    object cdsdetailNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      Size = 10
    end
    object cdsdetailDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsdetailVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      Precision = 15
      Size = 2
    end
    object cdsdetailVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      Precision = 15
      Size = 2
    end
    object cdsdetailRZSOCIALC: TStringField
      FieldName = 'RZSOCIALC'
      Size = 100
    end
    object cdsdetailRZSOCIALF: TStringField
      FieldName = 'RZSOCIALF'
      Size = 100
    end
    object cdsdetailVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailDSHISTORICOD: TStringField
      FieldName = 'DSHISTORICOD'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailDSHISTORICOA: TStringField
      FieldName = 'DSHISTORICOA'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDADNTCLIENTEDESTINO: TIntegerField
      FieldName = 'CDADNTCLIENTEDESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsdetailPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT B.*'#13#10',C.RZSOCIAL RZSOCIALC'#13#10',F.RZSOCIAL RZSOCIALF'#13#10',D.DSH' +
      'ISTORICO DSHISTORICOD'#13#10',A.DSHISTORICO DSHISTORICOA'#13#10'FROM BAIXA B' +
      ' '#13#10'LEFT JOIN DUPLICATA D ON D.CDDUPLICATA=B.CDDUPLICATA AND D.CD' +
      'EMPRESA=B.CDEMPRESA'#13#10'LEFT JOIN CLIENTE C ON C.CDCLIENTE=D.CDCLIE' +
      'NTE AND C.CDEMPRESA=D.CDEMPRESA'#13#10'LEFT JOIN AUTPAGTO A ON A.CDAUT' +
      'PAGTO=B.CDAUTPAGTO AND A.CDEMPRESA=B.CDEMPRESA'#13#10'LEFT JOIN FORNEC' +
      'EDOR F ON F.CDFORNECEDOR=A.CDFORNECEDOR AND F.CDEMPRESA=A.CDEMPR' +
      'ESA'#13#10'WHERE B.CDEMPRESA=:CDEMPRESA AND B.CDMOVBANCARIO=:CDMOVBANC' +
      'ARIO'
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
        Name = 'CDMOVBANCARIO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 419
    Top = 197
    object sdsdetailCDBAIXA: TIntegerField
      FieldName = 'CDBAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDMOVBANCARIO: TIntegerField
      FieldName = 'CDMOVBANCARIO'
    end
    object sdsdetailCDTPBAIXA: TIntegerField
      FieldName = 'CDTPBAIXA'
    end
    object sdsdetailCDADNTCLIENTE: TIntegerField
      FieldName = 'CDADNTCLIENTE'
    end
    object sdsdetailCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
    end
    object sdsdetailCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
    end
    object sdsdetailCDADNTFORNECEDOR: TIntegerField
      FieldName = 'CDADNTFORNECEDOR'
    end
    object sdsdetailCDCHEQUE: TIntegerField
      FieldName = 'CDCHEQUE'
    end
    object sdsdetailNUBAIXA: TStringField
      FieldName = 'NUBAIXA'
      Size = 10
    end
    object sdsdetailDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsdetailVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLJURO: TFMTBCDField
      FieldName = 'VLJURO'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      Precision = 15
      Size = 2
    end
    object sdsdetailVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      Precision = 15
      Size = 2
    end
    object sdsdetailRZSOCIALC: TStringField
      FieldName = 'RZSOCIALC'
      Size = 100
    end
    object sdsdetailRZSOCIALF: TStringField
      FieldName = 'RZSOCIALF'
      Size = 100
    end
    object sdsdetailVLJURONRECEBIDO: TFMTBCDField
      FieldName = 'VLJURONRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailDSHISTORICOD: TStringField
      FieldName = 'DSHISTORICOD'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailDSHISTORICOA: TStringField
      FieldName = 'DSHISTORICOA'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDNEGOCIACAOENTRADA: TIntegerField
      FieldName = 'CDNEGOCIACAOENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDADNTCLIENTEDESTINO: TIntegerField
      FieldName = 'CDADNTCLIENTEDESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsdetailPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
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
    Left = 1000
    Top = 101
    DockControlHeights = (
      0
      0
      43
      0)
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
    object bmg1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'caixa'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 21
      DockingStyle = dsTop
      FloatLeft = 226
      FloatTop = 83
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cbx1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 235
          Visible = True
          ItemName = 'cbxcdconta'
        end
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end
        item
          Visible = True
          ItemName = 'edtdti2'
        end
        item
          Visible = True
          ItemName = 'cxBarEditItem2'
        end
        item
          Visible = True
          ItemName = 'edtdtf2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object bmg1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Concilia'#231#227'o'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 152
      FloatTop = 145
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'btsincronizar'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'lblbconciliar'
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
          ItemName = 'cbxcdconta'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton47'
        end
        item
          Visible = True
          ItemName = 'dxBarButton46'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem10'
        end>
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Data'
      Category = 0
      Hint = 'Data'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'At'#233
      Category = 0
      Hint = 'At'#233
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'Novo'
      Category = 0
      Hint = 'Novo'
      Visible = ivAlways
      OnClick = dxBarLargeButton6Click
    end
    object cbx1: TcxBarEditItem
      Caption = 'Conta'
      Category = 0
      Hint = 'Conta'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cbxcdconta: TdxBarCombo
      Caption = 'Conta'
      Category = 0
      Hint = 'Conta'
      Visible = ivAlways
      OnChange = cbxcdcontaChange
      Width = 90
      ItemIndex = -1
    end
    object dxBarButton2: TdxBarButton
      Action = actmovbancario
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = actEditar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = actExcluir
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton11: TdxBarButton
      Action = actfechar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem2: TdxBarSubItem
      Action = actVisualizar
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton30'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = actcaixa
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton3: TdxBarButton
      Action = actconciliacao
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarButton4: TdxBarButton
      Action = actimportar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton12: TdxBarButton
      Action = actGerarMovimento
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem3: TdxBarSubItem
      Action = actVisualizar
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end>
    end
    object dxBarButton13: TdxBarButton
      Action = actconciliado
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarButton14: TdxBarButton
      Action = actnconciliado
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarButton15: TdxBarButton
      Action = acttodos
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
    end
    object dxBarButton16: TdxBarButton
      Action = actconciliar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton18: TdxBarButton
      Action = actChequePagamento
      Category = 0
    end
    object dxBarSubItem4: TdxBarSubItem
      Action = actpreconciliar
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end>
    end
    object dxBarButton19: TdxBarButton
      Action = actdatavalor
      Category = 0
    end
    object dxBarSeparator1: TdxBarSeparator
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Action = actPagamento
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object dxBarButton20: TdxBarButton
      Action = actDeposito
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object dxBarButton21: TdxBarButton
      Action = actTodosvalor
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object lblbconciliar: TdxBarStatic
      Category = 0
      Style = cxStyle1
      Visible = ivAlways
    end
    object dxBarButton22: TdxBarButton
      Action = actlink
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actexcluirextrato
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton23: TdxBarButton
      Action = actDesconciliar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object btsincronizar: TdxBarButton
      Action = actsincronizar
      Category = 0
      ButtonStyle = bsChecked
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem5: TdxBarSubItem
      Action = actrecalcular
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end>
    end
    object dxBarButton24: TdxBarButton
      Action = actsaldoconta
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = actsaldoextrato
      Category = 0
    end
    object edtdti2: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      OnChange = edtdti2Change
      Width = 80
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtdtf2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnChange = edtdti2Change
      Width = 80
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarButton29: TdxBarButton
      Action = actretorno
      Category = 0
    end
    object dxBarButton30: TdxBarButton
      Action = actextratoview
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarSubItem7: TdxBarSubItem
      Action = actopcoes
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem8'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton29'
        end
        item
          Visible = True
          ItemName = 'dxBarButton56'
        end>
    end
    object dxBarSubItem8: TdxBarSubItem
      Action = actcaixamenu
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton31'
        end
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end>
    end
    object dxBarButton31: TdxBarButton
      Action = actabrircaixa
      Category = 0
    end
    object dxBarButton32: TdxBarButton
      Action = actfecharcaixa
      Category = 0
    end
    object dxBarButton33: TdxBarButton
      Action = acttransferencia
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton34: TdxBarButton
      Action = actdespesa
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton35: TdxBarButton
      Action = actadntcliente
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton36: TdxBarButton
      Action = actadntfornecedor
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton37: TdxBarButton
      Action = actreceita
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem9: TdxBarSubItem
      Action = actnovo
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarButton34'
        end
        item
          Visible = True
          ItemName = 'dxBarButton35'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end>
    end
    object dxBarButton8: TdxBarButton
      Action = actAbrir
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarSubItem6: TdxBarSubItem
      Action = actnovo
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end
        item
          Visible = True
          ItemName = 'dxBarButton45'
        end
        item
          Visible = True
          ItemName = 'dxBarButton44'
        end
        item
          Visible = True
          ItemName = 'dxBarButton43'
        end
        item
          Visible = True
          ItemName = 'dxBarButton42'
        end
        item
          Visible = True
          ItemName = 'dxBarButton41'
        end>
    end
    object dxBarButton40: TdxBarButton
      Action = actmovbancario
      Category = 0
    end
    object dxBarButton41: TdxBarButton
      Action = acttransferencia
      Category = 0
    end
    object dxBarButton42: TdxBarButton
      Action = actadntfornecedor
      Category = 0
    end
    object dxBarButton43: TdxBarButton
      Action = actadntcliente
      Category = 0
    end
    object dxBarButton44: TdxBarButton
      Action = actdespesa
      Category = 0
    end
    object dxBarButton45: TdxBarButton
      Action = actreceita
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actAbrir
      Category = 0
    end
    object dxBarButton46: TdxBarButton
      Action = actExcluir
      Category = 0
    end
    object dxBarButton47: TdxBarButton
      Action = actEditar
      Category = 0
    end
    object dxBarButton48: TdxBarButton
      Action = actimprimirmovbancario2
      Category = 0
    end
    object dxBarButton49: TdxBarButton
      Action = actimprimirmovbancario
      Category = 0
    end
    object dxBarButton50: TdxBarButton
      Action = actextratocaixa
      Category = 0
    end
    object dxBarSubItem10: TdxBarSubItem
      Action = actopcoes
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem11'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton51'
        end
        item
          Visible = True
          ItemName = 'dxBarButton57'
        end>
    end
    object dxBarSubItem11: TdxBarSubItem
      Action = actcaixamenu
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton52'
        end
        item
          Visible = True
          ItemName = 'dxBarButton53'
        end>
    end
    object dxBarSubItem12: TdxBarSubItem
      Action = actrecalcular
      Category = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton54'
        end
        item
          Visible = True
          ItemName = 'dxBarButton55'
        end>
    end
    object dxBarButton51: TdxBarButton
      Action = actretorno
      Category = 0
    end
    object dxBarButton52: TdxBarButton
      Action = actabrircaixa
      Category = 0
    end
    object dxBarButton53: TdxBarButton
      Action = actfecharcaixa
      Category = 0
    end
    object dxBarButton54: TdxBarButton
      Action = actsaldoconta
      Category = 0
    end
    object dxBarButton55: TdxBarButton
      Action = actsaldoextrato
      Category = 0
    end
    object dxBarButton56: TdxBarButton
      Action = actdetail
      Category = 0
    end
    object dxBarButton57: TdxBarButton
      Action = actdetail
      Category = 0
    end
    object dxBarButton58: TdxBarButton
      Action = actextratomovanalitico
      Category = 0
    end
    object dxBarButton59: TdxBarButton
      Action = actextratocaixa
      Category = 0
    end
    object dxBarButton60: TdxBarButton
      Action = actimprimirmovbancario
      Category = 0
    end
    object dxBarButton61: TdxBarButton
      Action = actimprimirmovbancario2
      Category = 0
    end
    object btnimprimir: TdxBarButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 964
    Top = 101
    object actmovbancario: TAction
      Caption = 'Movimento Caixa'
      ImageIndex = 18
      ShortCut = 16462
      OnExecute = actmovbancarioExecute
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
    object actImprimir: TAction
      Caption = 'Imprimir'
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
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actVisualizar: TAction
      Caption = 'Visualizar'
      OnExecute = actVisualizarExecute
    end
    object actcaixa: TAction
      AutoCheck = True
      Caption = 'Caixa'
      GroupIndex = 1
      ShortCut = 24689
      OnExecute = actcaixaExecute
    end
    object actconciliacao: TAction
      AutoCheck = True
      Caption = 'Concilia'#231#227'o'
      GroupIndex = 1
      ShortCut = 24690
      OnExecute = actconciliacaoExecute
    end
    object actimportar: TAction
      Caption = 'Importar'
      ImageIndex = 86
      OnExecute = actimportarExecute
    end
    object actGerarMovimento: TAction
      Caption = 'Gerar Movimento'
      Enabled = False
      ImageIndex = 18
      OnExecute = actGerarMovimentoExecute
    end
    object actvisualizarc: TAction
      Caption = 'Visualizar'
    end
    object actChequePagamento: TAction
      Caption = 'Cheque+Pagamento'
      OnExecute = actChequePagamentoExecute
    end
    object actdatavalor: TAction
      Caption = 'Data+Valor'
      OnExecute = actdatavalorExecute
    end
    object actpreconciliar: TAction
      Caption = 'Pr'#233'-Conciliar'
      ImageIndex = 153
      OnExecute = actpreconciliarExecute
    end
    object actconciliar: TAction
      Caption = 'Conciliar'
      ImageIndex = 57
      OnExecute = actconciliarExecute
    end
    object actconciliado: TAction
      Caption = 'Conciliado'
      GroupIndex = 1
      ImageIndex = 154
      OnExecute = On_set_filtro
    end
    object actnconciliado: TAction
      Caption = 'N'#227'o Conciliado'
      GroupIndex = 1
      ImageIndex = 152
      OnExecute = On_set_filtro
    end
    object acttodos: TAction
      Caption = 'Todos'
      GroupIndex = 1
      ImageIndex = 144
      OnExecute = On_set_filtro
    end
    object actPagamento: TAction
      Caption = 'Pagamento'
      GroupIndex = 2
      ImageIndex = 31
      OnExecute = On_set_filtro
    end
    object actDeposito: TAction
      Caption = 'Dep'#243'sito'
      GroupIndex = 2
      ImageIndex = 32
      OnExecute = On_set_filtro
    end
    object actTodosvalor: TAction
      Caption = 'Todos'
      Checked = True
      GroupIndex = 2
      OnExecute = On_set_filtro
    end
    object actlink: TAction
      Caption = 'Link'
      OnExecute = actlinkExecute
    end
    object actexcluirextrato: TAction
      Caption = 'Excluir'
      ImageIndex = 5
      OnExecute = actexcluirextratoExecute
    end
    object actDesconciliar: TAction
      Caption = 'Desconciliar'
      ImageIndex = 53
      OnExecute = actDesconciliarExecute
    end
    object actsincronizar: TAction
      AutoCheck = True
      Caption = 'Sincronizar'
      ImageIndex = 43
      OnExecute = actsincronizarExecute
    end
    object actrecalcular: TAction
      Caption = 'Recalcular'
      Enabled = False
      Visible = False
      OnExecute = actrecalcularExecute
    end
    object actsaldoconta: TAction
      Caption = 'Saldo Conta'
      ShortCut = 24694
      OnExecute = actsaldocontaExecute
    end
    object actsaldoextrato: TAction
      Caption = 'Saldo Extrato'
      ShortCut = 24695
      OnExecute = actsaldoextratoExecute
    end
    object actextratomovanalitico: TAction
      Caption = '334 - Extrato da Conta'
      OnExecute = actextratomovanaliticoExecute
    end
    object actextratocaixa: TAction
      Caption = '487 - Extrato de Todas as Contas'
      OnExecute = actextratocaixaExecute
    end
    object actretorno: TAction
      Caption = 'Retorno Cobran'#231'a'
      ShortCut = 24696
      Visible = False
      OnExecute = actretornoExecute
    end
    object actextratoview: TAction
      AutoCheck = True
      Caption = 'Extrato Agregado'
      GroupIndex = 1
      ShortCut = 24691
      OnExecute = actextratoviewExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actfecharcaixa: TAction
      Caption = 'Fechar'
      ShortCut = 24693
      OnExecute = actfecharcaixaExecute
    end
    object actabrircaixa: TAction
      Caption = 'Abrir'
      ShortCut = 24692
      OnExecute = actabrircaixaExecute
    end
    object actcaixamenu: TAction
      Caption = 'Caixa'
      OnExecute = actcaixamenuExecute
    end
    object actabrirautpagto: TAction
      Hint = 'autpagto'
      OnExecute = actabrirautpagtoExecute
    end
    object actabrirduplicata: TAction
      Hint = 'duplicata'
      OnExecute = actabrirduplicataExecute
    end
    object actabriradntcliente: TAction
      Hint = 'adntcliente'
      OnExecute = actabriradntclienteExecute
    end
    object actabriradntfornecedor: TAction
      Hint = 'adntfornecedor'
      OnExecute = actabriradntfornecedorExecute
    end
    object acttransferencia: TAction
      Caption = 'Transfer'#234'ncia'
      ImageIndex = 166
      ShortCut = 16468
      OnExecute = acttransferenciaExecute
    end
    object actmovimentacao: TAction
      Caption = 'Movimenta'#231#227'o'
      OnExecute = actmovimentacaoExecute
    end
    object actadntcliente: TAction
      Caption = 'Adiantamento Cliente'
      ImageIndex = 20
      ShortCut = 16460
      OnExecute = actadntclienteExecute
    end
    object actreceita: TAction
      Caption = 'Receita'
      ImageIndex = 32
      ShortCut = 16466
      OnExecute = actreceitaExecute
    end
    object actdespesa: TAction
      Caption = 'Despesa'
      ImageIndex = 31
      ShortCut = 16452
      OnExecute = actdespesaExecute
    end
    object actadntfornecedor: TAction
      Caption = 'Adiantamento Fornecedor'
      ImageIndex = 20
      ShortCut = 16454
      OnExecute = actadntfornecedorExecute
    end
    object actnovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      OnExecute = actnovoExecute
    end
    object actimprimirmovbancario: TAction
      Caption = 'Movimento Banc'#225'rio'
      OnExecute = actimprimirmovbancarioExecute
    end
    object actimprimirmovbancario2: TAction
      Caption = 'Movimento Banc'#225'rio 2'
      OnExecute = actimprimirmovbancario2Execute
    end
    object actdepositoidentificado: TAction
      Caption = 'Dep'#243'sito Identificado'
      ImageIndex = 15
      OnExecute = actdepositoidentificadoExecute
    end
    object actdetail: TAction
      Caption = 'Grade'
      ShortCut = 119
      OnExecute = actdetailExecute
    end
  end
  object dtsextrato: TDataSource
    Left = 115
    Top = 185
  end
  object opd: TOpenDialog
    Filter = 'Arquivo OFX|*.ofx|Arquivo Texto|*.txt'
    Left = 928
    Top = 101
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
    end
  end
  object dtsextratoview: TDataSource
    Left = 363
    Top = 107
  end
  object pumbaixa: TPopupMenu
    Left = 881
    Top = 102
    object DepsitoIdentificador1: TMenuItem
      Action = actdepositoidentificado
    end
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton58'
      end
      item
        Visible = True
        ItemName = 'dxBarButton59'
      end
      item
        Visible = True
        ItemName = 'dxBarButton60'
      end
      item
        Visible = True
        ItemName = 'dxBarButton61'
      end>
    UseOwnFont = False
    Left = 832
    Top = 104
  end
end

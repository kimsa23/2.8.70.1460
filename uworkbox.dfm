object frmWorkBox: TfrmWorkBox
  Left = 343
  Top = 77
  ClientHeight = 648
  ClientWidth = 1317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 233
    Top = 82
    Height = 566
    ExplicitHeight = 791
  end
  object pnl: TPanel
    Left = 0
    Top = 63
    Width = 1317
    Height = 19
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = 'Caixa de Trabalho'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 82
    Width = 233
    Height = 566
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 0
      Top = 413
      Width = 233
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 638
    end
    object Panel4: TPanel
      Left = 0
      Top = 416
      Width = 233
      Height = 150
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object lsvMensagem: TListView
        Left = 0
        Top = 22
        Width = 233
        Height = 128
        Align = alClient
        Columns = <
          item
            Caption = 'Mensagem'
            Width = 150
          end
          item
            Caption = 'Remetente'
          end>
        ReadOnly = True
        RowSelect = True
        SmallImages = dtmmain.imlMain
        TabOrder = 0
        ViewStyle = vsReport
        OnDblClick = lsvMensagemDblClick
        OnExit = lsvMensagemExit
        OnSelectItem = lsvMensagemSelectItem
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 233
        Height = 22
        AutoSize = True
        Caption = 'ToolBar1'
        EdgeInner = esLowered
        EdgeOuter = esNone
        Images = dtmmain.imlMain
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Transparent = True
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Action = actMensagemNovo
          AutoSize = True
        end
        object ToolButton11: TToolButton
          Left = 23
          Top = 0
          Action = actMensagemAbrir
          AutoSize = True
        end
        object ToolButton13: TToolButton
          Left = 46
          Top = 0
          Action = actMensagemExcluir
          AutoSize = True
        end
        object ToolButton6: TToolButton
          Left = 69
          Top = 0
          Action = actMensagemAtualizar
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 233
      Height = 413
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object trv: TTreeView
        Left = 0
        Top = 0
        Width = 233
        Height = 413
        Align = alClient
        ChangeDelay = 50
        HideSelection = False
        Images = dtmmain.imlMain
        Indent = 19
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        OnChange = trvChange
        OnDragDrop = trvDragDrop
        OnDragOver = trvDragOver
        OnMouseDown = trvMouseDown
      end
    end
  end
  object Panel3: TPanel
    Left = 236
    Top = 82
    Width = 1081
    Height = 566
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Splitter3: TSplitter
      Left = 0
      Top = 200
      Width = 1081
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitWidth = 730
    end
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 1081
      Height = 200
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object grdordserv: TcxGrid
        Left = 0
        Top = 0
        Width = 1081
        Height = 200
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvordserv: TcxGridDBTableView
          Tag = 98
          DragMode = dmAutomatic
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Enabled = False
          Navigator.Buttons.Prior.Visible = False
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
          OnCellDblClick = tbvordservCellDblClick
          DataController.DataSource = dts
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvordservNMPRIORIDADE: TcxGridDBColumn
            Caption = 'Prioridade'
            DataBinding.FieldName = 'NMPRIORIDADE'
            OnCustomDrawCell = tbvordservNMPRIORIDADECustomDrawCell
            Width = 65
          end
          object tbvordservNUORDSERV: TcxGridDBColumn
            Caption = 'Ord Servi'#231'o'
            DataBinding.FieldName = 'NUORDSERV'
            Styles.Content = dtmmain.cxStyle1
          end
          object tbvordservDTENTRADA: TcxGridDBColumn
            Caption = 'Dt Entrada'
            DataBinding.FieldName = 'DTENTRADA'
          end
          object tbvordservHRENTRADA: TcxGridDBColumn
            Caption = 'Hr Entrada'
            DataBinding.FieldName = 'HRENTRADA'
          end
          object tbvordservCDCLIENTE: TcxGridDBColumn
            Caption = 'Cod Cliente'
            DataBinding.FieldName = 'CDCLIENTE'
            Styles.Content = dtmmain.cxStyle1
          end
          object tbvordservNMCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NMCLIENTE'
            Width = 150
          end
          object tbvordservNMTPEQUIPAMENTO: TcxGridDBColumn
            Caption = 'Tipo Equipamento'
            DataBinding.FieldName = 'NMTPEQUIPAMENTO'
            Width = 150
          end
          object tbvordservNMMARCA: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'NMMARCA'
            Width = 150
          end
          object tbvordservNMMODELO: TcxGridDBColumn
            Caption = 'Modelo'
            DataBinding.FieldName = 'NMMODELO'
            Width = 150
          end
          object tbvordservNMFUNCIONARIO: TcxGridDBColumn
            Caption = 'Funcion'#225'rio'
            DataBinding.FieldName = 'NMFUNCIONARIO'
            Width = 150
          end
          object tbvordservBOCONTRARO: TcxGridDBColumn
            Caption = 'Contraro'
            DataBinding.FieldName = 'BOCONTRATO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 48
          end
          object tbvordservNUCORPRIORIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'NUCORPRIORIDADE'
            Visible = False
          end
        end
        object lvlordserv: TcxGridLevel
          GridView = tbvordserv
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 203
      Width = 1081
      Height = 363
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 1
      object pgc: TcxPageControl
        Left = 1
        Top = 1
        Width = 1079
        Height = 361
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tbsproduto
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dtmmain.imlMain
        LookAndFeel.NativeStyle = False
        ClientRectBottom = 361
        ClientRectRight = 1079
        ClientRectTop = 25
        object tbsproduto: TcxTabSheet
          Caption = 'Produtos'
          ImageIndex = 24
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grddetail: TcxGrid
            Left = 0
            Top = 0
            Width = 1079
            Height = 336
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object tbvdetail: TcxGridDBTableView
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
              DataController.DataSource = dtsdetail
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'QTITEM'
                  Column = tbvdetailQTITEM
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object tbvdetailCDDIGITADO: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CDDIGITADO'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = tbvdetailCDDIGITADOPropertiesButtonClick
                Width = 150
              end
              object tbvdetailNMPRODUTO: TcxGridDBColumn
                Caption = 'Produto'
                DataBinding.FieldName = 'NMPRODUTO'
                Width = 400
              end
              object tbvdetailQTITEM: TcxGridDBColumn
                Caption = 'Quantidade'
                DataBinding.FieldName = 'QTITEM'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 80
              end
            end
            object lvldetail: TcxGridLevel
              GridView = tbvdetail
            end
          end
        end
        object tbsacessorio: TcxTabSheet
          Caption = 'Acess'#243'rios'
          ImageIndex = 103
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grditacessorio: TcxGrid
            Left = 0
            Top = 0
            Width = 1079
            Height = 336
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object tbvitacessorio: TcxGridDBTableView
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
              DataController.DataSource = dtsitacessorio
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object tbvitacessorioCDACESSORIO: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CDACESSORIO'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = tbvitacessorioCDACESSORIOPropertiesButtonClick
                Width = 150
              end
              object tbvitacessorioNMACESSORIO: TcxGridDBColumn
                Caption = 'Acess'#243'rio'
                DataBinding.FieldName = 'NMACESSORIO'
                Width = 400
              end
              object tbvitacessorioQTITEM: TcxGridDBColumn
                Caption = 'Quantidade'
                DataBinding.FieldName = 'QTITEM'
                PropertiesClassName = 'TcxCalcEditProperties'
                Width = 80
              end
            end
            object lvlitacessorio: TcxGridLevel
              GridView = tbvitacessorio
            end
          end
        end
        object tbsdefapr: TcxTabSheet
          Caption = 'Defeitos Reclamados'
          ImageIndex = 110
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grditdefapr: TcxGrid
            Left = 0
            Top = 0
            Width = 1079
            Height = 336
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object tbvitdefapr: TcxGridDBTableView
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
              DataController.DataSource = dtsitdefapr
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object tbvitdefaprCDDEFEITO: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CDDEFEITO'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = tbvitdefaprCDDEFEITOPropertiesButtonClick
                Width = 150
              end
              object tbvitdefaprNMDEFEITO: TcxGridDBColumn
                Caption = 'Defeito'
                DataBinding.FieldName = 'NMDEFEITO'
                Width = 400
              end
              object tbvitdefaprDSOBSERVACAO: TcxGridDBColumn
                Caption = 'Observa'#231#227'o'
                DataBinding.FieldName = 'DSOBSERVACAO'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Properties.BlobPaintStyle = bpsText
                Width = 160
              end
            end
            object lvlitdefapr: TcxGridLevel
              GridView = tbvitdefapr
            end
          end
        end
        object tbsdefenc: TcxTabSheet
          Caption = 'Defeitos Encontrados'
          ImageIndex = 110
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grditdefenc: TcxGrid
            Left = 0
            Top = 0
            Width = 1079
            Height = 336
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object tbvitdefenc: TcxGridDBTableView
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
              DataController.DataSource = dtsitdefenc
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object tbvitdefencCDDEFEITO: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CDDEFEITO'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = tbvitdefencCDDEFEITOPropertiesButtonClick
                Width = 150
              end
              object tbvitdefencNMDEFEITO: TcxGridDBColumn
                Caption = 'Defeito'
                DataBinding.FieldName = 'NMDEFEITO'
                Width = 400
              end
              object tbvitdefencDSOBSERVACAO: TcxGridDBColumn
                Caption = 'Observa'#231#227'o'
                DataBinding.FieldName = 'DSOBSERVACAO'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Properties.BlobPaintStyle = bpsText
                Width = 160
              end
            end
            object grditdefencLevel1: TcxGridLevel
              GridView = tbvitdefenc
            end
          end
        end
        object tbsobservacao: TcxTabSheet
          Caption = 'Observa'#231#227'o'
          ImageIndex = 62
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object memDSOBSERVACAO: TcxDBMemo
            Left = 0
            Top = 0
            Align = alClient
            DataBinding.DataField = 'DSOBSERVACAO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 336
            Width = 1079
          end
        end
        object tbssolucao: TcxTabSheet
          Caption = 'Solu'#231#227'o'
          ImageIndex = 62
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object memDSSOLUCAO: TcxDBMemo
            Left = 0
            Top = 0
            Align = alClient
            DataBinding.DataField = 'DSSOLUCAO'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 336
            Width = 1079
          end
        end
        object tbsobsinterna: TcxTabSheet
          Caption = 'Observa'#231#227'o Interna'
          ImageIndex = 62
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ToolBar3: TToolBar
            Left = 0
            Top = 0
            Width = 1079
            Height = 26
            AutoSize = True
            Caption = 'ToolBar3'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            Images = dtmmain.imlMain
            TabOrder = 0
            Transparent = True
            object ToolButton10: TToolButton
              Left = 0
              Top = 0
              Action = actObsinternaNovo
            end
          end
          object edtDSOBSINTERNA: TcxDBRichEdit
            Left = 0
            Top = 26
            Align = alClient
            DataBinding.DataField = 'DSOBSINTERNA'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 310
            Width = 1079
          end
        end
        object tbssolinterna: TcxTabSheet
          Caption = 'Solu'#231#227'o Interna'
          ImageIndex = 62
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ToolBar4: TToolBar
            Left = 0
            Top = 0
            Width = 1079
            Height = 26
            AutoSize = True
            Caption = 'ToolBar4'
            EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
            Images = dtmmain.imlMain
            TabOrder = 0
            Transparent = True
            object ToolButton9: TToolButton
              Left = 0
              Top = 0
              Action = actSolInternaNovo
            end
          end
          object edtDSSOLINTERNA: TcxDBRichEdit
            Left = 0
            Top = 26
            Align = alClient
            DataBinding.DataField = 'DSSOLINTERNA'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 310
            Width = 1079
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = dtmmain.imlMain
    OnExecute = ActionList1Execute
    Left = 538
    object actAtualizar: TAction
      Caption = 'Atualizar'
      Hint = 'Atualizar'
      ImageIndex = 12
      ShortCut = 116
      OnExecute = actAtualizarExecute
    end
    object actCaixaGeralEnviar: TAction
      Caption = 'Caixa Geral'
      Enabled = False
      Hint = 'Enviar Caixa Geral'
      ImageIndex = 94
      Visible = False
      OnExecute = actCaixaGeralEnviarExecute
    end
    object actCaixaPessoalEnviar: TAction
      Caption = 'Caixa Pessoal'
      Enabled = False
      Hint = 'Enviar Caixa Pessoal'
      ImageIndex = 23
      Visible = False
      OnExecute = actCaixaPessoalEnviarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelarExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      Enabled = False
      Hint = 'Editar'
      ImageIndex = 7
      ShortCut = 16453
      OnExecute = actEditarExecute
    end
    object actEnviar: TAction
      Caption = 'Enviar'
      Hint = 'Enviar'
    end
    object actetapa: TAction
      Caption = 'Etapa'
      Enabled = False
      Hint = 'Etapa'
      ImageIndex = 57
      OnExecute = actetapaExecute
    end
    object actEtapaAnterior: TAction
      Caption = 'Etapa Anterior'
      Hint = 'Etapa Anterior'
      ImageIndex = 98
      Visible = False
      OnExecute = actEtapaAnteriorExecute
    end
    object actEtapaMudar: TAction
      Caption = 'Etapa...'
      Hint = 'Etapa...'
      ImageIndex = 57
      Visible = False
      OnExecute = actEtapaMudarExecute
    end
    object actEtapaProxima: TAction
      Caption = 'Pr'#243'xima Etapa'
      Hint = 'Pr'#243'xima Etapa'
      ImageIndex = 99
      Visible = False
      OnExecute = actEtapaProximaExecute
    end
    object actimprimir: TAction
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Imprimir'
      ImageIndex = 3
    end
    object actImprimirOrdServ: TAction
      Caption = 'Ordem de Servi'#231'o'
      Hint = 'Ordem de Servi'#231'o'
      OnExecute = actImprimirOrdServExecute
    end
    object actImprimirOrdServCliente: TAction
      Caption = 'Ordem de Servi'#231'o (Cliente)'
      Hint = 'Ordem de Servi'#231'o (Cliente)'
      OnExecute = actImprimirOrdServClienteExecute
    end
    object actMensagemAbrir: TAction
      Caption = 'Abrir Mensagem'
      Enabled = False
      Hint = 'Abrir'
      ImageIndex = 1
      OnExecute = actMensagemAbrirExecute
    end
    object actMensagemAtualizar: TAction
      Caption = 'Atualizar'
      Hint = 'Atualizar'
      ImageIndex = 12
      OnExecute = actMensagemAtualizarExecute
    end
    object actMensagemExcluir: TAction
      Caption = 'Excluir Mensagem'
      Enabled = False
      Hint = 'Excluir'
      ImageIndex = 5
      OnExecute = actMensagemExcluirExecute
    end
    object actMensagemNovo: TAction
      Caption = 'Nova Mensagem...'
      Hint = 'Novo'
      ImageIndex = 0
      OnExecute = actMensagemNovoExecute
    end
    object actObsinternaNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      OnExecute = actObsinternaNovoExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      Enabled = False
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvarExecute
    end
    object actSolInternaNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 0
      OnExecute = actSolInternaNovoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actAbrirOrdserv: TAction
      Hint = 'ordserv'
      OnExecute = actAbrirOrdservExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actordserventrada: TAction
      Caption = 'Check List Entrada'
      Visible = False
      OnExecute = actordserventradaExecute
    end
    object actordservsaida: TAction
      Caption = 'Check List Sa'#237'da'
      Visible = False
      OnExecute = actordservsaidaExecute
    end
    object actabrircliente: TAction
      OnExecute = actabrirclienteExecute
    end
  end
  object pumEtapa: TPopupMenu
    Left = 510
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      object OrdemdeServio2: TMenuItem
        Action = actImprimirOrdServ
      end
      object mniordservcliente: TMenuItem
        Action = actImprimirOrdServCliente
      end
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
    Left = 712
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
      Caption = 'workbox1'
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
          ItemName = 'dxBarLargeButton1'
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
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
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
    object dxbrsbtmRegistro: TdxBarSubItem
      Caption = '&Registro'
      Category = 0
      MergeOrder = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxbrlrgbtnfechar'
        end>
    end
    object dxbrlrgbtnEditar: TdxBarLargeButton
      Action = actEditar
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
    object dxbrlrgbtnfechar: TdxBarLargeButton
      Action = actfechar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actAtualizar
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Action = actetapa
      Category = 0
      ItemLinks = <>
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actEtapaAnterior
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actEtapaProxima
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actEtapaMudar
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actCaixaPessoalEnviar
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actCaixaGeralEnviar
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actimprimir
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton1: TdxBarButton
      Action = actordserventrada
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actordservsaida
      Category = 0
    end
  end
  object pumEnviar: TPopupMenu
    Left = 482
    object EtapaAnterior1: TMenuItem
      Action = actEtapaAnterior
    end
    object PrximaEtapa1: TMenuItem
      Action = actEtapaProxima
    end
    object Etapa1: TMenuItem
      Action = actEtapaMudar
    end
    object Enviarparaminhacaixapessoal1: TMenuItem
      Action = actCaixaPessoalEnviar
    end
    object Enviarparacaixageral1: TMenuItem
      Action = actCaixaGeralEnviar
    end
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 676
    Top = 106
  end
  object dts: TDataSource
    DataSet = qry
    OnStateChange = dtsStateChange
    Left = 472
    Top = 355
  end
  object dtsdetail: TDataSource
    DataSet = qrydetail
    Left = 470
    Top = 399
  end
  object dtsitacessorio: TDataSource
    DataSet = qryitacessorio
    Left = 486
    Top = 455
  end
  object dtsitdefapr: TDataSource
    DataSet = qryitdefapr
    Left = 489
    Top = 498
  end
  object dtsitdefenc: TDataSource
    DataSet = qryitdefenc
    Left = 496
    Top = 548
  end
  object qry: TFDQuery
    AfterOpen = qryAfterOpen
    AfterScroll = qryAfterScroll
    Connection = dtmmain.confire
    Left = 416
    Top = 354
  end
  object qrydetail: TFDQuery
    BeforePost = qrydetailBeforePost
    OnNewRecord = qrydetailNewRecord
    IndexFieldNames = 'CDEMPRESA;CDORDSERV'
    MasterSource = dts
    Connection = dtmmain.confire
    SQL.Strings = (
      'SELECT ITORDSERV.*,PRODUTO.NMPRODUTO '
      'FROM ITORDSERV '
      
        'LEFT JOIN PRODUTO ON PRODUTO.CDEMPRESA=ITORDSERV.CDEMPRESA AND P' +
        'RODUTO.CDPRODUTO=ITORDSERV.CDPRODUTO'
      
        'WHERE ITORDSERV.CDEMPRESA=:CDEMPRESA AND ITORDSERV.CDORDSERV=:CD' +
        'ORDSERV')
    Left = 413
    Top = 399
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
      end
      item
        Name = 'CDORDSERV'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qrydetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      Origin = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrydetailCDITORDSERV: TIntegerField
      FieldName = 'CDITORDSERV'
      Origin = 'CDITORDSERV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrydetailCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      Origin = 'CDORDSERV'
      Required = True
    end
    object qrydetailCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      Origin = 'CDEQUIPAMENTO'
    end
    object qrydetailCDSTITORDSERV: TIntegerField
      FieldName = 'CDSTITORDSERV'
      Origin = 'CDSTITORDSERV'
      Required = True
    end
    object qrydetailCDGARANTIA: TIntegerField
      FieldName = 'CDGARANTIA'
      Origin = 'CDGARANTIA'
    end
    object qrydetailCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      Origin = 'CDUNIDADE'
    end
    object qrydetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      Origin = 'CDPRODUTO'
    end
    object qrydetailCDSERVPLAN: TIntegerField
      FieldName = 'CDSERVPLAN'
      Origin = 'CDSERVPLAN'
    end
    object qrydetailCDITETAPA: TIntegerField
      FieldName = 'CDITETAPA'
      Origin = 'CDITETAPA'
    end
    object qrydetailCDTPGRADEVALOR: TIntegerField
      FieldName = 'CDTPGRADEVALOR'
      Origin = 'CDTPGRADEVALOR'
    end
    object qrydetailCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Origin = 'CDUSUARIOI'
      Required = True
    end
    object qrydetailCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Origin = 'CDUSUARIOA'
      Required = True
    end
    object qrydetailCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Origin = 'CDCOMPUTADORI'
      Required = True
    end
    object qrydetailCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Origin = 'CDCOMPUTADORA'
      Required = True
    end
    object qrydetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      Origin = 'CDDIGITADO'
      OnValidate = qrydetailCDDIGITADOValidate
      Size = 30
    end
    object qrydetailVLUNITARIO: TBCDField
      FieldName = 'VLUNITARIO'
      Origin = 'VLUNITARIO'
      Required = True
      Precision = 18
    end
    object qrydetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      Origin = 'QTITEM'
      Required = True
    end
    object qrydetailPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      Origin = 'PRDESCONTO'
    end
    object qrydetailVLDESCONTO: TBCDField
      FieldName = 'VLDESCONTO'
      Origin = 'VLDESCONTO'
      Precision = 18
      Size = 2
    end
    object qrydetailVLTOTAL: TBCDField
      FieldName = 'VLTOTAL'
      Origin = 'VLTOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object qrydetailNMITORDSERV: TStringField
      FieldName = 'NMITORDSERV'
      Origin = 'NMITORDSERV'
      Size = 100
    end
    object qrydetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      Origin = 'DSOBSERVACAO'
    end
    object qrydetailTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Origin = 'TSINCLUSAO'
      Required = True
    end
    object qrydetailTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Origin = 'TSALTERACAO'
      Required = True
    end
    object qrydetailNUPESAGEM: TStringField
      FieldName = 'NUPESAGEM'
      Origin = 'NUPESAGEM'
      Size = 10
    end
    object qrydetailQTAGUA: TFloatField
      FieldName = 'QTAGUA'
      Origin = 'QTAGUA'
    end
    object qrydetailNUTEMPERATURA: TFloatField
      FieldName = 'NUTEMPERATURA'
      Origin = 'NUTEMPERATURA'
    end
    object qrydetailNUVIBRACAO: TFloatField
      FieldName = 'NUVIBRACAO'
      Origin = 'NUVIBRACAO'
    end
    object qrydetailCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      Origin = 'CDFORMULACAO'
    end
    object qrydetailTSINICIO: TSQLTimeStampField
      FieldName = 'TSINICIO'
      Origin = 'TSINICIO'
    end
    object qrydetailTSFIM: TSQLTimeStampField
      FieldName = 'TSFIM'
      Origin = 'TSFIM'
    end
    object qrydetailNMPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMPRODUTO'
      Origin = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
  end
  object qryitacessorio: TFDQuery
    BeforePost = qryitacessorioBeforePost
    OnNewRecord = qryitacessorioNewRecord
    IndexFieldNames = 'CDEMPRESA;CDORDSERV'
    MasterSource = dts
    Connection = dtmmain.confire
    SQL.Strings = (
      'SELECT ITACESSORIO.*,ACESSORIO.NMACESSORIO'
      'FROM ITACESSORIO '
      
        'LEFT JOIN ACESSORIO ON ACESSORIO.CDEMPRESA=ITACESSORIO.CDEMPRESA' +
        ' AND ACESSORIO.CDACESSORIO=ITACESSORIO.CDACESSORIO'
      
        'WHERE ITACESSORIO.CDEMPRESA=:CDEMPRESA AND ITACESSORIO.CDORDSERV' +
        '=:CDORDSERV')
    Left = 413
    Top = 447
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'CDORDSERV'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryitacessorioCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      Origin = 'CDORDSERV'
      Required = True
    end
    object qryitacessorioCDACESSORIO: TIntegerField
      FieldName = 'CDACESSORIO'
      Origin = 'CDACESSORIO'
      Required = True
      OnValidate = qryitacessorioCDACESSORIOValidate
    end
    object qryitacessorioQTITEM: TIntegerField
      FieldName = 'QTITEM'
      Origin = 'QTITEM'
      Required = True
    end
    object qryitacessorioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      Origin = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryitacessorioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Origin = 'CDUSUARIOI'
      Required = True
    end
    object qryitacessorioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Origin = 'CDUSUARIOA'
      Required = True
    end
    object qryitacessorioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Origin = 'CDCOMPUTADORI'
      Required = True
    end
    object qryitacessorioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Origin = 'CDCOMPUTADORA'
      Required = True
    end
    object qryitacessorioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Origin = 'TSINCLUSAO'
      Required = True
    end
    object qryitacessorioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Origin = 'TSALTERACAO'
      Required = True
    end
    object qryitacessorioCDITACESSORIO: TIntegerField
      FieldName = 'CDITACESSORIO'
      Origin = 'CDITACESSORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryitacessorioNMACESSORIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMACESSORIO'
      Origin = 'NMACESSORIO'
      ProviderFlags = []
      Size = 100
    end
  end
  object qryitdefapr: TFDQuery
    BeforePost = qryitdefaprBeforePost
    IndexFieldNames = 'CDEMPRESA;CDORDSERV'
    MasterSource = dts
    Connection = dtmmain.confire
    SQL.Strings = (
      'SELECT ITDEFAPR.*,DEFEITO.NMDEFEITO '
      'FROM ITDEFAPR '
      
        'LEFT JOIN DEFEITO ON DEFEITO.CDEMPRESA=ITDEFAPR.CDEMPRESA AND DE' +
        'FEITO.CDDEFEITO=ITDEFAPR.CDDEFEITO'
      
        'WHERE ITDEFAPR.CDEMPRESA=:CDEMPRESA AND ITDEFAPR.CDORDSERV=:CDOR' +
        'DSERV')
    Left = 413
    Top = 495
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'CDORDSERV'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryitdefaprCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      Origin = 'CDORDSERV'
      Required = True
    end
    object qryitdefaprCDDEFEITO: TIntegerField
      FieldName = 'CDDEFEITO'
      Origin = 'CDDEFEITO'
      Required = True
      OnValidate = qryitdefaprCDDEFEITOValidate
    end
    object qryitdefaprDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      Origin = 'DSOBSERVACAO'
    end
    object qryitdefaprCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      Origin = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryitdefaprCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Origin = 'CDUSUARIOI'
      Required = True
    end
    object qryitdefaprCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Origin = 'CDUSUARIOA'
      Required = True
    end
    object qryitdefaprCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Origin = 'CDCOMPUTADORI'
      Required = True
    end
    object qryitdefaprCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Origin = 'CDCOMPUTADORA'
      Required = True
    end
    object qryitdefaprTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Origin = 'TSINCLUSAO'
      Required = True
    end
    object qryitdefaprTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Origin = 'TSALTERACAO'
      Required = True
    end
    object qryitdefaprCDITDEFAPR: TIntegerField
      FieldName = 'CDITDEFAPR'
      Origin = 'CDITDEFAPR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryitdefaprNMDEFEITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMDEFEITO'
      Origin = 'NMDEFEITO'
      ProviderFlags = []
      Size = 100
    end
  end
  object qryitdefenc: TFDQuery
    BeforePost = qryitdefencBeforePost
    IndexFieldNames = 'CDEMPRESA;CDORDSERV'
    MasterSource = dts
    Connection = dtmmain.confire
    SQL.Strings = (
      'SELECT ITDEFENC.*,DEFEITO.NMDEFEITO '
      'FROM ITDEFENC '
      
        'LEFT JOIN DEFEITO ON DEFEITO.CDEMPRESA=ITDEFENC.CDEMPRESA AND DE' +
        'FEITO.CDDEFEITO=ITDEFENC.CDDEFEITO '
      
        'WHERE ITDEFENC.CDEMPRESA=:CDEMPRESA AND ITDEFENC.CDORDSERV=:CDOR' +
        'DSERV')
    Left = 413
    Top = 543
    ParamData = <
      item
        Name = 'CDEMPRESA'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'CDORDSERV'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryitdefencCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      Origin = 'CDORDSERV'
      Required = True
    end
    object qryitdefencCDDEFEITO: TIntegerField
      FieldName = 'CDDEFEITO'
      Origin = 'CDDEFEITO'
      Required = True
      OnValidate = qryitdefencCDDEFEITOValidate
    end
    object qryitdefencDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      Origin = 'DSOBSERVACAO'
    end
    object qryitdefencCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      Origin = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryitdefencCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      Origin = 'CDUSUARIOI'
      Required = True
    end
    object qryitdefencCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      Origin = 'CDUSUARIOA'
      Required = True
    end
    object qryitdefencCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      Origin = 'CDCOMPUTADORI'
      Required = True
    end
    object qryitdefencCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      Origin = 'CDCOMPUTADORA'
      Required = True
    end
    object qryitdefencTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      Origin = 'TSINCLUSAO'
      Required = True
    end
    object qryitdefencTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      Origin = 'TSALTERACAO'
      Required = True
    end
    object qryitdefencCDITDEFENC: TIntegerField
      FieldName = 'CDITDEFENC'
      Origin = 'CDITDEFENC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryitdefencNMDEFEITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMDEFEITO'
      Origin = 'NMDEFEITO'
      ProviderFlags = []
      Size = 100
    end
  end
  object sca: TFDSchemaAdapter
    Left = 781
    Top = 391
  end
end

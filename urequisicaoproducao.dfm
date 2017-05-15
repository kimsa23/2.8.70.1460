object frmrequisicaoproducao: Tfrmrequisicaoproducao
  Left = 510
  Top = 87
  ClientHeight = 630
  ClientWidth = 1204
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
  object pnl1: TPanel
    Left = 0
    Top = 82
    Width = 1204
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblstrequisicaoproducao: TLabel
      Left = 835
      Top = 0
      Width = 30
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 6
      Top = 0
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 203
      Top = 0
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object lbltprequisicaoproducao: TLabel
      Left = 73
      Top = 0
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 600
      Top = 0
      Width = 62
      Height = 13
      Caption = 'Respons'#225'vel'
      Transparent = True
    end
    object lbldtprevista: TLabel
      Left = 285
      Top = 0
      Width = 41
      Height = 13
      Caption = 'Previs'#227'o'
      Transparent = True
    end
    object lblcdfuncionariosolicitante: TLabel
      Left = 366
      Top = 0
      Width = 49
      Height = 13
      Caption = 'Solicitante'
      Transparent = True
    end
    object cbxcdtprequisicaoproducao: TcxDBLookupComboBox
      Left = 73
      Top = 14
      DataBinding.DataField = 'CDTPREQUISICAOPRODUCAO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 350
      Properties.KeyFieldNames = 'CDTPREQUISICAOPRODUCAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPREQUISICAOPRODUCAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = cbxcdtprequisicaoproducaoEnter
      OnExit = colorExit
      Width = 129
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 203
      Top = 14
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 82
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 14
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 70
    end
    object cbxcdfuncionario: TcxDBLookupComboBox
      Left = 600
      Top = 14
      DataBinding.DataField = 'CDFUNCIONARIO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 350
      Properties.KeyFieldNames = 'CDFUNCIONARIO'
      Properties.ListColumns = <
        item
          FieldName = 'NMFUNCIONARIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = cbxcdfuncionarioEnter
      OnExit = colorExit
      Width = 235
    end
    object edtdtprventrega: TcxDBDateEdit
      Left = 285
      Top = 14
      DataBinding.DataField = 'DTPRVENTREGA'
      DataBinding.DataSource = dts
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 82
    end
    object cbxcdstrequisicaoproducao: TcxDBLookupComboBox
      Left = 835
      Top = 14
      DataBinding.DataField = 'CDSTREQUISICAOPRODUCAO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 350
      Properties.KeyFieldNames = 'CDSTREQUISICAOPRODUCAO'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTREQUISICAOPRODUCAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = cbxcdstrequisicaoproducaoEnter
      OnExit = colorExit
      Width = 129
    end
    object cbxcdfuncionariosolicitante: TcxDBLookupComboBox
      Left = 366
      Top = 14
      DataBinding.DataField = 'CDFUNCIONARIOSOLICITANTE'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 350
      Properties.KeyFieldNames = 'CDFUNCIONARIO'
      Properties.ListColumns = <
        item
          FieldName = 'NMFUNCIONARIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = cbxcdfuncionarioEnter
      OnExit = colorExit
      Width = 235
    end
  end
  object pnl: TPanel
    Left = 0
    Top = 63
    Width = 1204
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
  object pgc: TcxPageControl
    Left = 0
    Top = 124
    Width = 1204
    Height = 506
    Align = alClient
    TabOrder = 6
    Properties.ActivePage = tbsproduto
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 506
    ClientRectRight = 1204
    ClientRectTop = 24
    object tbsproduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grd: TcxGrid
        Left = 0
        Top = 22
        Width = 1204
        Height = 131
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
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
          OnCellDblClick = tbvCellDblClick
          DataController.DataSource = dtsdetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvQTITEM
            end
            item
              Kind = skSum
              FieldName = 'QTPRODUCAO'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvCDORCAMENTO: TcxGridDBColumn
            Caption = 'C'#243'd Or'#231'amento'
            DataBinding.FieldName = 'CDORCAMENTO'
            Options.Focusing = False
            Styles.Content = dtmmain.cxStyle1
            Width = 80
          end
          object tbvCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = grdDBTableView1CDDIGITADOPropertiesButtonClick
            Styles.Content = cxStyle1
            Width = 100
          end
          object tbvNMPRODUTO: TcxGridDBColumn
            Tag = 100
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Editing = False
            Options.Focusing = False
            Width = 341
          end
          object tbvNMUNIDADE: TcxGridDBColumn
            Tag = 100
            Caption = 'Unidade'
            DataBinding.FieldName = 'NMUNIDADE'
            Options.Editing = False
            Options.Focusing = False
            Width = 49
          end
          object tbvQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 100
          end
          object tbvDTPRVENTREGA: TcxGridDBColumn
            Caption = 'Previs'#227'o'
            DataBinding.FieldName = 'DTPRVENTREGA'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object tbvDSOBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Width = 250
          end
        end
        object grlLevel1: TcxGridLevel
          GridView = tbv
        end
      end
      object splordproducao: TcxSplitter
        Left = 0
        Top = 153
        Width = 1204
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = pgcdetail
        ExplicitWidth = 8
      end
      object bdcdetail: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1204
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object pgcdetail: TcxPageControl
        Left = 0
        Top = 161
        Width = 1204
        Height = 321
        Align = alBottom
        TabOrder = 3
        Properties.ActivePage = tbsordproducao
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 317
        ClientRectLeft = 4
        ClientRectRight = 1200
        ClientRectTop = 24
        object tbsordproducao: TcxTabSheet
          Caption = 'Ordem de Produ'#231#227'o'
          ImageIndex = 0
          object grdordproducao: TcxGrid
            Left = 0
            Top = 22
            Width = 1196
            Height = 271
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            object tbvordproducao: TcxGridDBTableView
              OnKeyDown = exportarGradeExcel
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.PriorPage.Enabled = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.NextPage.Enabled = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Insert.Enabled = False
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Enabled = False
              Navigator.Buttons.Delete.Visible = True
              Navigator.Buttons.Edit.Visible = True
              Navigator.Buttons.Post.Visible = True
              Navigator.Buttons.Cancel.Visible = True
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
              OnCellDblClick = tbvordproducaoCellDblClick
              DataController.DataSource = dtsordproducao
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'QTITEM'
                  Column = tbvordproducaoQTITEM
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object tbvordproducaoCDORDPRODUCAO: TcxGridDBColumn
                Caption = 'Ordem Produ'#231#227'o'
                DataBinding.FieldName = 'CDORDPRODUCAO'
                Options.Editing = False
                Styles.Content = dtmmain.cxStyle1
                Width = 90
              end
              object tbvordproducaoCDSTORDPRODUCAO: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'CDSTORDPRODUCAO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 300
                Properties.KeyFieldNames = 'CDSTORDPRODUCAO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMSTORDPRODUCAO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Options.Focusing = False
                Width = 100
              end
              object tbvordproducaoCDTPORDPRODUCAO: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'CDTPORDPRODUCAO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 350
                Properties.KeyFieldNames = 'CDTPORDPRODUCAO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMTPORDPRODUCAO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Width = 100
              end
              object tbvordproducaoDTEMISSAO: TcxGridDBColumn
                Caption = 'Emiss'#227'o'
                DataBinding.FieldName = 'DTEMISSAO'
                Width = 80
              end
              object tbvordproducaoDTENTREGA: TcxGridDBColumn
                Caption = 'Entrega'
                DataBinding.FieldName = 'DTENTREGA'
                Options.Focusing = False
                Width = 80
              end
              object tbvordproducaoDTPRVENTREGA: TcxGridDBColumn
                Caption = 'Previs'#227'o de Entrega'
                DataBinding.FieldName = 'DTPRVENTREGA'
                Width = 105
              end
              object tbvordproducaoDSOBSERVACAO: TcxGridDBColumn
                Caption = 'Observa'#231#227'o'
                DataBinding.FieldName = 'DSOBSERVACAO'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Properties.BlobPaintStyle = bpsText
                Width = 150
              end
              object tbvordproducaoQTITEM: TcxGridDBColumn
                Caption = 'Quantidade'
                DataBinding.FieldName = 'QTITEM'
                Options.Focusing = False
                Width = 80
              end
              object tbvordproducaoCDFORMULACAO: TcxGridDBColumn
                Caption = 'Formula'#231#227'o'
                DataBinding.FieldName = 'CDFORMULACAO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 300
                Properties.KeyFieldNames = 'CDFORMULACAO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMFORMULACAO'
                  end>
                Properties.ListOptions.ShowHeader = False
                Width = 195
              end
              object tbvordproducaoBOIMPRESSO: TcxGridDBColumn
                Caption = 'Impresso'
                DataBinding.FieldName = 'BOIMPRESSO'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Width = 52
              end
            end
            object grdordproducaoLevel1: TcxGridLevel
              GridView = tbvordproducao
            end
          end
          object bdcordproducao: TdxBarDockControl
            Left = 0
            Top = 0
            Width = 1196
            Height = 22
            Align = dalTop
            BarManager = bmg1
          end
        end
        object tbsprodutosimilar: TcxTabSheet
          Caption = 'Produto Similar'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grdsimilar: TcxGrid
            Left = 0
            Top = 0
            Width = 1196
            Height = 293
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object tbvsimilar: TcxGridDBTableView
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
              Navigator.Buttons.Refresh.Visible = True
              Navigator.Buttons.SaveBookmark.Enabled = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Enabled = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Enabled = False
              Navigator.Buttons.Filter.Visible = False
              Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
              Navigator.InfoPanel.Visible = True
              Navigator.Visible = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'QTESTOQUE'
                  Column = tbvsimilarQTESTOQUE
                end
                item
                  Kind = skSum
                  FieldName = 'QTPEDIDO'
                  Column = tbvsimilarQTPEDIDO
                end
                item
                  Kind = skSum
                  FieldName = 'QTDISPONIVEL'
                  Column = tbvsimilarQTDISPONIVEL
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.NavigatorHints = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object tbvsimilarCDPRODUTO: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CDPRODUTO'
                Width = 94
              end
              object tbvsimilarNMPRODUTO: TcxGridDBColumn
                Caption = 'Nome'
                DataBinding.FieldName = 'NMPRODUTO'
                Width = 350
              end
              object tbvsimilarDSPRODUTO: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'DSPRODUTO'
                Width = 200
              end
              object tbvsimilarCDUNIDADE: TcxGridDBColumn
                Caption = 'UN'
                DataBinding.FieldName = 'CDUNIDADE'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDUNIDADE'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMUNIDADE'
                  end>
                Width = 23
              end
              object tbvsimilarQTESTOQUE: TcxGridDBColumn
                Caption = 'Estoque'
                DataBinding.FieldName = 'QTESTOQUE'
              end
              object tbvsimilarQTPEDIDO: TcxGridDBColumn
                Caption = 'Pedido'
                DataBinding.FieldName = 'QTPEDIDO'
              end
              object tbvsimilarQTDISPONIVEL: TcxGridDBColumn
                Caption = 'Dispon'#237'vel'
                DataBinding.FieldName = 'QTDISPONIVEL'
              end
              object tbvsimilarVLVENDA: TcxGridDBColumn
                Caption = 'Vl Venda'
                DataBinding.FieldName = 'VLVENDA'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvsimilarNUCLFISCAL: TcxGridDBColumn
                Caption = 'NCM'
                DataBinding.FieldName = 'NUCLFISCAL'
              end
              object tbvsimilarBOATIVAR: TcxGridDBColumn
                Caption = 'Ativado'
                DataBinding.FieldName = 'BOATIVAR'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
              end
              object tbvsimilarCDTPITEM: TcxGridDBColumn
                Caption = 'Tipo Item'
                DataBinding.FieldName = 'CDTPITEM'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDTPITEM'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMTPITEM'
                  end>
                Width = 100
              end
              object tbvsimilarDSDESENHO: TcxGridDBColumn
                Caption = 'Desenho'
                DataBinding.FieldName = 'DSDESENHO'
                Width = 100
              end
              object tbvsimilarDSTAG2: TcxGridDBColumn
                Caption = 'Tag 2'
                DataBinding.FieldName = 'DSTAG2'
                Width = 100
              end
              object tbvsimilarDSTAG1: TcxGridDBColumn
                Caption = 'Tag 1'
                DataBinding.FieldName = 'DSTAG1'
              end
              object tbvsimilarCDCODFORNECEDOR: TcxGridDBColumn
                Caption = 'Cod fornecedor'
                DataBinding.FieldName = 'CDCODFORNECEDOR'
                Width = 85
              end
              object tbvsimilarCDALTERNATIVO: TcxGridDBColumn
                Caption = 'Cd Alternativo'
                DataBinding.FieldName = 'CDALTERNATIVO'
                Width = 140
              end
              object tbvsimilarNUNIVEL: TcxGridDBColumn
                Caption = 'C'#243'd Grupo'
                DataBinding.FieldName = 'NUNIVEL'
                Width = 75
              end
              object tbvsimilarNMGRUPO: TcxGridDBColumn
                Caption = 'Nome Grupo'
                DataBinding.FieldName = 'NMGRUPO'
                Width = 160
              end
              object tbvsimilarVLCUSTO: TcxGridDBColumn
                Caption = 'Custo'
                DataBinding.FieldName = 'VLCUSTO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvsimilarVLATACADO: TcxGridDBColumn
                Caption = 'Atacado'
                DataBinding.FieldName = 'VLATACADO'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvsimilarVLESPECIAL: TcxGridDBColumn
                Caption = 'Especial'
                DataBinding.FieldName = 'VLESPECIAL'
                PropertiesClassName = 'TcxCurrencyEditProperties'
              end
              object tbvsimilarCDTPPRODUTO: TcxGridDBColumn
                Caption = 'Tipo Produto'
                DataBinding.FieldName = 'CDTPPRODUTO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDTPPRODUTO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMTPPRODUTO'
                  end>
                Width = 80
              end
              object tbvsimilarDSLOCALIZACAO: TcxGridDBColumn
                Caption = 'Localiza'#231#227'o'
                DataBinding.FieldName = 'DSLOCALIZACAO'
              end
              object tbvsimilarCDMATERIAL: TcxGridDBColumn
                Caption = 'Material'
                DataBinding.FieldName = 'CDMATERIAL'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDMATERIAL'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMMATERIAL'
                  end>
              end
              object tbvsimilarCDFORMA: TcxGridDBColumn
                Caption = 'Forma'
                DataBinding.FieldName = 'CDFORMA'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDFORMA'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMFORMA'
                  end>
              end
              object tbvsimilarCDNORMA: TcxGridDBColumn
                Caption = 'Norma'
                DataBinding.FieldName = 'CDNORMA'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'CDNORMA'
                Properties.ListColumns = <
                  item
                    FieldName = 'NMNORMA'
                  end>
              end
              object tbvsimilarQTESPESSURA: TcxGridDBColumn
                Caption = 'Espessura'
                DataBinding.FieldName = 'QTESPESSURA'
              end
              object tbvsimilarQTLARGURA: TcxGridDBColumn
                Caption = 'Largura'
                DataBinding.FieldName = 'QTLARGURA'
              end
              object tbvsimilarQTCOMPRIMENTO: TcxGridDBColumn
                Caption = 'Comprimento'
                DataBinding.FieldName = 'QTCOMPRIMENTO'
              end
              object tbvsimilarDSPOLEGADA: TcxGridDBColumn
                Caption = 'Polegada'
                DataBinding.FieldName = 'DSPOLEGADA'
              end
            end
            object grdlevelsimilar: TcxGridLevel
              GridView = tbvsimilar
            end
          end
        end
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mem1: TcxDBMemo
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
        Height = 482
        Width = 1204
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 128
    Top = 320
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
    object actAbrirProduto: TAction
      Hint = 'Produto'
      OnExecute = actAbrirProdutoExecute
    end
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object actgerarordproducao: TAction
      Caption = 'Gerar Ordem Produ'#231#227'o'
      Enabled = False
      ImageIndex = 17
      OnExecute = actgerarordproducaoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      OnExecute = actopcoesExecute
    end
    object actgerarordproducaotodas: TAction
      Caption = 'Gerar todas as ordens de produ'#231#227'o'
      Enabled = False
      ImageIndex = 17
      OnExecute = actgerarordproducaotodasExecute
    end
    object actabrirorcamento: TAction
      Hint = 'orcamento'
      OnExecute = actabrirorcamentoExecute
    end
    object acthistorico: TAction
      Caption = 'Hist'#243'rico'
      OnExecute = acthistoricoExecute
    end
    object actabrirordproducao: TAction
      Hint = 'ordproducao'
      OnExecute = actabrirordproducaoExecute
    end
    object actordproducao: TAction
      Caption = 'Ordem Produ'#231#227'o'
      ImageIndex = 17
      OnExecute = actordproducaoExecute
    end
    object actimprimirordproducao: TAction
      Caption = 'actimprimirordproducao'
      ImageIndex = 3
      OnExecute = actimprimirordproducaoExecute
    end
    object actimprimirpesagem: TAction
      Caption = '22 - Pesagem'
      OnExecute = actimprimirpesagemExecute
    end
    object actmapaproducaoproduto: TAction
      Caption = 'Mapa Produ'#231#227'o do Produto'
      OnExecute = actmapaproducaoprodutoExecute
    end
    object actexcluirordproducao: TAction
      Caption = 'Excluir'
      ImageIndex = 5
      OnExecute = actexcluirordproducaoExecute
    end
    object actexcluirtodasordproducao: TAction
      Caption = 'Excluir Todas'
      ImageIndex = 5
      OnExecute = actexcluirtodasordproducaoExecute
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
    Left = 100
    Top = 320
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
      Caption = 'ordcompra'
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
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'btnimprimir'
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
    object bmg1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'ordproducao'
      CaptionButtons = <>
      DockControl = bdcordproducao
      DockedDockControl = bdcordproducao
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1475
      FloatTop = 647
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnimprimirordproducao'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bmg1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'detail'
      CaptionButtons = <>
      DockControl = bdcdetail
      DockedDockControl = bdcdetail
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 708
      FloatTop = 163
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
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
          ItemName = 'dxbrsprtr2'
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
    object btnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumimprimir
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actgerarordproducao
      Category = 0
    end
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton2: TdxBarButton
      Action = actgerarordproducaotodas
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = acthistorico
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Action = actordproducao
      Category = 0
      ImageIndex = 157
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
          ItemName = 'dxBarButton4'
        end>
    end
    object btnimprimirordproducao: TdxBarButton
      Action = actimprimirordproducao
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumordproducao
    end
    object dxBarButton5: TdxBarButton
      Action = actimprimirpesagem
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actmapaproducaoproduto
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actexcluirordproducao
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton7: TdxBarButton
      Action = actexcluirtodasordproducao
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT R.*,NMSTREQUISICAOPRODUCAO FROM REQUISICAOPRODUCAO R LEFT' +
      ' JOIN STREQUISICAOPRODUCAO S ON S.CDSTREQUISICAOPRODUCAO=R.CDSTR' +
      'EQUISICAOPRODUCAO WHERE R.CDEMPRESA=:CDEMPRESA AND R.CDREQUISICA' +
      'OPRODUCAO=:CDREQUISICAOPRODUCAO'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'CDREQUISICAOPRODUCAO'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = dtmmain.sqlc
    Left = 56
    Top = 200
    object sdsCDREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDSTREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDSTREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDTPREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDTPREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object sdsNMSTREQUISICAOPRODUCAO: TStringField
      FieldName = 'NMSTREQUISICAOPRODUCAO'
      ProviderFlags = []
      Size = 100
    end
    object sdsDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 84
    Top = 200
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnCalcFields = cdsCalcFields
    OnNewRecord = cdsNewRecord
    Left = 112
    Top = 200
    object cdsCDTPREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDTPREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDTPREQUISICAOPRODUCAOValidate
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDSTREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDSTREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object cdsNMSTREQUISICAOPRODUCAO: TStringField
      FieldName = 'NMSTREQUISICAOPRODUCAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCDFUNCIONARIOSOLICITANTE: TIntegerField
      FieldName = 'CDFUNCIONARIOSOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 140
    Top = 200
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 168
    Top = 200
  end
  object dtsdetail: TDataSource
    DataSet = cdsdetail
    Left = 140
    Top = 228
  end
  object cdsdetail: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'qtitem'
        Expression = 'sum(qtitem)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'qtproducao'
        Expression = 'sum(qtproducao)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    AfterScroll = cdsdetailAfterScroll
    OnNewRecord = cdsdetailNewRecord
    Left = 112
    Top = 228
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailCDREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDPRODUTOValidate
    end
    object cdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailCDITREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDITREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object cdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsdetailQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsdetailCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = []
    end
    object cdsdetailsdsordproducao: TDataSetField
      FieldName = 'sdsordproducao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',P.NMPRODUTO'#13#10',O.CDORCAMENTO'#13#10',U.NMUNIDADE'#13#10'FROM ITR' +
      'EQUISICAOPRODUCAO I'#13#10'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPROD' +
      'UTO AND I.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN UNIDADE U ON U.CDUNID' +
      'ADE=P.CDUNIDADE AND U.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JOIN ITORCAMEN' +
      'TO O ON O.CDEMPRESA=I.CDEMPRESA AND O.CDITORCAMENTO=I.CDITORCAME' +
      'NTO'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDREQUISICAOPRODUCAO=:CD' +
      'REQUISICAOPRODUCAO'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDREQUISICAOPRODUCAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 56
    Top = 228
    object sdsdetailCDREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDREQUISICAOPRODUCAO'
      Required = True
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailCDITREQUISICAOPRODUCAO: TIntegerField
      FieldName = 'CDITREQUISICAOPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object sdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailNMUNIDADE: TStringField
      FieldName = 'NMUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sdsdetailQTPRODUCAO: TFloatField
      FieldName = 'QTPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsdetailCDITORCAMENTO: TIntegerField
      FieldName = 'CDITORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDORCAMENTO: TIntegerField
      FieldName = 'CDORCAMENTO'
      ProviderFlags = []
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 192
    Top = 321
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
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 160
    Top = 322
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 224
    Top = 324
  end
  object sdsordproducao: TSQLDataSet
    CommandText = 
      'SELECT O.*, S.BOEXCLUIR, S.BOALTERAR'#13#10'FROM ORDPRODUCAO O '#13#10'LEFT ' +
      'JOIN STORDPRODUCAO S ON S.CDEMPRESA=O.CDEMPRESA AND S.CDSTORDPRO' +
      'DUCAO=O.CDSTORDPRODUCAO'#13#10'WHERE O.CDEMPRESA=:CDEMPRESA AND O.CDIT' +
      'REQUISICAOPRODUCAO=:CDITREQUISICAOPRODUCAO'
    DataSource = dts2
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDITREQUISICAOPRODUCAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 232
    Top = 252
    object sdsordproducaoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object sdsordproducaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDTPORDPRODUCAO: TIntegerField
      FieldName = 'CDTPORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsordproducaoQTHORAORCADA: TFloatField
      FieldName = 'QTHORAORCADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoQTHORAPRODUCAO: TFloatField
      FieldName = 'QTHORAPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLOPERACAOP: TFMTBCDField
      FieldName = 'VLOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLPREPARACAOP: TFMTBCDField
      FieldName = 'VLPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLRECURSO: TFMTBCDField
      FieldName = 'VLRECURSO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLRECURSOP: TFMTBCDField
      FieldName = 'VLRECURSOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTOPERACAOP: TFMTBCDField
      FieldName = 'QTOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTPREPARACAOP: TFMTBCDField
      FieldName = 'QTPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTHORAP: TFloatField
      FieldName = 'QTHORAP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLMATERIALP: TFMTBCDField
      FieldName = 'VLMATERIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLPRODUCAO: TFMTBCDField
      FieldName = 'VLPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLPRODUCAOP: TFMTBCDField
      FieldName = 'VLPRODUCAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoVLCUSTOP: TFMTBCDField
      FieldName = 'VLCUSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsordproducaoDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsordproducaoDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoNUDIASCUSTO: TIntegerField
      FieldName = 'NUDIASCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoDTPRVINSTALACAO: TDateField
      FieldName = 'DTPRVINSTALACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsordproducaoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object sdsordproducaoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsordproducaoBOALTERAR: TStringField
      FieldName = 'BOALTERAR'
      ProviderFlags = []
      Size = 1
    end
    object sdsordproducaoBOEXCLUIR: TStringField
      FieldName = 'BOEXCLUIR'
      ProviderFlags = []
      Size = 1
    end
    object sdsordproducaoBOIMPRESSO: TStringField
      FieldName = 'BOIMPRESSO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdsordproducao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsdetailsdsordproducao
    Params = <>
    AfterScroll = cdsordproducaoAfterScroll
    Left = 288
    Top = 252
    object cdsordproducaoCDORDPRODUCAO: TIntegerField
      FieldName = 'CDORDPRODUCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cdsordproducaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDITPEDIDO: TIntegerField
      FieldName = 'CDITPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDSTORDPRODUCAO: TIntegerField
      FieldName = 'CDSTORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDTPORDPRODUCAO: TIntegerField
      FieldName = 'CDTPORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoDTPRVENTREGA: TDateField
      FieldName = 'DTPRVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsordproducaoQTHORAORCADA: TFloatField
      FieldName = 'QTHORAORCADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoQTHORAPRODUCAO: TFloatField
      FieldName = 'QTHORAPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoVLOPERACAO: TFMTBCDField
      FieldName = 'VLOPERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLOPERACAOP: TFMTBCDField
      FieldName = 'VLOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLPREPARACAO: TFMTBCDField
      FieldName = 'VLPREPARACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLPREPARACAOP: TFMTBCDField
      FieldName = 'VLPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLRECURSO: TFMTBCDField
      FieldName = 'VLRECURSO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLRECURSOP: TFMTBCDField
      FieldName = 'VLRECURSOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoQTOPERACAO: TFloatField
      FieldName = 'QTOPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTOPERACAOP: TFMTBCDField
      FieldName = 'QTOPERACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoQTPREPARACAO: TFloatField
      FieldName = 'QTPREPARACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTPREPARACAOP: TFMTBCDField
      FieldName = 'QTPREPARACAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoQTHORA: TFloatField
      FieldName = 'QTHORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTHORAP: TFloatField
      FieldName = 'QTHORAP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoVLMATERIAL: TFMTBCDField
      FieldName = 'VLMATERIAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLMATERIALP: TFMTBCDField
      FieldName = 'VLMATERIALP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLPRODUCAO: TFMTBCDField
      FieldName = 'VLPRODUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLPRODUCAOP: TFMTBCDField
      FieldName = 'VLPRODUCAOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLCUSTO: TFMTBCDField
      FieldName = 'VLCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoVLCUSTOP: TFMTBCDField
      FieldName = 'VLCUSTOP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsordproducaoDSDESENHO: TStringField
      FieldName = 'DSDESENHO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsordproducaoDSDESENHOPOSICAO: TStringField
      FieldName = 'DSDESENHOPOSICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoDSDESENHOREVISAO: TStringField
      FieldName = 'DSDESENHOREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoNUDIASCUSTO: TIntegerField
      FieldName = 'NUDIASCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoDTPRVINSTALACAO: TDateField
      FieldName = 'DTPRVINSTALACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsordproducaoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object cdsordproducaoCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsordproducaoBOALTERAR: TStringField
      FieldName = 'BOALTERAR'
      ProviderFlags = []
      Size = 1
    end
    object cdsordproducaoBOEXCLUIR: TStringField
      FieldName = 'BOEXCLUIR'
      ProviderFlags = []
      Size = 1
    end
    object cdsordproducaoBOIMPRESSO: TStringField
      FieldName = 'BOIMPRESSO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dtsordproducao: TDataSource
    DataSet = cdsordproducao
    Left = 316
    Top = 252
  end
  object dts2: TDataSource
    DataSet = sdsdetail
    Left = 168
    Top = 228
  end
  object pumordproducao: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end>
    UseOwnFont = False
    Left = 560
    Top = 304
  end
end

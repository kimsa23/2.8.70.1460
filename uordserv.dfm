object frmOrdServ: TfrmOrdServ
  Left = 326
  Top = 218
  Hint = 'Abertura'
  ClientHeight = 702
  ClientWidth = 1193
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
    Width = 1193
    Height = 639
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object bvl1: TBevel
      Left = 0
      Top = 23
      Width = 1193
      Height = 42
      Align = alTop
      Shape = bsLeftLine
      ExplicitWidth = 1065
    end
    object Label1: TLabel
      Left = 3
      Top = 26
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 56
      Top = 26
      Width = 37
      Height = 13
      Caption = 'Entrada'
      Transparent = True
    end
    object lbltpordserv: TLabel
      Left = 282
      Top = 26
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
      OnDblClick = lbltpordservDblClick
    end
    object Label3: TLabel
      Left = 204
      Top = 26
      Width = 29
      Height = 13
      Caption = 'Sa'#237'da'
      Transparent = True
    end
    object lblstordserv: TLabel
      Left = 422
      Top = 26
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
    object lblprioridade: TLabel
      Left = 541
      Top = 26
      Width = 47
      Height = 13
      Caption = 'Prioridade'
      Transparent = True
    end
    object bvl2: TBevel
      Left = 0
      Top = 65
      Width = 1193
      Height = 184
      Align = alTop
    end
    object lblpreventrega: TLabel
      Left = 660
      Top = 26
      Width = 96
      Height = 13
      Caption = 'Previs'#227'o de Entrega'
      Transparent = True
    end
    object lblaprovacao: TLabel
      Left = 805
      Top = 26
      Width = 52
      Height = 13
      Caption = 'Aprova'#231#227'o'
      Transparent = True
    end
    object gbxequipamentoordserv: TcxGroupBox
      Left = 407
      Top = 68
      Caption = 'Equipamento'
      TabOrder = 14
      Height = 171
      Width = 440
      object lblcdtpvoltagem: TLabel
        Left = 2
        Top = 125
        Width = 30
        Height = 13
        Caption = 'Voltag'
        Transparent = True
      end
      object lblmodelo: TLabel
        Left = 2
        Top = 103
        Width = 35
        Height = 13
        Caption = 'Modelo'
        Transparent = True
      end
      object lblmarca: TLabel
        Left = 2
        Top = 81
        Width = 30
        Height = 13
        Caption = 'Marca'
        Transparent = True
      end
      object Label5: TLabel
        Left = 2
        Top = 59
        Width = 21
        Height = 13
        Caption = 'Tipo'
        Transparent = True
        OnDblClick = Label5DblClick
      end
      object lblnuserie: TLabel
        Left = 2
        Top = 39
        Width = 24
        Height = 13
        Caption = 'S'#233'rie'
        Transparent = True
      end
      object lblnupatrimonio: TLabel
        Left = 2
        Top = 16
        Width = 32
        Height = 13
        Caption = 'Patrim.'
        Transparent = True
        Visible = False
      end
      object lblnukm: TLabel
        Left = 2
        Top = 149
        Width = 15
        Height = 13
        Caption = 'Km'
        Transparent = True
      end
      object lblNUANO: TLabel
        Left = 119
        Top = 149
        Width = 19
        Height = 13
        Caption = 'Ano'
        Transparent = True
      end
      object lblcdcor: TLabel
        Left = 230
        Top = 149
        Width = 16
        Height = 13
        Caption = 'Cor'
        Transparent = True
      end
      object edtNUKM: TcxDBTextEdit
        Left = 37
        Top = 145
        DataBinding.DataField = 'NUKM'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        OnEnter = colorenter
        OnExit = colorexit
        Width = 80
      end
      object cbxCDTPVOLTAGEM: TcxDBLookupComboBox
        Left = 37
        Top = 123
        DataBinding.DataField = 'CDTPVOLTAGEM'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDTPVOLTAGEM'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPVOLTAGEM'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        OnEnter = colorenter
        OnExit = colorexit
        Width = 366
      end
      object cbxCDMODELO: TcxDBLookupComboBox
        Left = 37
        Top = 101
        DataBinding.DataField = 'CDMODELO'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDMODELO'
        Properties.ListColumns = <
          item
            FieldName = 'NMMODELO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        OnEnter = colorenter
        OnExit = colorexit
        Width = 366
      end
      object cbxCDMARCA: TcxDBLookupComboBox
        Left = 37
        Top = 79
        DataBinding.DataField = 'CDMARCA'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDMARCA'
        Properties.ListColumns = <
          item
            FieldName = 'NMMARCA'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        Width = 366
      end
      object cbxCDTPEQUIPAMENTO: TcxDBLookupComboBox
        Left = 37
        Top = 57
        DataBinding.DataField = 'CDTPEQUIPAMENTO'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDTPEQUIPAMENTO'
        Properties.ListColumns = <
          item
            FieldName = 'NMTPEQUIPAMENTO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        Width = 366
      end
      object edtNUSERIE: TcxDBTextEdit
        Left = 37
        Top = 35
        DataBinding.DataField = 'NUSERIE'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        Width = 396
      end
      object edtNUPATRIMONIO: TcxDBTextEdit
        Left = 37
        Top = 12
        DataBinding.DataField = 'NUPATRIMONIO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = colorexit
        Width = 396
      end
      object btntpequipamento: TcxButton
        Left = 405
        Top = 57
        Width = 28
        Height = 21
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 136
        OptionsImage.Images = dtmmain.imlMain
        PaintStyle = bpsGlyph
        TabOrder = 3
        OnClick = btntpequipamentoClick
      end
      object btnmarca: TcxButton
        Left = 405
        Top = 79
        Width = 28
        Height = 21
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 136
        OptionsImage.Images = dtmmain.imlMain
        PaintStyle = bpsGlyph
        TabOrder = 5
        OnClick = btnmarcaClick
      end
      object btnmodelo: TcxButton
        Left = 405
        Top = 101
        Width = 28
        Height = 21
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 136
        OptionsImage.Images = dtmmain.imlMain
        PaintStyle = bpsGlyph
        TabOrder = 7
        OnClick = btnmodeloClick
      end
      object edtnuano: TcxDBTextEdit
        Left = 145
        Top = 145
        DataBinding.DataField = 'NUANO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        OnEnter = colorenter
        OnExit = colorexit
        Width = 80
      end
      object cbxcdcor: TcxDBLookupComboBox
        Left = 272
        Top = 145
        DataBinding.DataField = 'CDCOR'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDCOR'
        Properties.ListColumns = <
          item
            FieldName = 'NMCOR'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        OnEnter = colorenter
        OnExit = colorexit
        Width = 131
      end
      object btncdcor: TcxButton
        Left = 405
        Top = 145
        Width = 28
        Height = 21
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 136
        OptionsImage.Images = dtmmain.imlMain
        PaintStyle = bpsGlyph
        TabOrder = 12
        OnClick = btncdcorClick
      end
    end
    object gbxequipamento: TcxGroupBox
      Left = 407
      Top = 68
      Caption = 'Equipamento'
      TabOrder = 13
      Visible = False
      Height = 175
      Width = 440
      object lblequipamento: TLabel
        Left = 2
        Top = 21
        Width = 40
        Height = 13
        Caption = 'C'#243'&digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
        OnDblClick = lblequipamentoDblClick
      end
      object lblqtdequipamento: TLabel
        Left = 128
        Top = 22
        Width = 47
        Height = 13
        Caption = 'Qtd Equip'
        Transparent = True
      end
      object lbllocal: TLabel
        Left = 267
        Top = 22
        Width = 26
        Height = 13
        Caption = 'Local'
        Transparent = True
      end
      object edtcdequipamento: TcxDBButtonEdit
        Left = 43
        Top = 14
        DataBinding.DataField = 'CDEQUIPAMENTO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdequipamentoPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorenter
        OnExit = edtcdequipamentoExit
        OnKeyDown = edtcdequipamentoKeyDown
        Width = 83
      end
      object edtDSLOCALIZACAO: TcxDBTextEdit
        Left = 299
        Top = 14
        DataBinding.DataField = 'DSLOCALIZACAO'
        DataBinding.DataSource = dts
        TabOrder = 2
        OnEnter = colorenter
        OnExit = colorexit
        Width = 69
      end
      object edtnuseqequipamento: TcxDBTextEdit
        Left = 178
        Top = 14
        DataBinding.DataField = 'nuseqequipamento'
        DataBinding.DataSource = dts
        TabOrder = 1
        OnEnter = colorenter
        OnExit = colorexit
        Width = 85
      end
      object rceequipamento: TcxRichEdit
        Left = 2
        Top = 41
        Align = alBottom
        Enabled = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Lucida Console'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 132
        Width = 436
      end
    end
    object txtDTSAIDA: TcxDBLabel
      Left = 204
      Top = 43
      DataBinding.DataField = 'DTSAIDA'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 21
      Width = 80
    end
    object txtHRENTRADA: TcxDBLabel
      Left = 137
      Top = 43
      DataBinding.DataField = 'HRENTRADA'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 21
      Width = 68
    end
    object edthrentrada: TcxDBTimeEdit
      Left = 137
      Top = 40
      DataBinding.DataField = 'hrentrada'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      Width = 68
    end
    object txtDTENTRADA: TcxDBLabel
      Left = 56
      Top = 43
      DataBinding.DataField = 'DTENTRADA'
      DataBinding.DataSource = dts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 21
      Width = 80
    end
    object edtDTENTRADA: TcxDBDateEdit
      Left = 56
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
      Width = 80
    end
    object edtDTSAIDA: TcxDBDateEdit
      Left = 204
      Top = 40
      DataBinding.DataField = 'DTSAIDA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      Width = 80
    end
    object cbxcdprioridade: TcxDBLookupComboBox
      Left = 541
      Top = 40
      DataBinding.DataField = 'CDPRIORIDADE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDPRIORIDADE'
      Properties.ListColumns = <
        item
          FieldName = 'NMPRIORIDADE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 120
    end
    object cbxcdstordserv: TcxDBLookupComboBox
      Left = 422
      Top = 40
      DataBinding.DataField = 'CDSTORDSERV'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDSTORDSERV'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTORDSERV'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      Width = 120
    end
    object cbxcdtpordserv: TcxDBLookupComboBox
      Left = 282
      Top = 40
      DataBinding.DataField = 'CDTPORDSERV'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPORDSERV'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPORDSERV'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      Width = 140
    end
    object pgc: TcxPageControl
      Left = 0
      Top = 249
      Width = 1193
      Height = 342
      Align = alClient
      TabOrder = 15
      Properties.ActivePage = tbsproduto
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dtmmain.imlMain
      LookAndFeel.NativeStyle = False
      OnChange = pgcChange
      ClientRectBottom = 342
      ClientRectRight = 1193
      ClientRectTop = 25
      object tbsproduto: TcxTabSheet
        Caption = 'Produto'
        ImageIndex = 24
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grd: TcxGrid
          Left = 0
          Top = 0
          Width = 1193
          Height = 317
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbv: TcxGridDBTableView
            OnKeyDown = tbvKeyDown
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
            DataController.DataSource = dtsdetai
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object tbvCDDIGITADO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDDIGITADO'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tbvCDDIGITADOPropertiesButtonClick
              Styles.Content = dtmmain.cxStyle1
              Width = 100
            end
            object tbvCDALTERNATIVO: TcxGridDBColumn
              Caption = 'C'#243'digo Alternativo'
              DataBinding.FieldName = 'CDALTERNATIVO'
              Visible = False
              Options.Focusing = False
              Width = 100
            end
            object tbvNMPRODUTO: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'NMPRODUTO'
              Options.Focusing = False
              Width = 300
            end
            object tbvNMITORDSERV: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'NMITORDSERV'
              Visible = False
              Width = 300
            end
            object tbvQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object tbvVLUNITARIO: TcxGridDBColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            end
            object tbvVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
            object tbvDSLOCALIZACAO: TcxGridDBColumn
              Caption = 'Localiza'#231#227'o'
              DataBinding.FieldName = 'DSLOCALIZACAO'
              Visible = False
              Options.Focusing = False
            end
            object tbvCDTPGRADEVALOR: TcxGridDBColumn
              Caption = 'Tipo Grade'
              DataBinding.FieldName = 'CDTPGRADEVALOR'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CDTPGRADEVALOR'
              Properties.ListColumns = <
                item
                  FieldName = 'NMTPGRADEVALOR'
                end>
              Properties.ListOptions.ShowHeader = False
              Visible = False
              Width = 129
            end
            object tbvCDSTITORDSERV: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'CDSTITORDSERV'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CDSTITORDSERV'
              Properties.ListColumns = <
                item
                  FieldName = 'NMSTITORDSERV'
                end>
              Properties.ListOptions.ShowHeader = False
              Visible = False
            end
          end
          object glvGrid1Level11: TcxGridLevel
            GridView = tbv
          end
        end
      end
      object tbsitordservexterno: TcxTabSheet
        Caption = 'Serv. Terceiro'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grditordservexterno: TcxGrid
          Left = 0
          Top = 0
          Width = 1193
          Height = 317
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvitordservexterno: TcxGridDBTableView
            OnKeyDown = tbvitordservexternoKeyDown
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
            OnCellDblClick = tbvitordservexternoCellDblClick
            DataController.DataSource = dtsitordservexterno
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvitordservexternoQTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = tbvitordservexternoVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object tbvitordservexternoCDDIGITADO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDDIGITADO'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tbvitordservexternoCDDIGITADOPropertiesButtonClick
              Styles.Content = dtmmain.cxStyle1
              Width = 80
            end
            object tbvitordservexternoNMPRODUTO: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'NMPRODUTO'
              Options.Focusing = False
              Width = 300
            end
            object tbvitordservexternoQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object tbvitordservexternoVLUNITARIO: TcxGridDBColumn
              Caption = 'Valor Unit'#225'rio'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            end
            object tbvitordservexternoVLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
          end
          object glvGrid1Level12: TcxGridLevel
            GridView = tbvitordservexterno
          end
        end
      end
      object tbsequipamento: TcxTabSheet
        Caption = 'Equipamento'
        ImageIndex = 95
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grditequipamento: TcxGrid
          Left = 0
          Top = 0
          Width = 1193
          Height = 317
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvitequipamento: TcxGridDBTableView
            OnKeyDown = tbvitequipamentoKeyDown
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
            OnCellDblClick = tbvitequipamentoCellDblClick
            DataController.DataSource = dtsitequipamento
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.GroupByBox = False
            object tbvitequipamentoCDEQUIPAMENTO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDEQUIPAMENTO'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tbvitequipamentoCDEQUIPAMENTOPropertiesButtonClick
              Styles.Content = dtmmain.cxStyle1
              Width = 80
            end
          end
          object glvGrid1Level1: TcxGridLevel
            GridView = tbvitequipamento
          end
        end
      end
      object tbsacessorio: TcxTabSheet
        Caption = 'Acess'#243'rio'
        ImageIndex = 103
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grditacessorio: TcxGrid
          Left = 0
          Top = 0
          Width = 1193
          Height = 317
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvitacessorio: TcxGridDBTableView
            OnKeyDown = tbvitacessorioKeyDown
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
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvitacessorioQTITEM
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
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
            end
            object tbvitacessorioNMACESSORIO: TcxGridDBColumn
              Caption = 'Acess'#243'rio'
              DataBinding.FieldName = 'NMACESSORIO'
              Options.Focusing = False
            end
            object tbvitacessorioQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
            end
          end
          object glvGrid1Level13: TcxGridLevel
            GridView = tbvitacessorio
          end
        end
      end
      object tbsdefapr: TcxTabSheet
        Caption = 'Defeito Reclamado'
        ImageIndex = 110
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grditdefapr: TcxGrid
          Left = 0
          Top = 0
          Width = 1193
          Height = 317
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvitdefapr: TcxGridDBTableView
            OnKeyDown = tbvitdefaprKeyDown
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
              Width = 70
            end
            object tbvitdefaprNMDEFEITO: TcxGridDBColumn
              Caption = 'Defeito'
              DataBinding.FieldName = 'NMDEFEITO'
              Options.Focusing = False
              Width = 350
            end
            object tbvitdefaprDSOBSERVACAO: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'DSOBSERVACAO'
              PropertiesClassName = 'TcxBlobEditProperties'
              Properties.BlobEditKind = bekMemo
              Properties.BlobPaintStyle = bpsText
              Width = 350
            end
          end
          object glvGrid1Level14: TcxGridLevel
            GridView = tbvitdefapr
          end
        end
      end
      object tbsdefenc: TcxTabSheet
        Caption = 'Defeito Encontrado'
        ImageIndex = 110
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grditdefenc: TcxGrid
          Left = 0
          Top = 0
          Width = 1193
          Height = 317
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvitdefenc: TcxGridDBTableView
            OnKeyDown = tbvitdefencKeyDown
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
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
              Width = 70
            end
            object tbvitdefencNMDEFEITO: TcxGridDBColumn
              Caption = 'Defeito'
              DataBinding.FieldName = 'NMDEFEITO'
              Options.Focusing = False
              Width = 350
            end
            object tbvitdefencDSOBSERVACAO: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'DSOBSERVACAO'
              PropertiesClassName = 'TcxBlobEditProperties'
              Properties.BlobEditKind = bekMemo
              Properties.BlobPaintStyle = bpsText
              Width = 350
            end
          end
          object glvGrid1Level15: TcxGridLevel
            GridView = tbvitdefenc
          end
        end
      end
      object tbsgeral: TcxTabSheet
        Caption = 'Geral'
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pgcgeral: TcxPageControl
          Left = 0
          Top = 0
          Width = 1193
          Height = 317
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tbsdatas
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.NativeStyle = False
          ClientRectBottom = 317
          ClientRectRight = 1193
          ClientRectTop = 24
          object tbsdatas: TcxTabSheet
            Caption = 'Datas'
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGroupBox4: TcxGroupBox
              Left = 187
              Top = 1
              Caption = 'Envio'
              TabOrder = 1
              Height = 62
              Width = 178
              object Label82: TLabel
                Left = 7
                Top = 16
                Width = 23
                Height = 13
                Caption = 'Data'
                Transparent = True
              end
              object Label83: TLabel
                Left = 114
                Top = 16
                Width = 23
                Height = 13
                Caption = 'Hora'
                Transparent = True
              end
              object edtHRENVIO: TcxDBTimeEdit
                Left = 112
                Top = 32
                DataBinding.DataField = 'HRENVIO'
                DataBinding.DataSource = dts
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                OnEnter = colorenter
                OnExit = colorexit
                Width = 62
              end
              object edtDTENVIO: TcxDBDateEdit
                Left = 7
                Top = 32
                DataBinding.DataField = 'DTENVIO'
                DataBinding.DataSource = dts
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = colorenter
                OnExit = colorexit
                Width = 102
              end
            end
            object gbxprevorcamento: TcxGroupBox
              Left = 6
              Top = 1
              Caption = 'Previs'#227'o de Or'#231'amento'
              TabOrder = 0
              Height = 62
              Width = 179
              object Label4: TLabel
                Left = 7
                Top = 16
                Width = 23
                Height = 13
                Caption = 'Data'
                Transparent = True
              end
              object Label15: TLabel
                Left = 114
                Top = 16
                Width = 23
                Height = 13
                Caption = 'Hora'
                Transparent = True
              end
              object edthrprevorcamento: TcxDBTimeEdit
                Left = 112
                Top = 32
                DataBinding.DataField = 'hrprevorcamento'
                DataBinding.DataSource = dts
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                OnEnter = colorenter
                OnExit = colorexit
                Width = 62
              end
              object edtDTPREVORCAMENTO: TcxDBDateEdit
                Left = 6
                Top = 32
                DataBinding.DataField = 'DTPREVORCAMENTO'
                DataBinding.DataSource = dts
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = colorenter
                OnExit = colorexit
                Width = 102
              end
            end
          end
          object tbsentrega: TcxTabSheet
            Caption = 'Entrega'
            ImageIndex = 1
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label16: TLabel
              Left = 7
              Top = 13
              Width = 55
              Height = 13
              Caption = 'Funcion'#225'rio'
              Transparent = True
            end
            object Label18: TLabel
              Left = 7
              Top = 57
              Width = 22
              Height = 13
              Caption = 'Para'
              Transparent = True
            end
            object Label29: TLabel
              Left = 7
              Top = 79
              Width = 55
              Height = 13
              Caption = 'Documento'
              Transparent = True
            end
            object Label49: TLabel
              Left = 6
              Top = 35
              Width = 23
              Height = 13
              Caption = 'Data'
              Transparent = True
            end
            object Label50: TLabel
              Left = 196
              Top = 35
              Width = 23
              Height = 13
              Caption = 'Hora'
              Transparent = True
            end
            object txtnmfuncionarioentregue: TDBText
              Left = 166
              Top = 18
              Width = 230
              Height = 13
              DataField = 'NMFUNCIONARIOENTREGUE'
              DataSource = dts
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              Transparent = True
              ShowHint = True
            end
            object edtnuentreguedocumento: TcxDBTextEdit
              Left = 65
              Top = 77
              DataBinding.DataField = 'nuentreguedocumento'
              DataBinding.DataSource = dts
              Properties.CharCase = ecUpperCase
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              OnEnter = colorenter
              OnExit = colorexit
              Width = 341
            end
            object edtnmentreguepara: TcxDBTextEdit
              Left = 65
              Top = 55
              DataBinding.DataField = 'nmentreguepara'
              DataBinding.DataSource = dts
              Properties.CharCase = ecUpperCase
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              OnEnter = colorenter
              OnExit = colorexit
              Width = 341
            end
            object edthrentregue: TcxDBTimeEdit
              Left = 222
              Top = 33
              DataBinding.DataField = 'hrentregue'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              OnEnter = colorenter
              OnExit = colorexit
              Width = 98
            end
            object edtDTENTREGUE: TcxDBDateEdit
              Left = 65
              Top = 33
              DataBinding.DataField = 'DTENTREGUE'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnEnter = colorenter
              OnExit = colorexit
              Width = 98
            end
            object edtcdfuncionarioentregue: TcxDBButtonEdit
              Left = 65
              Top = 11
              DataBinding.DataField = 'CDFUNCIONARIOENTREGUE'
              DataBinding.DataSource = dts
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = edtcdfuncionarioentreguePropertiesButtonClick
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              OnEnter = colorenter
              OnExit = colorexit
              OnKeyDown = edtcdfuncionarioentregueKeyDown
              Width = 101
            end
          end
          object tbsorcamento: TcxTabSheet
            Caption = 'Or'#231'amento'
            ImageIndex = 2
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label34: TLabel
              Left = 0
              Top = 10
              Width = 53
              Height = 13
              Caption = 'Or'#231'ado por'
              Transparent = True
            end
            object Label37: TLabel
              Left = 0
              Top = 33
              Width = 23
              Height = 13
              Caption = 'Data'
              Transparent = True
            end
            object Label38: TLabel
              Left = 141
              Top = 33
              Width = 27
              Height = 13
              Caption = 'In'#237'cio'
              Transparent = True
            end
            object Label32: TLabel
              Left = 255
              Top = 33
              Width = 16
              Height = 13
              Caption = 'Fim'
              Transparent = True
            end
            object Label52: TLabel
              Left = 358
              Top = 35
              Width = 23
              Height = 13
              Caption = 'Hora'
              Transparent = True
            end
            object Label46: TLabel
              Left = 0
              Top = 61
              Width = 26
              Height = 13
              Caption = 'Local'
              Transparent = True
            end
            object txtnmfuncionarioorcado: TDBText
              Left = 157
              Top = 16
              Width = 230
              Height = 13
              DataField = 'NMFUNCIONARIOORCADO'
              DataSource = dts
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              Transparent = True
              ShowHint = True
            end
            object edtHRORCADOHORA: TcxDBTimeEdit
              Left = 383
              Top = 31
              DataBinding.DataField = 'HRORCADOHORA'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              OnEnter = colorenter
              OnExit = colorexit
              Width = 85
            end
            object edtHRORCADOF: TcxDBTimeEdit
              Left = 273
              Top = 31
              DataBinding.DataField = 'HRORCADOF'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              OnEnter = colorenter
              OnExit = colorexit
              Width = 85
            end
            object edtHRORCADO: TcxDBTimeEdit
              Left = 170
              Top = 31
              DataBinding.DataField = 'HRORCADO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              OnEnter = colorenter
              OnExit = colorexit
              Width = 85
            end
            object edtDTORCADO: TcxDBDateEdit
              Left = 56
              Top = 31
              DataBinding.DataField = 'DTORCADO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnEnter = colorenter
              OnExit = colorexit
              Width = 85
            end
            object edtDSLOCALIZACAOORCADO: TcxDBTextEdit
              Left = 56
              Top = 53
              DataBinding.DataField = 'DSLOCALIZACAOORCADO'
              DataBinding.DataSource = dts
              Properties.CharCase = ecUpperCase
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              OnEnter = colorenter
              OnExit = colorexit
              Width = 412
            end
            object cxGroupBox2: TcxGroupBox
              Left = 604
              Top = 4
              Caption = 'Comiss'#227'o Servi'#231'o'
              TabOrder = 7
              Height = 69
              Width = 119
              object Label56: TLabel
                Left = 9
                Top = 19
                Width = 8
                Height = 13
                Caption = '%'
                Transparent = True
              end
              object Label57: TLabel
                Left = 9
                Top = 43
                Width = 24
                Height = 13
                Caption = 'Valor'
                Transparent = True
              end
              object edtvlcomissaoservicoorcado: TcxDBCalcEdit
                Left = 35
                Top = 40
                DataBinding.DataField = 'vlcomissaoservicoorcado'
                DataBinding.DataSource = dts
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                OnEnter = colorenter
                OnExit = colorexit
                Width = 78
              end
              object edtprcomissaoservicoorcado: TcxDBCalcEdit
                Left = 35
                Top = 16
                DataBinding.DataField = 'prcomissaoservicoorcado'
                DataBinding.DataSource = dts
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = colorenter
                OnExit = colorexit
                Width = 78
              end
            end
            object cxGroupBox1: TcxGroupBox
              Left = 476
              Top = 4
              Caption = 'Comiss'#227'o Produto'
              TabOrder = 6
              Height = 69
              Width = 119
              object Label54: TLabel
                Left = 9
                Top = 19
                Width = 8
                Height = 13
                Caption = '%'
                Transparent = True
              end
              object Label55: TLabel
                Left = 9
                Top = 43
                Width = 24
                Height = 13
                Caption = 'Valor'
                Transparent = True
              end
              object edtvlcomissaoprodutoorcado: TcxDBCalcEdit
                Left = 35
                Top = 40
                DataBinding.DataField = 'vlcomissaoprodutoorcado'
                DataBinding.DataSource = dts
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                OnEnter = colorenter
                OnExit = colorexit
                Width = 78
              end
              object edtprcomissaoprodutoorcado: TcxDBCalcEdit
                Left = 35
                Top = 16
                DataBinding.DataField = 'prcomissaoprodutoorcado'
                DataBinding.DataSource = dts
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = colorenter
                OnExit = colorexit
                Width = 78
              end
            end
            object edtcdfuncionarioorcado: TcxDBButtonEdit
              Left = 56
              Top = 9
              DataBinding.DataField = 'CDFUNCIONARIOORCADO'
              DataBinding.DataSource = dts
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = edtcdfuncionarioorcadoPropertiesButtonClick
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              OnEnter = colorenter
              OnExit = colorexit
              OnKeyDown = edtcdfuncionarioorcadoKeyDown
              Width = 101
            end
          end
          object tbsconserto: TcxTabSheet
            Caption = 'Conserto'
            ImageIndex = 3
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label35: TLabel
              Left = 0
              Top = 10
              Width = 57
              Height = 13
              Caption = 'Consert. por'
              Transparent = True
            end
            object Label40: TLabel
              Left = 145
              Top = 33
              Width = 27
              Height = 13
              Caption = 'In'#237'cio'
              Transparent = True
            end
            object Label47: TLabel
              Left = 0
              Top = 61
              Width = 26
              Height = 13
              Caption = 'Local'
              Transparent = True
            end
            object Label51: TLabel
              Left = 259
              Top = 33
              Width = 16
              Height = 13
              Caption = 'Fim'
              Transparent = True
            end
            object Label53: TLabel
              Left = 362
              Top = 33
              Width = 23
              Height = 13
              Caption = 'Hora'
              Transparent = True
            end
            object Label39: TLabel
              Left = 0
              Top = 33
              Width = 23
              Height = 13
              Caption = 'Data'
              Transparent = True
            end
            object txtnmfuncionarioconserto: TDBText
              Left = 160
              Top = 13
              Width = 230
              Height = 13
              DataField = 'NMFUNCIONARIOCONSERTO'
              DataSource = dts
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              Transparent = True
              ShowHint = True
            end
            object edthrconsertohora: TcxDBTimeEdit
              Left = 387
              Top = 31
              DataBinding.DataField = 'hrconsertohora'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              OnEnter = colorenter
              OnExit = colorexit
              Width = 85
            end
            object edthrconsertof: TcxDBTimeEdit
              Left = 277
              Top = 31
              DataBinding.DataField = 'hrconsertof'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              OnEnter = colorenter
              OnExit = colorexit
              Width = 85
            end
            object edthrconserto: TcxDBTimeEdit
              Left = 174
              Top = 31
              DataBinding.DataField = 'hrconserto'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnEnter = colorenter
              OnExit = colorexit
              Width = 85
            end
            object edtDSLOCALIZACAOCONSERTO: TcxDBTextEdit
              Left = 60
              Top = 53
              DataBinding.DataField = 'DSLOCALIZACAOCONSERTO'
              DataBinding.DataSource = dts
              Properties.CharCase = ecUpperCase
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              OnEnter = colorenter
              OnExit = colorexit
              Width = 412
            end
            object edtDTCONSERTO: TcxDBDateEdit
              Left = 60
              Top = 31
              DataBinding.DataField = 'DTCONSERTO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              OnEnter = colorenter
              OnExit = colorexit
              Width = 85
            end
            object cxGroupBox5: TcxGroupBox
              Left = 608
              Top = 2
              Caption = 'Comiss'#227'o Servi'#231'o'
              TabOrder = 6
              Height = 69
              Width = 119
              object Label60: TLabel
                Left = 9
                Top = 19
                Width = 8
                Height = 13
                Caption = '%'
                Transparent = True
              end
              object Label61: TLabel
                Left = 9
                Top = 43
                Width = 24
                Height = 13
                Caption = 'Valor'
                Transparent = True
              end
              object edtvlcomissaoservicoconserto: TcxDBCalcEdit
                Left = 35
                Top = 40
                DataBinding.DataField = 'vlcomissaoservicoconserto'
                DataBinding.DataSource = dts
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                OnEnter = colorenter
                OnExit = colorexit
                Width = 78
              end
              object edtprcomissaoservicoconserto: TcxDBCalcEdit
                Left = 35
                Top = 16
                DataBinding.DataField = 'prcomissaoservicoconserto'
                DataBinding.DataSource = dts
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = colorenter
                OnExit = colorexit
                Width = 78
              end
            end
            object cxGroupBox3: TcxGroupBox
              Left = 480
              Top = 2
              Caption = 'Comiss'#227'o Produto'
              TabOrder = 5
              Height = 69
              Width = 119
              object Label58: TLabel
                Left = 9
                Top = 19
                Width = 8
                Height = 13
                Caption = '%'
                Transparent = True
              end
              object Label59: TLabel
                Left = 9
                Top = 43
                Width = 24
                Height = 13
                Caption = 'Valor'
                Transparent = True
              end
              object edtvlcomissaoprodutoconserto: TcxDBCalcEdit
                Left = 35
                Top = 40
                DataBinding.DataField = 'vlcomissaoprodutoconserto'
                DataBinding.DataSource = dts
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                OnEnter = colorenter
                OnExit = colorexit
                Width = 78
              end
              object edtprcomissaoprodutoconserto: TcxDBCalcEdit
                Left = 35
                Top = 16
                DataBinding.DataField = 'prcomissaoprodutoconserto'
                DataBinding.DataSource = dts
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = colorenter
                OnExit = colorexit
                Width = 78
              end
            end
            object edtcdfuncionarioconserto: TcxDBButtonEdit
              Left = 60
              Top = 8
              DataBinding.DataField = 'CDFUNCIONARIOCONSERTO'
              DataBinding.DataSource = dts
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = edtcdfuncionarioconsertoPropertiesButtonClick
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 7
              OnEnter = colorenter
              OnExit = colorexit
              OnKeyDown = edtcdfuncionarioconsertoKeyDown
              Width = 101
            end
          end
          object tbsdevolucaosemconserto: TcxTabSheet
            Caption = 'Devolu'#231#227'o'
            ImageIndex = 4
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Bevel1: TBevel
              Left = 0
              Top = 0
              Width = 1193
              Height = 52
              Align = alTop
              ExplicitWidth = 1065
            end
            object Label31: TLabel
              Left = 3
              Top = 7
              Width = 66
              Height = 13
              Caption = 'Devolvido por'
              Transparent = True
            end
            object Label33: TLabel
              Left = 44
              Top = 30
              Width = 23
              Height = 13
              Caption = 'Data'
              Transparent = True
            end
            object Label36: TLabel
              Left = 173
              Top = 30
              Width = 23
              Height = 13
              Caption = 'Hora'
              Transparent = True
            end
            object Label63: TLabel
              Left = 263
              Top = 30
              Width = 16
              Height = 13
              Caption = 'Fim'
              Transparent = True
            end
            object Label64: TLabel
              Left = 337
              Top = 30
              Width = 23
              Height = 13
              Caption = 'Hora'
              Transparent = True
            end
            object Label48: TLabel
              Left = 419
              Top = 30
              Width = 57
              Height = 13
              Caption = 'Localiza'#231#227'o'
              Transparent = True
            end
            object txtNMFUNCIONARIODEVOLVIDOCONSERTO: TDBText
              Left = 173
              Top = 13
              Width = 230
              Height = 13
              DataField = 'NMFUNCIONARIODEVOLVIDOCONSERTO'
              DataSource = dts
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              Transparent = True
              ShowHint = True
            end
            object edtDSLOCALIZACAODEVOLVIDOCONSERTO: TcxDBTextEdit
              Left = 480
              Top = 28
              DataBinding.DataField = 'DSLOCALIZACAODEVOLVIDOCONSERTO'
              DataBinding.DataSource = dts
              Properties.CharCase = ecUpperCase
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              OnEnter = colorenter
              OnExit = colorexit
              Width = 342
            end
            object edtHRDEVOLUCAOSEMCONSERTOHORA: TcxDBTimeEdit
              Left = 363
              Top = 28
              DataBinding.DataField = 'HRDEVOLUCAOSEMCONSERTOHORA'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              OnEnter = colorenter
              OnExit = colorexit
              Width = 52
            end
            object edtHRDEVOLUCAOSEMCONSERTOF: TcxDBTimeEdit
              Left = 281
              Top = 28
              DataBinding.DataField = 'HRDEVOLUCAOSEMCONSERTOF'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              OnEnter = colorenter
              OnExit = edtHRDEVOLUCAOSEMCONSERTOFExit
              Width = 52
            end
            object edthrdevolucaoSEMCONSERTO: TcxDBTimeEdit
              Left = 200
              Top = 28
              DataBinding.DataField = 'hrdevolucaoSEMCONSERTO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnEnter = colorenter
              OnExit = colorexit
              Width = 60
            end
            object edtDtDEVOLUCAOSEMCONSERTO: TcxDBDateEdit
              Left = 71
              Top = 28
              DataBinding.DataField = 'DtDEVOLUCAOSEMCONSERTO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              OnEnter = colorenter
              OnExit = colorexit
              Width = 100
            end
            object memDSDEVOLUCAOSEMCONSERTO: TcxDBMemo
              Left = 0
              Top = 52
              Align = alClient
              DataBinding.DataField = 'DSDEVOLUCAOSEMCONSERTO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              OnEnter = colorenter
              OnExit = colorexit
              Height = 241
              Width = 1193
            end
            object edtcdfuncionariodevolvidoconserto: TcxDBButtonEdit
              Left = 72
              Top = 6
              DataBinding.DataField = 'CDFUNCIONARIODEVOLVIDOCONSERTO'
              DataBinding.DataSource = dts
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = edtcdfuncionariodevolvidoconsertoPropertiesButtonClick
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 6
              OnEnter = colorenter
              OnExit = colorexit
              OnKeyDown = edtcdfuncionariodevolvidoconsertoKeyDown
              Width = 101
            end
          end
          object tbsoutras: TcxTabSheet
            Caption = 'Outras'
            ImageIndex = 5
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label62: TLabel
              Left = 8
              Top = 68
              Width = 75
              Height = 13
              Caption = 'Controle Interno'
              Transparent = True
            end
            object lblnubateria: TLabel
              Left = 127
              Top = 68
              Width = 48
              Height = 13
              Caption = 'N'#186' Bateria'
              Transparent = True
            end
            object edtNUBATERIA: TcxDBTextEdit
              Left = 127
              Top = 82
              DataBinding.DataField = 'NUBATERIA'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              OnEnter = colorenter
              OnExit = colorexit
              Width = 83
            end
            object edtnucontroleinterno: TcxDBTextEdit
              Left = 8
              Top = 82
              DataBinding.DataField = 'nucontroleinterno'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnEnter = colorenter
              OnExit = colorexit
              Width = 118
            end
            object gbxcomissao: TcxGroupBox
              Left = 5
              Top = 3
              Caption = 'Comiss'#227'o'
              TabOrder = 0
              Height = 60
              Width = 320
              object Label44: TLabel
                Left = 7
                Top = 16
                Width = 24
                Height = 13
                Caption = 'Total'
                Transparent = True
              end
              object Label43: TLabel
                Left = 110
                Top = 16
                Width = 37
                Height = 13
                Caption = 'Produto'
                Transparent = True
              end
              object Label45: TLabel
                Left = 213
                Top = 16
                Width = 36
                Height = 13
                Caption = 'Servi'#231'o'
                Transparent = True
              end
              object edtvlcomissaoservico: TcxDBCalcEdit
                Left = 213
                Top = 31
                DataBinding.DataField = 'vlcomissaoservico'
                DataBinding.DataSource = dts
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 2
                OnEnter = colorenter
                OnExit = colorexit
                Width = 100
              end
              object edtvlcomissaoproduto: TcxDBCalcEdit
                Left = 110
                Top = 31
                DataBinding.DataField = 'vlcomissaoproduto'
                DataBinding.DataSource = dts
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 1
                OnEnter = colorenter
                OnExit = colorexit
                Width = 100
              end
              object edtvlcomissao: TcxDBCalcEdit
                Left = 7
                Top = 31
                DataBinding.DataField = 'vlcomissao'
                DataBinding.DataSource = dts
                Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 0
                OnEnter = colorenter
                OnExit = colorexit
                Width = 100
              end
            end
            object rdgTPPRECOPRODUTO: TcxDBRadioGroup
              Left = 216
              Top = 72
              Caption = 'Tipo Pre'#231'o'
              DataBinding.DataField = 'TPPRECOPRODUTO'
              DataBinding.DataSource = dts
              Properties.Items = <
                item
                  Caption = 'Venda'
                  Value = 'V'
                end
                item
                  Caption = 'Atacado'
                  Value = 'A'
                end
                item
                  Caption = 'Especial'
                  Value = 'E'
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              Height = 105
              Width = 185
            end
          end
          object tbscomercial: TcxTabSheet
            Caption = 'Comercial'
            ImageIndex = 6
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label65: TLabel
              Left = 4
              Top = 4
              Width = 80
              Height = 13
              Caption = 'N'#186' Dias Validade'
              Transparent = True
            end
            object Label66: TLabel
              Left = 4
              Top = 40
              Width = 40
              Height = 13
              Caption = 'Garantia'
              Transparent = True
            end
            object Label67: TLabel
              Left = 95
              Top = 3
              Width = 101
              Height = 13
              Caption = 'N'#186' Dias Prev Entrega'
              Transparent = True
            end
            object Label68: TLabel
              Left = 207
              Top = 40
              Width = 66
              Height = 13
              Caption = 'Data Garantia'
              Transparent = True
            end
            object edtDTGARANTIA: TcxDBDateEdit
              Left = 207
              Top = 54
              DataBinding.DataField = 'DTGARANTIA'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              OnEnter = colorenter
              OnExit = colorexit
              Width = 84
            end
            object edtnudiaspreventrega: TcxDBSpinEdit
              Left = 95
              Top = 17
              DataBinding.DataField = 'nudiaspreventrega'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnEnter = colorenter
              OnExit = colorexit
              Width = 90
            end
            object edtnudiasvalidadeorcamento: TcxDBSpinEdit
              Left = 4
              Top = 18
              DataBinding.DataField = 'nudiasvalidadeorcamento'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              OnEnter = colorenter
              OnExit = colorexit
              Width = 90
            end
            object cbxcdgarantia: TcxDBLookupComboBox
              Left = 4
              Top = 54
              DataBinding.DataField = 'cdgarantia'
              DataBinding.DataSource = dts
              Properties.KeyFieldNames = 'CDGARANTIA'
              Properties.ListColumns = <
                item
                  FieldName = 'NMGARANTIA'
                end>
              Properties.ListOptions.ShowHeader = False
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              OnEnter = colorenter
              OnExit = colorexit
              Width = 200
            end
          end
          object tbscomissao: TcxTabSheet
            Caption = 'Comiss'#227'o'
            ImageIndex = 7
            object Bevel10: TBevel
              Left = 1
              Top = 0
              Width = 504
              Height = 21
              Shape = bsFrame
            end
            object Bevel9: TBevel
              Left = 1
              Top = 108
              Width = 504
              Height = 21
              Shape = bsFrame
            end
            object lblcomissaoatendente: TLabel
              Left = 2
              Top = 21
              Width = 49
              Height = 13
              Caption = 'Atendente'
              Transparent = True
            end
            object lblcomissaotecnico: TLabel
              Left = 2
              Top = 66
              Width = 39
              Height = 13
              Caption = 'T'#233'cnico'
              Transparent = True
            end
            object lblcomissaovendedor: TLabel
              Left = 2
              Top = 91
              Width = 46
              Height = 13
              Caption = 'Vendedor'
              Transparent = True
            end
            object Label72: TLabel
              Left = 66
              Top = 4
              Width = 37
              Height = 13
              Caption = 'Produto'
              Transparent = True
            end
            object Label73: TLabel
              Left = 211
              Top = 4
              Width = 36
              Height = 13
              Caption = 'Servi'#231'o'
              Transparent = True
            end
            object Label74: TLabel
              Left = 355
              Top = 4
              Width = 45
              Height = 13
              Caption = 'Comiss'#227'o'
              Transparent = True
            end
            object Label69: TLabel
              Left = 4
              Top = 114
              Width = 24
              Height = 13
              Caption = 'Total'
              Transparent = True
            end
            object Label70: TLabel
              Left = 4
              Top = 5
              Width = 24
              Height = 13
              Caption = 'Valor'
              Transparent = True
            end
            object lblcomissaoorcado: TLabel
              Left = 2
              Top = 44
              Width = 62
              Height = 13
              Caption = 'Or'#231'amentista'
              Transparent = True
            end
            object txtvlprodutocomissao: TcxDBLabel
              Left = 116
              Top = 1
              DataBinding.DataField = 'vlprodutocomissao'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtvlcomissao: TcxDBLabel
              Left = 405
              Top = 110
              DataBinding.DataField = 'vlcomissao'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtvlcomissaovendedor: TcxDBLabel
              Left = 405
              Top = 87
              DataBinding.DataField = 'vlcomissaovendedor'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtVLCOMISSAOTECNICO: TcxDBLabel
              Left = 405
              Top = 64
              DataBinding.DataField = 'VLCOMISSAOTECNICO'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtVLCOMISSAOORCADO: TcxDBLabel
              Left = 405
              Top = 42
              DataBinding.DataField = 'VLCOMISSAOORCADO'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtVLCOMISSAOatendente: TcxDBLabel
              Left = 405
              Top = 20
              DataBinding.DataField = 'VLCOMISSAOatendente'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtvlcomissaoservico: TcxDBLabel
              Left = 261
              Top = 110
              DataBinding.DataField = 'vlcomissaoservico'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtvlcomissaovendedorservico: TcxDBLabel
              Left = 261
              Top = 87
              DataBinding.DataField = 'vlcomissaovendedorservico'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtVLCOMISSAOTECNICOSERVICO: TcxDBLabel
              Left = 261
              Top = 64
              DataBinding.DataField = 'VLCOMISSAOTECNICOSERVICO'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtVLCOMISSAOORCADOSERVICO: TcxDBLabel
              Left = 261
              Top = 42
              DataBinding.DataField = 'VLCOMISSAOORCADOSERVICO'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtVLCOMISSAOatendenteservico: TcxDBLabel
              Left = 261
              Top = 20
              DataBinding.DataField = 'VLCOMISSAOatendenteservico'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtvlservicocomissao: TcxDBLabel
              Left = 261
              Top = 1
              DataBinding.DataField = 'vlservicocomissao'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtvlcomissaoproduto: TcxDBLabel
              Left = 116
              Top = 110
              DataBinding.DataField = 'vlcomissaoproduto'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtvlcomissaovendedorPRODUTO: TcxDBLabel
              Left = 116
              Top = 87
              DataBinding.DataField = 'vlcomissaovendedorPRODUTO'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtVLCOMISSAOTECNICOPRODUTO: TcxDBLabel
              Left = 116
              Top = 64
              DataBinding.DataField = 'VLCOMISSAOTECNICOPRODUTO'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtVLCOMISSAOORCADOPRODUTO: TcxDBLabel
              Left = 116
              Top = 42
              DataBinding.DataField = 'VLCOMISSAOORCADOPRODUTO'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object txtVLCOMISSAOatendentePRODUTO: TcxDBLabel
              Left = 116
              Top = 20
              DataBinding.DataField = 'VLCOMISSAOatendentePRODUTO'
              DataBinding.DataSource = dts
              Transparent = True
              Height = 21
              Width = 90
            end
            object edtPRCOMISSAOVENDEDOR: TcxDBTimeEdit
              Left = 354
              Top = 86
              DataBinding.DataField = 'PRCOMISSAOVENDEDOR'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 11
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOTECNICO: TcxDBTimeEdit
              Left = 354
              Top = 63
              DataBinding.DataField = 'PRCOMISSAOTECNICO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 8
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOORCADO: TcxDBTimeEdit
              Left = 354
              Top = 41
              DataBinding.DataField = 'PRCOMISSAOORCADO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOATENDENTE: TcxDBTimeEdit
              Left = 354
              Top = 19
              DataBinding.DataField = 'PRCOMISSAOATENDENTE'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOVENDEDORSERVICO: TcxDBTimeEdit
              Left = 210
              Top = 86
              DataBinding.DataField = 'PRCOMISSAOVENDEDORSERVICO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 10
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOTECNICOSERVICO: TcxDBTimeEdit
              Left = 210
              Top = 63
              DataBinding.DataField = 'PRCOMISSAOTECNICOSERVICO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 7
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOORCADOSERVICO: TcxDBTimeEdit
              Left = 210
              Top = 41
              DataBinding.DataField = 'PRCOMISSAOORCADOSERVICO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOATENDENTESERVICO: TcxDBTimeEdit
              Left = 210
              Top = 19
              DataBinding.DataField = 'PRCOMISSAOATENDENTESERVICO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOVENDEDORPRODUTO: TcxDBTimeEdit
              Left = 65
              Top = 86
              DataBinding.DataField = 'PRCOMISSAOVENDEDORPRODUTO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 9
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOTECNICOPRODUTO: TcxDBTimeEdit
              Left = 65
              Top = 63
              DataBinding.DataField = 'PRCOMISSAOTECNICOPRODUTO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 6
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOORCADOPRODUTO: TcxDBTimeEdit
              Left = 65
              Top = 41
              DataBinding.DataField = 'PRCOMISSAOORCADOPRODUTO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
            object edtPRCOMISSAOATENDENTEPRODUTO: TcxDBTimeEdit
              Left = 65
              Top = 19
              DataBinding.DataField = 'PRCOMISSAOATENDENTEPRODUTO'
              DataBinding.DataSource = dts
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              OnEnter = colorenter
              OnExit = colorexit
              Width = 46
            end
          end
        end
      end
      object tbsetapa: TcxTabSheet
        Caption = 'Etapa'
        ImageIndex = 57
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grditetapa: TcxGrid
          Left = 0
          Top = 0
          Width = 1193
          Height = 317
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvitetapa: TcxGridDBTableView
            OnKeyDown = tbvitetapaKeyDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dtsitetapa
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object tbvitetapaCDETAPA: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDETAPA'
              Options.Focusing = False
            end
            object tbvitetapaNMETAPA: TcxGridDBColumn
              Caption = 'Etapa'
              DataBinding.FieldName = 'NMETAPA'
              Options.Focusing = False
              Width = 300
            end
            object tbvitetapaDTINICIO: TcxGridDBColumn
              Caption = 'Data In'#237'cio'
              DataBinding.FieldName = 'DTINICIO'
              Options.Focusing = False
            end
            object tbvitetapaHRINICIO: TcxGridDBColumn
              Caption = 'Hora In'#237'cio'
              DataBinding.FieldName = 'HRINICIO'
              Options.Focusing = False
            end
            object tbvitetapaDTFINAL: TcxGridDBColumn
              Caption = 'Data Final'
              DataBinding.FieldName = 'DTFINAL'
              Options.Focusing = False
            end
            object tbvitetapaHRFINAL: TcxGridDBColumn
              Caption = 'Hora Final'
              DataBinding.FieldName = 'HRFINAL'
              Options.Focusing = False
            end
          end
          object glvGrid1Level16: TcxGridLevel
            GridView = tbvitetapa
          end
        end
      end
      object tbsdefeito: TcxTabSheet
        Caption = 'Defeito'
        ImageIndex = 62
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object memdsdefeito: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'dsdefeito'
          DataBinding.DataSource = dts
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Height = 317
          Width = 1193
        end
      end
      object tbsavaliacaotecnica: TcxTabSheet
        Caption = 'Avalia'#231#227'o T'#233'cnica'
        ImageIndex = 62
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object memDSAVALIACAOTECNICA: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'DSAVALIACAOTECNICA'
          DataBinding.DataSource = dts
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Height = 317
          Width = 1193
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
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Height = 317
          Width = 1193
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
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          Height = 317
          Width = 1193
        end
      end
      object tbsobsinterna: TcxTabSheet
        Caption = 'Observa'#231#227'o Interna'
        ImageIndex = 62
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 1193
          Height = 26
          AutoSize = True
          Caption = 'ToolBar1'
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          Images = dtmmain.imlMain
          TabOrder = 0
          Transparent = True
          object ToolButton17: TToolButton
            Left = 0
            Top = 0
            Action = actNovoObsInterna
          end
        end
        object rceDSOBSINTERNA: TcxDBRichEdit
          Left = 0
          Top = 26
          Align = alClient
          DataBinding.DataField = 'DSOBSINTERNA'
          DataBinding.DataSource = dts
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 291
          Width = 1193
        end
      end
      object tbssolinterna: TcxTabSheet
        Caption = 'Solu'#231#227'o Interna'
        ImageIndex = 62
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object ToolBar2: TToolBar
          Left = 0
          Top = 0
          Width = 1193
          Height = 26
          AutoSize = True
          Caption = 'ToolBar2'
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          Images = dtmmain.imlMain
          TabOrder = 0
          Transparent = True
          object ToolButton16: TToolButton
            Left = 0
            Top = 0
            Action = actNovoSolInterna
          end
        end
        object rceDSSOLINTERNA: TcxDBRichEdit
          Left = 0
          Top = 26
          Align = alClient
          DataBinding.DataField = 'DSSOLINTERNA'
          DataBinding.DataSource = dts
          Properties.ScrollBars = ssBoth
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 291
          Width = 1193
        end
      end
      object tbsOSanterior: TcxTabSheet
        Caption = 'OS Anterior'
        ImageIndex = 64
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdosanterior: TcxGrid
          Left = 0
          Top = 0
          Width = 1193
          Height = 317
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object grdosanteriorDBTableView1: TcxGridDBTableView
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
            DataController.DataSource = dtsosanterior
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object grdosanteriorDBTableView1NUORDSERV: TcxGridDBColumn
              Caption = 'Ordem Servi'#231'o'
              DataBinding.FieldName = 'NUORDSERV'
              Width = 93
            end
            object grdosanteriorDBTableView1DTENTRADA: TcxGridDBColumn
              Caption = 'Data Entrada'
              DataBinding.FieldName = 'DTENTRADA'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 105
            end
            object grdosanteriorDBTableView1DTSAIDA: TcxGridDBColumn
              Caption = 'Data Sa'#237'da'
              DataBinding.FieldName = 'DTSAIDA'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 113
            end
            object grdosanteriorDBTableView1CDEQUIPAMENTO: TcxGridDBColumn
              Caption = 'Cd Equipamento'
              DataBinding.FieldName = 'CDEQUIPAMENTO'
              Width = 105
            end
          end
          object grdosanteriorLevel1: TcxGridLevel
            GridView = grdosanteriorDBTableView1
          end
        end
      end
      object tbsconsulta: TcxTabSheet
        Caption = 'Consulta'
        ImageIndex = 41
        ExplicitHeight = 280
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1193
          Height = 22
          Align = dalTop
          BarManager = bmg1
        end
        object grdconsulta: TcxGrid
          Left = 0
          Top = 22
          Width = 1193
          Height = 295
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          object tbvsaida: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Insert.Enabled = False
            Navigator.Buttons.Insert.Visible = False
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
            DataController.DataSource = dtsconsulta
            DataController.DetailKeyFieldNames = 'CDSAIDA'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = colVLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.NavigatorHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = 'Nota Fiscal'
              end>
            object colNUSAIDA: TcxGridDBBandedColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'NUSAIDA'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object colDTEMISSAO: TcxGridDBBandedColumn
              Caption = 'Emiss'#227'o'
              DataBinding.FieldName = 'DTEMISSAO'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object colVLTOTAL: TcxGridDBBandedColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object tbvsaidaNMTPSAIDA: TcxGridDBBandedColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'NMTPSAIDA'
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object tbvsaidaNMSERIE: TcxGridDBBandedColumn
              Caption = 'S'#233'rie'
              DataBinding.FieldName = 'NMSERIE'
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object tbvitsaida: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dtsitconsulta
            DataController.DetailKeyFieldNames = 'CDSAIDA'
            DataController.KeyFieldNames = 'CDSAIDA'
            DataController.MasterKeyFieldNames = 'CDSAIDA'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'CDDIGITADO'
                Column = colcddigitado
              end
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = colqtitem
              end
              item
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = colvltotali
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Bands = <
              item
                Caption = 'Produto'
              end
              item
                Caption = 'Valor'
              end>
            object colcddigitado: TcxGridDBBandedColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDDIGITADO'
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object colnmproduto: TcxGridDBBandedColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'NMPRODUTO'
              Width = 250
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object colqtitem: TcxGridDBBandedColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object colvlunitario: TcxGridDBBandedColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLUNITARIO'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object colvltotali: TcxGridDBBandedColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object grlsaida: TcxGridLevel
            GridView = tbvsaida
            object grlitsaida: TcxGridLevel
              GridView = tbvitsaida
            end
          end
        end
      end
    end
    object pnldesconto: TcxGroupBox
      Left = 0
      Top = 591
      Align = alBottom
      Caption = 'Totais'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 16
      Height = 48
      Width = 1193
      object Label17: TLabel
        Left = 2
        Top = 19
        Width = 46
        Height = 13
        Caption = 'Desconto'
        Transparent = True
      end
      object Label20: TLabel
        Left = 561
        Top = 5
        Width = 78
        Height = 46
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -40
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 352
        Top = 28
        Width = 55
        Height = 13
        Caption = 'Quantidade'
        Transparent = True
      end
      object lblresumoprodutos: TLabel
        Left = 179
        Top = 11
        Width = 36
        Height = 15
        Caption = 'Produtos'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object lblresumoservico: TLabel
        Left = 178
        Top = 27
        Width = 37
        Height = 15
        Caption = 'Servi'#231'os'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 352
        Top = 11
        Width = 74
        Height = 15
        Caption = 'Servi'#231'os Terceiro'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object edtvldesconto: TcxDBCalcEdit
        Left = 52
        Top = 15
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
        Width = 121
      end
      object txt4: TcxDBLabel
        Left = 218
        Top = 9
        DataBinding.DataField = 'VLPRODUTO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 132
      end
      object txt5: TcxDBLabel
        Left = 218
        Top = 25
        DataBinding.DataField = 'VLSERVICO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 132
      end
      object txt7: TcxDBLabel
        Left = 645
        Top = 5
        DataBinding.DataField = 'VLTOTAL'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -40
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 43
        Width = 200
      end
      object txt1: TcxDBLabel
        Left = 429
        Top = 9
        DataBinding.DataField = 'VLSERVICOTERCEIRO'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 127
      end
      object txt2: TcxDBLabel
        Left = 429
        Top = 25
        DataBinding.DataField = 'QTITEM'
        DataBinding.DataSource = dts
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        Height = 21
        Width = 127
      end
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object gbxcliente: TcxGroupBox
      Left = 2
      Top = 68
      Caption = 'Cliente'
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 40
      Width = 401
      object lblcdcliente: TLabel
        Left = 2
        Top = 16
        Width = 40
        Height = 13
        Caption = '&C'#243'digo'
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
      object txtNMCLIENTE: TDBText
        Left = 170
        Top = 15
        Width = 225
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
        OnDblClick = txtNMCLIENTEDblClick
      end
      object edtcdcliente: TcxDBButtonEdit
        Left = 44
        Top = 12
        DataBinding.DataField = 'CDCLIENTE'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdclientePropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnKeyDown = edtcdclienteKeyDown
        OnKeyPress = edtcdclienteKeyPress
        Width = 121
      end
    end
    object gbxoutras: TcxGroupBox
      Left = 1
      Top = 107
      Caption = 'Outras'
      TabOrder = 12
      Height = 136
      Width = 401
      object lblatendente: TLabel
        Left = 2
        Top = 11
        Width = 59
        Height = 13
        Caption = 'Atendente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblatendenteDblClick
      end
      object lbltecnico: TLabel
        Left = 2
        Top = 32
        Width = 47
        Height = 13
        Caption = 'T'#233'cnico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lbltecnicoDblClick
      end
      object lblvendedor: TLabel
        Left = 2
        Top = 55
        Width = 55
        Height = 13
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblvendedorDblClick
      end
      object lblcdcondpagto: TLabel
        Left = 2
        Top = 73
        Width = 67
        Height = 13
        Caption = 'Cond Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = lblcdcondpagtoDblClick
      end
      object lbltpcobranca: TLabel
        Left = 0
        Top = 97
        Width = 62
        Height = 13
        Caption = 'Tp Cobran'#231'a'
        Transparent = True
      end
      object lblcdlocalservico: TLabel
        Left = 0
        Top = 119
        Width = 65
        Height = 13
        Caption = 'Local Servi'#231'o'
        Transparent = True
      end
      object txtnmfuncionarioatendente: TDBText
        Left = 169
        Top = 15
        Width = 230
        Height = 13
        DataField = 'NMFUNCIONARIOATENDENTE'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
      end
      object txtnmfuncionariotecnico: TDBText
        Left = 169
        Top = 36
        Width = 230
        Height = 13
        DataField = 'NMFUNCIONARIOTECNICO'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
      end
      object txtnmfuncionariovendedor: TDBText
        Left = 169
        Top = 57
        Width = 230
        Height = 13
        DataField = 'NMFUNCIONARIOVENDEDOR'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
      end
      object cbxcdtpcobranca: TcxDBLookupComboBox
        Left = 68
        Top = 91
        DataBinding.DataField = 'cdtpcobranca'
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
        TabOrder = 4
        OnEnter = colorenter
        OnExit = colorexit
        Width = 328
      end
      object cbxcdcondpagto: TcxDBLookupComboBox
        Left = 68
        Top = 70
        DataBinding.DataField = 'cdcondpagto'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDCONDPAGTO'
        Properties.ListColumns = <
          item
            FieldName = 'NMCONDPAGTO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = colorenter
        OnExit = colorexit
        Width = 328
      end
      object cbxcdlocalservico: TcxDBLookupComboBox
        Left = 68
        Top = 113
        DataBinding.DataField = 'CDLOCALSERVICO'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'CDLOCALSERVICO'
        Properties.ListColumns = <
          item
            FieldName = 'NMLOCALSERVICO'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnEnter = colorenter
        OnExit = colorexit
        Width = 328
      end
      object edtcdfuncionarioatendente: TcxDBButtonEdit
        Left = 68
        Top = 8
        DataBinding.DataField = 'CDFUNCIONARIOATENDENTE'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdfuncionarioatendentePropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Visible = False
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdfuncionarioatendenteKeyDown
        Width = 101
      end
      object edtcdfuncionariotecnico: TcxDBButtonEdit
        Left = 68
        Top = 29
        DataBinding.DataField = 'CDFUNCIONARIOTECNICO'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdfuncionariotecnicoPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Visible = False
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdfuncionariotecnicoKeyDown
        Width = 101
      end
      object edtcdfuncionariovendedor: TcxDBButtonEdit
        Left = 68
        Top = 50
        DataBinding.DataField = 'CDFUNCIONARIOVENDEDOR'
        DataBinding.DataSource = dts
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcdfuncionariovendedorPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Visible = False
        OnEnter = colorenter
        OnExit = colorexit
        OnKeyDown = edtcdfuncionariovendedorKeyDown
        Width = 101
      end
    end
    object edtDTPREVENTREGA: TcxDBDateEdit
      Left = 660
      Top = 40
      DataBinding.DataField = 'DTPREVENTREGA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = colorexit
      Width = 80
    end
    object edtHRPREVENTREGA: TcxDBTimeEdit
      Left = 739
      Top = 40
      DataBinding.DataField = 'HRPREVENTREGA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      Width = 68
    end
    object edtDTAPROVACAO: TcxDBDateEdit
      Left = 805
      Top = 40
      DataBinding.DataField = 'DTAPROVACAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnEnter = colorenter
      OnExit = colorexit
      Width = 80
    end
    object edtHRAPROVACAO: TcxDBTimeEdit
      Left = 885
      Top = 40
      DataBinding.DataField = 'HRAPROVACAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      Width = 68
    end
    object edtcodigo: TcxTextEdit
      Left = 3
      Top = 40
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 53
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 92
    Top = 1
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
    object actfechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar'
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actAberturaOs: TAction
      Caption = '315 - Abertura'
      Hint = 'Abertura'
      OnExecute = actAberturaOsExecute
    end
    object actaberturaosa5: TAction
      Caption = '316 - Abertura (A5)'
      OnExecute = actaberturaosa5Execute
    end
    object actEntregaOs: TAction
      Caption = '317 - Entrega'
      Hint = 'Entrega'
      OnExecute = actEntregaOsExecute
    end
    object actAcompanhamentoOs: TAction
      Caption = 'Acompanhamento'
      Hint = 'Acompanhamento'
      OnExecute = actAcompanhamentoOsExecute
    end
    object actorcamentocontrato: TAction
      Caption = 'Or'#231'amento Contrato'
      Hint = 'Or'#231'amento Contrato'
      ImageIndex = 93
      OnExecute = actorcamentocontratoExecute
    end
    object actorcamentoavulso: TAction
      Caption = 'Or'#231'amento Avulso'
      Hint = 'Or'#231'amento Avulso'
      ImageIndex = 93
      OnExecute = actorcamentoavulsoExecute
    end
    object actimprimirorcamento: TAction
      Caption = '670 - Or'#231'amento'
      OnExecute = actimprimirorcamentoExecute
    end
    object actentregasemcomprovante: TAction
      Caption = 'Entrega sem comprovante'
      OnExecute = actentregasemcomprovanteExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
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
    object actMudarEtapa: TAction
      Caption = 'Mudar Etapa'
      Enabled = False
      Hint = 'Mudar Etapa'
      ImageIndex = 57
      OnExecute = actMudarEtapaExecute
    end
    object actrevisao: TAction
      Caption = 'Revis'#227'o'
      Enabled = False
      ImageIndex = 147
      OnExecute = actrevisaoExecute
    end
    object actNovoObsInterna: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 62
      OnExecute = actNovoObsInternaExecute
    end
    object actNovoSolInterna: TAction
      Caption = 'Novo'
      Hint = 'Novo'
      ImageIndex = 62
      OnExecute = actNovoSolInternaExecute
    end
    object actGerarNotafiscal: TAction
      Caption = 'Gerar Nota'
      Enabled = False
      ImageIndex = 19
      OnExecute = actGerarNotafiscalExecute
    end
    object actabrircliente: TAction
      Hint = 'cliente'
      ImageIndex = 35
      OnExecute = actabrirclienteExecute
    end
    object actabrirtpordserv: TAction
      Hint = 'tpordserv'
      ImageIndex = 64
      OnExecute = actabrirtpordservExecute
    end
    object actabrirequipamento: TAction
      Hint = 'equipamento'
      OnExecute = actabrirequipamentoExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      ImageIndex = 24
      OnExecute = actabrirprodutoExecute
    end
    object actabrirtpequipamento: TAction
      Hint = 'tpequipamento'
      OnExecute = actabrirtpequipamentoExecute
    end
    object actabrircondpagto: TAction
      Hint = 'condpagto'
      OnExecute = actabrircondpagtoExecute
    end
    object actabrirprodutoexterno: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutoexternoExecute
    end
    object actabrirvendedor: TAction
      Hint = 'funcionario'
      OnExecute = actabrirvendedorExecute
    end
    object actabrirtecnico: TAction
      Hint = 'funcionario'
      OnExecute = actabrirtecnicoExecute
    end
    object actabriratendente: TAction
      Hint = 'funcionario'
      OnExecute = actabriratendenteExecute
    end
    object actabriritequipamento: TAction
      Hint = 'equipamento'
      OnExecute = actabriritequipamentoExecute
    end
    object actarquivo: TAction
      Caption = 'Arquivo(s)'
      OnExecute = actarquivoExecute
    end
    object actconsultasaida: TAction
      AutoCheck = True
      Caption = 'Nota Fiscal'
      Checked = True
      ImageIndex = 19
      OnExecute = actconsultasaidaExecute
    end
    object actitlacrebalanca: TAction
      Caption = 'Lacre Aplicado'
      OnExecute = actitlacrebalancaExecute
    end
    object actitlacrebalancaretirado: TAction
      Caption = 'Lacre Retirado'
      OnExecute = actitlacrebalancaretiradoExecute
    end
    object actitselobalanca: TAction
      Caption = 'Selo Aplicado'
      OnExecute = actitselobalancaExecute
    end
    object actitselobalancaretirado: TAction
      Caption = 'Selo Retirado'
      OnExecute = actitselobalancaretiradoExecute
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
    Left = 64
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
      Caption = 'ordserv1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 369
      FloatTop = 161
      FloatClientWidth = 62
      FloatClientHeight = 456
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
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
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
      Caption = 'consulta'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 395
      FloatTop = 219
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnsaida'
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
    object dxBarSubItem1: TdxBarSubItem
      Action = actImprimir
      Category = 0
      ItemLinks = <>
    end
    object dxBarButton2: TdxBarButton
      Action = actEntregaOs
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actAberturaOs
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actaberturaosa5
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actentregasemcomprovante
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actimprimirorcamento
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = actorcamentoavulso
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actAcompanhamentoOs
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actorcamentocontrato
      Category = 0
    end
    object dxBarButton20: TdxBarButton
      Action = actGerarNotafiscal
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actMudarEtapa
      Category = 0
    end
    object dxBarButton23: TdxBarButton
      Action = actrevisao
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actMudarEtapa
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actrevisao
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actGerarNotafiscal
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
    object dxBarButton1: TdxBarButton
      Action = actordserventrada
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actordservsaida
      Category = 0
    end
    object btnsaida: TdxBarButton
      Action = actconsultasaida
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton6: TdxBarButton
      Action = actitlacrebalanca
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actitlacrebalancaretirado
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actitselobalanca
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = actitselobalancaretirado
      Category = 0
    end
  end
  object sdsosanterior: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 162
  end
  object dsposanterior: TDataSetProvider
    DataSet = sdsosanterior
    Left = 888
    Top = 162
  end
  object cdsosanterior: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsposanterior'
    Left = 916
    Top = 162
  end
  object dtsosanterior: TDataSource
    DataSet = cdsosanterior
    Left = 944
    Top = 162
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
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
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end>
    UseOwnFont = False
    Left = 906
    Top = 3
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
        ItemName = 'dxBarButton5'
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
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end>
    UseOwnFont = False
    Left = 934
    Top = 3
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT ORDSERV.*'#13#10',CLIENTE.NMCLIENTE '#13#10',ATENDENTE.NMFUNCIONARIO ' +
      'NMFUNCIONARIOATENDENTE'#13#10',TECNICO.NMFUNCIONARIO NMFUNCIONARIOTECN' +
      'ICO'#13#10',VENDEDOR.NMFUNCIONARIO NMFUNCIONARIOVENDEDOR'#13#10',CONSERTO.NM' +
      'FUNCIONARIO NMFUNCIONARIOCONSERTO'#13#10',ENTREGUE.NMFUNCIONARIO NMFUN' +
      'CIONARIOENTREGUE'#13#10',ORCADO.NMFUNCIONARIO NMFUNCIONARIOORCADO'#13#10',DE' +
      'VOLVIDOCONSERTO.NMFUNCIONARIO NMFUNCIONARIODEVOLVIDOCONSERTO'#13#10'FR' +
      'OM ORDSERV '#13#10'LEFT JOIN CLIENTE ON CLIENTE.CDEMPRESA=ORDSERV.CDEM' +
      'PRESA AND CLIENTE.CDCLIENTE=ORDSERV.CDCLIENTE '#13#10'LEFT JOIN FUNCIO' +
      'NARIO ATENDENTE ON ATENDENTE.CDEMPRESA=ORDSERV.CDEMPRESA AND ATE' +
      'NDENTE.CDFUNCIONARIO=ORDSERV.CDFUNCIONARIOATENDENTE'#13#10'LEFT JOIN F' +
      'UNCIONARIO TECNICO ON TECNICO.CDEMPRESA=ORDSERV.CDEMPRESA AND TE' +
      'CNICO.CDFUNCIONARIO=ORDSERV.CDFUNCIONARIOTECNICO'#13#10'LEFT JOIN FUNC' +
      'IONARIO VENDEDOR ON VENDEDOR.CDEMPRESA=ORDSERV.CDEMPRESA AND VEN' +
      'DEDOR.CDFUNCIONARIO=ORDSERV.CDFUNCIONARIOVENDEDOR'#13#10'LEFT JOIN FUN' +
      'CIONARIO CONSERTO ON CONSERTO.CDEMPRESA=ORDSERV.CDEMPRESA AND CO' +
      'NSERTO.CDFUNCIONARIO=ORDSERV.CDFUNCIONARIOCONSERTO'#13#10'LEFT JOIN FU' +
      'NCIONARIO ENTREGUE ON ENTREGUE.CDEMPRESA=ORDSERV.CDEMPRESA AND E' +
      'NTREGUE.CDFUNCIONARIO=ORDSERV.CDFUNCIONARIOENTREGUE'#13#10'LEFT JOIN F' +
      'UNCIONARIO ORCADO ON ORCADO.CDEMPRESA=ORDSERV.CDEMPRESA AND ORCA' +
      'DO.CDFUNCIONARIO=ORDSERV.CDFUNCIONARIOORCADO'#13#10'LEFT JOIN FUNCIONA' +
      'RIO DEVOLVIDOCONSERTO ON DEVOLVIDOCONSERTO.CDEMPRESA=ORDSERV.CDE' +
      'MPRESA AND DEVOLVIDOCONSERTO.CDFUNCIONARIO=ORDSERV.CDFUNCIONARIO' +
      'DEVOLVIDOCONSERTO'#13#10'WHERE ORDSERV.CDEMPRESA=:CDEMPRESA AND ORDSER' +
      'V.CDORDSERV=:CDORDSERV'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDORDSERV'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 190
    object sdsCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDATUADOR: TIntegerField
      FieldName = 'CDATUADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONDENTREGA: TIntegerField
      FieldName = 'CDCONDENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDETAPA: TIntegerField
      FieldName = 'CDETAPA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDORDSERVANTERIOR: TIntegerField
      FieldName = 'CDORDSERVANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPOSICIONADOR: TIntegerField
      FieldName = 'CDPOSICIONADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPRIORIDADE: TIntegerField
      FieldName = 'CDPRIORIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTORDSERV: TIntegerField
      FieldName = 'CDSTORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPORDSERV: TIntegerField
      FieldName = 'CDTPORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDVALVULA: TIntegerField
      FieldName = 'CDVALVULA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIOATENDENTE: TIntegerField
      FieldName = 'CDFUNCIONARIOATENDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIOTECNICO: TIntegerField
      FieldName = 'CDFUNCIONARIOTECNICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDGARANTIA: TIntegerField
      FieldName = 'CDGARANTIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIOVENDEDOR: TIntegerField
      FieldName = 'CDFUNCIONARIOVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
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
    object sdsCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMODELO: TIntegerField
      FieldName = 'CDMODELO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMARCA: TIntegerField
      FieldName = 'CDMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDITORDPRODUCAO: TIntegerField
      FieldName = 'CDITORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPVOLTAGEM: TIntegerField
      FieldName = 'CDTPVOLTAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUORDSERV: TIntegerField
      FieldName = 'NUORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTENVIO: TDateField
      FieldName = 'DTENVIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTCOMUNICACAO: TDateField
      FieldName = 'DTCOMUNICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCOLETA: TStringField
      FieldName = 'NUCOLETA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPROPOSTA: TStringField
      FieldName = 'NUPROPOSTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUOSCLIENTE: TStringField
      FieldName = 'NUOSCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLPECA: TFMTBCDField
      FieldName = 'VLPECA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNUNF: TIntegerField
      FieldName = 'NUNF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTNF: TDateField
      FieldName = 'DTNF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTFATURA: TDateField
      FieldName = 'DTFATURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUNFDEVOLUCAO: TStringField
      FieldName = 'NUNFDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsNUNFFATURA: TStringField
      FieldName = 'NUNFFATURA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDSSOLUCAO: TBlobField
      FieldName = 'DSSOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDSDEFENC: TBlobField
      FieldName = 'DSDEFENC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDSDEFREC: TBlobField
      FieldName = 'DSDEFREC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsPRACRESCSERVICO: TFloatField
      FieldName = 'PRACRESCSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLACRESCSERVICO: TFMTBCDField
      FieldName = 'VLACRESCSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSTESTE: TBlobField
      FieldName = 'DSTESTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBOMEDICAO: TStringField
      FieldName = 'BOMEDICAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUFONE: TStringField
      FieldName = 'NUFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsHRATENDIMENTO: TTimeField
      FieldName = 'HRATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRRESOLUCAO: TTimeField
      FieldName = 'HRRESOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDSOBSINTERNA: TBlobField
      FieldName = 'DSOBSINTERNA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDSSOLINTERNA: TBlobField
      FieldName = 'DSSOLINTERNA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUIMPFECHAMENTO: TIntegerField
      FieldName = 'NUIMPFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOCONTRATO: TStringField
      FieldName = 'BOCONTRATO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUKM: TIntegerField
      FieldName = 'NUKM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUBATERIA: TStringField
      FieldName = 'NUBATERIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLFABRICAR: TFMTBCDField
      FieldName = 'VLFABRICAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsHRPREVENTREGA: TTimeField
      FieldName = 'HRPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPRONTA: TDateField
      FieldName = 'DTPRONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRPRONTA: TTimeField
      FieldName = 'HRPRONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTAPROVACAO: TDateField
      FieldName = 'DTAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRAPROVACAO: TTimeField
      FieldName = 'HRAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPREVORCAMENTO: TDateField
      FieldName = 'DTPREVORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRPREVORCAMENTO: TTimeField
      FieldName = 'HRPREVORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUSEQEQUIPAMENTO: TStringField
      FieldName = 'NUSEQEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsDSLOCALIZACAO: TStringField
      FieldName = 'DSLOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSERVICOTERCEIRO: TFMTBCDField
      FieldName = 'VLSERVICOTERCEIRO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNUCONTROLEINTERNO: TStringField
      FieldName = 'NUCONTROLEINTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsTPPRECOPRODUTO: TStringField
      FieldName = 'TPPRECOPRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUDIASVALIDADEORCAMENTO: TIntegerField
      FieldName = 'NUDIASVALIDADEORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDIASPREVENTREGA: TIntegerField
      FieldName = 'NUDIASPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTGARANTIA: TDateField
      FieldName = 'DTGARANTIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBOSERVICOENTREGUE: TStringField
      FieldName = 'BOSERVICOENTREGUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOSERVICOINTERNO: TStringField
      FieldName = 'BOSERVICOINTERNO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsNUDIASEXECUCAO: TIntegerField
      FieldName = 'NUDIASEXECUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPREVENTREGAORCAMENTO: TDateField
      FieldName = 'DTPREVENTREGAORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRCUSTOREPARO: TFloatField
      FieldName = 'PRCUSTOREPARO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTRETORNOORCAMENTO: TDateField
      FieldName = 'DTRETORNOORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTPPRECO: TStringField
      FieldName = 'TPPRECO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsHRENVIO: TTimeField
      FieldName = 'HRENVIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLFITA: TFMTBCDField
      FieldName = 'VLFITA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLMAOOBRA: TFMTBCDField
      FieldName = 'VLMAOOBRA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSDEFEITO: TMemoField
      FieldName = 'DSDEFEITO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sdsDSAVALIACAOTECNICA: TMemoField
      FieldName = 'DSAVALIACAOTECNICA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sdsNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsNUCOMPRIMENTO: TFloatField
      FieldName = 'NUCOMPRIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUESTRUTURA: TIntegerField
      FieldName = 'NUESTRUTURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPATRIMONIO: TStringField
      FieldName = 'NUPATRIMONIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsBOENTRADA: TStringField
      FieldName = 'BOENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsBOSAIDA: TStringField
      FieldName = 'BOSAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLPRODUTOCOMISSAO: TFMTBCDField
      FieldName = 'VLPRODUTOCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLSERVICOCOMISSAO: TFMTBCDField
      FieldName = 'VLSERVICOCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOVENDEDORPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOVENDEDORPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOTECNICOPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOTECNICOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOATENDENTEPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOATENDENTEPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRCOMISSAOVENDEDORPRODUTO: TFloatField
      FieldName = 'PRCOMISSAOVENDEDORPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRCOMISSAOTECNICOPRODUTO: TFloatField
      FieldName = 'PRCOMISSAOTECNICOPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRCOMISSAOATENDENTEPRODUTO: TFloatField
      FieldName = 'PRCOMISSAOATENDENTEPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRCOMISSAOVENDEDORSERVICO: TFloatField
      FieldName = 'PRCOMISSAOVENDEDORSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRCOMISSAOTECNICOSERVICO: TFloatField
      FieldName = 'PRCOMISSAOTECNICOSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRCOMISSAOATENDENTESERVICO: TFloatField
      FieldName = 'PRCOMISSAOATENDENTESERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOMISSAOVENDEDORSERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOVENDEDORSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOTECNICOSERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOTECNICOSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOATENDENTESERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOATENDENTESERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOATENDENTE: TFMTBCDField
      FieldName = 'VLCOMISSAOATENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOTECNICO: TFMTBCDField
      FieldName = 'VLCOMISSAOTECNICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOVENDEDOR: TFMTBCDField
      FieldName = 'VLCOMISSAOVENDEDOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRCOMISSAOATENDENTE: TFloatField
      FieldName = 'PRCOMISSAOATENDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRCOMISSAOTECNICO: TFloatField
      FieldName = 'PRCOMISSAOTECNICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRCOMISSAOVENDEDOR: TFloatField
      FieldName = 'PRCOMISSAOVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOMISSAOSERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOPRODUTO'
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
    object sdsVLCOMISSAOORCADOPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOORCADOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRCOMISSAOORCADOPRODUTO: TFloatField
      FieldName = 'PRCOMISSAOORCADOPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPRCOMISSAOORCADOSERVICO: TFloatField
      FieldName = 'PRCOMISSAOORCADOSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOMISSAOORCADOSERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOORCADOSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOMISSAOORCADO: TFMTBCDField
      FieldName = 'VLCOMISSAOORCADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRCOMISSAOORCADO: TFloatField
      FieldName = 'PRCOMISSAOORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIOCONSERTO: TIntegerField
      FieldName = 'CDFUNCIONARIOCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTCONSERTO: TDateField
      FieldName = 'DTCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRCONSERTO: TTimeField
      FieldName = 'HRCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRCONSERTOF: TTimeField
      FieldName = 'HRCONSERTOF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRCONSERTOHORA: TTimeField
      FieldName = 'HRCONSERTOHORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSLOCALIZACAOCONSERTO: TStringField
      FieldName = 'DSLOCALIZACAOCONSERTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsPRCOMISSAOPRODUTOCONSERTO: TFloatField
      FieldName = 'PRCOMISSAOPRODUTOCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOMISSAOPRODUTOCONSERTO: TFMTBCDField
      FieldName = 'VLCOMISSAOPRODUTOCONSERTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRCOMISSAOSERVICOCONSERTO: TFloatField
      FieldName = 'PRCOMISSAOSERVICOCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOMISSAOSERVICOCONSERTO: TFMTBCDField
      FieldName = 'VLCOMISSAOSERVICOCONSERTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsCDFUNCIONARIODEVOLVIDOCONSERTO: TIntegerField
      FieldName = 'CDFUNCIONARIODEVOLVIDOCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTDEVOLUCAOSEMCONSERTO: TDateField
      FieldName = 'DTDEVOLUCAOSEMCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRDEVOLUCAOSEMCONSERTO: TTimeField
      FieldName = 'HRDEVOLUCAOSEMCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRDEVOLUCAOSEMCONSERTOF: TTimeField
      FieldName = 'HRDEVOLUCAOSEMCONSERTOF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRDEVOLUCAOSEMCONSERTOHORA: TTimeField
      FieldName = 'HRDEVOLUCAOSEMCONSERTOHORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSLOCALIZACAODEVOLVIDOCONSERTO: TStringField
      FieldName = 'DSLOCALIZACAODEVOLVIDOCONSERTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDSDEVOLUCAOSEMCONSERTO: TBlobField
      FieldName = 'DSDEVOLUCAOSEMCONSERTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDFUNCIONARIOORCADO: TIntegerField
      FieldName = 'CDFUNCIONARIOORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTORCADO: TDateField
      FieldName = 'DTORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRORCADO: TTimeField
      FieldName = 'HRORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRORCADOF: TTimeField
      FieldName = 'HRORCADOF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRORCADOHORA: TTimeField
      FieldName = 'HRORCADOHORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSLOCALIZACAOORCADO: TStringField
      FieldName = 'DSLOCALIZACAOORCADO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsPRCOMISSAOPRODUTOORCADO: TFloatField
      FieldName = 'PRCOMISSAOPRODUTOORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOMISSAOPRODUTOORCADO: TFMTBCDField
      FieldName = 'VLCOMISSAOPRODUTOORCADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRCOMISSAOSERVICOORCADO: TFloatField
      FieldName = 'PRCOMISSAOSERVICOORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCOMISSAOSERVICOORCADO: TFMTBCDField
      FieldName = 'VLCOMISSAOSERVICOORCADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNUANO: TIntegerField
      FieldName = 'NUANO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOR: TIntegerField
      FieldName = 'CDCOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIOENTREGUE: TIntegerField
      FieldName = 'CDFUNCIONARIOENTREGUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTENTREGUE: TDateField
      FieldName = 'DTENTREGUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRENTREGUE: TTimeField
      FieldName = 'HRENTREGUE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMENTREGUEPARA: TStringField
      FieldName = 'NMENTREGUEPARA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsNUENTREGUEDOCUMENTO: TStringField
      FieldName = 'NUENTREGUEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsCDLOCALSERVICO: TIntegerField
      FieldName = 'CDLOCALSERVICO'
      ProviderFlags = [pfInUpdate]
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
    object sdsCDCLIENTECOBRANCA: TLargeintField
      FieldName = 'CDCLIENTECOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMFUNCIONARIOATENDENTE: TStringField
      FieldName = 'NMFUNCIONARIOATENDENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMFUNCIONARIOTECNICO: TStringField
      FieldName = 'NMFUNCIONARIOTECNICO'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMFUNCIONARIOVENDEDOR: TStringField
      FieldName = 'NMFUNCIONARIOVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMFUNCIONARIOENTREGUE: TStringField
      FieldName = 'NMFUNCIONARIOENTREGUE'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMFUNCIONARIOORCADO: TStringField
      FieldName = 'NMFUNCIONARIOORCADO'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMFUNCIONARIOCONSERTO: TStringField
      FieldName = 'NMFUNCIONARIOCONSERTO'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMFUNCIONARIODEVOLVIDOCONSERTO: TStringField
      FieldName = 'NMFUNCIONARIODEVOLVIDOCONSERTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object sdsdetail: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',P.NMPRODUTO'#13#10',P.DSLOCALIZACAO'#13#10',P.CDALTERNATIVO'#13#10',T' +
      '.BOSERVICO'#13#10',P.BOCOMISSAO'#13#10'FROM ITORDSERV I'#13#10'LEFT JOIN PRODUTO P' +
      ' ON P.CDPRODUTO=I.CDPRODUTO AND I.CDEMPRESA=P.CDEMPRESA'#13#10'LEFT JO' +
      'IN TPPRODUTO T ON T.CDTPPRODUTO=P.CDTPPRODUTO AND T.CDEMPRESA=P.' +
      'CDEMPRESA'#13#10'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDORDSERV=:CDORDSE' +
      'RV'
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
        Name = 'CDORDSERV'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 218
    object sdsdetailCDITORDSERV: TIntegerField
      FieldName = 'CDITORDSERV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsdetailCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDSTITORDSERV: TIntegerField
      FieldName = 'CDSTITORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDGARANTIA: TIntegerField
      FieldName = 'CDGARANTIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDSERVPLAN: TIntegerField
      FieldName = 'CDSERVPLAN'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDITETAPA: TIntegerField
      FieldName = 'CDITETAPA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDTPGRADEVALOR: TIntegerField
      FieldName = 'CDTPGRADEVALOR'
      ProviderFlags = [pfInUpdate]
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
    object sdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object sdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsdetailNMITORDSERV: TStringField
      FieldName = 'NMITORDSERV'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object sdsdetailNUPESAGEM: TStringField
      FieldName = 'NUPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsdetailQTAGUA: TFloatField
      FieldName = 'QTAGUA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUTEMPERATURA: TFloatField
      FieldName = 'NUTEMPERATURA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNUVIBRACAO: TFloatField
      FieldName = 'NUVIBRACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailTSINICIO: TSQLTimeStampField
      FieldName = 'TSINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailTSFIM: TSQLTimeStampField
      FieldName = 'TSFIM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsdetailDSLOCALIZACAO: TStringField
      FieldName = 'DSLOCALIZACAO'
      ProviderFlags = []
    end
    object sdsdetailCDALTERNATIVO: TStringField
      FieldName = 'CDALTERNATIVO'
      ProviderFlags = []
      Size = 30
    end
    object sdsdetailBOSERVICO: TStringField
      FieldName = 'BOSERVICO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsdetailBOCOMISSAO: TStringField
      FieldName = 'BOCOMISSAO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitacessorio: TSQLDataSet
    CommandText = 
      'SELECT I.*,a.nmacessorio'#13#10'FROM ITACESSORIO I'#13#10'left join acessori' +
      'o a on A.CDACESSORIO=I.CDACESSORIO AND A.CDEMPRESA=I.CDEMPRESA'#13#10 +
      'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDORDSERV=:CDORDSERV'
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
        Name = 'CDORDSERV'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 246
    object sdsitacessorioCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitacessorioCDACESSORIO: TIntegerField
      FieldName = 'CDACESSORIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitacessorioQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitacessorioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitacessorioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitacessorioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitacessorioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitacessorioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitacessorioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitacessorioCDITACESSORIO: TIntegerField
      FieldName = 'CDITACESSORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitacessorioNMACESSORIO: TStringField
      FieldName = 'NMACESSORIO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitacessorioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitdefapr: TSQLDataSet
    CommandText = 
      'SELECT I.*,D.NMDEFEITO FROM ITDEFAPR I LEFT JOIN DEFEITO D ON D.' +
      'CDDEFEITO=I.CDDEFEITO AND D.CDEMPRESA=I.CDEMPRESA WHERE I.CDEMPR' +
      'ESA=:CDEMPRESA AND I.CDORDSERV=:CDORDSERV'
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
        Name = 'CDORDSERV'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 274
    object sdsitdefaprCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitdefaprCDDEFEITO: TIntegerField
      FieldName = 'CDDEFEITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitdefaprDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitdefaprCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefaprCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefaprCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefaprCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefaprTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefaprTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefaprCDITDEFAPR: TIntegerField
      FieldName = 'CDITDEFAPR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitdefaprNMDEFEITO: TStringField
      FieldName = 'NMDEFEITO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitdefaprCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitdefenc: TSQLDataSet
    CommandText = 
      'SELECT I.*,D.NMDEFEITO FROM ITDEFENC I LEFT JOIN DEFEITO D ON D.' +
      'CDDEFEITO=I.CDDEFEITO AND D.CDEMPRESA=I.CDEMPRESA WHERE I.CDEMPR' +
      'ESA=:CDEMPRESA AND I.CDORDSERV=:CDORDSERV'
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
        Name = 'CDORDSERV'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 302
    object sdsitdefencCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitdefencCDDEFEITO: TIntegerField
      FieldName = 'CDDEFEITO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitdefencDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitdefencCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefencCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefencCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefencCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefencTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefencTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitdefencCDITDEFENC: TIntegerField
      FieldName = 'CDITDEFENC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitdefencNMDEFEITO: TStringField
      FieldName = 'NMDEFEITO'
      ProviderFlags = []
      Size = 100
    end
    object sdsitdefencCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitetapa: TSQLDataSet
    CommandText = 
      'SELECT etapa.NMETAPA, ITETAPA.*'#13#10'FROM ITETAPA'#13#10'LEFT JOIN ETAPA O' +
      'N ETAPA.CDETAPA = ITETAPA.CDETAPA AND ITETAPA.CDEMPRESA=ETAPA.CD' +
      'EMPRESA'#13#10'WHERE ITETAPA.CDEMPRESA=:CDEMPRESA AND ITETAPA.CDORDSER' +
      'V=:CDORDSERV'
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
        Name = 'CDORDSERV'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 330
    object sdsitetapaNMETAPA: TStringField
      FieldName = 'NMETAPA'
      ProviderFlags = []
      Size = 100
    end
    object sdsitetapaCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaCDSTITETAPA: TIntegerField
      FieldName = 'CDSTITETAPA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaCDETAPA: TIntegerField
      FieldName = 'CDETAPA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaHRFINAL: TTimeField
      FieldName = 'HRFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaDTINICIOFUNC: TDateField
      FieldName = 'DTINICIOFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaHRINICIOFUNC: TTimeField
      FieldName = 'HRINICIOFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaDTFINALFUNC: TDateField
      FieldName = 'DTFINALFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaHRFINALFUNC: TTimeField
      FieldName = 'HRFINALFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitetapaDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitetapaDSSOLUCAO: TBlobField
      FieldName = 'DSSOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsitetapaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitetapaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitetapaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitetapaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitetapaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitetapaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitetapaCDITETAPA: TIntegerField
      FieldName = 'CDITETAPA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitetapaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitequipamento: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITEQUIPAMENTO WHERE CDEMPRESA=:CDEMPRESA AND CDORD' +
      'SERV=:CDORDSERV'
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
        Name = 'CDORDSERV'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 358
    object sdsitequipamentoCDITEQUIPAMENTO: TIntegerField
      FieldName = 'CDITEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitequipamentoCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentoCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitequipamentoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsitordservexterno: TSQLDataSet
    CommandText = 
      'SELECT I.*,P.NMPRODUTO '#13#10'FROM ITORDSERVEXTERNO I'#13#10'LEFT JOIN PROD' +
      'UTO P ON P.CDEMPRESA=I.CDEMPRESA AND P.CDPRODUTO=I.CDPRODUTO'#13#10'WH' +
      'ERE I.CDEMPRESA=:CDEMPRESA AND I.CDORDSERV=:CDORDSERV'
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
        Name = 'CDORDSERV'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 859
    Top = 386
    object sdsitordservexternoCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordservexternoCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordservexternoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordservexternoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsitordservexternoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordservexternoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitordservexternoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitordservexternoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordservexternoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordservexternoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordservexternoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordservexternoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordservexternoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitordservexternoCDITORDSERVEXTERNO: TIntegerField
      FieldName = 'CDITORDSERVEXTERNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitordservexternoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitordservexternoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspUpdateError
    Left = 887
    Top = 190
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 915
    Top = 190
    object cdsCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDATUADOR: TIntegerField
      FieldName = 'CDATUADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCONDENTREGA: TIntegerField
      FieldName = 'CDCONDENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDETAPA: TIntegerField
      FieldName = 'CDETAPA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDORDSERVANTERIOR: TIntegerField
      FieldName = 'CDORDSERVANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPOSICIONADOR: TIntegerField
      FieldName = 'CDPOSICIONADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPRIORIDADE: TIntegerField
      FieldName = 'CDPRIORIDADE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDPRIORIDADEValidate
    end
    object cdsCDSTORDSERV: TIntegerField
      FieldName = 'CDSTORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPORDSERV: TIntegerField
      FieldName = 'CDTPORDSERV'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPORDSERVValidate
    end
    object cdsCDVALVULA: TIntegerField
      FieldName = 'CDVALVULA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIOATENDENTE: TIntegerField
      FieldName = 'CDFUNCIONARIOATENDENTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOATENDENTEValidate
    end
    object cdsCDFUNCIONARIOTECNICO: TIntegerField
      FieldName = 'CDFUNCIONARIOTECNICO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOTECNICOValidate
    end
    object cdsCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDGARANTIA: TIntegerField
      FieldName = 'CDGARANTIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIOVENDEDOR: TIntegerField
      FieldName = 'CDFUNCIONARIOVENDEDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOVENDEDORValidate
    end
    object cdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDITENTRADA: TIntegerField
      FieldName = 'CDITENTRADA'
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
    object cdsCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPEQUIPAMENTO: TIntegerField
      FieldName = 'CDTPEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMODELO: TIntegerField
      FieldName = 'CDMODELO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMARCA: TIntegerField
      FieldName = 'CDMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDITORDPRODUCAO: TIntegerField
      FieldName = 'CDITORDPRODUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPVOLTAGEM: TIntegerField
      FieldName = 'CDTPVOLTAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUORDSERV: TIntegerField
      FieldName = 'NUORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTENVIO: TDateField
      FieldName = 'DTENVIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTCOMUNICACAO: TDateField
      FieldName = 'DTCOMUNICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCOLETA: TStringField
      FieldName = 'NUCOLETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPROPOSTA: TStringField
      FieldName = 'NUPROPOSTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUOSCLIENTE: TStringField
      FieldName = 'NUOSCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLPECA: TFMTBCDField
      FieldName = 'VLPECA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNUNF: TIntegerField
      FieldName = 'NUNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTNF: TDateField
      FieldName = 'DTNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTFATURA: TDateField
      FieldName = 'DTFATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPREVENTREGA: TDateField
      FieldName = 'DTPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUNFDEVOLUCAO: TStringField
      FieldName = 'NUNFDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsNUNFFATURA: TStringField
      FieldName = 'NUNFFATURA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDSSOLUCAO: TBlobField
      FieldName = 'DSSOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDSDEFENC: TBlobField
      FieldName = 'DSDEFENC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDSDEFREC: TBlobField
      FieldName = 'DSDEFREC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsPRACRESCSERVICO: TFloatField
      FieldName = 'PRACRESCSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLACRESCSERVICO: TFMTBCDField
      FieldName = 'VLACRESCSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDSTESTE: TBlobField
      FieldName = 'DSTESTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBOMEDICAO: TStringField
      FieldName = 'BOMEDICAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNMCONTATO: TStringField
      FieldName = 'NMCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUFONE: TStringField
      FieldName = 'NUFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsHRATENDIMENTO: TTimeField
      FieldName = 'HRATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRRESOLUCAO: TTimeField
      FieldName = 'HRRESOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDSOBSINTERNA: TBlobField
      FieldName = 'DSOBSINTERNA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDSSOLINTERNA: TBlobField
      FieldName = 'DSSOLINTERNA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUIMPFECHAMENTO: TIntegerField
      FieldName = 'NUIMPFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOCONTRATO: TStringField
      FieldName = 'BOCONTRATO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUKM: TIntegerField
      FieldName = 'NUKM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUBATERIA: TStringField
      FieldName = 'NUBATERIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLFABRICAR: TFMTBCDField
      FieldName = 'VLFABRICAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsHRPREVENTREGA: TTimeField
      FieldName = 'HRPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPRONTA: TDateField
      FieldName = 'DTPRONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRPRONTA: TTimeField
      FieldName = 'HRPRONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTAPROVACAO: TDateField
      FieldName = 'DTAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRAPROVACAO: TTimeField
      FieldName = 'HRAPROVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPREVORCAMENTO: TDateField
      FieldName = 'DTPREVORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRPREVORCAMENTO: TTimeField
      FieldName = 'HRPREVORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUSEQEQUIPAMENTO: TStringField
      FieldName = 'NUSEQEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsDSLOCALIZACAO: TStringField
      FieldName = 'DSLOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLSERVICOTERCEIRO: TFMTBCDField
      FieldName = 'VLSERVICOTERCEIRO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNUCONTROLEINTERNO: TStringField
      FieldName = 'NUCONTROLEINTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsTPPRECOPRODUTO: TStringField
      FieldName = 'TPPRECOPRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUDIASVALIDADEORCAMENTO: TIntegerField
      FieldName = 'NUDIASVALIDADEORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDIASPREVENTREGA: TIntegerField
      FieldName = 'NUDIASPREVENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTGARANTIA: TDateField
      FieldName = 'DTGARANTIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBOSERVICOENTREGUE: TStringField
      FieldName = 'BOSERVICOENTREGUE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOSERVICOINTERNO: TStringField
      FieldName = 'BOSERVICOINTERNO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNUDIASEXECUCAO: TIntegerField
      FieldName = 'NUDIASEXECUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPREVENTREGAORCAMENTO: TDateField
      FieldName = 'DTPREVENTREGAORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRCUSTOREPARO: TFloatField
      FieldName = 'PRCUSTOREPARO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTRETORNOORCAMENTO: TDateField
      FieldName = 'DTRETORNOORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTPPRECO: TStringField
      FieldName = 'TPPRECO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsHRENVIO: TTimeField
      FieldName = 'HRENVIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLFITA: TFMTBCDField
      FieldName = 'VLFITA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLMAOOBRA: TFMTBCDField
      FieldName = 'VLMAOOBRA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSDEFEITO: TMemoField
      FieldName = 'DSDEFEITO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsDSAVALIACAOTECNICA: TMemoField
      FieldName = 'DSAVALIACAOTECNICA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsNUCOMPRIMENTO: TFloatField
      FieldName = 'NUCOMPRIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUESTRUTURA: TIntegerField
      FieldName = 'NUESTRUTURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPATRIMONIO: TStringField
      FieldName = 'NUPATRIMONIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBOENTRADA: TStringField
      FieldName = 'BOENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsBOSAIDA: TStringField
      FieldName = 'BOSAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdssdsitordservexterno: TDataSetField
      FieldName = 'sdsitordservexterno'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitequipamento: TDataSetField
      FieldName = 'sdsitequipamento'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitetapa: TDataSetField
      FieldName = 'sdsitetapa'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitdefenc: TDataSetField
      FieldName = 'sdsitdefenc'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitdefapr: TDataSetField
      FieldName = 'sdsitdefapr'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitacessorio: TDataSetField
      FieldName = 'sdsitacessorio'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsdetail: TDataSetField
      FieldName = 'sdsdetail'
      ProviderFlags = [pfInUpdate]
    end
    object cdsQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLPRODUTOCOMISSAO: TFMTBCDField
      FieldName = 'VLPRODUTOCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLSERVICOCOMISSAO: TFMTBCDField
      FieldName = 'VLSERVICOCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOVENDEDORPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOVENDEDORPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOTECNICOPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOTECNICOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOATENDENTEPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOATENDENTEPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRCOMISSAOVENDEDORPRODUTO: TFloatField
      FieldName = 'PRCOMISSAOVENDEDORPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRCOMISSAOTECNICOPRODUTO: TFloatField
      FieldName = 'PRCOMISSAOTECNICOPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRCOMISSAOATENDENTEPRODUTO: TFloatField
      FieldName = 'PRCOMISSAOATENDENTEPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRCOMISSAOVENDEDORSERVICO: TFloatField
      FieldName = 'PRCOMISSAOVENDEDORSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRCOMISSAOTECNICOSERVICO: TFloatField
      FieldName = 'PRCOMISSAOTECNICOSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRCOMISSAOATENDENTESERVICO: TFloatField
      FieldName = 'PRCOMISSAOATENDENTESERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOMISSAOVENDEDORSERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOVENDEDORSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOTECNICOSERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOTECNICOSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOATENDENTESERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOATENDENTESERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOATENDENTE: TFMTBCDField
      FieldName = 'VLCOMISSAOATENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOTECNICO: TFMTBCDField
      FieldName = 'VLCOMISSAOTECNICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOVENDEDOR: TFMTBCDField
      FieldName = 'VLCOMISSAOVENDEDOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRCOMISSAOATENDENTE: TFloatField
      FieldName = 'PRCOMISSAOATENDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRCOMISSAOTECNICO: TFloatField
      FieldName = 'PRCOMISSAOTECNICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRCOMISSAOVENDEDOR: TFloatField
      FieldName = 'PRCOMISSAOVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOMISSAOSERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOORCADOPRODUTO: TFMTBCDField
      FieldName = 'VLCOMISSAOORCADOPRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRCOMISSAOORCADOPRODUTO: TFloatField
      FieldName = 'PRCOMISSAOORCADOPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPRCOMISSAOORCADOSERVICO: TFloatField
      FieldName = 'PRCOMISSAOORCADOSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOMISSAOORCADOSERVICO: TFMTBCDField
      FieldName = 'VLCOMISSAOORCADOSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOMISSAOORCADO: TFMTBCDField
      FieldName = 'VLCOMISSAOORCADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRCOMISSAOORCADO: TFloatField
      FieldName = 'PRCOMISSAOORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIOCONSERTO: TIntegerField
      FieldName = 'CDFUNCIONARIOCONSERTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOCONSERTOValidate
    end
    object cdsDTCONSERTO: TDateField
      FieldName = 'DTCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRCONSERTO: TTimeField
      FieldName = 'HRCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRCONSERTOF: TTimeField
      FieldName = 'HRCONSERTOF'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsHRCONSERTOFValidate
    end
    object cdsHRCONSERTOHORA: TTimeField
      FieldName = 'HRCONSERTOHORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSLOCALIZACAOCONSERTO: TStringField
      FieldName = 'DSLOCALIZACAOCONSERTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsPRCOMISSAOPRODUTOCONSERTO: TFloatField
      FieldName = 'PRCOMISSAOPRODUTOCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOMISSAOPRODUTOCONSERTO: TFMTBCDField
      FieldName = 'VLCOMISSAOPRODUTOCONSERTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRCOMISSAOSERVICOCONSERTO: TFloatField
      FieldName = 'PRCOMISSAOSERVICOCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOMISSAOSERVICOCONSERTO: TFMTBCDField
      FieldName = 'VLCOMISSAOSERVICOCONSERTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCDFUNCIONARIODEVOLVIDOCONSERTO: TIntegerField
      FieldName = 'CDFUNCIONARIODEVOLVIDOCONSERTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIODEVOLVIDOCONSERTOValidate
    end
    object cdsDTDEVOLUCAOSEMCONSERTO: TDateField
      FieldName = 'DTDEVOLUCAOSEMCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRDEVOLUCAOSEMCONSERTO: TTimeField
      FieldName = 'HRDEVOLUCAOSEMCONSERTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRDEVOLUCAOSEMCONSERTOF: TTimeField
      FieldName = 'HRDEVOLUCAOSEMCONSERTOF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRDEVOLUCAOSEMCONSERTOHORA: TTimeField
      FieldName = 'HRDEVOLUCAOSEMCONSERTOHORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSLOCALIZACAODEVOLVIDOCONSERTO: TStringField
      FieldName = 'DSLOCALIZACAODEVOLVIDOCONSERTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDSDEVOLUCAOSEMCONSERTO: TBlobField
      FieldName = 'DSDEVOLUCAOSEMCONSERTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDFUNCIONARIOORCADO: TIntegerField
      FieldName = 'CDFUNCIONARIOORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTORCADO: TDateField
      FieldName = 'DTORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRORCADO: TTimeField
      FieldName = 'HRORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRORCADOF: TTimeField
      FieldName = 'HRORCADOF'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsHRORCADOFValidate
    end
    object cdsHRORCADOHORA: TTimeField
      FieldName = 'HRORCADOHORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSLOCALIZACAOORCADO: TStringField
      FieldName = 'DSLOCALIZACAOORCADO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsPRCOMISSAOPRODUTOORCADO: TFloatField
      FieldName = 'PRCOMISSAOPRODUTOORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOMISSAOPRODUTOORCADO: TFMTBCDField
      FieldName = 'VLCOMISSAOPRODUTOORCADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRCOMISSAOSERVICOORCADO: TFloatField
      FieldName = 'PRCOMISSAOSERVICOORCADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCOMISSAOSERVICOORCADO: TFMTBCDField
      FieldName = 'VLCOMISSAOSERVICOORCADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNUSAIDA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NUSAIDA'
      Calculated = True
    end
    object cdsNUANO: TIntegerField
      FieldName = 'NUANO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOR: TIntegerField
      FieldName = 'CDCOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIOENTREGUE: TIntegerField
      FieldName = 'CDFUNCIONARIOENTREGUE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOENTREGUEValidate
    end
    object cdsDTENTREGUE: TDateField
      FieldName = 'DTENTREGUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRENTREGUE: TTimeField
      FieldName = 'HRENTREGUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMENTREGUEPARA: TStringField
      FieldName = 'NMENTREGUEPARA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsNUENTREGUEDOCUMENTO: TStringField
      FieldName = 'NUENTREGUEDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCDLOCALSERVICO: TIntegerField
      FieldName = 'CDLOCALSERVICO'
      ProviderFlags = [pfInUpdate]
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
    object cdsCDCLIENTECOBRANCA: TLargeintField
      FieldName = 'CDCLIENTECOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMFUNCIONARIOATENDENTE: TStringField
      FieldName = 'NMFUNCIONARIOATENDENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMFUNCIONARIOTECNICO: TStringField
      FieldName = 'NMFUNCIONARIOTECNICO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMFUNCIONARIOVENDEDOR: TStringField
      FieldName = 'NMFUNCIONARIOVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMFUNCIONARIOENTREGUE: TStringField
      FieldName = 'NMFUNCIONARIOENTREGUE'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMFUNCIONARIOORCADO: TStringField
      FieldName = 'NMFUNCIONARIOORCADO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMFUNCIONARIOCONSERTO: TStringField
      FieldName = 'NMFUNCIONARIOCONSERTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMFUNCIONARIODEVOLVIDOCONSERTO: TStringField
      FieldName = 'NMFUNCIONARIODEVOLVIDOCONSERTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsdetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsdetail
    Params = <>
    BeforePost = cdsdetailBeforePost
    OnNewRecord = cdsdetailNewRecord
    Left = 913
    Top = 218
    object cdsdetailCDITORDSERV: TIntegerField
      FieldName = 'CDITORDSERV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsdetailCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDSTITORDSERV: TIntegerField
      FieldName = 'CDSTITORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDGARANTIA: TIntegerField
      FieldName = 'CDGARANTIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDSERVPLAN: TIntegerField
      FieldName = 'CDSERVPLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDITETAPA: TIntegerField
      FieldName = 'CDITETAPA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDTPGRADEVALOR: TIntegerField
      FieldName = 'CDTPGRADEVALOR'
      ProviderFlags = [pfInUpdate]
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
    object cdsdetailCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailCDDIGITADOValidate
      Size = 30
    end
    object cdsdetailVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsdetailQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsdetailQTITEMValidate
    end
    object cdsdetailPRDESCONTO: TFloatField
      FieldName = 'PRDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsdetailNMITORDSERV: TStringField
      FieldName = 'NMITORDSERV'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsdetailDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
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
    object cdsdetailNUPESAGEM: TStringField
      FieldName = 'NUPESAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsdetailQTAGUA: TFloatField
      FieldName = 'QTAGUA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUTEMPERATURA: TFloatField
      FieldName = 'NUTEMPERATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNUVIBRACAO: TFloatField
      FieldName = 'NUVIBRACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailCDFORMULACAO: TIntegerField
      FieldName = 'CDFORMULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailTSINICIO: TSQLTimeStampField
      FieldName = 'TSINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailTSFIM: TSQLTimeStampField
      FieldName = 'TSFIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsdetailNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsdetailDSLOCALIZACAO: TStringField
      FieldName = 'DSLOCALIZACAO'
      ProviderFlags = []
    end
    object cdsdetailCDALTERNATIVO: TStringField
      FieldName = 'CDALTERNATIVO'
      ProviderFlags = []
      Size = 30
    end
    object cdsdetailBOSERVICO: TStringField
      FieldName = 'BOSERVICO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsdetailBOCOMISSAO: TStringField
      FieldName = 'BOCOMISSAO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsdetailCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitacessorio: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitacessorio
    Params = <>
    BeforePost = cdsitacessorioBeforePost
    OnNewRecord = cdsitacessorioNewRecord
    Left = 912
    Top = 246
    object cdsitacessorioCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitacessorioCDACESSORIO: TIntegerField
      FieldName = 'CDACESSORIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitacessorioCDACESSORIOValidate
    end
    object cdsitacessorioQTITEM: TIntegerField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitacessorioCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitacessorioCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitacessorioCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitacessorioCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitacessorioTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitacessorioTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitacessorioCDITACESSORIO: TIntegerField
      FieldName = 'CDITACESSORIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitacessorioNMACESSORIO: TStringField
      FieldName = 'NMACESSORIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitacessorioCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitdefapr: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitdefapr
    Params = <>
    BeforePost = cdsitdefaprBeforePost
    Left = 912
    Top = 274
    object cdsitdefaprCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitdefaprCDDEFEITO: TIntegerField
      FieldName = 'CDDEFEITO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitdefaprCDDEFEITOValidate
    end
    object cdsitdefaprDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitdefaprCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefaprCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefaprCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefaprCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefaprTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefaprTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefaprCDITDEFAPR: TIntegerField
      FieldName = 'CDITDEFAPR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitdefaprNMDEFEITO: TStringField
      FieldName = 'NMDEFEITO'
      ProviderFlags = []
      Size = 100
    end
    object cdsitdefaprCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitdefenc: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitdefenc
    Params = <>
    BeforePost = cdsitdefencBeforePost
    Left = 912
    Top = 302
    object cdsitdefencCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitdefencCDDEFEITO: TIntegerField
      FieldName = 'CDDEFEITO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitdefencCDDEFEITOValidate
    end
    object cdsitdefencDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitdefencCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefencCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefencCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefencCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefencTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefencTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitdefencCDITDEFENC: TIntegerField
      FieldName = 'CDITDEFENC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitdefencNMDEFEITO: TStringField
      FieldName = 'NMDEFEITO'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsitetapa: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitetapa
    Params = <>
    ReadOnly = True
    Left = 912
    Top = 330
    object cdsitetapaNMETAPA: TStringField
      FieldName = 'NMETAPA'
      ProviderFlags = []
      Size = 100
    end
    object cdsitetapaCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaCDSTITETAPA: TIntegerField
      FieldName = 'CDSTITETAPA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaCDETAPA: TIntegerField
      FieldName = 'CDETAPA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaHRFINAL: TTimeField
      FieldName = 'HRFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaDTINICIOFUNC: TDateField
      FieldName = 'DTINICIOFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaHRINICIOFUNC: TTimeField
      FieldName = 'HRINICIOFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaDTFINALFUNC: TDateField
      FieldName = 'DTFINALFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaHRFINALFUNC: TTimeField
      FieldName = 'HRFINALFUNC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitetapaDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitetapaDSSOLUCAO: TBlobField
      FieldName = 'DSSOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsitetapaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitetapaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitetapaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitetapaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitetapaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitetapaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitetapaCDITETAPA: TIntegerField
      FieldName = 'CDITETAPA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitetapaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitequipamento: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitequipamento
    Params = <>
    BeforePost = cdsitequipamentoBeforePost
    Left = 912
    Top = 358
    object cdsitequipamentoCDITEQUIPAMENTO: TIntegerField
      FieldName = 'CDITEQUIPAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitequipamentoCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentoCDEQUIPAMENTO: TIntegerField
      FieldName = 'CDEQUIPAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitequipamentoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsitordservexterno: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitordservexterno
    Params = <>
    BeforePost = cdsitordservexternoBeforePost
    OnNewRecord = cdsitordservexternoNewRecord
    Left = 912
    Top = 386
    object cdsitordservexternoCDORDSERV: TIntegerField
      FieldName = 'CDORDSERV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordservexternoCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordservexternoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordservexternoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitordservexternoCDDIGITADOValidate
      Size = 30
    end
    object cdsitordservexternoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitordservexternoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitordservexternoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitordservexternoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordservexternoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordservexternoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordservexternoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordservexternoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordservexternoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitordservexternoCDITORDSERVEXTERNO: TIntegerField
      FieldName = 'CDITORDSERVEXTERNO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitordservexternoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitordservexternoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 943
    Top = 190
  end
  object dtsdetai: TDataSource
    DataSet = cdsdetail
    Left = 942
    Top = 218
  end
  object dtsitacessorio: TDataSource
    DataSet = cdsitacessorio
    Left = 942
    Top = 246
  end
  object dtsitdefapr: TDataSource
    DataSet = cdsitdefapr
    Left = 942
    Top = 274
  end
  object dtsitdefenc: TDataSource
    DataSet = cdsitdefenc
    Left = 942
    Top = 302
  end
  object dtsitetapa: TDataSource
    DataSet = cdsitetapa
    Left = 942
    Top = 330
  end
  object dtsitequipamento: TDataSource
    DataSet = cdsitequipamento
    Left = 942
    Top = 358
  end
  object dtsitordservexterno: TDataSource
    DataSet = cdsitordservexterno
    Left = 942
    Top = 386
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 971
    Top = 190
  end
  object sdsconsulta: TSQLDataSet
    CommandText = 'SELECT * FROM PEDIDO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 1017
    Top = 152
  end
  object dspconsulta: TDataSetProvider
    DataSet = sdsconsulta
    Left = 1045
    Top = 152
  end
  object cdsconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspconsulta'
    Left = 1073
    Top = 152
  end
  object dtsconsulta: TDataSource
    DataSet = cdsconsulta
    Left = 1101
    Top = 152
  end
  object dtsitconsulta: TDataSource
    DataSet = cdsitconsulta
    Left = 1101
    Top = 180
  end
  object cdsitconsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitconsulta'
    Left = 1073
    Top = 180
  end
  object dspitconsulta: TDataSetProvider
    DataSet = sdsitconsulta
    Left = 1045
    Top = 180
  end
  object sdsitconsulta: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dtmmain.sqlc
    Left = 1017
    Top = 180
  end
end

object frmContrato: TfrmContrato
  Left = 541
  Top = 112
  ClientHeight = 672
  ClientWidth = 1058
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
    Width = 1058
    Height = 62
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 26
      Width = 40
      Height = 13
      Caption = 'Contrato'
      Transparent = True
    end
    object lbldtinicio: TLabel
      Left = 560
      Top = 26
      Width = 27
      Height = 13
      Caption = 'In'#237'cio'
      Transparent = True
    end
    object lbldtfinal: TLabel
      Left = 653
      Top = 26
      Width = 22
      Height = 13
      Caption = 'Final'
      Transparent = True
    end
    object Label4: TLabel
      Left = 744
      Top = 26
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object Label5: TLabel
      Left = 66
      Top = 26
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object lbltpcontrato: TLabel
      Left = 421
      Top = 26
      Width = 26
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lbltpcontratoDblClick
    end
    object lbldtemissao: TLabel
      Left = 326
      Top = 26
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 6
      Top = 40
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtCodigoEnter
      OnKeyDown = edtCodigoKeyDown
      OnKeyPress = edtCodigoKeyPress
      Width = 59
    end
    object edtnome: TcxDBTextEdit
      Left = 66
      Top = 40
      DataBinding.DataField = 'NMCONTRATO'
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
      Width = 262
    end
    object edtdtinicio: TcxDBDateEdit
      Left = 561
      Top = 40
      DataBinding.DataField = 'DTINICIO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 92
    end
    object edtdtfinal: TcxDBDateEdit
      Left = 653
      Top = 40
      DataBinding.DataField = 'DTFINAL'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 92
    end
    object cbxcdstcontrato: TcxDBLookupComboBox
      Left = 744
      Top = 40
      DataBinding.DataField = 'CDSTCONTRATO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDSTCONTRATO'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTCONTRATO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = cbxcdstcontratoEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 145
    end
    object pnl: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cbxcdtpcontrato: TcxDBLookupComboBox
      Left = 418
      Top = 40
      DataBinding.DataField = 'CDSTCONTRATO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPCONTRATO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPCONTRATO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnValidate = cbxcdtpcontratoPropertiesValidate
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = cbxcdtpcontratoEnter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 145
    end
    object edtdtemissao: TcxDBDateEdit
      Left = 327
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
      OnKeyDown = nextcontrol
      Width = 92
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 170
    Width = 1058
    Height = 502
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tbsProduto
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 8
    ClientRectBottom = 502
    ClientRectRight = 1058
    ClientRectTop = 24
    object tbsProduto: TcxTabSheet
      Caption = 'Produto'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grditcontrato: TcxGrid
        Left = 0
        Top = 97
        Width = 1058
        Height = 381
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvitcontrato: TcxGridDBTableView
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
          DataController.DataSource = dtsitcontrato
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'QTITEM'
              Column = tbvitcontratoQTITEM
            end
            item
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvitcontratoVLTOTAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvitcontratoCDDIGITADO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDDIGITADO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grditcontratoDBTableView1CDDIGITADOPropertiesButtonClick
            Width = 112
          end
          object tbvitcontratoNMPRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'NMPRODUTO'
            Options.Editing = False
            Options.Focusing = False
            Width = 397
          end
          object tbvitcontratoQTITEM: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QTITEM'
            PropertiesClassName = 'TcxCalcEditProperties'
          end
          object tbvitcontratoVLUNITARIO: TcxGridDBColumn
            Caption = 'Valor Unti'#225'rio'
            DataBinding.FieldName = 'VLUNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object tbvitcontratoVLTOTAL: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
            Options.Focusing = False
          end
          object tbvitcontratoVLEXCEDENTE: TcxGridDBColumn
            Caption = 'Excedente'
            DataBinding.FieldName = 'VLEXCEDENTE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
        end
        object grditcontratoLevel1: TcxGridLevel
          GridView = tbvitcontrato
        end
      end
      object gbxvalores: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Valores'
        TabOrder = 1
        Height = 97
        Width = 1058
        object lblvlcontrato: TLabel
          Left = 5
          Top = 18
          Width = 82
          Height = 13
          Caption = 'Valor do Contrato'
          Transparent = True
        end
        object lbl2: TLabel
          Left = 5
          Top = 39
          Width = 95
          Height = 13
          Caption = 'Produto do Contrato'
          Transparent = True
        end
        object lblcdprodutoexcedente: TLabel
          Left = 5
          Top = 60
          Width = 90
          Height = 13
          Caption = 'Produto excedente'
          Transparent = True
        end
        object txtnmproduto: TDBText
          Left = 243
          Top = 36
          Width = 61
          Height = 13
          AutoSize = True
          DataField = 'NMPRODUTO'
          DataSource = dts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ParentShowHint = False
          Transparent = True
          ShowHint = True
        end
        object txtnmprodutoexcedente: TDBText
          Left = 243
          Top = 57
          Width = 111
          Height = 13
          AutoSize = True
          DataField = 'NMPRODUTOEXCEDENTE'
          DataSource = dts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          ParentShowHint = False
          Transparent = True
          ShowHint = True
        end
        object edtvlcontrato: TcxDBCalcEdit
          Left = 119
          Top = 10
          DataBinding.DataField = 'VLCONTRATO'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 121
        end
        object edtcdproduto: TcxDBButtonEdit
          Left = 119
          Top = 31
          DataBinding.DataField = 'CDPRODUTO'
          DataBinding.DataSource = dts
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtcdprodutoPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtcdprodutoKeyDown
          Width = 121
        end
        object edtcdprodutoexcedente: TcxDBButtonEdit
          Left = 119
          Top = 52
          DataBinding.DataField = 'CDPRODUTOEXCEDENTE'
          DataBinding.DataSource = dts
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtcdprodutoexcedentePropertiesButtonClick
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtcdprodutoexcedenteKeyDown
          Width = 121
        end
        object ckbbomensalidade: TcxDBCheckBox
          Left = 119
          Top = 74
          Caption = 'Permanecer mensalidade'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Transparent = True
        end
      end
    end
    object tbsordserv: TcxTabSheet
      Caption = 'Ordem Servi'#231'o'
      ImageIndex = 3
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label6: TLabel
        Left = -1
        Top = 6
        Width = 90
        Height = 13
        Caption = 'N'#186' Dias Preventiva'
        Transparent = True
      end
      object Label15: TLabel
        Left = -1
        Top = 23
        Width = 110
        Height = 13
        Caption = 'Qtd Horas Atendimento'
        Transparent = True
      end
      object Label16: TLabel
        Left = -1
        Top = 45
        Width = 100
        Height = 13
        Caption = 'Qtd horas Resolu'#231#227'o'
        Transparent = True
      end
      object edtnudiapreventiva: TcxDBSpinEdit
        Left = 110
        Top = -2
        DataBinding.DataField = 'NUDIAPREVENTIVA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 108
      end
      object edtHRATENDIMENTO: TcxDBTimeEdit
        Left = 110
        Top = 19
        DataBinding.DataField = 'HRATENDIMENTO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 108
      end
      object edtHRRESOLUCAO: TcxDBTimeEdit
        Left = 110
        Top = 39
        DataBinding.DataField = 'HRRESOLUCAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 108
      end
    end
    object tbsNegociacao: TcxTabSheet
      Caption = 'Negocia'#231#227'o'
      ImageIndex = 5
      object grdnegociacao: TcxGrid
        Left = 0
        Top = 0
        Width = 1058
        Height = 161
        Align = alTop
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvnegociacao: TcxGridDBTableView
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
          DataController.DataSource = dtsnegociacao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvnegociacaoNMITCONTRATONEGOCIACAO: TcxGridDBColumn
            Caption = 'Negocia'#231#227'o'
            DataBinding.FieldName = 'NMITCONTRATONEGOCIACAO'
            Width = 300
          end
          object tbvnegociacaoDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 80
          end
          object tbvnegociacaoDTTERMINO: TcxGridDBColumn
            Caption = 'T'#233'rmino'
            DataBinding.FieldName = 'DTTERMINO'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 80
          end
          object tbvnegociacaoCDTPCORRECAO: TcxGridDBColumn
            Caption = 'Tipo Correcao'
            DataBinding.FieldName = 'CDTPCORRECAO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPCORRECAO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPCORRECAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 80
          end
          object tbvnegociacaoCDPERIODICIDADE: TcxGridDBColumn
            Caption = 'Intermedi'#225'ria'
            DataBinding.FieldName = 'CDPERIODICIDADE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDPERIODICIDADE'
            Properties.ListColumns = <
              item
                FieldName = 'NMPERIODICIDADE'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 80
          end
          object tbvnegociacaoVLSALDO: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'VLSALDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvnegociacaoNUDIA: TcxGridDBColumn
            Caption = 'Dia Vencimento'
            DataBinding.FieldName = 'NUDIA'
            Width = 90
          end
          object tbvnegociacaoVLPARCELA: TcxGridDBColumn
            Caption = 'Parcela'
            DataBinding.FieldName = 'VLPARCELA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvnegociacaoPRJURO: TcxGridDBColumn
            Caption = 'Juros'
            DataBinding.FieldName = 'PRJURO'
          end
          object tbvnegociacaoNUPARCELAS: TcxGridDBColumn
            Caption = 'N'#186' Parcelas'
            DataBinding.FieldName = 'NUPARCELAS'
          end
          object tbvnegociacaoBOATIVO: TcxGridDBColumn
            Caption = 'Ativado'
            DataBinding.FieldName = 'BOATIVO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 60
          end
        end
        object glvnegociacao: TcxGridLevel
          GridView = tbvnegociacao
        end
      end
      object grdparcela: TcxGrid
        Left = 0
        Top = 188
        Width = 1058
        Height = 290
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbvparcela: TcxGridDBTableView
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
          DataController.DataSource = dtsparcela
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLAMORTIZACAO'
              Column = tbvparcelaVLAMORTIZACAO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLJUROS'
              Column = tbvparcelaVLJUROS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLJUROSADICIONAL'
              Column = tbvparcelaVLJUROSADICIONAL
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvparcelaNUPARCELA: TcxGridDBColumn
            Caption = 'N'#186' Parcela'
            DataBinding.FieldName = 'NUPARCELA'
          end
          object tbvparcelaDTPARCELA: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DTPARCELA'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object tbvparcelaVLPARCELA: TcxGridDBColumn
            Caption = 'Valor Parcela'
            DataBinding.FieldName = 'VLPARCELA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 100
          end
          object tbvparcelaVLSALDO: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'VLSALDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvparcelaVLJUROS: TcxGridDBColumn
            Caption = 'Juros'
            DataBinding.FieldName = 'VLJUROS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvparcelaVLJUROSADICIONAL: TcxGridDBColumn
            Caption = 'Juros Adicional'
            DataBinding.FieldName = 'VLJUROSADICIONAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvparcelaVLSALDOCORRIGIDO: TcxGridDBColumn
            Caption = 'Saldo Corrigido'
            DataBinding.FieldName = 'VLSALDOCORRIGIDO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvparcelaVLAMORTIZACAO: TcxGridDBColumn
            Caption = 'Amortiza'#231#227'o'
            DataBinding.FieldName = 'VLAMORTIZACAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvparcelaVLSALDODEVEDOR: TcxGridDBColumn
            Caption = 'Saldo Devedor'
            DataBinding.FieldName = 'VLSALDODEVEDOR'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object tbvparcelaPRCORRECAO: TcxGridDBColumn
            Caption = '% Corre'#231#227'o'
            DataBinding.FieldName = 'PRCORRECAO'
          end
          object tbvparcelaVLREAJUSTE: TcxGridDBColumn
            Caption = 'Valor Reajuste'
            DataBinding.FieldName = 'VLREAJUSTE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 80
          end
          object tbvparcelaVLSALDODEVEDORREAJUSTADO: TcxGridDBColumn
            Caption = 'Saldo Devedor Reajustado'
            DataBinding.FieldName = 'VLSALDODEVEDORREAJUSTADO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 140
          end
        end
        object glvparcela: TcxGridLevel
          GridView = tbvparcela
        end
      end
      object spl1: TcxSplitter
        Left = 0
        Top = 161
        Width = 1058
        Height = 8
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salTop
        Control = grdnegociacao
        ExplicitWidth = 8
      end
      object cxLabel1: TcxLabel
        Left = 0
        Top = 169
        Align = alTop
        Caption = 'Parcelas'
        ParentFont = False
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 179
      end
    end
  end
  object gbxcliente: TcxGroupBox
    Left = 0
    Top = 125
    Align = alTop
    Caption = 'Cliente'
    TabOrder = 1
    Height = 45
    Width = 1058
    object lblcdcliente: TLabel
      Left = 4
      Top = 17
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object lblnmcliente: TDBText
      Left = 144
      Top = 18
      Width = 55
      Height = 13
      AutoSize = True
      DataField = 'NMCLIENTE'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
    end
    object edtCDCLIENTE: TcxDBButtonEdit
      Left = 42
      Top = 13
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
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtCDCLIENTEKeyDown
      Width = 101
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 376
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
    object actabrirtpcontrato: TAction
      Hint = 'tpcontrato'
      OnExecute = actabrirtpcontratoExecute
    end
    object actopcoes: TAction
      Caption = 'Op'#231#245'es'
      ImageIndex = 134
      ShortCut = 16463
      OnExecute = actopcoesExecute
    end
    object actitcontratopaciente: TAction
      Caption = 'N'#186' de Pacientes por Data'
      Enabled = False
      OnExecute = actitcontratopacienteExecute
    end
    object actnegociacao: TAction
      Caption = 'Negocia'#231#227'o'
      Enabled = False
      OnExecute = actnegociacaoExecute
    end
    object actcalculoprestacao: TAction
      Caption = 'C'#225'lculo Presta'#231#227'o'
      Enabled = False
      OnExecute = actcalculoprestacaoExecute
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
    Left = 344
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
      Caption = 'contrato1'
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
    object btnopcoes: TdxBarLargeButton
      Action = actopcoes
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pumopcoes
    end
    object dxBarButton3: TdxBarButton
      Action = actitcontratopaciente
      Category = 0
    end
    object dxBarButton1: TdxBarButton
      Action = actnegociacao
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actcalculoprestacao
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT C.*'#13#10',CL.NMCLIENTE '#13#10',P.NMPRODUTO'#13#10',PE.NMPRODUTO NMPRODUT' +
      'OEXCEDENTE'#13#10'FROM CONTRATO C '#13#10'LEFT JOIN CLIENTE CL ON CL.CDCLIEN' +
      'TE=C.CDCLIENTE AND C.CDEMPRESA=CL.CDEMPRESA'#13#10'LEFT JOIN PRODUTO P' +
      ' ON P.CDPRODUTO=C.CDPRODUTO AND P.CDEMPRESA=C.CDEMPRESA'#13#10'LEFT JO' +
      'IN PRODUTO PE ON PE.CDPRODUTO=C.CDPRODUTOEXCEDENTE AND PE.CDEMPR' +
      'ESA=C.CDEMPRESA'#13#10'WHERE C.CDEMPRESA=:CDEMPRESA AND C.CDCONTRATO=:' +
      'CDCONTRATO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'CDCONTRATO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 739
    Top = 131
    object sdsCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsCDSTCONTRATO: TIntegerField
      FieldName = 'CDSTCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMCONTRATO: TStringField
      FieldName = 'NMCONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDIAPREVENTIVA: TIntegerField
      FieldName = 'NUDIAPREVENTIVA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRATENDIMENTO: TTimeField
      FieldName = 'HRATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRRESOLUCAO: TTimeField
      FieldName = 'HRRESOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCONTRATO: TFMTBCDField
      FieldName = 'VLCONTRATO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsNUPARCELAS: TIntegerField
      FieldName = 'NUPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLPARCELA: TFMTBCDField
      FieldName = 'VLPARCELA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTREFINANCIAMENTO: TDateField
      FieldName = 'DTREFINANCIAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDTPCONTRATO: TIntegerField
      FieldName = 'CDTPCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPRODUTOEXCEDENTE: TIntegerField
      FieldName = 'CDPRODUTOEXCEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsNMPRODUTOEXCEDENTE: TStringField
      FieldName = 'NMPRODUTOEXCEDENTE'
      ProviderFlags = []
      Size = 250
    end
    object sdsBOMENSALIDADE: TStringField
      FieldName = 'BOMENSALIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
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
    object sdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsitcontrato: TSQLDataSet
    CommandText = 
      'SELECT I.*'#13#10',P.NMPRODUTO '#13#10'FROM ITCONTRATO I '#13#10'LEFT JOIN PRODUTO' +
      ' P ON P.CDPRODUTO=I.CDPRODUTO AND P.CDEMPRESA=I.CDEMPRESA'#13#10'WHERE' +
      ' I.CDEMPRESA=:CDEMPRESA AND I.CDCONTRATO=:CDCONTRATO'
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
        Name = 'CDCONTRATO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 741
    Top = 161
    object sdsitcontratoCDITCONTRATO: TIntegerField
      FieldName = 'CDITCONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsitcontratoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcontratoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcontratoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcontratoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcontratoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcontratoCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcontratoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcontratoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcontratoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsitcontratoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcontratoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitcontratoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitcontratoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsitcontratoVLEXCEDENTE: TFMTBCDField
      FieldName = 'VLEXCEDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsitcontratoCDEMPRESA: TLargeintField
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
    Left = 768
    Top = 131
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 800
    Top = 131
    object cdsCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCDSTCONTRATO: TIntegerField
      FieldName = 'CDSTCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMCONTRATO: TStringField
      FieldName = 'NMCONTRATO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsDTINICIO: TDateField
      FieldName = 'DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTFINAL: TDateField
      FieldName = 'DTFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDIAPREVENTIVA: TIntegerField
      FieldName = 'NUDIAPREVENTIVA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRATENDIMENTO: TTimeField
      FieldName = 'HRATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRRESOLUCAO: TTimeField
      FieldName = 'HRRESOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCONTRATO: TFMTBCDField
      FieldName = 'VLCONTRATO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsNUPARCELAS: TIntegerField
      FieldName = 'NUPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLPARCELA: TFMTBCDField
      FieldName = 'VLPARCELA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPRCOMISSAO: TFloatField
      FieldName = 'PRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTREFINANCIAMENTO: TDateField
      FieldName = 'DTREFINANCIAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsitcontrato: TDataSetField
      FieldName = 'sdsitcontrato'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMCLIENTE: TStringField
      FieldName = 'NMCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDTPCONTRATO: TIntegerField
      FieldName = 'CDTPCONTRATO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPCONTRATOValidate
    end
    object cdsCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDPRODUTOValidate
    end
    object cdsCDPRODUTOEXCEDENTE: TIntegerField
      FieldName = 'CDPRODUTOEXCEDENTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDPRODUTOEXCEDENTEValidate
    end
    object cdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsNMPRODUTOEXCEDENTE: TStringField
      FieldName = 'NMPRODUTOEXCEDENTE'
      ProviderFlags = []
      Size = 250
    end
    object cdsBOMENSALIDADE: TStringField
      FieldName = 'BOMENSALIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdssdsnegociacao: TDataSetField
      FieldName = 'sdsnegociacao'
      ProviderFlags = [pfInUpdate]
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
    object cdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 828
    Top = 131
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 856
    Top = 131
  end
  object cdsitcontrato: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsitcontrato
    Params = <>
    BeforePost = cdsitcontratoBeforePost
    OnNewRecord = cdsitcontratoNewRecord
    Left = 798
    Top = 160
    object cdsitcontratoCDITCONTRATO: TIntegerField
      FieldName = 'CDITCONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsitcontratoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitcontratoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitcontratoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitcontratoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitcontratoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitcontratoCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitcontratoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitcontratoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitcontratoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsitcontratoCDDIGITADOValidate
      Size = 30
    end
    object cdsitcontratoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalortotal
    end
    object cdsitcontratoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = setvalortotal
      Precision = 15
      Size = 2
    end
    object cdsitcontratoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitcontratoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsitcontratoVLEXCEDENTE: TFMTBCDField
      FieldName = 'VLEXCEDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsitcontratoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsitcontrato: TDataSource
    DataSet = cdsitcontrato
    Left = 827
    Top = 160
  end
  object pumimprimir: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <>
    UseOwnFont = False
    Left = 472
    Top = 141
  end
  object pumopcoes: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 440
    Top = 138
  end
  object sdsparcela: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM ITCONTRATOPARCELA '#13#10'WHERE CDEMPRESA=:CDEMPRESA A' +
      'ND CDITCONTRATONEGOCIACAO=:CDITCONTRATONEGOCIACAO'
    DataSource = dts2
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
        Name = 'CDITCONTRATONEGOCIACAO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 742
    Top = 217
    object sdsparcelaCDITCONTRATOPARCELA: TIntegerField
      FieldName = 'CDITCONTRATOPARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsparcelaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsparcelaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsparcelaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsparcelaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsparcelaCDITCONTRATONEGOCIACAO: TIntegerField
      FieldName = 'CDITCONTRATONEGOCIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsparcelaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsparcelaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsparcelaNUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsparcelaDTPARCELA: TDateField
      FieldName = 'DTPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsparcelaVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsparcelaVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsparcelaVLJUROSADICIONAL: TFMTBCDField
      FieldName = 'VLJUROSADICIONAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsparcelaVLSALDOCORRIGIDO: TFMTBCDField
      FieldName = 'VLSALDOCORRIGIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsparcelaVLAMORTIZACAO: TFMTBCDField
      FieldName = 'VLAMORTIZACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsparcelaVLSALDODEVEDOR: TFMTBCDField
      FieldName = 'VLSALDODEVEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsparcelaVLPARCELA: TFMTBCDField
      FieldName = 'VLPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsparcelaPRCORRECAO: TFloatField
      FieldName = 'PRCORRECAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsparcelaVLSALDODEVEDORREAJUSTADO: TFMTBCDField
      FieldName = 'VLSALDODEVEDORREAJUSTADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object sdsparcelaVLREAJUSTE: TFMTBCDField
      FieldName = 'VLREAJUSTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object sdsparcelaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsparcelaCDITTPCORRECAO: TIntegerField
      FieldName = 'CDITTPCORRECAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsparcela: TClientDataSet
    Aggregates = <>
    DataSetField = cdsnegociacaosdsparcela
    Params = <>
    Left = 798
    Top = 216
    object cdsparcelaCDITCONTRATOPARCELA: TIntegerField
      FieldName = 'CDITCONTRATOPARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsparcelaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsparcelaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsparcelaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsparcelaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsparcelaCDITCONTRATONEGOCIACAO: TIntegerField
      FieldName = 'CDITCONTRATONEGOCIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsparcelaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsparcelaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsparcelaNUPARCELA: TIntegerField
      FieldName = 'NUPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsparcelaDTPARCELA: TDateField
      FieldName = 'DTPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsparcelaVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsparcelaVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsparcelaVLJUROSADICIONAL: TFMTBCDField
      FieldName = 'VLJUROSADICIONAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsparcelaVLSALDOCORRIGIDO: TFMTBCDField
      FieldName = 'VLSALDOCORRIGIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsparcelaVLAMORTIZACAO: TFMTBCDField
      FieldName = 'VLAMORTIZACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsparcelaVLSALDODEVEDOR: TFMTBCDField
      FieldName = 'VLSALDODEVEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsparcelaVLPARCELA: TFMTBCDField
      FieldName = 'VLPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsparcelaPRCORRECAO: TFloatField
      FieldName = 'PRCORRECAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsparcelaVLSALDODEVEDORREAJUSTADO: TFMTBCDField
      FieldName = 'VLSALDODEVEDORREAJUSTADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object cdsparcelaVLREAJUSTE: TFMTBCDField
      FieldName = 'VLREAJUSTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object cdsparcelaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsparcelaCDITTPCORRECAO: TIntegerField
      FieldName = 'CDITTPCORRECAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dtsparcela: TDataSource
    DataSet = cdsparcela
    Left = 826
    Top = 216
  end
  object sdsnegociacao: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITCONTRATONEGOCIACAO '#13#10'WHERE CDEMPRESA=:CDEMPRESA ' +
      'AND CDCONTRATO=:CDCONTRATO'
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
        Name = 'CDCONTRATO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 742
    Top = 189
    object sdsnegociacaoCDITCONTRATONEGOCIACAO: TIntegerField
      FieldName = 'CDITCONTRATONEGOCIACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsnegociacaoCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      Required = True
    end
    object sdsnegociacaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoCDTPCORRECAO: TIntegerField
      FieldName = 'CDTPCORRECAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsnegociacaoCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsnegociacaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsnegociacaoNUDIA: TIntegerField
      FieldName = 'NUDIA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoVLPARCELA: TFMTBCDField
      FieldName = 'VLPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsnegociacaoPRJURO: TFloatField
      FieldName = 'PRJURO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoNMITCONTRATONEGOCIACAO: TStringField
      FieldName = 'NMITCONTRATONEGOCIACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsnegociacaoNUPARCELAS: TIntegerField
      FieldName = 'NUPARCELAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsnegociacaoDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsnegociacaoBOATIVO: TStringField
      FieldName = 'BOATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsnegociacaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsnegociacaoVLINTERMEDIARIA: TFMTBCDField
      FieldName = 'VLINTERMEDIARIA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object cdsnegociacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsnegociacao
    Params = <>
    Left = 798
    Top = 188
    object cdsnegociacaoCDITCONTRATONEGOCIACAO: TIntegerField
      FieldName = 'CDITCONTRATONEGOCIACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsnegociacaoCDCONTRATO: TIntegerField
      FieldName = 'CDCONTRATO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoCDTPCORRECAO: TIntegerField
      FieldName = 'CDTPCORRECAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsnegociacaoCDPERIODICIDADE: TIntegerField
      FieldName = 'CDPERIODICIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsnegociacaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsnegociacaoNUDIA: TIntegerField
      FieldName = 'NUDIA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoVLPARCELA: TFMTBCDField
      FieldName = 'VLPARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsnegociacaoPRJURO: TFloatField
      FieldName = 'PRJURO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoNMITCONTRATONEGOCIACAO: TStringField
      FieldName = 'NMITCONTRATONEGOCIACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsnegociacaosdsparcela: TDataSetField
      FieldName = 'sdsparcela'
      ProviderFlags = [pfInUpdate]
    end
    object cdsnegociacaoNUPARCELAS: TIntegerField
      FieldName = 'NUPARCELAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsnegociacaoDTTERMINO: TDateField
      FieldName = 'DTTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsnegociacaoBOATIVO: TStringField
      FieldName = 'BOATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsnegociacaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsnegociacaoVLINTERMEDIARIA: TFMTBCDField
      FieldName = 'VLINTERMEDIARIA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dtsnegociacao: TDataSource
    DataSet = cdsnegociacao
    Left = 826
    Top = 188
  end
  object dts2: TDataSource
    DataSet = sdsnegociacao
    Left = 855
    Top = 188
  end
end

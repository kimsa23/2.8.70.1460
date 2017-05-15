object frmVeiculo: TfrmVeiculo
  Left = 644
  Top = 112
  ClientHeight = 697
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 63
    Width = 1000
    Height = 634
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object Label4: TLabel
      Left = 4
      Top = 26
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label5: TLabel
      Left = 71
      Top = 26
      Width = 30
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object Label1: TLabel
      Left = 192
      Top = 26
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Transparent = True
    end
    object Bevel2: TBevel
      Left = 0
      Top = 23
      Width = 1000
      Height = 42
      Align = alTop
    end
    object lbl6: TLabel
      Left = 312
      Top = 26
      Width = 72
      Height = 13
      Caption = 'Transportadora'
      Transparent = True
    end
    object txtnmtransportadora: TDBText
      Left = 410
      Top = 41
      Width = 373
      Height = 17
      DataField = 'NMTRANSPORTADORA'
      DataSource = dts
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = txtnmtransportadoraDblClick
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
    object edtcodigo: TcxTextEdit
      Left = 5
      Top = 39
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = edtcodigoEnter
      OnKeyDown = edtcodigoKeyDown
      OnKeyPress = edtcodigoKeyPress
      Width = 66
    end
    object cbxcdstveiculo: TcxDBLookupComboBox
      Left = 71
      Top = 39
      DataBinding.DataField = 'CDSTVEICULO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDSTVEICULO'
      Properties.ListColumns = <
        item
          FieldName = 'NMSTVEICULO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = cbxcdstveiculoEnter
      OnExit = colorexit
      Width = 120
    end
    object cbxcdtpveiculo: TcxDBLookupComboBox
      Left = 192
      Top = 39
      DataBinding.DataField = 'CDTPVEICULO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDTPVEICULO'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPVEICULO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = cbxcdtpveiculoEnter
      OnExit = colorexit
      Width = 120
    end
    object edtcdtransportadora: TcxDBButtonEdit
      Left = 312
      Top = 39
      DataBinding.DataField = 'CDTRANSPORTADORA'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdtransportadoraPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = edtcdtransportadoraKeyDown
      Width = 95
    end
    object pgc: TcxPageControl
      Left = 0
      Top = 65
      Width = 1000
      Height = 569
      Align = alClient
      TabOrder = 5
      Properties.ActivePage = tbscadastro
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 8
      LookAndFeel.NativeStyle = False
      ClientRectBottom = 569
      ClientRectRight = 1000
      ClientRectTop = 24
      object tbscadastro: TcxTabSheet
        Caption = 'Cadastro'
        ImageIndex = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dxBevel1: TdxBevel
          Left = 0
          Top = 0
          Width = 1000
          Height = 89
          Align = alTop
        end
        object Label12: TLabel
          Left = 6
          Top = 10
          Width = 27
          Height = 13
          Caption = 'Placa'
          Transparent = True
        end
        object lblMARCA: TLabel
          Left = 6
          Top = 29
          Width = 30
          Height = 13
          Caption = 'Marca'
          Transparent = True
        end
        object lbl3: TLabel
          Left = 252
          Top = 50
          Width = 45
          Height = 13
          Caption = 'Municipio'
          Transparent = True
        end
        object lblcor: TLabel
          Left = 252
          Top = 29
          Width = 16
          Height = 13
          Caption = 'Cor'
          Transparent = True
        end
        object lbl1: TLabel
          Left = 252
          Top = 10
          Width = 31
          Height = 13
          Caption = 'Chassi'
          Transparent = True
        end
        object lbl27: TLabel
          Left = 515
          Top = 10
          Width = 38
          Height = 13
          Caption = 'RNTRC'
          Transparent = True
        end
        object lblmodelo: TLabel
          Left = 515
          Top = 30
          Width = 35
          Height = 13
          Caption = 'Modelo'
          Transparent = True
        end
        object lblano: TLabel
          Left = 135
          Top = 10
          Width = 19
          Height = 13
          Caption = 'Ano'
          Transparent = True
        end
        object lbl4: TLabel
          Left = 515
          Top = 52
          Width = 46
          Height = 13
          Caption = 'Renavam'
          Transparent = True
        end
        object lbl2: TLabel
          Left = 6
          Top = 50
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object edtNURNTRC: TcxDBTextEdit
          Left = 564
          Top = 5
          DataBinding.DataField = 'NURNTRC'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyPress = eventokeypress
          Width = 215
        end
        object edtNURENAVAM: TcxDBTextEdit
          Left = 562
          Top = 47
          DataBinding.DataField = 'NURENAVAM'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyPress = eventokeypress
          Width = 215
        end
        object edtnuplaca: TcxDBTextEdit
          Left = 37
          Top = 5
          DataBinding.DataField = 'NUPLACA'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 97
        end
        object edtnuchassi: TcxDBTextEdit
          Left = 298
          Top = 5
          DataBinding.DataField = 'NUCHASSI'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 215
        end
        object cbxcdmarca: TcxDBLookupComboBox
          Left = 37
          Top = 26
          DataBinding.DataField = 'CDMARCA'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDMARCA'
          Properties.ListColumns = <
            item
              FieldName = 'NMMARCA'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = cbxcdmarcaEnter
          OnExit = colorexit
          Width = 215
        end
        object cbxcdcor: TcxDBLookupComboBox
          Left = 298
          Top = 26
          DataBinding.DataField = 'CDCOR'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDCOR'
          Properties.ListColumns = <
            item
              FieldName = 'NMCOR'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnEnter = cbxcdcorEnter
          OnExit = colorexit
          Width = 215
        end
        object cbxcduf: TcxDBLookupComboBox
          Left = 37
          Top = 47
          DataBinding.DataField = 'CDUF'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDUF'
          Properties.ListColumns = <
            item
              FieldName = 'NMUF'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnEnter = colorenter
          OnExit = cbxcdufExit
          Width = 215
        end
        object cbxcdmunicipio: TcxDBLookupComboBox
          Left = 298
          Top = 47
          DataBinding.DataField = 'CDMUNICIPIO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDMUNICIPIO'
          Properties.ListColumns = <
            item
              FieldName = 'NMMUNICIPIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          OnEnter = colorenter
          OnExit = colorexit
          Width = 215
        end
        object edtnuano: TcxDBSpinEdit
          Left = 155
          Top = 5
          DataBinding.DataField = 'NUANO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 97
        end
        object cbxcdmodelo: TcxDBLookupComboBox
          Left = 564
          Top = 26
          DataBinding.DataField = 'CDMODELO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDMODELO'
          Properties.ListColumns = <
            item
              FieldName = 'NMMODELO'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnEnter = cbxcdmodeloEnter
          OnExit = colorexit
          Width = 215
        end
        object gbxcte: TcxGroupBox
          Left = 0
          Top = 89
          Align = alTop
          Caption = 'Configura'#231#227'o CTE'
          TabOrder = 10
          Height = 104
          Width = 1000
          object Label2: TLabel
            Left = 4
            Top = 59
            Width = 62
            Height = 13
            Caption = 'Tipo Rodado'
            Transparent = True
          end
          object lbl5: TLabel
            Left = 310
            Top = 59
            Width = 48
            Height = 13
            Caption = 'Carroceria'
            Transparent = True
          end
          object lbl7: TLabel
            Left = 4
            Top = 79
            Width = 61
            Height = 13
            Caption = 'Tipo Ve'#237'culo'
            Transparent = True
          end
          object lbl8: TLabel
            Left = 310
            Top = 79
            Width = 77
            Height = 13
            Caption = 'Tipo Propriet'#225'rio'
            Transparent = True
          end
          object lbl9: TLabel
            Left = 3
            Top = 21
            Width = 46
            Height = 13
            Caption = 'Tara (KG)'
            Transparent = True
          end
          object lbl10: TLabel
            Left = 310
            Top = 21
            Width = 81
            Height = 13
            Caption = 'Capacidade (KG)'
            Transparent = True
          end
          object lbl11: TLabel
            Left = 3
            Top = 41
            Width = 81
            Height = 13
            Caption = 'Capacidade (M3)'
            Transparent = True
          end
          object lblnueixos: TLabel
            Left = 310
            Top = 40
            Width = 40
            Height = 13
            Caption = 'N'#186' Eixos'
            Transparent = True
          end
          object edtpstara: TcxDBCalcEdit
            Left = 95
            Top = 15
            DataBinding.DataField = 'PSTARA'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 215
          end
          object cbxcdctetprodado: TcxDBLookupComboBox
            Left = 95
            Top = 55
            DataBinding.DataField = 'CDCTETPRODADO'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDCTETPRODADO'
            Properties.ListColumns = <
              item
                FieldName = 'NMCTETPRODADO'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnEnter = cbxcdmarcaEnter
            OnExit = colorexit
            Width = 215
          end
          object cbxcdctetpcarroceria: TcxDBLookupComboBox
            Left = 393
            Top = 55
            DataBinding.DataField = 'CDCTETPCARROCERIA'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDCTETPCARROCERIA'
            Properties.ListColumns = <
              item
                FieldName = 'NMCTETPCARROCERIA'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            OnEnter = cbxcdmarcaEnter
            OnExit = colorexit
            Width = 215
          end
          object cbxcdctetpveiculo: TcxDBLookupComboBox
            Left = 95
            Top = 75
            DataBinding.DataField = 'CDCTETPVEICULO'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDCTETPVEICULO'
            Properties.ListColumns = <
              item
                FieldName = 'NMCTETPVEICULO'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            OnEnter = cbxcdmarcaEnter
            OnExit = colorexit
            Width = 215
          end
          object cbxcdctetpproprietario: TcxDBLookupComboBox
            Left = 393
            Top = 75
            DataBinding.DataField = 'CDCTETPPROPRIETARIO'
            DataBinding.DataSource = dts
            Properties.KeyFieldNames = 'CDCTETPPROPRIETARIO'
            Properties.ListColumns = <
              item
                FieldName = 'NMCTETPPROPRIETARIO'
              end>
            Properties.ListOptions.ShowHeader = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            OnEnter = cbxcdmarcaEnter
            OnExit = colorexit
            Width = 215
          end
          object edtpscapacidade: TcxDBCalcEdit
            Left = 393
            Top = 15
            DataBinding.DataField = 'PSCAPACIDADE'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 215
          end
          object edtpscapacidadem3: TcxDBCalcEdit
            Left = 95
            Top = 35
            DataBinding.DataField = 'PSCAPACIDADEM3'
            DataBinding.DataSource = dts
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnEnter = colorenter
            OnExit = colorexit
            OnKeyDown = nextcontrol
            Width = 215
          end
          object edtnueixos: TcxDBSpinEdit
            Left = 393
            Top = 35
            DataBinding.DataField = 'NUEIXOS'
            DataBinding.DataSource = dts
            Properties.MinValue = 1.000000000000000000
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Width = 215
          end
        end
      end
      object tbsdsobservacao: TcxTabSheet
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
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtcdtransportadoraKeyDown
          Height = 545
          Width = 1000
        end
      end
      object tbsproduto: TcxTabSheet
        Caption = 'Produto'
        ImageIndex = 4
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdveiculoproduto: TcxGrid
          Left = 0
          Top = 0
          Width = 1000
          Height = 545
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object grdveiculoprodutoDBTableView1: TcxGridDBTableView
            OnKeyDown = grdveiculoprodutoDBTableView1KeyDown
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
            OnCellDblClick = grdveiculoprodutoDBTableView1CellDblClick
            DataController.DataSource = dtsveiculoproduto
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = grdveiculoprodutoDBTableView1QTITEM
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLTOTAL'
                Column = grdveiculoprodutoDBTableView1VLTOTAL
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object grdveiculoprodutoDBTableView1CDDIGITADO: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'CDDIGITADO'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = grdveiculoprodutoDBTableView1CDDIGITADOPropertiesButtonClick
              Styles.Content = dtmmain.cxStyle1
              Width = 120
            end
            object grdveiculoprodutoDBTableView1NMPRODUTO: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'NMPRODUTO'
              Options.Focusing = False
              Width = 300
            end
            object grdveiculoprodutoDBTableView1QTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object grdveiculoprodutoDBTableView1VLUNITARIO: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLUNITARIO'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            end
            object grdveiculoprodutoDBTableView1VLTOTAL: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'VLTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Focusing = False
            end
          end
          object grdveiculoprodutoLevel1: TcxGridLevel
            GridView = grdveiculoprodutoDBTableView1
          end
        end
      end
      object tbsoutros: TcxTabSheet
        Caption = 'Outros'
        ImageIndex = 4
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lblcntcusto: TLabel
          Left = 5
          Top = 8
          Width = 61
          Height = 13
          Caption = 'Centro Custo'
          Transparent = True
        end
        object txtnmfuncionario: TDBText
          Left = 168
          Top = 29
          Width = 373
          Height = 17
          DataField = 'NMFUNCIONARIO'
          DataSource = dts
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnDblClick = txtnmfuncionarioDblClick
        end
        object lblcdfuncionario: TLabel
          Left = 5
          Top = 30
          Width = 55
          Height = 13
          Caption = 'Funcion'#225'rio'
          Transparent = True
        end
        object cbxcdcntcusto: TcxDBLookupComboBox
          Left = 70
          Top = 5
          DataBinding.DataField = 'CDCNTCUSTO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDCNTCUSTO'
          Properties.ListColumns = <
            item
              FieldName = 'NMCNTCUSTO2'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnExit = colorexit
          OnKeyDown = nextcontrol
          Width = 309
        end
        object edtcdfuncionario: TcxDBButtonEdit
          Left = 70
          Top = 27
          DataBinding.DataField = 'CDFUNCIONARIO'
          DataBinding.DataSource = dts
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edtcdfuncionarioPropertiesButtonClick
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorenter
          OnExit = colorexit
          OnKeyDown = edtcdfuncionarioKeyDown
          Width = 95
        end
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 828
    Top = 292
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
      ImageIndex = 133
      ShortCut = 16499
      OnExecute = actfecharExecute
    end
    object actabrirtransportadora: TAction
      Hint = 'transportadora'
      OnExecute = actabrirtransportadoraExecute
    end
    object actabrirfuncionario: TAction
      Hint = 'funcionario'
      OnExecute = actabrirfuncionarioExecute
    end
    object actabrirproduto: TAction
      Hint = 'produto'
      OnExecute = actabrirprodutoExecute
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
    Left = 800
    Top = 292
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
      Caption = 'veiculo'
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
          ItemName = 'dxbrlrgbtnimprimir'
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
      AllowQuickCustomizing = False
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
          ItemName = 'dxbrlrgbtnimprimir'
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
    object dxbrlrgbtnimprimir: TdxBarLargeButton
      Action = actImprimir
      Category = 0
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
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT V.*'#13#10',T.NMTRANSPORTADORA '#13#10',F.NMFUNCIONARIO'#13#10'FROM VEICULO' +
      ' V '#13#10'LEFT JOIN TRANSPORTADORA T ON T.CDTRANSPORTADORA=V.CDTRANSP' +
      'ORTADORA AND V.CDEMPRESA=T.CDEMPRESA'#13#10'LEFT JOIN FUNCIONARIO F ON' +
      ' F.CDFUNCIONARIO=V.CDFUNCIONARIO AND F.CDEMPRESA=V.CDEMPRESA'#13#10'WH' +
      'ERE V.CDEMPRESA=:CDEMPRESA AND V.CDVEICULO=:CDVEICULO'
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
        Name = 'CDVEICULO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 690
    Top = 292
    object sdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDTPVEICULO: TIntegerField
      FieldName = 'CDTPVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTVEICULO: TIntegerField
      FieldName = 'CDSTVEICULO'
      ProviderFlags = [pfInUpdate]
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
    object sdsCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDMARCA: TIntegerField
      FieldName = 'CDMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCOR: TIntegerField
      FieldName = 'CDCOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCOMBUSTIVEL: TIntegerField
      FieldName = 'CDTPCOMBUSTIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 8
    end
    object sdsVLKM: TIntegerField
      FieldName = 'VLKM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNURNTRC: TStringField
      DisplayWidth = 14
      FieldName = 'NURNTRC'
      ProviderFlags = [pfInUpdate]
      Size = 14
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
    object sdsNUMOTOR: TStringField
      FieldName = 'NUMOTOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUANO: TIntegerField
      FieldName = 'NUANO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSMODELO: TStringField
      FieldName = 'DSMODELO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUCHASSI: TStringField
      FieldName = 'NUCHASSI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNURENAVAM: TStringField
      FieldName = 'NURENAVAM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUCILINDRADAS: TFloatField
      FieldName = 'NUCILINDRADAS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUHP: TFloatField
      FieldName = 'NUHP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDCR: TStringField
      FieldName = 'NUDCR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDMODELO: TIntegerField
      FieldName = 'CDMODELO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTETPRODADO: TStringField
      FieldName = 'CDCTETPRODADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsCDCTETPCARROCERIA: TStringField
      FieldName = 'CDCTETPCARROCERIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdsCDCTETPPROPRIETARIO: TIntegerField
      FieldName = 'CDCTETPPROPRIETARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPSTARA: TIntegerField
      FieldName = 'PSTARA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPSCAPACIDADE: TIntegerField
      FieldName = 'PSCAPACIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPSCAPACIDADEM3: TIntegerField
      FieldName = 'PSCAPACIDADEM3'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTETPVEICULO: TIntegerField
      FieldName = 'CDCTETPVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sdsNUEIXOS: TIntegerField
      FieldName = 'NUEIXOS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    Left = 718
    Top = 292
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    Left = 746
    Top = 292
    object cdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDTPVEICULO: TIntegerField
      FieldName = 'CDTPVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSTVEICULO: TIntegerField
      FieldName = 'CDSTVEICULO'
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
    object cdsCDMARCA: TIntegerField
      FieldName = 'CDMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCOR: TIntegerField
      FieldName = 'CDCOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCOMBUSTIVEL: TIntegerField
      FieldName = 'CDTPCOMBUSTIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUF: TIntegerField
      FieldName = 'CDUF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMUNICIPIO: TIntegerField
      FieldName = 'CDMUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 8
    end
    object cdsVLKM: TIntegerField
      FieldName = 'VLKM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNURNTRC: TStringField
      DisplayWidth = 14
      FieldName = 'NURNTRC'
      ProviderFlags = [pfInUpdate]
      Size = 14
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
    object cdsNUMOTOR: TStringField
      FieldName = 'NUMOTOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUANO: TIntegerField
      FieldName = 'NUANO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSMODELO: TStringField
      FieldName = 'DSMODELO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUCHASSI: TStringField
      FieldName = 'NUCHASSI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNURENAVAM: TStringField
      FieldName = 'NURENAVAM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUCILINDRADAS: TFloatField
      FieldName = 'NUCILINDRADAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUHP: TFloatField
      FieldName = 'NUHP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDCR: TStringField
      FieldName = 'NUDCR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdsCDMODELO: TIntegerField
      FieldName = 'CDMODELO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCTETPRODADO: TStringField
      FieldName = 'CDCTETPRODADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsCDCTETPCARROCERIA: TStringField
      FieldName = 'CDCTETPCARROCERIA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsCDCTETPPROPRIETARIO: TIntegerField
      FieldName = 'CDCTETPPROPRIETARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPSTARA: TIntegerField
      FieldName = 'PSTARA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPSCAPACIDADE: TIntegerField
      FieldName = 'PSCAPACIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPSCAPACIDADEM3: TIntegerField
      FieldName = 'PSCAPACIDADEM3'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCTETPVEICULO: TIntegerField
      FieldName = 'CDCTETPVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsveiculoproduto: TDataSetField
      FieldName = 'sdsveiculoproduto'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDFUNCIONARIO: TIntegerField
      FieldName = 'CDFUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDFUNCIONARIOValidate
    end
    object cdsNMFUNCIONARIO: TStringField
      FieldName = 'NMFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNUEIXOS: TIntegerField
      FieldName = 'NUEIXOS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTRANSPORTADORAValidate
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 774
    Top = 292
  end
  object sdsveiculoproduto: TSQLDataSet
    CommandText = 
      'SELECT V.*,P.NMPRODUTO FROM VEICULOPRODUTO V LEFT JOIN PRODUTO P' +
      ' ON P.CDEMPRESA=V.CDEMPRESA AND P.CDPRODUTO=V.CDPRODUTO WHERE V.' +
      'CDEMPRESA=:CDEMPRESA AND V.CDVEICULO=:CDVEICULO'
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
        Name = 'CDVEICULO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 690
    Top = 320
    object sdsveiculoprodutoCDVEICULOPRODUTO: TIntegerField
      FieldName = 'CDVEICULOPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsveiculoprodutoCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsveiculoprodutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsveiculoprodutoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsveiculoprodutoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsveiculoprodutoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsveiculoprodutoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsveiculoprodutoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsveiculoprodutoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsveiculoprodutoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsveiculoprodutoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsveiculoprodutoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsveiculoprodutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsveiculoprodutoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsveiculoprodutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsveiculoproduto: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsveiculoproduto
    Params = <>
    BeforePost = cdsveiculoprodutoBeforePost
    OnNewRecord = cdsveiculoprodutoNewRecord
    Left = 746
    Top = 320
    object cdsveiculoprodutoCDVEICULOPRODUTO: TIntegerField
      FieldName = 'CDVEICULOPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsveiculoprodutoCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsveiculoprodutoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsveiculoprodutoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsveiculoprodutoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsveiculoprodutoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsveiculoprodutoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsveiculoprodutoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsveiculoprodutoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsveiculoprodutoQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsveiculoprodutoQTITEMValidate
    end
    object cdsveiculoprodutoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsveiculoprodutoQTITEMValidate
      Precision = 15
      Size = 2
    end
    object cdsveiculoprodutoVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsveiculoprodutoNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdsveiculoprodutoCDDIGITADO: TStringField
      FieldName = 'CDDIGITADO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsveiculoprodutoCDDIGITADOValidate
      Size = 30
    end
    object cdsveiculoprodutoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsveiculoproduto: TDataSource
    DataSet = cdsveiculoproduto
    Left = 774
    Top = 320
  end
  object dts1: TDataSource
    DataSet = sds
    Left = 856
    Top = 293
  end
end

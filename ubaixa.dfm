object frmbaixa: Tfrmbaixa
  Left = 437
  Top = 171
  BorderStyle = bsSizeToolWin
  Caption = 'Novo Documento Baixa'
  ClientHeight = 471
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bvlliquido: TBevel
    Left = 0
    Top = 293
    Width = 767
    Height = 178
    Align = alClient
  end
  object lblmovimentacao: TLabel
    Left = 6
    Top = 312
    Width = 70
    Height = 13
    Caption = 'Movimenta'#231#227'o'
    Transparent = True
  end
  object lblconta: TLabel
    Left = 5
    Top = 332
    Width = 28
    Height = 13
    Caption = 'Conta'
    Transparent = True
  end
  object lblnumero: TLabel
    Left = 472
    Top = 312
    Width = 12
    Height = 13
    Caption = 'N'#186
    Transparent = True
    Visible = False
  end
  object lblhistorico: TLabel
    Left = 5
    Top = 355
    Width = 41
    Height = 13
    Caption = 'Hist'#243'rico'
    Transparent = True
  end
  object lblnominal: TLabel
    Left = 5
    Top = 375
    Width = 38
    Height = 13
    Caption = 'Nominal'
    Transparent = True
  end
  object lblmovimento: TLabel
    Left = 3
    Top = 293
    Width = 118
    Height = 15
    Caption = 'Movimento Banc'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object lbldata1: TLabel
    Left = 472
    Top = 335
    Width = 23
    Height = 13
    Caption = 'Data'
    Transparent = True
  end
  object lbldsobservacao: TLabel
    Left = 5
    Top = 388
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    Transparent = True
  end
  object cbxcdmovimentacao: TcxLookupComboBox
    Left = 77
    Top = 306
    Properties.KeyFieldNames = 'CDMOVIMENTACAO'
    Properties.ListColumns = <
      item
        FieldName = 'NMMOVIMENTACAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.OnChange = cbxcdmovimentacaoPropertiesChange
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Width = 393
  end
  object cbxcdconta: TcxLookupComboBox
    Left = 77
    Top = 327
    Properties.KeyFieldNames = 'CDCONTA'
    Properties.ListColumns = <
      item
        FieldName = 'NMCONTA'
      end>
    Properties.ListOptions.ShowHeader = False
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    OnExit = cbxcdcontaExit
    Width = 393
  end
  object btnok: TcxButton
    Left = 297
    Top = 445
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    Enabled = False
    LookAndFeel.NativeStyle = False
    TabOrder = 8
    OnEnter = edtvlbaixaEnter
    OnClick = btnokClick
  end
  object btncancelar: TcxButton
    Left = 377
    Top = 445
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    TabOrder = 9
  end
  object edtnumovbancario: TcxTextEdit
    Left = 502
    Top = 306
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Visible = False
    Width = 121
  end
  object edtdshistorico: TcxTextEdit
    Left = 77
    Top = 347
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Width = 546
  end
  object edtdsnominal: TcxTextEdit
    Left = 77
    Top = 367
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 6
    Width = 546
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 0
    Width = 767
    Height = 293
    Align = alTop
    TabOrder = 0
    Properties.ActivePage = tbs1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 293
    ClientRectRight = 767
    ClientRectTop = 24
    object tbslista: TcxTabSheet
      Caption = 'Baixa de Lista'
      ImageIndex = 0
      object grd: TcxGrid
        Left = 0
        Top = 0
        Width = 767
        Height = 269
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
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Post.Visible = True
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
          DataController.DataSource = dts
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vlabatimento'
              Column = tbvvlabatimento
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vlautpagto'
              Column = tbvvlautpagto
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vlbaixa'
              Column = tbvvlbaixa
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vldesconto'
              Column = tbvvldesconto
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vldevolucao'
              Column = tbvvldevolucao
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vljuros'
              Column = tbvvljuros
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vlmulta'
              Column = tbvvlmulta
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vlrecebido'
              Column = tbvvlrecebido
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'vlsaldo'
              Column = tbvvlsaldo
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object tbvcdautpagto: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'cdautpagto'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
          end
          object tbvvlautpagto: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'vlautpagto'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Properties.ReadOnly = True
            Width = 76
          end
          object tbvvlsaldo: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'vlsaldo'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Properties.ReadOnly = True
            Width = 76
          end
          object tbvvlbaixa: TcxGridDBColumn
            Caption = 'Baixa'
            DataBinding.FieldName = 'vlbaixa'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 76
          end
          object tbvvlmulta: TcxGridDBColumn
            Caption = 'Multa'
            DataBinding.FieldName = 'vlmulta'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 76
          end
          object tbvvljuros: TcxGridDBColumn
            Caption = 'Juros'
            DataBinding.FieldName = 'vljuros'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 76
          end
          object tbvvldesconto: TcxGridDBColumn
            Caption = 'Desconto'
            DataBinding.FieldName = 'vldesconto'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 76
          end
          object tbvvldevolucao: TcxGridDBColumn
            Caption = 'Devolu'#231#227'o'
            DataBinding.FieldName = 'vldevolucao'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 76
          end
          object tbvvlabatimento: TcxGridDBColumn
            Caption = 'Abatimento'
            DataBinding.FieldName = 'vlabatimento'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 76
          end
          object tbvvlrecebido: TcxGridDBColumn
            Caption = 'Recebido'
            DataBinding.FieldName = 'vlrecebido'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Properties.ReadOnly = True
            Width = 76
          end
        end
        object grdLevel1: TcxGridLevel
          GridView = tbv
        end
      end
    end
    object tbs1: TcxTabSheet
      Caption = 'Contas a Receber'
      ImageIndex = 1
      object Bevel3: TBevel
        Left = 0
        Top = 51
        Width = 767
        Height = 40
        Align = alTop
      end
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 767
        Height = 51
        Align = alTop
      end
      object bvldeducoes: TBevel
        Left = 0
        Top = 142
        Width = 767
        Height = 96
        Align = alTop
      end
      object bvlacrescimo: TBevel
        Left = 0
        Top = 238
        Width = 767
        Height = 37
        Align = alTop
      end
      object Bevel2: TBevel
        Left = 0
        Top = 91
        Width = 767
        Height = 51
        Align = alTop
      end
      object Label5: TLabel
        Left = 11
        Top = 75
        Width = 26
        Height = 13
        Caption = 'Baixa'
        Transparent = True
      end
      object Label6: TLabel
        Left = 368
        Top = 75
        Width = 35
        Height = 13
        Caption = 'Original'
        Transparent = True
      end
      object Label7: TLabel
        Left = 201
        Top = 75
        Width = 27
        Height = 13
        Caption = 'Saldo'
        Transparent = True
      end
      object lblacrescimo: TLabel
        Left = 3
        Top = 92
        Width = 63
        Height = 15
        Caption = 'Acr'#233'scimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object lblmulta: TLabel
        Left = 11
        Top = 108
        Width = 26
        Height = 13
        Caption = 'Multa'
        Transparent = True
      end
      object lbljuros: TLabel
        Left = 11
        Top = 128
        Width = 25
        Height = 13
        Caption = 'Juros'
        Transparent = True
      end
      object lbldeducoes: TLabel
        Left = 3
        Top = 152
        Width = 58
        Height = 15
        Caption = 'Dedu'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object lbldescontos: TLabel
        Left = 11
        Top = 174
        Width = 51
        Height = 13
        Caption = 'Descontos'
        Transparent = True
      end
      object lblabatimentos: TLabel
        Left = 11
        Top = 196
        Width = 58
        Height = 13
        Caption = 'Abatimentos'
        Transparent = True
      end
      object lbldevolucao: TLabel
        Left = 11
        Top = 218
        Width = 52
        Height = 13
        Caption = 'Devolu'#231#227'o'
        Transparent = True
      end
      object Label15: TLabel
        Left = 3
        Top = 53
        Width = 45
        Height = 15
        Caption = 'Valores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object lblliquido: TLabel
        Left = 3
        Top = 242
        Width = 42
        Height = 15
        Caption = 'L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object lblvlliquido: TLabel
        Left = 78
        Top = 242
        Width = 102
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object lbvljurosreduzido: TLabel
        Left = 201
        Top = 125
        Width = 44
        Height = 13
        Caption = 'Redu'#231#227'o'
        Transparent = True
        Visible = False
      end
      object lblsaldo: TLabel
        Left = 3
        Top = 26
        Width = 47
        Height = 20
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblvlsaldoorigem: TLabel
        Left = 55
        Top = 27
        Width = 119
        Height = 21
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblnome: TLabel
        Left = 200
        Top = 7
        Width = 227
        Height = 15
        AutoSize = False
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object lblcodigo: TLabel
        Left = 3
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object lbldtprorrogacao: TLabel
        Left = 531
        Top = 75
        Width = 56
        Height = 13
        Caption = 'Vencimento'
        Transparent = True
      end
      object edtvloriginal: TcxCurrencyEdit
        Left = 409
        Top = 69
        TabStop = False
        Properties.ReadOnly = True
        TabOrder = 9
        Width = 121
      end
      object edtvlsaldo: TcxCurrencyEdit
        Left = 246
        Top = 69
        TabStop = False
        Properties.ReadOnly = True
        TabOrder = 8
        Width = 121
      end
      object edtvljurosreduzido: TcxCalcEdit
        Left = 246
        Top = 121
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Properties.OnChange = edtvljurosreduzidoPropertiesChange
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Visible = False
        Width = 121
      end
      object edtvldevolucao: TcxCalcEdit
        Left = 75
        Top = 211
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        OnEnter = edtvlbaixaEnter
        OnExit = edtvldevolucaoExit
        Width = 121
      end
      object edtvlabatimento: TcxCalcEdit
        Left = 75
        Top = 188
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnEnter = edtvlbaixaEnter
        OnExit = edtvlabatimentoExit
        Width = 121
      end
      object edtvldesconto: TcxCalcEdit
        Left = 75
        Top = 166
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnEnter = edtvlbaixaEnter
        OnExit = edtvldescontoExit
        Width = 121
      end
      object edtvljuros: TcxCalcEdit
        Left = 75
        Top = 121
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        OnEnter = edtvlbaixaEnter
        OnExit = edtvljurosExit
        Width = 121
      end
      object edtvlmulta: TcxCalcEdit
        Left = 75
        Top = 98
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        OnEnter = edtvlbaixaEnter
        OnExit = edtvlmultaExit
        Width = 121
      end
      object edtvlbaixa: TcxCalcEdit
        Left = 75
        Top = 69
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
        Properties.OnChange = edtvlbaixaPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnEnter = edtvlbaixaEnter
        Width = 121
      end
      object edtcodigo: TcxButtonEdit
        Left = 75
        Top = 4
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtcodigoPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnClick = edtcodigoClick
        OnExit = edtcodigoExit
        OnKeyDown = edtcodigoKeyDown
        Width = 121
      end
      object edtdtprorrogacao: TcxDateEdit
        Left = 590
        Top = 69
        TabStop = False
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Width = 121
      end
    end
  end
  object edtdata: TcxDateEdit
    Left = 502
    Top = 327
    Properties.OnChange = edtdataPropertiesChange
    Properties.OnEditValueChanged = edtdataPropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    OnEnter = edtvlbaixaEnter
    Width = 121
  end
  object memdsobservacao: TcxMemo
    Left = 77
    Top = 388
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 7
    Height = 54
    Width = 546
  end
  object cds: TClientDataSet
    PersistDataPacket.Data = {
      080200009619E0BD01000000180000000E00000000000300000008020A636461
      7574706167746F04000100000000000A766C617574706167746F080004000000
      010007535542545950450200490006004D6F6E65790007766C73616C646F0800
      04000000010007535542545950450200490006004D6F6E65790007766C626169
      7861080004000000010007535542545950450200490006004D6F6E6579000776
      6C6D756C7461080004000000010007535542545950450200490006004D6F6E65
      790007766C6A75726F7308000400000001000753554254595045020049000600
      4D6F6E6579000A766C646573636F6E746F080004000000010007535542545950
      450200490006004D6F6E6579000B766C6465766F6C7563616F08000400000001
      0007535542545950450200490006004D6F6E6579000C766C61626174696D656E
      746F080004000000010007535542545950450200490006004D6F6E6579000A76
      6C726563656269646F080004000000010007535542545950450200490006004D
      6F6E6579000B6E756475706C6963617461010049000000010005574944544802
      0002000A000D647470726F72726F676163616F08000800000000000C70726D6F
      7261646961726961080004000000010007535542545950450200490006004D6F
      6E6579000770726D756C7461080004000000000001000D44454641554C545F4F
      524445520200820000000000}
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'vltotal'
        Expression = 'sum(vlrecebido)'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'cdautpagto'
        DataType = ftInteger
      end
      item
        Name = 'vlautpagto'
        DataType = ftCurrency
      end
      item
        Name = 'vlsaldo'
        DataType = ftCurrency
      end
      item
        Name = 'vlbaixa'
        DataType = ftCurrency
      end
      item
        Name = 'vlmulta'
        DataType = ftCurrency
      end
      item
        Name = 'vljuros'
        DataType = ftCurrency
      end
      item
        Name = 'vldesconto'
        DataType = ftCurrency
      end
      item
        Name = 'vldevolucao'
        DataType = ftCurrency
      end
      item
        Name = 'vlabatimento'
        DataType = ftCurrency
      end
      item
        Name = 'vlrecebido'
        DataType = ftCurrency
      end
      item
        Name = 'nuduplicata'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dtprorrogacao'
        DataType = ftDateTime
      end
      item
        Name = 'prmoradiaria'
        DataType = ftCurrency
      end
      item
        Name = 'prmulta'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    StoreDefs = True
    Left = 624
    Top = 224
    object cdscdautpagto: TIntegerField
      FieldName = 'cdautpagto'
    end
    object cdsvlautpagto: TCurrencyField
      FieldName = 'vlautpagto'
    end
    object cdsvlsaldo: TCurrencyField
      FieldName = 'vlsaldo'
    end
    object cdsvlbaixa: TCurrencyField
      FieldName = 'vlbaixa'
      OnValidate = cdsvlbaixaValidate
    end
    object cdsvlmulta: TCurrencyField
      FieldName = 'vlmulta'
      OnValidate = cdsvljurosValidate
    end
    object cdsvljuros: TCurrencyField
      FieldName = 'vljuros'
      OnValidate = cdsvljurosValidate
    end
    object cdsvldesconto: TCurrencyField
      FieldName = 'vldesconto'
      OnValidate = cdsvljurosValidate
    end
    object cdsvldevolucao: TCurrencyField
      FieldName = 'vldevolucao'
      OnValidate = cdsvljurosValidate
    end
    object cdsvlabatimento: TCurrencyField
      FieldName = 'vlabatimento'
      OnValidate = cdsvljurosValidate
    end
    object cdsvlrecebido: TCurrencyField
      FieldName = 'vlrecebido'
    end
    object cdsnuduplicata: TStringField
      FieldName = 'nuduplicata'
      Size = 10
    end
    object cdsdtprorrogacao: TDateField
      FieldName = 'dtprorrogacao'
    end
    object cdsPRMORADIARIA: TCurrencyField
      FieldName = 'PRMORADIARIA'
    end
    object cdsprmulta: TFloatField
      FieldName = 'prmulta'
    end
  end
  object dts: TDataSource
    DataSet = cds
    Left = 656
    Top = 224
  end
end

object frmCTE: TfrmCTE
  Left = 625
  Top = 242
  ClientHeight = 643
  ClientWidth = 1105
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
  object pnltop: TPanel
    Left = 0
    Top = 90
    Width = 1105
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 0
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Transparent = True
    end
    object Label2: TLabel
      Left = 70
      Top = 0
      Width = 113
      Height = 13
      Caption = 'Data e hora de Emiss'#227'o'
      Transparent = True
    end
    object Label3: TLabel
      Left = 216
      Top = 0
      Width = 29
      Height = 13
      Caption = 'Modal'
      Transparent = True
    end
    object Label7: TLabel
      Left = 307
      Top = 0
      Width = 75
      Height = 13
      Caption = 'Tipo do Servi'#231'o'
      Transparent = True
    end
    object Label4: TLabel
      Left = 419
      Top = 0
      Width = 96
      Height = 13
      Caption = 'Tomador do Servi'#231'o'
      Transparent = True
    end
    object lbl2: TLabel
      Left = 521
      Top = 0
      Width = 66
      Height = 13
      Caption = 'Forma de Pag'
      Transparent = True
    end
    object lblcfop: TLabel
      Left = 594
      Top = 0
      Width = 146
      Height = 13
      Caption = 'CFOP - Natureza da Presta'#231#227'o'
      Transparent = True
    end
    object edtcodigo: TcxTextEdit
      Left = 1
      Top = 14
      Properties.OnEditValueChanged = edtcodigoPropertiesEditValueChanged
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
    object edtdtemissao: TcxDBDateEdit
      Left = 70
      Top = 14
      DataBinding.DataField = 'DTEMISSAO'
      DataBinding.DataSource = dts
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 83
    end
    object edthremissao: TcxDBTimeEdit
      Left = 151
      Top = 14
      DataBinding.DataField = 'HREMISSAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 66
    end
    object cbxcdctemodal: TcxDBLookupComboBox
      Left = 216
      Top = 14
      DataBinding.DataField = 'CDCTEMODAL'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDCTEMODAL'
      Properties.ListColumns = <
        item
          FieldName = 'NMCTEMODAL'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 91
    end
    object cbxcdctetpservico: TcxDBLookupComboBox
      Left = 307
      Top = 14
      DataBinding.DataField = 'CDCTETPSERVICO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 180
      Properties.KeyFieldNames = 'CDCTETPSERVICO'
      Properties.ListColumns = <
        item
          FieldName = 'NMCTETPSERVICO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 112
    end
    object cbxcdctetptomador: TcxDBLookupComboBox
      Left = 419
      Top = 14
      DataBinding.DataField = 'CDCTETPTOMADOR'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDCTETPTOMADOR'
      Properties.ListColumns = <
        item
          FieldName = 'NMCTETPTOMADOR'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnChange = cbxctetptomadorPropertiesChange
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 102
    end
    object cbxcdcteformapagamento: TcxDBLookupComboBox
      Left = 521
      Top = 14
      DataBinding.DataField = 'CDCTEFORMAPAGAMENTO'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDCTEFORMAPAGAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'NMCTEFORMAPAGAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 74
    end
    object cbxcdcfop: TcxDBLookupComboBox
      Left = 594
      Top = 14
      DataBinding.DataField = 'CDCFOP'
      DataBinding.DataSource = dts
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownWidth = 500
      Properties.KeyFieldNames = 'CDCFOP'
      Properties.ListColumns = <
        item
          FieldName = 'NMCFOP2'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 193
    end
  end
  object pnl: TcxLabel
    Left = 0
    Top = 67
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
  object cve: TcxGroupBox
    Left = 0
    Top = 130
    Align = alTop
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Height = 81
    Width = 1105
    object lbl6: TLabel
      Left = 2
      Top = 15
      Width = 52
      Height = 13
      Caption = 'Remetente'
      Transparent = True
    end
    object lblDestinatario: TLabel
      Left = 2
      Top = 36
      Width = 56
      Height = 13
      Caption = 'Destinat'#225'rio'
      Transparent = True
    end
    object lblexpedidor: TLabel
      Left = 403
      Top = 15
      Width = 47
      Height = 13
      Caption = 'Expedidor'
      Transparent = True
    end
    object lblrecebedor: TLabel
      Left = 403
      Top = 36
      Width = 53
      Height = 13
      Caption = 'Recebedor'
      Transparent = True
    end
    object lbltomador: TLabel
      Left = 2
      Top = 57
      Width = 42
      Height = 13
      Caption = 'Tomador'
      Transparent = True
    end
    object lblNMREMETENTE: TDBText
      Left = 165
      Top = 17
      Width = 237
      Height = 17
      DataField = 'NMREMETENTE'
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
      OnDblClick = lblNMREMETENTEDblClick
    end
    object lblNMDESTINATARIO: TDBText
      Left = 165
      Top = 37
      Width = 237
      Height = 17
      DataField = 'NMDESTINATARIO'
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
      OnDblClick = lblNMDESTINATARIODblClick
    end
    object lblnmtomador: TDBText
      Left = 165
      Top = 55
      Width = 237
      Height = 17
      DataField = 'NMTOMADOR'
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
      OnDblClick = lblnmtomadorDblClick
    end
    object lblNMEXPEDIDOR: TDBText
      Left = 563
      Top = 15
      Width = 237
      Height = 17
      DataField = 'NMEXPEDIDOR'
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
      OnDblClick = lblNMEXPEDIDORDblClick
    end
    object lblnmrecebedor: TDBText
      Left = 563
      Top = 36
      Width = 237
      Height = 17
      DataField = 'NMRECEBEDOR'
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
      OnDblClick = lblnmrecebedorDblClick
    end
    object lblcontato: TLabel
      Left = 403
      Top = 57
      Width = 51
      Height = 13
      Caption = 'Comprador'
      Transparent = True
    end
    object txtNURAMAL: TDBText
      Left = 821
      Top = 57
      Width = 125
      Height = 17
      DataField = 'NURAMAL'
      DataSource = dtsitcontcliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnDblClick = lblnmrecebedorDblClick
    end
    object lblramal: TLabel
      Left = 788
      Top = 58
      Width = 30
      Height = 13
      Caption = 'Ramal'
      Transparent = True
    end
    object edtcdremetente: TcxDBButtonEdit
      Left = 59
      Top = 12
      DataBinding.DataField = 'CDREMETENTE'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdremetentePropertiesButtonClick
      Properties.OnEditValueChanged = edtcdremetentePropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorEnter
      OnExit = colorExit
      OnKeyDown = edtcdremetenteKeyDown
      OnKeyPress = eventokeypress
      Width = 107
    end
    object edtcddestinatario: TcxDBButtonEdit
      Left = 59
      Top = 33
      DataBinding.DataField = 'CDDESTINATARIO'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcddestinatarioPropertiesButtonClick
      Properties.OnEditValueChanged = edtcddestinatarioPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorEnter
      OnExit = colorExit
      OnKeyDown = edtcddestinatarioKeyDown
      OnKeyPress = eventokeypress
      Width = 107
    end
    object edtcdexpedidor: TcxDBButtonEdit
      Left = 457
      Top = 12
      DataBinding.DataField = 'CDEXPEDIDOR'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdexpedidorPropertiesButtonClick
      Properties.OnEditValueChanged = edtcdexpedidorPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorEnter
      OnExit = colorExit
      OnKeyDown = edtcdexpedidorKeyDown
      OnKeyPress = eventokeypress
      Width = 107
    end
    object edtcdrecebedor: TcxDBButtonEdit
      Left = 457
      Top = 33
      DataBinding.DataField = 'CDRECEBEDOR'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdrecebedorPropertiesButtonClick
      Properties.OnEditValueChanged = edtcdrecebedorPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorEnter
      OnExit = colorExit
      OnKeyDown = edtcdrecebedorKeyDown
      OnKeyPress = eventokeypress
      Width = 107
    end
    object edtcdtomador: TcxDBButtonEdit
      Left = 59
      Top = 54
      DataBinding.DataField = 'CDTOMADOR'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdtomadorPropertiesButtonClick
      Properties.OnEditValueChanged = edtcdtomadorPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorEnter
      OnExit = colorExit
      OnKeyDown = edtcdtomadorKeyDown
      OnKeyPress = eventokeypress
      Width = 107
    end
    object cbxcditcontcliente: TcxDBLookupComboBox
      Left = 457
      Top = 54
      DataBinding.DataField = 'CDITCONTCLIENTE'
      DataBinding.DataSource = dts
      Properties.KeyFieldNames = 'CDITCONTCLIENTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMITCONTCLIENTE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dtsitcontcliente
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorEnter
      OnExit = colorExit
      Width = 330
    end
  end
  object pgc: TcxPageControl
    Left = 0
    Top = 211
    Width = 1105
    Height = 432
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tbsDADOS
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dtmmain.imlMain
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 432
    ClientRectRight = 1105
    ClientRectTop = 25
    object tbsDADOS: TcxTabSheet
      Caption = '&Dados'
      object gbxtermino: TcxGroupBox
        Left = 394
        Top = 4
        Caption = 'Local de T'#233'rmino da Presta'#231#227'o'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 48
        Width = 391
        object lbl4: TLabel
          Left = 4
          Top = 21
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object lbl5: TLabel
          Left = 76
          Top = 21
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio'
          Transparent = True
        end
        object cbxcduftermino: TcxDBLookupComboBox
          Left = 22
          Top = 17
          DataBinding.DataField = 'CDUFTERMINO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDUF'
          Properties.ListColumns = <
            item
              FieldName = 'SGUF'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorEnter
          OnExit = cbxcdufterminoExit
          Width = 53
        end
        object cbxcdmunicipiotermino: TcxDBLookupComboBox
          Left = 127
          Top = 17
          DataBinding.DataField = 'CDMUNICIPIOTERMINO'
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
          TabOrder = 1
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 257
        end
      end
      object gbxinicio: TcxGroupBox
        Left = 1
        Top = 4
        Caption = 'Local de In'#237'cio da Presta'#231#227'o'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 39
        Width = 391
        object lbl3: TLabel
          Left = 4
          Top = 21
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object lblmunicipioinicio: TLabel
          Left = 76
          Top = 21
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio'
          Transparent = True
        end
        object cbxcdufinicio: TcxDBLookupComboBox
          Left = 22
          Top = 17
          DataBinding.DataField = 'CDUFINICIO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDUF'
          Properties.ListColumns = <
            item
              FieldName = 'SGUF'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorEnter
          OnExit = cbxcdufinicioExit
          Width = 53
        end
        object cbxcdmunicipioinicio: TcxDBLookupComboBox
          Left = 128
          Top = 17
          DataBinding.DataField = 'CDMUNICIPIOINICIO'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 500
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
          TabOrder = 1
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 257
        end
      end
      object gbxemissao: TcxGroupBox
        Left = 1
        Top = 44
        Caption = 'Local de Emiss'#227'o de CTE'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 39
        Width = 391
        object lbl1: TLabel
          Left = 4
          Top = 21
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object lbl8: TLabel
          Left = 76
          Top = 21
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio'
          Transparent = True
        end
        object cbxcdufemissao: TcxDBLookupComboBox
          Left = 22
          Top = 17
          DataBinding.DataField = 'CDUFEMISSAO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDUF'
          Properties.ListColumns = <
            item
              FieldName = 'SGUF'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorEnter
          OnExit = cbxcdufemissaoExit
          Width = 53
        end
        object cbxcdmunicipioemissao: TcxDBLookupComboBox
          Left = 128
          Top = 17
          DataBinding.DataField = 'CDMUNICIPIOEMISSAO'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 500
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
          TabOrder = 1
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 257
        end
      end
      object gbxoutros: TcxGroupBox
        Left = 1
        Top = 84
        Caption = 'Outros'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 190
        Width = 391
        object lbl9: TLabel
          Left = 1
          Top = 17
          Width = 90
          Height = 13
          Caption = 'Finalidade Emiss'#227'o'
          Transparent = True
        end
        object lbl10: TLabel
          Left = 218
          Top = 17
          Width = 71
          Height = 13
          Caption = 'Forma Emiss'#227'o'
          Transparent = True
        end
        object lbl11: TLabel
          Left = 306
          Top = 17
          Width = 80
          Height = 13
          Caption = 'Forma Impress'#227'o'
          Transparent = True
        end
        object lblnuchavenfereferenciado: TLabel
          Left = 1
          Top = 52
          Width = 158
          Height = 13
          Caption = 'Chave acesso CTe Referenciado'
          Transparent = True
        end
        object lbldtemissaocteanulacao: TLabel
          Left = 1
          Top = 90
          Width = 39
          Height = 13
          Caption = 'Emiss'#227'o'
          Transparent = True
        end
        object lblnuchavecteanulacao: TLabel
          Left = 3
          Top = 148
          Width = 68
          Height = 13
          Caption = 'Chave acesso'
          Transparent = True
          Visible = False
        end
        object edtnuchavenfereferenciado: TcxDBTextEdit
          Left = 1
          Top = 65
          DataBinding.DataField = 'NUCHAVENFEREFERENCIADO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Width = 385
        end
        object edtnuchavecteanulacao: TcxDBTextEdit
          Left = 1
          Top = 163
          DataBinding.DataField = 'NUCHAVECTEANULACAO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Width = 385
        end
        object cbxcdctefinalidadeemissao: TcxDBLookupComboBox
          Left = 1
          Top = 31
          DataBinding.DataField = 'CDCTEFINALIDADEEMISSAO'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'CDCTEFINALIDADEEMISSAO'
          Properties.ListColumns = <
            item
              FieldName = 'NMCTEFINALIDADEEMISSAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 215
        end
        object cbxcdcteformaemissao: TcxDBLookupComboBox
          Left = 218
          Top = 31
          DataBinding.DataField = 'CDCTEFORMAEMISSAO'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 180
          Properties.KeyFieldNames = 'CDCTEFORMAEMISSAO'
          Properties.ListColumns = <
            item
              FieldName = 'NMCTEFORMAEMISSAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.OnValidate = cbxcteformaemissaoPropertiesValidate
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 88
        end
        object cbxcteformaimpressao: TcxDBLookupComboBox
          Left = 306
          Top = 31
          DataBinding.DataField = 'CDCTEFORMAIMPRESSAO'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 180
          Properties.KeyFieldNames = 'CDCTEFORMAIMPRESSAO'
          Properties.ListColumns = <
            item
              FieldName = 'NMCTEFORMAIMPRESSAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 83
        end
        object edtdtemissaocteanulacao: TcxDBDateEdit
          Left = 48
          Top = 86
          DataBinding.DataField = 'DTEMISSAOCTEANULACAO'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 121
        end
        object rdgtptomadoricms: TcxDBRadioGroup
          Left = 4
          Top = 107
          Caption = 'Origem Anula'#231#227'o'
          DataBinding.DataField = 'TPTOMADORICMS'
          DataBinding.DataSource = dts
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Anula'#231#227'o'
              Value = 'A'
            end
            item
              Caption = 'CTE Tomador'
              Value = 'C'
            end
            item
              Caption = 'NFE Tomador'
              Value = 'N'
            end>
          TabOrder = 5
          Height = 35
          Width = 381
        end
      end
      object gbxprevisaoentrega: TcxGroupBox
        Left = 394
        Top = 55
        Caption = 'Previs'#227'o Entrega'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Height = 123
        Width = 391
        object Label6: TLabel
          Left = 1
          Top = 15
          Width = 23
          Height = 13
          Caption = 'Data'
          Transparent = True
        end
        object lbl13: TLabel
          Left = 1
          Top = 49
          Width = 23
          Height = 13
          Caption = 'Hora'
          Transparent = True
        end
        object lbldtprevisaoi: TLabel
          Left = 113
          Top = 15
          Width = 27
          Height = 13
          Caption = 'In'#237'cio'
          Transparent = True
        end
        object lbldtprevisaof: TLabel
          Left = 234
          Top = 15
          Width = 16
          Height = 13
          Caption = 'Fim'
          Transparent = True
        end
        object lblhrprevisaoi: TLabel
          Left = 113
          Top = 50
          Width = 27
          Height = 13
          Caption = 'In'#237'cio'
          Transparent = True
        end
        object lblhrprevisaof: TLabel
          Left = 234
          Top = 50
          Width = 16
          Height = 13
          Caption = 'Fim'
          Transparent = True
        end
        object lbl15: TLabel
          Left = 1
          Top = 83
          Width = 54
          Height = 13
          Caption = 'KM Viagem'
          Transparent = True
        end
        object lbl16: TLabel
          Left = 113
          Top = 84
          Width = 53
          Height = 13
          Caption = 'KM por Dia'
          Transparent = True
        end
        object lbl17: TLabel
          Left = 234
          Top = 84
          Width = 111
          Height = 13
          Caption = 'Prazo entrega em dia(s)'
          Transparent = True
        end
        object cbxcdctetpprevisaoentrega: TcxDBLookupComboBox
          Left = 1
          Top = 29
          DataBinding.DataField = 'CDCTETPPREVISAOENTREGA'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 180
          Properties.KeyFieldNames = 'CDCTETPPREVISAOENTREGA'
          Properties.ListColumns = <
            item
              FieldName = 'NMCTETPPREVISAOENTREGA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.OnChange = cbxcteprevisaoentregaPropertiesChange
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 112
        end
        object cbxcdctetpprevisaoentregah: TcxDBLookupComboBox
          Left = 1
          Top = 63
          DataBinding.DataField = 'CDCTETPPREVISAOENTREGAH'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 180
          Properties.KeyFieldNames = 'CDCTETPPREVISAOENTREGAH'
          Properties.ListColumns = <
            item
              FieldName = 'NMCTETPPREVISAOENTREGAH'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.OnChange = cbxcteprevisaoentregahPropertiesChange
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 112
        end
        object edtdtprevisaoi: TcxDBDateEdit
          Left = 113
          Top = 29
          DataBinding.DataField = 'DTPREVISAOI'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 121
        end
        object edtdtprevisaof: TcxDBDateEdit
          Left = 234
          Top = 29
          DataBinding.DataField = 'DTPREVISAOF'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 121
        end
        object edthrprevisaoi: TcxDBTimeEdit
          Left = 113
          Top = 63
          DataBinding.DataField = 'HRPREVISAOI'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 121
        end
        object edthrprevisaof: TcxDBTimeEdit
          Left = 234
          Top = 63
          DataBinding.DataField = 'HRPREVISAOF'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 121
        end
        object edtNUKMVIAGEM: TcxDBCalcEdit
          Left = 1
          Top = 96
          DataBinding.DataField = 'NUKMVIAGEM'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Width = 112
        end
        object edtNUKMDIA: TcxDBCalcEdit
          Left = 113
          Top = 96
          DataBinding.DataField = 'NUKMDIA'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Width = 121
        end
        object edtNUDIASENTREGA: TcxDBSpinEdit
          Left = 234
          Top = 96
          DataBinding.DataField = 'NUDIASENTREGA'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Width = 121
        end
      end
      object gbxcontingencia: TcxGroupBox
        Left = 394
        Top = 182
        Caption = 'Conting'#234'ncia'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Visible = False
        Height = 92
        Width = 391
        object Label8: TLabel
          Left = 1
          Top = 17
          Width = 56
          Height = 13
          Caption = 'Data e hora'
          Transparent = True
        end
        object Label11: TLabel
          Left = 1
          Top = 52
          Width = 55
          Height = 13
          Caption = 'Justificativa'
          Transparent = True
        end
        object edtdscontingencia: TcxDBTextEdit
          Left = 1
          Top = 65
          DataBinding.DataField = 'DSCONTINGENCIA'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 385
        end
        object edttscontingencia: TcxDBDateEdit
          Left = 1
          Top = 31
          DataBinding.DataField = 'TSCONTINGENCIA'
          DataBinding.DataSource = dts
          Properties.Kind = ckDateTime
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 151
        end
      end
    end
    object tbsnfe: TcxTabSheet
      Caption = '&Informa'#231#227'o/Carga'
      object Bevel5: TBevel
        Left = 0
        Top = 0
        Width = 1105
        Height = 25
        Align = alTop
        Shape = bsBottomLine
        ExplicitWidth = 1084
      end
      object lbl14: TLabel
        Left = 4
        Top = 5
        Width = 21
        Height = 13
        Caption = 'Tipo'
        Transparent = True
      end
      object grdcteremetentenota: TcxGrid
        Left = 0
        Top = 25
        Width = 1105
        Height = 192
        Align = alTop
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbvcteremetentenota: TcxGridDBTableView
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
          DataController.DataSource = dtscteremetentenota
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'PSBRUTO'
              Column = tbvcteremetentenotaPSBRUTO
            end
            item
              Kind = skSum
              FieldName = 'PSLIQUIDO'
              Column = tbvcteremetentenotaPSLIQUIDO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLTOTAL'
              Column = tbvcteremetentenotaVLTOTAL
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEICMS'
              Column = tbvcteremetentenotaVLBASEICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLBASEICMSSUBTRIB'
              Column = tbvcteremetentenotaVLBASEICMSSUBTRIB
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMS'
              Column = tbvcteremetentenotaVLICMS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLICMSSUBTRIB'
              Column = tbvcteremetentenotaVLICMSSUBTRIB
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLPRODUTO'
              Column = tbvcteremetentenotaVLPRODUTO
            end
            item
              Kind = skSum
              Column = tbvcteremetentenotaVLFRETE
            end>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.InfoText = 'Clique aqui para adicionar um registro'
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.NavigatorHints = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.Indicator = True
          Preview.AutoHeight = False
          object tbvcteremetentenotaNUCTETPDOCOUTROS: TcxGridDBColumn
            Caption = 'Tipo Documento'
            DataBinding.FieldName = 'NUCTETPDOCOUTROS'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'NUCTETPDOCOUTROS'
            Properties.ListColumns = <
              item
                FieldName = 'NMCTETPDOCOUTROS'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 90
          end
          object tbvcteremetentenotaDSOUTROS: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DSOUTROS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 90
          end
          object tbvcteremetentenotaNUROMANEIO: TcxGridDBColumn
            Caption = 'N'#186' Romaneio'
            DataBinding.FieldName = 'NUROMANEIO'
            Width = 80
          end
          object tbvcteremetentenotaNUPEDIDO: TcxGridDBColumn
            Caption = 'N'#186' Pedido'
            DataBinding.FieldName = 'NUPEDIDO'
            Width = 80
          end
          object tbvcteremetentenotaNUDOCFISCALICMS: TcxGridDBColumn
            Caption = 'Doc Fiscal'
            DataBinding.FieldName = 'NUDOCFISCALICMS'
            Width = 70
          end
          object tbvcteremetentenotaNUCHAVENFE: TcxGridDBColumn
            Caption = 'Chave NFE'
            DataBinding.FieldName = 'NUCHAVENFE'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxgrdbtblvwGrid1DBTableView1NUCHAVENFEPropertiesButtonClick
            Width = 286
          end
          object tbvcteremetentenotaNUSERIE: TcxGridDBColumn
            Caption = 'N'#186' S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
            Width = 66
          end
          object tbvcteremetentenotaNUNOTA: TcxGridDBColumn
            DataBinding.FieldName = 'NUNOTA'
            Width = 100
            IsCaptionAssigned = True
          end
          object tbvcteremetentenotaDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 80
          end
          object tbvcteremetentenotaVLBASEICMS: TcxGridDBColumn
            Caption = 'Base ICMS'
            DataBinding.FieldName = 'VLBASEICMS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 140
          end
          object tbvcteremetentenotaVLICMS: TcxGridDBColumn
            Caption = 'ICMS'
            DataBinding.FieldName = 'VLICMS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 140
          end
          object tbvcteremetentenotaVLBASEICMSSUBTRIB: TcxGridDBColumn
            Caption = 'Base Sub Trib'
            DataBinding.FieldName = 'VLBASEICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 140
          end
          object tbvcteremetentenotaVLICMSSUBTRIB: TcxGridDBColumn
            Caption = 'ICMS Sub Trib'
            DataBinding.FieldName = 'VLICMSSUBTRIB'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 100
          end
          object tbvcteremetentenotaVLPRODUTO: TcxGridDBColumn
            Caption = 'Vl Produto'
            DataBinding.FieldName = 'VLPRODUTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 100
          end
          object tbvcteremetentenotaVLTOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'VLTOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 100
          end
          object tbvcteremetentenotaCDCFOP: TcxGridDBColumn
            Caption = 'CFOP'
            DataBinding.FieldName = 'CDCFOP'
            Width = 38
          end
          object tbvcteremetentenotaPSLIQUIDO: TcxGridDBColumn
            Caption = 'Peso L'#237'quido'
            DataBinding.FieldName = 'PSLIQUIDO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 100
          end
          object tbvcteremetentenotaPSBRUTO: TcxGridDBColumn
            Caption = 'Peso Bruto'
            DataBinding.FieldName = 'PSBRUTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 100
          end
          object tbvcteremetentenotaNUPIN: TcxGridDBColumn
            Caption = 'PIN'
            DataBinding.FieldName = 'NUPIN'
            Visible = False
            Width = 80
          end
          object tbvcteremetentenotaVLFRETE: TcxGridDBColumn
            Caption = 'Frete'
            DataBinding.FieldName = 'VLFRETE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object tbvcteremetentenotaDTPREVISAO: TcxGridDBColumn
            Caption = 'Previs'#227'o'
            DataBinding.FieldName = 'DTPREVISAO'
            Width = 80
          end
        end
        object lvlcteremetentenota: TcxGridLevel
          GridView = tbvcteremetentenota
        end
      end
      object cbxCDCTETPINFORMACAOREMETENTE: TcxDBLookupComboBox
        Left = 29
        Top = 1
        DataBinding.DataField = 'CDCTETPINFORMACAOREMETENTE'
        DataBinding.DataSource = dts
        Properties.DropDownWidth = 180
        Properties.KeyFieldNames = 'CDCTETPINFORMACAOREMETENTE'
        Properties.ListColumns = <
          item
            FieldName = 'NMCTETPINFORMACAOREMETENTE'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorEnter
        OnExit = colorExit
        Width = 207
      end
      object pnlcarga: TPanel
        Left = 0
        Top = 244
        Width = 1105
        Height = 163
        Align = alClient
        TabOrder = 2
        object Bevel2: TBevel
          Left = 1
          Top = 1
          Width = 1103
          Height = 25
          Align = alTop
          Shape = bsBottomLine
          ExplicitWidth = 1082
        end
        object Label13: TLabel
          Left = 226
          Top = 5
          Width = 37
          Height = 13
          Caption = 'Produto'
          Transparent = True
        end
        object lbl7: TLabel
          Left = 4
          Top = 5
          Width = 24
          Height = 13
          Caption = 'Valor'
          Transparent = True
        end
        object Label5: TLabel
          Left = 598
          Top = 3
          Width = 105
          Height = 13
          Caption = 'Outras Caracter'#237'sticas'
          Transparent = True
        end
        object grdcteqtdcarga: TcxGrid
          Left = 1
          Top = 45
          Width = 1103
          Height = 117
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object tbvcteqtdcarga: TcxGridDBTableView
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
            DataController.DataSource = dtscteqtdcarga
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'QTITEM'
                Column = tbvcteqtdcargaQTITEM
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvcteqtdcargaCDUNIDADE: TcxGridDBColumn
              Caption = 'Unidade'
              DataBinding.FieldName = 'CDUNIDADE'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CDUNIDADE'
              Properties.ListColumns = <
                item
                  FieldName = 'NMUNIDADE'
                end>
              Properties.ListOptions.ShowHeader = False
              Width = 130
            end
            object tbvcteqtdcargaCDCTETPMEDIDA: TcxGridDBColumn
              Caption = 'Medida'
              DataBinding.FieldName = 'CDCTETPMEDIDA'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CDCTETPMEDIDA'
              Properties.ListColumns = <
                item
                  FieldName = 'NMCTETPMEDIDA'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.OnInitPopup = grdcteqtdcargaDBTableView1CDCTETPMEDIDAPropertiesInitPopup
              Width = 180
            end
            object tbvcteqtdcargaQTITEM: TcxGridDBColumn
              Caption = 'Quantidade'
              DataBinding.FieldName = 'QTITEM'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 134
            end
          end
          object lvlcteqtdcarga: TcxGridLevel
            GridView = tbvcteqtdcarga
          end
        end
        object txtnmproduto: TcxDBLabel
          Left = 336
          Top = 4
          DataBinding.DataField = 'NMPRODUTO'
          DataBinding.DataSource = dts
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextColor = clBlue
          Style.IsFontAssigned = True
          Transparent = True
          Height = 18
          Width = 261
        end
        object edtcdproduto: TcxDBButtonEdit
          Left = 264
          Top = 1
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
          TabOrder = 2
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = edtcdprodutoKeyDown
          Width = 69
        end
        object edtvlmercadoria: TcxDBCalcEdit
          Left = 29
          Top = 1
          DataBinding.DataField = 'VLMERCADORIA'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 109
        end
        object edtDSOUTRASCARACTERISTICAS: TcxDBTextEdit
          Left = 707
          Top = 1
          DataBinding.DataField = 'DSOUTRASCARACTERISTICAS'
          DataBinding.DataSource = dts
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Width = 203
        end
        object btnadicionarvalor: TcxButton
          Left = 139
          Top = 1
          Width = 83
          Height = 21
          Action = actadicionarvalor
          LookAndFeel.NativeStyle = False
          TabOrder = 5
        end
        object cxLabel1: TcxLabel
          Left = 1
          Top = 26
          Align = alTop
          Caption = 'Quantidade de Carga'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 217
        Width = 1105
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salTop
        Control = grdcteremetentenota
      end
      object cxLabel3: TcxLabel
        Left = 0
        Top = 225
        Align = alTop
        Caption = 'Carga'
        ParentFont = False
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 553
        AnchorY = 235
      end
    end
    object tbsservicos: TcxTabSheet
      Caption = '&Servi'#231'os e Impostos'
      object gbxicms: TcxGroupBox
        Left = 0
        Top = 83
        Align = alTop
        Caption = 'ICMS'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 53
        Width = 1105
        object lbl20: TLabel
          Left = 7
          Top = 11
          Width = 89
          Height = 13
          Caption = 'Situa'#231#227'o Tribut'#225'ria'
          Transparent = True
        end
        object lblalredicms: TLabel
          Left = 98
          Top = 11
          Width = 72
          Height = 13
          Caption = '% Redu'#231#227'o BC'
          Transparent = True
        end
        object lblVLBASEICMS: TLabel
          Left = 192
          Top = 11
          Width = 104
          Height = 13
          Caption = 'Valor da Base C'#225'lculo'
          Transparent = True
        end
        object lblALICMS: TLabel
          Left = 316
          Top = 11
          Width = 40
          Height = 13
          Caption = 'Al'#237'quota'
          Transparent = True
        end
        object lblvlicms: TLabel
          Left = 456
          Top = 11
          Width = 24
          Height = 13
          Caption = 'Valor'
          Transparent = True
        end
        object lblVLCREDITOOUTOGARDO: TLabel
          Left = 482
          Top = 11
          Width = 167
          Height = 13
          Caption = 'Valor Cr'#233'dito Outorgado/Presumido'
          Transparent = True
        end
        object cbxnusticms: TcxDBLookupComboBox
          Left = 7
          Top = 23
          DataBinding.DataField = 'NUSTICMS'
          DataBinding.DataSource = dts
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'NUSTICMS'
          Properties.ListColumns = <
            item
              FieldName = 'NMSTICMS'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 89
        end
        object edtalredicms: TcxDBCalcEdit
          Left = 98
          Top = 23
          DataBinding.DataField = 'ALREDICMS'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 77
        end
        object edtalicms: TcxDBCalcEdit
          Left = 298
          Top = 23
          DataBinding.DataField = 'ALICMS'
          DataBinding.DataSource = dts
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 58
        end
        object edtvlcreditooutogardo: TcxDBCalcEdit
          Left = 482
          Top = 23
          DataBinding.DataField = 'VLCREDITOOUTOGARDO'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 167
        end
        object txtVLBASEICMS: TcxDBLabel
          Left = 172
          Top = 25
          DataBinding.DataField = 'VLBASEICMS'
          DataBinding.DataSource = dts
          Style.TextColor = clBlue
          Transparent = True
          Height = 19
          Width = 121
        end
        object txtVLICMS: TcxDBLabel
          Left = 356
          Top = 25
          DataBinding.DataField = 'VLICMS'
          DataBinding.DataSource = dts
          Style.TextColor = clBlue
          Transparent = True
          Height = 19
          Width = 121
        end
        object edtvlbaseicms: TcxDBCalcEdit
          Left = 175
          Top = 23
          DataBinding.DataField = 'VLBASEICMS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Visible = False
          OnKeyDown = NextControl
          Width = 121
        end
        object edtvlicms: TcxDBCalcEdit
          Left = 359
          Top = 23
          DataBinding.DataField = 'VLICMS'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Visible = False
          OnKeyDown = NextControl
          Width = 121
        end
      end
      object gbxduplicata: TcxGroupBox
        Left = 0
        Top = 136
        Align = alClient
        Caption = 'Contas a Receber'
        TabOrder = 2
        Height = 271
        Width = 1105
        object Label15: TLabel
          Left = 195
          Top = 25
          Width = 50
          Height = 13
          Caption = 'Cnd Pagto'
          Transparent = True
        end
        object lbltpcobranca: TLabel
          Left = 462
          Top = 25
          Width = 46
          Height = 13
          Caption = 'Cobran'#231'a'
          Transparent = True
        end
        object lbl19: TLabel
          Left = 4
          Top = 29
          Width = 24
          Height = 13
          Caption = 'Valor'
          Transparent = True
        end
        object Bevel6: TBevel
          Left = 2
          Top = 18
          Width = 1101
          Height = 30
          Align = alTop
          ExplicitWidth = 1080
        end
        object grdduplicata: TcxGrid
          Left = 2
          Top = 48
          Width = 1101
          Height = 221
          Align = alClient
          TabOrder = 5
          LookAndFeel.NativeStyle = False
          object tbvduplicata: TcxGridDBTableView
            OnDblClick = tbvduplicataDblClick
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
            DataController.DataSource = dtsduplicata
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                FieldName = 'VLDUPLICATA'
                Column = tbvduplicataVLDUPLICATA
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.NavigatorHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object tbvduplicataNUDUPLICATA: TcxGridDBColumn
              Caption = 'Contas a Receber'
              DataBinding.FieldName = 'NUDUPLICATA'
              Styles.Content = cxStyle1
              Width = 100
            end
            object tbvduplicataDTVENCIMENTO: TcxGridDBColumn
              Caption = 'Vencimento'
              DataBinding.FieldName = 'DTVENCIMENTO'
              Width = 90
            end
            object tbvduplicataVLDUPLICATA: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'VLDUPLICATA'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
              Width = 120
            end
            object tbvduplicataNMSTDUPLICATA: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'NMSTDUPLICATA'
              Width = 80
            end
            object tbvduplicataCDTPCOBRANCA: TcxGridDBColumn
              Caption = 'Cobran'#231'a'
              DataBinding.FieldName = 'CDTPCOBRANCA'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'CDTPCOBRANCA'
              Properties.ListColumns = <
                item
                  FieldName = 'NMTPCOBRANCA'
                end>
              Properties.ListOptions.ShowHeader = False
              Width = 200
            end
            object tbvduplicataNUPLCONTA: TcxGridDBColumn
              Caption = 'Plano de Contas'
              DataBinding.FieldName = 'NUPLCONTA'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tbvduplicataNUPLCONTAPropertiesButtonClick
              Width = 120
            end
            object tbvduplicataNMPLCONTA: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'NMPLCONTA'
              Options.Editing = False
              Width = 180
            end
            object tbvduplicataNUCNTCUSTO: TcxGridDBColumn
              Caption = 'Centro Custo'
              DataBinding.FieldName = 'NUCNTCUSTO'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tbvduplicataNUCNTCUSTOPropertiesButtonClick
              Width = 120
            end
            object tbvduplicataNMCNTCUSTO: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'NMCNTCUSTO'
              Width = 180
            end
          end
          object lvlduplicata: TcxGridLevel
            GridView = tbvduplicata
          end
        end
        object cbxcdcondpagto: TcxDBLookupComboBox
          Left = 246
          Top = 21
          DataBinding.DataField = 'CDCONDPAGTO'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDCONDPAGTO'
          Properties.ListColumns = <
            item
              FieldName = 'NMCONDPAGTO'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = cbxcdcondpagtoEnter
          OnExit = colorExit
          Width = 215
        end
        object cbxcdtpcobranca: TcxDBLookupComboBox
          Left = 510
          Top = 21
          DataBinding.DataField = 'CDTPCOBRANCA'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'CDTPCOBRANCA'
          Properties.ListColumns = <
            item
              FieldName = 'NMTPCOBRANCA'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = cbxcdtpcobrancaEnter
          OnExit = colorExit
          Width = 225
        end
        object btngerarduplicata: TcxButton
          Left = 791
          Top = 21
          Width = 101
          Height = 25
          Action = actgerarduplicata
          LookAndFeel.NativeStyle = False
          TabOrder = 4
        end
        object btnredefinir: TcxButton
          Left = 735
          Top = 21
          Width = 57
          Height = 25
          Action = actredefinir
          LookAndFeel.NativeStyle = False
          TabOrder = 3
        end
        object edtvlreceber: TcxDBCalcEdit
          Left = 29
          Top = 21
          DataBinding.DataField = 'VLRECEBER'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorEnter
          OnExit = colorExit
          Width = 165
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Composi'#231#227'o do Servi'#231'o'
        TabOrder = 0
        Height = 83
        Width = 1105
        object Label9: TLabel
          Left = 10
          Top = 22
          Width = 24
          Height = 13
          Caption = 'Frete'
          Transparent = True
        end
        object Label12: TLabel
          Left = 10
          Top = 43
          Width = 39
          Height = 13
          Caption = 'Ped'#225'gio'
          Transparent = True
        end
        object Bevel4: TBevel
          Left = 10
          Top = 57
          Width = 698
          Height = 5
        end
        object Label10: TLabel
          Left = 226
          Top = 22
          Width = 51
          Height = 13
          Caption = 'AdValorem'
          Transparent = True
        end
        object Label14: TLabel
          Left = 469
          Top = 43
          Width = 26
          Height = 13
          Caption = 'Outro'
          Transparent = True
        end
        object lbl18: TLabel
          Left = 469
          Top = 68
          Width = 63
          Height = 13
          Caption = 'Valor Servi'#231'o'
          Transparent = True
        end
        object Label16: TLabel
          Left = 279
          Top = 22
          Width = 11
          Height = 13
          Caption = '% '
          Transparent = True
        end
        object lblvlicmsservico: TLabel
          Left = 469
          Top = 22
          Width = 53
          Height = 13
          Caption = 'Valor ICMS'
          Transparent = True
        end
        object lblvlseguro: TLabel
          Left = 226
          Top = 43
          Width = 34
          Height = 13
          Caption = 'Seguro'
          Transparent = True
        end
        object edtvlfrete: TcxDBCalcEdit
          Left = 50
          Top = 14
          DataBinding.DataField = 'VLFRETE'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 175
        end
        object edtvlpedagio: TcxDBCalcEdit
          Left = 50
          Top = 35
          DataBinding.DataField = 'VLPEDAGIO'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 175
        end
        object edtvlservico: TcxDBCalcEdit
          Left = 533
          Top = 60
          TabStop = False
          DataBinding.DataField = 'VLSERVICO'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 175
        end
        object edtvloutro: TcxDBCalcEdit
          Left = 533
          Top = 35
          DataBinding.DataField = 'VLOUTRO'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 175
        end
        object edtpradvalorem: TcxDBCalcEdit
          Left = 291
          Top = 14
          DataBinding.DataField = 'PRADVALOREM'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 61
        end
        object edtvladvalorem: TcxDBCalcEdit
          Left = 352
          Top = 14
          TabStop = False
          DataBinding.DataField = 'VLADVALOREM'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 114
        end
        object edtvlicmsservico: TcxDBCalcEdit
          Left = 533
          Top = 14
          DataBinding.DataField = 'VLICMSSERVICO'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 175
        end
        object edtvlseguro: TcxDBCalcEdit
          Left = 291
          Top = 35
          DataBinding.DataField = 'VLSEGURO'
          DataBinding.DataSource = dts
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnEnter = colorEnter
          OnExit = colorExit
          OnKeyDown = NextControl
          Width = 175
        end
      end
    end
    object tbsrodoviario: TcxTabSheet
      Caption = 'Rodo&vi'#225'rio'
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 1105
        Height = 56
        Align = alTop
        Shape = bsBottomLine
        ExplicitWidth = 1084
      end
      object lbl27: TLabel
        Left = 2
        Top = 8
        Width = 38
        Height = 13
        Caption = 'RNTRC'
        Transparent = True
      end
      object lbl28: TLabel
        Left = 266
        Top = 8
        Width = 65
        Height = 13
        Caption = 'Prev. Entrega'
        Transparent = True
      end
      object lblcdrpa: TLabel
        Left = 692
        Top = 8
        Width = 22
        Height = 13
        Caption = 'RPA'
        Transparent = True
      end
      object txtcdrpa: TDBText
        Left = 717
        Top = 6
        Width = 113
        Height = 17
        DataField = 'CDRPA'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnDblClick = txtcdrpaDblClick
      end
      object txtNURNTRC: TDBText
        Left = 50
        Top = 6
        Width = 201
        Height = 17
        DataField = 'NURNTRC'
        DataSource = dts
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
      end
      object lbl21: TLabel
        Left = 471
        Top = 8
        Width = 65
        Height = 13
        Caption = 'N'#250'mero CIOT'
        Transparent = True
      end
      object lblnucontrato: TLabel
        Left = 266
        Top = 29
        Width = 55
        Height = 13
        Caption = 'N'#186' Contrato'
        Transparent = True
      end
      object lblnudocumentotransporte: TLabel
        Left = 471
        Top = 29
        Width = 30
        Height = 13
        Caption = 'N'#186' DT'
        Transparent = True
      end
      object grdctetransportadora: TcxGrid
        Left = 0
        Top = 78
        Width = 1105
        Height = 329
        Align = alClient
        TabOrder = 6
        LookAndFeel.NativeStyle = False
        object tbvctetransportadora: TcxGridDBBandedTableView
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
          OnCellDblClick = tbvctetransportadoraCellDblClick
          DataController.DataSource = dtsctetransportadora
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLADIANTAMENTO'
              Column = tbvctetransportadoraVLADIANTAMENTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLDESCONTO'
              Column = tbvctetransportadoraVLDESCONTO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLFRETE'
              Column = tbvctetransportadoraVLFRETE
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLINSS'
              Column = tbvctetransportadoraVLINSS
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLPEDAGIO'
              Column = tbvctetransportadoraVLPEDAGIO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLSALDO'
              Column = tbvctetransportadoraVLSALDO
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLSESTSENAT'
              Column = tbvctetransportadoraVLSESTSENAT
            end
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLIRRF'
              Column = tbvctetransportadoraVLIRRF
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Motorista'
              Width = 346
            end
            item
              Caption = 'Valores'
              Width = 1042
            end
            item
              Caption = 'Observa'#231#227'o'
              Width = 235
            end
            item
              Caption = 'Ve'#237'culo'
              Width = 755
            end>
          object tbvctetransportadoraCDTRANSPORTADORA: TcxGridDBBandedColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CDTRANSPORTADORA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGrid1DBBandedTableView1CDTRANSPORTADORAPropertiesButtonClick
            Styles.Content = cxStyle1
            Width = 85
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvctetransportadoraNMTRANSPORTADORA: TcxGridDBBandedColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NMTRANSPORTADORA'
            Options.Focusing = False
            Width = 247
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLFRETE: TcxGridDBBandedColumn
            Caption = 'Frete'
            DataBinding.FieldName = 'VLFRETE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLPEDAGIO: TcxGridDBBandedColumn
            Caption = 'Ped'#225'gio'
            DataBinding.FieldName = 'VLPEDAGIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLADIANTAMENTO: TcxGridDBBandedColumn
            Caption = 'Adiantamento'
            DataBinding.FieldName = 'VLADIANTAMENTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLINSS: TcxGridDBBandedColumn
            Caption = 'INSS'
            DataBinding.FieldName = 'VLINSS'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLSESTSENAT: TcxGridDBBandedColumn
            Caption = 'SEST/SENAT'
            DataBinding.FieldName = 'VLSESTSENAT'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLDESCONTO: TcxGridDBBandedColumn
            Caption = 'Desconto'
            DataBinding.FieldName = 'VLDESCONTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLSALDO: TcxGridDBBandedColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'VLSALDO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 133
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLFRETEPESO: TcxGridDBBandedColumn
            Caption = 'Frete por Peso'
            DataBinding.FieldName = 'VLFRETEPESO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
            Width = 90
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLACRESCIMO: TcxGridDBBandedColumn
            Caption = 'Acr'#233'scimo'
            DataBinding.FieldName = 'VLACRESCIMO'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvctetransportadoraVLIRRF: TcxGridDBBandedColumn
            Caption = 'IRPF'
            DataBinding.FieldName = 'VLIRRF'
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tbvctetransportadoraNUSEGURADORA: TcxGridDBBandedColumn
            Caption = 'N'#250'mero Seguradora'
            DataBinding.FieldName = 'NUSEGURADORA'
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object tbvctetransportadoraDSOBSERVACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DSOBSERVACAO'
            PropertiesClassName = 'TcxMemoProperties'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object tbvctetransportadoraCDVEICULO: TcxGridDBBandedColumn
            Caption = 'Ve'#237'culo'
            DataBinding.FieldName = 'CDVEICULO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGrid1DBBandedTableView1CDVEICULOPropertiesButtonClick
            Styles.Content = cxStyle1
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object tbvctetransportadoraNUPLACA: TcxGridDBBandedColumn
            Caption = 'Cavalo'
            DataBinding.FieldName = 'NUPLACA'
            Options.Focusing = False
            Width = 74
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object tbvctetransportadoraNUPLACACARRETA: TcxGridDBBandedColumn
            Caption = 'Carreta'
            DataBinding.FieldName = 'NUPLACACARRETA'
            Width = 74
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object tbvctetransportadoraNMPROPRIETARIO: TcxGridDBBandedColumn
            Caption = 'Propriet'#225'rio'
            DataBinding.FieldName = 'NMPROPRIETARIO'
            Options.Focusing = False
            Position.BandIndex = 3
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object tbvctetransportadoraCDVEICULOCARRETA: TcxGridDBBandedColumn
            Caption = 'Carreta'
            DataBinding.FieldName = 'CDVEICULOCARRETA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGrid1DBBandedTableView1CDVEICULOCARRETAPropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object tbvctetransportadoraCDVEICULOCARRETA2: TcxGridDBBandedColumn
            Caption = 'Carreta 2'
            DataBinding.FieldName = 'CDVEICULOCARRETA2'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grdctetransportadoraDBBandedTableView1CDVEICULOCARRETA2PropertiesButtonClick
            Styles.Content = dtmmain.cxStyle1
            Width = 74
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object tbvctetransportadoraNUPLACACARRETA2: TcxGridDBBandedColumn
            Caption = 'Carreta 2'
            DataBinding.FieldName = 'NUPLACACARRETA2'
            Width = 74
            Position.BandIndex = 3
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object lvlctetransportadora: TcxGridLevel
          GridView = tbvctetransportadora
        end
      end
      object edtprevisaoentrega: TcxDBDateEdit
        Left = 335
        Top = 3
        DataBinding.DataField = 'DTPREVISAOENTREGA'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorEnter
        OnExit = colorExit
        Width = 135
      end
      object chkboindicadorlotacao: TcxDBCheckBox
        Left = 2
        Top = 26
        Caption = 'Indicador Lota'#231#227'o'
        DataBinding.DataField = 'BOINDICADORLOTACAO'
        DataBinding.DataSource = dts
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Transparent = True
        OnEnter = colorEnter
        OnExit = colorExit
      end
      object btneditarrpa: TcxButton
        Left = 692
        Top = 25
        Width = 93
        Height = 25
        Action = acteditarrpa
        LookAndFeel.NativeStyle = False
        TabOrder = 5
      end
      object bdcrodoviario: TdxBarDockControl
        Left = 0
        Top = 56
        Width = 1105
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
      object edtnuciot: TcxDBTextEdit
        Left = 539
        Top = 3
        DataBinding.DataField = 'NUCIOT'
        DataBinding.DataSource = dts
        TabOrder = 1
        OnEnter = colorEnter
        OnExit = colorExit
        Width = 135
      end
      object edtnucontrato: TcxDBTextEdit
        Left = 335
        Top = 24
        DataBinding.DataField = 'NUCONTRATO'
        DataBinding.DataSource = dts
        TabOrder = 3
        OnEnter = colorEnter
        OnExit = colorExit
        OnKeyPress = edtnucontratoKeyPress
        Width = 135
      end
      object edtnudocumentotransporte: TcxDBTextEdit
        Left = 539
        Top = 24
        DataBinding.DataField = 'NUDOCUMENTOTRANSPORTE'
        DataBinding.DataSource = dts
        TabOrder = 4
        OnEnter = colorEnter
        OnExit = colorExit
        Width = 135
      end
    end
    object tbsobservacao: TcxTabSheet
      Caption = '&Observa'#231#227'o'
      object memdsobservacao: TcxDBMemo
        Left = 0
        Top = 22
        Align = alClient
        DataBinding.DataField = 'DSOBSERVACAO'
        DataBinding.DataSource = dts
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnEnter = colorEnter
        OnExit = colorExit
        Height = 385
        Width = 1105
      end
      object bdcobservacao: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1105
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
    end
    object tbscartacorrecao: TcxTabSheet
      Caption = 'Carta C&orre'#231#227'o'
      object grdcartacorrecao: TcxGrid
        Left = 0
        Top = 22
        Width = 1105
        Height = 185
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvcartacorrecao: TcxGridDBTableView
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
          DataController.DataSource = dtscartacorrecao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object tbvcartacorrecaoNSEQEVENTO: TcxGridDBColumn
            Caption = 'Sequ'#234'ncia'
            DataBinding.FieldName = 'NSEQEVENTO'
            Width = 60
          end
          object tbvcartacorrecaoTSEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'TSEMISSAO'
            Width = 101
          end
          object tbvcartacorrecaoNUPROTOCOLO: TcxGridDBColumn
            Caption = 'Protocolo'
            DataBinding.FieldName = 'NUPROTOCOLO'
          end
          object tbvcartacorrecaoDSXML: TcxGridDBColumn
            Caption = 'XML'
            DataBinding.FieldName = 'DSXML'
          end
        end
        object lvlcartacorrecao: TcxGridLevel
          GridView = tbvcartacorrecao
        end
      end
      object grditcartacorrecaocte: TcxGrid
        Left = 0
        Top = 207
        Width = 1105
        Height = 200
        Align = alBottom
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbvitcartacorrecaocte: TcxGridDBTableView
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
          DataController.DataSource = dtsitcartacorrecaocte
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object tbvitcartacorrecaocteCDCARTACORRECAOCTEGRUPO: TcxGridDBColumn
            Caption = 'Grupo'
            DataBinding.FieldName = 'CDCARTACORRECAOCTEGRUPO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDCARTACORRECAOCTEGRUPO'
            Properties.ListColumns = <
              item
                FieldName = 'NMCARTACORRECAOCTEGRUPO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 150
          end
          object tbvitcartacorrecaocteCDCARTACORRECAOCTEITEM: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'CDCARTACORRECAOCTEITEM'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDCARTACORRECAOCTEITEM'
            Properties.ListColumns = <
              item
                FieldName = 'NMCARTACORRECAOCTEITEM'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 150
          end
          object tbvitcartacorrecaocteDSITCARTACORRECAOCTE: TcxGridDBColumn
            Caption = 'Altera'#231#227'o'
            DataBinding.FieldName = 'DSITCARTACORRECAOCTE'
            Width = 400
          end
          object tbvitcartacorrecaocteNUITEM: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'NUITEM'
          end
        end
        object lvlitcartacorrecaocte: TcxGridLevel
          GridView = tbvitcartacorrecaocte
        end
      end
      object bdccarta: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1105
        Height = 22
        Align = dalTop
        BarManager = bmg1
      end
    end
    object tbsseguro: TcxTabSheet
      Caption = 'Seguro &Carga'
      object grdcteinformacaoseguro: TcxGrid
        Left = 0
        Top = 0
        Width = 1105
        Height = 407
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvcteinformacaoseguro: TcxGridDBTableView
          OnKeyDown = exportarGradeExcel
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = True
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
          DataController.DataSource = dtscteinformacaoseguro
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'R$ ,0.00;-R$ ,0.00'
              Kind = skSum
              FieldName = 'VLCARGA'
              Column = tbvcteinformacaoseguroVLCARGA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object tbvcteinformacaoseguroCDTPCTERESPONSAVELSEGURO: TcxGridDBColumn
            Caption = 'Respons'#225'vel'
            DataBinding.FieldName = 'CDTPCTERESPONSAVELSEGURO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDTPCTERESPONSAVELSEGURO'
            Properties.ListColumns = <
              item
                FieldName = 'NMTPCTERESPONSAVELSEGURO'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 180
          end
          object tbvcteinformacaoseguroCDFORNECEDOR: TcxGridDBColumn
            Caption = 'Seguradora'
            DataBinding.FieldName = 'CDFORNECEDOR'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CDFORNECEDOR'
            Properties.ListColumns = <
              item
                FieldName = 'NMFORNECEDOR'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 250
          end
          object tbvcteinformacaoseguroNUAPOLICE: TcxGridDBColumn
            Caption = 'N'#186' Ap'#243'lice'
            DataBinding.FieldName = 'NUAPOLICE'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object tbvcteinformacaoseguroNUAVERBACAO: TcxGridDBColumn
            Caption = 'N'#186' Averba'#231#227'o'
            DataBinding.FieldName = 'NUAVERBACAO'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          object tbvcteinformacaoseguroVLCARGA: TcxGridDBColumn
            Caption = 'Valor Carga'
            DataBinding.FieldName = 'VLCARGA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          end
        end
        object lvlcteinformacaoseguro: TcxGridLevel
          GridView = tbvcteinformacaoseguro
        end
      end
    end
    object tbsdocumentoanterior: TcxTabSheet
      Caption = 'Documento &Anterior'
      object grdctedocumentoanterior: TcxGrid
        Left = 0
        Top = 0
        Width = 1105
        Height = 137
        Align = alTop
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object tbvctedocumentoanterior: TcxGridDBTableView
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
          DataController.DataSource = dtsctedocumentoanterior
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          object tbvctedocumentoanteriorCDCLIENTE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CDCLIENTE'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = grdctedocumentoanteriorDBTableView1CDCLIENTEPropertiesButtonClick
            Width = 147
          end
          object tbvctedocumentoanteriorRZSOCIAL: TcxGridDBColumn
            Caption = 'Raz'#227'o Social'
            DataBinding.FieldName = 'RZSOCIAL'
            Options.Focusing = False
          end
        end
        object lvlctedocumentoanterior: TcxGridLevel
          GridView = tbvctedocumentoanterior
        end
      end
      object grditctedocumentoanterior: TcxGrid
        Left = 0
        Top = 145
        Width = 1105
        Height = 262
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object tbvitctedocumentoanterior: TcxGridDBTableView
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
          DataController.DataSource = dtsitctedocumentoanterior
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.GroupByBox = False
          object tbvitctedocumentoanteriorNUCTETPDOCUMENTOANTERIOR: TcxGridDBColumn
            Caption = 'Tipo Documento'
            DataBinding.FieldName = 'NUCTETPDOCUMENTOANTERIOR'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'NUCTETPDOCUMENTOANTERIOR'
            Properties.ListColumns = <
              item
                FieldName = 'NMCTETPDOCUMENTOANTERIOR'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 200
          end
          object tbvitctedocumentoanteriorNUSERIE: TcxGridDBColumn
            Caption = 'S'#233'rie'
            DataBinding.FieldName = 'NUSERIE'
            Width = 40
          end
          object tbvitctedocumentoanteriorNUSUBSERIE: TcxGridDBColumn
            Caption = 'Sub S'#233'rie'
            DataBinding.FieldName = 'NUSUBSERIE'
            Width = 60
          end
          object tbvitctedocumentoanteriorNUDOCUMENTO: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'NUDOCUMENTO'
          end
          object tbvitctedocumentoanteriorDTEMISSAO: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DTEMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object tbvitctedocumentoanteriorNUCHAVE: TcxGridDBColumn
            Caption = 'Chave CTE'
            DataBinding.FieldName = 'NUCHAVE'
          end
        end
        object lvlitctedocumentoanterior: TcxGridLevel
          GridView = tbvitctedocumentoanterior
        end
      end
      object spl1: TcxSplitter
        Left = 0
        Top = 137
        Width = 1105
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salTop
        Control = grdctedocumentoanterior
      end
    end
  end
  object act: TActionList
    Images = dtmmain.imlMain
    OnExecute = actExecute
    Left = 352
    Top = 124
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
    object actgerar: TAction
      Caption = 'Gerar'
      OnExecute = actgerarExecute
    end
    object actvalidar: TAction
      Caption = 'Validar'
      Enabled = False
      OnExecute = actvalidarExecute
    end
    object actenviar: TAction
      Caption = 'Enviar'
      Enabled = False
      OnExecute = actenviarExecute
    end
    object actconsultar: TAction
      Caption = 'Consultar'
      OnExecute = actconsultarExecute
    end
    object actcte: TAction
      Caption = 'CT-e'
      OnExecute = actcteExecute
    end
    object actstatus: TAction
      Caption = 'Status Servi'#231'o'
      OnExecute = actstatusExecute
    end
    object actgerarpdf: TAction
      Caption = 'Gerar PDF'
      Enabled = False
      ImageIndex = 145
      OnExecute = actgerarpdfExecute
    end
    object actexportarxml: TAction
      Caption = 'Exportar XML'
      Enabled = False
      OnExecute = actexportarxmlExecute
    end
    object actenviaremail: TAction
      Caption = 'Enviar E-mail'
      Enabled = False
      ImageIndex = 146
      OnExecute = actenviaremailExecute
    end
    object actadicionarnota: TAction
      Caption = 'Adicionar Nota'
      ImageIndex = 136
      OnExecute = actadicionarnotaExecute
    end
    object actadicionarvalor: TAction
      Caption = 'Adicionar Nota'
      Visible = False
      OnExecute = actadicionarvalorExecute
    end
    object actcancelarcte: TAction
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 142
      OnExecute = actcancelarcteExecute
    end
    object actinutilizar: TAction
      Caption = 'Inutilizar'
      OnExecute = actinutilizarExecute
    end
    object actemaildestinatario: TAction
      Caption = 'E-mail Destinat'#225'rio'
      Enabled = False
      ImageIndex = 146
      OnExecute = actemaildestinatarioExecute
    end
    object actemailremetente: TAction
      Caption = 'E-mail Remetente'
      Enabled = False
      ImageIndex = 146
      OnExecute = actemailremetenteExecute
    end
    object actrpa: TAction
      Caption = '326 - RPA'
      Enabled = False
      ImageIndex = 3
      OnExecute = actrpaExecute
    end
    object actabrirduplicata: TAction
      Hint = 'duplicata'
      OnExecute = actabrirduplicataExecute
    end
    object actabrirremetente: TAction
      Hint = 'cliente'
      OnExecute = actabrirremetenteExecute
    end
    object actabrirdestinatario: TAction
      Hint = 'cliente'
      OnExecute = actabrirdestinatarioExecute
    end
    object actabrirtomador: TAction
      Hint = 'cliente'
      OnExecute = actabrirtomadorExecute
    end
    object actabrirexpedidor: TAction
      Hint = 'cliente'
      OnExecute = actabrirexpedidorExecute
    end
    object actabrirrecebedor: TAction
      Hint = 'cliente'
      OnExecute = actabrirrecebedorExecute
    end
    object actabrirveiculo: TAction
      Hint = 'veiculo'
      OnExecute = actabrirveiculoExecute
    end
    object actadicionarduplicata: TAction
      Caption = 'Adicionar Contas a Receber'
      ImageIndex = 136
      OnExecute = actadicionarduplicataExecute
    end
    object actimportaxml: TAction
      Caption = 'Importar XML'
      Enabled = False
      OnExecute = actimportaxmlExecute
    end
    object actconsultasalvar: TAction
      Caption = 'Consulta e Salvar XML'
      OnExecute = actconsultasalvarExecute
    end
    object actcartacorrecao: TAction
      Caption = 'Carta Corre'#231#227'o'
      OnExecute = actcartacorrecaoExecute
    end
    object actadicionarrodoviario: TAction
      Caption = 'Adicionar Inf Rodovi'#225'rio'
      ImageIndex = 136
      OnExecute = actadicionarrodoviarioExecute
    end
    object acteditarrpa: TAction
      Caption = 'Editar RPA'
      OnExecute = acteditarrpaExecute
    end
    object actabrirveiculo2: TAction
      Hint = 'veiculo'
      OnExecute = actabrirveiculo2Execute
    end
    object actabrirtransportadora: TAction
      Hint = 'transportadora'
      OnExecute = actabrirtransportadoraExecute
    end
    object actgerarautpagto: TAction
      Caption = 'Gerar Contas a Pagar'
      Enabled = False
      ImageIndex = 31
      OnExecute = actgerarautpagtoExecute
    end
    object actbaixar: TAction
      Caption = 'Baixar'
      Enabled = False
      ImageIndex = 22
      OnExecute = actbaixarExecute
    end
    object actgerarduplicata: TAction
      Caption = 'Gerar parcelas'
      ImageIndex = 32
      Visible = False
      OnExecute = actgerarduplicataExecute
    end
    object actabrirrpa: TAction
      Hint = 'rpa'
      OnExecute = actabrirrpaExecute
    end
    object actconfigurar: TAction
      Caption = 'Configurar'
      OnExecute = actconfigurarExecute
    end
    object actexportaxmlemissor: TAction
      Caption = 'Exportar XML Emissor'
      OnExecute = actexportaxmlemissorExecute
    end
    object actredefinir: TAction
      Caption = 'Redefinir'
      OnExecute = actredefinirExecute
    end
    object actcopiar: TAction
      Caption = 'Copiar'
      Enabled = False
      ImageIndex = 100
      OnExecute = actcopiarExecute
    end
    object actenviaremailcartacorrecao: TAction
      Caption = 'Enviar email'
      OnExecute = actenviaremailcartacorrecaoExecute
    end
    object actimprimircarta: TAction
      Caption = 'Imprimir'
      ImageIndex = 3
      OnExecute = actimprimircartaExecute
    end
    object actexportarcartapdf: TAction
      ImageIndex = 145
      OnExecute = actexportarcartapdfExecute
    end
    object actgerarmdfe: TAction
      Caption = 'Gerar MDFE'
      OnExecute = actgerarmdfeExecute
    end
    object actexportarxmlcancelado: TAction
      Caption = 'Exportar XML cancelado'
      OnExecute = actexportarxmlcanceladoExecute
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
    Left = 324
    Top = 124
    DockControlHeights = (
      0
      0
      67
      0)
    object dxbrManager1Bar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'CTE'
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
          ItemName = 'btn1'
        end
        item
          Visible = True
          ItemName = 'btn4'
        end
        item
          Visible = True
          ItemName = 'btn3'
        end
        item
          Visible = True
          ItemName = 'btncte'
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
    object bmgobservacao: TdxBar
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = 'observacao'
      CaptionButtons = <>
      DockControl = bdcobservacao
      DockedDockControl = bdcobservacao
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 240
      FloatTop = 167
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end>
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
      Caption = 'rpa'
      CaptionButtons = <>
      DockControl = bdcrodoviario
      DockedDockControl = bdcrodoviario
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 205
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
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
      Caption = 'carta'
      CaptionButtons = <>
      DockControl = bdccarta
      DockedDockControl = bdccarta
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1067
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
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
    object btn1: TdxBarLargeButton
      Action = actImprimir
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object btncte: TdxBarLargeButton
      Action = actcte
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pm1
    end
    object dxBarButton1: TdxBarButton
      Action = actgerar
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actvalidar
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actenviar
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actconsultar
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = actstatus
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actgerarpdf
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actexportarxml
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actenviaremail
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actadicionarnota
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton
      Action = actemaildestinatario
      Category = 0
    end
    object btn3: TdxBarLargeButton
      Action = actrpa
      Category = 0
    end
    object btn4: TdxBarLargeButton
      Action = actcancelarcte
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = actinutilizar
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = actadicionarduplicata
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton13: TdxBarButton
      Action = actemailremetente
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = actimportaxml
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = actconsultasalvar
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = actcartacorrecao
      Category = 0
    end
    object dxBarButton17: TdxBarButton
      Action = actadicionarrodoviario
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton18: TdxBarButton
      Action = actgerarautpagto
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton19: TdxBarButton
      Action = actbaixar
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton20: TdxBarButton
      Action = actconfigurar
      Category = 0
    end
    object dxBarButton21: TdxBarButton
      Action = actexportaxmlemissor
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actcopiar
      Category = 0
    end
    object dxBarButton22: TdxBarButton
      Action = actenviaremailcartacorrecao
      Category = 0
    end
    object dxBarButton23: TdxBarButton
      Action = actimprimircarta
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = actexportarcartapdf
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = actgerarmdfe
      Category = 0
    end
  end
  object sds: TSQLDataSet
    CommandText = 
      'SELECT C.*'#13#10',F.NMCFOP'#13#10',T.NMCLIENTE NMTOMADOR'#13#10',R.NMCLIENTE NMRE' +
      'METENTE'#13#10',D.NMCLIENTE NMDESTINATARIO'#13#10',E.NMCLIENTE NMEXPEDIDOR'#13#10 +
      ',B.NMCLIENTE NMRECEBEDOR'#13#10',P.NMPRODUTO'#13#10',I.CDRPA'#13#10'FROM CTE C'#13#10'LE' +
      'FT JOIN ITRPA I ON I.CDCTE=C.CDCTE AND C.CDEMPRESA=I.CDEMPRESA'#13#10 +
      'LEFT JOIN CFOP F ON F.CDCFOP=C.CDCFOP'#13#10'LEFT JOIN PRODUTO P ON P.' +
      'CDPRODUTO=C.CDPRODUTO AND P.CDEMPRESA=C.CDEMPRESA'#13#10'LEFT JOIN CLI' +
      'ENTE R ON R.CDCLIENTE=C.CDREMETENTE AND R.CDEMPRESA=C.CDEMPRESA'#13 +
      #10'LEFT JOIN CLIENTE D ON D.CDCLIENTE=C.CDDESTINATARIO AND D.CDEMP' +
      'RESA=C.CDEMPRESA'#13#10'LEFT JOIN CLIENTE E ON E.CDCLIENTE=C.CDEXPEDID' +
      'OR AND E.CDEMPRESA=C.CDEMPRESA'#13#10'LEFT JOIN CLIENTE B ON B.CDCLIEN' +
      'TE=C.CDRECEBEDOR AND B.CDEMPRESA=C.CDEMPRESA'#13#10'LEFT JOIN CLIENTE ' +
      'T ON T.CDCLIENTE=C.CDTOMADOR AND T.CDEMPRESA=C.CDEMPRESA'#13#10'WHERE ' +
      'C.CDEMPRESA=:CDEMPRESA AND C.CDCTE=:CDCTE'
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
        Name = 'CDCTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 830
    Top = 436
    object sdsCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object sdsCDMUNICIPIOEMISSAO: TIntegerField
      FieldName = 'CDMUNICIPIOEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMUNICIPIOTERMINO: TIntegerField
      FieldName = 'CDMUNICIPIOTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDMUNICIPIOINICIO: TIntegerField
      FieldName = 'CDMUNICIPIOINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUFTERMINO: TIntegerField
      FieldName = 'CDUFTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUFINICIO: TIntegerField
      FieldName = 'CDUFINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDUFEMISSAO: TIntegerField
      FieldName = 'CDUFEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTEFORMAIMPRESSAO: TIntegerField
      FieldName = 'CDCTEFORMAIMPRESSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTEFORMAEMISSAO: TIntegerField
      FieldName = 'CDCTEFORMAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTEFORMAPAGAMENTO: TIntegerField
      FieldName = 'CDCTEFORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTETPSERVICO: TIntegerField
      FieldName = 'CDCTETPSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTEMODAL: TIntegerField
      FieldName = 'CDCTEMODAL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTETPTOMADOR: TIntegerField
      FieldName = 'CDCTETPTOMADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTETPPREVISAOENTREGA: TIntegerField
      FieldName = 'CDCTETPPREVISAOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTETPPREVISAOENTREGAH: TIntegerField
      FieldName = 'CDCTETPPREVISAOENTREGAH'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDCTETPREMETENTEINFORMACAO: TIntegerField
      FieldName = 'CDCTETPREMETENTEINFORMACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTPCTE: TIntegerField
      FieldName = 'CDTPCTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDSTCTE: TIntegerField
      FieldName = 'CDSTCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
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
    object sdsNUCHAVENFEREFERENCIADO: TStringField
      FieldName = 'NUCHAVENFEREFERENCIADO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdsBOREMETENTE: TStringField
      FieldName = 'BOREMETENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsDTPREVISAOI: TDateField
      FieldName = 'DTPREVISAOI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRPREVISAOI: TTimeField
      FieldName = 'HRPREVISAOI'
      ProviderFlags = [pfInUpdate]
    end
    object sdsHRPREVISAOF: TTimeField
      FieldName = 'HRPREVISAOF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLRECEBER: TFMTBCDField
      FieldName = 'VLRECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsALREDICMS: TFloatField
      FieldName = 'ALREDICMS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLCREDITOOUTOGARDO: TFMTBCDField
      FieldName = 'VLCREDITOOUTOGARDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLMERCADORIA: TFMTBCDField
      FieldName = 'VLMERCADORIA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsBOINDICADORLOTACAO: TStringField
      FieldName = 'BOINDICADORLOTACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsDTPREVISAOENTREGA: TDateField
      FieldName = 'DTPREVISAOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCTE: TIntegerField
      FieldName = 'NUCTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSOBSERVACAOFISCAL: TBlobField
      FieldName = 'DSOBSERVACAOFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNURNTRC: TStringField
      FieldName = 'NURNTRC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsCDSERIE: TIntegerField
      FieldName = 'CDSERIE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdsDSOUTRASCARACTERISTICAS: TStringField
      FieldName = 'DSOUTRASCARACTERISTICAS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsCDCTETPINFORMACAOREMETENTE: TIntegerField
      FieldName = 'CDCTETPINFORMACAOREMETENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMCFOP: TStringField
      FieldName = 'NMCFOP'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMREMETENTE: TStringField
      FieldName = 'NMREMETENTE'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMDESTINATARIO: TStringField
      FieldName = 'NMDESTINATARIO'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMEXPEDIDOR: TStringField
      FieldName = 'NMEXPEDIDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMRECEBEDOR: TStringField
      FieldName = 'NMRECEBEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object sdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNMTOMADOR: TStringField
      FieldName = 'NMTOMADOR'
      ProviderFlags = []
      Size = 100
    end
    object sdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTSCONTINGENCIA: TSQLTimeStampField
      FieldName = 'TSCONTINGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSCONTINGENCIA: TStringField
      FieldName = 'DSCONTINGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sdsNUSTDOCUMENTO: TStringField
      FieldName = 'NUSTDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsCDITCONTCLIENTE: TIntegerField
      FieldName = 'CDITCONTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUKMVIAGEM: TFloatField
      FieldName = 'NUKMVIAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUKMDIA: TFloatField
      FieldName = 'NUKMDIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDIASENTREGA: TIntegerField
      FieldName = 'NUDIASENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDSXMLCANCEL: TBlobField
      FieldName = 'DSXMLCANCEL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsDTPREVISAOF: TDateField
      FieldName = 'DTPREVISAOF'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDRPA: TIntegerField
      FieldName = 'CDRPA'
      ProviderFlags = []
    end
    object sdsNUPROTOCOLO: TStringField
      FieldName = 'NUPROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsNUCONTRATO: TStringField
      FieldName = 'NUCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUDOCUMENTOTRANSPORTE: TStringField
      FieldName = 'NUDOCUMENTOTRANSPORTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCHAVECTEANULACAO: TStringField
      FieldName = 'NUCHAVECTEANULACAO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdsDTEMISSAOCTEANULACAO: TDateField
      FieldName = 'DTEMISSAOCTEANULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsVLADVALOREM: TFMTBCDField
      FieldName = 'VLADVALOREM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsVLOUTRO: TFMTBCDField
      FieldName = 'VLOUTRO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsVLPEDAGIO: TFMTBCDField
      FieldName = 'VLPEDAGIO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsPRADVALOREM: TFloatField
      FieldName = 'PRADVALOREM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTPTOMADORICMS: TStringField
      FieldName = 'TPTOMADORICMS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBOIMPRESSAORPA: TStringField
      FieldName = 'BOIMPRESSAORPA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCDREMETENTE: TLargeintField
      FieldName = 'CDREMETENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDTOMADOR: TLargeintField
      FieldName = 'CDTOMADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDEXPEDIDOR: TLargeintField
      FieldName = 'CDEXPEDIDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDRECEBEDOR: TLargeintField
      FieldName = 'CDRECEBEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDDESTINATARIO: TLargeintField
      FieldName = 'CDDESTINATARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsCDDESTINATARIODIFERENTE: TLargeintField
      FieldName = 'CDDESTINATARIODIFERENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNUCIOT: TLargeintField
      FieldName = 'NUCIOT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsVLICMSSERVICO: TFMTBCDField
      FieldName = 'VLICMSSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsCDCTEFINALIDADEEMISSAO: TStringField
      FieldName = 'CDCTEFINALIDADEEMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspUpdateError
    BeforeUpdateRecord = dspBeforeUpdateRecord
    Left = 858
    Top = 436
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    BeforePost = cdsBeforePost
    AfterScroll = cdsAfterScroll
    OnNewRecord = cdsNewRecord
    Left = 886
    Top = 436
    object cdsCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object cdsCDMUNICIPIOEMISSAO: TIntegerField
      FieldName = 'CDMUNICIPIOEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMUNICIPIOTERMINO: TIntegerField
      FieldName = 'CDMUNICIPIOTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDMUNICIPIOINICIO: TIntegerField
      FieldName = 'CDMUNICIPIOINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUFTERMINO: TIntegerField
      FieldName = 'CDUFTERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUFINICIO: TIntegerField
      FieldName = 'CDUFINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDUFEMISSAO: TIntegerField
      FieldName = 'CDUFEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCTEFORMAIMPRESSAO: TIntegerField
      FieldName = 'CDCTEFORMAIMPRESSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCTEFORMAEMISSAO: TIntegerField
      FieldName = 'CDCTEFORMAEMISSAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCTEFORMAEMISSAOValidate
    end
    object cdsCDCTEFORMAPAGAMENTO: TIntegerField
      FieldName = 'CDCTEFORMAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCTETPSERVICO: TIntegerField
      FieldName = 'CDCTETPSERVICO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCTETPSERVICOValidate
    end
    object cdsCDCTEMODAL: TIntegerField
      FieldName = 'CDCTEMODAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCTETPTOMADOR: TIntegerField
      FieldName = 'CDCTETPTOMADOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCTETPTOMADORValidate
    end
    object cdsCDCTETPPREVISAOENTREGA: TIntegerField
      FieldName = 'CDCTETPPREVISAOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCTETPPREVISAOENTREGAH: TIntegerField
      FieldName = 'CDCTETPPREVISAOENTREGAH'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCTETPREMETENTEINFORMACAO: TIntegerField
      FieldName = 'CDCTETPREMETENTEINFORMACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDPRODUTOValidate
    end
    object cdsCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCTE: TIntegerField
      FieldName = 'CDTPCTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDSTCTE: TIntegerField
      FieldName = 'CDSTCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsCDSTCTEValidate
    end
    object cdsCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCFOPValidate
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
    object cdsNUCHAVENFEREFERENCIADO: TStringField
      FieldName = 'NUCHAVENFEREFERENCIADO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsBOREMETENTE: TStringField
      FieldName = 'BOREMETENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDTPREVISAOI: TDateField
      FieldName = 'DTPREVISAOI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRPREVISAOI: TTimeField
      FieldName = 'HRPREVISAOI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHRPREVISAOF: TTimeField
      FieldName = 'HRPREVISAOF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLRECEBER: TFMTBCDField
      FieldName = 'VLRECEBER'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLRECEBERValidate
      Precision = 15
      Size = 2
    end
    object cdsVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsALICMSValidate
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '$ ###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsALICMS: TFloatField
      FieldName = 'ALICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsALICMSValidate
    end
    object cdsALREDICMS: TFloatField
      FieldName = 'ALREDICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLCREDITOOUTOGARDO: TFMTBCDField
      FieldName = 'VLCREDITOOUTOGARDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLMERCADORIA: TFMTBCDField
      FieldName = 'VLMERCADORIA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsVLMERCADORIAValidate
      Precision = 15
      Size = 2
    end
    object cdsBOINDICADORLOTACAO: TStringField
      FieldName = 'BOINDICADORLOTACAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsBOINDICADORLOTACAOValidate
      FixedChar = True
      Size = 1
    end
    object cdsDTPREVISAOENTREGA: TDateField
      FieldName = 'DTPREVISAOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCTE: TIntegerField
      FieldName = 'NUCTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSOBSERVACAOFISCAL: TBlobField
      FieldName = 'DSOBSERVACAOFISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNURNTRC: TStringField
      FieldName = 'NURNTRC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsCDSERIE: TIntegerField
      FieldName = 'CDSERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsDSOUTRASCARACTERISTICAS: TStringField
      FieldName = 'DSOUTRASCARACTERISTICAS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCDCTETPINFORMACAOREMETENTE: TIntegerField
      FieldName = 'CDCTETPINFORMACAOREMETENTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCTETPINFORMACAOREMETENTEValidate
    end
    object cdsNMCFOP: TStringField
      FieldName = 'NMCFOP'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMREMETENTE: TStringField
      FieldName = 'NMREMETENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMDESTINATARIO: TStringField
      FieldName = 'NMDESTINATARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMEXPEDIDOR: TStringField
      FieldName = 'NMEXPEDIDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMRECEBEDOR: TStringField
      FieldName = 'NMRECEBEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNMPRODUTO: TStringField
      FieldName = 'NMPRODUTO'
      ProviderFlags = []
      Size = 250
    end
    object cdssdscteremetentenota: TDataSetField
      FieldName = 'sdscteremetentenota'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsctetransportadora: TDataSetField
      FieldName = 'sdsctetransportadora'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdscteqtdcarga: TDataSetField
      FieldName = 'sdscteqtdcarga'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDCONDPAGTO: TIntegerField
      FieldName = 'CDCONDPAGTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCONDPAGTOValidate
    end
    object cdsNMTOMADOR: TStringField
      FieldName = 'NMTOMADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdssdsduplicata: TDataSetField
      FieldName = 'sdsduplicata'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTPCOBRANCAValidate
    end
    object cdsDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUSTICMS: TStringField
      FieldName = 'NUSTICMS'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsNUSTICMSValidate
      FixedChar = True
      Size = 3
    end
    object cdsVLPIS: TFMTBCDField
      FieldName = 'VLPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLCOFINS: TFMTBCDField
      FieldName = 'VLCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASECOFINS: TFMTBCDField
      FieldName = 'VLBASECOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVLBASEPIS: TFMTBCDField
      FieldName = 'VLBASEPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsALPIS: TFloatField
      FieldName = 'ALPIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsALCOFINS: TFloatField
      FieldName = 'ALCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTSCONTINGENCIA: TSQLTimeStampField
      FieldName = 'TSCONTINGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSCONTINGENCIA: TStringField
      FieldName = 'DSCONTINGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsNUSTDOCUMENTO: TStringField
      FieldName = 'NUSTDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsCDITCONTCLIENTE: TIntegerField
      FieldName = 'CDITCONTCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUKMVIAGEM: TFloatField
      FieldName = 'NUKMVIAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUKMDIA: TFloatField
      FieldName = 'NUKMDIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDIASENTREGA: TIntegerField
      FieldName = 'NUDIASENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDSXMLCANCEL: TBlobField
      FieldName = 'DSXMLCANCEL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdssdscartacorrecao: TDataSetField
      FieldName = 'sdscartacorrecao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDTPREVISAOF: TDateField
      FieldName = 'DTPREVISAOF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCDRPA: TIntegerField
      FieldName = 'CDRPA'
      ProviderFlags = []
    end
    object cdssdscteinformacaoseguro: TDataSetField
      FieldName = 'sdscteinformacaoseguro'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUPROTOCOLO: TStringField
      FieldName = 'NUPROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNUCONTRATO: TStringField
      FieldName = 'NUCONTRATO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUDOCUMENTOTRANSPORTE: TStringField
      FieldName = 'NUDOCUMENTOTRANSPORTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdssdsctedocumentoanterior: TDataSetField
      FieldName = 'sdsctedocumentoanterior'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCHAVECTEANULACAO: TStringField
      FieldName = 'NUCHAVECTEANULACAO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsDTEMISSAOCTEANULACAO: TDateField
      FieldName = 'DTEMISSAOCTEANULACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlservico
      Precision = 18
      Size = 2
    end
    object cdsVLADVALOREM: TFMTBCDField
      FieldName = 'VLADVALOREM'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlservico
      Precision = 18
      Size = 2
    end
    object cdsVLOUTRO: TFMTBCDField
      FieldName = 'VLOUTRO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlservico
      Precision = 18
      Size = 2
    end
    object cdsVLPEDAGIO: TFMTBCDField
      FieldName = 'VLPEDAGIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_vlservico
      Precision = 18
      Size = 2
    end
    object cdsPRADVALOREM: TFloatField
      FieldName = 'PRADVALOREM'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsPRADVALOREMValidate
    end
    object cdsTPTOMADORICMS: TStringField
      FieldName = 'TPTOMADORICMS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBOIMPRESSAORPA: TStringField
      FieldName = 'BOIMPRESSAORPA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsDSJUSTIFICATIVA: TBlobField
      FieldName = 'DSJUSTIFICATIVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNUPLCONTA: TStringField
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCDTPFRETE: TStringField
      FieldName = 'CDTPFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCDREMETENTE: TLargeintField
      FieldName = 'CDREMETENTE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDREMETENTEValidate
    end
    object cdsCDTOMADOR: TLargeintField
      FieldName = 'CDTOMADOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDTOMADORValidate
    end
    object cdsCDEXPEDIDOR: TLargeintField
      FieldName = 'CDEXPEDIDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDEXPEDIDORValidate
    end
    object cdsCDRECEBEDOR: TLargeintField
      FieldName = 'CDRECEBEDOR'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDRECEBEDORValidate
    end
    object cdsCDDESTINATARIO: TLargeintField
      FieldName = 'CDDESTINATARIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDDESTINATARIOValidate
    end
    object cdsCDDESTINATARIODIFERENTE: TLargeintField
      FieldName = 'CDDESTINATARIODIFERENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNUCIOT: TLargeintField
      FieldName = 'NUCIOT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsVLICMSSERVICO: TFMTBCDField
      FieldName = 'VLICMSSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsCDCTEFINALIDADEEMISSAO: TStringField
      FieldName = 'CDCTEFINALIDADEEMISSAO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsCDCTEFINALIDADEEMISSAOValidate
      Size = 1
    end
  end
  object dts: TDataSource
    DataSet = cds
    OnStateChange = dtsStateChange
    Left = 874
    Top = 4
  end
  object dts1: TDataSource
    DataSet = sds
    OnStateChange = dtsStateChange
    Left = 902
    Top = 4
  end
  object sdscteqtdcarga: TSQLDataSet
    CommandText = 
      'SELECT * FROM CTEQTDCARGA WHERE CDEMPRESA=:CDEMPRESA AND CDCTE=:' +
      'CDCTE'
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
        Name = 'CDCTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 838
    Top = 488
    object sdscteqtdcargaCDCTEQTDCARGA: TIntegerField
      FieldName = 'CDCTEQTDCARGA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdscteqtdcargaCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteqtdcargaCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteqtdcargaCDCTETPMEDIDA: TIntegerField
      FieldName = 'CDCTETPMEDIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteqtdcargaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteqtdcargaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteqtdcargaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteqtdcargaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteqtdcargaQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteqtdcargaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteqtdcargaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteqtdcargaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdscteqtdcarga: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdscteqtdcarga
    Params = <>
    BeforePost = cdscteqtdcargaBeforePost
    OnNewRecord = cdscteqtdcargaNewRecord
    Left = 894
    Top = 488
    object cdscteqtdcargaCDCTEQTDCARGA: TIntegerField
      FieldName = 'CDCTEQTDCARGA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscteqtdcargaCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteqtdcargaCDUNIDADE: TIntegerField
      FieldName = 'CDUNIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteqtdcargaCDCTETPMEDIDA: TIntegerField
      FieldName = 'CDCTETPMEDIDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteqtdcargaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteqtdcargaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteqtdcargaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteqtdcargaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteqtdcargaQTITEM: TFloatField
      FieldName = 'QTITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdscteqtdcargaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteqtdcargaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteqtdcargaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtscteqtdcarga: TDataSource
    DataSet = cdscteqtdcarga
    Left = 874
    Top = 32
  end
  object sdsctetransportadora: TSQLDataSet
    CommandText = 
      'SELECT C.*'#13#10',T.NMTRANSPORTADORA'#13#10',VT.NMTRANSPORTADORA NMPROPRIET' +
      'ARIO'#13#10',VT.TPPESSOA'#13#10',V.NUPLACA'#13#10',V.NUEIXOS'#13#10',VC.NUEIXOS NUEIXOSV' +
      'C'#13#10',V2.NUEIXOS NUEIXOSV2'#13#10',VC.NUPLACA NUPLACACARRETA'#13#10',V2.NUPLAC' +
      'A NUPLACACARRETA2 '#13#10'FROM CTETRANSPORTADORA C '#13#10'LEFT JOIN TRANSPO' +
      'RTADORA T ON C.CDTRANSPORTADORA=T.CDTRANSPORTADORA AND T.CDEMPRE' +
      'SA=C.CDEMPRESA'#13#10'LEFT JOIN VEICULO V ON V.CDVEICULO=C.CDVEICULO A' +
      'ND V.CDEMPRESA=C.CDEMPRESA'#13#10'LEFT JOIN TRANSPORTADORA VT ON VT.CD' +
      'TRANSPORTADORA=C.CDPROPRIETARIO AND VT.CDEMPRESA=C.CDEMPRESA '#13#10'L' +
      'EFT JOIN VEICULO VC ON VC.CDVEICULO=C.CDVEICULOCARRETA AND VC.CD' +
      'EMPRESA=C.CDEMPRESA'#13#10'LEFT JOIN VEICULO V2 ON V2.CDVEICULO=C.CDVE' +
      'ICULOCARRETA2 AND V2.CDEMPRESA=C.CDEMPRESA'#13#10'WHERE C.CDEMPRESA=:C' +
      'DEMPRESA AND C.CDCTE=:CDCTE'
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
        Name = 'CDCTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 838
    Top = 540
    object sdsctetransportadoraCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsctetransportadoraCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctetransportadoraCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctetransportadoraCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctetransportadoraCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctetransportadoraTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctetransportadoraTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctetransportadoraNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sdsctetransportadoraVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraVLPEDAGIO: TFMTBCDField
      FieldName = 'VLPEDAGIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraVLADIANTAMENTO: TFMTBCDField
      FieldName = 'VLADIANTAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraVLSESTSENAT: TFMTBCDField
      FieldName = 'VLSESTSENAT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsctetransportadoraNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = []
      Size = 8
    end
    object sdsctetransportadoraNUPLACACARRETA: TStringField
      FieldName = 'NUPLACACARRETA'
      ProviderFlags = []
      Size = 8
    end
    object sdsctetransportadoraDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsctetransportadoraCDVEICULOCARRETA: TIntegerField
      FieldName = 'CDVEICULOCARRETA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsctetransportadoraNMPROPRIETARIO: TStringField
      FieldName = 'NMPROPRIETARIO'
      ProviderFlags = []
      Size = 100
    end
    object sdsctetransportadoraTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = []
      Size = 1
    end
    object sdsctetransportadoraVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraNUSEGURADORA: TStringField
      FieldName = 'NUSEGURADORA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsctetransportadoraCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = []
    end
    object sdsctetransportadoraNUPLACACARRETA2: TStringField
      FieldName = 'NUPLACACARRETA2'
      ProviderFlags = []
      Size = 8
    end
    object sdsctetransportadoraCDVEICULOCARRETA2: TIntegerField
      FieldName = 'CDVEICULOCARRETA2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsctetransportadoraNUEIXOS: TIntegerField
      FieldName = 'NUEIXOS'
      ProviderFlags = []
    end
    object sdsctetransportadoraNUEIXOSVC: TIntegerField
      FieldName = 'NUEIXOSVC'
      ProviderFlags = []
    end
    object sdsctetransportadoraNUEIXOSV2: TIntegerField
      FieldName = 'NUEIXOSV2'
      ProviderFlags = []
    end
    object sdsctetransportadoraVLFRETEPESO: TFMTBCDField
      FieldName = 'VLFRETEPESO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsctetransportadoraCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsctetransportadoraCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsctetransportadoraCDPROPRIETARIO: TLargeintField
      FieldName = 'CDPROPRIETARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cdsctetransportadora: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsctetransportadora
    Params = <>
    BeforePost = cdsctetransportadoraBeforePost
    AfterScroll = cdsctetransportadoraAfterScroll
    OnNewRecord = cdsctetransportadoraNewRecord
    Left = 893
    Top = 540
    object cdsctetransportadoraCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsctetransportadoraCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctetransportadoraCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctetransportadoraCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctetransportadoraCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctetransportadoraTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctetransportadoraTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctetransportadoraNMTRANSPORTADORA: TStringField
      FieldName = 'NMTRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdsctetransportadoraVLSERVICO: TFMTBCDField
      FieldName = 'VLSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraVLFRETE: TFMTBCDField
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_calculo
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraVLPEDAGIO: TFMTBCDField
      FieldName = 'VLPEDAGIO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_calculo
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraVLADIANTAMENTO: TFMTBCDField
      FieldName = 'VLADIANTAMENTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_calculo
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraVLINSS: TFMTBCDField
      FieldName = 'VLINSS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraVLSESTSENAT: TFMTBCDField
      FieldName = 'VLSESTSENAT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = set_calculo
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraCDVEICULO: TIntegerField
      FieldName = 'CDVEICULO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsctetransportadoraCDVEICULOValidate
    end
    object cdsctetransportadoraNUPLACA: TStringField
      FieldName = 'NUPLACA'
      ProviderFlags = []
      Size = 8
    end
    object cdsctetransportadoraNUPLACACARRETA: TStringField
      FieldName = 'NUPLACACARRETA'
      ProviderFlags = []
      Size = 8
    end
    object cdsctetransportadoraDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsctetransportadoraCDVEICULOCARRETA: TIntegerField
      FieldName = 'CDVEICULOCARRETA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsctetransportadoraCDVEICULOCARRETAValidate
    end
    object cdsctetransportadoraNMPROPRIETARIO: TStringField
      FieldName = 'NMPROPRIETARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsctetransportadoraTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = []
      Size = 1
    end
    object cdsctetransportadoraVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      OnValidate = set_calculo
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraVLIRRF: TFMTBCDField
      FieldName = 'VLIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraNUSEGURADORA: TStringField
      FieldName = 'NUSEGURADORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsctetransportadoraCDAUTPAGTO: TIntegerField
      FieldName = 'CDAUTPAGTO'
      ProviderFlags = []
    end
    object cdsctetransportadoraNUPLACACARRETA2: TStringField
      FieldName = 'NUPLACACARRETA2'
      ProviderFlags = []
      Size = 8
    end
    object cdsctetransportadoraCDVEICULOCARRETA2: TIntegerField
      FieldName = 'CDVEICULOCARRETA2'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsctetransportadoraCDVEICULOCARRETA2Validate
    end
    object cdsctetransportadoraNUEIXOS: TIntegerField
      FieldName = 'NUEIXOS'
      ProviderFlags = []
    end
    object cdsctetransportadoraNUEIXOSVC: TIntegerField
      FieldName = 'NUEIXOSVC'
      ProviderFlags = []
    end
    object cdsctetransportadoraNUEIXOSV2: TIntegerField
      FieldName = 'NUEIXOSV2'
      ProviderFlags = []
    end
    object cdsctetransportadoraVLFRETEPESO: TFMTBCDField
      FieldName = 'VLFRETEPESO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsctetransportadoraVLFRETEPESOValidate
      Precision = 15
      Size = 2
    end
    object cdsctetransportadoraCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsctetransportadoraCDTRANSPORTADORA: TLargeintField
      FieldName = 'CDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsctetransportadoraCDTRANSPORTADORAValidate
    end
    object cdsctetransportadoraCDPROPRIETARIO: TLargeintField
      FieldName = 'CDPROPRIETARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dtsctetransportadora: TDataSource
    DataSet = cdsctetransportadora
    Left = 874
    Top = 60
  end
  object pm1: TdxBarPopupMenu
    BarManager = bmg1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton25'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
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
    Left = 296
    Top = 125
  end
  object ACBrCTe: TACBrCTe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 4000
    Configuracoes.WebServices.Tentativas = 80
    Configuracoes.WebServices.IntervaloTentativas = 4000
    Configuracoes.WebServices.TimeOut = 10000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 240
    Top = 125
  end
  object dtscteremetentenota: TDataSource
    DataSet = cdscteremetentenota
    Left = 874
    Top = 88
  end
  object cdscteremetentenota: TClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'sumvlfrete'
        Expression = 'sum(vlfrete)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'sumvltotal'
        Expression = 'sum(vltotal)'
        Visible = False
      end>
    AggregatesActive = True
    DataSetField = cdssdscteremetentenota
    Params = <>
    BeforePost = cdscteremetentenotaBeforePost
    AfterPost = cdscteremetentenotaAfterPost
    OnNewRecord = cdscteremetentenotaNewRecord
    Left = 806
    Top = 88
    object cdscteremetentenotaCDCTEREMETENTENOTA: TIntegerField
      FieldName = 'CDCTEREMETENTENOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscteremetentenotaCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteremetentenotaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteremetentenotaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteremetentenotaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteremetentenotaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteremetentenotaCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
    end
    object cdscteremetentenotaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdscteremetentenotaDTEMISSAOValidate
    end
    object cdscteremetentenotaVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdscteremetentenotaVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdscteremetentenotaVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdscteremetentenotaVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdscteremetentenotaNUPIN: TIntegerField
      FieldName = 'NUPIN'
      ProviderFlags = [pfInUpdate]
    end
    object cdscteremetentenotaVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdscteremetentenotaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdscteremetentenotaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteremetentenotaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteremetentenotaNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdscteremetentenotaNUCHAVENFEValidate
      Size = 44
    end
    object cdscteremetentenotaPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdscteremetentenotaPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdscteremetentenotaNUDOCFISCALICMS: TStringField
      FieldName = 'NUDOCFISCALICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdscteremetentenotaNUCTETPDOCOUTROS: TStringField
      FieldName = 'NUCTETPDOCOUTROS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdscteremetentenotaDSOUTROS: TStringField
      FieldName = 'DSOUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdscteremetentenotaDTPREVISAO: TDateField
      FieldName = 'DTPREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdscteremetentenotaVLFRETE: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdscteremetentenotaDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdscteremetentenotaNUROMANEIO: TStringField
      FieldName = 'NUROMANEIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdscteremetentenotaNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdscteremetentenotaNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      OnValidate = check_nota
      Size = 3
    end
    object cdscteremetentenotaNUNOTA: TStringField
      FieldName = 'NUNOTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = check_nota
    end
    object cdscteremetentenotaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdscteremetentenota: TSQLDataSet
    CommandText = 
      'select * from CTEREMETENTENOTA where CDEMPRESA=:CDEMPRESA AND CD' +
      'CTE=:CDCTE'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDCTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 750
    Top = 88
    object sdscteremetentenotaCDCTEREMETENTENOTA: TIntegerField
      FieldName = 'CDCTEREMETENTENOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdscteremetentenotaCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteremetentenotaCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteremetentenotaCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteremetentenotaCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteremetentenotaCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteremetentenotaCDCFOP: TIntegerField
      FieldName = 'CDCFOP'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteremetentenotaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteremetentenotaVLBASEICMS: TFMTBCDField
      FieldName = 'VLBASEICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdscteremetentenotaVLICMS: TFMTBCDField
      FieldName = 'VLICMS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdscteremetentenotaVLBASEICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLBASEICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdscteremetentenotaVLICMSSUBTRIB: TFMTBCDField
      FieldName = 'VLICMSSUBTRIB'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdscteremetentenotaNUPIN: TIntegerField
      FieldName = 'NUPIN'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteremetentenotaVLPRODUTO: TFMTBCDField
      FieldName = 'VLPRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdscteremetentenotaVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdscteremetentenotaTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteremetentenotaTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteremetentenotaNUCHAVENFE: TStringField
      FieldName = 'NUCHAVENFE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdscteremetentenotaPSLIQUIDO: TFloatField
      FieldName = 'PSLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteremetentenotaPSBRUTO: TFloatField
      FieldName = 'PSBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteremetentenotaNUDOCFISCALICMS: TStringField
      FieldName = 'NUDOCFISCALICMS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdscteremetentenotaNUCTETPDOCOUTROS: TStringField
      FieldName = 'NUCTETPDOCOUTROS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object sdscteremetentenotaDSOUTROS: TStringField
      FieldName = 'DSOUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdscteremetentenotaDTPREVISAO: TDateField
      FieldName = 'DTPREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteremetentenotaVLFRETE: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdscteremetentenotaDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdscteremetentenotaNUROMANEIO: TStringField
      FieldName = 'NUROMANEIO'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteremetentenotaNUPEDIDO: TStringField
      FieldName = 'NUPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteremetentenotaNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdscteremetentenotaNUNOTA: TStringField
      FieldName = 'NUNOTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteremetentenotaCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsduplicata: TSQLDataSet
    CommandText = 
      'SELECT D.*'#13#10',PLCONTA.NMPLCONTA'#13#10',CNTCUSTO.NMCNTCUSTO'#13#10',S.NMSTDUP' +
      'LICATA '#13#10'FROM DUPLICATA D '#13#10'LEFT JOIN STDUPLICATA S ON S.CDSTDUP' +
      'LICATA=D.CDSTDUPLICATA '#13#10'LEFT JOIN PLCONTA ON PLCONTA.CDEMPRESA=' +
      'D.CDEMPRESA AND PLCONTA.CDPLCONTA=D.CDPLCONTA '#13#10'LEFT JOIN CNTCUS' +
      'TO ON CNTCUSTO.CDEMPRESA=D.CDEMPRESA AND CNTCUSTO.CDCNTCUSTO=D.C' +
      'DCNTCUSTO'#13#10'WHERE D.CDEMPRESA=:CDEMPRESA AND D.CDCTE=:CDCTE'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CDCTE'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 750
    Top = 116
    object sdsduplicataCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsduplicataCDSTDUPLICATA: TIntegerField
      FieldName = 'CDSTDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDSTREGCOBRANCA: TIntegerField
      FieldName = 'CDSTREGCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object sdsduplicataNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sdsduplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsduplicataDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataNUBOLETA: TStringField
      FieldName = 'NUBOLETA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsduplicataBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsduplicataNUCAIXA: TIntegerField
      FieldName = 'NUCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsduplicataNUNOSSONUMERO: TStringField
      FieldName = 'NUNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 17
    end
    object sdsduplicataCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsduplicataDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsduplicataCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNMSTDUPLICATA: TStringField
      FieldName = 'NMSTDUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object sdsduplicataCDTPDUPLICATA: TIntegerField
      FieldName = 'CDTPDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsduplicataNUCPFCNPJ: TStringField
      FieldName = 'NUCPFCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNUCPFCNPJ2: TStringField
      FieldName = 'NUCPFCNPJ2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataNMEMITENTE: TStringField
      FieldName = 'NMEMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataNMEMITENTE2: TStringField
      FieldName = 'NMEMITENTE2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataNUCONTACORRENTE: TStringField
      FieldName = 'NUCONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsduplicataTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsduplicataCDBANCODEVOLUCAO: TIntegerField
      FieldName = 'CDBANCODEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsduplicataCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDNEGOCIACAOSAIDA: TIntegerField
      FieldName = 'CDNEGOCIACAOSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataCDITCONTRATOPARCELA: TIntegerField
      FieldName = 'CDITCONTRATOPARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsduplicataDSOBSERVACAOBOLETO: TBlobField
      FieldName = 'DSOBSERVACAOBOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsduplicataNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsduplicataVLCOMISSAOABERTA: TFMTBCDField
      FieldName = 'VLCOMISSAOABERTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsduplicataNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sdsduplicataNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsduplicata: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsduplicata
    Params = <>
    BeforePost = cdsduplicataBeforePost
    OnNewRecord = cdsduplicataNewRecord
    Left = 806
    Top = 116
    object cdsduplicataCDDUPLICATA: TIntegerField
      FieldName = 'CDDUPLICATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsduplicataCDSTDUPLICATA: TIntegerField
      FieldName = 'CDSTDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataCDTPPAGAMENTO: TIntegerField
      FieldName = 'CDTPPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDREPRESENTANTE: TIntegerField
      FieldName = 'CDREPRESENTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDSAIDA: TIntegerField
      FieldName = 'CDSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDTPCOBRANCA: TIntegerField
      FieldName = 'CDTPCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDSTREGCOBRANCA: TIntegerField
      FieldName = 'CDSTREGCOBRANCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNUDUPLICATA: TStringField
      FieldName = 'NUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object cdsduplicataNUAGENCIA: TStringField
      FieldName = 'NUAGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsduplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsduplicataDTVENCIMENTOValidate
    end
    object cdsduplicataDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataDTPRORROGACAO: TDateField
      FieldName = 'DTPRORROGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLDUPLICATA: TFMTBCDField
      FieldName = 'VLDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsduplicataDSHISTORICO: TStringField
      FieldName = 'DSHISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsduplicataDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLBAIXA: TFMTBCDField
      FieldName = 'VLBAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLDESCONTO: TFMTBCDField
      FieldName = 'VLDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLDEVOLUCAO: TFMTBCDField
      FieldName = 'VLDEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLABATIMENTO: TFMTBCDField
      FieldName = 'VLABATIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataPRMORADIARIA: TFloatField
      FieldName = 'PRMORADIARIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLSALDO: TFMTBCDField
      FieldName = 'VLSALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLDEDUCAO: TFMTBCDField
      FieldName = 'VLDEDUCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLACRESCIMO: TFMTBCDField
      FieldName = 'VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLRECEBIDO: TFMTBCDField
      FieldName = 'VLRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataPRMULTA: TFloatField
      FieldName = 'PRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLMULTA: TFMTBCDField
      FieldName = 'VLMULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLJUROS: TFMTBCDField
      FieldName = 'VLJUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataVLCOMISSAO: TFMTBCDField
      FieldName = 'VLCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataNUBOLETA: TStringField
      FieldName = 'NUBOLETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataBOENVIADO: TStringField
      FieldName = 'BOENVIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsduplicataBOIMPRESSA: TStringField
      FieldName = 'BOIMPRESSA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsduplicataNUCAIXA: TIntegerField
      FieldName = 'NUCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataDSOBSERVACAO: TBlobField
      FieldName = 'DSOBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsduplicataNUNOSSONUMERO: TStringField
      FieldName = 'NUNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 17
    end
    object cdsduplicataCDPLCONTA: TIntegerField
      FieldName = 'CDPLCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNUPLCONTA: TStringField
      DisplayWidth = 100
      FieldName = 'NUPLCONTA'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsduplicataNUPLCONTAValidate
      Size = 100
    end
    object cdsduplicataCDCONTA: TIntegerField
      FieldName = 'CDCONTA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataVLJUROSNRECEBIDO: TFMTBCDField
      FieldName = 'VLJUROSNRECEBIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsduplicataDSPARCELA: TStringField
      FieldName = 'DSPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsduplicataCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDUSUARIOBAIXA: TIntegerField
      FieldName = 'CDUSUARIOBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataTSLIBERADO: TSQLTimeStampField
      FieldName = 'TSLIBERADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDUSUARIOL: TIntegerField
      FieldName = 'CDUSUARIOL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDCOMPUTADORL: TIntegerField
      FieldName = 'CDCOMPUTADORL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNMSTDUPLICATA: TStringField
      FieldName = 'NMSTDUPLICATA'
      ProviderFlags = []
      Size = 100
    end
    object cdsduplicataCDTPDUPLICATA: TIntegerField
      FieldName = 'CDTPDUPLICATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsduplicataNUCPFCNPJ: TStringField
      FieldName = 'NUCPFCNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNUCPFCNPJ2: TStringField
      FieldName = 'NUCPFCNPJ2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataNMEMITENTE: TStringField
      FieldName = 'NMEMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsduplicataNMEMITENTE2: TStringField
      FieldName = 'NMEMITENTE2'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsduplicataNUCONTACORRENTE: TStringField
      FieldName = 'NUCONTACORRENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsduplicataTPPESSOA: TStringField
      FieldName = 'TPPESSOA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsduplicataCDBANCODEVOLUCAO: TIntegerField
      FieldName = 'CDBANCODEVOLUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsduplicataCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDNEGOCIACAOSAIDA: TIntegerField
      FieldName = 'CDNEGOCIACAOSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDCNTCUSTO: TIntegerField
      FieldName = 'CDCNTCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDSETBOLETO: TIntegerField
      FieldName = 'CDSETBOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataCDITCONTRATOPARCELA: TIntegerField
      FieldName = 'CDITCONTRATOPARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsduplicataDSOBSERVACAOBOLETO: TBlobField
      FieldName = 'DSOBSERVACAOBOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsduplicataNUCNTCUSTO: TStringField
      FieldName = 'NUCNTCUSTO'
      ProviderFlags = [pfInUpdate]
      OnValidate = cdsduplicataNUCNTCUSTOValidate
      Size = 100
    end
    object cdsduplicataVLCOMISSAOABERTA: TFMTBCDField
      FieldName = 'VLCOMISSAOABERTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsduplicataNMPLCONTA: TStringField
      FieldName = 'NMPLCONTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsduplicataNMCNTCUSTO: TStringField
      FieldName = 'NMCNTCUSTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object dtsduplicata: TDataSource
    DataSet = cdsduplicata
    Left = 874
    Top = 116
  end
  object sdsitcontcliente: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT CDITCONTCLIENTE,NMITCONTCLIENTE,NURAMAL FROM ITCONTCLIENT' +
      'E WHERE CDEMPRESA=:CDEMPRESA AND CDCLIENTE=:CDCLIENTE'
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
        Name = 'CDCLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = dtmmain.sqlc
    Left = 941
    Top = 70
  end
  object dspitcontcliente: TDataSetProvider
    DataSet = sdsitcontcliente
    Left = 968
    Top = 70
  end
  object cdsitcontcliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspitcontcliente'
    Left = 996
    Top = 70
  end
  object dtsitcontcliente: TDataSource
    DataSet = cdsitcontcliente
    Left = 1024
    Top = 70
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 57
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
  object sdscartacorrecao: TSQLDataSet
    CommandText = 
      'SELECT * FROM CARTACORRECAOCTE WHERE CDEMPRESA=:CDEMPRESA AND CD' +
      'CTE=:CDCTE'
    DataSource = dts1
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftInteger
        Name = 'CDCTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 750
    Top = 144
    object sdscartacorrecaoCDCARTACORRECAOCTE: TIntegerField
      FieldName = 'CDCARTACORRECAOCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdscartacorrecaoCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdscartacorrecaoTSEMISSAO: TSQLTimeStampField
      FieldName = 'TSEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoNUPROTOCOLO: TStringField
      FieldName = 'NUPROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdscartacorrecaoNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscartacorrecaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdscartacorrecao: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdscartacorrecao
    Params = <>
    BeforePost = cdsduplicataBeforePost
    OnNewRecord = cdsduplicataNewRecord
    Left = 806
    Top = 144
    object cdscartacorrecaoCDCARTACORRECAOCTE: TIntegerField
      FieldName = 'CDCARTACORRECAOCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscartacorrecaoCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoDSXML: TBlobField
      FieldName = 'DSXML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdscartacorrecaoTSEMISSAO: TSQLTimeStampField
      FieldName = 'TSEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaoNUPROTOCOLO: TStringField
      FieldName = 'NUPROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdscartacorrecaoNSEQEVENTO: TIntegerField
      FieldName = 'NSEQEVENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscartacorrecaosdsitcartacorrecaocte: TDataSetField
      FieldName = 'sdsitcartacorrecaocte'
      ProviderFlags = [pfInUpdate]
    end
    object cdscartacorrecaoCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtscartacorrecao: TDataSource
    DataSet = cdscartacorrecao
    Left = 874
    Top = 144
  end
  object sdscteinformacaoseguro: TSQLDataSet
    CommandText = 
      'SELECT * FROM CTEINFORMACAOSEGURO WHERE CDEMPRESA=:CDEMPRESA AND' +
      ' CDCTE=:CDCTE'
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
        Name = 'CDCTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 750
    Top = 173
    object sdscteinformacaoseguroCDCTEINFORMACAOSEGURO: TIntegerField
      FieldName = 'CDCTEINFORMACAOSEGURO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdscteinformacaoseguroCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteinformacaoseguroCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteinformacaoseguroCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteinformacaoseguroCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteinformacaoseguroCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO: TIntegerField
      FieldName = 'CDTPCTERESPONSAVELSEGURO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteinformacaoseguroTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteinformacaoseguroTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteinformacaoseguroNUAPOLICE: TStringField
      FieldName = 'NUAPOLICE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdscteinformacaoseguroNUAVERBACAO: TStringField
      FieldName = 'NUAVERBACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdscteinformacaoseguroVLCARGA: TFMTBCDField
      FieldName = 'VLCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdscteinformacaoseguroCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdscteinformacaoseguroCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdscteinformacaoseguro: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdscteinformacaoseguro
    Params = <>
    BeforePost = cdscteinformacaoseguroBeforePost
    OnNewRecord = cdscteinformacaoseguroNewRecord
    Left = 806
    Top = 173
    object cdscteinformacaoseguroCDCTEINFORMACAOSEGURO: TIntegerField
      FieldName = 'CDCTEINFORMACAOSEGURO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscteinformacaoseguroCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteinformacaoseguroCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteinformacaoseguroCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteinformacaoseguroCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteinformacaoseguroCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO: TIntegerField
      FieldName = 'CDTPCTERESPONSAVELSEGURO'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdscteinformacaoseguroCDTPCTERESPONSAVELSEGUROValidate
    end
    object cdscteinformacaoseguroTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteinformacaoseguroTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteinformacaoseguroNUAPOLICE: TStringField
      FieldName = 'NUAPOLICE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdscteinformacaoseguroNUAVERBACAO: TStringField
      FieldName = 'NUAVERBACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdscteinformacaoseguroVLCARGA: TFMTBCDField
      FieldName = 'VLCARGA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object cdscteinformacaoseguroCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscteinformacaoseguroCDFORNECEDOR: TLargeintField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dtscteinformacaoseguro: TDataSource
    DataSet = cdscteinformacaoseguro
    Left = 874
    Top = 173
  end
  object sdsctedocumentoanterior: TSQLDataSet
    CommandText = 
      'SELECT D.*, C.RZSOCIAL FROM CTEDOCUMENTOANTERIOR D LEFT JOIN CLI' +
      'ENTE C ON C.CDEMPRESA=D.CDEMPRESA AND C.CDCLIENTE=D.CDCLIENTE WH' +
      'ERE D.CDEMPRESA=:CDEMPRESA AND D.CDCTE=:CDCTE'
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
        Name = 'CDCTE'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 688
    Top = 305
    object sdsctedocumentoanteriorCDCTEDOCUMENTOANTERIOR: TIntegerField
      FieldName = 'CDCTEDOCUMENTOANTERIOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsctedocumentoanteriorCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctedocumentoanteriorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctedocumentoanteriorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctedocumentoanteriorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctedocumentoanteriorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctedocumentoanteriorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctedocumentoanteriorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsctedocumentoanteriorRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = []
      Size = 100
    end
    object sdsctedocumentoanteriorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsctedocumentoanteriorCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cdsctedocumentoanterior: TClientDataSet
    Aggregates = <>
    DataSetField = cdssdsctedocumentoanterior
    Params = <>
    BeforePost = cdsctedocumentoanteriorBeforePost
    OnNewRecord = cdsctedocumentoanteriorNewRecord
    Left = 822
    Top = 305
    object cdsctedocumentoanteriorCDCTEDOCUMENTOANTERIOR: TIntegerField
      FieldName = 'CDCTEDOCUMENTOANTERIOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsctedocumentoanteriorCDCTE: TIntegerField
      FieldName = 'CDCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctedocumentoanteriorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctedocumentoanteriorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctedocumentoanteriorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctedocumentoanteriorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctedocumentoanteriorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctedocumentoanteriorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsctedocumentoanteriorsdsitctedocumentoanterior: TDataSetField
      FieldName = 'sdsitctedocumentoanterior'
      ProviderFlags = [pfInUpdate]
    end
    object cdsctedocumentoanteriorRZSOCIAL: TStringField
      FieldName = 'RZSOCIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsctedocumentoanteriorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsctedocumentoanteriorCDCLIENTE: TLargeintField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnValidate = cdsctedocumentoanteriorCDCLIENTEValidate
    end
  end
  object dtsctedocumentoanterior: TDataSource
    DataSet = cdsctedocumentoanterior
    Left = 954
    Top = 305
  end
  object dts2: TDataSource
    DataSet = sdsctedocumentoanterior
    OnStateChange = dtsStateChange
    Left = 1032
    Top = 304
  end
  object sdsitctedocumentoanterior: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITCTEDOCUMENTOANTERIOR '#13#10'WHERE CDEMPRESA=:CDEMPRES' +
      'A AND CDCTEDOCUMENTOANTERIOR=:CDCTEDOCUMENTOANTERIOR'
    DataSource = dts2
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
        Name = 'CDCTEDOCUMENTOANTERIOR'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dtmmain.sqlc
    Left = 688
    Top = 349
    object sdsitctedocumentoanteriorCDITCTEDOCUMENTOANTERIOR: TIntegerField
      FieldName = 'CDITCTEDOCUMENTOANTERIOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitctedocumentoanteriorCDCTEDOCUMENTOANTERIOR: TIntegerField
      FieldName = 'CDCTEDOCUMENTOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitctedocumentoanteriorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitctedocumentoanteriorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitctedocumentoanteriorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitctedocumentoanteriorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitctedocumentoanteriorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitctedocumentoanteriorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitctedocumentoanteriorNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 3
    end
    object sdsitctedocumentoanteriorNUSUBSERIE: TStringField
      FieldName = 'NUSUBSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsitctedocumentoanteriorDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitctedocumentoanteriorNUCHAVE: TStringField
      FieldName = 'NUCHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object sdsitctedocumentoanteriorNUCTETPDOCUMENTOANTERIOR: TStringField
      FieldName = 'NUCTETPDOCUMENTOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsitctedocumentoanteriorNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitctedocumentoanteriorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cdsitctedocumentoanterior: TClientDataSet
    Aggregates = <>
    DataSetField = cdsctedocumentoanteriorsdsitctedocumentoanterior
    Params = <>
    BeforePost = cdsitctedocumentoanteriorBeforePost
    OnNewRecord = cdsitctedocumentoanteriorNewRecord
    Left = 822
    Top = 349
    object cdsitctedocumentoanteriorCDITCTEDOCUMENTOANTERIOR: TIntegerField
      FieldName = 'CDITCTEDOCUMENTOANTERIOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitctedocumentoanteriorCDCTEDOCUMENTOANTERIOR: TIntegerField
      FieldName = 'CDCTEDOCUMENTOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitctedocumentoanteriorCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitctedocumentoanteriorCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitctedocumentoanteriorCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitctedocumentoanteriorCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitctedocumentoanteriorTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitctedocumentoanteriorTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitctedocumentoanteriorNUSERIE: TStringField
      FieldName = 'NUSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsitctedocumentoanteriorNUSUBSERIE: TStringField
      FieldName = 'NUSUBSERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsitctedocumentoanteriorDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitctedocumentoanteriorNUCHAVE: TStringField
      FieldName = 'NUCHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsitctedocumentoanteriorNUCTETPDOCUMENTOANTERIOR: TStringField
      FieldName = 'NUCTETPDOCUMENTOANTERIOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsitctedocumentoanteriorNUDOCUMENTO: TIntegerField
      FieldName = 'NUDOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitctedocumentoanteriorCDEMPRESA: TLargeintField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dtsitctedocumentoanterior: TDataSource
    DataSet = cdsitctedocumentoanterior
    Left = 954
    Top = 349
  end
  object dtsitcartacorrecaocte: TDataSource
    DataSet = cdsitcartacorrecaocte
    Left = 1005
    Top = 132
  end
  object cdsitcartacorrecaocte: TClientDataSet
    Aggregates = <>
    DataSetField = cdscartacorrecaosdsitcartacorrecaocte
    Params = <>
    BeforePost = cdscteinformacaoseguroBeforePost
    OnNewRecord = cdscteinformacaoseguroNewRecord
    Left = 978
    Top = 132
    object cdsitcartacorrecaocteCDITCARTACORRECAOCTE: TIntegerField
      FieldName = 'CDITCARTACORRECAOCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitcartacorrecaocteCDCARTACORRECAOCTE: TIntegerField
      FieldName = 'CDCARTACORRECAOCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcartacorrecaocteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcartacorrecaocteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcartacorrecaocteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcartacorrecaocteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcartacorrecaocteCDCARTACORRECAOCTEGRUPO: TIntegerField
      FieldName = 'CDCARTACORRECAOCTEGRUPO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcartacorrecaocteCDCARTACORRECAOCTEITEM: TIntegerField
      FieldName = 'CDCARTACORRECAOCTEITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcartacorrecaocteNUITEM: TIntegerField
      FieldName = 'NUITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitcartacorrecaocteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcartacorrecaocteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsitcartacorrecaocteDSITCARTACORRECAOCTE: TStringField
      FieldName = 'DSITCARTACORRECAOCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 500
    end
  end
  object sdsitcartacorrecaocte: TSQLDataSet
    CommandText = 
      'SELECT * FROM ITCARTACORRECAOCTE WHERE CDEMPRESA=:CDEMPRESA AND ' +
      'CDCARTACORRECAOCTE=:CDCARTACORRECAOCTE'
    DataSource = dts3
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CDEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CDCARTACORRECAOCTE'
        ParamType = ptInput
      end>
    SQLConnection = dtmmain.sqlc
    Left = 949
    Top = 132
    object sdsitcartacorrecaocteCDITCARTACORRECAOCTE: TIntegerField
      FieldName = 'CDITCARTACORRECAOCTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsitcartacorrecaocteCDCARTACORRECAOCTE: TIntegerField
      FieldName = 'CDCARTACORRECAOCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcartacorrecaocteCDUSUARIOI: TIntegerField
      FieldName = 'CDUSUARIOI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcartacorrecaocteCDUSUARIOA: TIntegerField
      FieldName = 'CDUSUARIOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcartacorrecaocteCDCOMPUTADORI: TIntegerField
      FieldName = 'CDCOMPUTADORI'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcartacorrecaocteCDCOMPUTADORA: TIntegerField
      FieldName = 'CDCOMPUTADORA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcartacorrecaocteCDCARTACORRECAOCTEGRUPO: TIntegerField
      FieldName = 'CDCARTACORRECAOCTEGRUPO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcartacorrecaocteCDCARTACORRECAOCTEITEM: TIntegerField
      FieldName = 'CDCARTACORRECAOCTEITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcartacorrecaocteNUITEM: TIntegerField
      FieldName = 'NUITEM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsitcartacorrecaocteTSINCLUSAO: TSQLTimeStampField
      FieldName = 'TSINCLUSAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcartacorrecaocteTSALTERACAO: TSQLTimeStampField
      FieldName = 'TSALTERACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsitcartacorrecaocteDSITCARTACORRECAOCTE: TStringField
      FieldName = 'DSITCARTACORRECAOCTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 500
    end
  end
  object dts3: TDataSource
    DataSet = sdscartacorrecao
    Left = 902
    Top = 144
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 296
    Top = 170
  end
end

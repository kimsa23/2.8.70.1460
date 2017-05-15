object frmNovoEquipamento: TfrmNovoEquipamento
  Left = 513
  Top = 181
  BorderStyle = bsDialog
  Caption = 'Novo Equipamento'
  ClientHeight = 280
  ClientWidth = 776
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
  object lblnuserie: TLabel
    Left = 3
    Top = 27
    Width = 39
    Height = 13
    Caption = 'N'#186' S'#233'rie'
    Transparent = True
  end
  object lblnupatrimonio: TLabel
    Left = 392
    Top = 27
    Width = 64
    Height = 13
    Caption = 'N'#186' Patrim'#244'nio'
    Transparent = True
  end
  object lbltpordserv: TLabel
    Left = 2
    Top = 7
    Width = 21
    Height = 13
    Caption = 'Tipo'
    Transparent = True
  end
  object lblnmequipamento: TLabel
    Left = 392
    Top = 6
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
    Transparent = True
  end
  object edtnupatrimonio: TcxDBTextEdit
    Left = 459
    Top = 25
    DataBinding.DataField = 'NUPATRIMONIO'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    OnEnter = colorenter
    OnExit = colorexit
    OnKeyDown = nextcontrol
    Width = 312
  end
  object edtnuserie: TcxDBTextEdit
    Left = 45
    Top = 25
    DataBinding.DataField = 'NUSERIE'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    OnEnter = colorenter
    OnExit = colorexit
    OnKeyDown = nextcontrol
    Width = 312
  end
  object btnSalvar: TcxButton
    Left = 310
    Top = 248
    Width = 75
    Height = 25
    Action = actSalvar1
    TabOrder = 8
  end
  object btnCancelar: TcxButton
    Left = 391
    Top = 248
    Width = 75
    Height = 25
    Action = actCancelar1
    Cancel = True
    TabOrder = 9
  end
  object gbxautorizada: TcxGroupBox
    Left = 392
    Top = 48
    Caption = 'Autorizada'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 7
    Height = 196
    Width = 377
    object Label9: TLabel
      Left = 1
      Top = 17
      Width = 54
      Height = 13
      Caption = 'Fornecedor'
      Transparent = True
    end
    object Label10: TLabel
      Left = 1
      Top = 39
      Width = 50
      Height = 13
      Caption = 'Fabricante'
      Transparent = True
    end
    object Label12: TLabel
      Left = 1
      Top = 60
      Width = 53
      Height = 13
      Caption = 'Nota Fiscal'
      Transparent = True
    end
    object Label13: TLabel
      Left = 1
      Top = 83
      Width = 63
      Height = 13
      Caption = 'Valor Compra'
      Transparent = True
    end
    object Label18: TLabel
      Left = 1
      Top = 103
      Width = 62
      Height = 13
      Caption = 'Data Compra'
      Transparent = True
    end
    object Label4: TLabel
      Left = 1
      Top = 130
      Width = 57
      Height = 13
      Caption = 'N'#186' Cert Gar.'
      Transparent = True
    end
    object Label5: TLabel
      Left = 1
      Top = 152
      Width = 59
      Height = 13
      Caption = 'Revendedor'
      Transparent = True
    end
    object Label7: TLabel
      Left = 1
      Top = 172
      Width = 55
      Height = 13
      Caption = 'Data Fabric'
      Transparent = True
    end
    object lblnmfornecedor: TLabel
      Left = 168
      Top = 13
      Width = 204
      Height = 13
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object cbxcdfabricante: TcxDBLookupComboBox
      Left = 64
      Top = 32
      DataBinding.DataField = 'CDFABRICANTE'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDFABRICANTE'
      Properties.ListColumns = <
        item
          FieldName = 'NMFABRICANTE'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = colorenter
      OnExit = colorexit
      Width = 282
    end
    object edtDTFABRICACAO: TcxDBDateEdit
      Left = 64
      Top = 170
      DataBinding.DataField = 'DTFABRICACAO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 282
    end
    object edtNMREVENDEDOR: TcxDBTextEdit
      Left = 64
      Top = 147
      DataBinding.DataField = 'NMREVENDEDOR'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 282
    end
    object edtNUCERTIFICADOGARANTIA: TcxDBTextEdit
      Left = 64
      Top = 125
      DataBinding.DataField = 'NUCERTIFICADOGARANTIA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 282
    end
    object edtdtcompra: TcxDBDateEdit
      Left = 64
      Top = 101
      DataBinding.DataField = 'DTCOMPRA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 282
    end
    object edtvlcompra: TcxDBCalcEdit
      Left = 64
      Top = 78
      DataBinding.DataField = 'VLCOMPRA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 282
    end
    object edtnunf: TcxDBTextEdit
      Left = 64
      Top = 55
      DataBinding.DataField = 'NUNF'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 282
    end
    object edtcdfornecedor: TcxDBButtonEdit
      Left = 64
      Top = 11
      DataBinding.DataField = 'CDFORNECEDOR'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtcdfornecedorPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 7
      OnEnter = colorenter
      OnExit = edtcdfornecedorExit
      OnKeyPress = eventokeypress
      Width = 101
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 43
    Caption = 'Identifica'#231#227'o'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 6
    Height = 199
    Width = 377
    object lblmarca: TLabel
      Left = 2
      Top = 22
      Width = 30
      Height = 13
      Caption = 'Marca'
      Transparent = True
    end
    object lblmodelo: TLabel
      Left = 2
      Top = 44
      Width = 35
      Height = 13
      Caption = 'Modelo'
      Transparent = True
    end
    object lblcor: TLabel
      Left = 2
      Top = 66
      Width = 16
      Height = 13
      Caption = 'Cor'
      Transparent = True
    end
    object lblcontrato: TLabel
      Left = 2
      Top = 87
      Width = 40
      Height = 13
      Caption = 'Contrato'
      Transparent = True
    end
    object lblnuano: TLabel
      Left = 2
      Top = 110
      Width = 19
      Height = 13
      Caption = 'Ano'
      Transparent = True
    end
    object lblcdtpeletricpneum: TLabel
      Left = 2
      Top = 133
      Width = 48
      Height = 13
      Caption = 'Elet/Pneu'
      Transparent = True
    end
    object lblcliente: TLabel
      Left = 2
      Top = 155
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Transparent = True
    end
    object lblcdtpequipamento2: TLabel
      Left = 2
      Top = 177
      Width = 38
      Height = 13
      Caption = 'Tp Eq 2'
      Transparent = True
    end
    object lblnmcliente: TLabel
      Left = 152
      Top = 153
      Width = 215
      Height = 13
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object cbxcdtpeletricpneum: TcxDBLookupComboBox
      Left = 48
      Top = 129
      DataBinding.DataField = 'CDTPELETRICPNEUM'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDTPELETRICPNEUM'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPELETRICPNEUM'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      OnEnter = colorenter
      OnExit = colorexit
      Width = 282
    end
    object cbxcdcontrato: TcxDBLookupComboBox
      Left = 48
      Top = 83
      DataBinding.DataField = 'CDCONTRATO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDCONTRATO'
      Properties.ListColumns = <
        item
          FieldName = 'NMCONTRATO'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnEnter = colorenter
      OnExit = colorexit
      Width = 282
    end
    object cbxcdcor: TcxDBLookupComboBox
      Left = 48
      Top = 62
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
      TabOrder = 6
      OnEnter = colorenter
      OnExit = colorexit
      Width = 282
    end
    object cbxcdmodelo: TcxDBLookupComboBox
      Left = 168
      Top = 40
      DataBinding.DataField = 'CDMODELO'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
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
      TabOrder = 4
      OnEnter = cbxcdmodeloEnter
      OnExit = cbxcdmodeloExit
      Width = 162
    end
    object cbxcdmarca: TcxDBLookupComboBox
      Left = 168
      Top = 18
      DataBinding.DataField = 'CDMARCA'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
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
      TabOrder = 1
      OnEnter = cbxcdmarcaEnter
      OnExit = cbxcdmarcaExit
      Width = 162
    end
    object edtnuano: TcxDBSpinEdit
      Left = 48
      Top = 106
      DataBinding.DataField = 'NUANO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnEnter = colorenter
      OnExit = colorexit
      OnKeyDown = nextcontrol
      Width = 282
    end
    object btnmarca: TcxButton
      Left = 331
      Top = 18
      Width = 28
      Height = 21
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = dtmmain.imlMain
      PaintStyle = bpsGlyph
      TabOrder = 2
      OnClick = btnmarcaClick
    end
    object btnmodelo: TcxButton
      Left = 331
      Top = 40
      Width = 28
      Height = 21
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = dtmmain.imlMain
      PaintStyle = bpsGlyph
      TabOrder = 5
      OnClick = btnmodeloClick
    end
    object btncor: TcxButton
      Left = 331
      Top = 62
      Width = 28
      Height = 21
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = dtmmain.imlMain
      PaintStyle = bpsGlyph
      TabOrder = 7
      OnClick = btncorClick
    end
    object btntpeletricpneum: TcxButton
      Left = 331
      Top = 129
      Width = 28
      Height = 21
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = dtmmain.imlMain
      PaintStyle = bpsGlyph
      TabOrder = 11
      OnClick = btntpeletricpneumClick
    end
    object edtcdmarca: TcxDBTextEdit
      Left = 48
      Top = 18
      DataBinding.DataField = 'CDMARCA'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnEnter = edtcdmarcaEnter
      OnExit = edtcdmarcaExit
      OnKeyPress = eventokeypress
      Width = 121
    end
    object edtcdmodelo: TcxDBTextEdit
      Left = 48
      Top = 40
      DataBinding.DataField = 'CDMODELO'
      DataBinding.DataSource = dts
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnEnter = edtcdmodeloEnter
      OnExit = edtcdmodeloExit
      OnKeyPress = eventokeypress
      Width = 121
    end
    object cbxCDTPEQUIPAMENTO2: TcxDBLookupComboBox
      Left = 48
      Top = 173
      DataBinding.DataField = 'CDTPEQUIPAMENTO2'
      DataBinding.DataSource = dts
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'CDTPEQUIPAMENTO2'
      Properties.ListColumns = <
        item
          FieldName = 'NMTPEQUIPAMENTO2'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 12
      OnEnter = colorenter
      OnExit = colorexit
      Width = 282
    end
    object btntpequipamento2: TcxButton
      Left = 331
      Top = 173
      Width = 28
      Height = 21
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 136
      OptionsImage.Images = dtmmain.imlMain
      PaintStyle = bpsGlyph
      TabOrder = 13
      OnClick = btntpequipamento2Click
    end
    object edtCDCLIENTE: TcxDBButtonEdit
      Left = 48
      Top = 150
      DataBinding.DataField = 'CDCLIENTE'
      DataBinding.DataSource = dts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtCDCLIENTEPropertiesButtonClick
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 14
      OnEnter = colorenter
      OnExit = edtcdclienteExit
      OnKeyPress = eventokeypress
      Width = 101
    end
  end
  object edtcdtpequipamento: TcxDBTextEdit
    Left = 45
    Top = 3
    DataBinding.DataField = 'CDTPEQUIPAMENTO'
    DataBinding.DataSource = dts
    Properties.OnEditValueChanged = edtcdtpequipamentoPropertiesEditValueChanged
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnEnter = edtcdtpequipamentoEnter
    OnExit = edtcdtpequipamentoExit
    OnKeyPress = eventokeypress
    Width = 121
  end
  object cbxcdtpequipamento: TcxDBLookupComboBox
    Left = 168
    Top = 3
    DataBinding.DataField = 'CDTPEQUIPAMENTO'
    DataBinding.DataSource = dts
    Properties.DropDownWidth = 400
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
    TabOrder = 1
    OnEnter = cbxcdtpequipamentoEnter
    OnExit = cbxcdtpequipamentoExit
    Width = 162
  end
  object btn1: TcxButton
    Left = 331
    Top = 3
    Width = 28
    Height = 21
    LookAndFeel.NativeStyle = False
    OptionsImage.ImageIndex = 136
    OptionsImage.Images = dtmmain.imlMain
    PaintStyle = bpsGlyph
    TabOrder = 2
    OnClick = btn1Click
  end
  object edtnmequipamento: TcxDBTextEdit
    Left = 459
    Top = 4
    DataBinding.DataField = 'NMEQUIPAMENTO'
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    OnEnter = colorenter
    OnExit = colorexit
    OnKeyDown = nextcontrol
    Width = 312
  end
  object act: TActionList
    Images = dtmmain.imlMain
    Left = 644
    Top = 17
    object actSalvar1: TAction
      Caption = 'Salvar'
      Hint = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvar1Execute
    end
    object actCancelar1: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelar1Execute
    end
  end
  object dts: TDataSource
    DataSet = qry
    Left = 541
    Top = 251
  end
  object qry: TFDQuery
    BeforePost = qryBeforePost
    OnNewRecord = qryNewRecord
    CachedUpdates = True
    Connection = dtmmain.confire
    Left = 600
    Top = 248
  end
end

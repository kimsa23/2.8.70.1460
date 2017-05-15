object frmNovoTabela: TfrmNovoTabela
  Left = 507
  Top = 145
  BorderStyle = bsDialog
  Caption = 'Novo '
  ClientHeight = 88
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 3
    Top = 15
    Width = 28
    Height = 13
    Caption = 'Nome'
    Transparent = True
  end
  object lblnufone1: TLabel
    Left = 6
    Top = 34
    Width = 24
    Height = 13
    Caption = 'Fone'
    Transparent = True
  end
  object lblemail: TLabel
    Left = 132
    Top = 34
    Width = 27
    Height = 13
    Caption = 'e-mail'
    Transparent = True
  end
  object edtNome: TcxDBTextEdit
    Left = 51
    Top = 7
    DataBinding.DataSource = dts
    Properties.CharCase = ecUpperCase
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    OnEnter = colorenter
    OnExit = colorexit
    Width = 414
  end
  object cxButton1: TcxButton
    Left = 151
    Top = 56
    Width = 75
    Height = 25
    Action = actSalvar1
    Default = True
    LookAndFeel.NativeStyle = False
    TabOrder = 3
  end
  object cxButton2: TcxButton
    Left = 247
    Top = 56
    Width = 75
    Height = 25
    Action = actCancelar1
    Cancel = True
    LookAndFeel.NativeStyle = False
    ModalResult = 2
    TabOrder = 4
  end
  object edtnufone1: TcxDBMaskEdit
    Left = 51
    Top = 29
    DataBinding.DataField = 'NUFONE1'
    DataBinding.DataSource = dts
    Properties.EditMask = '(99)9999-9999'
    Properties.MaxLength = 0
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = ''
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = ''
    TabOrder = 1
    OnEnter = colorenter
    OnExit = colorexit
    Width = 81
  end
  object edtemail: TcxDBTextEdit
    Left = 168
    Top = 29
    DataBinding.DataField = 'EMAIL'
    DataBinding.DataSource = dts
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = ''
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = ''
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = ''
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = ''
    TabOrder = 2
    OnEnter = colorenter
    OnExit = colorexit
    Width = 297
  end
  object act: TActionList
    Left = 255
    Top = 11
    object actSalvar1: TAction
      Caption = 'Salvar'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = actSalvar1Execute
    end
    object actCancelar1: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
      ShortCut = 16474
      OnExecute = actCancelar1Execute
    end
  end
  object dts: TDataSource
    DataSet = qry
    Left = 112
    Top = 52
  end
  object qry: TFDQuery
    BeforePost = qryBeforePost
    OnNewRecord = qryNewRecord
    CachedUpdates = True
    Connection = dtmmain.confire
    Left = 344
    Top = 56
  end
end

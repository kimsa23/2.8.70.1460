object frmGerarOrdCompra: TfrmGerarOrdCompra
  Left = 407
  Top = 377
  BorderStyle = bsDialog
  Caption = 'Gerar Ordem de Compra'
  ClientHeight = 94
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCliente: TLabel
    Left = 7
    Top = 11
    Width = 21
    Height = 13
    Caption = 'Tipo'
    Transparent = True
  end
  object lblcondpagto: TLabel
    Left = 7
    Top = 36
    Width = 82
    Height = 13
    Caption = 'Cond Pagamento'
    Transparent = True
  end
  object cbxcdtpordcompra: TcxLookupComboBox
    Left = 93
    Top = 7
    Properties.KeyFieldNames = 'CDTPORDCOMPRA'
    Properties.ListColumns = <
      item
        FieldName = 'NMTPORDCOMPRA'
      end>
    Properties.ListOptions.ShowHeader = False
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Width = 337
  end
  object cbxcdcondpagto: TcxLookupComboBox
    Left = 93
    Top = 33
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
    TabOrder = 1
    Width = 337
  end
  object btnOk: TButton
    Left = 132
    Top = 62
    Width = 74
    Height = 25
    Caption = '&OK'
    Default = True
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnCancelar: TButton
    Left = 220
    Top = 62
    Width = 74
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
end

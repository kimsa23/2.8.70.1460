object frmConfiguracao: TfrmConfiguracao
  Left = 213
  Top = 200
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o'
  ClientHeight = 143
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 7
    Top = 8
    Width = 570
    Height = 99
    Shape = bsFrame
  end
  object Label5: TLabel
    Left = 12
    Top = 43
    Width = 41
    Height = 13
    Caption = '&Caminho'
    FocusControl = edtCaminho
    Transparent = True
  end
  object Label4: TLabel
    Left = 12
    Top = 21
    Width = 39
    Height = 13
    Caption = '&Servidor'
    FocusControl = edtServidor
    Transparent = True
  end
  object Label1: TLabel
    Left = 12
    Top = 65
    Width = 36
    Height = 13
    Caption = '&Usu'#225'rio'
    FocusControl = edtusuario
    Transparent = True
  end
  object Label2: TLabel
    Left = 12
    Top = 88
    Width = 31
    Height = 13
    Caption = 'S&enha'
    FocusControl = edtsenha
    Transparent = True
  end
  object btncancelar: TButton
    Left = 297
    Top = 110
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 5
    OnClick = btncancelarClick
  end
  object edtCaminho: TEdit
    Left = 96
    Top = 35
    Width = 473
    Height = 21
    TabOrder = 1
  end
  object edtServidor: TEdit
    Left = 96
    Top = 13
    Width = 473
    Height = 21
    TabOrder = 0
  end
  object btnok: TButton
    Left = 216
    Top = 111
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    TabOrder = 4
    OnClick = btnokClick
  end
  object edtusuario: TEdit
    Left = 96
    Top = 57
    Width = 473
    Height = 21
    TabOrder = 2
  end
  object edtsenha: TEdit
    Left = 96
    Top = 80
    Width = 473
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
end

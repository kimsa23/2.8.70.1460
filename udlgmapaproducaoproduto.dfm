object frmdlgmapaproducaoproduto: Tfrmdlgmapaproducaoproduto
  Left = 352
  Top = 174
  Caption = 'Mapa de Produ'#231#227'o'
  ClientHeight = 590
  ClientWidth = 952
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlbottom: TPanel
    Left = 0
    Top = 550
    Width = 952
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnok: TcxButton
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Ok'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
end

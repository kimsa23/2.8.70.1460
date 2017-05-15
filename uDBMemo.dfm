object frmdbMemo: TfrmdbMemo
  Left = 242
  Top = 186
  BorderStyle = bsDialog
  ClientHeight = 278
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnOk: TBitBtn
    Left = 197
    Top = 243
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = btnOkClick
  end
  object btnCancel: TBitBtn
    Left = 285
    Top = 243
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object mem: TcxDBMemo
    Left = 0
    Top = 0
    Align = alTop
    Properties.OnChange = mem1PropertiesChange
    TabOrder = 2
    OnKeyPress = memKeyPress
    Height = 233
    Width = 557
  end
end

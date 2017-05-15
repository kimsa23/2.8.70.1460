object frmdlgxmltotreeview: Tfrmdlgxmltotreeview
  Left = 291
  Top = 233
  BorderStyle = bsDialog
  ClientHeight = 464
  ClientWidth = 666
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object trv: TcxTreeView
    Left = 8
    Top = 5
    Width = 650
    Height = 420
    TabOrder = 0
  end
  object cxButton1: TcxButton
    Left = 295
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object XMLD1: TXMLDocument
    Left = 32
    Top = 427
    DOMVendorDesc = 'MSXML'
  end
end

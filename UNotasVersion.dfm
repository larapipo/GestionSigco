object FormNotas: TFormNotas
  Left = 200
  Top = 98
  Caption = 'Version Notas'
  ClientHeight = 507
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bt1: TBitBtn
    Left = 484
    Top = 463
    Width = 75
    Height = 25
    Caption = 'Ok'
    Layout = blGlyphBottom
    ModalResult = 1
    Spacing = 3
    TabOrder = 0
    OnClick = bt1Click
  end
  object redt1: TRichEdit
    Left = 8
    Top = 8
    Width = 572
    Height = 449
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redt1')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
end

object FormURL: TFormURL
  Left = 95
  Top = 247
  Caption = 'Ingreso de URL'
  ClientHeight = 99
  ClientWidth = 795
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn1: TPanel
    Left = 0
    Top = 0
    Width = 795
    Height = 40
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object edURL: TEdit
      Left = 10
      Top = 10
      Width = 773
      Height = 21
      TabOrder = 0
    end
  end
end

object FormModoVta: TFormModoVta
  Left = 230
  Top = 77
  Caption = 'Modo de Vta'
  ClientHeight = 502
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 610
    Height = 409
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 471
      Top = 352
      Width = 121
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object lModo: TListBox
      Left = 17
      Top = 17
      Width = 575
      Height = 317
      Style = lbOwnerDrawFixed
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 60
      Items.Strings = (
        'Ticket de Contado'
        'Facturas Cta.Cte'
        'Factura Contado'
        'Nota de Credito'
        'Nota de Credito de Contado')
      ParentFont = False
      TabOrder = 1
      OnClick = lModoClick
    end
  end
  object StandardColorMap1: TStandardColorMap
    HighlightColor = clYellow
    UnusedColor = clWhite
    BtnSelectedColor = clNavy
    MenuColor = clMenu
    SelectedColor = clYellow
    Left = 448
    Top = 240
  end
end

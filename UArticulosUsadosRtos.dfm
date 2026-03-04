object FormArticulosUsadosRtos: TFormArticulosUsadosRtos
  Left = 0
  Top = 0
  Caption = 'Articulos Usados en Rtos'
  ClientHeight = 447
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 417
    Align = alTop
    TabOrder = 0
    DesignSize = (
      818
      417)
    object dbgArticulos: TDBGrid
      Left = 1
      Top = 1
      Width = 816
      Height = 360
      Align = alTop
      DataSource = DSArticulos
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDblClick = dbgArticulosDblClick
    end
    object BitBtn1: TBitBtn
      Left = 730
      Top = 376
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object DSArticulos: TDataSource
    Left = 424
    Top = 240
  end
end

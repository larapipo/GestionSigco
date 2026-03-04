object FormDetalleMovimientosProduccion: TFormDetalleMovimientosProduccion
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Detalle Movimientos Produccion'
  ClientHeight = 723
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 875
    Height = 705
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      875
      705)
    object dbgMovimientos: TDBGrid
      Left = 8
      Top = 10
      Width = 853
      Height = 679
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSMovProduccion
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DSMovProduccion: TDataSource
    Left = 631
    Top = 195
  end
end

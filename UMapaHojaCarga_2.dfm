object FormMapaHojaCarga_2: TFormMapaHojaCarga_2
  Left = 0
  Top = 0
  Caption = 'FormMapaHojaCarga_2'
  ClientHeight = 826
  ClientWidth = 1389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object pnCab: TPanel
    Left = 0
    Top = 0
    Width = 1389
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object TMSFNCDirections1: TTMSFNCDirections
      Left = 360
      Top = 9
      Width = 26
      Height = 26
      Visible = True
      DirectionsRequests = <>
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 785
    Width = 1389
    Height = 41
    Align = alBottom
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
  end
  object pnBase: TPanel
    Left = 0
    Top = 41
    Width = 1389
    Height = 744
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object TMSFNCMaps1: TTMSFNCMaps
      Left = 0
      Top = 0
      Width = 1389
      Height = 744
      AllowFocus = False
      Align = alClient
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 0
      APIKey = 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg'
      Polylines = <>
      Polygons = <>
      Circles = <>
      Rectangles = <>
      Markers = <>
      ElementContainers = <>
      Labels = <>
      HeadLinks = <>
      Options.DefaultLatitude = -38.000000000000000000
      Options.DefaultLongitude = -58.000000000000000000
      Options.DefaultZoomLevel = 10.000000000000000000
    end
  end
end

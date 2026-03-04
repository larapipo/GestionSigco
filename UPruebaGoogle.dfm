object FormTestGoogleMap: TFormTestGoogleMap
  Left = 0
  Top = 0
  Caption = 'FormTestGoogleMap'
  ClientHeight = 715
  ClientWidth = 1246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 512
    Top = 41
    Width = 13
    Height = 674
    ExplicitLeft = 515
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1246
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitTop = 40
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 144
      Height = 39
      Align = alLeft
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object TMSFNCGoogleMaps1: TTMSFNCGoogleMaps
    Left = 0
    Top = 41
    Width = 512
    Height = 674
    Align = alLeft
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 1
    APIKey = 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg'
    Polylines = <>
    Polygons = <>
    Circles = <>
    Rectangles = <>
    Markers = <>
    Options.DefaultLatitude = 40.689247000000000000
    Options.DefaultLongitude = -74.044501999999990000
    Options.DefaultZoomLevel = 12.000000000000000000
    Options.BackgroundColor = clBlack
    Options.DisablePOI = False
    Options.Version = 'weekly'
    ElementContainers = <>
    HeadLinks = <>
    KMLLayers = <>
    Directions = <>
    Clusters = <>
    OverlayViews = <>
    ExplicitHeight = 1246
  end
  object WebBrowser1: TWebBrowser
    Left = 525
    Top = 41
    Width = 721
    Height = 674
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 560
    ExplicitWidth = 686
    ControlData = {
      4C000000844A0000A94500000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end

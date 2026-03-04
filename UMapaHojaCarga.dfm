object FormMapaHojaCarga: TFormMapaHojaCarga
  Left = 0
  Top = 0
  Caption = 'Mapa Hoja Carga'
  ClientHeight = 754
  ClientWidth = 1359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1359
    Height = 41
    Align = alTop
    Caption = 'Detalle de Destribucion'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnPie: TPanel
    Left = 0
    Top = 713
    Width = 1359
    Height = 41
    Align = alBottom
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      1359
      41)
    object btCargarRutas: TButton
      Left = 1218
      Top = 6
      Width = 91
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Cargar Rutas'
      TabOrder = 0
      OnClick = btCargarRutasClick
    end
  end
  object pnMapa: TPanel
    Left = 0
    Top = 41
    Width = 1359
    Height = 672
    Align = alClient
    Caption = 'pnMapa'
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 2
    object TMSFNCMaps1: TTMSFNCMaps
      Left = 5
      Top = 5
      Width = 1349
      Height = 662
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 0
      OnCaptureScreenShot = TMSFNCMaps1CaptureScreenShot
      OnMapInitialized = TMSFNCMaps1MapInitialized
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
      Options.DefaultZoomLevel = 9.000000000000000000
    end
  end
  object TMSFNCDirections1: TTMSFNCDirections
    Left = 632
    Top = 14
    Width = 26
    Height = 26
    Visible = True
    OnGetDirections = TMSFNCDirections1GetDirections
    APIKey = 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg'
    DirectionsRequests = <>
  end
  object BitBtn1: TBitBtn
    Left = 1096
    Top = 719
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object XPColorMap1: TXPColorMap
    HighlightColor = clWhite
    BtnSelectedColor = clBtnFace
    UnusedColor = clWhite
    Left = 1136
    Top = 744
  end
end

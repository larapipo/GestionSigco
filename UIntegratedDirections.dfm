object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'TMS FNC Maps: TTMSFNCGoogleMaps Integrated Directions Demo'
  ClientHeight = 727
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1050
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 38
      Height = 13
      Caption = 'API Key'
    end
    object edAPIKey: TEdit
      Left = 80
      Top = 13
      Width = 801
      Height = 21
      TabOrder = 0
      Text = 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg'
      OnChange = edAPIKeyChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 281
    Height = 678
    Align = alLeft
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Origin'
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 54
      Height = 13
      Caption = 'Destination'
    end
    object Label4: TLabel
      Left = 16
      Top = 96
      Width = 59
      Height = 13
      Caption = 'Travel Mode'
    end
    object Label5: TLabel
      Left = 16
      Top = 139
      Width = 25
      Height = 13
      Caption = 'Color'
    end
    object Label6: TLabel
      Left = 16
      Top = 267
      Width = 32
      Height = 13
      Caption = 'Details'
    end
    object lbDescription: TLabel
      Left = 88
      Top = 267
      Width = 53
      Height = 13
      Caption = 'Description'
    end
    object lbDuration: TLabel
      Left = 88
      Top = 299
      Width = 41
      Height = 13
      Caption = 'Duration'
    end
    object lbDistance: TLabel
      Left = 192
      Top = 299
      Width = 41
      Height = 13
      Caption = 'Distance'
    end
    object Label7: TLabel
      Left = 16
      Top = 332
      Width = 57
      Height = 13
      Caption = 'Instructions'
    end
    object TMSFNCWebBrowser1: TTMSFNCWebBrowser
      Left = 1
      Top = 351
      Width = 279
      Height = 326
      Align = alBottom
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 0
      URL = 
        'data:text/html;charset=utf-8;base64,PCFET0NUWVBFIGh0bWw+PGh0bWwg' +
        'bGFuZz0iZW4iPjxoZWFkPiAgPG1ldGEgY2hhcnNldD0idXRmLTgiPg0gIDxtZXRh' +
        'IGh0dHAtZXF1aXY9IlgtVUEtQ29tcGF0aWJsZSIgY29udGVudD0iSUU9ZWRnZSI+' +
        'DSAgPG1ldGEgbmFtZT0idmlld3BvcnQiIGNvbnRlbnQ9IndpZHRoPWRldmljZS13' +
        'aWR0aCwgaW5pdGlhbC1zY2FsZT0xIj4NICA8dGl0bGU+NDA0IEhUTUwgVGVtcGxh' +
        'dGUgYnkgQ29sb3JsaWI8L3RpdGxlPg0gIDxsaW5rIGhyZWY9Imh0dHBzOi8vZm9u' +
        'dHMuZ29vZ2xlYXBpcy5jb20vY3NzP2ZhbWlseT1Nb250c2VycmF0OjIwMCw0MDAs' +
        'NzAwIiByZWw9InN0eWxlc2hlZXQiPg0gIDxsaW5rIHR5cGU9InRleHQvY3NzIiBy' +
        'ZWw9InN0eWxlc2hlZXQiIGhyZWY9ImNzcy9zdHlsZS5jc3MiIC8+DSAgPHN0eWxl' +
        'Pg0gICogew0gICAgLXdlYmtpdC1ib3gtc2l6aW5nOiBib3JkZXItYm94Ow0gICAg' +
        'ICAgICAgICBib3gtc2l6aW5nOiBib3JkZXItYm94Ow0gIH0NICBodG1sLCBib2R5' +
        'IHsNICAgIGJhY2tncm91bmQ6ICNkN2ViZjY7DSAgICBwYWRkaW5nOiAwOw0gICAg' +
        'Ym9yZGVyOiAjMDAwMDAwOw0gICAgd2lkdGg6IDEwMCU7DSAgICBoZWlnaHQ6IDEw' +
        'MCU7DSAgICBtYXJnaW46IDA7DSAgICBwYWRkaW5nOiAwOw0gICAgYm9yZGVyOiBz' +
        'b2xpZCAjMjExYjE5Ow0gICAgYm9yZGVyLXdpZHRoOiB0aGluOw0gICAgb3ZlcmZs' +
        'b3c6aGlkZGVuOw0gICAgZGlzcGxheTpibG9jazsNICB9DSAgI25vdGZvdW5kIHsN' +
        'ICAgIHBvc2l0aW9uOiByZWxhdGl2ZTsNICAgIGhlaWdodDogMTAwdmg7DSAgfQ0g' +
        'ICNub3Rmb3VuZCAubm90Zm91bmQgew0gICAgcG9zaXRpb246IGFic29sdXRlOw0g' +
        'ICAgbGVmdDogNTAlOw0gICAgdG9wOiA1MCU7DSAgICAtd2Via2l0LXRyYW5zZm9y' +
        'bTogdHJhbnNsYXRlKC01MCUsIC01MCUpOw0gICAgICAgIC1tcy10cmFuc2Zvcm06' +
        'IHRyYW5zbGF0ZSgtNTAlLCAtNTAlKTsNICAgICAgICAgICAgdHJhbnNmb3JtOiB0' +
        'cmFuc2xhdGUoLTUwJSwgLTUwJSk7DSAgfQ0gIC5ub3Rmb3VuZCB7DSAgICBtYXgt' +
        'd2lkdGg6IDUyMHB4Ow0gICAgd2lkdGg6IDEwMCU7DSAgICBsaW5lLWhlaWdodDog' +
        'MS40Ow0gICAgdGV4dC1hbGlnbjogY2VudGVyOw0gIH0NICAubm90Zm91bmQgLm5v' +
        'dGZvdW5kLTQwNCB7DSAgICBwb3NpdGlvbjogcmVsYXRpdmU7DSAgICBoZWlnaHQ6' +
        'IDIwMHB4Ow0gICAgbWFyZ2luOiAwcHggYXV0byAyMHB4Ow0gICAgei1pbmRleDog' +
        'LTE7DSAgfQ0gIC5ub3Rmb3VuZCAubm90Zm91bmQtNDA0IGgyIHsNICAgIGZvbnQt' +
        'ZmFtaWx5OiAnTW9udHNlcnJhdCcsIHNhbnMtc2VyaWY7DSAgICBmb250LXNpemU6' +
        'IDI4cHg7DSAgICBmb250LXdlaWdodDogNDAwOw0gICAgdGV4dC10cmFuc2Zvcm06' +
        'IHVwcGVyY2FzZTsNICAgIGNvbG9yOiAjMjExYjE5Ow0gICAgYmFja2dyb3VuZDog' +
        'I2Q3ZWJmNjsNICAgIHBhZGRpbmc6IDEwcHggNXB4Ow0gICAgbWFyZ2luOiBhdXRv' +
        'Ow0gICAgZGlzcGxheTogaW5saW5lLWJsb2NrOw0gICAgcG9zaXRpb246IGFic29s' +
        'dXRlOw0gICAgYm90dG9tOiAwcHg7DSAgICBsZWZ0OiAwOw0gICAgcmlnaHQ6IDA7' +
        'DSAgfQ0gIEBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1heC13aWR0aDogNzY3cHgp' +
        'IHsNICAgIC5ub3Rmb3VuZCAubm90Zm91bmQtNDA0IGgxIHsNICAgICAgZm9udC1z' +
        'aXplOiAxNDhweDsNICAgIH0NICB9DSAgQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAo' +
        'bWF4LXdpZHRoOiA0ODBweCkgew0gICAgLm5vdGZvdW5kIC5ub3Rmb3VuZC00MDQg' +
        'ew0gICAgICBoZWlnaHQ6IDE0OHB4Ow0gICAgICBtYXJnaW46IDBweCBhdXRvIDEw' +
        'cHg7DSAgICB9DSAgICAubm90Zm91bmQgLm5vdGZvdW5kLTQwNCBoMSB7DSAgICAg' +
        'IGZvbnQtc2l6ZTogODZweDsNICAgIH0NICAgIC5ub3Rmb3VuZCAubm90Zm91bmQt' +
        'NDA0IGgyIHsNICAgICAgZm9udC1zaXplOiAxNnB4Ow0gICAgfQ0gICAgLm5vdGZv' +
        'dW5kIGEgew0gICAgICBwYWRkaW5nOiA3cHggMTVweDsNICAgICAgZm9udC1zaXpl' +
        'OiAxNHB4Ow0gICAgfQ0gIH0NIDwvc3R5bGU+DTwvaGVhZD4NPGJvZHk+DSAgPGRp' +
        'diBpZD0ibm90Zm91bmQiPg0gICAgPGRpdiBjbGFzcz0ibm90Zm91bmQiPg0gICAg' +
        'ICA8ZGl2IGNsYXNzPSJub3Rmb3VuZC00MDQiPg0gICAgICAgIDxoMj5FZGdlIENo' +
        'cm9taXVtICBpcyBzdWNjZXNzZnVsbHkgaW5pdGlhbGl6ZWQhDSAgICAgIDwvZGl2' +
        'Pg0gICAgPC9kaXY+DSAgPC9kaXY+DTwvYm9keT4NPC9odG1sPg=='
    end
    object edOrigin: TEdit
      Left = 88
      Top = 13
      Width = 170
      Height = 21
      TabOrder = 1
      Text = 'New York'
    end
    object edDestination: TEdit
      Left = 88
      Top = 53
      Width = 170
      Height = 21
      TabOrder = 2
      Text = 'Washington DC'
    end
    object cbTravelMode: TComboBox
      Left = 88
      Top = 93
      Width = 170
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'Driving'
      Items.Strings = (
        'Driving'
        'Walking'
        'Bicycling'
        'PublicTransport')
    end
    object btShowDirections: TButton
      Left = 88
      Top = 176
      Width = 170
      Height = 25
      Caption = 'Show Directions'
      TabOrder = 4
      OnClick = btShowDirectionsClick
    end
    object btClearDirections: TButton
      Left = 88
      Top = 216
      Width = 170
      Height = 25
      Caption = 'Clear Directions'
      TabOrder = 5
      OnClick = btClearDirectionsClick
    end
    object cbColor: TComboBox
      Left = 88
      Top = 136
      Width = 170
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 6
      Text = 'Blue'
      Items.Strings = (
        'Blue'
        'Red')
    end
  end
  object TMSFNCGoogleMaps1: TTMSFNCGoogleMaps
    Left = 281
    Top = 49
    Width = 769
    Height = 678
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 2
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
    Options.Version = 'beta'
    ElementContainers = <>
    HeadLinks = <>
    OnRetrievedDirectionsData = TMSFNCGoogleMaps1RetrievedDirectionsData
    KMLLayers = <>
    Directions = <>
    Clusters = <>
    OverlayViews = <>
  end
end

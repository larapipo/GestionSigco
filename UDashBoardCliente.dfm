object FormDashBoardCliente: TFormDashBoardCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'DashBoard'
  ClientHeight = 663
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 353
    Width = 786
    Height = 9
    Cursor = crVSplit
    Align = alTop
    Color = clHighlight
    ParentColor = False
    ExplicitWidth = 872
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 353
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 876
    object ChartAnio_1: TTMSFNCChart
      Left = 1
      Top = 1
      Width = 784
      Height = 351
      Appearance.ColorList = <
        item
          Color = 16105559
        end
        item
          Color = 5644279
        end
        item
          Color = 7936771
        end
        item
          Color = 12275349
        end
        item
          Color = 1296366
        end
        item
          Color = 4350195
        end
        item
          Color = 16544551
        end
        item
          Color = 5820321
        end
        item
          Color = 10922240
        end
        item
          Color = 16376965
        end>
      Appearance.GlobalFont.Color = -1
      Appearance.GlobalFont.Scale = 1.000000000000000000
      Appearance.GlobalFont.Style = []
      Appearance.ColorScheme = ccsColorList
      Appearance.MonochromeColor = 11829830
      ClickMargin = 10.000000000000000000
      Legend.Fill.Color = 16775416
      Legend.Stroke.Color = clGray
      Legend.Font.Charset = DEFAULT_CHARSET
      Legend.Font.Color = clWindowText
      Legend.Font.Height = -11
      Legend.Font.Name = 'Tahoma'
      Legend.Font.Style = []
      Legend.Left = -16.000000000000000000
      Legend.Position = lpTopRight
      Legend.Top = 10.000000000000000000
      Stroke.Color = clGray
      SeriesMargins.Left = 9
      SeriesMargins.Top = 20
      SeriesMargins.Right = 20
      SeriesMargins.Bottom = 0
      Series = <
        item
          AnimationFactor = 4.000000000000000000
          AutoYRange = arCommonZeroBased
          Bar.Width = 65.000000000000000000
          Bar.Spacing = 19.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 200.000000000000000000
          Pie.Margins.Left = 10
          Pie.Margins.Top = 10
          Pie.Margins.Right = 10
          Pie.Margins.Bottom = 10
          Pie.SweepAngle = 360.000000000000000000
          ChartType = ctBar
          Fill.Color = 16105559
          LegendText = 'Series 0'
          Labels.Fill.Kind = gfkNone
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clWindowText
          Labels.Font.Height = -11
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = ',0.00;-,0.00;-'
          Labels.FormatType = vftFloat
          Labels.OffsetY = -10.000000000000000000
          Labels.Stroke.Kind = gskNone
          Labels.Stroke.Color = clGray
          Labels.Visible = True
          Markers.Fill.Color = 16105559
          Markers.Height = 10.000000000000000000
          Markers.Stroke.Color = 8020012
          Markers.Width = 10.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxXOffsetPercentage = 4.000000000000000000
          MinXOffsetPercentage = 3.000000000000000000
          Offset3DX = 15.000000000000000000
          Offset3DY = 16.000000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 64.000000000000000000
              YValueSecond = 55.000000000000000000
              YValueVariable = 66.000000000000000000
              YValueLow = 30.000000000000000000
              YValueClose = 32.000000000000000000
              YValueHigh = 64.000000000000000000
              YValueOpen = 56.000000000000000000
              YValueMedian = 61.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 54.000000000000000000
              YValueSecond = 43.000000000000000000
              YValueVariable = 54.000000000000000000
              YValueLow = 22.000000000000000000
              YValueClose = 27.000000000000000000
              YValueHigh = 54.000000000000000000
              YValueOpen = 23.000000000000000000
              YValueMedian = 56.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 41.000000000000000000
              YValueSecond = 23.000000000000000000
              YValueVariable = 41.000000000000000000
              YValueLow = 14.000000000000000000
              YValueClose = 20.000000000000000000
              YValueHigh = 41.000000000000000000
              YValueOpen = 34.000000000000000000
              YValueMedian = 41.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 55.000000000000000000
              YValueSecond = 38.000000000000000000
              YValueVariable = 55.000000000000000000
              YValueLow = 27.000000000000000000
              YValueClose = 50.000000000000000000
              YValueHigh = 55.000000000000000000
              YValueOpen = 54.000000000000000000
              YValueMedian = 54.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 68.000000000000000000
              YValueSecond = 57.000000000000000000
              YValueVariable = 68.000000000000000000
              YValueLow = 22.000000000000000000
              YValueClose = 35.000000000000000000
              YValueHigh = 68.000000000000000000
              YValueOpen = 40.000000000000000000
              YValueMedian = 64.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 99.000000000000000000
              YValueSecond = 82.000000000000000000
              YValueVariable = 99.000000000000000000
              YValueLow = 58.000000000000000000
              YValueClose = 95.000000000000000000
              YValueHigh = 99.000000000000000000
              YValueOpen = 95.000000000000000000
              YValueMedian = 98.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 37.000000000000000000
              YValueSecond = 26.000000000000000000
              YValueVariable = 37.000000000000000000
              YValueLow = 13.000000000000000000
              YValueClose = 25.000000000000000000
              YValueHigh = 37.000000000000000000
              YValueOpen = 28.000000000000000000
              YValueMedian = 33.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 54.000000000000000000
              YValueSecond = 41.000000000000000000
              YValueVariable = 54.000000000000000000
              YValueLow = 15.000000000000000000
              YValueClose = 35.000000000000000000
              YValueHigh = 54.000000000000000000
              YValueOpen = 47.000000000000000000
              YValueMedian = 51.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 1000.000000000000000000
              YValueSecond = 37.000000000000000000
              YValueVariable = 49.000000000000000000
              YValueLow = 22.000000000000000000
              YValueClose = 42.000000000000000000
              YValueHigh = 1000.000000000000000000
              YValueOpen = 38.000000000000000000
              YValueMedian = 46.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 77.000000000000000000
              YValueSecond = 64.000000000000000000
              YValueVariable = 77.000000000000000000
              YValueLow = 43.000000000000000000
              YValueClose = 60.000000000000000000
              YValueHigh = 77.000000000000000000
              YValueOpen = 63.000000000000000000
              YValueMedian = 73.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 68.000000000000000000
              YValueSecond = 52.000000000000000000
              YValueVariable = 68.000000000000000000
              YValueLow = 26.000000000000000000
              YValueClose = 29.000000000000000000
              YValueHigh = 68.000000000000000000
              YValueOpen = 43.000000000000000000
              YValueMedian = 63.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 16105559
          XGrid.Visible = True
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clWindowText
          XValues.MajorUnitFont.Height = -11
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 5.000000000000000000
          XValues.MajorUnitTickMarkSize = 10.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clWindowText
          XValues.MinorUnitFont.Height = -11
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 5.000000000000000000
          XValues.MinorUnitTickMarkSize = 7.000000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clWindowText
          XValues.Title.Font.Height = -11
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'X-Axis Series 1'
          YGrid.Visible = True
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clWindowText
          YValues.MajorUnitFont.Height = -11
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 5.000000000000000000
          YValues.MajorUnitTickMarkSize = 10.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clWindowText
          YValues.MinorUnitFont.Height = -11
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 5.000000000000000000
          YValues.MinorUnitTickMarkSize = 7.000000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clWindowText
          YValues.Title.Font.Height = -11
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis Series 1'
          Crosshair.XTextStroke.Color = 16105559
          Crosshair.XTextFill.Color = 16105559
          Crosshair.XTextFont.Charset = DEFAULT_CHARSET
          Crosshair.XTextFont.Color = clWhite
          Crosshair.XTextFont.Height = -11
          Crosshair.XTextFont.Name = 'Segoe UI'
          Crosshair.XTextFont.Style = []
          Crosshair.YTextStroke.Color = 16105559
          Crosshair.YTextFill.Color = 16105559
          Crosshair.YTextFont.Charset = DEFAULT_CHARSET
          Crosshair.YTextFont.Color = clWhite
          Crosshair.YTextFont.Height = -11
          Crosshair.YTextFont.Name = 'Segoe UI'
          Crosshair.YTextFont.Style = []
          Crosshair.HorizontalLineStroke.Color = 16105559
          Crosshair.VerticalLineStroke.Color = 16105559
        end
        item
          AnimationFactor = 4.000000000000000000
          AutoYRange = arCommonZeroBased
          Bar.Width = 65.000000000000000000
          Bar.Spacing = 20.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 200.000000000000000000
          Pie.Margins.Left = 10
          Pie.Margins.Top = 10
          Pie.Margins.Right = 10
          Pie.Margins.Bottom = 10
          Pie.SweepAngle = 360.000000000000000000
          ChartType = ctBar
          Fill.Color = 5644279
          LegendText = 'Series 1'
          Labels.Fill.Kind = gfkNone
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clWindowText
          Labels.Font.Height = -11
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -9.000000000000000000
          Labels.Stroke.Kind = gskNone
          Labels.Stroke.Color = clGray
          Labels.Stroke.Width = -1.000000000000000000
          Labels.Visible = True
          Markers.Fill.Color = 5644279
          Markers.Height = 10.000000000000000000
          Markers.Stroke.Color = 2822268
          Markers.Width = 6.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 107.000000000000000000
              YValueSecond = 95.000000000000000000
              YValueVariable = 107.000000000000000000
              YValueLow = 46.000000000000000000
              YValueClose = 99.000000000000000000
              YValueHigh = 107.000000000000000000
              YValueOpen = 79.000000000000000000
              YValueMedian = 107.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 106.000000000000000000
              YValueSecond = 90.000000000000000000
              YValueVariable = 106.000000000000000000
              YValueLow = 38.000000000000000000
              YValueClose = 87.000000000000000000
              YValueHigh = 106.000000000000000000
              YValueOpen = 53.000000000000000000
              YValueMedian = 110.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 109.000000000000000000
              YValueSecond = 97.000000000000000000
              YValueVariable = 109.000000000000000000
              YValueLow = 39.000000000000000000
              YValueClose = 46.000000000000000000
              YValueHigh = 109.000000000000000000
              YValueOpen = 61.000000000000000000
              YValueMedian = 104.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 21.000000000000000000
              YValueSecond = 2.000000000000000000
              YValueVariable = 21.000000000000000000
              YValueLow = 1.000000000000000000
              YValueClose = 20.000000000000000000
              YValueHigh = 21.000000000000000000
              YValueOpen = 8.000000000000000000
              YValueMedian = 24.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 122.000000000000000000
              YValueSecond = 110.000000000000000000
              YValueVariable = 122.000000000000000000
              YValueLow = 66.000000000000000000
              YValueClose = 102.000000000000000000
              YValueHigh = 122.000000000000000000
              YValueOpen = 87.000000000000000000
              YValueMedian = 119.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 31.000000000000000000
              YValueSecond = 13.000000000000000000
              YValueVariable = 31.000000000000000000
              YValueLow = 12.000000000000000000
              YValueClose = 17.000000000000000000
              YValueHigh = 31.000000000000000000
              YValueOpen = 28.000000000000000000
              YValueMedian = 31.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 57.000000000000000000
              YValueSecond = 45.000000000000000000
              YValueVariable = 57.000000000000000000
              YValueLow = 27.000000000000000000
              YValueClose = 51.000000000000000000
              YValueHigh = 57.000000000000000000
              YValueOpen = 39.000000000000000000
              YValueMedian = 59.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 75.000000000000000000
              YValueSecond = 57.000000000000000000
              YValueVariable = 75.000000000000000000
              YValueLow = 36.000000000000000000
              YValueClose = 61.000000000000000000
              YValueHigh = 75.000000000000000000
              YValueOpen = 59.000000000000000000
              YValueMedian = 78.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 105.000000000000000000
              YValueSecond = 92.000000000000000000
              YValueVariable = 105.000000000000000000
              YValueLow = 41.000000000000000000
              YValueClose = 60.000000000000000000
              YValueHigh = 105.000000000000000000
              YValueOpen = 55.000000000000000000
              YValueMedian = 108.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 59.000000000000000000
              YValueSecond = 44.000000000000000000
              YValueVariable = 59.000000000000000000
              YValueLow = 19.000000000000000000
              YValueClose = 55.000000000000000000
              YValueHigh = 59.000000000000000000
              YValueOpen = 35.000000000000000000
              YValueMedian = 61.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 107.000000000000000000
              YValueSecond = 95.000000000000000000
              YValueVariable = 107.000000000000000000
              YValueLow = 34.000000000000000000
              YValueClose = 89.000000000000000000
              YValueHigh = 107.000000000000000000
              YValueOpen = 43.000000000000000000
              YValueMedian = 106.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 5644279
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clWindowText
          XValues.MajorUnitFont.Height = -11
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 5.000000000000000000
          XValues.MajorUnitTickMarkSize = 10.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clWindowText
          XValues.MinorUnitFont.Height = -11
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 5.000000000000000000
          XValues.MinorUnitTickMarkSize = 7.000000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clWindowText
          XValues.Title.Font.Height = -11
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'X-Axis Series 2'
          XValues.Positions = []
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clWindowText
          YValues.MajorUnitFont.Height = -11
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 5.000000000000000000
          YValues.MajorUnitTickMarkSize = 10.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clWindowText
          YValues.MinorUnitFont.Height = -11
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 5.000000000000000000
          YValues.MinorUnitTickMarkSize = 7.000000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clWindowText
          YValues.Title.Font.Height = -11
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis Series 2'
          YValues.Positions = []
          Crosshair.XTextStroke.Color = 5644279
          Crosshair.XTextFill.Color = 5644279
          Crosshair.XTextFont.Charset = DEFAULT_CHARSET
          Crosshair.XTextFont.Color = clWhite
          Crosshair.XTextFont.Height = -11
          Crosshair.XTextFont.Name = 'Segoe UI'
          Crosshair.XTextFont.Style = []
          Crosshair.YTextStroke.Color = 5644279
          Crosshair.YTextFill.Color = 5644279
          Crosshair.YTextFont.Charset = DEFAULT_CHARSET
          Crosshair.YTextFont.Color = clWhite
          Crosshair.YTextFont.Height = -11
          Crosshair.YTextFont.Name = 'Segoe UI'
          Crosshair.YTextFont.Style = []
          Crosshair.HorizontalLineStroke.Color = 5644279
          Crosshair.VerticalLineStroke.Color = 5644279
        end>
      Title.Fill.Kind = gfkNone
      Title.Fill.Color = 16775416
      Title.Stroke.Color = clGray
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clWindowText
      Title.Font.Height = -11
      Title.Font.Name = 'Tahoma'
      Title.Font.Style = []
      Title.Height = 35.000000000000000000
      Title.Line = False
      Title.TextMargins.Left = 3
      Title.TextMargins.Top = 3
      Title.TextMargins.Right = 3
      Title.TextMargins.Bottom = 3
      Title.Text = 'Ventas'
      XAxis.Fill.Kind = gfkNone
      XAxis.Fill.Color = 16775416
      XAxis.Stroke.Color = clGray
      XAxis.Height = 35.000000000000000000
      YAxis.Fill.Kind = gfkNone
      YAxis.Fill.Color = 16775416
      YAxis.Stroke.Color = clGray
      YAxis.Width = 35.000000000000000000
      DefaultLoadOptions.XValuesFormatString = '%.0f'
      DefaultLoadOptions.YValuesFormatString = '%.2f'
      DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 874
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 362
    Width = 786
    Height = 301
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 876
    DesignSize = (
      786
      301)
    object Label1: TLabel
      Left = 352
      Top = 24
      Width = 67
      Height = 15
      Caption = 'N.de Credito'
    end
    object Label2: TLabel
      Left = 504
      Top = 24
      Width = 67
      Height = 15
      Caption = 'N.de Credito'
    end
    object lbNc_1: TLabel
      Left = 385
      Top = 45
      Width = 35
      Height = 15
      Caption = 'lbNc_1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNc_2: TLabel
      Left = 537
      Top = 45
      Width = 35
      Height = 15
      Caption = 'Label3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbAnio1: TLabel
      Left = 376
      Top = 6
      Width = 44
      Height = 17
      Caption = 'Label3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbAnio2: TLabel
      Left = 528
      Top = 6
      Width = 44
      Height = 17
      Caption = 'Label3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter
      Left = 136
      Top = 32
      Width = 26
      Height = 26
      Visible = True
      AutoCreateSeries = False
      Source.DataSource = DSVentas_1
      Source.Series = <
        item
          YValue = 'TOTAL_VTAS'
          XValue = 'MES'
          XLabel = 'MES'
        end>
    end
    object btVer: TButton
      Left = 590
      Top = 255
      Width = 75
      Height = 27
      Action = Ver
      Anchors = [akRight, akBottom]
      TabOrder = 1
      ExplicitLeft = 680
    end
    object sgVentas: TAdvStringGrid
      Left = 1
      Top = 1
      Width = 264
      Height = 299
      Align = alLeft
      Ctl3D = True
      DrawingStyle = gdsClassic
      FixedColor = clWhite
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goFixedRowDefAlign]
      ParentCtl3D = False
      TabOrder = 2
      GridLineColor = 13948116
      GridFixedLineColor = 11250603
      GridFixedLineWidth = 0
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = 4474440
      ActiveCellFont.Height = -12
      ActiveCellFont.Name = 'Segoe UI'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 11565130
      ActiveCellColorTo = 11565130
      BorderColor = 11250603
      ControlLook.FixedGradientFrom = clWhite
      ControlLook.FixedGradientTo = clWhite
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientHoverMirrorFrom = clWhite
      ControlLook.FixedGradientHoverMirrorTo = clWhite
      ControlLook.FixedGradientHoverBorder = 11645361
      ControlLook.FixedGradientDownFrom = clWhite
      ControlLook.FixedGradientDownTo = clWhite
      ControlLook.FixedGradientDownMirrorFrom = clWhite
      ControlLook.FixedGradientDownMirrorTo = clWhite
      ControlLook.FixedGradientDownBorder = 11250603
      ControlLook.ControlStyle = csClassic
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Segoe UI'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Segoe UI'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -12
      FilterDropDown.Font.Name = 'Segoe UI'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = 3881787
      FixedFont.Height = -11
      FixedFont.Name = 'Segoe UI'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      FormatType = ftExcel
      HoverButtons.Buttons = <>
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glCustom
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -12
      PrintSettings.Font.Name = 'Segoe UI'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -12
      PrintSettings.FixedFont.Name = 'Segoe UI'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -12
      PrintSettings.HeaderFont.Name = 'Segoe UI'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -12
      PrintSettings.FooterFont.Name = 'Segoe UI'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.ColorTo = clNone
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -12
      SearchFooter.Font.Name = 'Segoe UI'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SelectionColor = 13744549
      SortSettings.HeaderColor = clWhite
      SortSettings.HeaderColorTo = clWhite
      SortSettings.HeaderMirrorColor = clWhite
      SortSettings.HeaderMirrorColorTo = clWhite
      Version = '8.7.2.7'
      ColWidths = (
        64
        84
        83
        64
        64)
      RowHeights = (
        22
        22
        22
        22
        22
        22
        22
        22
        22
        22)
    end
    object btSalir: TBitBtn
      Left = 675
      Top = 255
      Width = 75
      Height = 27
      Hint = 'Cerrar la ventana actual'
      Anchors = [akRight, akBottom]
      Caption = '&Salir'
      Default = True
      Glyph.Data = {
        56070000424D5607000000000000360400002800000028000000140000000100
        0800000000002003000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030707070707
        070707070707070707070707070703FFFFFFFFFFFFFFFFFFFFFFFF0303030303
        03FFF8F8F8F8F8F8F8F8F8F8F8F8FF07FF07FF07F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8030303030303F8F8F8F8F8F8F8F8F8F8F8F8F80707FF07FF07F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8FF030303FFFFF8F8F80404040404040000F8F8F8FFFFFF
        040404040404F8F8F8F8F8F8F8F8F8F8F8030303F8F8F8F8F803030303030304
        FD05000007FFFFFF0403030303030303030303F8FFF8F8F8FF030303F8FF0303
        030303030303030405FD0500FFFFFFFF0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FFFFFFFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FEFFFEFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FEFFFEFF0403030303030303
        030303F8FFF8FFF8FFFFFFFFF8FF030303030303030303040404040404040404
        0403030303030303030303F8F8F8F8F8F8F8F8F8F80303030303030303030303
        03030303030303030303030303030303030303030303FFFFFFFFFFFF03030303
        0303030303030303030000000000000303030303030303030303030303F8F8F8
        F8F8F8FF0303030303030303030303030300FAFAFAFA00030303030303030303
        0303030303F8FFFFFFFFF8FF0303030303030303030303030300000000000003
        03030303030303030303030303F8F8F8F8F8F803030303030303}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btSalirClick
      ExplicitLeft = 780
    end
  end
  object QVentas_1: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from operaciones_por_cliente_anual(:cliente,:anio)')
    Left = 40
    Top = 456
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = '000012'
      end
      item
        Name = 'ANIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2023
      end>
  end
  object CDSVentas_1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Size = 6
        Value = '000012'
      end
      item
        DataType = ftInteger
        Name = 'ANIO'
        ParamType = ptInput
        Value = 2023
      end>
    ProviderName = 'DSPVentas_1'
    Left = 200
    Top = 456
    object CDSVentas_1SUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSVentas_1NOMBRESUCURSAL: TStringField
      FieldName = 'NOMBRESUCURSAL'
      Origin = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSVentas_1MES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSVentas_1TOTAL_VTAS_CTDO_GRAVADO: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO_GRAVADO'
      Origin = 'TOTAL_VTAS_CTDO_GRAVADO'
    end
    object CDSVentas_1TOTAL_VTAS_CTDO_EXENTO: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO_EXENTO'
      Origin = 'TOTAL_VTAS_CTDO_EXENTO'
    end
    object CDSVentas_1TOTAL_VTAS_CTDO_IVA: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO_IVA'
      Origin = 'TOTAL_VTAS_CTDO_IVA'
    end
    object CDSVentas_1TOTAL_VTAS_CTDO: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO'
      Origin = 'TOTAL_VTAS_CTDO'
    end
    object CDSVentas_1TOTAL_VTAS_CC_GRAVDADO: TFloatField
      FieldName = 'TOTAL_VTAS_CC_GRAVDADO'
      Origin = 'TOTAL_VTAS_CC_GRAVDADO'
    end
    object CDSVentas_1TOTAL_VTAS_CC_EXENTO: TFloatField
      FieldName = 'TOTAL_VTAS_CC_EXENTO'
      Origin = 'TOTAL_VTAS_CC_EXENTO'
    end
    object CDSVentas_1TOTAL_VTAS_CC_IVA: TFloatField
      FieldName = 'TOTAL_VTAS_CC_IVA'
      Origin = 'TOTAL_VTAS_CC_IVA'
    end
    object CDSVentas_1TOTAL_VTAS_CC: TFloatField
      FieldName = 'TOTAL_VTAS_CC'
      Origin = 'TOTAL_VTAS_CC'
    end
    object CDSVentas_1TOTAL_VTAS_NCREDITO_GRAVADO: TFloatField
      FieldName = 'TOTAL_VTAS_NCREDITO_GRAVADO'
      Origin = 'TOTAL_VTAS_NCREDITO_GRAVADO'
    end
    object CDSVentas_1TOTAL_VTAS_NCREDITO_EXENTO: TFloatField
      FieldName = 'TOTAL_VTAS_NCREDITO_EXENTO'
      Origin = 'TOTAL_VTAS_NCREDITO_EXENTO'
    end
    object CDSVentas_1TOTAL_VTAS_NCREDITO_IVA: TFloatField
      FieldName = 'TOTAL_VTAS_NCREDITO_IVA'
      Origin = 'TOTAL_VTAS_NCREDITO_IVA'
    end
    object CDSVentas_1TOTAL_VTAS_NCREDITO: TFloatField
      FieldName = 'TOTAL_VTAS_NCREDITO'
      Origin = 'TOTAL_VTAS_NCREDITO'
    end
    object CDSVentas_1TOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_GRAVAD'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_GRAVAD'
    end
    object CDSVentas_1TOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_EXENTO'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_EXENTO'
    end
    object CDSVentas_1TOTAL_VTAS_CTDO_NCREDITO_IVA: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO_IVA'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO_IVA'
    end
    object CDSVentas_1TOTAL_VTAS_CTDO_NCREDITO: TFloatField
      FieldName = 'TOTAL_VTAS_CTDO_NCREDITO'
      Origin = 'TOTAL_VTAS_CTDO_NCREDITO'
    end
    object CDSVentas_1TOTAL_ANULACIONES: TFloatField
      FieldName = 'TOTAL_ANULACIONES'
      Origin = 'TOTAL_ANULACIONES'
    end
    object CDSVentas_1TOTAL_COBRANZAS: TFloatField
      FieldName = 'TOTAL_COBRANZAS'
      Origin = 'TOTAL_COBRANZAS'
    end
    object CDSVentas_1TOTAL_VTAS: TFloatField
      FieldName = 'TOTAL_VTAS'
      Origin = 'TOTAL_VTAS'
    end
    object CDSVentas_1TOTAL_INGRESOS: TFloatField
      FieldName = 'TOTAL_INGRESOS'
      Origin = 'TOTAL_INGRESOS'
    end
    object CDSVentas_1TOTAL_VTAS_NDEBITO_GRAVADO: TFloatField
      FieldName = 'TOTAL_VTAS_NDEBITO_GRAVADO'
      Origin = 'TOTAL_VTAS_NDEBITO_GRAVADO'
    end
    object CDSVentas_1TOTAL_VTAS_NDEBITO_EXENTO: TFloatField
      FieldName = 'TOTAL_VTAS_NDEBITO_EXENTO'
      Origin = 'TOTAL_VTAS_NDEBITO_EXENTO'
    end
    object CDSVentas_1TOTAL_VTAS_NDEBITO_IVA: TFloatField
      FieldName = 'TOTAL_VTAS_NDEBITO_IVA'
      Origin = 'TOTAL_VTAS_NDEBITO_IVA'
    end
    object CDSVentas_1TOTAL_VTAS_NDEBITO: TFloatField
      FieldName = 'TOTAL_VTAS_NDEBITO'
      Origin = 'TOTAL_VTAS_NDEBITO'
    end
    object CDSVentas_1TOTAL_RTOS: TFloatField
      FieldName = 'TOTAL_RTOS'
      Origin = 'TOTAL_RTOS'
    end
  end
  object DSPVentas_1: TDataSetProvider
    DataSet = QVentas_1
    Left = 120
    Top = 464
  end
  object DSVentas_1: TDataSource
    DataSet = CDSVentas_1
    Left = 256
    Top = 472
  end
  object ActionList1: TActionList
    Left = 440
    Top = 312
    object Ver: TAction
      Caption = 'Ver'
      OnExecute = VerExecute
    end
  end
end

object FormAnalisisEgresosIngresos: TFormAnalisisEgresosIngresos
  Left = 433
  Top = 167
  Caption = 'An'#225'lisis de Ingresos y Egresos'
  ClientHeight = 635
  ClientWidth = 1159
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1159
    Height = 635
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 721
    ExplicitHeight = 504
    object Splitter2: TSplitter
      Left = 1
      Top = 348
      Width = 1157
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 1
      ExplicitWidth = 285
    end
    object Panel2: TPanel
      Left = 1
      Top = 353
      Width = 1157
      Height = 281
      Align = alBottom
      Caption = 'Panel2'
      TabOrder = 0
      ExplicitLeft = 32
      ExplicitTop = 268
      ExplicitWidth = 604
      object Splitter1: TSplitter
        Left = 226
        Top = 1
        Height = 279
        ExplicitLeft = 257
        ExplicitTop = 0
      end
      object DBChart3: TDBChart
        Left = 1
        Top = 1
        Width = 225
        Height = 279
        Gradient.EndColor = clWhite
        Gradient.StartColor = clGradientActiveCaption
        Gradient.Visible = True
        MarginLeft = 10
        MarginRight = 10
        Title.Font.Color = clBlack
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'Ingreso del Efectivo por')
        Chart3DPercent = 35
        LeftAxis.Visible = False
        Legend.ColorWidth = 5
        Legend.ResizeChart = False
        Legend.Symbol.Width = 5
        Legend.TopPos = 1
        Legend.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Zoom.Pen.Mode = pmNotXor
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = -2
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series3: TBarSeries
          HoverElement = []
          ColorEachPoint = True
          Marks.Style = smsValue
          Marks.Callout.Length = 5
          DataSource = CDSDetalleIngresos
          ValueFormat = '#,##0.00'
          XLabelsSource = 'DETALLE'
          BarWidthPercent = 50
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'SUM'
        end
      end
      object DBChart4: TDBChart
        Left = 229
        Top = 1
        Width = 927
        Height = 279
        Gradient.EndColor = clWhite
        Gradient.StartColor = clGradientActiveCaption
        Gradient.Visible = True
        MarginLeft = 5
        MarginRight = 5
        Title.Alignment = taLeftJustify
        Title.Font.Color = clBlack
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'Egresos en Efectivo')
        Chart3DPercent = 25
        LeftAxis.Axis.Width = 1
        LeftAxis.ExactDateTime = False
        LeftAxis.LabelsSize = 2
        LeftAxis.MinorTickCount = 1
        LeftAxis.MinorTickLength = 1
        LeftAxis.TickLength = 0
        LeftAxis.TitleSize = 1
        LeftAxis.Visible = False
        Legend.ColorWidth = 5
        Legend.HorizMargin = 3
        Legend.ResizeChart = False
        Legend.Shadow.HorizSize = 1
        Legend.Shadow.VertSize = 1
        Legend.Symbol.Width = 5
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 0
        Legend.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Zoom.Pen.Mode = pmNotXor
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 115
        ExplicitTop = 33
        ExplicitWidth = 489
        ExplicitHeight = 248
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object BarSeries1: TBarSeries
          HoverElement = []
          ColorEachPoint = True
          Marks.Style = smsValue
          Marks.Callout.Length = 5
          DataSource = CDSEgresoEfectivo
          Title = 'Efectivo Salida'
          ValueFormat = '#,##0.00'
          XLabelsSource = 'DETALLE'
          BarStyle = bsRectGradient
          BarWidthPercent = 40
          MultiBar = mbNone
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loDescending
          YValues.ValueSource = 'SUM_1'
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1157
      Height = 347
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      ExplicitLeft = 14
      ExplicitTop = 13
      ExplicitWidth = 643
      ExplicitHeight = 249
      object Splitter3: TSplitter
        Left = 354
        Top = 1
        Height = 345
        ExplicitLeft = 424
        ExplicitTop = 88
        ExplicitHeight = 100
      end
      object DBChart1: TDBChart
        Left = 1
        Top = 1
        Width = 353
        Height = 345
        AllowPanning = pmNone
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Gradient.EndColor = clGradientActiveCaption
        Gradient.Visible = True
        Title.Font.Color = clBlack
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'Composicion de Los Ingresos')
        AxisVisible = False
        Chart3DPercent = 25
        ClipPoints = False
        Frame.Visible = False
        Legend.ColorWidth = 5
        Legend.ResizeChart = False
        Legend.Shadow.HorizSize = 1
        Legend.Shadow.VertSize = 1
        Legend.Symbol.Width = 5
        Legend.TopPos = 4
        Legend.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DOptions.Zoom = 96
        View3DWalls = False
        Zoom.Allow = False
        Zoom.Pen.Mode = pmNotXor
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 91
        ExplicitTop = -11
        ExplicitHeight = 257
        DesignSize = (
          353
          345)
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Label1: TLabel
          Left = 48
          Top = 292
          Width = 31
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Desde'
          Transparent = True
          ExplicitTop = 276
        end
        object Label2: TLabel
          Left = 152
          Top = 293
          Width = 28
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Hasta'
          Transparent = True
          ExplicitTop = 277
        end
        object SpeedButton1: TSpeedButton
          Left = 270
          Top = 305
          Width = 23
          Height = 22
          Anchors = [akLeft, akBottom]
          Glyph.Data = {
            BE060000424DBE06000000000000360400002800000024000000120000000100
            0800000000008802000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            03030303030303030303030303030303030303030303FF030303030303030303
            03030303030303040403030303030303030303030303030303F8F8FF03030303
            03030303030303030303040202040303030303030303030303030303F80303F8
            FF030303030303030303030303040202020204030303030303030303030303F8
            03030303F8FF0303030303030303030304020202020202040303030303030303
            0303F8030303030303F8FF030303030303030304020202FA0202020204030303
            0303030303F8FF0303F8FF030303F8FF03030303030303020202FA03FA020202
            040303030303030303F8FF03F803F8FF0303F8FF03030303030303FA02FA0303
            03FA0202020403030303030303F8FFF8030303F8FF0303F8FF03030303030303
            FA0303030303FA0202020403030303030303F80303030303F8FF0303F8FF0303
            0303030303030303030303FA0202020403030303030303030303030303F8FF03
            03F8FF03030303030303030303030303FA020202040303030303030303030303
            0303F8FF0303F8FF03030303030303030303030303FA02020204030303030303
            03030303030303F8FF0303F8FF03030303030303030303030303FA0202020403
            030303030303030303030303F8FF0303F8FF03030303030303030303030303FA
            0202040303030303030303030303030303F8FF03F8FF03030303030303030303
            03030303FA0202030303030303030303030303030303F8FFF803030303030303
            030303030303030303FA0303030303030303030303030303030303F803030303
            0303030303030303030303030303030303030303030303030303030303030303
            0303}
          NumGlyphs = 2
          OnClick = SpeedButton1Click
          ExplicitTop = 289
        end
        object UpDown1: TUpDown
          Left = 251
          Top = 306
          Width = 16
          Height = 20
          Hint = 'Cambia el Per'#237'odo'
          Anchors = [akLeft, akBottom]
          Max = 10000
          ParentShowHint = False
          Position = 100
          ShowHint = True
          TabOrder = 2
          OnClick = UpDown1Click
          ExplicitTop = 290
        end
        object Desde: TJvDateEdit
          Left = 48
          Top = 306
          Width = 97
          Height = 21
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          Anchors = [akLeft, akBottom]
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 0
          ExplicitTop = 290
        end
        object Hasta: TJvDateEdit
          Left = 152
          Top = 306
          Width = 97
          Height = 21
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          Anchors = [akLeft, akBottom]
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 1
          ExplicitTop = 290
        end
        object Series1: TPieSeries
          HoverElement = []
          Marks.Style = smsLabelValue
          Marks.Callout.Length = 5
          Marks.Tail.Margin = 2
          DataSource = CDSDetalleIngresos
          Title = 'Ingresos'
          ValueFormat = '#,##0.00'
          XLabelsSource = 'DETALLE'
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          YValues.ValueSource = 'SUM'
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
        end
      end
      object DBChart2: TDBChart
        Left = 357
        Top = 1
        Width = 799
        Height = 345
        Gradient.EndColor = clGradientActiveCaption
        Gradient.Visible = True
        Title.Alignment = taLeftJustify
        Title.Font.Color = clBlack
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'Composicion de los Egresos')
        Chart3DPercent = 25
        LeftAxis.MinorTickCount = 1
        LeftAxis.MinorTickLength = 1
        LeftAxis.TickLength = 0
        LeftAxis.Visible = False
        Legend.ColorWidth = 5
        Legend.HorizMargin = 3
        Legend.ResizeChart = False
        Legend.Shadow.HorizSize = 1
        Legend.Shadow.VertSize = 1
        Legend.Symbol.Width = 5
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 0
        Legend.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Zoom.Pen.Mode = pmNotXor
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 283
        ExplicitTop = 0
        ExplicitWidth = 360
        ExplicitHeight = 249
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series2: TBarSeries
          HoverElement = []
          ColorEachPoint = True
          Marks.Style = smsValue
          Marks.Callout.Length = 5
          DataSource = CDSEgresos
          Title = 'Egresos'
          ValueFormat = '#,##0.00'
          XLabelsSource = 'DETALLE'
          BarWidthPercent = 30
          MultiBar = mbNone
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loDescending
          YValues.ValueSource = 'SUM_1'
        end
      end
    end
  end
  object CDSIngresos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIngresos'
    Left = 464
    Top = 240
    object CDSIngresosID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSIngresosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSIngresosSUM: TFloatField
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSIngresosSUM_1: TFloatField
      FieldName = 'SUM_1'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSPIngresos: TDataSetProvider
    DataSet = QIngresos
    Left = 408
    Top = 240
  end
  object CDSEgresos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPEgresos'
    Left = 472
    Top = 296
    object CDSEgresosID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSEgresosDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSEgresosSUM: TFloatField
      FieldName = 'SUM'
      ReadOnly = True
    end
    object CDSEgresosSUM_1: TFloatField
      FieldName = 'SUM_1'
      ReadOnly = True
    end
  end
  object DSPEgresos: TDataSetProvider
    DataSet = QEgresos
    Left = 408
    Top = 296
  end
  object CDSDetalleIngresos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalleIngresos'
    Left = 488
    Top = 360
    object CDSDetalleIngresosTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSDetalleIngresosTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSDetalleIngresosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSDetalleIngresosID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSDetalleIngresosDETALLE_1: TStringField
      FieldName = 'DETALLE_1'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSDetalleIngresosSUM: TFloatField
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSDetalleIngresosSUM_1: TFloatField
      FieldName = 'SUM_1'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSPDetalleIngresos: TDataSetProvider
    DataSet = QDetalleIngresos
    Left = 408
    Top = 368
  end
  object CDSEgresoEfectivo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPEgresoEfectivo'
    Left = 464
    Top = 432
    object CDSEgresoEfectivoTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSEgresoEfectivoTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSEgresoEfectivoDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSEgresoEfectivoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSEgresoEfectivoDETALLE_1: TStringField
      FieldName = 'DETALLE_1'
      Size = 15
    end
    object CDSEgresoEfectivoSUM: TFloatField
      FieldName = 'SUM'
      ReadOnly = True
    end
    object CDSEgresoEfectivoSUM_1: TFloatField
      FieldName = 'SUM_1'
      ReadOnly = True
    end
  end
  object DSPEgresoEfectivo: TDataSetProvider
    DataSet = QEgresoEfectivo
    Left = 416
    Top = 432
  end
  object QIngresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_tpago,t.detalle,sum(c.debe),sum(c.haber) from caja_m' +
        'ov c'
      'left join tipopago t on t.id_tpago=c.id_tpago'
      'where c.fecha_operacion>=:Desde and '
      'c.fecha_operacion<=:Hasta and '
      'c.tipo_operacion='#39'I'#39' and '
      'Not(c.tipo_comprob in ('#39'TX'#39','#39'CX'#39','#39'QX'#39','#39'CC'#39'))'
      'group by c.id_tpago,t.detalle')
    Left = 322
    Top = 234
    ParamData = <
      item
        Position = 1
        Name = 'Desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QEgresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_tpago,t.detalle,sum(c.debe),sum(c.haber) from caja_m' +
        'ov c'
      'left join tipopago t on t.id_tpago=c.id_tpago'
      'where c.fecha_operacion>=:Desde and '
      'c.fecha_operacion<=:Hasta and c.tipo_operacion='#39'E'#39
      'and not(c.tipo_comprob in ('#39'TX'#39','#39'CX'#39','#39'QX'#39'))'
      'group by c.id_tpago,t.detalle')
    Left = 330
    Top = 298
    ParamData = <
      item
        Position = 1
        Name = 'Desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QDetalleIngresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.tipo_operacion,c.tipo_comprob,tc.detalle,c.id_tpago,t.d' +
        'etalle,sum(c.debe),sum(c.haber) from caja_mov c'
      'left join tipopago t on t.id_tpago=c.id_tpago'
      'left join tipo_comprobante tc on tc.sigla=c.tipo_comprob'
      'where c.fecha_operacion>=:Desde and '
      'c.fecha_operacion<=:Hasta and '
      'c.tipo_operacion='#39'I'#39' and '
      'not(c.tipo_comprob in ('#39'TX'#39','#39'CX'#39','#39'QX'#39','#39'CC'#39'))'
      'and c.id_tpago=1'
      
        'group by c.tipo_operacion,c.tipo_comprob,tc.detalle,c.id_tpago,t' +
        '.detalle')
    Left = 342
    Top = 362
    ParamData = <
      item
        Position = 1
        Name = 'Desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QEgresoEfectivo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.tipo_operacion,c.tipo_comprob,tc.detalle,c.id_tpago,t.d' +
        'etalle,sum(c.debe),sum(c.haber) from caja_mov c'
      'left join tipopago t on t.id_tpago=c.id_tpago'
      'left join tipo_comprobante tc on tc.sigla=c.tipo_comprob'
      'where c.fecha_operacion>=:Desde and '
      'c.fecha_operacion<=:Hasta and'
      'c.tipo_operacion='#39'E'#39' and'
      'not(c.tipo_comprob in ('#39'TX'#39','#39'CX'#39','#39'QX'#39'))'
      'and c.id_tpago=1'
      
        'group by c.tipo_operacion,c.tipo_comprob,tc.detalle,c.id_tpago,t' +
        '.detalle')
    Left = 334
    Top = 434
    ParamData = <
      item
        Position = 1
        Name = 'Desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end

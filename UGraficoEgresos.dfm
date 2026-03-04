object FormGraficoEgresos: TFormGraficoEgresos
  Left = 161
  Top = 199
  BorderStyle = bsNone
  Caption = 'Grafico Egresos'
  ClientHeight = 586
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 513
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 909
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 923
      Height = 496
      Title.Text.Strings = (
        'TDBChart')
      Zoom.Animated = True
      Zoom.Pen.Mode = pmNotXor
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 907
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Egresos: TBarSeries
        HoverElement = []
        ColorEachPoint = True
        Marks.Callout.Length = 8
        Marks.Clip = True
        DataSource = DBCrossTabSource1
        XLabelsSource = 'CODIGOGASTO'
        XValues.Name = 'X'
        XValues.Order = loNone
        XValues.ValueSource = 'SUM'
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'SUM'
      end
      object Series1: TBarSeries
        HoverElement = []
        ColorEachPoint = True
        DataSource = FormFlujoFondos.CDSGastosFCCompra
        XLabelsSource = 'ANIO'
        BarStyle = bsRectGradient
        XValues.Name = 'X'
        XValues.Order = loAscending
        XValues.ValueSource = 'SUM'
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'SUM'
      end
    end
  end
  object DBCrossTabSource1: TDBCrossTabSource
    Series = Egresos
    DataSet = FormFlujoFondos.CDSEgresos
    Left = 408
    Top = 168
  end
end

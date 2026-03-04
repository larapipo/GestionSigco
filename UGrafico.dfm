object FormGrafico: TFormGrafico
  Left = 158
  Top = 82
  Caption = 'Representacion Grafica'
  ClientHeight = 435
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 417
    Align = alTop
    TabOrder = 0
    object chGeneral: TChart
      Left = 1
      Top = 1
      Width = 910
      Height = 364
      Gradient.EndColor = 16744576
      Gradient.Visible = True
      Legend.Brush.Gradient.Visible = True
      Legend.Title.Text.Strings = (
        'Ref:')
      MarginBottom = 0
      MarginLeft = 0
      MarginRight = 0
      MarginTop = 5
      PrintProportional = False
      Title.Bevel = bvLowered
      Title.Font.Color = -1
      Title.Font.Height = -16
      Title.Font.Style = [fsBold]
      Title.Font.InterCharSize = 2
      Title.Font.OutLine.Color = clWhite
      Title.Text.Strings = (
        'Grafico')
      BottomAxis.LabelsFormat.TextAlignment = taCenter
      DepthAxis.LabelsFormat.TextAlignment = taCenter
      DepthTopAxis.LabelsFormat.TextAlignment = taCenter
      LeftAxis.LabelsFormat.TextAlignment = taCenter
      RightAxis.LabelsFormat.TextAlignment = taCenter
      TopAxis.LabelsFormat.TextAlignment = taCenter
      Zoom.Animated = True
      Zoom.Pen.Mode = pmNotXor
      Align = alClient
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      PrintMargins = (
        6
        8
        4
        6)
      ColorPaletteIndex = 13
      object Series1: TBarSeries
        ColorEachPoint = True
        Marks.Brush.Gradient.Visible = True
        Marks.Visible = True
        Marks.Style = smsValue
        Title = 'Datos'
        ValueFormat = ',0.00'
        BarStyle = bsBevel
        MultiBar = mbStacked
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
        Data = {
          04060000000000000000E07F40FF01000000310000000000507940FF01000000
          320000000000F07440FF010000003F0000000000687040FF0100000034000000
          0000A07440FF01000000350000000000A07440FF0100000036}
      end
    end
    object pnPie: TPanel
      Left = 1
      Top = 365
      Width = 910
      Height = 51
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 366
      object BitBtn1: TBitBtn
        Left = 760
        Top = 6
        Width = 105
        Height = 32
        Caption = 'Imprimir'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 649
        Top = 6
        Width = 105
        Height = 32
        Caption = 'Exportar BMP'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'bmp'
    InitialDir = 'c:\'
    Title = 'Guardar Grafico'
    Left = 569
    Top = 374
  end
end

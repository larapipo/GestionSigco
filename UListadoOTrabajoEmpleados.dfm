inherited FormListadoOTrabajoEmpleados: TFormListadoOTrabajoEmpleados
  Left = 166
  Top = 81
  HorzScrollBar.Smooth = True
  Caption = 'O. de Trabajo por Empleados'
  ClientHeight = 627
  ClientWidth = 977
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 995
  ExplicitHeight = 668
  TextHeight = 13
  object Label11: TLabel [0]
    Left = 400
    Top = 80
    Width = 35
    Height = 13
    Caption = 'FECHA'
  end
  inherited pnPrincipal: TPanel
    Width = 977
    Height = 574
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 977
    ExplicitHeight = 574
    object pnDetalle: TPanel
      Left = 0
      Top = 65
      Width = 977
      Height = 509
      Align = alClient
      TabOrder = 0
      DesignSize = (
        977
        509)
      object Label8: TLabel
        Left = 7
        Top = 365
        Width = 43
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Producto'
        ExplicitTop = 371
      end
      object Label9: TLabel
        Left = 7
        Top = 405
        Width = 87
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Cliente/Propietario'
        ExplicitTop = 411
      end
      object dbmDetalle: TDBRichEdit
        Left = 7
        Top = 448
        Width = 657
        Height = 49
        Anchors = [akLeft, akBottom]
        DataField = 'DETALLE'
        DataSource = DSMovOTLunes
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        TabOrder = 0
      end
      object dbeNombre: TDBEdit
        Left = 8
        Top = 419
        Width = 249
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'NOMBRE'
        DataSource = DSMovOTLunes
        TabOrder = 1
      end
      object dbeProducto: TDBEdit
        Left = 7
        Top = 381
        Width = 113
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'IDENTIFICADOR'
        DataSource = DSMovOTLunes
        Enabled = False
        TabOrder = 2
      end
      object dbeDescripcion: TDBEdit
        Left = 130
        Top = 381
        Width = 281
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'DESCRIPCION'
        DataSource = DSMovOTLunes
        Enabled = False
        TabOrder = 3
      end
      object pcDetalles: TPageControl
        Left = 1
        Top = 1
        Width = 975
        Height = 346
        ActivePage = Pag1
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 4
        object Pag1: TTabSheet
          Caption = 'Detalles'
          object sbSemana: TScrollBox
            Left = 0
            Top = 0
            Width = 967
            Height = 318
            Align = alClient
            BorderStyle = bsNone
            TabOrder = 0
            DesignSize = (
              967
              301)
            object Label3: TLabel
              Left = 3
              Top = 8
              Width = 42
              Height = 16
              Caption = 'Lunes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 240
              Top = 8
              Width = 48
              Height = 16
              Caption = 'Martes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 480
              Top = 8
              Width = 69
              Height = 16
              Caption = 'Miercoles'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 962
              Top = 8
              Width = 54
              Height = 16
              Caption = 'Viernes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 719
              Top = 8
              Width = 51
              Height = 16
              Caption = 'Jueves'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText1: TDBText
              Left = 48
              Top = 8
              Width = 97
              Height = 17
              DataField = 'FECHA'
              DataSource = DSMovOTLunes
            end
            object DBText2: TDBText
              Left = 296
              Top = 8
              Width = 65
              Height = 17
              DataField = 'FECHA'
              DataSource = DSMovOTMartes
            end
            object DBText3: TDBText
              Left = 560
              Top = 8
              Width = 65
              Height = 17
              DataField = 'FECHA'
              DataSource = DSMovOTMiercoles
            end
            object DBText4: TDBText
              Left = 792
              Top = 8
              Width = 65
              Height = 17
              DataField = 'FECHA'
              DataSource = DSMovOTJueves
            end
            object DBText5: TDBText
              Left = 1024
              Top = 8
              Width = 65
              Height = 17
              DataField = 'FECHA'
              DataSource = DSMovOTViernes
            end
            object Label10: TLabel
              Left = 1202
              Top = 8
              Width = 56
              Height = 16
              Caption = 'Sabado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText6: TDBText
              Left = 1265
              Top = 9
              Width = 65
              Height = 17
              DataField = 'FECHA'
              DataSource = DSMovOTSabado
            end
            object Label12: TLabel
              Left = 1450
              Top = 8
              Width = 63
              Height = 16
              Caption = 'Domingo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText7: TDBText
              Left = 1514
              Top = 10
              Width = 65
              Height = 17
              DataField = 'FECHA'
              DataSource = DSMovOTDomingo
            end
            object dbgLunes: TDBGrid
              Left = 0
              Top = 25
              Width = 232
              Height = 219
              Anchors = [akLeft, akTop, akBottom]
              Color = clWhite
              DataSource = DSMovOTLunes
              DrawingStyle = gdsClassic
              FixedColor = clGreen
              Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgLunesDblClick
              OnEnter = dbgLunesEnter
              Columns = <
                item
                  Expanded = False
                  FieldName = 'HORAINICIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Incio'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'N.de O.de T.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 108
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HORAFINAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Final'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 51
                  Visible = True
                end>
            end
            object dbgMartes: TDBGrid
              Left = 235
              Top = 25
              Width = 239
              Height = 219
              Anchors = [akLeft, akTop, akBottom]
              DataSource = DSMovOTMartes
              DrawingStyle = gdsClassic
              FixedColor = clGreen
              Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgMartesDblClick
              OnEnter = dbgMartesEnter
              Columns = <
                item
                  Expanded = False
                  FieldName = 'HORAINICIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Inicio'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 54
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'N.de O. de T'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 101
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HORAFINAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Final'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 62
                  Visible = True
                end>
            end
            object dbgMiercoles: TDBGrid
              Left = 481
              Top = 25
              Width = 232
              Height = 219
              Anchors = [akLeft, akTop, akBottom]
              DataSource = DSMovOTMiercoles
              DrawingStyle = gdsClassic
              FixedColor = clGreen
              Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgMiercolesDblClick
              OnEnter = dbgMiercolesEnter
              Columns = <
                item
                  Expanded = False
                  FieldName = 'HORAINICIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Incio'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'N. de O. de T.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 97
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HORAFINAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Final'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 61
                  Visible = True
                end>
            end
            object dbgJueves: TDBGrid
              Left = 716
              Top = 25
              Width = 239
              Height = 219
              Anchors = [akLeft, akTop, akBottom]
              DataSource = DSMovOTJueves
              DrawingStyle = gdsClassic
              FixedColor = clGreen
              Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 3
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgJuevesDblClick
              OnEnter = dbgJuevesEnter
              Columns = <
                item
                  Expanded = False
                  FieldName = 'HORAINICIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Inicio'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 53
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'N. de O. de T.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 104
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HORAFINAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Final'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 58
                  Visible = True
                end>
            end
            object dbgViernes: TDBGrid
              Left = 961
              Top = 25
              Width = 235
              Height = 219
              Anchors = [akLeft, akTop, akBottom]
              DataSource = DSMovOTViernes
              DrawingStyle = gdsClassic
              FixedColor = clGreen
              Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgViernesDblClick
              OnEnter = dbgViernesEnter
              Columns = <
                item
                  Expanded = False
                  FieldName = 'HORAINICIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Inicio'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'N. de O. de T.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 103
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HORAFINAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Final'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 55
                  Visible = True
                end>
            end
            object dbgSabado: TDBGrid
              Left = 1204
              Top = 25
              Width = 235
              Height = 219
              Anchors = [akLeft, akTop, akBottom]
              DataSource = DSMovOTSabado
              DrawingStyle = gdsClassic
              FixedColor = clRed
              Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 5
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgSabadoDblClick
              OnEnter = dbgSabadoEnter
              Columns = <
                item
                  Color = clWhite
                  Expanded = False
                  FieldName = 'HORAINICIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Inicio'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 55
                  Visible = True
                end
                item
                  Color = clWhite
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'N. de O. de T.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 103
                  Visible = True
                end
                item
                  Color = clWhite
                  Expanded = False
                  FieldName = 'HORAFINAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Final'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 55
                  Visible = True
                end>
            end
            object dbgDomingo: TDBGrid
              Left = 1446
              Top = 25
              Width = 235
              Height = 219
              Anchors = [akLeft, akTop, akBottom]
              DataSource = DSMovOTDomingo
              DrawingStyle = gdsClassic
              FixedColor = clGreen
              Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 6
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgDomingoDblClick
              OnEnter = dbgDomingoEnter
              Columns = <
                item
                  Expanded = False
                  FieldName = 'HORAINICIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Inicio'
                  Title.Color = clRed
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'N. de O. de T.'
                  Title.Color = clRed
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 103
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HORAFINAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Final'
                  Title.Color = clRed
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 55
                  Visible = True
                end>
            end
          end
        end
        object Pag2: TTabSheet
          Caption = 'Gr'#225'ficos'
          ImageIndex = 1
          object DBChart1: TDBChart
            Left = 0
            Top = 0
            Width = 967
            Height = 274
            BottomWall.Brush.Style = bsClear
            LeftWall.Brush.Style = bsClear
            MarginBottom = 0
            MarginLeft = 1
            MarginRight = 1
            MarginTop = 2
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            Title.AdjustFrame = False
            OnClickSeries = DBChart1ClickSeries
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.DateTimeFormat = 'hh:mm AMPM'
            BottomAxis.ExactDateTime = False
            BottomAxis.Increment = 0.041666666666666700
            BottomAxis.Maximum = 0.958333333333333000
            BottomAxis.Minimum = 0.333333333333333000
            BottomAxis.TickLength = 6
            BottomAxis.Title.Caption = 'Hora'
            Chart3DPercent = 5
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.ExactDateTime = False
            LeftAxis.Maximum = 6.000000000000000000
            LeftAxis.MinorTickCount = 2
            LeftAxis.StartPosition = 10.000000000000000000
            LeftAxis.EndPosition = 90.000000000000000000
            LeftAxis.PositionPercent = -1.000000000000000000
            LeftAxis.Title.Caption = 'Dia de Semana'
            Legend.DividingLines.Visible = True
            Legend.ResizeChart = False
            Legend.Visible = False
            View3D = False
            View3DOptions.Elevation = 315
            View3DOptions.HorizOffset = -18
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 343
            View3DOptions.VertOffset = -9
            View3DOptions.Zoom = 95
            View3DWalls = False
            Zoom.Animated = True
            Zoom.AnimatedSteps = 2
            Zoom.Pen.Mode = pmNotXor
            Align = alTop
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series1: TGanttSeries
              HoverElement = [heCurrent]
              Legend.Visible = False
              Marks.Style = smsXValue
              DataSource = CDSMovOTLunes
              PercentFormat = 'dddd'
              ShowInLegend = False
              Title = 'Lunes'
              ValueFormat = 'dddd'
              ClickableLine = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'Start'
              XValues.Order = loNone
              XValues.ValueSource = 'HORAINICIO'
              YValues.Name = 'Y'
              YValues.Order = loAscending
              YValues.ValueSource = 'DIA'
              Callout.Style = psRightTriangle
              Callout.Arrow.Visible = False
              StartValues.Name = 'Start'
              StartValues.Order = loNone
              StartValues.ValueSource = 'HORAINICIO'
              EndValues.Name = 'End'
              EndValues.Order = loNone
              EndValues.ValueSource = 'HORAFINAL'
              NextTask.Name = 'NextTask'
              NextTask.Order = loNone
              NextTask.ValueSource = 'DIA'
              object TeeFunction2: TAddTeeFunction
              end
            end
            object Series2: TGanttSeries
              HoverElement = [heCurrent]
              DataSource = CDSMovOTMartes
              SeriesColor = clRed
              Title = 'Martes'
              ClickableLine = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'Start'
              XValues.Order = loAscending
              XValues.ValueSource = 'HORAINICIO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = 'DIA'
              Callout.Style = psRightTriangle
              Callout.Arrow.Visible = False
              StartValues.Name = 'Start'
              StartValues.Order = loAscending
              StartValues.ValueSource = 'HORAINICIO'
              EndValues.Name = 'End'
              EndValues.Order = loNone
              EndValues.ValueSource = 'HORAFINAL'
              NextTask.Name = 'NextTask'
              NextTask.Order = loNone
              NextTask.ValueSource = 'DIA'
              object TeeFunction1: TAddTeeFunction
              end
            end
            object Series3: TGanttSeries
              HoverElement = [heCurrent]
              DataSource = CDSMovOTMiercoles
              SeriesColor = clRed
              Title = 'Miercoles'
              ClickableLine = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'Start'
              XValues.Order = loAscending
              XValues.ValueSource = 'HORAINICIO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = 'DIA'
              Callout.Style = psRightTriangle
              Callout.Arrow.Visible = False
              StartValues.Name = 'Start'
              StartValues.Order = loAscending
              StartValues.ValueSource = 'HORAINICIO'
              EndValues.Name = 'End'
              EndValues.Order = loNone
              EndValues.ValueSource = 'HORAFINAL'
              NextTask.Name = 'NextTask'
              NextTask.Order = loNone
              NextTask.ValueSource = 'DIA'
              object TeeFunction3: TAddTeeFunction
              end
            end
            object Series4: TGanttSeries
              HoverElement = [heCurrent]
              DataSource = CDSMovOTJueves
              SeriesColor = clRed
              Title = 'Jueves'
              ClickableLine = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'Start'
              XValues.Order = loNone
              XValues.ValueSource = 'HORAINICIO'
              YValues.Name = 'Y'
              YValues.Order = loAscending
              YValues.ValueSource = 'DIA'
              Callout.Style = psRightTriangle
              Callout.Arrow.Visible = False
              StartValues.Name = 'Start'
              StartValues.Order = loNone
              StartValues.ValueSource = 'HORAINICIO'
              EndValues.Name = 'End'
              EndValues.Order = loNone
              EndValues.ValueSource = 'HORAFINAL'
              NextTask.Name = 'NextTask'
              NextTask.Order = loNone
              NextTask.ValueSource = 'DIA'
              object TeeFunction4: TAddTeeFunction
              end
            end
            object Series5: TGanttSeries
              HoverElement = [heCurrent]
              DataSource = CDSMovOTViernes
              SeriesColor = clRed
              Title = 'Viernes'
              ClickableLine = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'Start'
              XValues.Order = loAscending
              XValues.ValueSource = 'HORAINICIO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = 'DIA'
              Callout.Style = psRightTriangle
              Callout.Arrow.Visible = False
              StartValues.Name = 'Start'
              StartValues.Order = loAscending
              StartValues.ValueSource = 'HORAINICIO'
              EndValues.Name = 'End'
              EndValues.Order = loNone
              EndValues.ValueSource = 'HORAFINAL'
              NextTask.Name = 'NextTask'
              NextTask.Order = loNone
              NextTask.ValueSource = 'DIA'
              object TeeFunction5: TAddTeeFunction
              end
            end
            object Series6: TGanttSeries
              HoverElement = [heCurrent]
              DataSource = CDSMovOTSabado
              SeriesColor = clRed
              Title = 'Sabado'
              ClickableLine = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'Start'
              XValues.Order = loNone
              XValues.ValueSource = 'HORAINICIO'
              YValues.Name = 'Y'
              YValues.Order = loAscending
              YValues.ValueSource = 'DIA'
              Callout.Style = psRightTriangle
              Callout.Arrow.Visible = False
              StartValues.Name = 'Start'
              StartValues.Order = loNone
              StartValues.ValueSource = 'HORAINICIO'
              EndValues.Name = 'End'
              EndValues.Order = loNone
              EndValues.ValueSource = 'HORAFINAL'
              NextTask.Name = 'NextTask'
              NextTask.Order = loNone
              NextTask.ValueSource = 'DIA'
              object TeeFunction6: TAddTeeFunction
              end
            end
            object Series7: TGanttSeries
              HoverElement = [heCurrent]
              DataSource = CDSMovOTDomingo
              SeriesColor = clRed
              Title = 'Domingo'
              ClickableLine = False
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'Start'
              XValues.Order = loAscending
              XValues.ValueSource = 'HORAINICIO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = 'DIA'
              Callout.Style = psRightTriangle
              Callout.Arrow.Visible = False
              StartValues.Name = 'Start'
              StartValues.Order = loAscending
              StartValues.ValueSource = 'HORAINICIO'
              EndValues.Name = 'End'
              EndValues.Order = loNone
              EndValues.ValueSource = 'HORAFINAL'
              NextTask.Name = 'NextTask'
              NextTask.Order = loNone
              NextTask.ValueSource = 'DIA'
              object TeeFunction7: TAddTeeFunction
              end
            end
          end
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 977
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        977
        65)
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 47
        Height = 13
        Caption = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 844
        Top = 7
        Width = 30
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 892
      end
      object edNombreCliente: TEdit
        Left = 88
        Top = 22
        Width = 273
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
      end
      object UpDown1: TUpDown
        Left = 781
        Top = 23
        Width = 57
        Height = 16
        Anchors = [akTop, akRight]
        Min = -1000
        Max = 1000
        Orientation = udHorizontal
        TabOrder = 3
        OnClick = UpDown1Click
      end
      object ceEmpleado: TJvComboEdit
        Left = 9
        Top = 23
        Width = 73
        Height = 21
        ButtonWidth = 16
        ClickKey = 16397
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        TabOrder = 0
        Text = ''
        OnButtonClick = ceEmpleadoButtonClick
        OnKeyPress = ceEmpleadoKeyPress
      end
      object Desde: TJvDateEdit
        Left = 844
        Top = 22
        Width = 106
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
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 2
        OnAcceptDate = DesdeAcceptDate
        OnClick = DesdeClick
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 574
    Width = 977
    Align = alBottom
    ExplicitTop = 574
    ExplicitWidth = 977
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 604
    Width = 977
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 604
    ExplicitWidth = 977
    inherited sbEstado: TStatusBar
      Width = 815
      ExplicitWidth = 815
    end
  end
  inherited ActionList1: TActionList
    Left = 416
    Top = 32
    object BuscaEmpleado: TAction
      Caption = 'BuscaEmpleado'
      OnExecute = BuscaEmpleadoExecute
    end
    object BuscarOT: TAction
      Caption = 'BuscarOT'
      OnExecute = BuscarOTExecute
    end
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010A000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001079F000313A9000418AE000419AE000313A9000108A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D2C05006B250800521E1500551F13006D2607007E2D05000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521E15006B2508007D2C05007E2D05006D260700551F13000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000066
      0000006600000000000000000000000000000000000000000000000000000104
      9D00041CB1000730C0000734C4000735C5000735C5000734C3000731C100041F
      B30001069E000000000000000000000000000000000000000000000000008932
      040055211700BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C2621800541F
      1600903503000000000000000000000000000000000000000000000000005521
      170089320400BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C26218009035
      0300541F16000000000000000000000000000000000000660000009900000099
      0000E5DEDF000066000000660000E4E7E700E0E3E600D9DFE000CCC9CC000066
      0000037D030000660000000000000000000000000000000000000109A100052B
      C3000735C7000733C2000732C2000732C2000732C2000732C2000733C3000735
      C400062DBE00020CA400000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E070060231100000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E07006023110000000000000000000000000000660000009900000099
      0000E9E2E2000066000000660000E2E1E300E2E6E800DDE2E400CFCCCF000066
      0000037D03000066000000000000000000000000000001049B00052BCA000636
      D8000431CD000027C400032EC1000732C2000732C2000430C1000027BF00042F
      C1000735C400072EBE0001069E000000000000000000732D0D00B0460200F4D0
      AB00FFFFFE00D4884600BD4E0400BA470000BA460000C0530700D4844200FCF8
      F300F8DDBD00B64D0500903502000000000000000000732D0D00B0460200F4D0
      AB00FFFEFE00D78C4E00C0540900BA460000BA460000BD4F0400D07E3900FCF8
      F400F8DDBD00B64D0500541F1600000000000000000000660000009900000099
      0000ECE4E4000066000000660000DFDDDF00E1E6E800E0E5E700D3D0D2000066
      0000037D030000660000000000000000000000000000031ABA000537E7000331
      DD00123DD8006480E0001840CB00002CC100022DC0000F38C4006580D9001B43
      C700052FC1000735C500051FB30000000000000000009A380000E6AB7200FFFF
      FF00CC732800C9682000CE752A00BB480000BC4B0000B8430000B8420000CA6C
      1F00FCF8F400EFBC8800541F160000000000000000009A380000E6AB7200FFFF
      FF00CF762D00B8410000BA430000BC4A0000BB470000C6631500CE753100C96B
      1F00FCF8F400EFBC880090350200000000000000000000660000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000066
      0000037D030000660000000000000000000001049E000430E4000436F100002A
      E4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2E800FFFFFF006984
      DA000026BE000733C3000731C1000108A000A9440300C05C1100FFFCFA00E1A3
      6A00BF480000EECBA900F0D5BA00BD4A0000B8420000CA6C2000E9BD9300BA46
      0000D4884300FFFFFF00C16016007B2C040089340600C05C1100FFFCFA00E1A3
      6A00C04C0000FFFFFF00D3803800BC470000B8420000DC995E00FFFFFF00B843
      0000D4874300FFFFFF00C1601600551F13000000000000660000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000006600000000000000000000020FAF000336FA000335F8000232
      EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFFFF00A7B7E900133A
      C400052FC1000732C2000734C4000313AA009A3B0200DD955400FFFFFF00D376
      2800CC600E00EFCBA900F0D3B400C2510100D5864100FAF2E900F7E7D900BC4B
      0000BF510300FCF8F300E29D5A006D2607009A3B0200DD955400FFFFFF00D376
      2800CC600D00FFFFFF00FFFFFF00DC955400BC450000DA965800FFFFFF00BC4B
      0000BF510300FCF8F300E29D5A006D260700000000000066000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B100009900000066000000000000000000000619BC001747FE00093AFC000435
      F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBAEF00062FC500022D
      C0000732C2000732C2000736C5000419AE0089340600EBBB8A00FBF0E700D87A
      2B00D7742200F3D1B000F2D1B400E6AC7600FFFFFF00FFFFFF00F3DEC700BD4D
      0100BA450000F2DAC200EFC08E00551F1300A9440300EBBB8A00FBF0E700D87A
      2B00D7742200FFFFFF00FFFFFF00FFFFFF00E5AF7B00E0A16800FFFFFF00BD4D
      0100BA450000F2DAC200EFC08E007D2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000B1DBE004168FE001C49FC000335
      FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6F2000D36D000002C
      C6000732C2000732C2000736C5000418AD00AD450200EEBF9000FCF4EB00E28A
      3E00E1843500F6D8B800F3D7BA00E5A36500FCF3EB00FFFFFF00F3DEC900BD4D
      0100BA460000F3DEC700EFBD8A00521F1600B04A0600EEBF9000FCF4EB00E28A
      3E00E1843500FFFFFF00FFFFFF00FFFFFF00EDC59E00E5AA7500FFFFFF00BD4D
      0100BA460000F3DEC700EFBD8A007B2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000613B4005B7CFC00486CFD000133
      FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFFFF00B6C4F2001A41
      D300042FC8000732C4000734C3000212A900B0490500E9AA6E00FFFFFF00EDA4
      6200EA954700F8DEC200F7DEC600D9742100DC883F00F7E3D100F7EADC00BC4B
      0000C0540500FEFBF800E09752006B240800B0490500E9AA6E00FFFFFF00EDA4
      6200EA934600FFFFFF00FFFFFF00EDBA8800D0671300E3A66D00FFFFFF00BC4B
      0000C0540500FEFBF800E09752006B240800000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000003A0004A6AF3008FA6FF001F46
      FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2F600FFFFFF00627F
      E7000028D0000734CC000730C30000069F00B04A0600DD893F00FFFCF800FAD7
      B400F4A35900FCE6D000F8E3CE00E1843500D7722000D3752700E3AC7800BB47
      0000D9935400FFFFFE00BD5A10007B2C0400AD450200DD893F00FFFCF800FAD7
      B400F4A55B00FFFFFF00F0BB8700DE813000D56E1D00E7AF7A00FFFFFF00BA44
      0000D9935300FFFFFE00BD5A1000521F1600000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000000000001A2FCB0099AFFF008BA2
      FE00214DFB004D71FC000E3DFB000030FB000031F7000636F1004C6EF100103C
      E3000432DB000636D700041CB5000000000000000000C9651800F8CEA500FFFF
      FF00FED0A300F8BA7F00EFAD7000E2883B00D9792A00CE651200C04C0000D07A
      3100FFFFFF00EAAF7300501F18000000000000000000C9651800F8CEA500FFFF
      FF00FED1A600F6A96300EB964800E2893C00D8772600D77B2E00D1782D00D07A
      3200FFFFFF00EAAF73008931030000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F90000990000006600000000000000000000000000000004A000415EEC00B8C7
      FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133F900052FF2000635
      EB000537E900052CCD0000049C000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD3AC00EDA15C00E28B3F00D97B2D00D4782A00E1A46B00FFFF
      FF00F3CCA400AC440200893103000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD5B100EDA56300E28B3F00D97B2D00D3752600DE9D6200FFFF
      FF00F3CCA400AC440200501F180000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000660000000000000000000000000000000000000309A5004260
      EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6EFD003961FD001444
      F900042CD7000109A20000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A22140000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A2214000000000000000000000000000000000000660000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900006600000000000000000000000000000000000000000000000000000004
      A0001E32CD005876F600859EFE008BA3FF007994FE005376FC00234AF000051E
      C50001049C00000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F005D23
      150090340200000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F009034
      02005D2315000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004A0000917B6001022C3000D1FC2000311B40001059F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006D7C94006F7C88000000000000000000000000000000
      0000000000000000000000000000000000000000000008750D0008750D000875
      0D0008750D000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D7FA9000E80
      AA000D7FA9000E80AA000E80AA001081AB000000000000000000000000000000
      000000000000788295001F89E00059A9DC0000000000000000000E80AA000E80
      AA000E80AA000E80AA000E80AA000E80AA000000000008750D0013AA220010A6
      1D0008750D0000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE009933000000000000000000000000000000000000000000000D80
      AA000D80AA000D80AA000D80AA000D80AA000D80AA0000000000000000000000
      00000000000000000000000000000000000000000000048CB90048D5EE0022D7
      FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA0000000000000000000000
      0000788295002087DE004EB7FF0057AEF40000000000078DBB0049D5EE0023D7
      FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA0008750D001AB12D0013AA
      220008750D0000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98FC000335FB00597A
      FC00FDFEFE009933000000000000000000000000000000000000078DBB0049D5
      EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80AA00000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0022D7
      FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180A700000000008B86
      97001F7ECE004EB7FF0057AEF40000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0008750D0008750D0008750D0025BD3E001CB4
      310008750D0008750D0008750D0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335FB004368FC000335
      FB00D9E0FE0099330000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000088EBC008CFAFD0058E9FD0022D7
      FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE877C008C6B6C006092
      BD004EB7FF004EB7FF000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D003CD4620035CE590030C952002CC3490026BE
      410025BD3E001AB12D0017AF2A0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9FD00EFF2FE001A47
      FB004F72FC0097330400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A003E6EFF00285BFF001248FF000236FF000029
      F900001DEC0000009A000000000000000000088EBC008CFAFD0058E9FD0024D8
      FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2D900CFB7A100AD85
      80004EB7FF00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D15E0035CE59002CC3
      49002AC1470025BD3E0020B8360008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000335FB0064345900000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D4F80000009A004474FF003264FF001B50FF00083CFF000029
      F9000022F10000009A000000000000000000048CB900B4FFFF00B6F6FF00C6F5
      FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFED600FFF2BA00CAA0
      8C0000000000000000000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0008750D0008750D0008750D0008750D003FD868003CD4
      620008750D0008750D0008750D0008750D00078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005274FC000335FB00000000000000000000000000078DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000048CB900B8EDF60030BCDC0011A7
      D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5CD00F8D09800ECD1
      AC00AD858000000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A1CA0035A7CD002692BF0092CEE40008750D0045DD710041DA
      6D0008750D00000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A2CB0099330000993300009933000099330000993300009933
      00008F3311002235C8000335FB000000000000000000078DBB00BAEEF60030BC
      DD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CEE4000D80AA000000
      000000000000000000000000000000000000088EBC004BC6DC0058E9FD0022D7
      FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DAAB00F3BE8000F5DE
      B500AD858000000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E3000682B60008750D004DE67F004DE6
      7F0008750D00000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80AA00000000000000
      000000000000000000000335FB000335FB0000000000078DBB004AC5DD0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682B6000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB9A00FEEAB900E4CC
      A900AD858000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE0008750D0008750D000875
      0D0008750D00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000335FB0000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7E000F9F6F200AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7FA900000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5B700AD858000AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80AA00000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000088EBC008CFAFD0081F8FE0071F9
      FE007BFFFF0097FCFD00A1C6C8008F989B008683880087707000000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB0091FCFE0082F8
      FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000D80AA000000
      000000000000000000000000000000000000048CB900FBFFFF00F5FFFE00D2FF
      FF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000D80AA000000
      000000000000000000000000000000000000000000000A91C100F5FFFE00E3FE
      FF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B00000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      00000000000000000000000000000000000000000000000000000C92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00000000000000
      0000000000000000000000000000000000000000000000000000088EBC00088E
      BC00048CB900088EBC00088EBC00088EBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000078D
      BB00078DBB00078DBB00078DBB00078DBB00078DBB0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F81FF33F00000000E007E00700000000
      C003C00000000000800180010000000080010000000000000000000000000000
      000000000000000000008000000000000000E001000000000000F00300000000
      0000F01F000000008001E03F000000008001E03F00000000C003C03F00000000
      E007C07F00000000F81FF8FF00000000FFFFF81FF81FF81FC007E007E007E007
      8003C003C003C003800380018001800180038001800180018003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000800380018001800180038001800180018003C003C003C003
      C007E007E007E007FFFFF81FF81FF81FFFFCFF87FC03FFFFC0F8C087C003E07F
      807080078003C03F002100000003800300030000000380030007000000038003
      000F000000038003000700070001801F00070007003C801F00070007003E801F
      000F003F003F801F000F003F003F801F003F003F003F801F003F003F003F801F
      807F807F807FC03FC0FFC0FFC0FFE07F00000000000000000000000000000000
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 416
    Top = 328
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
    Top = 488
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 424
    Top = 248
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 560
    Top = 200
  end
  object DSMovOTLunes: TDataSource
    DataSet = CDSMovOTLunes
    Left = 312
    Top = 32
  end
  object DSPMovOT: TDataSetProvider
    DataSet = QMovOT
    Left = 136
    Top = 400
  end
  object CDSMovOTLunes: TClientDataSet
    Aggregates = <>
    Filter = 'dia=1 '
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'operador'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovOT'
    OnCalcFields = CDSMovOTLunesCalcFields
    Left = 218
    Top = 35
    object CDSMovOTLunesDETALLE: TMemoField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      BlobType = ftMemo
    end
    object CDSMovOTLunesDIA: TSmallintField
      FieldName = 'DIA'
      Origin = 'DIA'
      ProviderFlags = []
    end
    object CDSMovOTLunesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSMovOTLunesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSMovOTLunesPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
      Origin = 'PRODUCTO'
      ProviderFlags = []
    end
    object CDSMovOTLunesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSMovOTLunesOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Origin = 'OPERARIO'
      Size = 6
    end
    object CDSMovOTLunesIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Origin = 'IDENTIFICADOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSMovOTLunesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 100
    end
    object CDSMovOTLunesID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Origin = 'ID_OTCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovOTLunesTIEMPO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'TIEMPO'
    end
    object CDSMovOTLunesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovOTLunesHORAINICIO: TSQLTimeStampField
      FieldName = 'HORAINICIO'
      Origin = 'HORAINICIO'
    end
    object CDSMovOTLunesHORAFINAL: TSQLTimeStampField
      FieldName = 'HORAFINAL'
      Origin = 'HORAFINAL'
    end
  end
  object CDSMovOTMartes: TClientDataSet
    Aggregates = <>
    Filter = 'dia=2 '
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'operador'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovOT'
    OnCalcFields = CDSMovOTMartesCalcFields
    Left = 216
    Top = 88
    object CDSMovOTMartesDETALLE: TMemoField
      FieldName = 'DETALLE'
      BlobType = ftMemo
      Size = 1
    end
    object CDSMovOTMartesDIA: TSmallintField
      FieldName = 'DIA'
    end
    object CDSMovOTMartesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovOTMartesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSMovOTMartesPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object CDSMovOTMartesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSMovOTMartesOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Size = 6
    end
    object CDSMovOTMartesIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 50
    end
    object CDSMovOTMartesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object CDSMovOTMartesID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Required = True
    end
    object CDSMovOTMartesTIEMPO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'TIEMPO'
    end
    object CDSMovOTMartesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovOTMartesHORAINICIO: TSQLTimeStampField
      FieldName = 'HORAINICIO'
    end
    object CDSMovOTMartesHORAFINAL: TSQLTimeStampField
      FieldName = 'HORAFINAL'
    end
  end
  object CDSMovOTMiercoles: TClientDataSet
    Aggregates = <>
    Filter = 'dia=3 '
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'operador'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovOT'
    OnCalcFields = CDSMovOTMiercolesCalcFields
    Left = 216
    Top = 144
    object CDSMovOTMiercolesDETALLE: TMemoField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      BlobType = ftMemo
    end
    object CDSMovOTMiercolesDIA: TSmallintField
      FieldName = 'DIA'
      Origin = 'DIA'
      ProviderFlags = []
    end
    object CDSMovOTMiercolesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSMovOTMiercolesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSMovOTMiercolesPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
      Origin = 'PRODUCTO'
      ProviderFlags = []
    end
    object CDSMovOTMiercolesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSMovOTMiercolesOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Origin = 'OPERARIO'
      Size = 6
    end
    object CDSMovOTMiercolesIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Origin = 'IDENTIFICADOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSMovOTMiercolesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 100
    end
    object CDSMovOTMiercolesID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Origin = 'ID_OTCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovOTMiercolesTIEMPO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'TIEMPO'
    end
    object CDSMovOTMiercolesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovOTMiercolesHORAINICIO: TSQLTimeStampField
      FieldName = 'HORAINICIO'
      Origin = 'HORAINICIO'
    end
    object CDSMovOTMiercolesHORAFINAL: TSQLTimeStampField
      FieldName = 'HORAFINAL'
      Origin = 'HORAFINAL'
    end
  end
  object CDSMovOTJueves: TClientDataSet
    Aggregates = <>
    Filter = 'dia=4 '
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'operador'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovOT'
    OnCalcFields = CDSMovOTJuevesCalcFields
    Left = 216
    Top = 200
    object CDSMovOTJuevesDETALLE: TMemoField
      FieldName = 'DETALLE'
      BlobType = ftMemo
      Size = 1
    end
    object CDSMovOTJuevesDIA: TSmallintField
      FieldName = 'DIA'
    end
    object CDSMovOTJuevesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovOTJuevesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSMovOTJuevesPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object CDSMovOTJuevesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSMovOTJuevesOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Size = 6
    end
    object CDSMovOTJuevesIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 50
    end
    object CDSMovOTJuevesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object CDSMovOTJuevesID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Required = True
    end
    object CDSMovOTJuevesTIEMPO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'TIEMPO'
    end
    object CDSMovOTJuevesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovOTJuevesHORAINICIO: TSQLTimeStampField
      FieldName = 'HORAINICIO'
    end
    object CDSMovOTJuevesHORAFINAL: TSQLTimeStampField
      FieldName = 'HORAFINAL'
    end
  end
  object CDSMovOTViernes: TClientDataSet
    Aggregates = <>
    Filter = 'dia=5'
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'operador'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovOT'
    OnCalcFields = CDSMovOTViernesCalcFields
    Left = 216
    Top = 256
    object CDSMovOTViernesDETALLE: TMemoField
      FieldName = 'DETALLE'
      BlobType = ftMemo
      Size = 1
    end
    object CDSMovOTViernesDIA: TSmallintField
      FieldName = 'DIA'
    end
    object CDSMovOTViernesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovOTViernesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSMovOTViernesPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object CDSMovOTViernesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSMovOTViernesOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Size = 6
    end
    object CDSMovOTViernesIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 50
    end
    object CDSMovOTViernesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object CDSMovOTViernesID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Required = True
    end
    object CDSMovOTViernesTIEMPO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'TIEMPO'
    end
    object CDSMovOTViernesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovOTViernesHORAINICIO: TSQLTimeStampField
      FieldName = 'HORAINICIO'
    end
    object CDSMovOTViernesHORAFINAL: TSQLTimeStampField
      FieldName = 'HORAFINAL'
    end
  end
  object DSMovOTMartes: TDataSource
    DataSet = CDSMovOTMartes
    Left = 312
    Top = 88
  end
  object DSMovOTMiercoles: TDataSource
    DataSet = CDSMovOTMiercoles
    Left = 312
    Top = 144
  end
  object DSMovOTJueves: TDataSource
    DataSet = CDSMovOTJueves
    Left = 312
    Top = 200
  end
  object DSMovOTViernes: TDataSource
    DataSet = CDSMovOTViernes
    Left = 312
    Top = 256
  end
  object CDSMovOTSabado: TClientDataSet
    Aggregates = <>
    Filter = 'dia=6'
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'operador'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovOT'
    OnCalcFields = CDSMovOTSabadoCalcFields
    Left = 216
    Top = 304
    object CDSMovOTSabadoDETALLE: TMemoField
      FieldName = 'DETALLE'
      BlobType = ftMemo
      Size = 1
    end
    object CDSMovOTSabadoDIA: TSmallintField
      FieldName = 'DIA'
    end
    object CDSMovOTSabadoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovOTSabadoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSMovOTSabadoPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object CDSMovOTSabadoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSMovOTSabadoOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Size = 6
    end
    object CDSMovOTSabadoIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 50
    end
    object CDSMovOTSabadoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object CDSMovOTSabadoID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Required = True
    end
    object CDSMovOTSabadoTIEMPO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'TIEMPO'
    end
    object CDSMovOTSabadoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovOTSabadoHORAINICIO: TSQLTimeStampField
      FieldName = 'HORAINICIO'
    end
    object CDSMovOTSabadoHORAFINAL: TSQLTimeStampField
      FieldName = 'HORAFINAL'
    end
  end
  object DSMovOTSabado: TDataSource
    DataSet = CDSMovOTSabado
    Left = 312
    Top = 304
  end
  object CDSMovOTDomingo: TClientDataSet
    Aggregates = <>
    Filter = 'dia=0'
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'operador'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovOT'
    OnCalcFields = CDSMovOTDomingoCalcFields
    Left = 216
    Top = 352
    object CDSMovOTDomingoDETALLE: TMemoField
      FieldName = 'DETALLE'
      BlobType = ftMemo
      Size = 1
    end
    object CDSMovOTDomingoDIA: TSmallintField
      FieldName = 'DIA'
    end
    object CDSMovOTDomingoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovOTDomingoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSMovOTDomingoPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object CDSMovOTDomingoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSMovOTDomingoOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Size = 6
    end
    object CDSMovOTDomingoIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 50
    end
    object CDSMovOTDomingoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object CDSMovOTDomingoID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Required = True
    end
    object CDSMovOTDomingoTIEMPO: TDateTimeField
      FieldKind = fkInternalCalc
      FieldName = 'TIEMPO'
    end
    object CDSMovOTDomingoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovOTDomingoHORAINICIO: TSQLTimeStampField
      FieldName = 'HORAINICIO'
    end
    object CDSMovOTDomingoHORAFINAL: TSQLTimeStampField
      FieldName = 'HORAFINAL'
    end
  end
  object DSMovOTDomingo: TDataSource
    DataSet = CDSMovOTDomingo
    Left = 312
    Top = 352
  end
  object QMovOT_Borrar: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'operador'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select om.fecha,om.detalle,om.horainicio,om.horafinal,'
      'extract(weekday from om.fecha ) as Dia,oc.nrocpbte,'
      
        'oc.codigo,oc.producto,oc.nombre,om.operario,pr.identificador,pr.' +
        'descripcion,'
      'om.id_otcab'
      'from ordentrabajomov om'
      'left join ordentrabajocab oc on oc.id_ot=om.id_otcab'
      'left join productos pr on pr.id=oc.producto'
      
        'where om.operario=:operador and om.fecha>=:desde and om.fecha<=:' +
        'hasta'
      'and om.horainicio<>om.horafinal'
      'order by om.horainicio')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 824
    Top = 512
  end
  object QPersonal_Borrar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.cargo,p.categoria,p.ctacontable,p.domicilio,p.estado_ci' +
        'vil,'
      
        '       p.fecha_ingreso,p.fecha_nacimiento,p.codigo,p.localidad,p' +
        '.nombre,p.telefono_1,'
      
        '       p.telefono_2,c.detalle as MuestraCargo, ct.detalle as Mue' +
        'straCategoria,'
      '       cp.Detalle_Postal as MuestraLocalidad,'
      '       cp.codigo_postal as MuestraCPostal from personal p'
      'left join cargo c on c.id=p.cargo'
      'left join categoria ct on ct.id=p.categoria'
      'left join c_postal cp on cp.id_Postal=p.localidad'
      'where p.codigo=:codigo')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 888
    Top = 512
  end
  object CDSBuscaPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPersonal'
    Left = 552
    Top = 456
    object CDSBuscaPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPBuscaPersonal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPersonal
    Left = 488
    Top = 456
  end
  object ComBuscadorEmpleados: TComBuscador
    Data = CDSBuscaPersonal
    Campo = 'CODIGO'
    Titulo = 'Personal'
    rOk = False
    Left = 468
    Top = 146
  end
  object QMovOT: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select om.fecha,om.detalle,om.horainicio,om.horafinal,'
      'extract(weekday from om.fecha ) as Dia,oc.nrocpbte,'
      
        'oc.codigo,oc.producto,oc.nombre,om.operario,pr.identificador,pr.' +
        'descripcion,'
      'om.id_otcab'
      'from ordentrabajomov om'
      'left join ordentrabajocab oc on oc.id_ot=om.id_otcab'
      'left join productos pr on pr.id=oc.producto'
      
        'where om.operario=:operador and om.fecha>=:desde and om.fecha<=:' +
        'hasta'
      'and om.horainicio<>om.horafinal'
      'order by om.horainicio')
    Left = 77
    Top = 386
    ParamData = <
      item
        Position = 1
        Name = 'operador'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QPersonal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.cargo,p.categoria,p.ctacontable,p.domicilio,p.estado_ci' +
        'vil,'
      
        '       p.fecha_ingreso,p.fecha_nacimiento,p.codigo,p.localidad,p' +
        '.nombre,p.telefono_1,'
      
        '       p.telefono_2,c.detalle as MuestraCargo, ct.detalle as Mue' +
        'straCategoria,'
      '       cp.Detalle_Postal as MuestraLocalidad,'
      '       cp.codigo_postal as MuestraCPostal from personal p'
      'left join cargo c on c.id=p.cargo'
      'left join categoria ct on ct.id=p.categoria'
      'left join c_postal cp on cp.id_Postal=p.localidad'
      'where p.codigo=:codigo')
    Left = 629
    Top = 298
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
end

inherited FormInformeSemanal: TFormInformeSemanal
  Caption = 'Inform Semanal'
  ClientHeight = 692
  ClientWidth = 1071
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1089
  ExplicitHeight = 733
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1071
    Height = 639
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1071
    ExplicitHeight = 639
    object GridPanel1: TGridPanel
      Left = 0
      Top = 57
      Width = 1071
      Height = 582
      Align = alClient
      Caption = 'GridPanel1'
      ColumnCollection = <
        item
          Value = 49.857224443175330000
        end
        item
          Value = 50.142775556824670000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = pnVentas
          Row = 0
        end
        item
          Column = 1
          Control = pnCompraas
          Row = 0
        end
        item
          Column = 0
          Control = pnCobranza
          Row = 1
        end
        item
          Column = 1
          Control = pnGastos
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 0
      object pnVentas: TPanel
        Left = 1
        Top = 1
        Width = 533
        Height = 290
        Align = alClient
        Caption = 'pnVentas'
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        ParentBackground = False
        TabOrder = 0
        object chartVentas: TTMSFNCBarChart
          Left = 304
          Top = 4
          Width = 225
          Height = 282
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
          Appearance.MonochromeColor = clSteelblue
          ClickMargin = 10.000000000000000000
          Legend.Fill.Color = clGhostwhite
          Legend.Stroke.Color = clGray
          Legend.Visible = False
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          Legend.Left = 10.000000000000000000
          Legend.Position = lpTopRight
          Legend.Top = 10.000000000000000000
          Stroke.Color = clGray
          SeriesMargins.Left = 0
          SeriesMargins.Top = 0
          SeriesMargins.Right = 0
          SeriesMargins.Bottom = 0
          Series = <>
          Title.Fill.Kind = gfkNone
          Title.Fill.Color = clGhostwhite
          Title.Stroke.Color = clGray
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Height = 20.000000000000000000
          Title.Line = False
          Title.TextMargins.Left = 3
          Title.TextMargins.Top = 3
          Title.TextMargins.Right = 3
          Title.TextMargins.Bottom = 3
          Title.Text = 'Ventas'
          XAxis.Fill.Kind = gfkNone
          XAxis.Fill.Color = clGhostwhite
          XAxis.Stroke.Color = clGray
          XAxis.Height = 30.000000000000000000
          XAxis.Line = False
          YAxis.Fill.Kind = gfkNone
          YAxis.Fill.Color = clGhostwhite
          YAxis.Stroke.Color = clGray
          YAxis.ReferenceValue = 5.000000000000000000
          YAxis.Line = False
          YAxis.Width = 40.000000000000000000
          DefaultLoadOptions.XValuesFormatString = '%.0f'
          DefaultLoadOptions.YValuesFormatString = '%.2f'
          DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
          Align = alClient
          TabOrder = 0
        end
        object AdvToolPanelTab1: TAdvToolPanelTab
          Left = 4
          Top = 4
          Width = 300
          Height = 282
          AutoThemeAdapt = True
          Color = clWhite
          ColorTo = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4474440
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Position = ppLeft
          SlideSpeed = ssInstant
          Style = esCustom
          TabBorderColor = clWhite
          TabColor = clWhite
          TabColorTo = clWhite
          TabHoverColor = 15917525
          TabHoverColorTo = 15917525
          TabWidth = 20
          Version = '1.8.5.1'
          object AdvToolPanel1: TAdvToolPanel
            Left = 20
            Top = 0
            Width = 280
            Height = 282
            BackgroundTransparent = False
            BackGroundPosition = bpTopLeft
            Button3D = False
            HoverButtonColor = 15917525
            HoverButtonColorTo = 15917525
            DownButtonColor = 14925219
            DownButtonColorTo = 14925219
            CaptionButton = False
            Color = clWhite
            ColorTo = clWhite
            GradientDirection = gdVertical
            DockDots = False
            Caption = 'Valores'
            CaptionGradientDirection = gdVertical
            FocusCaptionFontColor = clBlack
            FocusCaptionColor = 15917525
            FocusCaptionColorTo = 15917525
            NoFocusCaptionFontColor = 4474440
            NoFocusCaptionColor = clWhite
            NoFocusCaptionColorTo = clWhite
            OpenWidth = 300
            CloseHint = 'Close panel'
            LockHint = 'Lock panel'
            UnlockHint = 'Unlock panel'
            Sections = <>
            SectionLayout.CaptionColor = clWhite
            SectionLayout.CaptionColorTo = clWhite
            SectionLayout.CaptionFontColor = 4474440
            SectionLayout.CaptionRounded = False
            SectionLayout.Corners = scRectangle
            SectionLayout.BackGroundColor = clWhite
            SectionLayout.BackGroundColorTo = clWhite
            SectionLayout.BorderColor = 11250603
            SectionLayout.BorderWidth = 1
            SectionLayout.CaptionGradientDir = gdVertical
            SectionLayout.BackGroundGradientDir = gdVertical
            SectionLayout.Indent = 4
            SectionLayout.Spacing = 4
            SectionLayout.ItemFontColor = 4474440
            SectionLayout.ItemHoverTextColor = clBlack
            SectionLayout.ItemHoverUnderline = True
            SectionLayout.UnderLineCaption = False
            ShowCaptionBorder = False
            ShowClose = False
            ShowLock = False
            Style = esCustom
            Version = '1.8.5.1'
            object dbgVentas: TDBGrid
              Left = 1
              Top = 24
              Width = 278
              Height = 257
              Align = alClient
              DataSource = DSVentas
              Options = [dgEditing, dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = 4474440
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'FECHAVTA'
                  Title.Alignment = taCenter
                  Width = 101
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTALVTA'
                  Title.Alignment = taCenter
                  Width = 95
                  Visible = True
                end>
            end
          end
        end
      end
      object pnCompraas: TPanel
        Left = 534
        Top = 1
        Width = 536
        Height = 290
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        object AdvToolPanelTab2: TAdvToolPanelTab
          Left = 1
          Top = 1
          Width = 300
          Height = 288
          AutoThemeAdapt = True
          Color = clWhite
          ColorTo = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4474440
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Position = ppLeft
          SlideSpeed = ssInstant
          Style = esCustom
          TabBorderColor = clWhite
          TabColor = clWhite
          TabColorTo = clWhite
          TabHoverColor = 15917525
          TabHoverColorTo = 15917525
          TabWidth = 20
          Version = '1.8.5.1'
          object AdvToolPanel2: TAdvToolPanel
            Left = 20
            Top = 0
            Width = 280
            Height = 288
            BackgroundTransparent = False
            BackGroundPosition = bpTopLeft
            Button3D = False
            HoverButtonColor = 15917525
            HoverButtonColorTo = 15917525
            DownButtonColor = 14925219
            DownButtonColorTo = 14925219
            CaptionButton = False
            Color = clWhite
            ColorTo = clWhite
            GradientDirection = gdVertical
            DockDots = False
            Caption = 'Valores'
            CaptionGradientDirection = gdVertical
            FocusCaptionFontColor = clBlack
            FocusCaptionColor = 15917525
            FocusCaptionColorTo = 15917525
            NoFocusCaptionFontColor = 4474440
            NoFocusCaptionColor = clWhite
            NoFocusCaptionColorTo = clWhite
            OpenWidth = 300
            CloseHint = 'Close panel'
            LockHint = 'Lock panel'
            UnlockHint = 'Unlock panel'
            Sections = <>
            SectionLayout.CaptionColor = clWhite
            SectionLayout.CaptionColorTo = clWhite
            SectionLayout.CaptionFontColor = 4474440
            SectionLayout.CaptionRounded = False
            SectionLayout.Corners = scRectangle
            SectionLayout.BackGroundColor = clWhite
            SectionLayout.BackGroundColorTo = clWhite
            SectionLayout.BorderColor = 11250603
            SectionLayout.BorderWidth = 1
            SectionLayout.CaptionGradientDir = gdVertical
            SectionLayout.BackGroundGradientDir = gdVertical
            SectionLayout.Indent = 4
            SectionLayout.Spacing = 4
            SectionLayout.ItemFontColor = 4474440
            SectionLayout.ItemHoverTextColor = clBlack
            SectionLayout.ItemHoverUnderline = True
            SectionLayout.UnderLineCaption = False
            ShowCaptionBorder = False
            ShowClose = False
            ShowLock = False
            Style = esCustom
            Version = '1.8.5.1'
            object dbgCompras: TDBGrid
              Left = 1
              Top = 24
              Width = 278
              Height = 263
              Align = alClient
              DataSource = DSCompras
              Options = [dgEditing, dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = 4474440
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'FECHACOMPRA'
                  Title.Alignment = taCenter
                  Width = 101
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTALCOMPRAS'
                  Title.Alignment = taCenter
                  Width = 95
                  Visible = True
                end>
            end
          end
        end
        object chartCompras: TTMSFNCBarChart
          Left = 301
          Top = 1
          Width = 234
          Height = 288
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
          Appearance.MonochromeColor = clSteelblue
          ClickMargin = 10.000000000000000000
          Legend.Fill.Color = clGhostwhite
          Legend.Stroke.Color = clGray
          Legend.Visible = False
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          Legend.Left = 10.000000000000000000
          Legend.Position = lpTopRight
          Legend.Top = 10.000000000000000000
          Stroke.Color = clGray
          SeriesMargins.Left = 0
          SeriesMargins.Top = 0
          SeriesMargins.Right = 0
          SeriesMargins.Bottom = 0
          Series = <>
          Title.Fill.Kind = gfkNone
          Title.Fill.Color = clGhostwhite
          Title.Stroke.Color = clGray
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Height = 20.000000000000000000
          Title.Line = False
          Title.TextMargins.Left = 3
          Title.TextMargins.Top = 3
          Title.TextMargins.Right = 3
          Title.TextMargins.Bottom = 3
          Title.Text = 'Compras'
          XAxis.Fill.Kind = gfkNone
          XAxis.Fill.Color = clGhostwhite
          XAxis.Stroke.Color = clGray
          XAxis.AutoSize = False
          XAxis.Height = 30.000000000000000000
          XAxis.Line = False
          YAxis.Fill.Kind = gfkNone
          YAxis.Fill.Color = clGhostwhite
          YAxis.Stroke.Color = clGray
          YAxis.ReferenceValue = 5.000000000000000000
          YAxis.Line = False
          YAxis.Width = 40.000000000000000000
          DefaultLoadOptions.XValuesFormatString = '%.0f'
          DefaultLoadOptions.YValuesFormatString = '%.2f'
          DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
          Align = alClient
          TabOrder = 1
        end
      end
      object pnCobranza: TPanel
        Left = 1
        Top = 291
        Width = 533
        Height = 290
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 2
        object chartVentasCtdo: TTMSFNCChart
          Left = 301
          Top = 1
          Width = 231
          Height = 288
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
          Appearance.MonochromeColor = clSteelblue
          ClickMargin = 10.000000000000000000
          Legend.Fill.Kind = gfkNone
          Legend.Fill.Color = clGhostwhite
          Legend.Stroke.Color = clGray
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          Legend.Left = 10.000000000000000000
          Legend.Top = 10.000000000000000000
          Stroke.Color = clGray
          SeriesMargins.Left = 0
          SeriesMargins.Top = 0
          SeriesMargins.Right = 0
          SeriesMargins.Bottom = 0
          Series = <>
          Title.Fill.Kind = gfkNone
          Title.Fill.Color = clGhostwhite
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
          Title.Text = 'Ventas Ctdo'
          XAxis.Fill.Kind = gfkNone
          XAxis.Fill.Color = clGhostwhite
          XAxis.Stroke.Color = clGray
          XAxis.Height = 35.000000000000000000
          YAxis.Fill.Kind = gfkNone
          YAxis.Fill.Color = clGhostwhite
          YAxis.Stroke.Color = clGray
          YAxis.Line = False
          YAxis.Width = 40.000000000000000000
          DefaultLoadOptions.XValuesFormatString = '%.0f'
          DefaultLoadOptions.YValuesFormatString = '%.2f'
          DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
          Align = alClient
          TabOrder = 0
        end
        object AdvToolPanelTab3: TAdvToolPanelTab
          Left = 1
          Top = 1
          Width = 300
          Height = 288
          AutoThemeAdapt = True
          Color = clWhite
          ColorTo = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4474440
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Position = ppLeft
          SlideSpeed = ssInstant
          Style = esCustom
          TabBorderColor = clWhite
          TabColor = clWhite
          TabColorTo = clWhite
          TabHoverColor = 15917525
          TabHoverColorTo = 15917525
          TabWidth = 20
          Version = '1.8.5.1'
          object AdvToolPanel3: TAdvToolPanel
            Left = 20
            Top = 0
            Width = 280
            Height = 288
            BackgroundTransparent = False
            BackGroundPosition = bpTopLeft
            Button3D = False
            HoverButtonColor = 15917525
            HoverButtonColorTo = 15917525
            DownButtonColor = 14925219
            DownButtonColorTo = 14925219
            CaptionButton = False
            Color = clWhite
            ColorTo = clWhite
            GradientDirection = gdVertical
            DockDots = False
            Caption = 'Valores'
            CaptionGradientDirection = gdVertical
            FocusCaptionFontColor = clBlack
            FocusCaptionColor = 15917525
            FocusCaptionColorTo = 15917525
            NoFocusCaptionFontColor = 4474440
            NoFocusCaptionColor = clWhite
            NoFocusCaptionColorTo = clWhite
            OpenWidth = 300
            CloseHint = 'Close panel'
            LockHint = 'Lock panel'
            UnlockHint = 'Unlock panel'
            Sections = <>
            SectionLayout.CaptionColor = clWhite
            SectionLayout.CaptionColorTo = clWhite
            SectionLayout.CaptionFontColor = 4474440
            SectionLayout.CaptionRounded = False
            SectionLayout.Corners = scRectangle
            SectionLayout.BackGroundColor = clWhite
            SectionLayout.BackGroundColorTo = clWhite
            SectionLayout.BorderColor = 11250603
            SectionLayout.BorderWidth = 1
            SectionLayout.CaptionGradientDir = gdVertical
            SectionLayout.BackGroundGradientDir = gdVertical
            SectionLayout.Indent = 4
            SectionLayout.Spacing = 4
            SectionLayout.ItemFontColor = 4474440
            SectionLayout.ItemHoverTextColor = clBlack
            SectionLayout.ItemHoverUnderline = True
            SectionLayout.UnderLineCaption = False
            ShowCaptionBorder = False
            ShowClose = False
            ShowLock = False
            Style = esCustom
            Version = '1.8.5.1'
            object DBGrid1: TDBGrid
              Left = 1
              Top = 24
              Width = 278
              Height = 263
              Align = alClient
              DataSource = DSVentasCtdo
              Options = [dgEditing, dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = 4474440
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'FECHAVTA'
                  Title.Alignment = taCenter
                  Width = 125
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTALVTA'
                  Title.Alignment = taCenter
                  Width = 95
                  Visible = True
                end>
            end
          end
        end
      end
      object pnGastos: TPanel
        Left = 534
        Top = 291
        Width = 536
        Height = 290
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 3
        object TMSFNCChart4: TTMSFNCChart
          Left = 1
          Top = 1
          Width = 534
          Height = 288
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
          Appearance.MonochromeColor = clSteelblue
          ClickMargin = 10.000000000000000000
          Legend.Fill.Color = clGhostwhite
          Legend.Stroke.Color = clGray
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          Legend.Left = 10.000000000000000000
          Legend.Top = 10.000000000000000000
          Interaction = False
          Stroke.Color = clGray
          SeriesMargins.Left = 0
          SeriesMargins.Top = 0
          SeriesMargins.Right = 0
          SeriesMargins.Bottom = 0
          Series = <
            item
              AnimationFactor = 4.000000000000000000
              AutoYRange = arCommonZeroBased
              Bar.Width = 65.000000000000000000
              Bar.Spacing = 14.000000000000000000
              MultiPoint.Width = 65.000000000000000000
              Pie.Size = 200.000000000000000000
              Pie.Margins.Left = 10
              Pie.Margins.Top = 10
              Pie.Margins.Right = 10
              Pie.Margins.Bottom = 10
              Pie.SweepAngle = 360.000000000000000000
              ChartType = ctPie
              Fill.Color = clLightslategray
              LegendText = 'Serie 1'
              Labels.Fill.Color = clGhostwhite
              Labels.Font.Charset = DEFAULT_CHARSET
              Labels.Font.Color = clWindowText
              Labels.Font.Height = -11
              Labels.Font.Name = 'Tahoma'
              Labels.Font.Style = []
              Labels.Format = '%.2f'
              Labels.OffsetY = -10.000000000000000000
              Labels.Stroke.Color = clGray
              Markers.Fill.Color = clLightslategray
              Markers.Height = 10.000000000000000000
              Markers.Stroke.Color = clDarkslategray
              Markers.Visible = True
              Markers.Width = 10.000000000000000000
              MaxX = 10.000000000000000000
              MaxY = 10.000000000000000000
              MaxYOffsetPercentage = 10.000000000000000000
              Offset3DX = 15.000000000000000000
              Offset3DY = 15.000000000000000000
              Points = <
                item
                  Annotations = <>
                  Color = 16105559
                  YValue = 41.000000000000000000
                  YValueSecond = 4.000000000000000000
                  YValueVariable = 24.000000000000000000
                  YValueLow = 2.000000000000000000
                  YValueClose = 50.000000000000000000
                  YValueHigh = 41.000000000000000000
                  YValueOpen = 53.000000000000000000
                  YValueMedian = 49.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 5644279
                  XValue = 1.000000000000000000
                  YValue = 44.000000000000000000
                  YValueSecond = 4.000000000000000000
                  YValueVariable = 24.000000000000000000
                  YValueLow = 31.000000000000000000
                  YValueClose = 46.000000000000000000
                  YValueHigh = 44.000000000000000000
                  YValueOpen = 52.000000000000000000
                  YValueMedian = 53.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 7936771
                  XValue = 2.000000000000000000
                  YValue = 55.000000000000000000
                  YValueSecond = 15.000000000000000000
                  YValueVariable = 35.000000000000000000
                  YValueLow = 7.000000000000000000
                  YValueClose = 45.000000000000000000
                  YValueHigh = 55.000000000000000000
                  YValueOpen = 51.000000000000000000
                  YValueMedian = 51.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 12275349
                  XValue = 3.000000000000000000
                  YValue = 122.000000000000000000
                  YValueSecond = 82.000000000000000000
                  YValueVariable = 102.000000000000000000
                  YValueLow = 38.000000000000000000
                  YValueClose = 124.000000000000000000
                  YValueHigh = 122.000000000000000000
                  YValueOpen = 118.000000000000000000
                  YValueMedian = 119.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 1296366
                  XValue = 4.000000000000000000
                  YValue = 111.000000000000000000
                  YValueSecond = 71.000000000000000000
                  YValueVariable = 91.000000000000000000
                  YValueLow = -7.000000000000000000
                  YValueClose = 113.000000000000000000
                  YValueHigh = 111.000000000000000000
                  YValueOpen = 118.000000000000000000
                  YValueMedian = 119.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 4350195
                  XValue = 5.000000000000000000
                  YValue = 70.000000000000000000
                  YValueSecond = 30.000000000000000000
                  YValueVariable = 50.000000000000000000
                  YValueLow = 70.000000000000000000
                  YValueClose = 73.000000000000000000
                  YValueHigh = 70.000000000000000000
                  YValueOpen = 71.000000000000000000
                  YValueMedian = 75.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 16544551
                  XValue = 6.000000000000000000
                  YValue = 143.000000000000000000
                  YValueSecond = 103.000000000000000000
                  YValueVariable = 123.000000000000000000
                  YValueLow = 31.000000000000000000
                  YValueClose = 138.000000000000000000
                  YValueHigh = 143.000000000000000000
                  YValueOpen = 133.000000000000000000
                  YValueMedian = 137.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 5820321
                  XValue = 7.000000000000000000
                  YValue = 31.000000000000000000
                  YValueSecond = -9.000000000000000000
                  YValueVariable = 11.000000000000000000
                  YValueLow = -15.000000000000000000
                  YValueClose = 37.000000000000000000
                  YValueHigh = 31.000000000000000000
                  YValueOpen = 32.000000000000000000
                  YValueMedian = 27.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 10922240
                  XValue = 8.000000000000000000
                  YValue = 97.000000000000000000
                  YValueSecond = 57.000000000000000000
                  YValueVariable = 77.000000000000000000
                  YValueLow = 29.000000000000000000
                  YValueClose = 88.000000000000000000
                  YValueHigh = 97.000000000000000000
                  YValueOpen = 95.000000000000000000
                  YValueMedian = 98.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 16376965
                  XValue = 9.000000000000000000
                  YValue = 61.000000000000000000
                  YValueSecond = 21.000000000000000000
                  YValueVariable = 41.000000000000000000
                  YValueLow = 50.000000000000000000
                  YValueClose = 56.000000000000000000
                  YValueHigh = 61.000000000000000000
                  YValueOpen = 66.000000000000000000
                  YValueMedian = 69.000000000000000000
                end
                item
                  Annotations = <>
                  Color = 14763206
                  XValue = 10.000000000000000000
                  YValue = 120.000000000000000000
                  YValueSecond = 80.000000000000000000
                  YValueVariable = 100.000000000000000000
                  YValueLow = 75.000000000000000000
                  YValueClose = 124.000000000000000000
                  YValueHigh = 120.000000000000000000
                  YValueOpen = 122.000000000000000000
                  YValueMedian = 125.000000000000000000
                end>
              Legend.Fill.Color = clGhostwhite
              Legend.Font.Charset = DEFAULT_CHARSET
              Legend.Font.Color = clWindowText
              Legend.Font.Height = -11
              Legend.Font.Name = 'Tahoma'
              Legend.Font.Style = []
              Legend.Left = -10.000000000000000000
              Legend.Stroke.Color = clGray
              Stroke.Color = clDarkslategray
              XGrid.Visible = True
              XValues.MajorUnit = 1.000000000000000000
              XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
              XValues.MajorUnitFont.Color = clWindowText
              XValues.MajorUnitFont.Height = -11
              XValues.MajorUnitFont.Name = 'Tahoma'
              XValues.MajorUnitFont.Style = []
              XValues.MajorUnitFormat = '%.0f'
              XValues.MajorUnitSpacing = 5.000000000000000000
              XValues.MajorUnitTickMarkSize = 10.000000000000000000
              XValues.MajorUnitTickMarkColor = clSilver
              XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
              XValues.MinorUnitFont.Color = clWindowText
              XValues.MinorUnitFont.Height = -11
              XValues.MinorUnitFont.Name = 'Tahoma'
              XValues.MinorUnitFont.Style = []
              XValues.MinorUnitFormat = '%.0f'
              XValues.MinorUnitSpacing = 5.000000000000000000
              XValues.MinorUnitTickMarkSize = 7.000000000000000000
              XValues.MinorUnitTickMarkColor = clSilver
              XValues.Title.Font.Charset = DEFAULT_CHARSET
              XValues.Title.Font.Color = clWindowText
              XValues.Title.Font.Height = -11
              XValues.Title.Font.Name = 'Tahoma'
              XValues.Title.Font.Style = []
              XValues.Title.TextMargins.Left = 0
              XValues.Title.TextMargins.Top = 0
              XValues.Title.TextMargins.Right = 0
              XValues.Title.TextMargins.Bottom = 0
              XValues.Title.Text = 'X-Axis Serie 1'
              YGrid.Visible = True
              YValues.MajorUnit = 1.000000000000000000
              YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
              YValues.MajorUnitFont.Color = clWindowText
              YValues.MajorUnitFont.Height = -11
              YValues.MajorUnitFont.Name = 'Tahoma'
              YValues.MajorUnitFont.Style = []
              YValues.MajorUnitFormat = '%.2f'
              YValues.MajorUnitSpacing = 5.000000000000000000
              YValues.MajorUnitTickMarkSize = 10.000000000000000000
              YValues.MajorUnitTickMarkColor = clSilver
              YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
              YValues.MinorUnitFont.Color = clWindowText
              YValues.MinorUnitFont.Height = -11
              YValues.MinorUnitFont.Name = 'Tahoma'
              YValues.MinorUnitFont.Style = []
              YValues.MinorUnitFormat = '%.2f'
              YValues.MinorUnitSpacing = 5.000000000000000000
              YValues.MinorUnitTickMarkSize = 7.000000000000000000
              YValues.MinorUnitTickMarkColor = clSilver
              YValues.Title.Font.Charset = DEFAULT_CHARSET
              YValues.Title.Font.Color = clWindowText
              YValues.Title.Font.Height = -11
              YValues.Title.Font.Name = 'Tahoma'
              YValues.Title.Font.Style = []
              YValues.Title.TextMargins.Left = 0
              YValues.Title.TextMargins.Top = 0
              YValues.Title.TextMargins.Right = 0
              YValues.Title.TextMargins.Bottom = 0
              YValues.Title.Text = 'Y-Axis Serie 1'
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
            end>
          Title.Fill.Kind = gfkNone
          Title.Fill.Color = clGhostwhite
          Title.Stroke.Color = clGray
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Height = 35.000000000000000000
          Title.TextMargins.Left = 3
          Title.TextMargins.Top = 3
          Title.TextMargins.Right = 3
          Title.TextMargins.Bottom = 3
          Title.Text = 'TMS FNC Chart'
          XAxis.Fill.Kind = gfkNone
          XAxis.Fill.Color = clGhostwhite
          XAxis.Stroke.Color = clGray
          XAxis.DisplayAtReferenceValue = True
          XAxis.Height = 35.000000000000000000
          YAxis.Fill.Kind = gfkNone
          YAxis.Fill.Color = clGhostwhite
          YAxis.Stroke.Color = clGray
          YAxis.Width = 35.000000000000000000
          DefaultLoadOptions.XValuesFormatString = '%.0f'
          DefaultLoadOptions.YValuesFormatString = '%.2f'
          DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
          Align = alClient
          TabOrder = 0
          object TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter
            Left = 48
            Top = 104
            Width = 26
            Height = 26
            Visible = True
            Active = True
            Source.DataSource = DSValores
            Source.Series = <
              item
                YValue = 'HABER'
                XValue = 'DEBE'
              end>
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1071
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        1071
        57)
      object Label1: TLabel
        Left = 840
        Top = 8
        Width = 31
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 776
      end
      object Label2: TLabel
        Left = 936
        Top = 7
        Width = 28
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 872
      end
      object Label3: TLabel
        Left = 365
        Top = 0
        Width = 312
        Height = 50
        Caption = 'En Construccion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -40
        Font.Name = '@Microsoft JhengHei UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 10
        Top = 6
        Width = 41
        Height = 13
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Hasta: TJvDateEdit
        Left = 936
        Top = 26
        Width = 90
        Height = 21
        MinDate = 2.000000000000000000
        MaxDate = 401769.000000000000000000
        Anchors = [akTop, akRight]
        ShowNullDate = False
        TabOrder = 0
      end
      object Desde: TJvDateEdit
        Left = 840
        Top = 26
        Width = 90
        Height = 21
        MinDate = 2.000000000000000000
        MaxDate = 401769.000000000000000000
        Anchors = [akTop, akRight]
        ShowNullDate = False
        TabOrder = 1
      end
      object UpDown1: TUpDown
        Left = 1029
        Top = 26
        Width = 17
        Height = 21
        Anchors = [akTop, akRight]
        Min = -1000000
        Max = 1000000
        TabOrder = 2
        OnClick = UpDown1Click
      end
      object ceSucursal: TJvDBLookupCombo
        Left = 10
        Top = 25
        Width = 247
        Height = 21
        Hint = 'Sucursal por defecto, con la que se hacen las operaciones.'
        DisplayEmpty = 'Sin Seleccion'
        EmptyValue = '-1'
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursal
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 639
    Width = 1071
    Align = alBottom
    ExplicitTop = 639
    ExplicitWidth = 1071
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
    Top = 669
    Width = 1071
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 669
    ExplicitWidth = 1071
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 982
      ExplicitWidth = 982
    end
  end
  inherited DSBase: TDataSource
    Left = 592
    Top = 104
  end
  inherited ImageList1: TImageList
    Left = 400
    Top = 128
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited QUltimoCodigo: TSQLQuery
    Top = 304
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 680
    Top = 216
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 144
    Top = 296
  end
  object QCompras: TFDQuery
    OnCalcFields = QComprasCalcFields
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT f.fechacompra, SUM(CASE WHEN f.tipocpbte = '#39'NC'#39' THEN (f.t' +
        'otal * -1) ELSE f.total END) AS TotalCompras'
      'FROM fccompcab f'
      
        'where (f.fechacompra between :desde and :hasta) and (f.anulado<>' +
        #39'S'#39') and (f.SUCURSALCOMPRA=:sucursal or :sucursal=-1)'
      'GROUP BY f.fechacompra')
    Left = 623
    Top = 161
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprasFECHACOMPRA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      Required = True
    end
    object QComprasTOTALCOMPRAS: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compras'
      FieldName = 'TOTALCOMPRAS'
      Origin = 'TOTALCOMPRAS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QComprasDIA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DIA'
    end
  end
  object QVentas: TFDQuery
    OnCalcFields = QVentasCalcFields
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      
        'SELECT f.fechavta, SUM(CASE WHEN f.tipocpbte = '#39'NC'#39' THEN (f.tota' +
        'l * -1) ELSE f.total END) AS TotalVta'
      'FROM fcvtacab f'
      
        'where (f.fechavta between :desde and :hasta) and (f.anulado<>'#39'S'#39 +
        ') and (f.sucursal = :sucursal or :sucursal = -1)'
      'GROUP BY f.fechavta')
    Left = 340
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVentasFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 16
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QVentasTOTALVTA: TFMTBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Venta'
      FieldName = 'TOTALVTA'
      Origin = 'TOTALVTA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
      Precision = 16
      Size = 0
    end
    object QVentasDIA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DIA'
      Visible = False
    end
  end
  object DSVentas: TDataSource
    DataSet = QVentas
    Left = 397
    Top = 166
  end
  object DSCompras: TDataSource
    DataSet = QCompras
    Left = 675
    Top = 163
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,detalle from sucursal'
      'order by detalle')
    Left = 41
    Top = 102
  end
  object DSPSucursal: TDataSetProvider
    DataSet = QSucursal
    Left = 97
    Top = 102
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 161
    Top = 102
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 217
    Top = 102
  end
  object QVentasCtdo: TFDQuery
    OnCalcFields = QVentasCtdoCalcFields
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDouble
        TargetDataType = dtFmtBCD
      end>
    SQL.Strings = (
      
        'SELECT f.fechavta, SUM(CASE WHEN f.tipocpbte = '#39'NC'#39' THEN (f.tota' +
        'l * -1) ELSE f.total END) AS TotalVta'
      'FROM fcvtacab f'
      
        'where f.tipocpbte in ('#39'FO'#39','#39'TK'#39','#39'NC'#39') and (NC_CONTADO='#39'S'#39') and (' +
        'f.fechavta between :desde and :hasta) and (f.anulado<>'#39'S'#39') and (' +
        'f.sucursal = :sucursal or :sucursal = -1)'
      'GROUP BY f.fechavta')
    Left = 188
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVentasCtdoFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QVentasCtdoTOTALVTA: TFMTBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Venta Ctdo'
      FieldName = 'TOTALVTA'
      Origin = 'TOTALVTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 16
      Size = 0
    end
    object QVentasCtdoDIA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DIA'
    end
  end
  object DSVentasCtdo: TDataSource
    DataSet = QVentasCtdo
    Left = 269
    Top = 222
  end
  object QValores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtInt64
        TargetDataType = dtInt32
      end>
    SQL.Strings = (
      
        'select m.id_fpago, f.descripcion ,m.debe, m.haber from caja_mov ' +
        'm '
      'left join formapago f on f.id_fpago=m.id_fpago'
      'where m.id_comprobante in '
      ' '
      '(SELECT f.id_fc FROM fcvtacab f'
      ' where f.tipocpbte in ('#39'FO'#39','#39'TK'#39','#39'NC'#39') and '
      '                     (NC_CONTADO='#39'S'#39') and '
      '                     (f.fechavta between :desde and :hasta) and '
      
        '                     (f.anulado<>'#39'S'#39') and (f.sucursal = :sucursa' +
        'l or :sucursal = -1))')
    Left = 807
    Top = 365
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QValoresID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QValoresDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      ReadOnly = True
    end
    object QValoresDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QValoresHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
  end
  object DSValores: TDataSource
    DataSet = QValores
    Left = 863
    Top = 365
  end
end

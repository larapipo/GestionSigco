inherited FormListadoGastosObra: TFormListadoGastosObra
  Caption = 'Control de Movimientos de Obras'
  ClientHeight = 631
  ClientWidth = 1145
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1163
  ExplicitHeight = 672
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1145
    Height = 578
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1145
    ExplicitHeight = 578
    object pnPie: TPanel
      Left = 0
      Top = 537
      Width = 1145
      Height = 41
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Top = 5
      Padding.Right = 10
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      object Button1: TButton
        Left = 1094
        Top = 5
        Width = 41
        Height = 31
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alRight
        Caption = '>>'
        TabOrder = 0
        OnClick = Button1Click
        ExplicitLeft = 1104
        ExplicitTop = 0
        ExplicitHeight = 41
      end
    end
    object pnHead: TPanel
      Left = 0
      Top = 0
      Width = 1145
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        1145
        73)
      object Label3: TLabel
        Left = 5
        Top = 9
        Width = 23
        Height = 13
        Caption = 'Obra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 893
        Top = 14
        Width = 31
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 872
      end
      object Label2: TLabel
        Left = 1075
        Top = 14
        Width = 28
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 1054
      end
      object ceObra: TJvComboEdit
        Left = 7
        Top = 28
        Width = 73
        Height = 21
        ButtonWidth = 16
        ClickKey = 16397
        Color = clWhite
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        TabOrder = 0
        Text = ''
        OnButtonClick = ceObraButtonClick
      end
      object chbTodas: TAdvOfficeCheckBox
        Left = 423
        Top = 29
        Width = 112
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        Visible = False
        OnClick = chbTodasClick
        Alignment = taLeftJustify
        Caption = 'Todas las Obras'
        ReturnIsTab = False
        Version = '1.8.4.0'
      end
      object desde: TJvDateEdit
        Left = 893
        Top = 28
        Width = 105
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
      end
      object hasta: TJvDateEdit
        Left = 1004
        Top = 28
        Width = 105
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
        TabOrder = 3
      end
      object UpDown1: TUpDown
        Left = 1115
        Top = 29
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akTop, akRight]
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 4
        OnClick = UpDown1Click
      end
      object edNombreObra: TEdit
        Left = 86
        Top = 28
        Width = 322
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 5
      end
      object TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter
        Left = 664
        Top = 40
        Width = 26
        Height = 26
        Visible = True
        AutoCreateSeries = False
        Source.DataSource = DSTotales
        Source.Series = <
          item
            YValue = 'TOTAL'
            XLabel = 'NOMBRE'
          end>
      end
    end
    object pnMovimientos: TPanel
      Left = 0
      Top = 73
      Width = 1145
      Height = 464
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 2
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1145
        Height = 464
        ActivePage = pagDatos
        Align = alClient
        TabOrder = 0
        object pagDatos: TTabSheet
          Caption = 'Datos'
          object dbgDetalle: TDBAdvGrid
            Left = 0
            Top = 0
            Width = 1137
            Height = 436
            Align = alClient
            ColCount = 10
            Ctl3D = True
            DrawingStyle = gdsClassic
            FixedColor = clWhite
            RowCount = 2
            FixedRows = 1
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect, goFixedRowDefAlign]
            ParentCtl3D = False
            TabOrder = 0
            OnGetFloatFormat = dbgDetalleGetFloatFormat
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
            ControlLook.ToggleSwitch.BackgroundBorderWidth = 1.000000000000000000
            ControlLook.ToggleSwitch.ButtonBorderWidth = 1.000000000000000000
            ControlLook.ToggleSwitch.CaptionFont.Charset = DEFAULT_CHARSET
            ControlLook.ToggleSwitch.CaptionFont.Color = clWindowText
            ControlLook.ToggleSwitch.CaptionFont.Height = -12
            ControlLook.ToggleSwitch.CaptionFont.Name = 'Segoe UI'
            ControlLook.ToggleSwitch.CaptionFont.Style = []
            ControlLook.ToggleSwitch.Shadow = False
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
            FixedFooters = 1
            FixedColWidth = 20
            FixedRowHeight = 22
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Segoe UI'
            FixedFont.Style = [fsBold]
            FloatFormat = '%2f'
            FloatingFooter.Visible = True
            Grouping.HeaderColor = clBlue
            Grouping.HeaderTextColor = clWhite
            Grouping.MergeHeader = True
            Grouping.ShowGroupCount = True
            Grouping.Summary = True
            Grouping.SummaryTextColor = clBlue
            Grouping.SummaryLine = True
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
            SelectionTextColor = clWindowText
            SortSettings.HeaderColor = clWhite
            SortSettings.HeaderColorTo = clWhite
            SortSettings.HeaderMirrorColor = clWhite
            SortSettings.HeaderMirrorColorTo = clWhite
            Version = '2.5.1.23'
            AutoCreateColumns = True
            AutoRemoveColumns = True
            Columns = <
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -12
                HeaderFont.Name = 'Segoe UI'
                HeaderFont.Style = []
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -12
                PrintFont.Name = 'Segoe UI'
                PrintFont.Style = []
                Width = 20
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'OPERACION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header = 'Operacion'
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -12
                HeaderFont.Name = 'Segoe UI'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -12
                PrintFont.Name = 'Segoe UI'
                PrintFont.Style = []
                Width = 84
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'FECHA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header = 'Fecha'
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 73
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'TIPOCPBTE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header = 'Tipo'
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 58
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'CLASECPBTE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header = 'Clase'
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 51
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'NROCPBTE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header = 'Nro.Cpbte'
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 109
              end
              item
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'NOMBRE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header = 'Nombre'
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 336
              end
              item
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'DEBE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header = 'Debe'
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 114
              end
              item
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clWindow
                FieldName = 'HABER'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header = 'Haber'
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = 3881787
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = [fsBold]
                HeaderAlignment = taCenter
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 115
              end
              item
                Alignment = taRightJustify
                Borders = []
                BorderPen.Color = clSilver
                ButtonHeight = 18
                CheckFalse = 'N'
                CheckTrue = 'Y'
                Color = clAquamarine
                FieldName = 'SALDO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = [fsBold]
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 119
              end>
            DataSource = DSMovimientos
            PageMode = False
            InvalidPicture.Data = {
              055449636F6E0000010001002020200000000000A81000001600000028000000
              2000000040000000010020000000000000100000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
              6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
              FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
              6A6A6B4000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006A6A6B22
              7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
              3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
              888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000006A6A6B43838383D8
              B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
              0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
              ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
              00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
              CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
              0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
              4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
              000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
              2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
              0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
              1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
              0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
              13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
              0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
              0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
              0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
              0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
              0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
              0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
              00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
              0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
              0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
              0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
              00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
              0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
              0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
              4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
              000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
              2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
              0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
              EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
              6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
              1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
              0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
              D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
              6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
              0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
              3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
              2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
              6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
              0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
              ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
              0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
              6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
              0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
              C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
              0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
              6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
              3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
              C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
              0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
              6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
              3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
              CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
              0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
              6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
              3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
              D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
              0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
              6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
              3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
              DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
              0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
              6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
              3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
              D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
              0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
              6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
              3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
              5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
              4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
              6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
              5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
              2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
              F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
              6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
              5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
              3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
              CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
              00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
              4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
              4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
              5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
              0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
              4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
              4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
              292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
              0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
              6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
              4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
              3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
              000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
              A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
              4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
              4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
              00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
              D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
              4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
              8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
              0000000000000000000000000000000000000000000000006A6A6B43838383D8
              B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
              5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
              E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006A6A6B22
              7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
              8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
              888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
              FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
              6A6A6B4000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
              6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
              C000000380000001800000010000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000080000001
              80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
              FFC003FF}
            ShowUnicode = False
            ColWidths = (
              20
              84
              73
              58
              51
              109
              336
              114
              115
              119)
            RowHeights = (
              22
              22)
          end
        end
        object pagGrafico: TTabSheet
          Caption = 'Grafico'
          ImageIndex = 1
          object pnDatos: TPanel
            Left = 781
            Top = 0
            Width = 356
            Height = 436
            Align = alRight
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 1
              Top = 1
              Width = 354
              Height = 407
              Align = alClient
              DataSource = DSTotales
              Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NOMBRE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 234
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 89
                  Visible = True
                end>
            end
            object Panel2: TPanel
              Left = 1
              Top = 408
              Width = 354
              Height = 27
              Align = alBottom
              Color = clBtnShadow
              ParentBackground = False
              TabOrder = 1
              ExplicitWidth = 349
            end
          end
          object pnGrafico: TPanel
            Left = 0
            Top = 0
            Width = 781
            Height = 436
            Align = alClient
            TabOrder = 1
            ExplicitWidth = 777
            object fncChart: TTMSFNCBarChart
              Left = 1
              Top = 1
              Width = 779
              Height = 434
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
              Fill.Kind = gfkNone
              Legend.Fill.Kind = gfkNone
              Legend.Fill.Color = clGhostwhite
              Legend.Stroke.Color = clGray
              Legend.Visible = False
              Legend.Font.Charset = DEFAULT_CHARSET
              Legend.Font.Color = clWindowText
              Legend.Font.Height = -11
              Legend.Font.Name = 'Segoe UI'
              Legend.Font.Style = []
              Legend.Left = 10.000000000000000000
              Legend.Top = 10.000000000000000000
              Stroke.Kind = gskNone
              Stroke.Color = clGray
              SeriesMargins.Left = 0
              SeriesMargins.Top = 15
              SeriesMargins.Right = 0
              SeriesMargins.Bottom = 0
              Series = <
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
                  Fill.Color = 16105559
                  LegendText = 'Series 0'
                  Labels.Fill.Color = clGhostwhite
                  Labels.Font.Charset = DEFAULT_CHARSET
                  Labels.Font.Color = clWindowText
                  Labels.Font.Height = -11
                  Labels.Font.Name = 'Segoe UI'
                  Labels.Font.Style = []
                  Labels.Format = '%.2f'
                  Labels.OffsetY = -10.000000000000000000
                  Labels.Stroke.Color = clGray
                  Markers.Fill.Color = 16105559
                  Markers.Height = 10.000000000000000000
                  Markers.Stroke.Color = 8020012
                  Markers.Width = 10.000000000000000000
                  MaxX = 10.000000000000000000
                  MaxY = 10.000000000000000000
                  MaxYOffsetPercentage = 10.000000000000000000
                  Mode = smStatistical
                  Offset3DX = 15.000000000000000000
                  Offset3DY = 15.000000000000000000
                  Points = <
                    item
                      Annotations = <>
                      YValue = 114.000000000000000000
                      YValueSecond = 98.000000000000000000
                      YValueVariable = 114.000000000000000000
                      YValueLow = 60.000000000000000000
                      YValueClose = 67.000000000000000000
                      YValueHigh = 114.000000000000000000
                      YValueOpen = 82.000000000000000000
                      YValueMedian = 110.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 1.000000000000000000
                      YValue = 43.000000000000000000
                      YValueSecond = 26.000000000000000000
                      YValueVariable = 43.000000000000000000
                      YValueLow = 9.000000000000000000
                      YValueClose = 39.000000000000000000
                      YValueHigh = 43.000000000000000000
                      YValueOpen = 20.000000000000000000
                      YValueMedian = 43.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 2.000000000000000000
                      YValue = 91.000000000000000000
                      YValueSecond = 74.000000000000000000
                      YValueVariable = 91.000000000000000000
                      YValueLow = 38.000000000000000000
                      YValueClose = 41.000000000000000000
                      YValueHigh = 91.000000000000000000
                      YValueOpen = 77.000000000000000000
                      YValueMedian = 90.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 3.000000000000000000
                      YValue = 67.000000000000000000
                      YValueSecond = 50.000000000000000000
                      YValueVariable = 67.000000000000000000
                      YValueLow = 21.000000000000000000
                      YValueClose = 36.000000000000000000
                      YValueHigh = 67.000000000000000000
                      YValueOpen = 31.000000000000000000
                      YValueMedian = 64.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 4.000000000000000000
                      YValue = 110.000000000000000000
                      YValueSecond = 97.000000000000000000
                      YValueVariable = 110.000000000000000000
                      YValueLow = 61.000000000000000000
                      YValueClose = 100.000000000000000000
                      YValueHigh = 110.000000000000000000
                      YValueOpen = 62.000000000000000000
                      YValueMedian = 105.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 5.000000000000000000
                      YValue = 97.000000000000000000
                      YValueSecond = 81.000000000000000000
                      YValueVariable = 97.000000000000000000
                      YValueLow = 55.000000000000000000
                      YValueClose = 68.000000000000000000
                      YValueHigh = 97.000000000000000000
                      YValueOpen = 84.000000000000000000
                      YValueMedian = 100.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 6.000000000000000000
                      YValue = 95.000000000000000000
                      YValueSecond = 83.000000000000000000
                      YValueVariable = 95.000000000000000000
                      YValueLow = 43.000000000000000000
                      YValueClose = 75.000000000000000000
                      YValueHigh = 95.000000000000000000
                      YValueOpen = 52.000000000000000000
                      YValueMedian = 90.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 7.000000000000000000
                      YValue = 61.000000000000000000
                      YValueSecond = 48.000000000000000000
                      YValueVariable = 61.000000000000000000
                      YValueLow = 30.000000000000000000
                      YValueClose = 41.000000000000000000
                      YValueHigh = 61.000000000000000000
                      YValueOpen = 41.000000000000000000
                      YValueMedian = 65.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 8.000000000000000000
                      YValue = 102.000000000000000000
                      YValueSecond = 84.000000000000000000
                      YValueVariable = 102.000000000000000000
                      YValueLow = 42.000000000000000000
                      YValueClose = 72.000000000000000000
                      YValueHigh = 102.000000000000000000
                      YValueOpen = 52.000000000000000000
                      YValueMedian = 98.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 9.000000000000000000
                      YValue = 91.000000000000000000
                      YValueSecond = 81.000000000000000000
                      YValueVariable = 91.000000000000000000
                      YValueLow = 27.000000000000000000
                      YValueClose = 36.000000000000000000
                      YValueHigh = 91.000000000000000000
                      YValueOpen = 77.000000000000000000
                      YValueMedian = 89.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 10.000000000000000000
                      YValue = 62.000000000000000000
                      YValueSecond = 46.000000000000000000
                      YValueVariable = 62.000000000000000000
                      YValueLow = 24.000000000000000000
                      YValueClose = 44.000000000000000000
                      YValueHigh = 62.000000000000000000
                      YValueOpen = 48.000000000000000000
                      YValueMedian = 60.000000000000000000
                    end>
                  Legend.Fill.Color = clGhostwhite
                  Legend.Font.Charset = DEFAULT_CHARSET
                  Legend.Font.Color = clWindowText
                  Legend.Font.Height = -11
                  Legend.Font.Name = 'Segoe UI'
                  Legend.Font.Style = []
                  Legend.Left = -10.000000000000000000
                  Legend.Stroke.Color = clGray
                  Stroke.Kind = gskNone
                  Stroke.Color = 8020012
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
                  Fill.Color = 5644279
                  LegendText = 'Series 1'
                  Labels.Fill.Color = clGhostwhite
                  Labels.Font.Charset = DEFAULT_CHARSET
                  Labels.Font.Color = clWindowText
                  Labels.Font.Height = -11
                  Labels.Font.Name = 'Segoe UI'
                  Labels.Font.Style = []
                  Labels.Format = '%.2f'
                  Labels.OffsetY = -10.000000000000000000
                  Labels.Stroke.Color = clGray
                  Markers.Fill.Color = 5644279
                  Markers.Height = 10.000000000000000000
                  Markers.Stroke.Color = 2822268
                  Markers.Width = 10.000000000000000000
                  MaxX = 10.000000000000000000
                  MaxY = 10.000000000000000000
                  MaxYOffsetPercentage = 10.000000000000000000
                  Mode = smStatistical
                  Offset3DX = 15.000000000000000000
                  Offset3DY = 15.000000000000000000
                  Points = <
                    item
                      Annotations = <>
                      YValue = 65.000000000000000000
                      YValueSecond = 54.000000000000000000
                      YValueVariable = 65.000000000000000000
                      YValueLow = 35.000000000000000000
                      YValueClose = 42.000000000000000000
                      YValueHigh = 65.000000000000000000
                      YValueOpen = 39.000000000000000000
                      YValueMedian = 67.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 1.000000000000000000
                      YValue = 22.000000000000000000
                      YValueSecond = 7.000000000000000000
                      YValueVariable = 22.000000000000000000
                      YValueLow = 1.000000000000000000
                      YValueClose = 3.000000000000000000
                      YValueHigh = 22.000000000000000000
                      YValueOpen = 4.000000000000000000
                      YValueMedian = 25.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 2.000000000000000000
                      YValue = 90.000000000000000000
                      YValueSecond = 73.000000000000000000
                      YValueVariable = 90.000000000000000000
                      YValueLow = 38.000000000000000000
                      YValueClose = 55.000000000000000000
                      YValueHigh = 90.000000000000000000
                      YValueOpen = 54.000000000000000000
                      YValueMedian = 87.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 3.000000000000000000
                      YValue = 129.000000000000000000
                      YValueSecond = 110.000000000000000000
                      YValueVariable = 129.000000000000000000
                      YValueLow = 66.000000000000000000
                      YValueClose = 87.000000000000000000
                      YValueHigh = 129.000000000000000000
                      YValueOpen = 92.000000000000000000
                      YValueMedian = 131.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 4.000000000000000000
                      YValue = 53.000000000000000000
                      YValueSecond = 39.000000000000000000
                      YValueVariable = 53.000000000000000000
                      YValueLow = 25.000000000000000000
                      YValueClose = 51.000000000000000000
                      YValueHigh = 53.000000000000000000
                      YValueOpen = 44.000000000000000000
                      YValueMedian = 49.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 5.000000000000000000
                      YValue = 39.000000000000000000
                      YValueSecond = 20.000000000000000000
                      YValueVariable = 39.000000000000000000
                      YValueLow = 13.000000000000000000
                      YValueClose = 36.000000000000000000
                      YValueHigh = 39.000000000000000000
                      YValueOpen = 22.000000000000000000
                      YValueMedian = 40.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 6.000000000000000000
                      YValue = 40.000000000000000000
                      YValueSecond = 22.000000000000000000
                      YValueVariable = 40.000000000000000000
                      YValueLow = 9.000000000000000000
                      YValueClose = 27.000000000000000000
                      YValueHigh = 40.000000000000000000
                      YValueOpen = 12.000000000000000000
                      YValueMedian = 44.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 7.000000000000000000
                      YValue = 126.000000000000000000
                      YValueSecond = 116.000000000000000000
                      YValueVariable = 126.000000000000000000
                      YValueLow = 41.000000000000000000
                      YValueClose = 99.000000000000000000
                      YValueHigh = 126.000000000000000000
                      YValueOpen = 65.000000000000000000
                      YValueMedian = 126.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 8.000000000000000000
                      YValue = 52.000000000000000000
                      YValueSecond = 39.000000000000000000
                      YValueVariable = 52.000000000000000000
                      YValueLow = 24.000000000000000000
                      YValueClose = 33.000000000000000000
                      YValueHigh = 52.000000000000000000
                      YValueOpen = 38.000000000000000000
                      YValueMedian = 47.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 9.000000000000000000
                      YValue = 57.000000000000000000
                      YValueSecond = 42.000000000000000000
                      YValueVariable = 57.000000000000000000
                      YValueLow = 16.000000000000000000
                      YValueClose = 25.000000000000000000
                      YValueHigh = 57.000000000000000000
                      YValueOpen = 22.000000000000000000
                      YValueMedian = 61.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 10.000000000000000000
                      YValue = 80.000000000000000000
                      YValueSecond = 67.000000000000000000
                      YValueVariable = 80.000000000000000000
                      YValueLow = 39.000000000000000000
                      YValueClose = 46.000000000000000000
                      YValueHigh = 80.000000000000000000
                      YValueOpen = 59.000000000000000000
                      YValueMedian = 78.000000000000000000
                    end>
                  Legend.Fill.Color = clGhostwhite
                  Legend.Font.Charset = DEFAULT_CHARSET
                  Legend.Font.Color = clWindowText
                  Legend.Font.Height = -11
                  Legend.Font.Name = 'Segoe UI'
                  Legend.Font.Style = []
                  Legend.Left = -10.000000000000000000
                  Legend.Stroke.Color = clGray
                  Stroke.Color = 2822268
                  Visible = False
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
              Title.Fill.Color = clGhostwhite
              Title.Stroke.Kind = gskNone
              Title.Stroke.Color = clGray
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Title.Height = 35.000000000000000000
              Title.Line = False
              Title.TextMargins.Left = 3
              Title.TextMargins.Top = 3
              Title.TextMargins.Right = 3
              Title.TextMargins.Bottom = 3
              Title.Text = 'TMS FNC Chart'
              XAxis.Fill.Kind = gfkNone
              XAxis.Fill.Color = clGhostwhite
              XAxis.Stroke.Kind = gskNone
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
              ExplicitHeight = 402
            end
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 578
    Width = 1145
    Align = alBottom
    ExplicitTop = 578
    ExplicitWidth = 1145
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
    Top = 608
    Width = 1145
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 608
    ExplicitWidth = 1145
    inherited sbEstado: TStatusBar
      Width = 983
      ExplicitWidth = 983
    end
  end
  inherited ActionList1: TActionList
    inherited Buscar: TAction
      ShortCut = 0
    end
  end
  inherited DSBase: TDataSource
    Left = 544
  end
  inherited ImageList1: TImageList
    Top = 168
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 328
    Top = 312
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 520
    Top = 296
  end
  object QObras: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from obras where codigo=:codigo')
    Left = 604
    Top = 121
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QObrasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QObrasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QObrasFEHCHAINCIO: TSQLTimeStampField
      FieldName = 'FEHCHAINCIO'
      Origin = 'FEHCHAINCIO'
      Required = True
    end
    object QObrasFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
    object QObrasESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 1
    end
    object QObrasRESPONSABLE: TStringField
      FieldName = 'RESPONSABLE'
      Origin = 'RESPONSABLE'
      Size = 60
    end
    object QObrasDIREECION: TStringField
      FieldName = 'DIREECION'
      Origin = 'DIREECION'
      Size = 60
    end
    object QObrasLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
      Required = True
    end
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40248.373037650460000000
    ReportOptions.LastChange = 40248.373037650460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 999
    Top = 293
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDetalle: TfrxDBDataset
    UserName = 'frxDBDetalle'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1010
    Top = 359
    FieldDefs = <
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'NOMBREOBRA'
        FieldAlias = 'NOMBREOBRA'
      end
      item
        FieldName = 'CODIGODETALLE'
        FieldAlias = 'CODIGODETALLE'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'COSTO_TOTAL'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'UNITARIO_TOTAL'
      end
      item
        FieldName = 'COSTOTOTAL'
        FieldAlias = 'COSTOTOTAL'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 1053
    Top = 538
  end
  object DataToXLS1: TDataToXLS
    Columns = <
      item
        DataField = 'CODIGO'
        Title = 'Codigo'
        Alignment = taRightJustify
      end
      item
        DataField = 'FECHA'
        Title = 'Fecha'
      end
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbte'
      end
      item
        DataField = 'NOMBREOBRA'
        Title = 'Nom.Obra'
      end
      item
        DataField = 'CODIGODETALLE'
        Title = 'Cod.Art.'
      end
      item
        DataField = 'DETALLE'
        Title = 'Detalle'
      end
      item
        DataField = 'CANTIDAD'
        Title = 'Cantidad'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COSTO_TOTAL'
        Title = 'Costo'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'UNITARIO_TOTAL'
        Title = 'Unitario'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COSTOTOTAL'
        Title = 'Costo Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL'
        Title = 'Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end>
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -13
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Left = 1013
    Top = 428
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 768
    Top = 232
  end
  object QMovimientos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      
        'select '#39'RECIBO'#39' as Operacion,  rc.id_rc,rc.fecha,rc.tipocpbte,rc' +
        '.clasecpbte,rc.nrocpbte,rc.codigo,rc.razonsocial,rc.nombre,rc.to' +
        'tal as debe , 0 as Haber,rc.id_obra, extract( year from rc.fecha' +
        ') as Anio, extract( month from rc.fecha) as Mes, rc.saldo_aplica' +
        'r as Saldo from recibos rc'
      
        '  where ((rc.id_obra = :id_obra) or ( :id_obra = -1)) and (rc.fe' +
        'cha between :desde and :hasta )'
      'union'
      
        'select '#39'COMPRA'#39' as Operacion, fc.id_fc,fc.fechacompra,fc.tipocpb' +
        'te,fc.clasecpbte,fc.nrocpbte,fc.codigo,fc.razonsocial,fc.nombre,'
      '       (case when fc.tipocpbte='#39'NC'#39' then fc.total'
      '            when fc.tipocpbte<>'#39'NC'#39' Then 0'
      '       end) as Debe,'
      '       (case when fc.tipocpbte='#39'NC'#39' then 0'
      '            when fc.tipocpbte<>'#39'NC'#39' Then fc.total'
      '       end) as Haber,'
      
        '       fc.id_obra, extract( year from fc.fechacompra) as Anio, e' +
        'xtract( month from fc.fechacompra) as Mes,'
      
        '       (fc.total - (select coalesce(sum(ap.importe),0) from  mov' +
        'aplicacccompra ap where ap.aplica_id_cpbte=fc.id_fc and ap.aplic' +
        'a_tipocpbte=fc.tipocpbte)) as Saldo'
      ''
      ''
      '  from fccompcab fc'
      
        '    where ((fc.id_obra = :id_obra) or ( :id_obra = -1)) and (fc.' +
        'fechacompra between :desde and :hasta ) and fc.tipocpbte<>'#39'NC'#39
      'union'
      
        'select '#39'GASTO'#39' as Operacion,ec.id_egreso,ec.fecha,ec.tipocpbte,e' +
        'c.clasecpbte,ec.nrocpbte,ed.codigogasto,ed.detalle,'#39#39',0 as Debe,' +
        ' ed.importe as Haber,ec.id_obra, extract( year from ec.fecha) as' +
        ' Anio, extract( month from ec.fecha) as Mes,0 as saldo from egr_' +
        'caja ec'
      '  left join egr_caja_detalle ed on ed.id_cpbte=ec.id_egreso'
      
        '  where ((ec.id_obra = :id_obra) or ( :id_obra = -1)) and (ec.fe' +
        'cha between :desde and :hasta )'
      ''
      'order by 3')
    Left = 768
    Top = 377
    ParamData = <
      item
        Name = 'ID_OBRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QMovimientosOPERACION: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Operacion'
      FieldName = 'OPERACION'
      Origin = 'OPERACION'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object QMovimientosID_RC: TIntegerField
      FieldName = 'ID_RC'
      Origin = 'ID_RC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovimientosFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QMovimientosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QMovimientosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QMovimientosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QMovimientosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QMovimientosRAZONSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QMovimientosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QMovimientosDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QMovimientosHABER: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QMovimientosID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
    object QMovimientosANIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QMovimientosMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QMovimientosSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO_APLICAR'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSMovimientos: TDataSource
    DataSet = QMovimientos
    Left = 864
    Top = 385
  end
  object QTotales: TFDQuery
    IndexesActive = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fc.tipocpbte,fc.clasecpbte,fc.codigo,fc.razonsocial,fc.no' +
        'mbre,'
      '       fc.id_obra,'
      '       sum(fc.total) as total'
      '  from fccompcab fc'
      
        '    where ((fc.id_obra = :id_obra) or ( :id_obra = -1)) and (fc.' +
        'fechacompra between :desde and :hasta ) and fc.tipocpbte<>'#39'NC'#39
      ''
      
        ' group by  fc.tipocpbte,fc.clasecpbte,fc.codigo,fc.razonsocial,f' +
        'c.nombre,'
      '           fc.id_obra'
      'order by 7 desc')
    Left = 862
    Top = 265
    ParamData = <
      item
        Name = 'ID_OBRA'
        DataType = ftInteger
        ParamType = ptInput
        Size = 2
        Value = Null
      end
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
        Value = Null
      end>
    object QTotalesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QTotalesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QTotalesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QTotalesRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QTotalesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QTotalesID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
    object QTotalesTOTAL: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSTotales: TDataSource
    DataSet = QTotales
    Left = 926
    Top = 209
  end
end

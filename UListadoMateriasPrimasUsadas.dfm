inherited FormListadoMateriasPrimasUsadas: TFormListadoMateriasPrimasUsadas
  Caption = 'Listado de Materias Primas Usadas'
  ClientHeight = 737
  ClientWidth = 1138
  StyleElements = [seFont, seClient, seBorder]
  ExplicitTop = -35
  ExplicitWidth = 1156
  ExplicitHeight = 778
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1138
    Height = 685
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1138
    ExplicitHeight = 685
    object pnCab: TPanel
      Left = 0
      Top = 0
      Width = 1138
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        1138
        57)
      object lb2: TLabel
        Left = 921
        Top = 5
        Width = 106
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Per'#237'odo Seleccionado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 22
        Top = 14
        Width = 385
        Height = 24
        Caption = 'Materias Primas Utilizadas en Produccion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Desde: TJvDateEdit
        Left = 921
        Top = 24
        Width = 89
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
        TabOrder = 0
        OnAcceptDate = DesdeAcceptDate
      end
      object Hasta: TJvDateEdit
        Left = 1015
        Top = 24
        Width = 90
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
        ButtonWidth = 20
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
        OnAcceptDate = HastaAcceptDate
      end
      object ud1: TUpDown
        Left = 1106
        Top = 24
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akTop, akRight]
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
        OnClick = ud1Click
      end
    end
    object pnPie: TPanel
      Left = 0
      Top = 672
      Width = 1138
      Height = 13
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 57
      Width = 1138
      Height = 615
      ActivePage = pagArticulos
      Align = alClient
      TabOrder = 3
      object pagArticulos: TTabSheet
        Caption = 'Articulos Produccion'
        object TMSFNCDataGrid1: TTMSFNCDataGrid
          Left = 0
          Top = 0
          Width = 1130
          Height = 546
          AdaptToStyle = True
          Align = alClient
          ParentDoubleBuffered = False
          DoubleBuffered = True
          PopupMenu = PopupMenu1
          TabOrder = 0
          ShowAcceleratorChar = False
          Footer.Stroke.Color = 15987699
          Footer.Bar.Fill.Color = 16382457
          Footer.Bar.Stroke.Color = 15987699
          Footer.Bar.Buttons = <>
          Header.VisualGrouping.Layout.Fill.Kind = gfkGradient
          Header.VisualGrouping.Layout.Fill.Color = 16382457
          Header.VisualGrouping.Layout.Fill.ColorTo = 16382457
          Header.VisualGrouping.Layout.Font.Charset = DEFAULT_CHARSET
          Header.VisualGrouping.Layout.Font.Color = clBlack
          Header.VisualGrouping.Layout.Font.Height = -12
          Header.VisualGrouping.Layout.Font.Name = 'Segoe UI'
          Header.VisualGrouping.Layout.Font.Style = []
          Header.VisualGrouping.Layout.Stroke.Color = 15987699
          Header.VisualGrouping.LevelActiveIndicationFill.Color = clWhite
          Header.VisualGrouping.LevelIndicationStroke.Color = 15987699
          Header.VisualGrouping.LevelActiveIndicationStroke.Color = 15987699
          Header.Stroke.Color = 15987699
          Header.Bar.Fill.Color = 16382457
          Header.Bar.Stroke.Color = 15987699
          Header.Bar.Buttons = <>
          Adapter = TMSFNCDataGridDatabaseAdapter1
          CellAppearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FilterMatchLayout.Font.Color = clWindowText
          CellAppearance.FilterMatchLayout.Font.Height = -12
          CellAppearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          CellAppearance.FilterMatchLayout.Font.Style = []
          CellAppearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FilterInverseMatchLayout.Font.Color = clWindowText
          CellAppearance.FilterInverseMatchLayout.Font.Height = -12
          CellAppearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          CellAppearance.FilterInverseMatchLayout.Font.Style = []
          CellAppearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.BandLayout.Font.Color = clWindowText
          CellAppearance.BandLayout.Font.Height = -11
          CellAppearance.BandLayout.Font.Name = 'Segoe UI'
          CellAppearance.BandLayout.Font.Style = []
          CellAppearance.BandLayout.Stroke.Color = 15987699
          CellAppearance.FixedLayout.Fill.Kind = gfkGradient
          CellAppearance.FixedLayout.Fill.Color = 16382457
          CellAppearance.FixedLayout.Fill.ColorTo = 16382457
          CellAppearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FixedLayout.Font.Color = clBlack
          CellAppearance.FixedLayout.Font.Height = -11
          CellAppearance.FixedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FixedLayout.Font.Style = []
          CellAppearance.FixedLayout.Stroke.Color = 15987699
          CellAppearance.FixedSelectedLayout.Fill.Kind = gfkGradient
          CellAppearance.FixedSelectedLayout.Fill.Color = 15385233
          CellAppearance.FixedSelectedLayout.Fill.ColorTo = 15385233
          CellAppearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FixedSelectedLayout.Font.Color = clBlack
          CellAppearance.FixedSelectedLayout.Font.Height = -11
          CellAppearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FixedSelectedLayout.Font.Style = []
          CellAppearance.FixedSelectedLayout.Stroke.Color = 15987699
          CellAppearance.FocusedLayout.Fill.Kind = gfkGradient
          CellAppearance.FocusedLayout.Fill.Color = 15385233
          CellAppearance.FocusedLayout.Fill.ColorTo = 15385233
          CellAppearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FocusedLayout.Font.Color = clBlack
          CellAppearance.FocusedLayout.Font.Height = -11
          CellAppearance.FocusedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FocusedLayout.Font.Style = []
          CellAppearance.FocusedLayout.Stroke.Color = 15987699
          CellAppearance.GroupLayout.Fill.Kind = gfkGradient
          CellAppearance.GroupLayout.Fill.Color = 15650471
          CellAppearance.GroupLayout.Fill.ColorTo = 15650471
          CellAppearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.GroupLayout.Font.Color = clBlack
          CellAppearance.GroupLayout.Font.Height = -11
          CellAppearance.GroupLayout.Font.Name = 'Segoe UI'
          CellAppearance.GroupLayout.Font.Style = []
          CellAppearance.GroupLayout.Stroke.Color = 15987699
          CellAppearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.NormalLayout.Font.Color = clBlack
          CellAppearance.NormalLayout.Font.Height = -11
          CellAppearance.NormalLayout.Font.Name = 'Segoe UI'
          CellAppearance.NormalLayout.Font.Style = []
          CellAppearance.NormalLayout.Stroke.Color = 15987699
          CellAppearance.SelectedLayout.Fill.Kind = gfkGradient
          CellAppearance.SelectedLayout.Fill.Color = 15385233
          CellAppearance.SelectedLayout.Fill.ColorTo = 15385233
          CellAppearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.SelectedLayout.Font.Color = clBlack
          CellAppearance.SelectedLayout.Font.Height = -11
          CellAppearance.SelectedLayout.Font.Name = 'Segoe UI'
          CellAppearance.SelectedLayout.Font.Style = []
          CellAppearance.SelectedLayout.Stroke.Color = 15987699
          CellAppearance.SummaryLayout.Fill.Kind = gfkGradient
          CellAppearance.SummaryLayout.Fill.Color = 15915709
          CellAppearance.SummaryLayout.Fill.ColorTo = 15915709
          CellAppearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.SummaryLayout.Font.Color = clBlack
          CellAppearance.SummaryLayout.Font.Height = -11
          CellAppearance.SummaryLayout.Font.Name = 'Segoe UI'
          CellAppearance.SummaryLayout.Font.Style = []
          CellAppearance.SummaryLayout.Stroke.Color = 15987699
          ColumnCount = 6
          Columns = <
            item
              Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterMatchLayout.Font.Color = clWindowText
              Appearance.FilterMatchLayout.Font.Height = -12
              Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterMatchLayout.Font.Style = []
              Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
              Appearance.FilterInverseMatchLayout.Font.Height = -12
              Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterInverseMatchLayout.Font.Style = []
              Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.BandLayout.Font.Color = clWindowText
              Appearance.BandLayout.Font.Height = -11
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -11
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -11
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -11
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -11
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -11
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -11
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -11
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              ControlWidth = 120
              Header = 'Codigo'
              Settings = [gcsControlWidth]
              Width = 106.000000000000000000
            end
            item
              Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterMatchLayout.Font.Color = clWindowText
              Appearance.FilterMatchLayout.Font.Height = -12
              Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterMatchLayout.Font.Style = []
              Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
              Appearance.FilterInverseMatchLayout.Font.Height = -12
              Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterInverseMatchLayout.Font.Style = []
              Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.BandLayout.Font.Color = clWindowText
              Appearance.BandLayout.Font.Height = -11
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -11
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -11
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -11
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -11
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -11
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -11
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -11
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              ControlWidth = 250
              Header = 'Descripcion'
              Settings = [gcsControlWidth]
              Width = 106.000000000000000000
            end
            item
              Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterMatchLayout.Font.Color = clWindowText
              Appearance.FilterMatchLayout.Font.Height = -12
              Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterMatchLayout.Font.Style = []
              Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
              Appearance.FilterInverseMatchLayout.Font.Height = -12
              Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterInverseMatchLayout.Font.Style = []
              Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.BandLayout.Font.Color = clWindowText
              Appearance.BandLayout.Font.Height = -11
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -11
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -11
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -11
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -11
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -11
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -11
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -11
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              ControlWidth = 120
              Header = 'Cantidad'
              Settings = [gcsControlWidth]
              Width = 106.000000000000000000
            end
            item
              Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterMatchLayout.Font.Color = clWindowText
              Appearance.FilterMatchLayout.Font.Height = -12
              Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterMatchLayout.Font.Style = []
              Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
              Appearance.FilterInverseMatchLayout.Font.Height = -12
              Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterInverseMatchLayout.Font.Style = []
              Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.BandLayout.Font.Color = clWindowText
              Appearance.BandLayout.Font.Height = -11
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -11
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -11
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -11
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -11
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -11
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -11
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -11
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              ControlWidth = 120
              Header = 'Tipo.Cpbte'
              Settings = [gcsControlWidth]
              Width = 200.000000000000000000
            end
            item
              Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterMatchLayout.Font.Color = clWindowText
              Appearance.FilterMatchLayout.Font.Height = -12
              Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterMatchLayout.Font.Style = []
              Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
              Appearance.FilterInverseMatchLayout.Font.Height = -12
              Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterInverseMatchLayout.Font.Style = []
              Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.BandLayout.Font.Color = clWindowText
              Appearance.BandLayout.Font.Height = -11
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -11
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -11
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -11
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -11
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -11
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -11
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -11
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              ControlWidth = 150
              Header = 'Nro.Cpbte'
              Settings = [gcsControlWidth]
              Width = 106.000000000000000000
            end
            item
              Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterMatchLayout.Font.Color = clWindowText
              Appearance.FilterMatchLayout.Font.Height = -12
              Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterMatchLayout.Font.Style = []
              Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
              Appearance.FilterInverseMatchLayout.Font.Height = -12
              Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
              Appearance.FilterInverseMatchLayout.Font.Style = []
              Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.BandLayout.Font.Color = clWindowText
              Appearance.BandLayout.Font.Height = -11
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -11
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -11
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -11
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -11
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -11
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -11
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -11
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              ControlWidth = 200
              Header = 'Origen Operacion'
              Settings = [gcsControlWidth]
              Width = 112.000000000000000000
            end>
          DefaultColumnWidth = 74.000000000000000000
          DefaultRowHeight = 24.000000000000000000
          FilterActions = <>
          FilterAppearance.Font.Charset = DEFAULT_CHARSET
          FilterAppearance.Font.Color = clBlack
          FilterAppearance.Font.Height = -11
          FilterAppearance.Font.Name = 'Segoe UI'
          FilterAppearance.Font.Style = []
          FilterAppearance.Stroke.Color = 15987699
          Icons.ExpandIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F737667222077696474683D22333222
            206865696768743D223332222076696577426F783D22302030203332200D0A33
            32223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A23303030
            30303B7D3C2F7374796C653E3C2F646566733E3C7469746C653E506C75733C2F
            7469746C653E203C67200D0A69643D2249636F6E223E3C7265637420636C6173
            733D22636C732D312220783D22372220793D223135222077696474683D223138
            22206865696768743D2231222F3E3C72656374200D0A636C6173733D22636C73
            2D312220783D2231352220793D2237222077696474683D223122206865696768
            743D223138222F3E3C7265637420636C6173733D22636C732D312220783D2231
            22200D0A793D2231222077696474683D223122206865696768743D223330222F
            3E3C7265637420636C6173733D22636C732D312220783D22312220793D223122
            2077696474683D22333022200D0A6865696768743D2231222F3E3C7265637420
            636C6173733D22636C732D312220783D2233302220793D223122207769647468
            3D223122206865696768743D223330222F3E3C72656374200D0A636C6173733D
            22636C732D312220783D22312220793D223330222077696474683D2233302220
            6865696768743D2231222F3E3C2F673E3C2F7376673E}
          Icons.CollapseIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F737667222077696474683D22333222
            206865696768743D223332222076696577426F783D22302030203332200D0A33
            32223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A23303030
            30303B7D3C2F7374796C653E3C2F646566733E3C7469746C653E506C75733C2F
            7469746C653E203C67200D0A69643D2249636F6E223E3C7265637420636C6173
            733D22636C732D312220783D22372220793D223135222077696474683D223138
            22206865696768743D2231222F3E3C7265637420636C6173733D22636C732D31
            2220783D223122200D0A793D2231222077696474683D22312220686569676874
            3D223330222F3E3C7265637420636C6173733D22636C732D312220783D223122
            20793D2231222077696474683D22333022200D0A6865696768743D2231222F3E
            3C7265637420636C6173733D22636C732D312220783D2233302220793D223122
            2077696474683D223122206865696768743D223330222F3E3C72656374200D0A
            636C6173733D22636C732D312220783D22312220793D22333022207769647468
            3D22333022206865696768743D2231222F3E3C2F673E3C2F7376673E}
          Icons.FilterIcon.Data = {
            0D546478536D617274496D6167653C3F786D6C2076657273696F6E3D22312E30
            2220656E636F64696E673D225554462D38223F3E0D0A3C73766720786D6C6E73
            3D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D
            6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939
            392F786C696E6B222077696474683D22333222206865696768743D2233322220
            76696577426F783D22302030203332203332223E0D0A093C646566733E0D0A09
            093C7374796C653E2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D32
            7B66696C6C3A236661666166613B7D2E636C732D337B66696C6C3A75726C2823
            4E65775F5061747465726E5F5377617463685F32293B7D2E636C732D347B6669
            6C6C3A233361336133383B7D3C2F7374796C653E0D0A09093C7061747465726E
            2069643D224E65775F5061747465726E5F5377617463685F322220646174612D
            6E616D653D224E6577205061747465726E205377617463682032222077696474
            683D22363822206865696768743D22363822207061747465726E556E6974733D
            227573657253706163654F6E557365222076696577426F783D22302030203638
            203638223E0D0A0909093C7265637420636C6173733D22636C732D3122207769
            6474683D22363822206865696768743D223638222F3E0D0A0909093C72656374
            20636C6173733D22636C732D32222077696474683D2236382220686569676874
            3D223638222F3E0D0A09093C2F7061747465726E3E0D0A093C2F646566733E0D
            0A093C7469746C653E46696C7465723C2F7469746C653E0D0A093C672069643D
            2249636F6E223E0D0A09093C706F6C79676F6E20636C6173733D22636C732D33
            2220706F696E74733D22312E3520362031322E352031352031322E352033302E
            352031382E352033302E352031382E352031352032392E3520362032392E3520
            312E3520312E3520312E3520312E352036222F3E0D0A09093C7061746820636C
            6173733D22636C732D342220643D224D31392C33314831325631352E32346C2D
            31312D39563148333056362E32346C2D31312C395A6D2D362D3168355631342E
            37366C31312D395632483256352E37366C31312C395A222F3E0D0A093C2F673E
            0D0A3C2F7376673E0D0A}
          Icons.FilterActiveIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A233436383242343B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F32293B7D2E636C732D347B66696C6C3A233361336133383B7D3C2F73
            74796C653E3C7061747465726E2069643D224E65775F5061747465726E5F5377
            617463685F322220646174612D6E616D653D224E6577205061747465726E2053
            77617463682032222077696474683D22363822206865696768743D2236382220
            7061747465726E556E6974733D227573657253706163654F6E55736522207669
            6577426F783D22302030203638203638223E3C7265637420636C6173733D2263
            6C732D31222077696474683D22363822206865696768743D223638222F3E3C72
            65637420636C6173733D22636C732D32222077696474683D2236382220686569
            6768743D223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C
            653E46696C7465723C2F7469746C653E3C672069643D2249636F6E223E3C706F
            6C79676F6E20636C6173733D22636C732D332220706F696E74733D22312E3520
            362031322E352031352031322E352033302E352031382E352033302E35203138
            2E352031352032392E3520362032392E3520312E3520312E3520312E3520312E
            352036222F3E3C7061746820636C6173733D22636C732D342220643D224D3139
            2C33314831325631352E32346C2D31312D39563148333056362E32346C2D3131
            2C395A6D2D362D3168355631342E37366C31312D395632483256352E37366C31
            312C395A222F3E3C2F673E3C2F7376673E}
          Icons.FilterClearIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236137346162303B7D
            2E636C732D337B66696C6C3A236433393464363B7D2E636C732D347B66696C6C
            3A236661666166613B7D2E636C732D357B66696C6C3A75726C28234E65775F50
            61747465726E5F5377617463685F38293B7D2E636C732D367B66696C6C3A7572
            6C28234E65775F5061747465726E5F5377617463685F37293B7D3C2F7374796C
            653E3C7061747465726E2069643D224E65775F5061747465726E5F5377617463
            685F382220646174612D6E616D653D224E6577205061747465726E2053776174
            63682038222077696474683D22363822206865696768743D2236382220706174
            7465726E556E6974733D227573657253706163654F6E55736522207669657742
            6F783D22302030203638203638223E3C7265637420636C6173733D22636C732D
            31222077696474683D22363822206865696768743D223638222F3E3C72656374
            20636C6173733D22636C732D33222077696474683D2236382220686569676874
            3D223638222F3E3C2F7061747465726E3E3C7061747465726E2069643D224E65
            775F5061747465726E5F5377617463685F372220646174612D6E616D653D224E
            6577205061747465726E205377617463682037222077696474683D2236382220
            6865696768743D22363822207061747465726E556E6974733D22757365725370
            6163654F6E557365222076696577426F783D22302030203638203638223E3C72
            65637420636C6173733D22636C732D31222077696474683D2236382220686569
            6768743D223638222F3E3C7265637420636C6173733D22636C732D3222207769
            6474683D22363822206865696768743D223638222F3E3C2F7061747465726E3E
            3C2F646566733E3C7469746C653E436C6561723C2F7469746C653E3C67206964
            3D2249636F6E223E3C7265637420636C6173733D22636C732D342220783D2231
            2E38362220793D2231302E3334222077696474683D2232382E32382220686569
            6768743D2231312E333122207472616E73666F726D3D227472616E736C617465
            282D362E36332031362920726F74617465282D343529222F3E3C706F6C79676F
            6E20636C6173733D22636C732D352220706F696E74733D22322E373120323220
            31302032392E32392031352E37392032332E3520382E352031362E323120322E
            3731203232222F3E3C7061746820636C6173733D22636C732D362220643D224D
            31302E37312C33306C32302D32304C32322C312E32392C312E32392C32322C31
            302C33302E37315633314833315633305A4D32322C322E37312C32392E32392C
            31302C31362E352C32322E37392C392E32312C31352E355A4D322E37312C3232
            2C382E352C31362E32316C372E32392C372E32394C31302C32392E32395A222F
            3E3C2F673E3C2F7376673E}
          Icons.FilterTypeIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A233739373737343B7D
            2E636C732D337B66696C6C3A236661666166613B7D2E636C732D347B66696C6C
            3A233361336133383B7D2E636C732D357B66696C6C3A75726C28234E65775F50
            61747465726E5F5377617463685F34293B7D3C2F7374796C653E3C7061747465
            726E2069643D224E65775F5061747465726E5F5377617463685F342220646174
            612D6E616D653D224E6577205061747465726E20537761746368203422207769
            6474683D22363822206865696768743D22363822207061747465726E556E6974
            733D227573657253706163654F6E557365222076696577426F783D2230203020
            3638203638223E3C7265637420636C6173733D22636C732D3122207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D32222077696474683D22363822206865696768743D223638222F3E3C
            2F7061747465726E3E3C2F646566733E3C7469746C653E546578742D46696C74
            65723C2F7469746C653E3C672069643D224D61736B223E3C706F6C79676F6E20
            636C6173733D22636C732D332220706F696E74733D2232352E35203920313920
            322E3520313920392032352E352039222F3E3C7061746820636C6173733D2263
            6C732D332220643D224D31382C3130563248365633304832315632362E31384C
            31392E38342C323548385632344831382E38356C2D322D324838563231683856
            3139483856313868385631364838563135483234763168325631305A4D382C39
            6838763148385A6D302C3456313248323476315A222F3E3C706F6C79676F6E20
            636C6173733D22636C732D342220706F696E74733D2235203120352033312036
            2033312032312033312032312033302036203330203620322031382032203138
            2E352032203139203220313920322E352032352E352039203236203920323620
            392E3520323620313020323620313620323720313620323720392E3720323720
            39203139203120352031222F3E3C706F6C79676F6E20636C6173733D22636C73
            2D342220706F696E74733D22323620313020323620392E352032362039203235
            2E352039203139203920313920322E3520313920322031382E35203220313820
            32203138203130203236203130222F3E3C7265637420636C6173733D22636C73
            2D332220783D22382220793D2239222077696474683D22382220686569676874
            3D2231222F3E3C7265637420636C6173733D22636C732D352220783D22382220
            793D2239222077696474683D223822206865696768743D2231222F3E3C726563
            7420636C6173733D22636C732D332220783D22382220793D2231322220776964
            74683D22313622206865696768743D2231222F3E3C7265637420636C6173733D
            22636C732D352220783D22382220793D223132222077696474683D2231362220
            6865696768743D2231222F3E3C706F6C79676F6E20636C6173733D22636C732D
            332220706F696E74733D22382031352038203136203136203136203234203136
            2032342031352038203135222F3E3C706F6C79676F6E20636C6173733D22636C
            732D352220706F696E74733D2238203135203820313620313620313620323420
            31362032342031352038203135222F3E3C7265637420636C6173733D22636C73
            2D332220783D22382220793D223138222077696474683D223822206865696768
            743D2231222F3E3C7265637420636C6173733D22636C732D352220783D223822
            20793D223138222077696474683D223822206865696768743D2231222F3E3C70
            6F6C79676F6E20636C6173733D22636C732D332220706F696E74733D22382032
            322031362E38372032322031362032312E313220313620323120382032312038
            203232222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F69
            6E74733D22382032322031362E38372032322031362032312E31322031362032
            3120382032312038203232222F3E3C706F6C79676F6E20636C6173733D22636C
            732D332220706F696E74733D22382032352031392E38342032352031382E3835
            20323420382032342038203235222F3E3C706F6C79676F6E20636C6173733D22
            636C732D352220706F696E74733D22382032352031392E38342032352031382E
            383520323420382032342038203235222F3E3C2F673E3C672069643D224F7665
            726C6179223E3C706F6C79676F6E20636C6173733D22636C732D332220706F69
            6E74733D2233312E352031372E352031372E352031372E352031372E35203230
            2E352032322E352032352E35362032322E352033312E352032362E352033312E
            352032362E352032352E35362033312E352032302E352033312E352031372E35
            222F3E3C7061746820636C6173733D22636C732D342220643D224D32372C3332
            4832325632352E37376C2D352D352E303656313748333276332E37316C2D352C
            352E30365A6D2D342D3168335632352E33366C352D352E303756313848313876
            322E32396C352C352E30375A222F3E3C2F673E3C2F7376673E}
          Icons.SortAscendingIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236137346162303B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F37293B7D2E636C732D347B66696C6C3A233165386263643B7D2E636C
            732D357B66696C6C3A233361336133383B7D3C2F7374796C653E3C7061747465
            726E2069643D224E65775F5061747465726E5F5377617463685F372220646174
            612D6E616D653D224E6577205061747465726E20537761746368203722207769
            6474683D22363822206865696768743D22363822207061747465726E556E6974
            733D227573657253706163654F6E557365222076696577426F783D2230203020
            3638203638223E3C7265637420636C6173733D22636C732D3122207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D32222077696474683D22363822206865696768743D223638222F3E3C
            2F7061747465726E3E3C2F646566733E3C7469746C653E536F72742D415A3C2F
            7469746C653E3C672069643D2249636F6E223E3C7061746820636C6173733D22
            636C732D332220643D224D322C32392E36346C372D3130563230483356313868
            3976312E34344C352C32392E33365632396837763248325A222F3E3C70617468
            20636C6173733D22636C732D342220643D224D352E372C31312C342E35322C31
            3548312E39334C362E33332C3148392E35344C31342C3135682D322E376C2D31
            2E32342D345A4D392E36342C392E31312C382E35362C352E3636632D2E32372D
            2E38352D2E34392D312E382D2E36392D322E36316830632D2E322E38312D2E34
            2C312E37382D2E36352C322E36314C362E31312C392E31315A222F3E3C706F6C
            79676F6E20636C6173733D22636C732D352220706F696E74733D223233203235
            2E3132203233203620323220362032322032352E31322031362E34342031392E
            35362031352E35362032302E34342032322E352032372E33382032392E343420
            32302E34342032382E35362031392E35362032332032352E3132222F3E3C2F67
            3E3C2F7376673E}
          Icons.SortDescendingIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236137346162303B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F37293B7D2E636C732D347B66696C6C3A233165386263643B7D2E636C
            732D357B66696C6C3A233361336133383B7D3C2F7374796C653E3C7061747465
            726E2069643D224E65775F5061747465726E5F5377617463685F372220646174
            612D6E616D653D224E6577205061747465726E20537761746368203722207769
            6474683D22363822206865696768743D22363822207061747465726E556E6974
            733D227573657253706163654F6E557365222076696577426F783D2230203020
            3638203638223E3C7265637420636C6173733D22636C732D3122207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D32222077696474683D22363822206865696768743D223638222F3E3C
            2F7061747465726E3E3C2F646566733E3C7469746C653E536F72742D5A413C2F
            7469746C653E3C672069643D2249636F6E223E3C7061746820636C6173733D22
            636C732D332220643D224D322C31322E36346C372D3130563348335631683956
            322E34344C352C31322E33365631326837763248325A222F3E3C706174682063
            6C6173733D22636C732D342220643D224D352E372C32372C342E35322C333148
            312E39336C342E342D313448392E35344C31342C3331682D322E376C2D312E32
            342D345A6D332E39342D312E39334C382E35362C32312E3636632D2E32372D2E
            38352D2E34392D312E382D2E36392D322E36316830632D2E322E38312D2E342C
            312E37382D2E36352C322E36314C362E31312C32352E31315A222F3E3C706F6C
            79676F6E20636C6173733D22636C732D352220706F696E74733D223233203235
            2E3132203233203620323220362032322032352E31322031362E34342031392E
            35362031352E35362032302E34342032322E352032372E33382032392E343420
            32302E34342032382E35362031392E35362032332032352E3132222F3E3C2F67
            3E3C2F7376673E}
          Icons.CloseIcon.Data = {
            1054544D53464E435356474269746D6170000700003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
            6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
            2F786C696E6B222077696474683D22333222206865696768743D223332222076
            696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
            2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2365
            61336634313B7D2E636C732D337B636C69702D706174683A75726C2823636C69
            702D70617468293B7D2E636C732D347B66696C6C3A236661666166613B7D2E63
            6C732D357B636C69702D706174683A75726C2823636C69702D706174682D3229
            3B7D2E636C732D367B66696C6C3A75726C28234E65775F5061747465726E5F53
            77617463685F33293B7D3C2F7374796C653E3C636C6970506174682069643D22
            636C69702D70617468223E3C7265637420636C6173733D22636C732D31222078
            3D222D34352E352220793D222D342E35222077696474683D2233342220686569
            6768743D223334222F3E3C2F636C6970506174683E3C636C6970506174682069
            643D22636C69702D706174682D32223E3C7265637420636C6173733D22636C73
            2D312220783D22322E352220793D22322E35222077696474683D223237222068
            65696768743D223237222F3E3C2F636C6970506174683E3C7061747465726E20
            69643D224E65775F5061747465726E5F5377617463685F332220646174612D6E
            616D653D224E6577205061747465726E20537761746368203322207769647468
            3D22363822206865696768743D22363822207061747465726E556E6974733D22
            7573657253706163654F6E557365222076696577426F783D2230203020363820
            3638223E3C7265637420636C6173733D22636C732D31222077696474683D2236
            3822206865696768743D223638222F3E3C7265637420636C6173733D22636C73
            2D32222077696474683D22363822206865696768743D223638222F3E3C2F7061
            747465726E3E3C2F646566733E3C7469746C653E57696E646F772D436C6F7365
            3C2F7469746C653E3C672069643D2249636F6E223E3C6720636C6173733D2263
            6C732D33223E3C7265637420636C6173733D22636C732D312220783D222D3534
            2220793D222D3439222077696474683D22363822206865696768743D22363822
            2F3E3C7265637420636C6173733D22636C732D342220783D222D35342220793D
            222D3439222077696474683D22363822206865696768743D223638222F3E3C72
            65637420636C6173733D22636C732D312220783D222D35342220793D22313922
            2077696474683D22363822206865696768743D223638222F3E3C726563742063
            6C6173733D22636C732D342220783D222D35342220793D223139222077696474
            683D22363822206865696768743D223638222F3E3C2F673E3C6720636C617373
            3D22636C732D35223E3C7265637420636C6173733D22636C732D312220783D22
            31342220793D222D3439222077696474683D22363822206865696768743D2236
            38222F3E3C7265637420636C6173733D22636C732D342220783D223134222079
            3D222D3439222077696474683D22363822206865696768743D223638222F3E3C
            7265637420636C6173733D22636C732D312220783D2231342220793D22313922
            2077696474683D22363822206865696768743D223638222F3E3C726563742063
            6C6173733D22636C732D342220783D2231342220793D22313922207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D312220783D222D35342220793D222D3439222077696474683D223638
            22206865696768743D223638222F3E3C7265637420636C6173733D22636C732D
            342220783D222D35342220793D222D3439222077696474683D22363822206865
            696768743D223638222F3E3C7265637420636C6173733D22636C732D31222078
            3D222D35342220793D223139222077696474683D22363822206865696768743D
            223638222F3E3C7265637420636C6173733D22636C732D342220783D222D3534
            2220793D223139222077696474683D22363822206865696768743D223638222F
            3E3C2F673E3C7061746820636C6173733D22636C732D362220643D224D33302C
            3330483256324833305A4D332C3239483239563348335A222F3E3C706F6C7967
            6F6E20636C6173733D22636C732D362220706F696E74733D2232322E36352032
            332E333520382E363520392E333520392E333520382E36352032332E33352032
            322E36352032322E36352032332E3335222F3E3C706F6C79676F6E20636C6173
            733D22636C732D362220706F696E74733D22392E33352032332E333520382E36
            352032322E36352032322E363520382E36352032332E333520392E333520392E
            33352032332E3335222F3E3C2F673E3C2F7376673E}
          Icons.FirstPageIcon.Data = {
            1054544D53464E435356474269746D6170800300003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F4C656674
            223E3C7061746820643D224D31302E3435362C31366C362E3139362D362E3238
            3563302E3339312D302E3339342C302E3339312D312E3033342C302D312E3432
            38632D302E3339312D302E3339342D312E3032342D302E3339342D312E343134
            2C306C2D362E3839392C362E393939202020632D302E3337352C302E3337392D
            302E3337372C312E3034382C302C312E3432396C362E392C362E39393963302E
            33392C302E3339342C312E3032342C302E3339342C312E3431342C3063302E33
            39312D302E3339342C302E3339312D312E3033342C302D312E3432384C31302E
            3435362C31367A222066696C6C3D2223313231333133222F3E3C706174682064
            3D224D31372E3435362C31366C362E3139362D362E32383563302E3339312D30
            2E3339342C302E3339312D312E3033342C302D312E343238632D302E3339312D
            302E3339342D312E3032342D302E3339342D312E3431342C306C2D362E383939
            2C362E393939202020632D302E3337352C302E3337392D302E3337372C312E30
            34382C302C312E3432396C362E3839392C362E39393963302E3339312C302E33
            39342C312E3032342C302E3339342C312E3431342C3063302E3339312D302E33
            39342C302E3339312D312E3033342C302D312E3432384C31372E3435362C3136
            7A222066696C6C3D2223313231333133222F3E3C2F673E3C672F3E3C672F3E3C
            672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
          Icons.LastPageIcon.Data = {
            1054544D53464E435356474269746D6170A60300003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F52696768
            74223E3C7061746820643D224D32332E3636322C31352E3238366C2D362E392D
            362E393939632D302E33392D302E3339342D312E3032342D302E3339342D312E
            3431342C30632D302E3339312C302E3339342D302E3339312C312E3033342C30
            2C312E3432384C32312E3534342C31362020206C2D362E3139362C362E323835
            632D302E3339312C302E3339342D302E3339312C312E3033342C302C312E3432
            3863302E3339312C302E3339342C312E3032342C302E3339342C312E3431342C
            306C362E3839392D362E3939392020204332342E3033382C31362E3333352C32
            342E3033392C31352E3636362C32332E3636322C31352E3238367A222066696C
            6C3D2223313231333133222F3E3C7061746820643D224D31362E3636322C3135
            2E3238364C392E3736332C382E323837632D302E3339312D302E3339342D312E
            3032342D302E3339342D312E3431342C30632D302E3339312C302E3339342D30
            2E3339312C312E3033342C302C312E3432384C31342E3534342C31362020206C
            2D362E3139362C362E323835632D302E3339312C302E3339342D302E3339312C
            312E3033342C302C312E34323863302E3339312C302E3339342C312E3032342C
            302E3339342C312E3431342C306C362E3839392D362E3939392020204331372E
            3033382C31362E3333352C31372E3033392C31352E3636362C31362E3636322C
            31352E3238367A222066696C6C3D2223313231333133222F3E3C2F673E3C672F
            3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
          Icons.NextPageIcon.Data = {
            1054544D53464E435356474269746D6170B50200003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
            643D224D32312E3639382C31352E3238366C2D392E3030322D382E3939392020
            632D302E3339352D302E3339342D312E3033352D302E3339342D312E3433312C
            30632D302E3339352C302E3339342D302E3339352C312E3033342C302C312E34
            32384C31392E3535332C31366C2D382E3238372C382E323835632D302E333935
            2C302E3339342D302E3339352C312E3033342C302C312E343239202063302E33
            39352C302E3339342C312E3033362C302E3339342C312E3433312C306C392E30
            30322D382E3939394332322E3038382C31362E3332352C32322E3038382C3135
            2E3637352C32312E3639382C31352E3238367A222066696C6C3D222331323133
            3133222066696C6C2D72756C653D226576656E6F6464222069643D2243686576
            726F6E5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E
            3C672F3E3C2F7376673E}
          Icons.PreviousPageIcon.Data = {
            1054544D53464E435356474269746D6170B20200003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
            643D224D31312E3236322C31362E3731346C392E3030322C382E393939202063
            302E3339352C302E3339342C312E3033352C302E3339342C312E3433312C3063
            302E3339352D302E3339342C302E3339352D312E3033342C302D312E3432384C
            31332E3430372C31366C382E3238372D382E32383563302E3339352D302E3339
            342C302E3339352D312E3033342C302D312E3432392020632D302E3339352D30
            2E3339342D312E3033362D302E3339342D312E3433312C306C2D392E3030322C
            382E3939394331302E3837322C31352E3637352C31302E3837322C31362E3332
            352C31312E3236322C31362E3731347A222066696C6C3D222331323133313322
            2066696C6C2D72756C653D226576656E6F6464222069643D2243686576726F6E
            5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F
            3E3C2F7376673E}
          OnGetCellFormatting = TMSFNCDataGrid1GetCellFormatting
          Options.Filtering.DropDownHeight = 400
          Options.Filtering.DropDownWidth = 450
          Options.Grouping.CalculationFormat = '%2.f'
          Options.Grouping.HeaderHeight = 24.000000000000000000
          Options.Grouping.SummaryHeight = 24.000000000000000000
          Options.Editing.Enabled = False
          Options.Selection.Mode = gsmSingleRow
          RowCount = 1
          ScrollMode = gsmCellScrolling
          Stroke.Color = 15987699
        end
        object Panel3: TPanel
          Left = 0
          Top = 546
          Width = 1130
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1130
            41)
          object btGrupo: TButton
            Left = 9
            Top = 11
            Width = 92
            Height = 22
            Anchors = [akLeft, akBottom]
            Caption = 'Group'
            TabOrder = 0
            WordWrap = True
            OnClick = btGrupoClick
          end
          object btExpColapse: TButton
            Left = 107
            Top = 11
            Width = 132
            Height = 22
            Anchors = [akLeft, akBottom]
            Caption = 'Expand / Collapse'
            TabOrder = 1
            WordWrap = True
            OnClick = btExpColapseClick
          end
          object chbFiltros: TCheckBox
            Left = 1014
            Top = 16
            Width = 96
            Height = 17
            Anchors = [akRight, akBottom]
            Caption = 'Habilita Filtros'
            TabOrder = 2
            OnClick = chbFiltrosClick
          end
        end
      end
      object pagMaterias: TTabSheet
        Caption = 'Materias Primas'
        ImageIndex = 1
        object TMSFNCDataGrid2: TTMSFNCDataGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1124
          Height = 540
          Align = alClient
          ParentDoubleBuffered = False
          DoubleBuffered = True
          PopupMenu = PopupMenu1
          TabOrder = 0
          ShowAcceleratorChar = False
          Footer.Bar.Buttons = <>
          Header.VisualGrouping.Layout.Font.Charset = DEFAULT_CHARSET
          Header.VisualGrouping.Layout.Font.Color = clWindowText
          Header.VisualGrouping.Layout.Font.Height = -12
          Header.VisualGrouping.Layout.Font.Name = 'Segoe UI'
          Header.VisualGrouping.Layout.Font.Style = []
          Header.Bar.Buttons = <>
          Adapter = TMSFNCDataGridDatabaseAdapter2
          CellAppearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FilterMatchLayout.Font.Color = clWindowText
          CellAppearance.FilterMatchLayout.Font.Height = -12
          CellAppearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          CellAppearance.FilterMatchLayout.Font.Style = []
          CellAppearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FilterInverseMatchLayout.Font.Color = clWindowText
          CellAppearance.FilterInverseMatchLayout.Font.Height = -12
          CellAppearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          CellAppearance.FilterInverseMatchLayout.Font.Style = []
          CellAppearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.BandLayout.Font.Color = clWindowText
          CellAppearance.BandLayout.Font.Height = -11
          CellAppearance.BandLayout.Font.Name = 'Segoe UI'
          CellAppearance.BandLayout.Font.Style = []
          CellAppearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FixedLayout.Font.Color = clWindowText
          CellAppearance.FixedLayout.Font.Height = -11
          CellAppearance.FixedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FixedLayout.Font.Style = []
          CellAppearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FixedSelectedLayout.Font.Color = clWindowText
          CellAppearance.FixedSelectedLayout.Font.Height = -11
          CellAppearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FixedSelectedLayout.Font.Style = []
          CellAppearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FocusedLayout.Font.Color = clWindowText
          CellAppearance.FocusedLayout.Font.Height = -11
          CellAppearance.FocusedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FocusedLayout.Font.Style = []
          CellAppearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.GroupLayout.Font.Color = clWindowText
          CellAppearance.GroupLayout.Font.Height = -11
          CellAppearance.GroupLayout.Font.Name = 'Segoe UI'
          CellAppearance.GroupLayout.Font.Style = []
          CellAppearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.NormalLayout.Font.Color = clWindowText
          CellAppearance.NormalLayout.Font.Height = -11
          CellAppearance.NormalLayout.Font.Name = 'Segoe UI'
          CellAppearance.NormalLayout.Font.Style = []
          CellAppearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.SelectedLayout.Font.Color = clWindowText
          CellAppearance.SelectedLayout.Font.Height = -11
          CellAppearance.SelectedLayout.Font.Name = 'Segoe UI'
          CellAppearance.SelectedLayout.Font.Style = []
          CellAppearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.SummaryLayout.Font.Color = clWindowText
          CellAppearance.SummaryLayout.Font.Height = -11
          CellAppearance.SummaryLayout.Font.Name = 'Segoe UI'
          CellAppearance.SummaryLayout.Font.Style = []
          ColumnCount = 0
          Columns = <>
          DefaultColumnWidth = 74.000000000000000000
          DefaultRowHeight = 29.000000000000000000
          FilterActions = <>
          FilterAppearance.Font.Charset = DEFAULT_CHARSET
          FilterAppearance.Font.Color = clWindowText
          FilterAppearance.Font.Height = -11
          FilterAppearance.Font.Name = 'Segoe UI'
          FilterAppearance.Font.Style = []
          Icons.ExpandIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F737667222077696474683D22333222
            206865696768743D223332222076696577426F783D22302030203332200D0A33
            32223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A23303030
            30303B7D3C2F7374796C653E3C2F646566733E3C7469746C653E506C75733C2F
            7469746C653E203C67200D0A69643D2249636F6E223E3C7265637420636C6173
            733D22636C732D312220783D22372220793D223135222077696474683D223138
            22206865696768743D2231222F3E3C72656374200D0A636C6173733D22636C73
            2D312220783D2231352220793D2237222077696474683D223122206865696768
            743D223138222F3E3C7265637420636C6173733D22636C732D312220783D2231
            22200D0A793D2231222077696474683D223122206865696768743D223330222F
            3E3C7265637420636C6173733D22636C732D312220783D22312220793D223122
            2077696474683D22333022200D0A6865696768743D2231222F3E3C7265637420
            636C6173733D22636C732D312220783D2233302220793D223122207769647468
            3D223122206865696768743D223330222F3E3C72656374200D0A636C6173733D
            22636C732D312220783D22312220793D223330222077696474683D2233302220
            6865696768743D2231222F3E3C2F673E3C2F7376673E}
          Icons.CollapseIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F737667222077696474683D22333222
            206865696768743D223332222076696577426F783D22302030203332200D0A33
            32223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A23303030
            30303B7D3C2F7374796C653E3C2F646566733E3C7469746C653E506C75733C2F
            7469746C653E203C67200D0A69643D2249636F6E223E3C7265637420636C6173
            733D22636C732D312220783D22372220793D223135222077696474683D223138
            22206865696768743D2231222F3E3C7265637420636C6173733D22636C732D31
            2220783D223122200D0A793D2231222077696474683D22312220686569676874
            3D223330222F3E3C7265637420636C6173733D22636C732D312220783D223122
            20793D2231222077696474683D22333022200D0A6865696768743D2231222F3E
            3C7265637420636C6173733D22636C732D312220783D2233302220793D223122
            2077696474683D223122206865696768743D223330222F3E3C72656374200D0A
            636C6173733D22636C732D312220783D22312220793D22333022207769647468
            3D22333022206865696768743D2231222F3E3C2F673E3C2F7376673E}
          Icons.FilterIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236661666166613B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F32293B7D2E636C732D347B66696C6C3A233361336133383B7D3C2F73
            74796C653E3C7061747465726E2069643D224E65775F5061747465726E5F5377
            617463685F322220646174612D6E616D653D224E6577205061747465726E2053
            77617463682032222077696474683D22363822206865696768743D2236382220
            7061747465726E556E6974733D227573657253706163654F6E55736522207669
            6577426F783D22302030203638203638223E3C7265637420636C6173733D2263
            6C732D31222077696474683D22363822206865696768743D223638222F3E3C72
            65637420636C6173733D22636C732D32222077696474683D2236382220686569
            6768743D223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C
            653E46696C7465723C2F7469746C653E3C672069643D2249636F6E223E3C706F
            6C79676F6E20636C6173733D22636C732D332220706F696E74733D22312E3520
            362031322E352031352031322E352033302E352031382E352033302E35203138
            2E352031352032392E3520362032392E3520312E3520312E3520312E3520312E
            352036222F3E3C7061746820636C6173733D22636C732D342220643D224D3139
            2C33314831325631352E32346C2D31312D39563148333056362E32346C2D3131
            2C395A6D2D362D3168355631342E37366C31312D395632483256352E37366C31
            312C395A222F3E3C2F673E3C2F7376673E}
          Icons.FilterActiveIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A233436383242343B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F32293B7D2E636C732D347B66696C6C3A233361336133383B7D3C2F73
            74796C653E3C7061747465726E2069643D224E65775F5061747465726E5F5377
            617463685F322220646174612D6E616D653D224E6577205061747465726E2053
            77617463682032222077696474683D22363822206865696768743D2236382220
            7061747465726E556E6974733D227573657253706163654F6E55736522207669
            6577426F783D22302030203638203638223E3C7265637420636C6173733D2263
            6C732D31222077696474683D22363822206865696768743D223638222F3E3C72
            65637420636C6173733D22636C732D32222077696474683D2236382220686569
            6768743D223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C
            653E46696C7465723C2F7469746C653E3C672069643D2249636F6E223E3C706F
            6C79676F6E20636C6173733D22636C732D332220706F696E74733D22312E3520
            362031322E352031352031322E352033302E352031382E352033302E35203138
            2E352031352032392E3520362032392E3520312E3520312E3520312E3520312E
            352036222F3E3C7061746820636C6173733D22636C732D342220643D224D3139
            2C33314831325631352E32346C2D31312D39563148333056362E32346C2D3131
            2C395A6D2D362D3168355631342E37366C31312D395632483256352E37366C31
            312C395A222F3E3C2F673E3C2F7376673E}
          Icons.FilterClearIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236137346162303B7D
            2E636C732D337B66696C6C3A236433393464363B7D2E636C732D347B66696C6C
            3A236661666166613B7D2E636C732D357B66696C6C3A75726C28234E65775F50
            61747465726E5F5377617463685F38293B7D2E636C732D367B66696C6C3A7572
            6C28234E65775F5061747465726E5F5377617463685F37293B7D3C2F7374796C
            653E3C7061747465726E2069643D224E65775F5061747465726E5F5377617463
            685F382220646174612D6E616D653D224E6577205061747465726E2053776174
            63682038222077696474683D22363822206865696768743D2236382220706174
            7465726E556E6974733D227573657253706163654F6E55736522207669657742
            6F783D22302030203638203638223E3C7265637420636C6173733D22636C732D
            31222077696474683D22363822206865696768743D223638222F3E3C72656374
            20636C6173733D22636C732D33222077696474683D2236382220686569676874
            3D223638222F3E3C2F7061747465726E3E3C7061747465726E2069643D224E65
            775F5061747465726E5F5377617463685F372220646174612D6E616D653D224E
            6577205061747465726E205377617463682037222077696474683D2236382220
            6865696768743D22363822207061747465726E556E6974733D22757365725370
            6163654F6E557365222076696577426F783D22302030203638203638223E3C72
            65637420636C6173733D22636C732D31222077696474683D2236382220686569
            6768743D223638222F3E3C7265637420636C6173733D22636C732D3222207769
            6474683D22363822206865696768743D223638222F3E3C2F7061747465726E3E
            3C2F646566733E3C7469746C653E436C6561723C2F7469746C653E3C67206964
            3D2249636F6E223E3C7265637420636C6173733D22636C732D342220783D2231
            2E38362220793D2231302E3334222077696474683D2232382E32382220686569
            6768743D2231312E333122207472616E73666F726D3D227472616E736C617465
            282D362E36332031362920726F74617465282D343529222F3E3C706F6C79676F
            6E20636C6173733D22636C732D352220706F696E74733D22322E373120323220
            31302032392E32392031352E37392032332E3520382E352031362E323120322E
            3731203232222F3E3C7061746820636C6173733D22636C732D362220643D224D
            31302E37312C33306C32302D32304C32322C312E32392C312E32392C32322C31
            302C33302E37315633314833315633305A4D32322C322E37312C32392E32392C
            31302C31362E352C32322E37392C392E32312C31352E355A4D322E37312C3232
            2C382E352C31362E32316C372E32392C372E32394C31302C32392E32395A222F
            3E3C2F673E3C2F7376673E}
          Icons.FilterTypeIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A233739373737343B7D
            2E636C732D337B66696C6C3A236661666166613B7D2E636C732D347B66696C6C
            3A233361336133383B7D2E636C732D357B66696C6C3A75726C28234E65775F50
            61747465726E5F5377617463685F34293B7D3C2F7374796C653E3C7061747465
            726E2069643D224E65775F5061747465726E5F5377617463685F342220646174
            612D6E616D653D224E6577205061747465726E20537761746368203422207769
            6474683D22363822206865696768743D22363822207061747465726E556E6974
            733D227573657253706163654F6E557365222076696577426F783D2230203020
            3638203638223E3C7265637420636C6173733D22636C732D3122207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D32222077696474683D22363822206865696768743D223638222F3E3C
            2F7061747465726E3E3C2F646566733E3C7469746C653E546578742D46696C74
            65723C2F7469746C653E3C672069643D224D61736B223E3C706F6C79676F6E20
            636C6173733D22636C732D332220706F696E74733D2232352E35203920313920
            322E3520313920392032352E352039222F3E3C7061746820636C6173733D2263
            6C732D332220643D224D31382C3130563248365633304832315632362E31384C
            31392E38342C323548385632344831382E38356C2D322D324838563231683856
            3139483856313868385631364838563135483234763168325631305A4D382C39
            6838763148385A6D302C3456313248323476315A222F3E3C706F6C79676F6E20
            636C6173733D22636C732D342220706F696E74733D2235203120352033312036
            2033312032312033312032312033302036203330203620322031382032203138
            2E352032203139203220313920322E352032352E352039203236203920323620
            392E3520323620313020323620313620323720313620323720392E3720323720
            39203139203120352031222F3E3C706F6C79676F6E20636C6173733D22636C73
            2D342220706F696E74733D22323620313020323620392E352032362039203235
            2E352039203139203920313920322E3520313920322031382E35203220313820
            32203138203130203236203130222F3E3C7265637420636C6173733D22636C73
            2D332220783D22382220793D2239222077696474683D22382220686569676874
            3D2231222F3E3C7265637420636C6173733D22636C732D352220783D22382220
            793D2239222077696474683D223822206865696768743D2231222F3E3C726563
            7420636C6173733D22636C732D332220783D22382220793D2231322220776964
            74683D22313622206865696768743D2231222F3E3C7265637420636C6173733D
            22636C732D352220783D22382220793D223132222077696474683D2231362220
            6865696768743D2231222F3E3C706F6C79676F6E20636C6173733D22636C732D
            332220706F696E74733D22382031352038203136203136203136203234203136
            2032342031352038203135222F3E3C706F6C79676F6E20636C6173733D22636C
            732D352220706F696E74733D2238203135203820313620313620313620323420
            31362032342031352038203135222F3E3C7265637420636C6173733D22636C73
            2D332220783D22382220793D223138222077696474683D223822206865696768
            743D2231222F3E3C7265637420636C6173733D22636C732D352220783D223822
            20793D223138222077696474683D223822206865696768743D2231222F3E3C70
            6F6C79676F6E20636C6173733D22636C732D332220706F696E74733D22382032
            322031362E38372032322031362032312E313220313620323120382032312038
            203232222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F69
            6E74733D22382032322031362E38372032322031362032312E31322031362032
            3120382032312038203232222F3E3C706F6C79676F6E20636C6173733D22636C
            732D332220706F696E74733D22382032352031392E38342032352031382E3835
            20323420382032342038203235222F3E3C706F6C79676F6E20636C6173733D22
            636C732D352220706F696E74733D22382032352031392E38342032352031382E
            383520323420382032342038203235222F3E3C2F673E3C672069643D224F7665
            726C6179223E3C706F6C79676F6E20636C6173733D22636C732D332220706F69
            6E74733D2233312E352031372E352031372E352031372E352031372E35203230
            2E352032322E352032352E35362032322E352033312E352032362E352033312E
            352032362E352032352E35362033312E352032302E352033312E352031372E35
            222F3E3C7061746820636C6173733D22636C732D342220643D224D32372C3332
            4832325632352E37376C2D352D352E303656313748333276332E37316C2D352C
            352E30365A6D2D342D3168335632352E33366C352D352E303756313848313876
            322E32396C352C352E30375A222F3E3C2F673E3C2F7376673E}
          Icons.SortAscendingIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236137346162303B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F37293B7D2E636C732D347B66696C6C3A233165386263643B7D2E636C
            732D357B66696C6C3A233361336133383B7D3C2F7374796C653E3C7061747465
            726E2069643D224E65775F5061747465726E5F5377617463685F372220646174
            612D6E616D653D224E6577205061747465726E20537761746368203722207769
            6474683D22363822206865696768743D22363822207061747465726E556E6974
            733D227573657253706163654F6E557365222076696577426F783D2230203020
            3638203638223E3C7265637420636C6173733D22636C732D3122207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D32222077696474683D22363822206865696768743D223638222F3E3C
            2F7061747465726E3E3C2F646566733E3C7469746C653E536F72742D415A3C2F
            7469746C653E3C672069643D2249636F6E223E3C7061746820636C6173733D22
            636C732D332220643D224D322C32392E36346C372D3130563230483356313868
            3976312E34344C352C32392E33365632396837763248325A222F3E3C70617468
            20636C6173733D22636C732D342220643D224D352E372C31312C342E35322C31
            3548312E39334C362E33332C3148392E35344C31342C3135682D322E376C2D31
            2E32342D345A4D392E36342C392E31312C382E35362C352E3636632D2E32372D
            2E38352D2E34392D312E382D2E36392D322E36316830632D2E322E38312D2E34
            2C312E37382D2E36352C322E36314C362E31312C392E31315A222F3E3C706F6C
            79676F6E20636C6173733D22636C732D352220706F696E74733D223233203235
            2E3132203233203620323220362032322032352E31322031362E34342031392E
            35362031352E35362032302E34342032322E352032372E33382032392E343420
            32302E34342032382E35362031392E35362032332032352E3132222F3E3C2F67
            3E3C2F7376673E}
          Icons.SortDescendingIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236137346162303B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F37293B7D2E636C732D347B66696C6C3A233165386263643B7D2E636C
            732D357B66696C6C3A233361336133383B7D3C2F7374796C653E3C7061747465
            726E2069643D224E65775F5061747465726E5F5377617463685F372220646174
            612D6E616D653D224E6577205061747465726E20537761746368203722207769
            6474683D22363822206865696768743D22363822207061747465726E556E6974
            733D227573657253706163654F6E557365222076696577426F783D2230203020
            3638203638223E3C7265637420636C6173733D22636C732D3122207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D32222077696474683D22363822206865696768743D223638222F3E3C
            2F7061747465726E3E3C2F646566733E3C7469746C653E536F72742D5A413C2F
            7469746C653E3C672069643D2249636F6E223E3C7061746820636C6173733D22
            636C732D332220643D224D322C31322E36346C372D3130563348335631683956
            322E34344C352C31322E33365631326837763248325A222F3E3C706174682063
            6C6173733D22636C732D342220643D224D352E372C32372C342E35322C333148
            312E39336C342E342D313448392E35344C31342C3331682D322E376C2D312E32
            342D345A6D332E39342D312E39334C382E35362C32312E3636632D2E32372D2E
            38352D2E34392D312E382D2E36392D322E36316830632D2E322E38312D2E342C
            312E37382D2E36352C322E36314C362E31312C32352E31315A222F3E3C706F6C
            79676F6E20636C6173733D22636C732D352220706F696E74733D223233203235
            2E3132203233203620323220362032322032352E31322031362E34342031392E
            35362031352E35362032302E34342032322E352032372E33382032392E343420
            32302E34342032382E35362031392E35362032332032352E3132222F3E3C2F67
            3E3C2F7376673E}
          Icons.CloseIcon.Data = {
            1054544D53464E435356474269746D6170000700003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
            6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
            2F786C696E6B222077696474683D22333222206865696768743D223332222076
            696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
            2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2365
            61336634313B7D2E636C732D337B636C69702D706174683A75726C2823636C69
            702D70617468293B7D2E636C732D347B66696C6C3A236661666166613B7D2E63
            6C732D357B636C69702D706174683A75726C2823636C69702D706174682D3229
            3B7D2E636C732D367B66696C6C3A75726C28234E65775F5061747465726E5F53
            77617463685F33293B7D3C2F7374796C653E3C636C6970506174682069643D22
            636C69702D70617468223E3C7265637420636C6173733D22636C732D31222078
            3D222D34352E352220793D222D342E35222077696474683D2233342220686569
            6768743D223334222F3E3C2F636C6970506174683E3C636C6970506174682069
            643D22636C69702D706174682D32223E3C7265637420636C6173733D22636C73
            2D312220783D22322E352220793D22322E35222077696474683D223237222068
            65696768743D223237222F3E3C2F636C6970506174683E3C7061747465726E20
            69643D224E65775F5061747465726E5F5377617463685F332220646174612D6E
            616D653D224E6577205061747465726E20537761746368203322207769647468
            3D22363822206865696768743D22363822207061747465726E556E6974733D22
            7573657253706163654F6E557365222076696577426F783D2230203020363820
            3638223E3C7265637420636C6173733D22636C732D31222077696474683D2236
            3822206865696768743D223638222F3E3C7265637420636C6173733D22636C73
            2D32222077696474683D22363822206865696768743D223638222F3E3C2F7061
            747465726E3E3C2F646566733E3C7469746C653E57696E646F772D436C6F7365
            3C2F7469746C653E3C672069643D2249636F6E223E3C6720636C6173733D2263
            6C732D33223E3C7265637420636C6173733D22636C732D312220783D222D3534
            2220793D222D3439222077696474683D22363822206865696768743D22363822
            2F3E3C7265637420636C6173733D22636C732D342220783D222D35342220793D
            222D3439222077696474683D22363822206865696768743D223638222F3E3C72
            65637420636C6173733D22636C732D312220783D222D35342220793D22313922
            2077696474683D22363822206865696768743D223638222F3E3C726563742063
            6C6173733D22636C732D342220783D222D35342220793D223139222077696474
            683D22363822206865696768743D223638222F3E3C2F673E3C6720636C617373
            3D22636C732D35223E3C7265637420636C6173733D22636C732D312220783D22
            31342220793D222D3439222077696474683D22363822206865696768743D2236
            38222F3E3C7265637420636C6173733D22636C732D342220783D223134222079
            3D222D3439222077696474683D22363822206865696768743D223638222F3E3C
            7265637420636C6173733D22636C732D312220783D2231342220793D22313922
            2077696474683D22363822206865696768743D223638222F3E3C726563742063
            6C6173733D22636C732D342220783D2231342220793D22313922207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D312220783D222D35342220793D222D3439222077696474683D223638
            22206865696768743D223638222F3E3C7265637420636C6173733D22636C732D
            342220783D222D35342220793D222D3439222077696474683D22363822206865
            696768743D223638222F3E3C7265637420636C6173733D22636C732D31222078
            3D222D35342220793D223139222077696474683D22363822206865696768743D
            223638222F3E3C7265637420636C6173733D22636C732D342220783D222D3534
            2220793D223139222077696474683D22363822206865696768743D223638222F
            3E3C2F673E3C7061746820636C6173733D22636C732D362220643D224D33302C
            3330483256324833305A4D332C3239483239563348335A222F3E3C706F6C7967
            6F6E20636C6173733D22636C732D362220706F696E74733D2232322E36352032
            332E333520382E363520392E333520392E333520382E36352032332E33352032
            322E36352032322E36352032332E3335222F3E3C706F6C79676F6E20636C6173
            733D22636C732D362220706F696E74733D22392E33352032332E333520382E36
            352032322E36352032322E363520382E36352032332E333520392E333520392E
            33352032332E3335222F3E3C2F673E3C2F7376673E}
          Icons.FirstPageIcon.Data = {
            1054544D53464E435356474269746D6170800300003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F4C656674
            223E3C7061746820643D224D31302E3435362C31366C362E3139362D362E3238
            3563302E3339312D302E3339342C302E3339312D312E3033342C302D312E3432
            38632D302E3339312D302E3339342D312E3032342D302E3339342D312E343134
            2C306C2D362E3839392C362E393939202020632D302E3337352C302E3337392D
            302E3337372C312E3034382C302C312E3432396C362E392C362E39393963302E
            33392C302E3339342C312E3032342C302E3339342C312E3431342C3063302E33
            39312D302E3339342C302E3339312D312E3033342C302D312E3432384C31302E
            3435362C31367A222066696C6C3D2223313231333133222F3E3C706174682064
            3D224D31372E3435362C31366C362E3139362D362E32383563302E3339312D30
            2E3339342C302E3339312D312E3033342C302D312E343238632D302E3339312D
            302E3339342D312E3032342D302E3339342D312E3431342C306C2D362E383939
            2C362E393939202020632D302E3337352C302E3337392D302E3337372C312E30
            34382C302C312E3432396C362E3839392C362E39393963302E3339312C302E33
            39342C312E3032342C302E3339342C312E3431342C3063302E3339312D302E33
            39342C302E3339312D312E3033342C302D312E3432384C31372E3435362C3136
            7A222066696C6C3D2223313231333133222F3E3C2F673E3C672F3E3C672F3E3C
            672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
          Icons.LastPageIcon.Data = {
            1054544D53464E435356474269746D6170A60300003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F52696768
            74223E3C7061746820643D224D32332E3636322C31352E3238366C2D362E392D
            362E393939632D302E33392D302E3339342D312E3032342D302E3339342D312E
            3431342C30632D302E3339312C302E3339342D302E3339312C312E3033342C30
            2C312E3432384C32312E3534342C31362020206C2D362E3139362C362E323835
            632D302E3339312C302E3339342D302E3339312C312E3033342C302C312E3432
            3863302E3339312C302E3339342C312E3032342C302E3339342C312E3431342C
            306C362E3839392D362E3939392020204332342E3033382C31362E3333352C32
            342E3033392C31352E3636362C32332E3636322C31352E3238367A222066696C
            6C3D2223313231333133222F3E3C7061746820643D224D31362E3636322C3135
            2E3238364C392E3736332C382E323837632D302E3339312D302E3339342D312E
            3032342D302E3339342D312E3431342C30632D302E3339312C302E3339342D30
            2E3339312C312E3033342C302C312E3432384C31342E3534342C31362020206C
            2D362E3139362C362E323835632D302E3339312C302E3339342D302E3339312C
            312E3033342C302C312E34323863302E3339312C302E3339342C312E3032342C
            302E3339342C312E3431342C306C362E3839392D362E3939392020204331372E
            3033382C31362E3333352C31372E3033392C31352E3636362C31362E3636322C
            31352E3238367A222066696C6C3D2223313231333133222F3E3C2F673E3C672F
            3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
          Icons.NextPageIcon.Data = {
            1054544D53464E435356474269746D6170B50200003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
            643D224D32312E3639382C31352E3238366C2D392E3030322D382E3939392020
            632D302E3339352D302E3339342D312E3033352D302E3339342D312E3433312C
            30632D302E3339352C302E3339342D302E3339352C312E3033342C302C312E34
            32384C31392E3535332C31366C2D382E3238372C382E323835632D302E333935
            2C302E3339342D302E3339352C312E3033342C302C312E343239202063302E33
            39352C302E3339342C312E3033362C302E3339342C312E3433312C306C392E30
            30322D382E3939394332322E3038382C31362E3332352C32322E3038382C3135
            2E3637352C32312E3639382C31352E3238367A222066696C6C3D222331323133
            3133222066696C6C2D72756C653D226576656E6F6464222069643D2243686576
            726F6E5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E
            3C672F3E3C2F7376673E}
          Icons.PreviousPageIcon.Data = {
            1054544D53464E435356474269746D6170B20200003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
            643D224D31312E3236322C31362E3731346C392E3030322C382E393939202063
            302E3339352C302E3339342C312E3033352C302E3339342C312E3433312C3063
            302E3339352D302E3339342C302E3339352D312E3033342C302D312E3432384C
            31332E3430372C31366C382E3238372D382E32383563302E3339352D302E3339
            342C302E3339352D312E3033342C302D312E3432392020632D302E3339352D30
            2E3339342D312E3033362D302E3339342D312E3433312C306C2D392E3030322C
            382E3939394331302E3837322C31352E3637352C31302E3837322C31362E3332
            352C31312E3236322C31362E3731347A222066696C6C3D222331323133313322
            2066696C6C2D72756C653D226576656E6F6464222069643D2243686576726F6E
            5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F
            3E3C2F7376673E}
          OnGetCellFormatting = TMSFNCDataGrid2GetCellFormatting
          Options.Sorting.Enabled = True
          Options.Editing.Enabled = False
          RowCount = 1
          Stroke.Color = clDarkgray
        end
        object Panel2: TPanel
          Left = 0
          Top = 546
          Width = 1130
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1130
            41)
          object Button1: TButton
            Left = 12
            Top = 11
            Width = 108
            Height = 22
            Anchors = [akLeft, akBottom]
            Caption = 'Group'
            TabOrder = 0
            WordWrap = True
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 126
            Top = 11
            Width = 132
            Height = 22
            Anchors = [akLeft, akBottom]
            Caption = 'Expand / Collapse'
            TabOrder = 1
            Visible = False
            WordWrap = True
            OnClick = Button2Click
          end
          object btResumen: TButton
            Left = 992
            Top = 8
            Width = 129
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = 'Generar Resumen'
            TabOrder = 2
            OnClick = btResumenClick
          end
          object CheckBox1: TCheckBox
            Left = 890
            Top = 11
            Width = 96
            Height = 17
            Anchors = [akRight, akBottom]
            Caption = 'Habilita Filtros'
            TabOrder = 3
            OnClick = CheckBox1Click
          end
        end
      end
      object pagResumen: TTabSheet
        Caption = 'Resumen'
        ImageIndex = 2
        object TMSFNCDataGrid3: TTMSFNCDataGrid
          Left = 0
          Top = 0
          Width = 630
          Height = 587
          Align = alLeft
          ParentDoubleBuffered = False
          DoubleBuffered = True
          PopupMenu = PopupMenu1
          TabOrder = 0
          ShowAcceleratorChar = False
          Footer.Bar.Buttons = <>
          Header.VisualGrouping.Layout.Font.Charset = DEFAULT_CHARSET
          Header.VisualGrouping.Layout.Font.Color = clWindowText
          Header.VisualGrouping.Layout.Font.Height = -12
          Header.VisualGrouping.Layout.Font.Name = 'Segoe UI'
          Header.VisualGrouping.Layout.Font.Style = []
          Header.Bar.Buttons = <>
          Adapter = TMSFNCDataGridDatabaseAdapter3
          CellAppearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FilterMatchLayout.Font.Color = clWindowText
          CellAppearance.FilterMatchLayout.Font.Height = -12
          CellAppearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          CellAppearance.FilterMatchLayout.Font.Style = []
          CellAppearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FilterInverseMatchLayout.Font.Color = clWindowText
          CellAppearance.FilterInverseMatchLayout.Font.Height = -12
          CellAppearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          CellAppearance.FilterInverseMatchLayout.Font.Style = []
          CellAppearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.BandLayout.Font.Color = clWindowText
          CellAppearance.BandLayout.Font.Height = -11
          CellAppearance.BandLayout.Font.Name = 'Segoe UI'
          CellAppearance.BandLayout.Font.Style = []
          CellAppearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FixedLayout.Font.Color = clWindowText
          CellAppearance.FixedLayout.Font.Height = -11
          CellAppearance.FixedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FixedLayout.Font.Style = []
          CellAppearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FixedSelectedLayout.Font.Color = clWindowText
          CellAppearance.FixedSelectedLayout.Font.Height = -11
          CellAppearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FixedSelectedLayout.Font.Style = []
          CellAppearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FocusedLayout.Font.Color = clWindowText
          CellAppearance.FocusedLayout.Font.Height = -11
          CellAppearance.FocusedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FocusedLayout.Font.Style = []
          CellAppearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.GroupLayout.Font.Color = clWindowText
          CellAppearance.GroupLayout.Font.Height = -11
          CellAppearance.GroupLayout.Font.Name = 'Segoe UI'
          CellAppearance.GroupLayout.Font.Style = []
          CellAppearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.NormalLayout.Font.Color = clWindowText
          CellAppearance.NormalLayout.Font.Height = -11
          CellAppearance.NormalLayout.Font.Name = 'Segoe UI'
          CellAppearance.NormalLayout.Font.Style = []
          CellAppearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.SelectedLayout.Font.Color = clWindowText
          CellAppearance.SelectedLayout.Font.Height = -11
          CellAppearance.SelectedLayout.Font.Name = 'Segoe UI'
          CellAppearance.SelectedLayout.Font.Style = []
          CellAppearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.SummaryLayout.Font.Color = clWindowText
          CellAppearance.SummaryLayout.Font.Height = -11
          CellAppearance.SummaryLayout.Font.Name = 'Segoe UI'
          CellAppearance.SummaryLayout.Font.Style = []
          ColumnCount = 0
          Columns = <>
          DefaultRowHeight = 21.000000000000000000
          FilterActions = <>
          FilterAppearance.Font.Charset = DEFAULT_CHARSET
          FilterAppearance.Font.Color = clWindowText
          FilterAppearance.Font.Height = -11
          FilterAppearance.Font.Name = 'Segoe UI'
          FilterAppearance.Font.Style = []
          Icons.ExpandIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F737667222077696474683D22333222
            206865696768743D223332222076696577426F783D22302030203332200D0A33
            32223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A23303030
            30303B7D3C2F7374796C653E3C2F646566733E3C7469746C653E506C75733C2F
            7469746C653E203C67200D0A69643D2249636F6E223E3C7265637420636C6173
            733D22636C732D312220783D22372220793D223135222077696474683D223138
            22206865696768743D2231222F3E3C72656374200D0A636C6173733D22636C73
            2D312220783D2231352220793D2237222077696474683D223122206865696768
            743D223138222F3E3C7265637420636C6173733D22636C732D312220783D2231
            22200D0A793D2231222077696474683D223122206865696768743D223330222F
            3E3C7265637420636C6173733D22636C732D312220783D22312220793D223122
            2077696474683D22333022200D0A6865696768743D2231222F3E3C7265637420
            636C6173733D22636C732D312220783D2233302220793D223122207769647468
            3D223122206865696768743D223330222F3E3C72656374200D0A636C6173733D
            22636C732D312220783D22312220793D223330222077696474683D2233302220
            6865696768743D2231222F3E3C2F673E3C2F7376673E}
          Icons.CollapseIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F737667222077696474683D22333222
            206865696768743D223332222076696577426F783D22302030203332200D0A33
            32223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A23303030
            30303B7D3C2F7374796C653E3C2F646566733E3C7469746C653E506C75733C2F
            7469746C653E203C67200D0A69643D2249636F6E223E3C7265637420636C6173
            733D22636C732D312220783D22372220793D223135222077696474683D223138
            22206865696768743D2231222F3E3C7265637420636C6173733D22636C732D31
            2220783D223122200D0A793D2231222077696474683D22312220686569676874
            3D223330222F3E3C7265637420636C6173733D22636C732D312220783D223122
            20793D2231222077696474683D22333022200D0A6865696768743D2231222F3E
            3C7265637420636C6173733D22636C732D312220783D2233302220793D223122
            2077696474683D223122206865696768743D223330222F3E3C72656374200D0A
            636C6173733D22636C732D312220783D22312220793D22333022207769647468
            3D22333022206865696768743D2231222F3E3C2F673E3C2F7376673E}
          Icons.FilterIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236661666166613B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F32293B7D2E636C732D347B66696C6C3A233361336133383B7D3C2F73
            74796C653E3C7061747465726E2069643D224E65775F5061747465726E5F5377
            617463685F322220646174612D6E616D653D224E6577205061747465726E2053
            77617463682032222077696474683D22363822206865696768743D2236382220
            7061747465726E556E6974733D227573657253706163654F6E55736522207669
            6577426F783D22302030203638203638223E3C7265637420636C6173733D2263
            6C732D31222077696474683D22363822206865696768743D223638222F3E3C72
            65637420636C6173733D22636C732D32222077696474683D2236382220686569
            6768743D223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C
            653E46696C7465723C2F7469746C653E3C672069643D2249636F6E223E3C706F
            6C79676F6E20636C6173733D22636C732D332220706F696E74733D22312E3520
            362031322E352031352031322E352033302E352031382E352033302E35203138
            2E352031352032392E3520362032392E3520312E3520312E3520312E3520312E
            352036222F3E3C7061746820636C6173733D22636C732D342220643D224D3139
            2C33314831325631352E32346C2D31312D39563148333056362E32346C2D3131
            2C395A6D2D362D3168355631342E37366C31312D395632483256352E37366C31
            312C395A222F3E3C2F673E3C2F7376673E}
          Icons.FilterActiveIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A233436383242343B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F32293B7D2E636C732D347B66696C6C3A233361336133383B7D3C2F73
            74796C653E3C7061747465726E2069643D224E65775F5061747465726E5F5377
            617463685F322220646174612D6E616D653D224E6577205061747465726E2053
            77617463682032222077696474683D22363822206865696768743D2236382220
            7061747465726E556E6974733D227573657253706163654F6E55736522207669
            6577426F783D22302030203638203638223E3C7265637420636C6173733D2263
            6C732D31222077696474683D22363822206865696768743D223638222F3E3C72
            65637420636C6173733D22636C732D32222077696474683D2236382220686569
            6768743D223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C
            653E46696C7465723C2F7469746C653E3C672069643D2249636F6E223E3C706F
            6C79676F6E20636C6173733D22636C732D332220706F696E74733D22312E3520
            362031322E352031352031322E352033302E352031382E352033302E35203138
            2E352031352032392E3520362032392E3520312E3520312E3520312E3520312E
            352036222F3E3C7061746820636C6173733D22636C732D342220643D224D3139
            2C33314831325631352E32346C2D31312D39563148333056362E32346C2D3131
            2C395A6D2D362D3168355631342E37366C31312D395632483256352E37366C31
            312C395A222F3E3C2F673E3C2F7376673E}
          Icons.FilterClearIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236137346162303B7D
            2E636C732D337B66696C6C3A236433393464363B7D2E636C732D347B66696C6C
            3A236661666166613B7D2E636C732D357B66696C6C3A75726C28234E65775F50
            61747465726E5F5377617463685F38293B7D2E636C732D367B66696C6C3A7572
            6C28234E65775F5061747465726E5F5377617463685F37293B7D3C2F7374796C
            653E3C7061747465726E2069643D224E65775F5061747465726E5F5377617463
            685F382220646174612D6E616D653D224E6577205061747465726E2053776174
            63682038222077696474683D22363822206865696768743D2236382220706174
            7465726E556E6974733D227573657253706163654F6E55736522207669657742
            6F783D22302030203638203638223E3C7265637420636C6173733D22636C732D
            31222077696474683D22363822206865696768743D223638222F3E3C72656374
            20636C6173733D22636C732D33222077696474683D2236382220686569676874
            3D223638222F3E3C2F7061747465726E3E3C7061747465726E2069643D224E65
            775F5061747465726E5F5377617463685F372220646174612D6E616D653D224E
            6577205061747465726E205377617463682037222077696474683D2236382220
            6865696768743D22363822207061747465726E556E6974733D22757365725370
            6163654F6E557365222076696577426F783D22302030203638203638223E3C72
            65637420636C6173733D22636C732D31222077696474683D2236382220686569
            6768743D223638222F3E3C7265637420636C6173733D22636C732D3222207769
            6474683D22363822206865696768743D223638222F3E3C2F7061747465726E3E
            3C2F646566733E3C7469746C653E436C6561723C2F7469746C653E3C67206964
            3D2249636F6E223E3C7265637420636C6173733D22636C732D342220783D2231
            2E38362220793D2231302E3334222077696474683D2232382E32382220686569
            6768743D2231312E333122207472616E73666F726D3D227472616E736C617465
            282D362E36332031362920726F74617465282D343529222F3E3C706F6C79676F
            6E20636C6173733D22636C732D352220706F696E74733D22322E373120323220
            31302032392E32392031352E37392032332E3520382E352031362E323120322E
            3731203232222F3E3C7061746820636C6173733D22636C732D362220643D224D
            31302E37312C33306C32302D32304C32322C312E32392C312E32392C32322C31
            302C33302E37315633314833315633305A4D32322C322E37312C32392E32392C
            31302C31362E352C32322E37392C392E32312C31352E355A4D322E37312C3232
            2C382E352C31362E32316C372E32392C372E32394C31302C32392E32395A222F
            3E3C2F673E3C2F7376673E}
          Icons.FilterTypeIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A233739373737343B7D
            2E636C732D337B66696C6C3A236661666166613B7D2E636C732D347B66696C6C
            3A233361336133383B7D2E636C732D357B66696C6C3A75726C28234E65775F50
            61747465726E5F5377617463685F34293B7D3C2F7374796C653E3C7061747465
            726E2069643D224E65775F5061747465726E5F5377617463685F342220646174
            612D6E616D653D224E6577205061747465726E20537761746368203422207769
            6474683D22363822206865696768743D22363822207061747465726E556E6974
            733D227573657253706163654F6E557365222076696577426F783D2230203020
            3638203638223E3C7265637420636C6173733D22636C732D3122207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D32222077696474683D22363822206865696768743D223638222F3E3C
            2F7061747465726E3E3C2F646566733E3C7469746C653E546578742D46696C74
            65723C2F7469746C653E3C672069643D224D61736B223E3C706F6C79676F6E20
            636C6173733D22636C732D332220706F696E74733D2232352E35203920313920
            322E3520313920392032352E352039222F3E3C7061746820636C6173733D2263
            6C732D332220643D224D31382C3130563248365633304832315632362E31384C
            31392E38342C323548385632344831382E38356C2D322D324838563231683856
            3139483856313868385631364838563135483234763168325631305A4D382C39
            6838763148385A6D302C3456313248323476315A222F3E3C706F6C79676F6E20
            636C6173733D22636C732D342220706F696E74733D2235203120352033312036
            2033312032312033312032312033302036203330203620322031382032203138
            2E352032203139203220313920322E352032352E352039203236203920323620
            392E3520323620313020323620313620323720313620323720392E3720323720
            39203139203120352031222F3E3C706F6C79676F6E20636C6173733D22636C73
            2D342220706F696E74733D22323620313020323620392E352032362039203235
            2E352039203139203920313920322E3520313920322031382E35203220313820
            32203138203130203236203130222F3E3C7265637420636C6173733D22636C73
            2D332220783D22382220793D2239222077696474683D22382220686569676874
            3D2231222F3E3C7265637420636C6173733D22636C732D352220783D22382220
            793D2239222077696474683D223822206865696768743D2231222F3E3C726563
            7420636C6173733D22636C732D332220783D22382220793D2231322220776964
            74683D22313622206865696768743D2231222F3E3C7265637420636C6173733D
            22636C732D352220783D22382220793D223132222077696474683D2231362220
            6865696768743D2231222F3E3C706F6C79676F6E20636C6173733D22636C732D
            332220706F696E74733D22382031352038203136203136203136203234203136
            2032342031352038203135222F3E3C706F6C79676F6E20636C6173733D22636C
            732D352220706F696E74733D2238203135203820313620313620313620323420
            31362032342031352038203135222F3E3C7265637420636C6173733D22636C73
            2D332220783D22382220793D223138222077696474683D223822206865696768
            743D2231222F3E3C7265637420636C6173733D22636C732D352220783D223822
            20793D223138222077696474683D223822206865696768743D2231222F3E3C70
            6F6C79676F6E20636C6173733D22636C732D332220706F696E74733D22382032
            322031362E38372032322031362032312E313220313620323120382032312038
            203232222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F69
            6E74733D22382032322031362E38372032322031362032312E31322031362032
            3120382032312038203232222F3E3C706F6C79676F6E20636C6173733D22636C
            732D332220706F696E74733D22382032352031392E38342032352031382E3835
            20323420382032342038203235222F3E3C706F6C79676F6E20636C6173733D22
            636C732D352220706F696E74733D22382032352031392E38342032352031382E
            383520323420382032342038203235222F3E3C2F673E3C672069643D224F7665
            726C6179223E3C706F6C79676F6E20636C6173733D22636C732D332220706F69
            6E74733D2233312E352031372E352031372E352031372E352031372E35203230
            2E352032322E352032352E35362032322E352033312E352032362E352033312E
            352032362E352032352E35362033312E352032302E352033312E352031372E35
            222F3E3C7061746820636C6173733D22636C732D342220643D224D32372C3332
            4832325632352E37376C2D352D352E303656313748333276332E37316C2D352C
            352E30365A6D2D342D3168335632352E33366C352D352E303756313848313876
            322E32396C352C352E30375A222F3E3C2F673E3C2F7376673E}
          Icons.SortAscendingIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236137346162303B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F37293B7D2E636C732D347B66696C6C3A233165386263643B7D2E636C
            732D357B66696C6C3A233361336133383B7D3C2F7374796C653E3C7061747465
            726E2069643D224E65775F5061747465726E5F5377617463685F372220646174
            612D6E616D653D224E6577205061747465726E20537761746368203722207769
            6474683D22363822206865696768743D22363822207061747465726E556E6974
            733D227573657253706163654F6E557365222076696577426F783D2230203020
            3638203638223E3C7265637420636C6173733D22636C732D3122207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D32222077696474683D22363822206865696768743D223638222F3E3C
            2F7061747465726E3E3C2F646566733E3C7469746C653E536F72742D415A3C2F
            7469746C653E3C672069643D2249636F6E223E3C7061746820636C6173733D22
            636C732D332220643D224D322C32392E36346C372D3130563230483356313868
            3976312E34344C352C32392E33365632396837763248325A222F3E3C70617468
            20636C6173733D22636C732D342220643D224D352E372C31312C342E35322C31
            3548312E39334C362E33332C3148392E35344C31342C3135682D322E376C2D31
            2E32342D345A4D392E36342C392E31312C382E35362C352E3636632D2E32372D
            2E38352D2E34392D312E382D2E36392D322E36316830632D2E322E38312D2E34
            2C312E37382D2E36352C322E36314C362E31312C392E31315A222F3E3C706F6C
            79676F6E20636C6173733D22636C732D352220706F696E74733D223233203235
            2E3132203233203620323220362032322032352E31322031362E34342031392E
            35362031352E35362032302E34342032322E352032372E33382032392E343420
            32302E34342032382E35362031392E35362032332032352E3132222F3E3C2F67
            3E3C2F7376673E}
          Icons.SortDescendingIcon.Data = {
            0D546478536D617274496D6167653C73766720786D6C6E733D22687474703A2F
            2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
            6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
            2077696474683D22333222206865696768743D223332222076696577426F783D
            22302030203332203332223E3C646566733E3C7374796C653E2E636C732D317B
            66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A236137346162303B7D
            2E636C732D337B66696C6C3A75726C28234E65775F5061747465726E5F537761
            7463685F37293B7D2E636C732D347B66696C6C3A233165386263643B7D2E636C
            732D357B66696C6C3A233361336133383B7D3C2F7374796C653E3C7061747465
            726E2069643D224E65775F5061747465726E5F5377617463685F372220646174
            612D6E616D653D224E6577205061747465726E20537761746368203722207769
            6474683D22363822206865696768743D22363822207061747465726E556E6974
            733D227573657253706163654F6E557365222076696577426F783D2230203020
            3638203638223E3C7265637420636C6173733D22636C732D3122207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D32222077696474683D22363822206865696768743D223638222F3E3C
            2F7061747465726E3E3C2F646566733E3C7469746C653E536F72742D5A413C2F
            7469746C653E3C672069643D2249636F6E223E3C7061746820636C6173733D22
            636C732D332220643D224D322C31322E36346C372D3130563348335631683956
            322E34344C352C31322E33365631326837763248325A222F3E3C706174682063
            6C6173733D22636C732D342220643D224D352E372C32372C342E35322C333148
            312E39336C342E342D313448392E35344C31342C3331682D322E376C2D312E32
            342D345A6D332E39342D312E39334C382E35362C32312E3636632D2E32372D2E
            38352D2E34392D312E382D2E36392D322E36316830632D2E322E38312D2E342C
            312E37382D2E36352C322E36314C362E31312C32352E31315A222F3E3C706F6C
            79676F6E20636C6173733D22636C732D352220706F696E74733D223233203235
            2E3132203233203620323220362032322032352E31322031362E34342031392E
            35362031352E35362032302E34342032322E352032372E33382032392E343420
            32302E34342032382E35362031392E35362032332032352E3132222F3E3C2F67
            3E3C2F7376673E}
          Icons.CloseIcon.Data = {
            1054544D53464E435356474269746D6170000700003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
            6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
            2F786C696E6B222077696474683D22333222206865696768743D223332222076
            696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
            2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2365
            61336634313B7D2E636C732D337B636C69702D706174683A75726C2823636C69
            702D70617468293B7D2E636C732D347B66696C6C3A236661666166613B7D2E63
            6C732D357B636C69702D706174683A75726C2823636C69702D706174682D3229
            3B7D2E636C732D367B66696C6C3A75726C28234E65775F5061747465726E5F53
            77617463685F33293B7D3C2F7374796C653E3C636C6970506174682069643D22
            636C69702D70617468223E3C7265637420636C6173733D22636C732D31222078
            3D222D34352E352220793D222D342E35222077696474683D2233342220686569
            6768743D223334222F3E3C2F636C6970506174683E3C636C6970506174682069
            643D22636C69702D706174682D32223E3C7265637420636C6173733D22636C73
            2D312220783D22322E352220793D22322E35222077696474683D223237222068
            65696768743D223237222F3E3C2F636C6970506174683E3C7061747465726E20
            69643D224E65775F5061747465726E5F5377617463685F332220646174612D6E
            616D653D224E6577205061747465726E20537761746368203322207769647468
            3D22363822206865696768743D22363822207061747465726E556E6974733D22
            7573657253706163654F6E557365222076696577426F783D2230203020363820
            3638223E3C7265637420636C6173733D22636C732D31222077696474683D2236
            3822206865696768743D223638222F3E3C7265637420636C6173733D22636C73
            2D32222077696474683D22363822206865696768743D223638222F3E3C2F7061
            747465726E3E3C2F646566733E3C7469746C653E57696E646F772D436C6F7365
            3C2F7469746C653E3C672069643D2249636F6E223E3C6720636C6173733D2263
            6C732D33223E3C7265637420636C6173733D22636C732D312220783D222D3534
            2220793D222D3439222077696474683D22363822206865696768743D22363822
            2F3E3C7265637420636C6173733D22636C732D342220783D222D35342220793D
            222D3439222077696474683D22363822206865696768743D223638222F3E3C72
            65637420636C6173733D22636C732D312220783D222D35342220793D22313922
            2077696474683D22363822206865696768743D223638222F3E3C726563742063
            6C6173733D22636C732D342220783D222D35342220793D223139222077696474
            683D22363822206865696768743D223638222F3E3C2F673E3C6720636C617373
            3D22636C732D35223E3C7265637420636C6173733D22636C732D312220783D22
            31342220793D222D3439222077696474683D22363822206865696768743D2236
            38222F3E3C7265637420636C6173733D22636C732D342220783D223134222079
            3D222D3439222077696474683D22363822206865696768743D223638222F3E3C
            7265637420636C6173733D22636C732D312220783D2231342220793D22313922
            2077696474683D22363822206865696768743D223638222F3E3C726563742063
            6C6173733D22636C732D342220783D2231342220793D22313922207769647468
            3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
            636C732D312220783D222D35342220793D222D3439222077696474683D223638
            22206865696768743D223638222F3E3C7265637420636C6173733D22636C732D
            342220783D222D35342220793D222D3439222077696474683D22363822206865
            696768743D223638222F3E3C7265637420636C6173733D22636C732D31222078
            3D222D35342220793D223139222077696474683D22363822206865696768743D
            223638222F3E3C7265637420636C6173733D22636C732D342220783D222D3534
            2220793D223139222077696474683D22363822206865696768743D223638222F
            3E3C2F673E3C7061746820636C6173733D22636C732D362220643D224D33302C
            3330483256324833305A4D332C3239483239563348335A222F3E3C706F6C7967
            6F6E20636C6173733D22636C732D362220706F696E74733D2232322E36352032
            332E333520382E363520392E333520392E333520382E36352032332E33352032
            322E36352032322E36352032332E3335222F3E3C706F6C79676F6E20636C6173
            733D22636C732D362220706F696E74733D22392E33352032332E333520382E36
            352032322E36352032322E363520382E36352032332E333520392E333520392E
            33352032332E3335222F3E3C2F673E3C2F7376673E}
          Icons.FirstPageIcon.Data = {
            1054544D53464E435356474269746D6170800300003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F4C656674
            223E3C7061746820643D224D31302E3435362C31366C362E3139362D362E3238
            3563302E3339312D302E3339342C302E3339312D312E3033342C302D312E3432
            38632D302E3339312D302E3339342D312E3032342D302E3339342D312E343134
            2C306C2D362E3839392C362E393939202020632D302E3337352C302E3337392D
            302E3337372C312E3034382C302C312E3432396C362E392C362E39393963302E
            33392C302E3339342C312E3032342C302E3339342C312E3431342C3063302E33
            39312D302E3339342C302E3339312D312E3033342C302D312E3432384C31302E
            3435362C31367A222066696C6C3D2223313231333133222F3E3C706174682064
            3D224D31372E3435362C31366C362E3139362D362E32383563302E3339312D30
            2E3339342C302E3339312D312E3033342C302D312E343238632D302E3339312D
            302E3339342D312E3032342D302E3339342D312E3431342C306C2D362E383939
            2C362E393939202020632D302E3337352C302E3337392D302E3337372C312E30
            34382C302C312E3432396C362E3839392C362E39393963302E3339312C302E33
            39342C312E3032342C302E3339342C312E3431342C3063302E3339312D302E33
            39342C302E3339312D312E3033342C302D312E3432384C31372E3435362C3136
            7A222066696C6C3D2223313231333133222F3E3C2F673E3C672F3E3C672F3E3C
            672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
          Icons.LastPageIcon.Data = {
            1054544D53464E435356474269746D6170A60300003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F52696768
            74223E3C7061746820643D224D32332E3636322C31352E3238366C2D362E392D
            362E393939632D302E33392D302E3339342D312E3032342D302E3339342D312E
            3431342C30632D302E3339312C302E3339342D302E3339312C312E3033342C30
            2C312E3432384C32312E3534342C31362020206C2D362E3139362C362E323835
            632D302E3339312C302E3339342D302E3339312C312E3033342C302C312E3432
            3863302E3339312C302E3339342C312E3032342C302E3339342C312E3431342C
            306C362E3839392D362E3939392020204332342E3033382C31362E3333352C32
            342E3033392C31352E3636362C32332E3636322C31352E3238367A222066696C
            6C3D2223313231333133222F3E3C7061746820643D224D31362E3636322C3135
            2E3238364C392E3736332C382E323837632D302E3339312D302E3339342D312E
            3032342D302E3339342D312E3431342C30632D302E3339312C302E3339342D30
            2E3339312C312E3033342C302C312E3432384C31342E3534342C31362020206C
            2D362E3139362C362E323835632D302E3339312C302E3339342D302E3339312C
            312E3033342C302C312E34323863302E3339312C302E3339342C312E3032342C
            302E3339342C312E3431342C306C362E3839392D362E3939392020204331372E
            3033382C31362E3333352C31372E3033392C31352E3636362C31362E3636322C
            31352E3238367A222066696C6C3D2223313231333133222F3E3C2F673E3C672F
            3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
          Icons.NextPageIcon.Data = {
            1054544D53464E435356474269746D6170B50200003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
            643D224D32312E3639382C31352E3238366C2D392E3030322D382E3939392020
            632D302E3339352D302E3339342D312E3033352D302E3339342D312E3433312C
            30632D302E3339352C302E3339342D302E3339352C312E3033342C302C312E34
            32384C31392E3535332C31366C2D382E3238372C382E323835632D302E333935
            2C302E3339342D302E3339352C312E3033342C302C312E343239202063302E33
            39352C302E3339342C312E3033362C302E3339342C312E3433312C306C392E30
            30322D382E3939394332322E3038382C31362E3332352C32322E3038382C3135
            2E3637352C32312E3639382C31352E3238367A222066696C6C3D222331323133
            3133222066696C6C2D72756C653D226576656E6F6464222069643D2243686576
            726F6E5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E
            3C672F3E3C2F7376673E}
          Icons.PreviousPageIcon.Data = {
            1054544D53464E435356474269746D6170B20200003C3F786D6C207665727369
            6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
            20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
            703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
            4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
            726F756E643D226E65772030203020333220333222206865696768743D223332
            7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
            222076696577426F783D22302030203332203332222077696474683D22333270
            782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
            7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
            3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
            6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
            643D224D31312E3236322C31362E3731346C392E3030322C382E393939202063
            302E3339352C302E3339342C312E3033352C302E3339342C312E3433312C3063
            302E3339352D302E3339342C302E3339352D312E3033342C302D312E3432384C
            31332E3430372C31366C382E3238372D382E32383563302E3339352D302E3339
            342C302E3339352D312E3033342C302D312E3432392020632D302E3339352D30
            2E3339342D312E3033362D302E3339342D312E3433312C306C2D392E3030322C
            382E3939394331302E3837322C31352E3637352C31302E3837322C31362E3332
            352C31312E3236322C31362E3731347A222066696C6C3D222331323133313322
            2066696C6C2D72756C653D226576656E6F6464222069643D2243686576726F6E
            5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F
            3E3C2F7376673E}
          OnAfterSortColumn = TMSFNCDataGrid3AfterSortColumn
          OnGetCellFormatting = TMSFNCDataGrid3GetCellFormatting
          Options.Sorting.Enabled = True
          Options.Editing.Enabled = False
          RowCount = 1
          Stroke.Color = clDarkgray
        end
      end
    end
    object TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter
      Left = 236
      Top = 488
      Width = 26
      Height = 26
      Visible = True
      Columns = <
        item
          FieldName = 'CODIGO'
          AutoCreated = True
        end
        item
          FieldName = 'DETALLE'
          AutoCreated = True
        end
        item
          FieldName = 'CANTIDAD'
          AutoCreated = True
        end
        item
          FieldName = 'TIPOCPBTE'
          AutoCreated = True
        end
        item
          FieldName = 'NROCPBTE'
          AutoCreated = True
        end
        item
          FieldName = 'MODO'
          AutoCreated = True
        end>
      DataSource = DSMovimientos
      LoadMode = almAllRecords
    end
    object TMSFNCDataGridDatabaseAdapter2: TTMSFNCDataGridDatabaseAdapter
      Left = 687
      Top = 532
      Width = 26
      Height = 26
      Visible = True
      Columns = <>
      DataSource = DSResumen
      LoadMode = almAllRecords
    end
    object TMSFNCDataGridDatabaseAdapter3: TTMSFNCDataGridDatabaseAdapter
      Left = 958
      Top = 112
      Width = 26
      Height = 26
      Visible = True
      Columns = <>
      DataSource = DSResumenACumulado
    end
  end
  inherited ToolBar1: TToolBar
    Top = 685
    Width = 1138
    Align = alBottom
    ExplicitTop = 685
    ExplicitWidth = 1138
    inherited btConfirma: TBitBtn
      Width = 74
      Visible = False
      ExplicitWidth = 74
    end
    inherited btNuevo: TBitBtn
      Left = 76
      Visible = False
      ExplicitLeft = 76
    end
    inherited btCancelar: TBitBtn
      Left = 151
      Visible = False
      ExplicitLeft = 151
    end
    inherited btModificar: TBitBtn
      Left = 226
      Width = 76
      Visible = False
      ExplicitLeft = 226
      ExplicitWidth = 76
    end
    inherited Pr: TSpeedButton
      Width = 14
      Visible = False
      ExplicitWidth = 14
    end
    inherited btBuscar: TBitBtn
      Left = 316
      ExplicitLeft = 316
    end
    inherited Ne: TSpeedButton
      Left = 391
      Visible = False
      ExplicitLeft = 391
    end
    inherited btBorrar: TBitBtn
      Left = 406
      Width = 76
      Visible = False
      ExplicitLeft = 406
      ExplicitWidth = 76
    end
    inherited btSalir: TBitBtn
      Width = 74
      ExplicitWidth = 74
    end
  end
  inherited Panel1: TPanel
    Top = 715
    Width = 1138
    Height = 22
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 715
    ExplicitWidth = 1138
    ExplicitHeight = 22
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 20
    end
    inherited sbEstado: TStatusBar
      Width = 1049
      Height = 20
      ExplicitWidth = 1049
      ExplicitHeight = 20
    end
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 336
    Top = 288
  end
  object QMovimientos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.codigo,m.detalle,m.cantidad_real as cantidad,c.tipocpbt' +
        'e,c.nrocpbte,'#39'O.Produccion'#39' as Modo from ordenproduccion_mov m'
      'left join ordenproduccion_cab c on c.id=m.id_opcab'
      'where c.fecha_iniciada between :desde and :hasta'
      'union'
      
        'select r.codigo,r.detalle,r.cantidad,rc.tipocpbte,rc.nrocpbte,'#39'P' +
        'roduccion x Ajuste Stock'#39' as Modo from rtomercadet r'
      'left join rtomercacab rc on rc.id_rto=r.id_rto_cab'
      
        'where rc.fecha between :desde and :hasta and ((rc.motivo=:motivo' +
        ') or (:motivo=-1))'
      ''
      'order by 1')
    Left = 416
    Top = 472
    ParamData = <
      item
        Position = 1
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'MOTIVO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPMovimientos: TDataSetProvider
    DataSet = QMovimientos
    Left = 503
    Top = 471
  end
  object CDSMovimientos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MOTIVO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovimientos'
    Left = 583
    Top = 479
    object CDSMovimientosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSMovimientosDETALLE: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSMovimientosCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD_REAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSMovimientosTIPOCPBTE: TStringField
      DisplayLabel = 'Tipo.Cpbte'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object CDSMovimientosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSMovimientosMODO: TStringField
      DisplayLabel = 'Origen Operacion'
      FieldName = 'MODO'
      Origin = 'MODO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
  end
  object DSMovimientos: TDataSource
    DataSet = CDSMovimientos
    Left = 696
    Top = 424
  end
  object PopupMenu1: TPopupMenu
    Left = 728
    Top = 153
    object ExportarXLS1: TMenuItem
      Caption = 'Exportar XLS'
      OnClick = ExportarXLS1Click
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'csv'
    Left = 648
    Top = 121
  end
  object QResumenMateriasPrimas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT'
      '  v.fecha,'
      '  v.tipocpbte,'
      '  v.nrocpbte,'
      '  v.codigo AS producto_fabricado,'
      '  sp.detalle_stk AS nombre_producto_fabricado,'
      '  r.codigo_insumo,'
      '  si.detalle_stk AS nombre_insumo,'
      '  r.nivel,'
      '  v.cantidad_total,'
      
        '  (r.cantidad_por_unidad * sp.presentacion_cantidad) as Cantidad' +
        '_por_unidad ,'
      
        '  (v.cantidad_total * r.cantidad_por_unidad * sp.presentacion_ca' +
        'ntidad ) AS cantidad_usada_teorica,'
      '  si.deproduccion AS es_produccion'
      'FROM View_Art_producidos v'
      'JOIN TMP_RECETA_EXPANDIDA r ON r.producto_final = v.codigo'
      
        'LEFT JOIN STOCK sp ON sp.codigo_stk = v.codigo           -- prod' +
        'ucto final'
      
        'LEFT JOIN STOCK si ON si.codigo_stk = r.codigo_insumo    -- insu' +
        'mo'
      'WHERE v.fecha BETWEEN :DESDE AND :HASTA and si.deproduccion='#39'N'#39
      'ORDER BY v.fecha, v.codigo, r.nivel, r.codigo_insumo')
    Left = 844
    Top = 433
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
      end>
    object QResumenMateriasPrimasFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QResumenMateriasPrimasCODIGO_INSUMO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod.Insumo'
      DisplayWidth = 12
      FieldName = 'CODIGO_INSUMO'
      Origin = 'CODIGO_INSUMO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QResumenMateriasPrimasNOMBRE_INSUMO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre Insumo'
      DisplayWidth = 60
      FieldName = 'NOMBRE_INSUMO'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QResumenMateriasPrimasPRODUCTO_FABRICADO: TStringField
      DisplayLabel = 'Cod.Prod.'
      DisplayWidth = 10
      FieldName = 'PRODUCTO_FABRICADO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QResumenMateriasPrimasNOMBRE_PRODUCTO_FABRICADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle Producto Fabricado'
      DisplayWidth = 46
      FieldName = 'NOMBRE_PRODUCTO_FABRICADO'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QResumenMateriasPrimasCANTIDAD_TOTAL: TFloatField
      DisplayLabel = 'Cant.Total'
      FieldName = 'CANTIDAD_TOTAL'
      Origin = 'CANTIDAD_TOTAL'
    end
    object QResumenMateriasPrimasCANTIDAD_POR_UNIDAD: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Can.x Unid'
      FieldName = 'CANTIDAD_POR_UNIDAD'
      Origin = 'CANTIDAD_POR_UNIDAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object QResumenMateriasPrimasCANTIDAD_USADA_TEORICA: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cant.Usada'
      FieldName = 'CANTIDAD_USADA_TEORICA'
      Origin = 'CANTIDAD_USADA_TEORICA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QResumenMateriasPrimasNIVEL: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Niv'
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QResumenMateriasPrimasTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.'
      DisplayWidth = 6
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QResumenMateriasPrimasNROCPBTE: TStringField
      DisplayLabel = 'Nro Cpbe.'
      DisplayWidth = 16
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object QResumenMateriasPrimasES_PRODUCCION: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'De Prod.'
      DisplayWidth = 6
      FieldName = 'ES_PRODUCCION'
      Origin = 'DEPRODUCCION'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DSResumen: TDataSource
    DataSet = QResumenMateriasPrimas
    Left = 1012
    Top = 417
  end
  object QResumenACumulado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT'
      '  r.codigo_insumo,'
      '  si.detalle_stk AS nombre_insumo,'
      '  si.unidad,'
      
        '  (SUM(v.cantidad_total * r.cantidad_por_unidad * sp.presentacio' +
        'n_cantidad )) AS cantidad_usada_teorica_total'
      'FROM View_Art_producidos v'
      
        '  left JOIN TMP_RECETA_EXPANDIDA r ON r.producto_final = v.codig' +
        'o'
      '  LEFT JOIN STOCK si ON si.codigo_stk = r.codigo_insumo'
      '  left join stock sp on sp.codigo_stk= r.producto_final'
      
        'WHERE v.fecha BETWEEN :DESDE AND :HASTA AND si.deproduccion = '#39'N' +
        #39'  -- solo materias primas'
      'GROUP BY r.codigo_insumo, si.detalle_stk,si.unidad'
      'ORDER BY r.codigo_insumo'
      '')
    Left = 844
    Top = 529
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
      end>
    object QResumenACumuladoCODIGO_INSUMO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO_INSUMO'
      Origin = 'CODIGO_INSUMO'
      Required = True
      Size = 8
    end
    object QResumenACumuladoNOMBRE_INSUMO: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 50
      FieldName = 'NOMBRE_INSUMO'
      Origin = 'NOMBRE_INSUMO'
      Size = 45
    end
    object QResumenACumuladoUNIDAD: TStringField
      DisplayLabel = 'Unid.'
      DisplayWidth = 5
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QResumenACumuladoCANTIDAD_USADA_TEORICA_TOTAL: TFloatField
      DisplayLabel = 'Cantidad'
      DisplayWidth = 14
      FieldName = 'CANTIDAD_USADA_TEORICA_TOTAL'
      Origin = 'CANTIDAD_USADA_TEORICA_TOTAL'
      DisplayFormat = ',0.000'
    end
  end
  object DSResumenACumulado: TDataSource
    DataSet = QResumenACumulado
    Left = 1020
    Top = 537
  end
end

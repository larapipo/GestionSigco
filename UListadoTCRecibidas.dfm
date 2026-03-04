inherited FormListadoMovTarjetasCreditoRecibidas: TFormListadoMovTarjetasCreditoRecibidas
  Left = 255
  Top = 93
  Caption = 'Listado de Tarjetas de Credito Recibidas'
  ClientHeight = 730
  ClientWidth = 1617
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1635
  ExplicitHeight = 771
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1617
    Height = 677
    Align = alClient
    Color = clMenuHighlight
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1617
    ExplicitHeight = 677
    object Label22: TLabel
      Left = 167
      Top = 50
      Width = 97
      Height = 16
      Caption = 'Nro.de Terminal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 4
      Top = 53
      Width = 70
      Height = 16
      Caption = 'Nro.de Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel2: TLabel
      Left = 4
      Top = 3
      Width = 108
      Height = 16
      Caption = 'Tarjeta de Credito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxLabel8: TLabel
      Left = 793
      Top = 3
      Width = 41
      Height = 16
      Caption = 'Desde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxLabel9: TLabel
      Left = 903
      Top = 3
      Width = 36
      Height = 16
      Caption = 'Hasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TLabel
      Left = 252
      Top = 2
      Width = 52
      Height = 16
      Caption = 'Sucursal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object UpDown1: TUpDown
      Left = 1006
      Top = 21
      Width = 17
      Height = 20
      Hint = 'Cambia el Per'#237'odo'
      ArrowKeys = False
      Min = -32700
      Max = 32700
      ParentShowHint = False
      Position = 100
      ShowHint = True
      TabOrder = 4
      OnClick = UpDown1Click
    end
    object dbcTarjetas: TJvDBLookupCombo
      Left = 4
      Top = 22
      Width = 219
      Height = 21
      DropDownCount = 15
      DisplayEmpty = 'Todas Las Tarjetas'
      EmptyValue = '-1'
      EmptyStrIsNull = False
      LookupField = 'ID_TC'
      LookupDisplay = 'DESCRIPCION'
      LookupSource = DSTCredito
      TabOrder = 5
      OnChange = dbcTarjetasChange
    end
    object dbcSucursal: TJvDBLookupCombo
      Left = 252
      Top = 21
      Width = 217
      Height = 21
      DisplayEmpty = 'Todas las Sucursales'
      EmptyValue = '-1'
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSSucursal
      TabOrder = 6
      OnChange = dbcSucursalChange
    end
    object dbcTerminal: TJvDBLookupCombo
      Left = 270
      Top = 48
      Width = 99
      Height = 21
      DisplayEmpty = 'Sin Lote'
      EmptyValue = '00000000'
      LookupField = 'TERMINAL'
      LookupDisplay = 'TERMINAL'
      LookupSource = DSTerminales
      TabOrder = 7
      OnChange = BuscarExecute
    end
    object dbcLote: TJvDBLookupCombo
      Left = 80
      Top = 49
      Width = 81
      Height = 21
      DisplayEmpty = 'Sin Lote'
      EmptyValue = '00000'
      LookupField = 'LOTE'
      LookupDisplay = 'LOTE'
      LookupSource = DSLote
      TabOrder = 8
      OnChange = BuscarExecute
    end
    object Desde: TJvDateEdit
      Left = 793
      Top = 22
      Width = 104
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
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 2
    end
    object Hasta: TJvDateEdit
      Left = 903
      Top = 22
      Width = 97
      Height = 21
      DialogTitle = 'Seleccion de Fecha'
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
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 3
    end
    object pcMovimientos: TPageControl
      Left = 0
      Top = 81
      Width = 1617
      Height = 596
      ActivePage = TabSheet3
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 9
      object TabSheet1: TTabSheet
        Caption = 'General'
        object pnPieGeneral: TPanel
          Left = 0
          Top = 541
          Width = 1609
          Height = 27
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            1609
            27)
          object DBText1: TDBText
            Left = 8
            Top = 6
            Width = 41
            Height = 17
            DataField = 'TIPOP_COMPROB'
            DataSource = DSMovTc
          end
          object DBText2: TDBText
            Left = 106
            Top = 6
            Width = 171
            Height = 17
            DataField = 'NRO_COMPROBANTE'
            DataSource = DSMovTc
          end
          object DBText3: TDBText
            Left = 55
            Top = 6
            Width = 41
            Height = 17
            DataField = 'CLASE_COMPROB'
            DataSource = DSMovTc
          end
          object btExcel: TBitBtn
            Left = 1488
            Top = 2
            Width = 70
            Height = 23
            Anchors = [akTop, akRight]
            Caption = 'Excel'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
              000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
              4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
              7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
              7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
              77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
              000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
              E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
              67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
              00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
              FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
              77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
              FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
              D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
              97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
              FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
              FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
              B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
              37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
              00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
              FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
            TabOrder = 0
            OnClick = btExcelClick
          end
          object chbAgrupacion: TCheckBox
            Left = 1229
            Top = 6
            Width = 97
            Height = 17
            Caption = 'Ver AGrupacion'
            TabOrder = 1
            OnClick = chbAgrupacionClick
          end
        end
        object TMSFNCDataGrid1: TTMSFNCDataGrid
          Left = 0
          Top = 0
          Width = 1609
          Height = 541
          Align = alClient
          ParentDoubleBuffered = False
          DoubleBuffered = True
          TabOrder = 1
          ShowAcceleratorChar = False
          Footer.Bar.Buttons = <>
          Header.VisualGrouping.Layout.Font.Charset = DEFAULT_CHARSET
          Header.VisualGrouping.Layout.Font.Color = clWindowText
          Header.VisualGrouping.Layout.Font.Height = -12
          Header.VisualGrouping.Layout.Font.Name = 'Segoe UI'
          Header.VisualGrouping.Layout.Font.Style = []
          Header.Size = 24
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
          CellAppearance.BandLayout.Font.Height = -12
          CellAppearance.BandLayout.Font.Name = 'Segoe UI'
          CellAppearance.BandLayout.Font.Style = []
          CellAppearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FixedLayout.Font.Color = clWindowText
          CellAppearance.FixedLayout.Font.Height = -12
          CellAppearance.FixedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FixedLayout.Font.Style = []
          CellAppearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FixedSelectedLayout.Font.Color = clWindowText
          CellAppearance.FixedSelectedLayout.Font.Height = -12
          CellAppearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FixedSelectedLayout.Font.Style = []
          CellAppearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.FocusedLayout.Font.Color = clWindowText
          CellAppearance.FocusedLayout.Font.Height = -12
          CellAppearance.FocusedLayout.Font.Name = 'Segoe UI'
          CellAppearance.FocusedLayout.Font.Style = []
          CellAppearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.GroupLayout.Font.Color = clWindowText
          CellAppearance.GroupLayout.Font.Height = -12
          CellAppearance.GroupLayout.Font.Name = 'Segoe UI'
          CellAppearance.GroupLayout.Font.Style = []
          CellAppearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.NormalLayout.Font.Color = clWindowText
          CellAppearance.NormalLayout.Font.Height = -12
          CellAppearance.NormalLayout.Font.Name = 'Segoe UI'
          CellAppearance.NormalLayout.Font.Style = []
          CellAppearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.SelectedLayout.Font.Color = clWindowText
          CellAppearance.SelectedLayout.Font.Height = -12
          CellAppearance.SelectedLayout.Font.Name = 'Segoe UI'
          CellAppearance.SelectedLayout.Font.Style = []
          CellAppearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          CellAppearance.SummaryLayout.Font.Color = clWindowText
          CellAppearance.SummaryLayout.Font.Height = -12
          CellAppearance.SummaryLayout.Font.Name = 'Segoe UI'
          CellAppearance.SummaryLayout.Font.Style = []
          ColumnCount = 42
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Tarjeta'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 110.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Titular'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 130.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Nro.Documento'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Nro.Cupon'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 90.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Terminal'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 110.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Lote'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Can.Cuotas'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Importe'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 120.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Recar.'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 90.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Neto'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 120.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'T.Cpbte'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 50.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Cl.Cpbte'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 37.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Vr.Cuota'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 90.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Nro.Compr.'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 110.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Cod.Sucursal'
              Settings = [gcsAppearance, gcsEditorItems]
              Visible = False
              Width = 0.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Sucursal'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 100.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Mes de Acreditacion'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 120.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Mes.Posible Acre.'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 120.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Mes de Pres.'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 120.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Dias x Acr.'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 37.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Mes Posi.Acrd.'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 120.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Binding.BooleanTrueValue = 'S'
              Binding.BooleanFalseValue = 'N'
              Formatting.Type = gdftBoolean
              Header = 'Fue Acredi.?'
              Settings = [gcsAppearance, gcsEditorItems, gcsFormatting]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'ID_MOV_TC'
              Settings = [gcsAppearance, gcsEditorItems]
              Visible = False
              Width = 37.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'ID_CAJA'
              Settings = [gcsAppearance, gcsEditorItems]
              Visible = False
              Width = 37.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'ID_MOV_CAJA'
              Settings = [gcsAppearance, gcsEditorItems]
              Visible = False
              Width = 90.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'ID_CUENTA_BANCO'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 90.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'ID_CUENTA_CAJA'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 50.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'ID_COMPROBANTE'
              Settings = [gcsAppearance, gcsEditorItems]
              Visible = False
              Width = 0.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Mes .Acredt.'
              Settings = [gcsAppearance, gcsEditorItems]
              Visible = False
              Width = 37.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Mes Presentaci'#243'n'
              Settings = [gcsAppearance, gcsEditorItems]
              Visible = False
              Width = 37.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Estado Acr.'
              Settings = [gcsAppearance, gcsEditorItems]
              Visible = False
              Width = 37.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'TIPOOPERACION'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'COEFICIENTE'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'ID_TC'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'COTIZACION'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Semana Acredit.'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Semana Pos.Acred.'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.BandLayout.TextAlign = gtaCenter
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Semana Presn'
              Settings = [gcsAppearance, gcsEditorItems]
              Width = 80.000000000000000000
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Impor.Acreditado'
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Fecha Vta'
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'Fecha Acreditacion'
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
              Appearance.BandLayout.Font.Height = -12
              Appearance.BandLayout.Font.Name = 'Segoe UI'
              Appearance.BandLayout.Font.Style = []
              Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedLayout.Font.Color = clWindowText
              Appearance.FixedLayout.Font.Height = -12
              Appearance.FixedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedLayout.Font.Style = []
              Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FixedSelectedLayout.Font.Color = clWindowText
              Appearance.FixedSelectedLayout.Font.Height = -12
              Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              Appearance.FixedSelectedLayout.Font.Style = []
              Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.FocusedLayout.Font.Color = clWindowText
              Appearance.FocusedLayout.Font.Height = -12
              Appearance.FocusedLayout.Font.Name = 'Segoe UI'
              Appearance.FocusedLayout.Font.Style = []
              Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.GroupLayout.Font.Color = clWindowText
              Appearance.GroupLayout.Font.Height = -12
              Appearance.GroupLayout.Font.Name = 'Segoe UI'
              Appearance.GroupLayout.Font.Style = []
              Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.NormalLayout.Font.Color = clWindowText
              Appearance.NormalLayout.Font.Height = -12
              Appearance.NormalLayout.Font.Name = 'Segoe UI'
              Appearance.NormalLayout.Font.Style = []
              Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SelectedLayout.Font.Color = clWindowText
              Appearance.SelectedLayout.Font.Height = -12
              Appearance.SelectedLayout.Font.Name = 'Segoe UI'
              Appearance.SelectedLayout.Font.Style = []
              Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              Appearance.SummaryLayout.Font.Color = clWindowText
              Appearance.SummaryLayout.Font.Height = -12
              Appearance.SummaryLayout.Font.Name = 'Segoe UI'
              Appearance.SummaryLayout.Font.Style = []
              Header = 'F.Acred.Prob.'
            end>
          DefaultRowHeight = 21.000000000000000000
          FilterActions = <>
          FilterAppearance.Font.Charset = DEFAULT_CHARSET
          FilterAppearance.Font.Color = clWindowText
          FilterAppearance.Font.Height = -12
          FilterAppearance.Font.Name = 'Segoe UI'
          FilterAppearance.Font.Style = []
          Icons.ExpandIcon.Data = {
            1054544D53464E435356474269746D6170080200003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
            74683D22333222206865696768743D223332222076696577426F783D22302030
            203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
            6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
            3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
            637420636C6173733D22636C732D312220783D22372220793D22313522207769
            6474683D22313822206865696768743D2231222F3E3C72656374200D0A636C61
            73733D22636C732D312220783D2231352220793D2237222077696474683D2231
            22206865696768743D223138222F3E3C7265637420636C6173733D22636C732D
            312220783D223122200D0A793D2231222077696474683D223122206865696768
            743D223330222F3E3C7265637420636C6173733D22636C732D312220783D2231
            2220793D2231222077696474683D22333022200D0A6865696768743D2231222F
            3E3C7265637420636C6173733D22636C732D312220783D2233302220793D2231
            222077696474683D223122206865696768743D223330222F3E3C72656374200D
            0A636C6173733D22636C732D312220783D22312220793D223330222077696474
            683D22333022206865696768743D2231222F3E3C2F673E3C2F7376673E}
          Icons.CollapseIcon.Data = {
            1054544D53464E435356474269746D6170CE0100003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
            74683D22333222206865696768743D223332222076696577426F783D22302030
            203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
            6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
            3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
            637420636C6173733D22636C732D312220783D22372220793D22313522207769
            6474683D22313822206865696768743D2231222F3E3C7265637420636C617373
            3D22636C732D312220783D223122200D0A793D2231222077696474683D223122
            206865696768743D223330222F3E3C7265637420636C6173733D22636C732D31
            2220783D22312220793D2231222077696474683D22333022200D0A6865696768
            743D2231222F3E3C7265637420636C6173733D22636C732D312220783D223330
            2220793D2231222077696474683D223122206865696768743D223330222F3E3C
            72656374200D0A636C6173733D22636C732D312220783D22312220793D223330
            222077696474683D22333022206865696768743D2231222F3E3C2F673E3C2F73
            76673E}
          Icons.FilterIcon.Data = {
            1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
            6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
            2F786C696E6B222077696474683D22333222206865696768743D223332222076
            696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
            2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2366
            61666166613B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
            65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
            33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
            7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
            747465726E205377617463682032222077696474683D22363822206865696768
            743D22363822207061747465726E556E6974733D227573657253706163654F6E
            557365222076696577426F783D22302030203638203638223E3C726563742063
            6C6173733D22636C732D31222077696474683D22363822206865696768743D22
            3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
            363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
            733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
            6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
            733D22312E3520362031322E352031352031322E352033302E352031382E3520
            33302E352031382E352031352032392E3520362032392E3520312E3520312E35
            20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
            20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
            2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
            56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
          Icons.FilterActiveIcon.Data = {
            1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
            6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
            2F786C696E6B222077696474683D22333222206865696768743D223332222076
            696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
            2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2334
            36383242343B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
            65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
            33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
            7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
            747465726E205377617463682032222077696474683D22363822206865696768
            743D22363822207061747465726E556E6974733D227573657253706163654F6E
            557365222076696577426F783D22302030203638203638223E3C726563742063
            6C6173733D22636C732D31222077696474683D22363822206865696768743D22
            3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
            363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
            733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
            6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
            733D22312E3520362031322E352031352031322E352033302E352031382E3520
            33302E352031382E352031352032392E3520362032392E3520312E3520312E35
            20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
            20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
            2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
            56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
          Icons.FilterClearIcon.Data = {
            1054544D53464E435356474269746D61709D0400003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
            6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
            2F786C696E6B222077696474683D22333222206865696768743D223332222076
            696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
            2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
            37346162303B7D2E636C732D337B66696C6C3A236433393464363B7D2E636C73
            2D347B66696C6C3A236661666166613B7D2E636C732D357B66696C6C3A75726C
            28234E65775F5061747465726E5F5377617463685F38293B7D2E636C732D367B
            66696C6C3A75726C28234E65775F5061747465726E5F5377617463685F37293B
            7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174746572
            6E5F5377617463685F382220646174612D6E616D653D224E6577205061747465
            726E205377617463682038222077696474683D22363822206865696768743D22
            363822207061747465726E556E6974733D227573657253706163654F6E557365
            222076696577426F783D22302030203638203638223E3C7265637420636C6173
            733D22636C732D31222077696474683D22363822206865696768743D22363822
            2F3E3C7265637420636C6173733D22636C732D33222077696474683D22363822
            206865696768743D223638222F3E3C2F7061747465726E3E3C7061747465726E
            2069643D224E65775F5061747465726E5F5377617463685F372220646174612D
            6E616D653D224E6577205061747465726E205377617463682037222077696474
            683D22363822206865696768743D22363822207061747465726E556E6974733D
            227573657253706163654F6E557365222076696577426F783D22302030203638
            203638223E3C7265637420636C6173733D22636C732D31222077696474683D22
            363822206865696768743D223638222F3E3C7265637420636C6173733D22636C
            732D32222077696474683D22363822206865696768743D223638222F3E3C2F70
            61747465726E3E3C2F646566733E3C7469746C653E436C6561723C2F7469746C
            653E3C672069643D2249636F6E223E3C7265637420636C6173733D22636C732D
            342220783D22312E38362220793D2231302E3334222077696474683D2232382E
            323822206865696768743D2231312E333122207472616E73666F726D3D227472
            616E736C617465282D362E36332031362920726F74617465282D343529222F3E
            3C706F6C79676F6E20636C6173733D22636C732D352220706F696E74733D2232
            2E37312032322031302032392E32392031352E37392032332E3520382E352031
            362E323120322E3731203232222F3E3C7061746820636C6173733D22636C732D
            362220643D224D31302E37312C33306C32302D32304C32322C312E32392C312E
            32392C32322C31302C33302E37315633314833315633305A4D32322C322E3731
            2C32392E32392C31302C31362E352C32322E37392C392E32312C31352E355A4D
            322E37312C32322C382E352C31362E32316C372E32392C372E32394C31302C32
            392E32395A222F3E3C2F673E3C2F7376673E}
          Icons.FilterTypeIcon.Data = {
            1054544D53464E435356474269746D6170CB0700003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
            6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
            2F786C696E6B222077696474683D22333222206865696768743D223332222076
            696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
            2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2337
            39373737343B7D2E636C732D337B66696C6C3A236661666166613B7D2E636C73
            2D347B66696C6C3A233361336133383B7D2E636C732D357B66696C6C3A75726C
            28234E65775F5061747465726E5F5377617463685F34293B7D3C2F7374796C65
            3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
            5F342220646174612D6E616D653D224E6577205061747465726E205377617463
            682034222077696474683D22363822206865696768743D223638222070617474
            65726E556E6974733D227573657253706163654F6E557365222076696577426F
            783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
            222077696474683D22363822206865696768743D223638222F3E3C7265637420
            636C6173733D22636C732D32222077696474683D22363822206865696768743D
            223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E5465
            78742D46696C7465723C2F7469746C653E3C672069643D224D61736B223E3C70
            6F6C79676F6E20636C6173733D22636C732D332220706F696E74733D2232352E
            35203920313920322E3520313920392032352E352039222F3E3C706174682063
            6C6173733D22636C732D332220643D224D31382C313056324836563330483231
            5632362E31384C31392E38342C323548385632344831382E38356C2D322D3248
            3856323168385631394838563138683856313648385631354832347631683256
            31305A4D382C396838763148385A6D302C3456313248323476315A222F3E3C70
            6F6C79676F6E20636C6173733D22636C732D342220706F696E74733D22352031
            2035203331203620333120323120333120323120333020362033302036203220
            313820322031382E352032203139203220313920322E352032352E3520392032
            36203920323620392E3520323620313020323620313620323720313620323720
            392E372032372039203139203120352031222F3E3C706F6C79676F6E20636C61
            73733D22636C732D342220706F696E74733D22323620313020323620392E3520
            323620392032352E352039203139203920313920322E3520313920322031382E
            3520322031382032203138203130203236203130222F3E3C7265637420636C61
            73733D22636C732D332220783D22382220793D2239222077696474683D223822
            206865696768743D2231222F3E3C7265637420636C6173733D22636C732D3522
            20783D22382220793D2239222077696474683D223822206865696768743D2231
            222F3E3C7265637420636C6173733D22636C732D332220783D22382220793D22
            3132222077696474683D22313622206865696768743D2231222F3E3C72656374
            20636C6173733D22636C732D352220783D22382220793D223132222077696474
            683D22313622206865696768743D2231222F3E3C706F6C79676F6E20636C6173
            733D22636C732D332220706F696E74733D223820313520382031362031362031
            362032342031362032342031352038203135222F3E3C706F6C79676F6E20636C
            6173733D22636C732D352220706F696E74733D22382031352038203136203136
            2031362032342031362032342031352038203135222F3E3C7265637420636C61
            73733D22636C732D332220783D22382220793D223138222077696474683D2238
            22206865696768743D2231222F3E3C7265637420636C6173733D22636C732D35
            2220783D22382220793D223138222077696474683D223822206865696768743D
            2231222F3E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E
            74733D22382032322031362E38372032322031362032312E3132203136203231
            20382032312038203232222F3E3C706F6C79676F6E20636C6173733D22636C73
            2D352220706F696E74733D22382032322031362E38372032322031362032312E
            313220313620323120382032312038203232222F3E3C706F6C79676F6E20636C
            6173733D22636C732D332220706F696E74733D22382032352031392E38342032
            352031382E383520323420382032342038203235222F3E3C706F6C79676F6E20
            636C6173733D22636C732D352220706F696E74733D22382032352031392E3834
            2032352031382E383520323420382032342038203235222F3E3C2F673E3C6720
            69643D224F7665726C6179223E3C706F6C79676F6E20636C6173733D22636C73
            2D332220706F696E74733D2233312E352031372E352031372E352031372E3520
            31372E352032302E352032322E352032352E35362032322E352033312E352032
            362E352033312E352032362E352032352E35362033312E352032302E35203331
            2E352031372E35222F3E3C7061746820636C6173733D22636C732D342220643D
            224D32372C33324832325632352E37376C2D352D352E30365631374833327633
            2E37316C2D352C352E30365A6D2D342D3168335632352E33366C352D352E3037
            56313848313876322E32396C352C352E30375A222F3E3C2F673E3C2F7376673E}
          Icons.SortAscendingIcon.Data = {
            1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
            6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
            2F786C696E6B222077696474683D22333222206865696768743D223332222076
            696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
            2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
            37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
            65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
            63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
            3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
            5F372220646174612D6E616D653D224E6577205061747465726E205377617463
            682037222077696474683D22363822206865696768743D223638222070617474
            65726E556E6974733D227573657253706163654F6E557365222076696577426F
            783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
            222077696474683D22363822206865696768743D223638222F3E3C7265637420
            636C6173733D22636C732D32222077696474683D22363822206865696768743D
            223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
            72742D415A3C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
            636C6173733D22636C732D332220643D224D322C32392E36346C372D31305632
            304833563138683976312E34344C352C32392E33365632396837763248325A22
            2F3E3C7061746820636C6173733D22636C732D342220643D224D352E372C3131
            2C342E35322C313548312E39334C362E33332C3148392E35344C31342C313568
            2D322E376C2D312E32342D345A4D392E36342C392E31312C382E35362C352E36
            36632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E
            322E38312D2E342C312E37382D2E36352C322E36314C362E31312C392E31315A
            222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
            3D2232332032352E3132203233203620323220362032322032352E3132203136
            2E34342031392E35362031352E35362032302E34342032322E352032372E3338
            2032392E34342032302E34342032382E35362031392E35362032332032352E31
            32222F3E3C2F673E3C2F7376673E}
          Icons.SortDescendingIcon.Data = {
            1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
            22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
            6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
            2F786C696E6B222077696474683D22333222206865696768743D223332222076
            696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
            2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
            37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
            65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
            63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
            3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
            5F372220646174612D6E616D653D224E6577205061747465726E205377617463
            682037222077696474683D22363822206865696768743D223638222070617474
            65726E556E6974733D227573657253706163654F6E557365222076696577426F
            783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
            222077696474683D22363822206865696768743D223638222F3E3C7265637420
            636C6173733D22636C732D32222077696474683D22363822206865696768743D
            223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
            72742D5A413C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
            636C6173733D22636C732D332220643D224D322C31322E36346C372D31305633
            48335631683956322E34344C352C31322E33365631326837763248325A222F3E
            3C7061746820636C6173733D22636C732D342220643D224D352E372C32372C34
            2E35322C333148312E39336C342E342D313448392E35344C31342C3331682D32
            2E376C2D312E32342D345A6D332E39342D312E39334C382E35362C32312E3636
            632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E32
            2E38312D2E342C312E37382D2E36352C322E36314C362E31312C32352E31315A
            222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
            3D2232332032352E3132203233203620323220362032322032352E3132203136
            2E34342031392E35362031352E35362032302E34342032322E352032372E3338
            2032392E34342032302E34342032382E35362031392E35362032332032352E31
            32222F3E3C2F673E3C2F7376673E}
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
          Options.Grouping.HideColumns = True
          Options.Sorting.Enabled = True
          Options.Column.FixedAutoCheckAll = False
          Options.Mouse.ColumnDragging = True
          Options.Selection.ShowSelectionInFixedCells = True
          RowCount = 1
          object TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter
            Left = 1072
            Top = 184
            Width = 26
            Height = 26
            Visible = True
            Columns = <
              item
                FieldName = 'TARJETACREDITO'
                AutoCreated = False
              end
              item
                FieldName = 'TITULAR'
                AutoCreated = True
              end
              item
                FieldName = 'N_DOCU'
                AutoCreated = True
              end
              item
                FieldName = 'NRO_CUPON'
                AutoCreated = True
              end
              item
                FieldName = 'NRO_TERMINAL'
                AutoCreated = True
              end
              item
                FieldName = 'NRO_LOTE'
                AutoCreated = True
              end
              item
                FieldName = 'CAN_CUOTAS'
                AutoCreated = True
              end
              item
                FieldName = 'IMPORTE'
                AutoCreated = True
              end
              item
                FieldName = 'IMPORTE_RECARGO'
                AutoCreated = True
              end
              item
                FieldName = 'IMPORTE_NETO'
                AutoCreated = True
              end
              item
                FieldName = 'TIPOP_COMPROB'
                AutoCreated = True
              end
              item
                FieldName = 'CLASE_COMPROB'
                AutoCreated = True
              end
              item
                FieldName = 'VALORCUOTA'
                AutoCreated = True
              end
              item
                FieldName = 'NRO_COMPROBANTE'
                AutoCreated = True
              end
              item
                FieldName = 'SUCURSAL'
                AutoCreated = True
              end
              item
                FieldName = 'NOMBRESUC'
                AutoCreated = True
              end
              item
                FieldName = 'MESACREDITADO'
                AutoCreated = True
              end
              item
                FieldName = 'MESPOSIBLEACREDI'
                AutoCreated = True
              end
              item
                FieldName = 'MESPRESENTACION'
                AutoCreated = True
              end
              item
                FieldName = 'DIAS_PARA_ACR'
                AutoCreated = True
              end
              item
                FieldName = 'MESPOSIBLEACR_FECHA'
                AutoCreated = True
              end
              item
                CheckBoxField = True
                FieldName = 'ACREDITADA'
                AutoCreated = True
              end
              item
                FieldName = 'ID_MOV_TC'
                AutoCreated = True
              end
              item
                FieldName = 'ID_CAJA'
                AutoCreated = True
              end
              item
                FieldName = 'ID_MOV_CAJA'
                AutoCreated = True
              end
              item
                FieldName = 'ID_CUENTA_BANCO'
                AutoCreated = True
              end
              item
                FieldName = 'ID_CUENTA_CAJA'
                AutoCreated = True
              end
              item
                FieldName = 'ID_COMPROBANTE'
                AutoCreated = True
              end
              item
                FieldName = 'MESACREDITA_FECHA'
                AutoCreated = True
              end
              item
                FieldName = 'MESPRESENTACION_FECHA'
                AutoCreated = True
              end
              item
                FieldName = 'MUESTRAACREDITACION'
                AutoCreated = True
              end
              item
                FieldName = 'TIPOOPERACION'
                AutoCreated = True
              end
              item
                FieldName = 'COEFICIENTE'
                AutoCreated = True
              end
              item
                FieldName = 'ID_TC'
                AutoCreated = True
              end
              item
                FieldName = 'COTIZACION'
                AutoCreated = True
              end
              item
                FieldName = 'MUESTRASEMANAACREDI'
                AutoCreated = True
              end
              item
                FieldName = 'MUESTRASEMANAPOSIBLE'
                AutoCreated = True
              end
              item
                FieldName = 'MUESTRASEMANAPRESEN'
                AutoCreated = True
              end
              item
                FieldName = 'SALDO_ACREDITADO'
                AutoCreated = True
              end
              item
                FieldName = 'FECHA'
                AutoCreated = True
              end
              item
                FieldName = 'FECHA_ACREDITACION'
                AutoCreated = True
              end
              item
                FieldName = 'FECHAACREDITACION_PROBABLE'
                AutoCreated = True
              end>
            DataSource = DSMovTc
            LoadMode = almAllRecords
          end
          object TMSFNCDataGridExcelIO1: TTMSFNCDataGridExcelIO
            Left = 1152
            Top = 184
            Width = 26
            Height = 26
            Visible = True
            DataGrid = TMSFNCDataGrid1
            AutoResizeDataGrid = False
            Options.ExportOverwrite = omAlways
            Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
            Options.ExportFormulas = False
            Options.ExportWordWrapped = True
            Options.ExportShowGridLines = False
            Options.ExportCellMargins = True
            UseUnicode = False
            DataGridStartRow = 0
            DataGridStartCol = 0
            Version = '3.24'
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Agrupado'
        ImageIndex = 1
        object Label2: TLabel
          Left = 368
          Top = 288
          Width = 78
          Height = 13
          Caption = 'Semana Acredit.'
        end
        object Label3: TLabel
          Left = 536
          Top = 40
          Width = 78
          Height = 13
          Caption = 'Semana Acredit.'
        end
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1609
          Height = 526
          Align = alClient
          DataSource = DSMovTc
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'UserSkin'
          OptionsView.ColumnGrandTotalText = 'Total'
          OptionsView.RowGrandTotalText = 'Total'
          PopupMenu = PopupMenu2
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'FECHAACREDITACION_PROBABLE'
            Visible = True
            UniqueName = 'F.Acred.Prob.'
          end
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'CAN_CUOTAS'
            Visible = True
            UniqueName = 'Can.Cuotas'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'CLASE_COMPROB'
            Visible = True
            UniqueName = 'Cl.Cpbte'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'FECHA'
            Visible = True
            UniqueName = 'Fecha de Vta'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'FECHA_ACREDITACION'
            Visible = True
            UniqueName = 'F.Acreditacion'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'IMPORTE'
            DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            UniqueName = 'Importe'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'IMPORTE_NETO'
            DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            UniqueName = 'Neto'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'NRO_LOTE'
            Visible = True
            UniqueName = 'Lote'
          end
          object cxDBPivotGrid1Field9: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'VALORCUOTA'
            DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            UniqueName = 'V.Cuota'
          end
          object cxDBPivotGrid1Field10: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'IMPORTE_RECARGO'
            DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            UniqueName = 'Rec.'
          end
          object cxDBPivotGrid1Field11: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'TARJETACREDITO'
            Visible = True
            Width = 200
            UniqueName = 'Tarjeta'
          end
          object cxDBPivotGrid1Field12: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'NOMBRESUC'
            Visible = True
            UniqueName = 'Sucursal'
          end
          object cxDBPivotGrid1Field13: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'MESPRESENTACION'
            DisplayFormat = 'yyyy-mmm'
            Visible = True
            UniqueName = 'Mes de Pres.'
          end
          object cxDBPivotGrid1Field14: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'MESACREDITADO'
            DisplayFormat = 'yyyy-mmm'
            Visible = True
            UniqueName = 'Mes de Acreditacion'
          end
          object cxDBPivotGrid1Field15: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MESPOSIBLEACREDI'
            DisplayFormat = 'yyyy-mmm'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Visible = True
            UniqueName = 'Mes.Posible Acre.'
          end
          object cxDBPivotGrid1Field16: TcxDBPivotGridField
            AreaIndex = 12
            IsCaptionAssigned = True
            Caption = 'Tipo de Operacion'
            DataBinding.FieldName = 'TIPOOPERACION'
            Visible = True
            UniqueName = 'Tipo de Operacion'
          end
          object cxDBPivotGrid1Field17: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'TIPOP_COMPROB'
            Visible = True
            UniqueName = 'T.Cpbte'
          end
          object cxDBPivotGrid1Field18: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'MUESTRAACREDITACION'
            Visible = True
            UniqueName = 'Estado Acr.'
          end
          object cxDBPivotGrid1Field19: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'NRO_CUPON'
            Visible = True
            UniqueName = 'Nro.Cupon'
          end
          object cxDBPivotGrid1Field20: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'MUESTRASEMANAACREDI'
            Visible = True
            UniqueName = 'Semana Acredit.'
          end
          object cxDBPivotGrid1Field21: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'MUESTRASEMANAPOSIBLE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Visible = True
            UniqueName = 'Semana Pos.Acred.'
          end
          object cxDBPivotGrid1Field22: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'MUESTRASEMANAPRESEN'
            Visible = True
            UniqueName = 'Semana Presn'
          end
          object cxDBPivotGrid1Field23: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'NRO_COMPROBANTE'
            Visible = True
            UniqueName = 'Nro.Compr.'
          end
          object cxDBPivotGrid1Field24: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'SALDO_ACREDITADO'
            Visible = True
            UniqueName = 'Impor.Acreditado'
          end
          object cxDBPivotGrid1Field25: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'TITULAR'
            Visible = True
            UniqueName = 'Titular'
          end
          object cxDBPivotGrid1Field26: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'N_DOCU'
            Visible = True
            UniqueName = 'Nro.Documento'
          end
        end
        object pnPieGrupo: TPanel
          Left = 0
          Top = 526
          Width = 1609
          Height = 42
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1609
            42)
          object Label1: TLabel
            Left = 3
            Top = 20
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label1Click
          end
          object BitBtn1: TBitBtn
            Left = 1451
            Top = 3
            Width = 75
            Height = 23
            Anchors = [akTop, akRight]
            Caption = '&Imprimir'
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              03030303030303030303030303030303030303030303030303FFFFFF03030303
              030303030303FFFFFF0303030000000303030303030303030300000003030303
              F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
              00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
              070707070707070707070707000303F8FF030303030303030303030303030303
              F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
              0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
              FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
              F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
              F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
              F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
              03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
              FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
              FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
              03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
              F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
              0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
              FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
              FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
              0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
              F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object btExcelGastos: TBitBtn
            Left = 1532
            Top = 3
            Width = 70
            Height = 23
            Anchors = [akTop, akRight]
            Caption = 'Excel'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
              000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
              4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
              7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
              7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
              77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
              000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
              E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
              67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
              00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
              FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
              77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
              FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
              D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
              97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
              FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
              FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
              B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
              37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
              00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
              FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
            TabOrder = 1
            OnClick = btExcelGastosClick
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Tarjetas API Fidelius'
        ImageIndex = 2
        DesignSize = (
          1609
          568)
        object dbgTerjetas: TDBAdvGrid
          Left = 0
          Top = 0
          Width = 1609
          Height = 473
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          ColCount = 2
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 2
          FixedRows = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
          ParentFont = False
          PopupMenu = PopupMenu3
          TabOrder = 0
          OnGetFloatFormat = dbgTerjetasGetFloatFormat
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = 4474440
          ActiveCellFont.Height = -12
          ActiveCellFont.Name = 'Segoe UI'
          ActiveCellFont.Style = [fsBold]
          AutoThemeAdapt = True
          ControlLook.FixedGradientFrom = clBtnFace
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
          FilterDropDown.Font.Style = [fsBold]
          FilterDropDown.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000020000000900000011000000110000
            0009000000020000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000093D332F8268524CF467514BF42E24
            21820000000A0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000108B756CFFEBE8E7FFBAAFA9FF6F58
            50FF000000110000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000011877169FFE5E0DDFFBEB0A7FF715A
            53FF000000120000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000010846E67FFE4DDDAFFC2B4ABFF735C
            56FF000000110000000000000000000000000000000000000000000000000000
            000000000000000000000000000200000012836C64FFDDD5D0FFC2B4ACFF775F
            59FF000000140000000200000000000000000000000000000000000000000000
            000000000000000000030101010F34292681826B64FFD3CFCBFFBDB3AEFF7962
            5CFF2F2523830101011100000004000000010000000000000000000000000000
            0000000000040C0A092662524ACC8F786EFFA18D81FFAE9B8FFFAF9A8EFF9D87
            7AFF826A61FF554440CD0A080829000000050000000100000000000000000000
            0003120F0E2D7F6B63ECA69186FFBEB0A5FFCCC1B8FFBDACA1FFBEABA0FFB29E
            92FFA69082FF937B70FF6B5650ED0F0C0B310000000300000000000000010000
            00076E5E58C6AD9B90FFC4B7ADFFE5DFDAFFDBD5CDFFC9BBB1FFC3B1A6FFBCAB
            9FFFAF9B8EFFA69285FF937B6FFF574642C80000000A00000001000000022B25
            234EA49087FFC5B8ADFFE1DBD5FFF4F3F0FFE5E1DAFFCFC3B9FFC3B1A6FFC3B3
            A8FFB4A296FFAD998CFFA28C7FFF826A61FF211A19530000000300000004685C
            55A6B6A59AFFCEC4BBFFF2F0EDFFFCFCFBFFECEBE4FFD4C9C0FFC3B1A6FFC7B8
            AEFFB6A598FFAF9C8FFFA79284FF927A6DFF4E403CA900000006000000059E8C
            83ECC5B8AEFFE3DED8FFFCFAFAFFFDFCFBFFFCFBFAFFF8F8F5FFF6F3F0FFF2EE
            EBFFEAE4DFFFD8CEC6FFC5B6ACFFA18A7EFF77645DEB0000000800000004B19D
            94FFF0ECE9FFDCD5D2FFB6A8A4FF988681FF77615AFF7E6862FF89746CFF9580
            79FFB1A099FFC4B6B0FFD7CCC5FFDDD4CBFF87736BFE00000007000000023D35
            335CA8968DF0CCC0B9FFE3DBD6FFEFEBE7FFF1EEEAFFF4F0EEFFF1EDEAFFE8E1
            DCFFE0D7D1FFCEC2BAFFB3A39AFF8C7971F12F29266000000003000000000000
            00010807070F3E36335E695E579F897870CE8F7F77DDA49088FFA18D84FF8877
            70DD7D6C65CF5D514CA1352E2B60070606120000000300000000}
          FilterDropDown.GlyphActive.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000030000000D000000190000001A0000
            000E000000030000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000D112B4A8C1A4E9CF6194D9BF60F28
            478D0000000E0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000172762ABFFD6EDF7FF5DB1E5FF225C
            A5FF000000190000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000019255FA9FFC1E6F5FF56AEE3FF2058
            A3FF0000001B0000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000017235CA7FFABE2F6FF4DABE4FF1F56
            A2FF000000190000000000000000000000000000000000000000000000000000
            00000000000000000000000000020000001B225BA6FF8FD6F4FF45A5E1FF1E54
            A1FF0000001E0000000200000000000000000000000000000000000000000000
            00000000000000000005000102160F28498A225AA6FF77CAEEFF3BA0DEFF1E53
            A1FF081E3F8D0001021800000006000000010000000000000000000000000000
            000000000005040B112D22568DD03B81C4FF4E96D2FF4AA1D9FF3592D1FF2F7E
            C6FF2465B0FF113A76D202070E31000000070000000100000000000000000000
            0004060F18332F70AFEE569FD6FF7CC0E8FF93CFEFFF5BBFE9FF41ADDFFF3287
            CEFF3485D2FF3181C9FF1A5095EF030A14390000000500000000000000010000
            000B265D8FC962ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6BCFF0FF47BAE6FF398F
            D4FF2F7ACBFF3C92DBFF368ACFFF17417BCD0000000F00000001000000030E23
            34534992CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF72D4F2FF4ABFE8FF3F98
            D8FF2B73C8FF3486D2FF43A2E2FF2A70BAFF09182E5A00000005000000062252
            7AA96BB6E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF76D7F3FF4DC5EAFF47A2
            DEFF2A72C6FF2F7ACBFF44A2E4FF3891D4FF163C6CAE0000000A00000007357D
            B5EC91D5F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6
            FDFFC7ECF9FFA1D1EEFF86CBF1FF4FADE5FF21599FEC0000000C000000053C8B
            C8FFF2FAFDFFB9C6E2FF6884C0FF3C64B1FF0F43A4FF1451ADFF1B60B8FF2471
            C1FF529CD6FF76BBE6FFAAE0F4FFC5F0FBFF2665B0FE0000000A000000021530
            455E468DC1F093C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2
            FAFFCAEBF8FFA6D6EFFF71AFDCFF316FB0F10D233D6400000004000000000000
            000203070A111633476026577BA1316F9FCF3275AADE3885C4FF3681C2FF2D6C
            A5DE286298D11D4872A410284164020509150000000400000001}
          FilterDropDown.TextChecked = 'Checked'
          FilterDropDown.TextUnChecked = 'Unchecked'
          FilterDropDownClear = 'Sin Filtrar'
          FilterDropDownColumns = fdAll
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
          FixedColWidth = 123
          FixedRowHeight = 22
          FixedRowAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Segoe UI'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          FloatingFooter.BorderColor = clBlue
          FloatingFooter.Visible = True
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
          SearchFooter.Color = clBtnFace
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
          SelectionColor = clHighlight
          SelectionTextColor = clWindowText
          SortSettings.HeaderColorTo = clWhite
          SortSettings.HeaderMirrorColor = clWhite
          SortSettings.HeaderMirrorColorTo = clWhite
          Version = '2.8.3.9'
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
              Font.Height = -12
              Font.Name = 'Segoe UI'
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
              Width = 123
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 255
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
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
              Width = 96
            end>
          DataSource = DSDatos
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
            123
            96)
          RowHeights = (
            22
            22)
        end
        object edUser: TLabeledEdit
          Left = 1299
          Top = 493
          Width = 153
          Height = 21
          Anchors = [akRight, akBottom]
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Usuario'
          TabOrder = 1
          Text = ''
        end
        object btLeerTarjetas: TBitBtn
          Left = 1474
          Top = 531
          Width = 109
          Height = 24
          Anchors = [akRight, akBottom]
          Caption = 'Leer Tarjetas'
          TabOrder = 2
          OnClick = btLeerTarjetasClick
        end
        object edPass: TLabeledEdit
          Left = 1299
          Top = 532
          Width = 153
          Height = 21
          Anchors = [akRight, akBottom]
          EditLabel.Width = 46
          EditLabel.Height = 13
          EditLabel.Caption = 'Password'
          TabOrder = 3
          Text = ''
        end
        object cheBox_Portal: TAdvOfficeCheckBox
          Left = 1486
          Top = 479
          Width = 97
          Height = 17
          Anchors = [akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TabStop = True
          OnClick = cheBox_PortalClick
          Alignment = taRightJustify
          Caption = 'Activar Filtros'
          ReturnIsTab = False
          URLColor = clScrollBar
          Version = '1.8.4.2'
        end
      end
      object TarjetasNubceo: TTabSheet
        Caption = 'Nubceo'
        ImageIndex = 3
        object pcNubceo: TPageControl
          Left = 0
          Top = 0
          Width = 1609
          Height = 568
          ActivePage = pagConsulta
          Align = alClient
          TabOrder = 0
          object pagCarga: TTabSheet
            Caption = 'Procesamiento'
            object pnCabecera: TPanel
              Left = 0
              Top = 0
              Width = 1601
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Color = clMenuHighlight
              ParentBackground = False
              TabOrder = 0
            end
            object pnPie: TPanel
              Left = 0
              Top = 499
              Width = 1601
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              Color = clMenuHighlight
              ParentBackground = False
              TabOrder = 1
              DesignSize = (
                1601
                41)
              object Label4: TLabel
                Left = 1037
                Top = 10
                Width = 26
                Height = 16
                Anchors = [akTop, akRight]
                Caption = 'Lote'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ExplicitLeft = 574
              end
              object chbFiltroProcesamiento: TAdvOfficeCheckBox
                Left = 1486
                Top = 9
                Width = 97
                Height = 17
                Anchors = [akRight, akBottom]
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TabStop = True
                OnClick = chbFiltroProcesamientoClick
                Alignment = taRightJustify
                Caption = 'Activar Filtros'
                ReturnIsTab = False
                URLColor = clScrollBar
                Version = '1.8.4.2'
              end
              object btLeerArchivo: TBitBtn
                Left = 16
                Top = 3
                Width = 125
                Height = 33
                Action = LeerNubceo
                Caption = 'Leer Archivo Nubceo'
                TabOrder = 1
              end
              object edLote: TMaskEdit
                Left = 1069
                Top = 10
                Width = 104
                Height = 21
                Alignment = taCenter
                Anchors = [akTop, akRight]
                EditMask = '0000-99-99;1;_'
                MaxLength = 10
                TabOrder = 2
                Text = '    -  -  '
              end
              object btNovedades: TButton
                Left = 1191
                Top = 6
                Width = 95
                Height = 27
                Anchors = [akTop, akRight]
                Caption = 'Ver Novedades'
                TabOrder = 3
                OnClick = btNovedadesClick
              end
              object btGuardarLiquidaciones: TBitBtn
                Left = 1292
                Top = 6
                Width = 123
                Height = 27
                Action = GenerarGuardarLiquidacion
                Anchors = [akTop, akRight]
                Caption = 'Guardar Liquidaci'#243'n'
                TabOrder = 4
              end
            end
            object sgNubceo: TAdvStringGrid
              Left = 0
              Top = 33
              Width = 1601
              Height = 466
              Align = alClient
              DrawingStyle = gdsClassic
              FixedColor = clWhite
              FixedCols = 0
              FixedRows = 0
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
              TabOrder = 2
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
              FilterDropDown.AutoSize = True
              FilterDropDown.Font.Charset = DEFAULT_CHARSET
              FilterDropDown.Font.Color = clWindowText
              FilterDropDown.Font.Height = -12
              FilterDropDown.Font.Name = 'Segoe UI'
              FilterDropDown.Font.Style = []
              FilterDropDown.TextChecked = 'Checked'
              FilterDropDown.TextUnChecked = 'Unchecked'
              FilterDropDownClear = '(All)'
              FilterDropDownCheckUnCheckAll = 'Todos'
              FilterEdit.Row = 15
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
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Segoe UI'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
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
              Version = '9.2.1.0'
              ExplicitHeight = 468
              ColWidths = (
                64
                64
                64
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
          end
          object pagConsulta: TTabSheet
            Caption = 'Consulta'
            ImageIndex = 1
            object dbgLiquidaciones: TDBAdvGrid
              Left = 0
              Top = 57
              Width = 1601
              Height = 442
              Align = alClient
              ColCount = 2
              DrawingStyle = gdsClassic
              FixedColor = clWhite
              RowCount = 2
              FixedRows = 1
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect, goFixedRowDefAlign]
              TabOrder = 0
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
              FixedColWidth = 20
              FixedRowHeight = 22
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Segoe UI'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
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
              Version = '2.8.3.9'
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
                  EditLength = 40
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
                  Width = 64
                end>
              DataSource = DSLiquidaciones
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
              ExplicitHeight = 444
              ColWidths = (
                20
                64)
              RowHeights = (
                22
                22)
            end
            object Panel2: TPanel
              Left = 0
              Top = 499
              Width = 1601
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              Color = clMenuHighlight
              ParentBackground = False
              TabOrder = 1
              DesignSize = (
                1601
                41)
              object chbFiltraConsulta: TAdvOfficeCheckBox
                Left = 1485
                Top = 9
                Width = 97
                Height = 17
                Anchors = [akRight, akBottom]
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TabStop = True
                OnClick = chbFiltraConsultaClick
                Alignment = taRightJustify
                Caption = 'Activar Filtros'
                ReturnIsTab = False
                URLColor = clScrollBar
                Version = '1.8.4.2'
              end
              object BitBtn2: TBitBtn
                Left = 1128
                Top = 6
                Width = 149
                Height = 25
                Action = GenerarRecibos
                Anchors = [akTop, akRight]
                Caption = 'Generar Recibos'
                TabOrder = 1
              end
              object BitBtn3: TBitBtn
                Left = 1299
                Top = 6
                Width = 153
                Height = 25
                Action = BuscarLiquidaciones
                Anchors = [akTop, akRight]
                Caption = 'Buscar Liquidaciones'
                TabOrder = 2
              end
            end
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 1601
              Height = 57
              Align = alTop
              BevelOuter = bvNone
              Color = clMenuHighlight
              ParentBackground = False
              TabOrder = 2
              DesignSize = (
                1601
                57)
              object Label6: TLabel
                Left = 1396
                Top = 3
                Width = 41
                Height = 16
                Anchors = [akTop, akRight]
                Caption = 'Desde'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                Transparent = True
                ExplicitLeft = 945
              end
              object Label7: TLabel
                Left = 1486
                Top = 3
                Width = 36
                Height = 16
                Anchors = [akTop, akRight]
                Caption = 'Hasta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                Transparent = True
                ExplicitLeft = 1035
              end
              object Label5: TLabel
                Left = 4
                Top = 5
                Width = 129
                Height = 16
                Caption = 'Comprobante Recibo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object JvLabel1: TLabel
                Left = 528
                Top = 5
                Width = 170
                Height = 16
                Caption = 'Caja de ingresos de Fondos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                Transparent = True
              end
              object Desde2: TJvDateEdit
                Left = 1396
                Top = 22
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
              end
              object Hasta2: TJvDateEdit
                Left = 1486
                Top = 22
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
                TabOrder = 1
              end
              object UpDown2: TUpDown
                Left = 1577
                Top = 22
                Width = 17
                Height = 20
                Hint = 'Cambia el Per'#237'odo'
                Anchors = [akTop, akRight]
                ArrowKeys = False
                Min = -32700
                Max = 32700
                ParentShowHint = False
                Position = 100
                ShowHint = True
                TabOrder = 2
                OnClick = UpDown2Click
              end
              object dbcCtas: TJvDBLookupCombo
                Left = 527
                Top = 23
                Width = 247
                Height = 23
                EmptyValue = '-1'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                LookupField = 'ID_CUENTA_CAJA'
                LookupDisplay = 'NOMBRE'
                LookupSource = DSCajas
                ParentFont = False
                TabOrder = 3
                TabStop = False
              end
              object dbcComprobante: TJvDBLookupCombo
                Left = 3
                Top = 23
                Width = 518
                Height = 23
                DropDownCount = 12
                DropDownWidth = 510
                DisplayAllFields = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                LookupField = 'ID_COMPROBANTE'
                LookupDisplay = 'DENOMINACION;DETALLE;Letra;Prefijo;numero'
                LookupSource = DSComprob
                ParentFont = False
                TabOrder = 4
                TabStop = False
              end
            end
          end
        end
      end
    end
    object rgEstados: TAdvOfficeRadioGroup
      Left = 475
      Top = 4
      Width = 152
      Height = 67
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      Version = '1.8.4.2'
      Caption = 'Ver los Movimientos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 0
      OnClick = BuscarExecute
      ItemIndex = 1
      Items.Strings = (
        'Todos Los Movimientos'
        'Los No Acreditados'
        'Los Acreditados')
      Ellipsis = False
    end
    object rgFechas: TAdvOfficeRadioGroup
      Left = 633
      Top = 5
      Width = 145
      Height = 66
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      Version = '1.8.4.2'
      Caption = 'Conulta Por Fecha de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 1
      OnClick = BuscarExecute
      ItemIndex = 0
      Items.Strings = (
        'De Venta'
        'De Acreditaci'#243'n'
        'de Posible Acreditacion')
      Ellipsis = False
    end
  end
  inherited ToolBar1: TToolBar
    Top = 677
    Width = 1617
    Align = alBottom
    ExplicitTop = 677
    ExplicitWidth = 1617
    inherited btConfirma: TBitBtn
      Width = 39
      DoubleBuffered = True
      Visible = False
      ExplicitWidth = 39
    end
    inherited btNuevo: TBitBtn
      Left = 41
      Width = 32
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 41
      ExplicitWidth = 32
    end
    inherited btCancelar: TBitBtn
      Left = 73
      Width = 32
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 73
      ExplicitWidth = 32
    end
    inherited btModificar: TBitBtn
      Left = 105
      Width = 40
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 105
      ExplicitWidth = 40
    end
    inherited Pr: TSpeedButton
      Left = 145
      Visible = False
      ExplicitLeft = 145
    end
    inherited btBuscar: TBitBtn
      Left = 160
      DoubleBuffered = True
      ExplicitLeft = 160
    end
    inherited Ne: TSpeedButton
      Left = 235
      Visible = False
      ExplicitLeft = 235
    end
    inherited btBorrar: TBitBtn
      Left = 250
      Width = 31
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 250
      ExplicitWidth = 31
    end
    inherited btSalir: TBitBtn
      Left = 281
      DoubleBuffered = True
      ExplicitLeft = 281
    end
    object ToolButton1: TToolButton
      Left = 356
      Top = 0
      Width = 17
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 373
      Top = 0
      Width = 75
      Height = 29
      Action = Imprimir
      Caption = '&Imprimir'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303030303FFFFFF03030303
        030303030303FFFFFF0303030000000303030303030303030300000003030303
        F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
        00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
        070707070707070707070707000303F8FF030303030303030303030303030303
        F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
        0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
        FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
        F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
        03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
        FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
        03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
        F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
        0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
        FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
        0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
        F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 707
    Width = 1617
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 707
    ExplicitWidth = 1617
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 1528
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1528
    end
  end
  inherited ActionList1: TActionList
    Left = 504
    Top = 192
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object AjustarTC: TAction
      Caption = 'Anular TC'
      OnExecute = AjustarTCExecute
    end
    object MarcaNoAcreditada: TAction
      Caption = 'Marca No Acreditada'
      OnExecute = MarcaNoAcreditadaExecute
    end
    object VerComprobante: TAction
      Caption = 'Ver Comprobante'
      OnExecute = VerComprobanteExecute
    end
    object ReemplazarTC: TAction
      Caption = 'Reemplazar TC por Efectivo'
      OnExecute = ReemplazarTCExecute
    end
    object BorrarMov: TAction
      Caption = 'Borrar Movimiento'
      OnExecute = BorrarMovExecute
    end
    object LimpiarFiltros: TAction
      Caption = 'Limpiar Filtros'
      OnExecute = LimpiarFiltrosExecute
    end
    object LeerNubceo: TAction
      Caption = 'Leer Archivo Nubceo'
      OnExecute = LeerNubceoExecute
    end
    object GenerarGuardarLiquidacion: TAction
      Caption = 'Guardar Liquidaci'#243'n'
      OnExecute = GenerarGuardarLiquidacionExecute
    end
    object BuscarLiquidaciones: TAction
      Caption = 'Buscar Liquidaciones'
      OnExecute = BuscarLiquidacionesExecute
    end
    object GenerarRecibos: TAction
      Caption = 'Generar Recibos'
      OnExecute = GenerarRecibosExecute
    end
    object ReHacerIni: TAction
      Caption = 'Re Hacer Ini Grid'
      OnExecute = ReHacerIniExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSMovTc
    Left = 784
    Top = 56
  end
  inherited ImageList1: TImageList
    Left = 112
    Top = 208
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
    Left = 824
    Top = 56
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 24
    Top = 224
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 776
    Top = 184
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 1016
    Top = 296
  end
  inherited QBrowse2: TFDQuery
    Left = 96
    Top = 320
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 72
    Top = 376
  end
  object DSMovTc: TDataSource
    DataSet = CDSMovTc
    OnStateChange = DSMovTcStateChange
    Left = 504
    Top = 440
  end
  object CDSMovTc: TClientDataSet
    Active = True
    Aggregates = <>
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'ID_MOV_TC'
        DataType = ftInteger
      end
      item
        Name = 'ACREDITADA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CAN_CUOTAS'
        DataType = ftInteger
      end
      item
        Name = 'COEFICIENTE'
        DataType = ftFloat
      end
      item
        Name = 'COTIZACION'
        DataType = ftFloat
      end
      item
        Name = 'FECHA'
        DataType = ftDate
      end
      item
        Name = 'FECHA_ACREDITACION'
        DataType = ftDate
      end
      item
        Name = 'ID_CAJA'
        DataType = ftInteger
      end
      item
        Name = 'ID_MOV_CAJA'
        DataType = ftInteger
      end
      item
        Name = 'ID_CUENTA_BANCO'
        DataType = ftInteger
      end
      item
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
      end
      item
        Name = 'ID_TC'
        DataType = ftInteger
      end
      item
        Name = 'IMPORTE'
        DataType = ftFloat
      end
      item
        Name = 'IMPORTE_NETO'
        DataType = ftFloat
      end
      item
        Name = 'IMPORTE_RECARGO'
        DataType = ftFloat
      end
      item
        Name = 'N_DOCU'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NRO_CUPON'
        DataType = ftInteger
      end
      item
        Name = 'TITULAR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VALORCUOTA'
        DataType = ftFloat
      end
      item
        Name = 'TIPOP_COMPROB'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASE_COMPROB'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
      end
      item
        Name = 'NRO_COMPROBANTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
      end
      item
        Name = 'TARJETACREDITO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FECHAACREDITACION_PROBABLE'
        DataType = ftDate
      end
      item
        Name = 'NRO_LOTE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NRO_TERMINAL'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DIAS_PARA_ACR'
        DataType = ftInteger
      end
      item
        Name = 'TIPOOPERACION'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SALDO_ACREDITADO'
        DataType = ftFloat
      end
      item
        Name = 'NOMBRESUC'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 35
      end
      item
        Name = 'MESACREDITADO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'MESPOSIBLEACREDI'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'MESPRESENTACION'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'MESACREDITA_FECHA'
        DataType = ftDateTime
      end
      item
        Name = 'MESPOSIBLEACR_FECHA'
        DataType = ftDateTime
      end
      item
        Name = 'MESPRESENTACION_FECHA'
        DataType = ftDateTime
      end
      item
        Name = 'MUESTRAACREDITACION'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'MUESTRASEMANAACREDI'
        DataType = ftInteger
      end
      item
        Name = 'MUESTRASEMANAPOSIBLE'
        DataType = ftInteger
      end
      item
        Name = 'MUESTRASEMANAPRESEN'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'FECHA'
        Fields = 'FECHA'
        Options = [ixDescending]
      end
      item
        Name = 'FECHA_ACREDITACION'
        Fields = 'FECHA_ACREDITACION'
        Options = [ixDescending]
      end
      item
        Name = 'TARJETACREDITO'
        Fields = 'TARJETACREDITO'
      end
      item
        Name = 'NRO_CUPON'
        Fields = 'NRO_CUPON'
      end
      item
        Name = 'IMPORTE'
        Fields = 'IMPORTE'
        Options = [ixDescending]
      end
      item
        Name = 'FECHAACREDITACION_PROBABLE'
        Fields = 'FECHAACREDITACION_PROBABLE'
        Options = [ixDescending]
      end>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_tarjeta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'acred'
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
      end
      item
        DataType = ftString
        Name = 'vta_acred'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lote'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'terminal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovTc'
    StoreDefs = True
    OnCalcFields = CDSMovTcCalcFields
    Left = 440
    Top = 440
    object CDSMovTcID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      Origin = 'ID_MOV_TC'
    end
    object CDSMovTcACREDITADA: TStringField
      DisplayLabel = 'Fue Acredi.?'
      FieldName = 'ACREDITADA'
      Origin = 'ACREDITADA'
      FixedChar = True
      Size = 1
    end
    object CDSMovTcCAN_CUOTAS: TIntegerField
      DisplayLabel = 'Can.Cuotas'
      FieldName = 'CAN_CUOTAS'
      Origin = 'CAN_CUOTAS'
    end
    object CDSMovTcID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
    end
    object CDSMovTcID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
    end
    object CDSMovTcID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object CDSMovTcID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object CDSMovTcN_DOCU: TStringField
      DisplayLabel = 'Nro.Documento'
      FieldName = 'N_DOCU'
      Origin = 'N_DOCU'
      Size = 15
    end
    object CDSMovTcNRO_CUPON: TIntegerField
      DisplayLabel = 'Nro.Cupon'
      FieldName = 'NRO_CUPON'
      Origin = 'NRO_CUPON'
    end
    object CDSMovTcTITULAR: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      Size = 30
    end
    object CDSMovTcTIPOP_COMPROB: TStringField
      DisplayLabel = 'T.Cpbte'
      FieldName = 'TIPOP_COMPROB'
      Origin = 'TIPOP_COMPROB'
      Size = 2
    end
    object CDSMovTcCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl.Cpbte'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovTcID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
    object CDSMovTcNRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Compr.'
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Size = 13
    end
    object CDSMovTcSUCURSAL: TIntegerField
      DisplayLabel = 'Cod.Sucursal'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSMovTcTARJETACREDITO: TStringField
      DisplayLabel = 'Tarjeta'
      FieldName = 'TARJETACREDITO'
      Origin = 'TARJETACREDITO'
      Size = 15
    end
    object CDSMovTcNRO_TERMINAL: TStringField
      DisplayLabel = 'Terminal'
      FieldName = 'NRO_TERMINAL'
      Origin = 'NRO_TERMINAL'
      Size = 8
    end
    object CDSMovTcNRO_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
      Size = 5
    end
    object CDSMovTcNOMBRESUC: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'NOMBRESUC'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSMovTcMESACREDITADO: TStringField
      DisplayLabel = 'Mes de Acreditacion'
      FieldKind = fkInternalCalc
      FieldName = 'MESACREDITADO'
      Size = 15
    end
    object CDSMovTcMESPOSIBLEACREDI: TStringField
      DisplayLabel = 'Mes.Posible Acre.'
      FieldKind = fkInternalCalc
      FieldName = 'MESPOSIBLEACREDI'
      Size = 15
    end
    object CDSMovTcMESPRESENTACION: TStringField
      DisplayLabel = 'Mes de Pres.'
      FieldKind = fkInternalCalc
      FieldName = 'MESPRESENTACION'
      Size = 15
    end
    object CDSMovTcDIAS_PARA_ACR: TIntegerField
      DisplayLabel = 'Dias x Acr.'
      FieldName = 'DIAS_PARA_ACR'
      Origin = 'DIAS_PARA_ACR'
    end
    object CDSMovTcMESACREDITA_FECHA: TDateTimeField
      DisplayLabel = 'Mes .Acredt.'
      FieldKind = fkInternalCalc
      FieldName = 'MESACREDITA_FECHA'
      DisplayFormat = 'yyyy-mmm'
    end
    object CDSMovTcMESPOSIBLEACR_FECHA: TDateTimeField
      DisplayLabel = 'Mes Posi.Acrd.'
      FieldKind = fkInternalCalc
      FieldName = 'MESPOSIBLEACR_FECHA'
      DisplayFormat = 'yyyy-mmm'
    end
    object CDSMovTcMESPRESENTACION_FECHA: TDateTimeField
      DisplayLabel = 'Mes Presentaci'#243'n'
      FieldKind = fkInternalCalc
      FieldName = 'MESPRESENTACION_FECHA'
      DisplayFormat = 'yyyy-mmm'
    end
    object CDSMovTcMUESTRAACREDITACION: TStringField
      DisplayLabel = 'Estado Acr.'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAACREDITACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSMovTcTIPOOPERACION: TStringField
      FieldName = 'TIPOOPERACION'
      Origin = 'TIPOOPERACION'
    end
    object CDSMovTcCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
    end
    object CDSMovTcID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
    end
    object CDSMovTcCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object CDSMovTcIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovTcIMPORTE_NETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'IMPORTE_NETO'
      Origin = 'IMPORTE_NETO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovTcIMPORTE_RECARGO: TFloatField
      DisplayLabel = 'Recar.'
      FieldName = 'IMPORTE_RECARGO'
      Origin = 'IMPORTE_RECARGO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovTcVALORCUOTA: TFloatField
      DisplayLabel = 'Vr.Cuota'
      FieldName = 'VALORCUOTA'
      Origin = 'VALORCUOTA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovTcMUESTRASEMANAACREDI: TIntegerField
      DisplayLabel = 'Semana Acredit.'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRASEMANAACREDI'
    end
    object CDSMovTcMUESTRASEMANAPOSIBLE: TIntegerField
      DisplayLabel = 'Semana Pos.Acred.'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRASEMANAPOSIBLE'
    end
    object CDSMovTcMUESTRASEMANAPRESEN: TIntegerField
      DisplayLabel = 'Semana Presn'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRASEMANAPRESEN'
    end
    object CDSMovTcSALDO_ACREDITADO: TFloatField
      DisplayLabel = 'Impor.Acreditado'
      FieldName = 'SALDO_ACREDITADO'
      Origin = 'SALDO_ACREDITADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovTcFECHA: TDateField
      DisplayLabel = 'Fecha Vta'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovTcFECHA_ACREDITACION: TDateField
      DisplayLabel = 'Fecha Acreditacion'
      FieldName = 'FECHA_ACREDITACION'
      Origin = 'FECHA_ACREDITACION'
    end
    object CDSMovTcFECHAACREDITACION_PROBABLE: TDateField
      DisplayLabel = 'F.Acred.Prob.'
      FieldName = 'FECHAACREDITACION_PROBABLE'
      Origin = 'FECHAACREDITACION_PROBABLE'
    end
  end
  object DSPMovTc: TDataSetProvider
    DataSet = QMovTc
    Options = []
    Left = 376
    Top = 440
  end
  object frDBMov: TfrxDBDataset
    UserName = 'frDBMov'
    CloseDataSource = False
    DataSource = DSMovTc
    BCDToCurrency = False
    DataSetOptions = []
    Left = 472
    Top = 368
  end
  object frListaMov: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.833907870360000000
    ReportOptions.LastChange = 39638.833907870360000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 400
    Top = 363
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_2.QEmpresa
    Left = 936
    Top = 648
  end
  object DSTCredito: TDataSource
    DataSet = QTCredito
    Left = 280
    Top = 208
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 240
    Top = 288
  end
  object DSLote: TDataSource
    DataSet = QLote
    Left = 616
    Top = 336
  end
  object DSTerminales: TDataSource
    DataSet = QTerminal
    Left = 672
    Top = 224
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 1016
    Top = 656
    object CDSEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 30
    end
    object CDSEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Size = 30
    end
    object CDSEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object CDSEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 30
    end
    object CDSEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Size = 30
    end
    object CDSEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 10
    end
    object CDSEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 10
    end
    object CDSEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Size = 15
    end
    object CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object CDSEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object CDSEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object CDSEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField
      FieldName = 'TASA_PERCEPCION_IB'
      Precision = 15
      Size = 3
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField
      FieldName = 'MINO_IMP_PERCEP_IB'
      Precision = 15
      Size = 3
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 696
    Top = 368
    object MarcaNoAcreditada1: TMenuItem
      Action = MarcaNoAcreditada
    end
    object AnularTC1: TMenuItem
      Action = AjustarTC
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ReemplazarTC1: TMenuItem
      Action = ReemplazarTC
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object BorrarMovimiento1: TMenuItem
      Action = BorrarMov
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 444
    Top = 325
    object CamposxColumnas1: TMenuItem
      Caption = 'Campos x Columnas'
      OnClick = CamposxColumnas1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ExportarExcel1: TMenuItem
      Caption = 'Exportar Excel'
      OnClick = ExportarExcel1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object LimpiarFiltros2: TMenuItem
      Action = LimpiarFiltros
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object ReHacerIniGrid1: TMenuItem
      Action = ReHacerIni
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 784
    Top = 384
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Vista Previa'
    PrintTitle = 'Informe'
    Version = 0
    Left = 788
    Top = 315
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45987.497245509260000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 952
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object QCambiaFecha: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update mov_tcredito m set m.fecha_acreditacion=:fecha where m.id' +
        '_mov_tc=:id')
    Left = 400
    Top = 496
    ParamData = <
      item
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QTerminal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.terminal from mov_tcredito m'
      'where ( m.acreditada= :Acreditada or :Acreditada = '#39'*'#39' ) and'
      '      ( m.id_tc = :id or :id = -1 ) and'
      '      Not(m.terminal is null)'
      'group by m.terminal')
    Left = 596
    Top = 224
    ParamData = <
      item
        Name = 'ACREDITADA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTerminalTERMINAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TERMINAL'
      Origin = 'TERMINAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object QLote: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.lote from mov_tcredito m'
      'where ( m.acreditada= :Acreditada or :Acreditada = '#39'*'#39' )  and'
      '      ( m.id_tc = :id or :id = -1 ) and'
      '       Not(m.lote is null)'
      'group by m.lote')
    Left = 588
    Top = 320
    ParamData = <
      item
        Name = 'ACREDITADA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLoteLOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE'
      Origin = 'LOTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
  end
  object QTCredito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from t_credito')
    Left = 164
    Top = 190
    object QTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTCreditoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QTCreditoCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QTCreditoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object QTCreditoDIAS_ACREDITACION: TSmallintField
      FieldName = 'DIAS_ACREDITACION'
      Origin = 'DIAS_ACREDITACION'
      Required = True
    end
    object QTCreditoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QTCreditoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal')
    Left = 164
    Top = 328
    object QSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object QSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
    end
    object QSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object QSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 15
    end
    object QSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 15
    end
    object QSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Origin = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalGENERA_XML_COMUN: TStringField
      FieldName = 'GENERA_XML_COMUN'
      Origin = 'GENERA_XML_COMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalHOST: TStringField
      FieldName = 'HOST'
      Origin = 'HOST'
      Size = 250
    end
    object QSucursalCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Origin = 'CERTIFICADO_ELEC'
      Size = 100
    end
    object QSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QSucursalRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QMovTc: TFDQuery
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
        SourceDataType = dtDate
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      
        'select l.*,s.detalle as NombreSuc from LISTADO_CUPON_TC_SUCURSAL' +
        ' (:id_tarjeta,:acred,:desde,:hasta,:vta_acred,:lote,:terminal) l'
      '   left join sucursal s on s.codigo=l.sucursal'
      ' where ( l.sucursal = :sucursal or :sucursal = -1  )')
    Left = 312
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = 'id_tarjeta'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'acred'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'vta_acred'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'lote'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'terminal'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBorrarMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from mov_tcredito m where m.id_mov_tc = :id')
    Left = 312
    Top = 496
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object spReemplazaTC_efec: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REMPLAZA_TC_POR_EFECTIVO'
    Left = 680
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'ID_MOV_TARJETA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spMarcarTC: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ESTADO_MOV_TC'
    Left = 784
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object QBuscaIdCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id_mov_caja,m.id_mov_tc,c.id_comprobante,c.tipo_comprob' +
        ' from mov_tcredito m'
      'left join caja_mov c on c.id_mov_caja=m.id_mov_caja'
      'where m.id_mov_tc=:id_mov_tc')
    Left = 656
    Top = 441
    ParamData = <
      item
        Name = 'ID_MOV_TC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBuscaIdCpbteID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object QBuscaIdCpbteID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      Origin = 'ID_MOV_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaIdCpbteID_COMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscaIdCpbteTIPO_COMPROB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://fideliusmp.com.ar/SERVER/API/v2.1/?user=corvinas&pass=LO' +
      'lo05570$&action=cupones&desde=2023-03-02&hasta=2023-03-02&estado' +
      '=true'
    Params = <>
    SynchronizedEvents = False
    Left = 880
    Top = 176
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 984
    Top = 176
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    RootElement = 'data'
    Left = 1040
    Top = 208
  end
  object mtDatos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 776
    Top = 232
  end
  object DSDatos: TDataSource
    DataSet = mtDatos
    Left = 836
    Top = 241
  end
  object PopupMenu3: TPopupMenu
    Left = 972
    Top = 393
    object LimpiarFiltros1: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltros1Click
    end
  end
  object AdvGridExcelIO: TAdvGridExcelIO
    AdvStringGrid = sgNubceo
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    DateFormat = 'dd/mm/yyyy'
    Version = '3.14'
    OnDateTimeFormat = AdvGridExcelIODateTimeFormat
    Left = 796
    Top = 465
  end
  object OpenDialog1: TOpenDialog
    Left = 876
    Top = 377
  end
  object QComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.detalle, c.id_comprobante,c.denominacion,c.letra,c.pref' +
        'ijo,c.numero,c.clase_comprob,c.sucursal from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'where c.tipo_comprob='#39'RC'#39' '
      'and c.compra_venta='#39'V'#39' '
      'order by s.detalle, c.denominacion desc'
      '')
    Left = 40
    Top = 440
    object QCompDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 18
    end
    object QCompID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QCompLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QCompPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QCompNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QCompCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QCompSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
  end
  object DSComprob: TDataSource
    AutoEdit = False
    DataSet = QComp
    Left = 104
    Top = 444
  end
  object QCajas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_caja,c.numerocaja, c.fecha_incio,c.fecha_cierre,c.id' +
        '_cuenta_caja,cc.nombre from caja_cab c'
      'left join cuenta_caja cc on cc.id_cuenta=c.id_cuenta_caja'
      'where c.estado=0 and cc.id_tipo_cta=1 '
      'order By c.id_caja desc')
    Left = 40
    Top = 496
    object QCajasID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajasNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCajasFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object QCajasFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object QCajasID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCajasNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object DSCajas: TDataSource
    DataSet = QCajas
    Left = 96
    Top = 499
  end
  object QModosDeCobro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select 5 as id_tpago,f.id_fpago,f.descripcion as FormaPago, cc.i' +
        'd_cuenta as codigo ,cc.nombre as descripcion,cc.nro_cuenta from ' +
        'cuenta_caja cc'
      'left join formapago f on f.id_tpago=5'
      'where cc.id_tipo_cta=2')
    Left = 43
    Top = 550
    object QModosDeCobroID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object QModosDeCobroID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
    end
    object QModosDeCobroFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Origin = 'FORMAPAGO'
    end
    object QModosDeCobroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object QModosDeCobroDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 25
    end
    object QModosDeCobroNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
  end
  object DSModosDeCobro: TDataSource
    DataSet = QModosDeCobro
    Left = 144
    Top = 553
  end
  object QBuscaCodigoCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select n.codigo,n.id_cta_caja_banco from nubceo_relacion n where' +
        ' n.ref_comercio=:nro_referencia')
    Left = 308
    Top = 554
    ParamData = <
      item
        Name = 'NRO_REFERENCIA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
  object spGenerarRecibo: TFDStoredProc
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
    StoredProcName = 'GENERAR_RECIBO_EXPRESS'
    Left = 924
    Top = 522
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'IMPORTE'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 6
        Name = 'NUMERO_RC'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 7
        Name = 'ID_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'IDTC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TIPO_PAGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'FORM_PAGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 12
        Name = 'ID_RECIBO'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object QUltimoNro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max( r.numerorc)  from recibos r where'
      'r.clasecpbte=:clase and r.sucrc=:suc and '
      'r.sucursal = :sucursal')
    Left = 424
    Top = 560
    ParamData = <
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QUltimoNroMAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object QCargarLote: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'insert into  recibos_lote (id,id_recibo,Lote) values (-1,:id_rec' +
        'ibo,:Lote)')
    Left = 540
    Top = 562
    ParamData = <
      item
        Name = 'ID_RECIBO'
        ParamType = ptInput
      end
      item
        Name = 'LOTE'
        ParamType = ptInput
      end>
  end
  object spIngresaLiquidacioNubceo: TFDStoredProc
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
    StoredProcName = 'ING_RECP_LIQUIDACION_TARJETA'
    Left = 924
    Top = 466
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end
      item
        Position = 2
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 3
        Name = 'TARJETA'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 4
        Name = 'REFERENCIA'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 5
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'TOTAL_BRUTO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'TOTAL_IMPUESTOS'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'TOTAL_DEDUCCIONES'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TOTAL_NETO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'BANCO_PAGADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 11
        Name = 'PERIODO'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 12
        Name = 'ESTADO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 13
        Name = 'IDENTIFICADOR_EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 18
      end
      item
        Position = 14
        Name = 'SUCURSAL_COMERCIO'
        DataType = ftString
        ParamType = ptInput
        Size = 18
      end
      item
        Position = 15
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end>
  end
  object QLiquidaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.* from RECEPCION_LIQUIDACION_TARJETA l where l.fecha be' +
        'tween :desde and :hasta')
    Left = 672
    Top = 585
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
    object QLiquidacionesID: TStringField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object QLiquidacionesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QLiquidacionesTARJETA: TStringField
      FieldName = 'TARJETA'
      Origin = 'TARJETA'
      Size = 25
    end
    object QLiquidacionesREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 15
    end
    object QLiquidacionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QLiquidacionesSUCURSAL_COMERCIO: TStringField
      FieldName = 'SUCURSAL_COMERCIO'
      Origin = 'SUCURSAL_COMERCIO'
      Required = True
      Size = 18
    end
    object QLiquidacionesTOTAL_BRUTO: TFloatField
      FieldName = 'TOTAL_BRUTO'
      Origin = 'TOTAL_BRUTO'
      Required = True
      DisplayFormat = '0.00'
    end
    object QLiquidacionesTOTAL_IMPUESTOS: TFloatField
      FieldName = 'TOTAL_IMPUESTOS'
      Origin = 'TOTAL_IMPUESTOS'
      Required = True
      DisplayFormat = '0.00'
    end
    object QLiquidacionesTOTAL_DEDUCCIONES: TFloatField
      FieldName = 'TOTAL_DEDUCCIONES'
      Origin = 'TOTAL_DEDUCCIONES'
      Required = True
      DisplayFormat = '0.00'
    end
    object QLiquidacionesTOTAL_NETO: TFloatField
      FieldName = 'TOTAL_NETO'
      Origin = 'TOTAL_NETO'
      Required = True
      DisplayFormat = '0.00'
    end
    object QLiquidacionesBANCO_PAGADOR: TStringField
      FieldName = 'BANCO_PAGADOR'
      Origin = 'BANCO_PAGADOR'
      Size = 100
    end
    object QLiquidacionesPERIODO: TStringField
      FieldName = 'PERIODO'
      Origin = 'PERIODO'
      Size = 25
    end
    object QLiquidacionesESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QLiquidacionesIDENTIFICADOR_EMPRESA: TStringField
      FieldName = 'IDENTIFICADOR_EMPRESA'
      Origin = 'IDENTIFICADOR_EMPRESA'
      Size = 18
    end
    object QLiquidacionesID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
      Origin = 'ID_RECIBO'
      Required = True
    end
    object QLiquidacionesLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
      Size = 12
    end
  end
  object DSLiquidaciones: TDataSource
    DataSet = QLiquidaciones
    Left = 832
    Top = 584
  end
end

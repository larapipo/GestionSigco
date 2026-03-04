inherited FormListadoPedidosPrevision: TFormListadoPedidosPrevision
  Caption = 'Pedidos Prevision'
  ClientHeight = 628
  ClientWidth = 1154
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1172
  ExplicitHeight = 669
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1154
    Height = 575
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1154
    ExplicitHeight = 575
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 1154
      Height = 575
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Detalle de Entregas'
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 35
          Width = 1146
          Height = 512
          Align = alClient
          DataSource = DSPedidosPrevision
          Groups = <>
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Whiteprint'
          OptionsView.ColumnGrandTotalText = 'Saldo'
          OptionsView.ColumnGrandTotalWidth = 80
          OptionsView.FilterSeparator = False
          OptionsView.RowGrandTotals = False
          OptionsView.RowGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalWidth = 90
          OptionsView.RowTotals = False
          PopupMenu = PopupMenu1
          Styles.ColumnHeader = cxStyle1
          Styles.ColumnMaximumValue = cxStyle2
          Styles.FieldHeader = cxStyle1
          Styles.Total = cxStyle1
          TabOrder = 0
          object cxDBPivotGrid1CLIENTE: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CLIENTE'
            Visible = True
            UniqueName = 'CLIENTE'
          end
          object cxDBPivotGrid1NOMBRE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'NOMBRE'
            Styles.ColumnHeader = cxStyle1
            Styles.Content = cxStyle1
            Visible = True
            Width = 180
            UniqueName = 'NOMBRE'
          end
          object cxDBPivotGrid1CODIGO: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'CODIGO'
            Visible = True
            UniqueName = 'CODIGO'
          end
          object cxDBPivotGrid1DETALLE_STK: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'DETALLE_STK'
            Styles.ColumnHeader = cxStyle1
            Visible = True
            Width = 220
            UniqueName = 'DETALLE_STK'
          end
          object cxDBPivotGrid1CANTIDAD_UNID_PED: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'CANTIDAD_UNID_PED'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            Width = 90
            UniqueName = 'CANTIDAD_UNID_PED'
          end
          object cxDBPivotGrid1CANTIDAD_UNID_ENTR: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'CANTIDAD_UNID_ENTR'
            Visible = True
            UniqueName = 'CANTIDAD_UNID_ENTR'
          end
          object cxDBPivotGrid1CANTIDAD_ENTREGADA: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'CANTIDAD_ENTREGADA'
            Visible = True
            Width = 80
            UniqueName = 'CANTIDAD_ENTREGADA'
          end
          object cxDBPivotGrid1FECHA: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'FECHA'
            Visible = True
            UniqueName = 'FECHA'
          end
          object cxDBPivotGrid1FECHA_ENTREGA: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'FECHA_ENTREGA'
            Visible = True
            Width = 105
            UniqueName = 'FECHA_ENTREGA'
          end
          object cxDBPivotGrid1SUBRUBRO: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'SUBRUBRO'
            Styles.ColumnHeader = cxStyle1
            Visible = True
            Width = 140
            UniqueName = 'SubRubro'
          end
          object cxDBPivotGrid1MESNOMBRE: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'MESNOMBRE'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid1DIASTR: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'DIASTR'
            SortOrder = soAscending
            Visible = True
            Width = 80
            UniqueName = 'Dia'
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1146
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1146
            35)
          object Label2: TLabel
            Left = 22
            Top = 2
            Width = 199
            Height = 29
            Caption = 'Prevision Activas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 1041
            Top = 12
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Anchors = [akRight, akBottom]
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Filtros1Click
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Prevision x Cliente'
        ImageIndex = 2
        object cxDBPivotGrid2: TcxDBPivotGrid
          Left = 0
          Top = 35
          Width = 1146
          Height = 512
          Align = alClient
          DataSource = DSPedidosPrevisionUnitario
          Groups = <>
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Black'
          OptionsView.ColumnGrandTotalText = 'Saldo'
          OptionsView.ColumnGrandTotalWidth = 80
          OptionsView.FilterFields = False
          OptionsView.FilterSeparator = False
          OptionsView.RowGrandTotals = False
          OptionsView.RowGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalWidth = 90
          OptionsView.RowTotals = False
          PopupMenu = PopupMenu1
          Styles.ColumnHeader = cxStyle1
          Styles.ColumnMaximumValue = cxStyle2
          Styles.FieldHeader = cxStyle1
          Styles.Total = cxStyle1
          TabOrder = 0
          object cxDBPivotGridCLIENTE: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CLIENTE'
            Visible = True
            UniqueName = 'CLIENTE'
          end
          object cxDBPivotGridNOMBRE: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'NOMBRE'
            Styles.ColumnHeader = cxStyle1
            Styles.Content = cxStyle1
            Visible = True
            Width = 180
            UniqueName = 'NOMBRE'
          end
          object cxDBPivotGridCODIGO: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'CODIGO'
            Visible = True
            UniqueName = 'CODIGO'
          end
          object cxDBPivotGridDETALLE_STK: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_STK'
            Styles.ColumnHeader = cxStyle1
            Visible = True
            Width = 220
            UniqueName = 'DETALLE_STK'
          end
          object cxDBPivotGridCANTIDAD_UNID_PED: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'CANTIDAD_UNID_PED'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            Width = 90
            UniqueName = 'CANTIDAD_UNID_PED'
          end
          object cxDBPivotGridCANTIDAD_UNID_ENTR: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'CANTIDAD_UNID_ENTR'
            Visible = True
            UniqueName = 'CANTIDAD_UNID_ENTR'
          end
          object cxDBPivotGridCANTIDAD_ENTREGADA: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'CANTIDAD_ENTREGADA'
            DisplayFormat = ',0.00;-,0.00;-'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            Width = 80
            UniqueName = 'CANTIDAD_ENTREGADA'
          end
          object cxDBPivotGridFECHA: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'FECHA'
            Visible = True
            UniqueName = 'FECHA'
          end
          object cxDBPivotGridFECHA_ENTREGA: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'FECHA_ENTREGA'
            Visible = True
            Width = 105
            UniqueName = 'FECHA_ENTREGA'
          end
          object cxDBPivotGridSUBRUBRO: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'SUBRUBRO'
            Styles.ColumnHeader = cxStyle1
            Visible = True
            Width = 140
            UniqueName = 'SubRubro'
          end
          object cxDBPivotGridDIASSTR: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'DIASSTR'
            SortOrder = soDescending
            Visible = True
            Width = 80
            UniqueName = 'Dia'
          end
        end
        object pnCabecera: TPanel
          Left = 0
          Top = 0
          Width = 1146
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          object Label1: TLabel
            Left = 22
            Top = 2
            Width = 219
            Height = 29
            Caption = 'Prevision x Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 288
            Top = 6
            Width = 441
            Height = 23
            DataField = 'NOMBRE'
            DataSource = DSPedidosPrevisionUnitario
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbPrevision: TLabel
            Left = 814
            Top = 0
            Width = 19
            Height = 29
            Caption = '--'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Entregas'
        ImageIndex = 1
        object spgPedidos: TAdvSpreadGrid
          Left = 0
          Top = 0
          Width = 1146
          Height = 506
          Align = alClient
          ColCount = 5
          DrawingStyle = gdsClassic
          FixedCols = 0
          RowCount = 10
          FixedRows = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
          ParentFont = False
          TabOrder = 0
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = clCream
          ControlLook.FixedGradientHoverFrom = clGray
          ControlLook.FixedGradientHoverTo = clWhite
          ControlLook.FixedGradientDownFrom = clGray
          ControlLook.FixedGradientDownTo = clSilver
          ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownHeader.Font.Color = clWindowText
          ControlLook.DropDownHeader.Font.Height = -11
          ControlLook.DropDownHeader.Font.Name = 'Tahoma'
          ControlLook.DropDownHeader.Font.Style = []
          ControlLook.DropDownHeader.Visible = True
          ControlLook.DropDownHeader.Buttons = <>
          ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownFooter.Font.Color = clWindowText
          ControlLook.DropDownFooter.Font.Height = -11
          ControlLook.DropDownFooter.Font.Name = 'Tahoma'
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
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'Tahoma'
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
          FixedColWidth = 292
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'Tahoma'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'Tahoma'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'Tahoma'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'Tahoma'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          SearchFooter.FindNextCaption = 'Find &next'
          SearchFooter.FindPrevCaption = 'Find &previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'Tahoma'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurrence'
          SearchFooter.HintFindPrev = 'Find previous occurrence'
          SearchFooter.HintHighlight = 'Highlight occurrences'
          SearchFooter.MatchCaseCaption = 'Match case'
          SearchFooter.ResultFormat = '(%d of %d)'
          SelectionTextColor = clWindowText
          Version = '2.3.3.0'
          ErrorText = 'Error'
          CellFormat = '%.2f'
          ColWidths = (
            292
            71
            72
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
        object Panel2: TPanel
          Left = 0
          Top = 506
          Width = 1146
          Height = 41
          Align = alBottom
          TabOrder = 1
          object Button1: TButton
            Left = 896
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Button1'
            TabOrder = 0
            OnClick = Button1Click
          end
          object CheckBox1: TCheckBox
            Left = 10
            Top = 6
            Width = 97
            Height = 17
            Caption = 'CheckBox1'
            TabOrder = 1
            OnClick = CheckBox1Click
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Pedidos Fijos'
        ImageIndex = 3
        object cxDBPivotGrid3: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1146
          Height = 547
          Align = alClient
          DataSource = DSFijos
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          OptionsView.ColumnGrandTotals = False
          OptionsView.ColumnTotals = False
          OptionsView.FilterFields = False
          OptionsView.RowGrandTotals = False
          OptionsView.RowTotals = False
          TabOrder = 0
          object cxDBPivotGrid3FECHA: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'FECHA'
            Visible = True
            UniqueName = 'FECHA'
          end
          object cxDBPivotGrid3CLIENTE: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'CLIENTE'
            Visible = True
            UniqueName = 'Cod.Clien'
          end
          object cxDBPivotGrid3MUESTRANOMBRE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'MUESTRANOMBRE'
            Visible = True
            Width = 250
            UniqueName = 'Cliente'
          end
          object cxDBPivotGrid3DIASEMANA: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'DIASEMANA'
            Visible = True
            UniqueName = 'Dia'
          end
          object cxDBPivotGrid3CODIGO: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'CODIGO'
            Visible = True
            UniqueName = 'CODIGO'
          end
          object cxDBPivotGrid3DETALLE_STK: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_STK'
            MinWidth = 50
            Visible = True
            Width = 300
            UniqueName = 'Descripcion Stk'
          end
          object cxDBPivotGrid3CANTIDAD_PEDIDA: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'CANTIDAD_PEDIDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00;-'
            Visible = True
            UniqueName = 'Can.Pedida'
          end
          object cxDBPivotGrid3CANTIDAD_UNID_PED: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'CANTIDAD_UNID_PED'
            Visible = True
            UniqueName = 'Uni.Pedidas'
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 575
    Width = 1154
    Align = alBottom
    ExplicitTop = 575
    ExplicitWidth = 1154
    inherited btConfirma: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btNuevo: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btCancelar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btModificar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 31
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 588
      Top = 0
      Width = 75
      Height = 29
      Caption = 'Imprimir'
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
      OnClick = BitBtn1Click
    end
  end
  inherited Panel1: TPanel
    Top = 605
    Width = 1154
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 605
    ExplicitWidth = 1154
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1065
      ExplicitWidth = 1065
    end
  end
  inherited ActionList1: TActionList
    Left = 536
    Top = 200
    object ActualizaFechaEntrega: TAction
      Caption = 'ActualizaFechaEntrega'
      OnExecute = ActualizaFechaEntregaExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 512
    Top = 65520
  end
  inherited ImageList1: TImageList
    Left = 400
    Top = 88
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
  end
  inherited ComBuscadorBase: TComBuscador
    Data = CDSBuscadorPrevision
    Campo = 'ID'
    Titulo = 'Previsiones'
  end
  object QPedidosPrevision: TFDQuery
    OnCalcFields = QPedidosPrevisionCalcFields
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.* from LISTA_PREVISION_ENTREGA( :CODCLIENTE)  l'
      '')
    Left = 248
    Top = 392
    ParamData = <
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QPedidosPrevisionIDCAB: TIntegerField
      FieldName = 'IDCAB'
      Origin = 'IDCAB'
    end
    object QPedidosPrevisionCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QPedidosPrevisionNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QPedidosPrevisionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object QPedidosPrevisionCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QPedidosPrevisionDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QPedidosPrevisionCANTIDAD_UNID_PED: TFloatField
      DisplayLabel = 'Uni.Pedidas'
      FieldName = 'CANTIDAD_UNID_PED'
      Origin = 'CANTIDAD_UNID_PED'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QPedidosPrevisionCANTIDAD_UNID_ENTR: TFloatField
      DisplayLabel = 'Uni.Entregada'
      FieldName = 'CANTIDAD_UNID_ENTR'
      Origin = 'CANTIDAD_UNID_ENTR'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QPedidosPrevisionCANTIDAD_ENTREGADA: TFloatField
      DisplayLabel = 'Cant.Entregada'
      FieldName = 'CANTIDAD_ENTREGADA'
      Origin = 'CANTIDAD_ENTREGADA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QPedidosPrevisionFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QPedidosPrevisionFECHA_ENTREGA: TSQLTimeStampField
      DisplayLabel = 'F.de Entrega'
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object QPedidosPrevisionID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object QPedidosPrevisionTIPO_FACTURA: TStringField
      FieldName = 'TIPO_FACTURA'
      Origin = 'TIPO_FACTURA'
      Size = 2
    end
    object QPedidosPrevisionSUBRUBRO: TStringField
      DisplayLabel = 'SubRubro'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 45
    end
    object QPedidosPrevisionTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 3
    end
    object QPedidosPrevisionMES: TIntegerField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
      OnGetText = QPedidosPrevisionMESGetText
    end
    object QPedidosPrevisionANIO: TIntegerField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object QPedidosPrevisionDIA: TIntegerField
      DisplayLabel = 'Dia'
      FieldName = 'DIA'
      Origin = 'DIA'
      OnGetText = QPedidosPrevisionDIAGetText
    end
    object QPedidosPrevisionSEMANA: TIntegerField
      DisplayLabel = 'Semana'
      FieldName = 'SEMANA'
      Origin = 'SEMANA'
    end
    object QPedidosPrevisionMESNOMBRE: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkInternalCalc
      FieldName = 'MESNOMBRE'
      Size = 15
    end
    object QPedidosPrevisionDIASTR: TStringField
      DisplayLabel = 'Dia'
      FieldKind = fkInternalCalc
      FieldName = 'DIASTR'
      Size = 6
    end
    object QPedidosPrevisionSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
  end
  object DSPedidosPrevision: TDataSource
    AutoEdit = False
    DataSet = QPedidosPrevision
    OnStateChange = DSBaseStateChange
    Left = 392
    Top = 400
  end
  object QClientesPrevision: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select  distinct l.cliente,l.nombre from LISTA_PREVISION_ENTREGA' +
        ' (:CODCLIENTE) l where l.tipo='#39'PRE'#39
      '')
    Left = 744
    Top = 208
    ParamData = <
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesPrevisionCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QClientesPrevisionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
  end
  object QPrevisionPorCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.* from LISTA_PREVISION_ENTREGA (:CODCLIENTE) l where l.' +
        'cliente= :cliente and l.tipo='#39'PRE'#39)
    Left = 752
    Top = 272
    ParamData = <
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QPrevisionPorClienteIDCAB: TIntegerField
      FieldName = 'IDCAB'
      Origin = 'IDCAB'
    end
    object QPrevisionPorClienteCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QPrevisionPorClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QPrevisionPorClienteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object QPrevisionPorClienteSUBRUBRO: TStringField
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 45
    end
    object QPrevisionPorClienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QPrevisionPorClienteDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QPrevisionPorClienteCANTIDAD_UNID_PED: TFloatField
      FieldName = 'CANTIDAD_UNID_PED'
      Origin = 'CANTIDAD_UNID_PED'
    end
    object QPrevisionPorClienteCANTIDAD_UNID_ENTR: TFloatField
      FieldName = 'CANTIDAD_UNID_ENTR'
      Origin = 'CANTIDAD_UNID_ENTR'
    end
    object QPrevisionPorClienteCANTIDAD_ENTREGADA: TFloatField
      FieldName = 'CANTIDAD_ENTREGADA'
      Origin = 'CANTIDAD_ENTREGADA'
    end
    object QPrevisionPorClienteFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QPrevisionPorClienteFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object QPrevisionPorClienteID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object QPrevisionPorClienteTIPO_FACTURA: TStringField
      FieldName = 'TIPO_FACTURA'
      Origin = 'TIPO_FACTURA'
      Size = 2
    end
    object QPrevisionPorClienteTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 3
    end
    object QPrevisionPorClienteMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object QPrevisionPorClienteANIO: TIntegerField
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object QPrevisionPorClienteDIA: TIntegerField
      FieldName = 'DIA'
      Origin = 'DIA'
    end
    object QPrevisionPorClienteSEMANA: TIntegerField
      FieldName = 'SEMANA'
      Origin = 'SEMANA'
    end
  end
  object QEntregasPorCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.* from LISTA_PREVISION_ENTREGA (:CODCLIENTE) l where l.' +
        'cliente= :cliente and l.tipo='#39'ENT'#39)
    Left = 760
    Top = 360
    ParamData = <
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object IntegerField4: TIntegerField
      FieldName = 'IDCAB'
      Origin = 'IDCAB'
    end
    object StringField6: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object StringField7: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object StringField8: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object StringField9: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object FloatField4: TFloatField
      FieldName = 'CANTIDAD_UNID_PED'
      Origin = 'CANTIDAD_UNID_PED'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object FloatField5: TFloatField
      FieldName = 'CANTIDAD_UNID_ENTR'
      Origin = 'CANTIDAD_UNID_ENTR'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object FloatField6: TFloatField
      FieldName = 'CANTIDAD_ENTREGADA'
      Origin = 'CANTIDAD_ENTREGADA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object StringField10: TStringField
      FieldName = 'TIPO_FACTURA'
      Origin = 'TIPO_FACTURA'
      Size = 2
    end
    object QEntregasPorClienteTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 3
    end
    object QEntregasPorClienteMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object QEntregasPorClienteANIO: TIntegerField
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object QEntregasPorClienteDIA: TIntegerField
      FieldName = 'DIA'
      Origin = 'DIA'
    end
    object QEntregasPorClienteSEMANA: TIntegerField
      FieldName = 'SEMANA'
      Origin = 'SEMANA'
    end
  end
  object QFechasDesdeHasta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select min(l.fecha_entrega),max(l.fecha_entrega) from LISTA_PREV' +
        'ISION_ENTREGA (:CODCLIENTE) l where  l.tipo='#39'ENT'#39)
    Left = 900
    Top = 216
    ParamData = <
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QPrevisionRenglones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select count(*) from LISTA_PREVISION_ENTREGA (:CODCLIENTE) l whe' +
        're l.tipo='#39'PRE'#39)
    Left = 904
    Top = 280
    ParamData = <
      item
        Name = 'CODCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QPrevisionRenglonesCOUNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = 'COUNT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 244
    Top = 208
    object Campos1: TMenuItem
      Caption = 'Campos'
      Checked = True
      OnClick = Campos1Click
    end
    object Filtros1: TMenuItem
      Caption = 'Filtros'
      OnClick = Filtros1Click
    end
    object CamposDatos1: TMenuItem
      Caption = 'Campos Datos'
      Checked = True
      OnClick = CamposDatos1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Top = 65528
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object QBuscadorPrevision: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.id,p.fecha,p.fecha_envio, p.cliente,c.nombre, p.estado_' +
        'prevision from plantilla_pedido_cab p'
      'left join clientes c on c.codigo=p.cliente'
      'where p.pedido_prevision='#39'S'#39)
    Left = 476
    Top = 344
  end
  object QPedidosPrevisionUnitario: TFDQuery
    OnCalcFields = QPedidosPrevisionUnitarioCalcFields
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.* from LISTA_PREVISION_X_ID( :id_pre)  l'
      '')
    Left = 240
    Top = 472
    ParamData = <
      item
        Name = 'ID_PRE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPedidosPrevisionUnitarioIDCAB: TIntegerField
      FieldName = 'IDCAB'
      Origin = 'IDCAB'
    end
    object QPedidosPrevisionUnitarioCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QPedidosPrevisionUnitarioNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QPedidosPrevisionUnitarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object QPedidosPrevisionUnitarioSUBRUBRO: TStringField
      DisplayLabel = 'SubRubro'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 45
    end
    object QPedidosPrevisionUnitarioCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QPedidosPrevisionUnitarioDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QPedidosPrevisionUnitarioCANTIDAD_UNID_PED: TFloatField
      DisplayLabel = 'Uni.Pedidas'
      FieldName = 'CANTIDAD_UNID_PED'
      Origin = 'CANTIDAD_UNID_PED'
    end
    object QPedidosPrevisionUnitarioCANTIDAD_UNID_ENTR: TFloatField
      DisplayLabel = 'Unid.Entregadas'
      FieldName = 'CANTIDAD_UNID_ENTR'
      Origin = 'CANTIDAD_UNID_ENTR'
    end
    object QPedidosPrevisionUnitarioCANTIDAD_ENTREGADA: TFloatField
      DisplayLabel = 'Cant.Entregada'
      FieldName = 'CANTIDAD_ENTREGADA'
      Origin = 'CANTIDAD_ENTREGADA'
    end
    object QPedidosPrevisionUnitarioFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QPedidosPrevisionUnitarioFECHA_ENTREGA: TSQLTimeStampField
      DisplayLabel = 'Fecha Entrega'
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object QPedidosPrevisionUnitarioID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object QPedidosPrevisionUnitarioTIPO_FACTURA: TStringField
      FieldName = 'TIPO_FACTURA'
      Origin = 'TIPO_FACTURA'
      Size = 2
    end
    object QPedidosPrevisionUnitarioTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 3
    end
    object QPedidosPrevisionUnitarioMES: TIntegerField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
    end
    object QPedidosPrevisionUnitarioANIO: TIntegerField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object QPedidosPrevisionUnitarioDIA: TIntegerField
      DisplayLabel = 'Dia'
      FieldName = 'DIA'
      Origin = 'DIA'
    end
    object QPedidosPrevisionUnitarioSEMANA: TIntegerField
      DisplayLabel = 'Semana'
      FieldName = 'SEMANA'
      Origin = 'SEMANA'
    end
    object QPedidosPrevisionUnitarioSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QPedidosPrevisionUnitarioMESNOMBRE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'MESNOMBRE'
      Size = 15
    end
    object QPedidosPrevisionUnitarioDIASSTR: TStringField
      DisplayLabel = 'Dia'
      FieldKind = fkInternalCalc
      FieldName = 'DIASSTR'
      Size = 6
    end
  end
  object DSPedidosPrevisionUnitario: TDataSource
    AutoEdit = False
    DataSet = QPedidosPrevisionUnitario
    OnStateChange = DSBaseStateChange
    Left = 392
    Top = 488
  end
  object CDSBuscadorPrevision: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscadorPrevision'
    Left = 628
    Top = 344
    object CDSBuscadorPrevisionCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSBuscadorPrevisionNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 40
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 35
    end
    object CDSBuscadorPrevisionFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 16
      FieldName = 'FECHA'
    end
    object CDSBuscadorPrevisionFECHA_ENVIO: TSQLTimeStampField
      DisplayLabel = 'F.Envio'
      DisplayWidth = 16
      FieldName = 'FECHA_ENVIO'
    end
    object CDSBuscadorPrevisionID: TIntegerField
      DisplayLabel = 'Nro'
      DisplayWidth = 5
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscadorPrevisionESTADO_PREVISION: TStringField
      FieldName = 'ESTADO_PREVISION'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DSPBuscadorPrevision: TDataSetProvider
    DataSet = QBuscadorPrevision
    Left = 564
    Top = 344
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link2
    Version = 0
    Left = 628
    Top = 448
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Detalle de Entregas')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45605.469330960640000000
      ShrinkToPageWidth = True
      OptionsExpanding.AutoExpandColumns = True
      OptionsFormatting.UseNativeStyles = True
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid2
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Detalle Por Cliente')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45605.469330995370000000
      OptionsExpanding.AutoExpandColumns = True
      OptionsFormatting.UseNativeStyles = True
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object spActualizaFecha: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'PASA_FECHA_ENTREGA_PEDIDO'
    Left = 892
    Top = 424
  end
  object QFijos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.id,c.fecha,c.cliente,cl.nombre as MuestraNombre,'
      '       c.facturado,c.pedido_prevision,c.id_factura,'
      
        '       c.tipo_factura,c.pedido_estable,case c.dia when 1 Then '#39'L' +
        'unes'#39
      
        '                                                  when 2 Then '#39'M' +
        'artes'#39
      
        '                                                  when 3 Then '#39'M' +
        'iercoles'#39
      
        '                                                  when 4 Then '#39'J' +
        'ueves'#39
      
        '                                                  when 5 Then '#39'V' +
        'iernes'#39
      
        '                                                  when 6 Then '#39'S' +
        'abado'#39
      
        '                                                  when 7 Then '#39'D' +
        'omingo'#39
      
        '                                                  else '#39'--'#39'  end' +
        ' as DiaSemana,'
      
        '       d.codigo,s.detalle_stk, d.cantidad_pedida,d.cantidad_unid' +
        '_ped from plantilla_pedido_cab c'
      'left join clientes cl on cl.codigo = c.cliente'
      'left join plantilla_pedido_det d on d.idcab=c.id'
      'left join stock s on s.codigo_stk=d.codigo'
      'where ( c.pedido_estable = '#39'S'#39') and d.cantidad_pedida>0'
      'order by c.fecha desc')
    Left = 772
    Top = 120
  end
  object DSFijos: TDataSource
    DataSet = CDSFijos
    Left = 956
    Top = 136
  end
  object CDSFijos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFijos'
    Left = 900
    Top = 120
    object CDSFijosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSFijosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSFijosCLIENTE: TStringField
      DisplayLabel = 'Cod.Clien'
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSFijosMUESTRANOMBRE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'MUESTRANOMBRE'
      ReadOnly = True
      Size = 35
    end
    object CDSFijosFACTURADO: TStringField
      FieldName = 'FACTURADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFijosPEDIDO_PREVISION: TStringField
      FieldName = 'PEDIDO_PREVISION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFijosID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
    end
    object CDSFijosTIPO_FACTURA: TStringField
      FieldName = 'TIPO_FACTURA'
      Size = 2
    end
    object CDSFijosPEDIDO_ESTABLE: TStringField
      FieldName = 'PEDIDO_ESTABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFijosDIASEMANA: TStringField
      DisplayLabel = 'Dia'
      FieldName = 'DIASEMANA'
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object CDSFijosCODIGO: TStringField
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 8
    end
    object CDSFijosDETALLE_STK: TStringField
      DisplayLabel = 'Descripcion Stk'
      FieldName = 'DETALLE_STK'
      ReadOnly = True
      Size = 45
    end
    object CDSFijosCANTIDAD_PEDIDA: TFloatField
      DisplayLabel = 'Can.Pedida'
      FieldName = 'CANTIDAD_PEDIDA'
      ReadOnly = True
    end
    object CDSFijosCANTIDAD_UNID_PED: TFloatField
      DisplayLabel = 'Uni.Pedidas'
      FieldName = 'CANTIDAD_UNID_PED'
      ReadOnly = True
    end
  end
  object DSPFijos: TDataSetProvider
    DataSet = QFijos
    Left = 828
    Top = 128
  end
end

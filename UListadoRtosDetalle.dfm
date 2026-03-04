inherited FormListadoRtosDetalle: TFormListadoRtosDetalle
  Caption = 'Listado de Rtos Con Detalle'
  ClientHeight = 733
  ClientWidth = 1056
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1074
  ExplicitHeight = 774
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1056
    Height = 680
    Align = alClient
    Color = clMenuHighlight
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 946
    ExplicitHeight = 628
    object Label1: TLabel
      Left = 7
      Top = 7
      Width = 87
      Height = 13
      Caption = 'Sucursal de Venta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel1: TJvLabel
      Left = 712
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Desde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShadowPos = spLeftTop
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object RxLabel3: TJvLabel
      Left = 816
      Top = 6
      Width = 30
      Height = 13
      Caption = 'Hasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShadowPos = spLeftTop
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object RxLabel4: TJvLabel
      Left = 8
      Top = 49
      Width = 34
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShadowPos = spLeftTop
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -12
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Label3: TLabel
      Left = 230
      Top = 7
      Width = 68
      Height = 13
      Caption = 'Comprobantes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object pcRemitos: TPageControl
      Left = 0
      Top = 101
      Width = 1056
      Height = 579
      ActivePage = pag2
      Align = alBottom
      Anchors = [akTop, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      ExplicitWidth = 946
      ExplicitHeight = 527
      object pag1: TTabSheet
        Caption = 'Listado Detalle'
        object Label2: TLabel
          Left = 576
          Top = 3
          Width = 102
          Height = 13
          Caption = 'Azules=Devoluciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 553
          Top = 200
          Width = 104
          Height = 17
          DataField = 'NROFACT'
          DataSource = DSRtoCab
        end
        object Label4: TLabel
          Left = 480
          Top = 200
          Width = 59
          Height = 13
          Caption = 'Factura Nro:'
        end
        object edTotal: TJvCalcEdit
          Left = 788
          Top = 199
          Width = 121
          Height = 21
          DisplayFormat = ',0.00'
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object dbgCab: TDBGrid
          Left = 0
          Top = 0
          Width = 1048
          Height = 193
          Align = alTop
          Anchors = [akLeft, akRight, akBottom]
          DataSource = DSRtoCab
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgCabDrawColumnCell
          OnDblClick = dbgCabDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SUCURSAL'
              Title.Alignment = taCenter
              Title.Caption = 'Suc'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 47
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHAVTA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 98
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cl'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 44
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'LETRARTO'
              Title.Alignment = taCenter
              Title.Caption = 'Lt'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 51
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SUCRTO'
              Title.Alignment = taCenter
              Title.Caption = 'Prefijo'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUMERORTO'
              Title.Alignment = taCenter
              Title.Caption = 'Numero'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZONSOCIAL'
              Title.Alignment = taCenter
              Title.Caption = 'Razon Social'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 94
              Visible = True
            end>
        end
        object dbgDet: TDBGrid
          Left = 0
          Top = 226
          Width = 1048
          Height = 325
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSRtoDet
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clGreen
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clGreen
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Cant.'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clGreen
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = '$ Unitario'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clGreen
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dscto.'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clGreen
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Color = clSilver
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clGreen
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end>
        end
      end
      object pag2: TTabSheet
        Caption = 'Listado Agrupado x Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1048
          Height = 551
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'iMaginary'
          ExplicitWidth = 938
          ExplicitHeight = 499
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSLstAgrupada
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'TOTAL'
                Column = cxGrid1DBTableView1TOTAL
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL'
                Column = cxGrid1DBTableView1TOTAL
              end>
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            Styles.Group = cxStyle1
            Styles.Header = cxStyle1
            object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 34
            end
            object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 106
            end
            object cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHAVTA'
              HeaderAlignmentHorz = taCenter
              Width = 101
            end
            object cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Width = 88
            end
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1UNITARIO_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_TOTAL'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Width = 112
            end
            object cxGrid1DBTableView1MUESTRARTO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRARTO'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              IsCaptionAssigned = True
            end
            object cxGrid1DBTableView1DEVOLUCION: TcxGridDBColumn
              DataBinding.FieldName = 'DEVOLUCION'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              Width = 41
            end
            object cxGrid1DBTableView1MUESTRADOMINIO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRADOMINIO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRAKILOMETROS: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAKILOMETROS'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRARESPONSABLE: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRARESPONSABLE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRATRANSPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRATRANSPORTE'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            Bands = <
              item
              end>
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Tipo Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 2
        ParentFont = False
        TabVisible = False
        object AdvSGridPagos: TAdvSpreadGrid
          Left = 0
          Top = 0
          Width = 1048
          Height = 551
          Align = alClient
          ColCount = 5
          DrawingStyle = gdsClassic
          FixedCols = 1
          RowCount = 10
          FixedRows = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
          ParentFont = False
          TabOrder = 0
          GridLineColor = 15855083
          GridFixedLineColor = 13745060
          ActiveCellShow = True
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 10344697
          ActiveCellColorTo = 6210033
          AutoHideSelection = True
          AutoNumAlign = True
          ColumnSize.StretchAll = True
          ColumnSize.SynchWithGrid = True
          ControlLook.FixedGradientFrom = 16513526
          ControlLook.FixedGradientTo = 15260626
          ControlLook.FixedGradientHoverFrom = 15000287
          ControlLook.FixedGradientHoverTo = 14406605
          ControlLook.FixedGradientHoverMirrorFrom = 14406605
          ControlLook.FixedGradientHoverMirrorTo = 13813180
          ControlLook.FixedGradientHoverBorder = 12033927
          ControlLook.FixedGradientDownFrom = 14991773
          ControlLook.FixedGradientDownTo = 14991773
          ControlLook.FixedGradientDownMirrorFrom = 14991773
          ControlLook.FixedGradientDownMirrorTo = 14991773
          ControlLook.FixedGradientDownBorder = 14991773
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
          FixedColWidth = 0
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clBlack
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          Look = glOffice2007
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
          SearchFooter.Color = 16513526
          SearchFooter.ColorTo = clNone
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
          SelectionColor = 6210033
          UIStyle = tsOffice2007Luna
          Version = '2.3.3.1'
          ErrorText = 'Error'
          CellFormat = '%.2f'
          ExplicitWidth = 942
          ExplicitHeight = 359
          ColWidths = (
            0
            30
            25
            21
            97)
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
      object pag3: TTabSheet
        Caption = 'Detalle Agrupado'
        ImageIndex = 3
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1048
          Height = 516
          Align = alClient
          DataSource = DSRtoDetGeneral
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'VS2010'
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          ExplicitWidth = 938
          ExplicitHeight = 464
          object cxDBPivotGrid1TIPOCPBTE: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'TIPOCPBTE'
            Visible = True
            UniqueName = 'Tp.Cp'
          end
          object cxDBPivotGrid1CLASECPBTE: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'CLASECPBTE'
            Visible = True
            UniqueName = 'Cl.Cp'
          end
          object cxDBPivotGrid1NROCPBTE: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'NROCPBTE'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid1CODIGOARTICULO: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'CODIGOARTICULO'
            Visible = True
            UniqueName = 'Cod.Articulo'
          end
          object cxDBPivotGrid1DETALLE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'DETALLE'
            Visible = True
            UniqueName = 'Detalle'
          end
          object cxDBPivotGrid1UNIDAD: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'UNIDAD'
            Visible = True
            UniqueName = 'UNIDAD'
          end
          object cxDBPivotGrid1CANTIDAD: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'CANTIDAD'
            Visible = True
            UniqueName = 'Cantidad'
          end
          object cxDBPivotGrid1CODIGOCLIENTE: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'CODIGOCLIENTE'
            Visible = True
            UniqueName = 'Codigo Cliente'
          end
          object cxDBPivotGrid1NOMBRE: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'NOMBRE'
            Visible = True
            UniqueName = 'Nombre Cliente'
          end
          object cxDBPivotGrid1RAZONSOCIAL: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'RAZONSOCIAL'
            Visible = True
            UniqueName = 'Razon Social'
          end
          object cxDBPivotGrid1FECHACPBTERTO: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'FECHACPBTERTO'
            Visible = True
            UniqueName = 'Fecha Rto'
          end
          object cxDBPivotGrid1DETALLE_RUBRO: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'DETALLE_RUBRO'
            Visible = True
            UniqueName = 'Rubro Detalle'
          end
          object cxDBPivotGrid1DETALLE_SUBRUBRO: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_SUBRUBRO'
            Visible = True
            UniqueName = 'Sub Detalle'
          end
          object cxDBPivotGrid1ANIO: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'ANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGrid1MES: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 516
          Width = 1048
          Height = 35
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          ExplicitTop = 464
          ExplicitWidth = 938
        end
      end
    end
    object UpDown1: TUpDown
      Left = 919
      Top = 22
      Width = 16
      Height = 20
      Hint = 'Cambia el Per'#237'odo'
      Max = 10000
      ParentShowHint = False
      Position = 100
      ShowHint = True
      TabOrder = 0
      OnClick = UpDown1Click
    end
    object edNombreCliente: TEdit
      Left = 89
      Top = 68
      Width = 312
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 1
    end
    object dbcSucursal: TJvDBLookupCombo
      Left = 7
      Top = 22
      Width = 217
      Height = 21
      DisplayEmpty = 'Todas las Sucursales'
      EmptyValue = '-1'
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSSucursales
      TabOrder = 3
      OnChange = dbcSucursalChange
      OnClick = dbcSucursalClick
    end
    object Desde: TJvDateEdit
      Left = 712
      Top = 22
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
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 4
    end
    object Hasta: TJvDateEdit
      Left = 816
      Top = 22
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
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 5
    end
    object ceCliente: TJvComboEdit
      Left = 8
      Top = 68
      Width = 73
      Height = 21
      ButtonWidth = 16
      ClickKey = 16397
      Color = clBtnFace
      Enabled = False
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      TabOrder = 6
      Text = ''
      OnButtonClick = BuscarClienteExecute
      OnKeyPress = ceClienteKeyPress
    end
    object cbComprobantes: TJvDBLookupCombo
      Left = 230
      Top = 22
      Width = 259
      Height = 21
      DisplayEmpty = 'Todos Los Comprobantes'
      EmptyValue = '-1'
      LookupField = 'ID_COMPROBANTE'
      LookupDisplay = 'DENOMINACION'
      LookupSource = DSTipoCpbte
      TabOrder = 8
      OnClick = cbComprobantesClick
    end
    object chTodosLosClientes: TAdvOfficeCheckBox
      Left = 96
      Top = 47
      Width = 128
      Height = 17
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = chTodosLosClientesClick
      Alignment = taRightJustify
      Caption = 'Todos los Clientes'
      ReturnIsTab = False
      State = cbChecked
      Version = '1.8.4.2'
    end
  end
  inherited ToolBar1: TToolBar
    Top = 680
    Width = 1056
    Align = alBottom
    ExplicitTop = 628
    ExplicitWidth = 946
    inherited btConfirma: TBitBtn
      Height = 7
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 7
    end
    inherited btNuevo: TBitBtn
      Height = 7
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 7
    end
    inherited btCancelar: TBitBtn
      Height = 7
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 7
    end
    inherited btModificar: TBitBtn
      Height = 7
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 7
    end
    inherited Pr: TSpeedButton
      Height = 7
      Visible = False
      ExplicitHeight = 7
    end
    inherited btBuscar: TBitBtn
      Height = 7
      DoubleBuffered = True
      ExplicitHeight = 7
    end
    inherited Ne: TSpeedButton
      Height = 7
      Visible = False
      ExplicitHeight = 7
    end
    inherited btBorrar: TBitBtn
      Height = 7
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 7
    end
    inherited btSalir: TBitBtn
      Height = 7
      DoubleBuffered = True
      ExplicitHeight = 7
    end
    object BitBtn1: TBitBtn
      Left = 557
      Top = 0
      Width = 75
      Height = 7
      Action = Imprimir
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
    end
    object Button1: TButton
      Left = 632
      Top = 0
      Width = 75
      Height = 7
      Caption = 'Excel'
      TabOrder = 8
      OnClick = Button1Click
    end
  end
  inherited Panel1: TPanel
    Top = 710
    Width = 1056
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 658
    ExplicitWidth = 946
    inherited sbEstado: TStatusBar
      Width = 967
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 857
    end
  end
  inherited ActionList1: TActionList
    Left = 416
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object LimpiarFiltros: TAction
      Caption = 'Limpiar Filtros'
      OnExecute = LimpiarFiltrosExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 568
  end
  inherited ImageList1: TImageList
    Top = 48
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
    Left = 744
    Top = 384
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 8
    Top = 336
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 664
    Top = 440
  end
  inherited ComBuscadorBase: TComBuscador
    Top = 240
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 104
  end
  object DSRtoCab: TDataSource
    DataSet = QRtoCab
    Left = 312
    Top = 248
  end
  object DSRtoDet: TDataSource
    DataSet = QRtoDet
    Left = 296
    Top = 320
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Left = 696
    Top = 200
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPClientes'
    Left = 760
    Top = 200
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Origin = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Origin = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object CDSClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object CDSClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Origin = 'EMITE_REMITO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Origin = 'EMITE_FACTURA'
      FixedChar = True
      Size = 1
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object CDSClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object CDSClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
    end
    object CDSClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object CDSClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object CDSClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object CDSClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object CDSClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
      Origin = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
      Origin = 'ID_NOTADEBITOPORDEFECTO'
    end
    object CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
      Origin = 'ID_NOTACREDITOPORDEFECTO'
    end
    object CDSClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
      Origin = 'ID_TIKETPORDEFECTO'
    end
    object CDSClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Origin = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Origin = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
      Origin = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object CDSClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 50
    end
    object CDSClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Origin = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object CDSClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object CDSClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object CDSClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Origin = 'LONGITUD'
      Size = 25
    end
    object CDSClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Origin = 'LATITUD'
      Size = 25
    end
    object CDSClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Origin = 'DIRECCION_CALLE'
      Size = 40
    end
    object CDSClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Origin = 'DIRECCION_NUMERO'
      Size = 10
    end
    object CDSClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Origin = 'DIRECCION_PISO'
      Size = 10
    end
    object CDSClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Origin = 'DIRECCION_DEPTO'
      Size = 10
    end
    object CDSClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Origin = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesMUESTRATELEDISCADO: TStringField
      FieldName = 'MUESTRATELEDISCADO'
      Origin = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object CDSClientesMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSClientesMUESTRACOBRADOR: TStringField
      FieldName = 'MUESTRACOBRADOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Origin = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
      Origin = 'FECHA_INCIO_FC_ABONO'
    end
    object CDSClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
      Origin = 'MES_ABONOANUAL'
    end
    object CDSClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object CDSClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
    end
  end
  object DSSucursales: TDataSource
    DataSet = CDSSucursal
    Left = 64
    Top = 424
  end
  object DSTipoCpbte: TDataSource
    DataSet = QTipoCpbte
    Left = 272
    Top = 600
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 136
    Top = 552
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 56
    Top = 565
  end
  object frDBFcDet: TfrxDBDataset
    UserName = 'frDBFcDet'
    CloseDataSource = False
    DataSource = DSRtoDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 576
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CABRTO'
        FieldAlias = 'ID_CABRTO'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'RENGLON'
        FieldAlias = 'RENGLON'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'DETALLE_ADICIONAL'
        FieldAlias = 'DETALLE_ADICIONAL'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'COSTO_GRAVADO'
        FieldAlias = 'COSTO_GRAVADO'
      end
      item
        FieldName = 'COSTO_EXENTO'
        FieldAlias = 'COSTO_EXENTO'
      end
      item
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'COSTO_TOTAL'
      end
      item
        FieldName = 'UNITARIO_GRAVADO'
        FieldAlias = 'UNITARIO_GRAVADO'
      end
      item
        FieldName = 'IVA_UNITARIO'
        FieldAlias = 'IVA_UNITARIO'
      end
      item
        FieldName = 'UNITARIO_EXENTO'
        FieldAlias = 'UNITARIO_EXENTO'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'UNITARIO_TOTAL'
      end
      item
        FieldName = 'TOTAL_GRAVADO'
        FieldAlias = 'TOTAL_GRAVADO'
      end
      item
        FieldName = 'IVA_TOTAL'
        FieldAlias = 'IVA_TOTAL'
      end
      item
        FieldName = 'TOTAL_EXENTO'
        FieldAlias = 'TOTAL_EXENTO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'MODO_GRAVAMEN'
      end
      item
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_TASA'
      end
      item
        FieldName = 'IVA_SOBRETASA'
        FieldAlias = 'IVA_SOBRETASA'
      end
      item
        FieldName = 'TIPOIVA_TASA'
        FieldAlias = 'TIPOIVA_TASA'
      end
      item
        FieldName = 'TIPOIVA_SOBRETASA'
        FieldAlias = 'TIPOIVA_SOBRETASA'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'MARGEN'
        FieldAlias = 'MARGEN'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'GRAVADO_IB'
        FieldAlias = 'GRAVADO_IB'
      end
      item
        FieldName = 'ID_MONEDA'
        FieldAlias = 'ID_MONEDA'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'LOTE'
        FieldAlias = 'LOTE'
      end
      item
        FieldName = 'OBSERVACION'
        FieldAlias = 'OBSERVACION'
      end
      item
        FieldName = 'NOTAVENTA_ID'
        FieldAlias = 'NOTAVENTA_ID'
      end
      item
        FieldName = 'NOTAVENTA_ID_DET'
        FieldAlias = 'NOTAVENTA_ID_DET'
      end
      item
        FieldName = 'CODIGOBARRA'
        FieldAlias = 'CODIGOBARRA'
      end
      item
        FieldName = 'PRECIO_EDITABLE'
        FieldAlias = 'PRECIO_EDITABLE'
      end
      item
        FieldName = 'CANT_FACTURA'
        FieldAlias = 'CANT_FACTURA'
      end
      item
        FieldName = 'ID_MERCA_ACOPIO_DET'
        FieldAlias = 'ID_MERCA_ACOPIO_DET'
      end
      item
        FieldName = 'PRESENTACION_CANT'
        FieldAlias = 'PRESENTACION_CANT'
      end
      item
        FieldName = 'CANTIDAD_UNIDADES'
        FieldAlias = 'CANTIDAD_UNIDADES'
      end>
  end
  object frDBFcImpuestos: TfrxDBDataset
    UserName = 'frDBFcImpuestos'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 720
    Top = 616
  end
  object frDBFcCab: TfrxDBDataset
    UserName = 'frDBFcCab'
    CloseDataSource = False
    DataSource = DSRtoCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 616
    Top = 584
    FieldDefs = <
      item
        FieldName = 'ID_RTO'
        FieldAlias = 'ID_RTO'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
        FieldType = fftString
      end
      item
        FieldName = 'LETRARTO'
        FieldAlias = 'LETRARTO'
        FieldType = fftString
      end
      item
        FieldName = 'SUCRTO'
        FieldAlias = 'SUCRTO'
        FieldType = fftString
      end
      item
        FieldName = 'NUMERORTO'
        FieldAlias = 'NUMERORTO'
        FieldType = fftString
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
        FieldType = fftString
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'TIPOIVA'
        FieldAlias = 'TIPOIVA'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'LISTAPRECIO'
        FieldAlias = 'LISTAPRECIO'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'FECHAVTO'
        FieldAlias = 'FECHAVTO'
      end
      item
        FieldName = 'CONDICIONVTA'
        FieldAlias = 'CONDICIONVTA'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
        FieldType = fftString
      end
      item
        FieldName = 'NROFACT'
        FieldAlias = 'NROFACT'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'N_OPERACION2'
        FieldAlias = 'N_OPERACION2'
      end
      item
        FieldName = 'NETOGRAV1'
        FieldAlias = 'NETOGRAV1'
      end
      item
        FieldName = 'NETOGRAV2'
        FieldAlias = 'NETOGRAV2'
      end
      item
        FieldName = 'DSTO'
        FieldAlias = 'DSTO'
      end
      item
        FieldName = 'DSTOIMPORTE'
        FieldAlias = 'DSTOIMPORTE'
      end
      item
        FieldName = 'NETOEXEN1'
        FieldAlias = 'NETOEXEN1'
      end
      item
        FieldName = 'NETOEXEN2'
        FieldAlias = 'NETOEXEN2'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'IMPRESO'
        FieldAlias = 'IMPRESO'
        FieldType = fftString
      end
      item
        FieldName = 'OBSERVACION1'
        FieldAlias = 'OBSERVACION1'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'OBSERVACION2'
        FieldAlias = 'OBSERVACION2'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'CPTE_MANUAL'
        FieldAlias = 'CPTE_MANUAL'
        FieldType = fftString
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'ZONA'
        FieldAlias = 'ZONA'
      end
      item
        FieldName = 'LDR'
        FieldAlias = 'LDR'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
        FieldType = fftString
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
        FieldType = fftString
      end
      item
        FieldName = 'NROENTREGA'
        FieldAlias = 'NROENTREGA'
      end
      item
        FieldName = 'INGRESA_A_CTACTE'
        FieldAlias = 'INGRESA_A_CTACTE'
        FieldType = fftString
      end
      item
        FieldName = 'INGRESA_LIBRO_IVA'
        FieldAlias = 'INGRESA_LIBRO_IVA'
        FieldType = fftString
      end
      item
        FieldName = 'IDFACTURA'
        FieldAlias = 'IDFACTURA'
      end
      item
        FieldName = 'COMISIONVENDEDOR'
        FieldAlias = 'COMISIONVENDEDOR'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
        FieldType = fftString
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'RENGLONES'
        FieldAlias = 'RENGLONES'
      end
      item
        FieldName = 'NOTAPEDIDO_ID'
        FieldAlias = 'NOTAPEDIDO_ID'
      end
      item
        FieldName = 'NOTAPEDIDO_NROCPBTE'
        FieldAlias = 'NOTAPEDIDO_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'ID_TRANSPORTE'
        FieldAlias = 'ID_TRANSPORTE'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'TAREAS'
        FieldAlias = 'TAREAS'
        FieldType = fftString
      end
      item
        FieldName = 'PRESUPUESTO_ID'
        FieldAlias = 'PRESUPUESTO_ID'
      end
      item
        FieldName = 'PRESUPUESTO_NROCPBTE'
        FieldAlias = 'PRESUPUESTO_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'NOTAVTA_ID'
        FieldAlias = 'NOTAVTA_ID'
      end
      item
        FieldName = 'NOTAVTA_NROCPBTE'
        FieldAlias = 'NOTAVTA_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'CON_GTIA_EXTENDIDA'
        FieldAlias = 'CON_GTIA_EXTENDIDA'
        FieldType = fftString
      end
      item
        FieldName = 'POLIZA'
        FieldAlias = 'POLIZA'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'CANT_BULTOS'
        FieldAlias = 'CANT_BULTOS'
      end
      item
        FieldName = 'REMITO_ELECTRONICO'
        FieldAlias = 'REMITO_ELECTRONICO'
        FieldType = fftString
      end
      item
        FieldName = 'CAE'
        FieldAlias = 'CAE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'CAE_VENCIMIENTO'
        FieldAlias = 'CAE_VENCIMIENTO'
      end
      item
        FieldName = 'DEVOLUCION'
        FieldAlias = 'DEVOLUCION'
        FieldType = fftString
      end
      item
        FieldName = 'ID_CHOFER'
        FieldAlias = 'ID_CHOFER'
      end
      item
        FieldName = 'TRASNPORTE_UNIDAD'
        FieldAlias = 'TRASNPORTE_UNIDAD'
      end
      item
        FieldName = 'TRASNPORTE_ADICIONAL'
        FieldAlias = 'TRASNPORTE_ADICIONAL'
      end
      item
        FieldName = 'PEDIDO_ID'
        FieldAlias = 'PEDIDO_ID'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'ID_TRANSFERENCIA'
      end
      item
        FieldName = 'FECHA_DEVOLUCION_ALQ'
      end
      item
        FieldName = 'FECHA_ENTREGA'
      end
      item
        FieldName = 'COT'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'REMITO_IMPRENTA'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'REMITO_FECHA_RANGO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'REMITO_DIRECCION'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'REMITO_CAI'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'REMITO_VENCIMIENTO_CAI'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'MUESTRARESPONSABLE'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRATRANSPORTE'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRADOMINIO'
        FieldType = fftString
        Size = 12
      end
      item
        FieldName = 'MUESTRAKILOMETROS'
      end>
  end
  object frCpbte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.784885335650000000
    ReportOptions.LastChange = 39638.784885335650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 480
    Top = 552
    Datasets = <>
    Variables = <>
    Style = <>
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
    Left = 638
    Top = 530
  end
  object DSLstAgrupada: TDataSource
    DataSet = QLstAgrupada
    Left = 188
    Top = 255
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 577
    Top = 208
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 10000
      PrinterPage.GrayShading = True
      PrinterPage.Header = 10000
      PrinterPage.Margins.Bottom = 10000
      PrinterPage.Margins.Left = 10000
      PrinterPage.Margins.Right = 10000
      PrinterPage.Margins.Top = 10000
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.RightTitle.Strings = (
        'Revision 1')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'CARGA DE POSTES/ACCESORIOS')
      PrinterPage.PageHeader.Font.Charset = ANSI_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Arial Rounded MT Bold'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageHeader.LeftTitle.Strings = (
        'F-06-12')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ReverseTitlesOnEvenPages = True
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45986.657455462960000000
      ReportFootnotes.Text = 'Rev 1'
      ReportFootnotes.TextAlignX = taRight
      ReportTitle.AdjustOnReportScale = True
      ReportTitle.Color = clMoneyGreen
      ReportTitle.Text = 'F-06-12  CARGA POSTES/ACCESORIOS'
      ReportTitle.TextAlignX = taLeft
      ReportTitle.Transparent = False
      ShrinkToPageWidth = True
      TimeFormat = 0
      OptionsExpanding.ExpandGroupRows = True
      OptionsSize.AutoWidth = True
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object SaveDialog: TSaveDialog
    Left = 556
    Top = 160
  end
  object QTipoCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from comprobantes c'
      'where c.compra_venta='#39'V'#39' and (c.tipo_comprob in ('#39'RE'#39'))'
      'and c.sucursal = :sucursal')
    Left = 208
    Top = 600
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTipoCpbteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTipoCpbteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QTipoCpbteCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QTipoCpbteDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QTipoCpbteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QTipoCpbteLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QTipoCpbtePREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QTipoCpbteNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QTipoCpbteTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QTipoCpbteAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QTipoCpbteREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QTipoCpbteIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QTipoCpbtePENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QTipoCpbteCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QTipoCpbteDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QTipoCpbteID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QTipoCpbteCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QTipoCpbteFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QTipoCpbteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QTipoCpbteULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QTipoCpbteEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QLstAgrupada: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.id_cabrto,c.clasecpbte,c.nrocpbte,d.fechavta,c.cod' +
        'igo,c.nombre,c.razonsocial,c.total as TotalRto,c.devolucion,'
      
        '       d.codigoarticulo,d.detalle,d.cantidad,d.unitario_total,d.' +
        'iva_unitario,d.iva_total, d.total,'
      
        '       (c.clasecpbte||'#39'-'#39'|| c.nrocpbte|| '#39'     '#39'||c.fechavta||'#39' ' +
        '   '#39'||c.codigo|| '#39' :'#39'||c.nombre ) as MuestraRto,'
      
        '       hc.responsable as muestraresponsable,tr.descripcion as mu' +
        'estratransporte,tr.dominio as MuestraDominio, hc.recorrido_km as' +
        ' muestrakilometros from rtodet d'
      'left join Rtocab c on c.id_rto=d.id_cabrto'
      'left join comprobantes cp on cp.letra=c.letrarto and'
      '                             cp.tipo_comprob=c.tipocpbte and'
      '                             cp.clase_comprob=c.clasecpbte and'
      '                             cp.sucursal=c.sucursal and'
      '                             cp.compra_venta='#39'V'#39
      
        'left join hojacarga_det hd on hd.id_cpbte=c.id_rto and hd.tipocp' +
        'bte=c.tipocpbte'
      'left join hojacarga_cab hc on hc.id=hd.id_cab'
      'left join unidades_tr tr on tr.id=c.id_transporte'
      ''
      
        'where (c.fechavta between :desde and :hasta) and (c.codigo = :co' +
        'digo or :codigo = '#39'******'#39' ) '
      '      and (cp.id_comprobante = :id_cpbte or :id_cpbte = -1 )')
    Left = 212
    Top = 424
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
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLstAgrupadaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLstAgrupadaID_CABRTO: TIntegerField
      FieldName = 'ID_CABRTO'
      Origin = 'ID_CABRTO'
    end
    object QLstAgrupadaCLASECPBTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QLstAgrupadaNROCPBTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QLstAgrupadaCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QLstAgrupadaNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QLstAgrupadaRAZONSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QLstAgrupadaTOTALRTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALRTO'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QLstAgrupadaDEVOLUCION: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dev.'
      FieldName = 'DEVOLUCION'
      Origin = 'DEVOLUCION'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QLstAgrupadaCODIGOARTICULO: TStringField
      DisplayLabel = 'Cod.Artic.'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QLstAgrupadaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QLstAgrupadaCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QLstAgrupadaUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Uni.Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QLstAgrupadaIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QLstAgrupadaIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QLstAgrupadaTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QLstAgrupadaMUESTRARTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARTO'
      Origin = 'MUESTRARTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 121
    end
    object QLstAgrupadaFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QLstAgrupadaMUESTRARESPONSABLE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Responsable'
      FieldName = 'MUESTRARESPONSABLE'
      Origin = 'RESPONSABLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QLstAgrupadaMUESTRATRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Transporte'
      FieldName = 'MUESTRATRANSPORTE'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QLstAgrupadaMUESTRADOMINIO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dominio'
      FieldName = 'MUESTRADOMINIO'
      Origin = 'DOMINIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object QLstAgrupadaMUESTRAKILOMETROS: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Km.'
      FieldName = 'MUESTRAKILOMETROS'
      Origin = 'RECORRIDO_KM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QRtoDet: TFDQuery
    IndexFieldNames = 'ID_CABRTO'
    MasterSource = DSRtoCab
    MasterFields = 'ID_RTO'
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.*,c.codigo as codigocliente,c.nombre,c.razonsocial,c.fe' +
        'chavta as FechaCpbteRto,rb.codigo_rubro,rb.detalle_rubro,'
      
        'srb.codigo_subrubro,srb.detalle_subrubro,extract( year from c.fe' +
        'chavta) as Anio, extract( month from c.fechavta) as Mes  from rt' +
        'odet f'
      'left join rtocab c on c.id_rto=f.id_cabrto'
      'left join stock s on s.codigo_stk=f.codigoarticulo'
      'left join rubros rb on rb.codigo_rubro=s.rubro_stk'
      'left join subrubros srb on srb.codigo_subrubro=s.subrubro_stk'
      'where f.id_cabrto between :id_desde and :id_hasta')
    Left = 444
    Top = 320
    ParamData = <
      item
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRtoDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoDetID_CABRTO: TIntegerField
      FieldName = 'ID_CABRTO'
      Origin = 'ID_CABRTO'
    end
    object QRtoDetTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.Cp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QRtoDetCLASECPBTE: TStringField
      DisplayLabel = 'Cl.Cp'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QRtoDetNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QRtoDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QRtoDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Cod.Articulo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QRtoDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QRtoDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QRtoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QRtoDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QRtoDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object QRtoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QRtoDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QRtoDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QRtoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
    end
    object QRtoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
    end
    object QRtoDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      DisplayFormat = '0.00%'
    end
    object QRtoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QRtoDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QRtoDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Size = 1
    end
    object QRtoDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QRtoDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QRtoDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QRtoDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QRtoDetLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
    end
    object QRtoDetOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Origin = 'OBSERVACION'
    end
    object QRtoDetNOTAVENTA_ID: TIntegerField
      FieldName = 'NOTAVENTA_ID'
      Origin = 'NOTAVENTA_ID'
    end
    object QRtoDetNOTAVENTA_ID_DET: TIntegerField
      FieldName = 'NOTAVENTA_ID_DET'
      Origin = 'NOTAVENTA_ID_DET'
    end
    object QRtoDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QRtoDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Origin = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRtoDetCANT_FACTURA: TFloatField
      FieldName = 'CANT_FACTURA'
      Origin = 'CANT_FACTURA'
      Required = True
    end
    object QRtoDetID_MERCA_ACOPIO_DET: TIntegerField
      FieldName = 'ID_MERCA_ACOPIO_DET'
      Origin = 'ID_MERCA_ACOPIO_DET'
      Required = True
    end
    object QRtoDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
    object QRtoDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object QRtoDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QRtoDetPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object QRtoDetID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object QRtoDetID_DET_OPRODUCCION: TIntegerField
      FieldName = 'ID_DET_OPRODUCCION'
      Origin = 'ID_DET_OPRODUCCION'
      Required = True
    end
    object QRtoDetCODIGOCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Codigo Cliente'
      FieldName = 'CODIGOCLIENTE'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QRtoDetNOMBRE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre Cliente'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QRtoDetRAZONSOCIAL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QRtoDetFECHACPBTERTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Rto'
      FieldName = 'FECHACPBTERTO'
      Origin = 'FECHAVTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRtoDetCODIGO_RUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QRtoDetDETALLE_RUBRO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rubro Detalle'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QRtoDetCODIGO_SUBRUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QRtoDetDETALLE_SUBRUBRO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sub Detalle'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QRtoDetANIO: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QRtoDetMES: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QRtoCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.*,s.detalle as MuestraSucursal,hc.responsable as muestr' +
        'aresponsable,tr.descripcion as muestratransporte,tr.dominio as M' +
        'uestraDominio, hc.recorrido_km as muestrakilometros from rtocab ' +
        'f'
      'left join sucursal s on s.codigo=f.sucursal'
      'left join comprobantes c on c.letra=f.letrarto and'
      '                            c.tipo_comprob=f.tipocpbte and'
      '                            c.clase_comprob=f.clasecpbte and'
      '                            c.sucursal=f.sucursal and'
      '                            c.compra_venta='#39'V'#39
      
        'left join hojacarga_det hd on hd.id_cpbte=f.id_rto and hd.tipocp' +
        'bte=f.tipocpbte'
      'left join hojacarga_cab hc on hc.id=hd.id_cab'
      'left join unidades_tr tr on tr.id=f.id_transporte'
      
        'where (f.fechavta between :desde and :hasta) and f.anulado<>'#39'S'#39' ' +
        'and'
      '      (c.id_comprobante = :TipoCpbte or :tipoCpbte = -1 ) and'
      '      (f.codigo = :codigo or :codigo = '#39'******'#39' ) and'
      '      ( f.sucursal = :sucursal or :sucursal = -1 )'
      
        'order by f.id_rto,f.sucursal,f.tipocpbte,f.clasecpbte, f.letrart' +
        'o,f.sucrto,f.numerorto')
    Left = 420
    Top = 232
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
        Name = 'TIPOCPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRtoCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRtoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QRtoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QRtoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QRtoCabLETRARTO: TStringField
      FieldName = 'LETRARTO'
      Origin = 'LETRARTO'
      Size = 1
    end
    object QRtoCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      Origin = 'SUCRTO'
      Size = 4
    end
    object QRtoCabNUMERORTO: TStringField
      FieldName = 'NUMERORTO'
      Origin = 'NUMERORTO'
      Size = 8
    end
    object QRtoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QRtoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QRtoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QRtoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QRtoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QRtoCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QRtoCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QRtoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object QRtoCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
    end
    object QRtoCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object QRtoCabNROFACT: TStringField
      FieldName = 'NROFACT'
      Origin = 'NROFACT'
      Size = 13
    end
    object QRtoCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QRtoCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
    end
    object QRtoCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object QRtoCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
    end
    object QRtoCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object QRtoCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object QRtoCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object QRtoCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QRtoCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QRtoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Size = 1
    end
    object QRtoCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QRtoCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QRtoCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Origin = 'CPTE_MANUAL'
      Size = 1
    end
    object QRtoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QRtoCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QRtoCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
    end
    object QRtoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QRtoCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QRtoCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object QRtoCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
      Origin = 'NROENTREGA'
    end
    object QRtoCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Size = 1
    end
    object QRtoCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Size = 1
    end
    object QRtoCabIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = 'IDFACTURA'
    end
    object QRtoCabCOMISIONVENDEDOR: TFloatField
      FieldName = 'COMISIONVENDEDOR'
      Origin = 'COMISIONVENDEDOR'
    end
    object QRtoCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QRtoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QRtoCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Origin = 'RENGLONES'
    end
    object QRtoCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
      Origin = 'NOTAPEDIDO_ID'
    end
    object QRtoCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Origin = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object QRtoCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
    end
    object QRtoCabTAREAS: TStringField
      FieldName = 'TAREAS'
      Origin = 'TAREAS'
      Required = True
      Size = 10
    end
    object QRtoCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
      Origin = 'PRESUPUESTO_ID'
    end
    object QRtoCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Origin = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object QRtoCabNOTAVTA_ID: TIntegerField
      FieldName = 'NOTAVTA_ID'
      Origin = 'NOTAVTA_ID'
    end
    object QRtoCabNOTAVTA_NROCPBTE: TStringField
      FieldName = 'NOTAVTA_NROCPBTE'
      Origin = 'NOTAVTA_NROCPBTE'
      Size = 13
    end
    object QRtoCabCON_GTIA_EXTENDIDA: TStringField
      FieldName = 'CON_GTIA_EXTENDIDA'
      Origin = 'CON_GTIA_EXTENDIDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRtoCabPOLIZA: TStringField
      FieldName = 'POLIZA'
      Origin = 'POLIZA'
    end
    object QRtoCabCANT_BULTOS: TIntegerField
      FieldName = 'CANT_BULTOS'
      Origin = 'CANT_BULTOS'
      Required = True
    end
    object QRtoCabREMITO_ELECTRONICO: TStringField
      FieldName = 'REMITO_ELECTRONICO'
      Origin = 'REMITO_ELECTRONICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRtoCabCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object QRtoCabDEVOLUCION: TStringField
      FieldName = 'DEVOLUCION'
      Origin = 'DEVOLUCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRtoCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
      Origin = 'ID_CHOFER'
    end
    object QRtoCabTRASNPORTE_UNIDAD: TIntegerField
      FieldName = 'TRASNPORTE_UNIDAD'
      Origin = 'TRASNPORTE_UNIDAD'
    end
    object QRtoCabTRASNPORTE_ADICIONAL: TIntegerField
      FieldName = 'TRASNPORTE_ADICIONAL'
      Origin = 'TRASNPORTE_ADICIONAL'
    end
    object QRtoCabPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = 'PEDIDO_ID'
      Required = True
    end
    object QRtoCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QRtoCabFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha Vta'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QRtoCabFECHAVTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Vto'
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QRtoCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
      Origin = 'CAE_VENCIMIENTO'
    end
    object QRtoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QRtoCabID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
      Origin = 'ID_TRANSFERENCIA'
      Required = True
    end
    object QRtoCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField
      FieldName = 'FECHA_DEVOLUCION_ALQ'
      Origin = 'FECHA_DEVOLUCION_ALQ'
    end
    object QRtoCabFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object QRtoCabCOT: TStringField
      FieldName = 'COT'
      Origin = '"COT"'
      Size = 25
    end
    object QRtoCabREMITO_IMPRENTA: TStringField
      FieldName = 'REMITO_IMPRENTA'
      Origin = 'REMITO_IMPRENTA'
      Size = 100
    end
    object QRtoCabREMITO_FECHA_RANGO: TStringField
      FieldName = 'REMITO_FECHA_RANGO'
      Origin = 'REMITO_FECHA_RANGO'
      Size = 100
    end
    object QRtoCabREMITO_DIRECCION: TStringField
      FieldName = 'REMITO_DIRECCION'
      Origin = 'REMITO_DIRECCION'
      Size = 100
    end
    object QRtoCabREMITO_CAI: TStringField
      FieldName = 'REMITO_CAI'
      Origin = 'REMITO_CAI'
      Size = 40
    end
    object QRtoCabREMITO_VENCIMIENTO_CAI: TStringField
      FieldName = 'REMITO_VENCIMIENTO_CAI'
      Origin = 'REMITO_VENCIMIENTO_CAI'
    end
    object QRtoCabMUESTRARESPONSABLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARESPONSABLE'
      Origin = 'RESPONSABLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QRtoCabMUESTRATRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATRANSPORTE'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QRtoCabMUESTRADOMINIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADOMINIO'
      Origin = 'DOMINIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object QRtoCabMUESTRAKILOMETROS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAKILOMETROS'
      Origin = 'RECORRIDO_KM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 24
    Top = 232
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object QRtoDetGeneral: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.*,c.codigo as codigocliente,c.nombre,c.razonsocial,c.fe' +
        'chavta as FechaCpbteRto,rb.codigo_rubro,rb.detalle_rubro,'
      
        'srb.codigo_subrubro,srb.detalle_subrubro,extract( year from c.fe' +
        'chavta) as Anio, extract( month from c.fechavta) as Mes  from rt' +
        'odet f'
      'left join rtocab c on c.id_rto=f.id_cabrto'
      'left join stock s on s.codigo_stk=f.codigoarticulo'
      'left join rubros rb on rb.codigo_rubro=s.rubro_stk'
      'left join subrubros srb on srb.codigo_subrubro=s.subrubro_stk'
      'where f.id_cabrto between :id_desde and :id_hasta')
    Left = 436
    Top = 408
    ParamData = <
      item
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CABRTO'
      Origin = 'ID_CABRTO'
    end
    object StringField1: TStringField
      DisplayLabel = 'Tp.Cp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object StringField2: TStringField
      DisplayLabel = 'Cl.Cp'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object StringField3: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object FloatField1: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object StringField4: TStringField
      DisplayLabel = 'Cod.Articulo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object StringField5: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object StringField6: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object StringField7: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField3: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField4: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField5: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField6: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField7: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField8: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField9: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField10: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField11: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField12: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object FloatField13: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object StringField8: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object StringField9: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object FloatField14: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object FloatField15: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
    end
    object FloatField16: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      DisplayFormat = '0.00%'
    end
    object IntegerField5: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object FloatField17: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object StringField10: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Size = 1
    end
    object StringField11: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object StringField12: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object FloatField18: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
    end
    object StringField13: TStringField
      FieldName = 'OBSERVACION'
      Origin = 'OBSERVACION'
    end
    object IntegerField8: TIntegerField
      FieldName = 'NOTAVENTA_ID'
      Origin = 'NOTAVENTA_ID'
    end
    object IntegerField9: TIntegerField
      FieldName = 'NOTAVENTA_ID_DET'
      Origin = 'NOTAVENTA_ID_DET'
    end
    object StringField14: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Origin = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FloatField19: TFloatField
      FieldName = 'CANT_FACTURA'
      Origin = 'CANT_FACTURA'
      Required = True
    end
    object IntegerField10: TIntegerField
      FieldName = 'ID_MERCA_ACOPIO_DET'
      Origin = 'ID_MERCA_ACOPIO_DET'
      Required = True
    end
    object FloatField20: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
    object FloatField21: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object StringField16: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object IntegerField11: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object IntegerField12: TIntegerField
      FieldName = 'ID_DET_OPRODUCCION'
      Origin = 'ID_DET_OPRODUCCION'
      Required = True
    end
    object StringField17: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Codigo Cliente'
      FieldName = 'CODIGOCLIENTE'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object StringField18: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre Cliente'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object StringField19: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object SQLTimeStampField2: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha Rto'
      FieldName = 'FECHACPBTERTO'
      Origin = 'FECHAVTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object StringField20: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object StringField21: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rubro Detalle'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object StringField22: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object StringField23: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sub Detalle'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object SmallintField1: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object SmallintField2: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSRtoDetGeneral: TDataSource
    DataSet = QRtoDetGeneral
    Left = 320
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Left = 621
    Top = 320
    object MostrarCampos1: TMenuItem
      Caption = 'Mostrar Campos '
      OnClick = MostrarCampos1Click
    end
    object Columnas1: TMenuItem
      Caption = 'Cabeceras  Linea'
      OnClick = Columnas1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LimpiarFiltros1: TMenuItem
      Action = LimpiarFiltros
    end
  end
end

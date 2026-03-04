inherited FormListadoVtaRubro: TFormListadoVtaRubro
  Left = 298
  Top = 109
  Caption = 'Listado de Vta.por Rubro'
  ClientHeight = 662
  ClientWidth = 1003
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1021
  ExplicitHeight = 703
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1003
    Height = 609
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1003
    ExplicitHeight = 609
    object pcDatos: TPageControl
      Left = 0
      Top = 69
      Width = 1003
      Height = 540
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Tablas'
        DesignSize = (
          995
          512)
        object RxLabel4: TJvLabel
          Left = 8
          Top = 9
          Width = 134
          Height = 20
          Caption = 'Vtas por Rubros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object RxLabel6: TJvLabel
          Left = 442
          Top = 214
          Width = 195
          Height = 20
          Caption = 'Vtas por Cliente/Rubros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object RxLabel5: TJvLabel
          Left = 453
          Top = 9
          Width = 246
          Height = 20
          Caption = 'Vtas por Vendedores / Rubros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object ceTotalRubro: TJvCalcEdit
          Left = 170
          Top = 482
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
        object ceTotalCliente: TJvCalcEdit
          Left = 708
          Top = 482
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
        end
        object ceTotalVendedor: TJvCalcEdit
          Left = 709
          Top = 189
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
        end
        object dbgRubros: TJvDBGrid
          Left = 3
          Top = 33
          Width = 431
          Height = 445
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSVtaRubro
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleButtons = True
          OnTitleBtnClick = dbgRubrosTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'RUBRO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_FC'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 76
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'TOTAL_FC_CIVA'
              Title.Alignment = taCenter
              Title.Caption = 'Total Final'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end>
        end
        object dbgVendedor: TJvDBGrid
          Left = 440
          Top = 33
          Width = 400
          Height = 152
          DataSource = DSVendedorRubro
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleButtons = True
          OnTitleBtnClick = dbgVendedorTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clTeal
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Caption = 'Nombre'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clTeal
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 147
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RUBRO'
              Title.Alignment = taCenter
              Title.Caption = 'Rubro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clTeal
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_FC'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clTeal
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end>
        end
        object dbgClientes: TJvDBGrid
          Left = 445
          Top = 240
          Width = 394
          Height = 238
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSClienteRubro
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleButtons = True
          OnTitleBtnClick = dbgClientesTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clTeal
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Caption = 'Nombre'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clTeal
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 147
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RUBRO'
              Title.Alignment = taCenter
              Title.Caption = 'Rubro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clTeal
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_FC'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clTeal
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end>
        end
        object chCalculaVendedores: TCheckBox
          Left = 713
          Top = 11
          Width = 116
          Height = 18
          Caption = 'Calcula Vendedores'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
        object chCalculaClientes: TCheckBox
          Left = 714
          Top = 216
          Width = 116
          Height = 18
          Caption = 'Calcula Clientes'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object ceTotalFinal: TJvCalcEdit
          Left = 295
          Top = 482
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 8
          DecimalPlacesAlwaysShown = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Grafico'
        ImageIndex = 1
        DesignSize = (
          995
          512)
        object Label2: TLabel
          Left = 11
          Top = 476
          Width = 27
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Zoom'
          ExplicitTop = 477
        end
        object Label3: TLabel
          Left = 11
          Top = 490
          Width = 27
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Persp'
          ExplicitTop = 491
        end
        object Label4: TLabel
          Left = 186
          Top = 478
          Width = 22
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = '3D%'
          ExplicitTop = 479
        end
        object Label5: TLabel
          Left = 409
          Top = 478
          Width = 7
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'X'
          ExplicitTop = 479
        end
        object Label6: TLabel
          Left = 408
          Top = 497
          Width = 7
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Y'
          ExplicitTop = 498
        end
        object dbGrafico: TDBChart
          Left = 0
          Top = 0
          Width = 995
          Height = 470
          BackWall.AutoHide = True
          BottomWall.Transparency = 22
          BottomWall.Transparent = True
          Foot.Visible = False
          Gradient.Balance = 54
          Gradient.EndColor = clSilver
          Gradient.MidColor = clWhite
          Gradient.StartColor = clSilver
          Gradient.Visible = True
          LeftWall.AutoHide = True
          LeftWall.Transparency = 3
          LeftWall.Transparent = True
          MarginBottom = 0
          MarginLeft = 0
          MarginRight = 0
          MarginTop = 0
          MarginUnits = muPixels
          ScrollMouseButton = mbMiddle
          SubFoot.Visible = False
          SubTitle.Alignment = taLeftJustify
          Title.Brush.Gradient.Visible = True
          Title.Font.Height = -13
          Title.Text.Strings = (
            'Ventas por Rubro')
          BottomAxis.AxisValuesFormat = ',0.00'
          BottomAxis.GridCentered = True
          Chart3DPercent = 30
          DepthAxis.AxisValuesFormat = ',0.00'
          LeftAxis.LabelsMultiLine = True
          LeftAxis.LabelsSeparation = 0
          LeftAxis.LabelStyle = talText
          LeftAxis.MinorTickLength = 1
          LeftAxis.RoundFirstLabel = False
          Legend.BevelWidth = 1
          Legend.Brush.Gradient.Direction = gdTopBottom
          Legend.Brush.Gradient.EndColor = clGray
          Legend.Brush.Gradient.MidColor = clWhite
          Legend.CheckBoxes = True
          Legend.ColorWidth = 15
          Legend.DividingLines.Visible = True
          Legend.FontSeriesColor = True
          Legend.LegendStyle = lsValues
          Legend.Symbol.Width = 15
          Legend.Title.Text.Strings = (
            'Categorias')
          Legend.Transparency = 50
          Legend.Transparent = True
          Pages.AutoScale = True
          Pages.MaxPointsPerPage = 15
          View3DOptions.Elevation = 315
          View3DOptions.FontZoom = 50
          View3DOptions.OrthoAngle = 30
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DOptions.Zoom = 93
          Zoom.MinimumPixels = 14
          Zoom.Pen.Mode = pmNotXor
          Zoom.UpLeftZooms = True
          Align = alTop
          TabOrder = 0
          Anchors = [akLeft, akTop, akRight, akBottom]
          OnDblClick = dbGraficoDblClick
          DefaultCanvas = 'TGDIPlusCanvas'
          PrintMargins = (
            5
            5
            5
            5)
          ColorPaletteIndex = 13
          object Series1: TBarSeries
            HoverElement = []
            ColorEachPoint = True
            Marks.Brush.Gradient.Visible = True
            Marks.Style = smsLabelValue
            Marks.Callout.Length = 8
            Marks.Clip = True
            Marks.MultiLine = True
            Marks.Symbol.Visible = True
            DataSource = CDSVtaRubro
            ValueFormat = ',0.00'
            XLabelsSource = 'RUBRO'
            MultiBar = mbSideAll
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loDescending
            YValues.ValueSource = 'TOTAL_FC'
          end
        end
        object tbZoom: TTrackBar
          Left = 40
          Top = 476
          Width = 137
          Height = 14
          Hint = 'Zoom'
          Anchors = [akLeft, akBottom]
          Max = 500
          Min = 1
          ParentShowHint = False
          Position = 100
          ShowHint = True
          ShowSelRange = False
          TabOrder = 1
          ThumbLength = 15
          OnChange = tbZoomChange
        end
        object tbPerspectiva: TTrackBar
          Left = 40
          Top = 490
          Width = 137
          Height = 18
          Hint = 'Zoom'
          Anchors = [akLeft, akBottom]
          Max = 200
          ParentShowHint = False
          Position = 20
          ShowHint = True
          ShowSelRange = False
          TabOrder = 2
          ThumbLength = 15
          OnChange = tbPerspectivaChange
        end
        object tbPorcentaje: TTrackBar
          Left = 208
          Top = 478
          Width = 81
          Height = 18
          Hint = 'Porcentaje'
          Anchors = [akLeft, akBottom]
          Max = 100
          Min = 1
          ParentShowHint = False
          Position = 20
          ShowHint = True
          ShowSelRange = False
          TabOrder = 3
          ThumbLength = 15
          OnChange = tbPorcentajeChange
        end
        object tbX: TTrackBar
          Left = 422
          Top = 478
          Width = 77
          Height = 18
          Hint = 'Porcentaje'
          Anchors = [akLeft, akBottom]
          Max = 1500
          Min = -1500
          ParentShowHint = False
          Position = 20
          ShowHint = True
          ShowSelRange = False
          TabOrder = 4
          ThumbLength = 15
          OnChange = tbXChange
        end
        object tbY: TTrackBar
          Left = 422
          Top = 493
          Width = 77
          Height = 18
          Hint = 'Porcentaje'
          Anchors = [akLeft, akBottom]
          Max = 1500
          Min = -1500
          ParentShowHint = False
          Position = 20
          ShowHint = True
          ShowSelRange = False
          TabOrder = 5
          ThumbLength = 15
          OnChange = tbYChange
        end
        object BitBtn1: TBitBtn
          Left = 675
          Top = 478
          Width = 75
          Height = 21
          Anchors = [akLeft, akBottom]
          Caption = '&Imprimir'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          TabOrder = 6
          OnClick = BitBtn1Click
        end
        object chRef: TCheckBox
          Left = 536
          Top = 478
          Width = 97
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Ver Referencias'
          Checked = True
          State = cbChecked
          TabOrder = 7
          OnClick = chRefClick
        end
        object upBtnGraf: TUpDown
          Left = 639
          Top = 478
          Width = 16
          Height = 20
          Hint = 'Cambia el Per'#237'odo'
          Anchors = [akLeft, akBottom]
          Min = -360
          Max = 360
          ParentShowHint = False
          Position = 100
          ShowHint = True
          TabOrder = 8
          OnClick = upBtnGrafClick
        end
        object TrackBar1: TTrackBar
          Left = 221
          Top = 495
          Width = 60
          Height = 18
          Hint = 'Porcentaje'
          Anchors = [akLeft, akBottom]
          Max = 1500
          Min = -1500
          ParentShowHint = False
          Position = 20
          ShowHint = True
          ShowSelRange = False
          TabOrder = 9
          ThumbLength = 15
          OnChange = TrackBar1Change
        end
        object CheckBox1: TCheckBox
          Left = 183
          Top = 495
          Width = 49
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Otx'
          Checked = True
          State = cbChecked
          TabOrder = 10
          OnClick = CheckBox1Click
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Grupos'
        ImageIndex = 2
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 995
          Height = 512
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            FilterBox.Visible = fvNever
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DSVtaRubro
            DataController.KeyFieldNames = 'SUC'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoGroupsAlwaysExpanded]
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0.00'
                Kind = skSum
                FieldName = 'TOTAL_NC'
                Column = cxGrid1DBTableView1Column4
                DisplayText = 'Total NC'
              end
              item
                Format = '0.00'
                Kind = skSum
                FieldName = 'TOTAL_FC'
                Column = cxGrid1DBTableView1Column3
                DisplayText = 'Total Facturado'
              end>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGrid1DBTableView1Column5: TcxGridDBColumn
              DataBinding.FieldName = 'SUC'
              Visible = False
              GroupIndex = 0
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRO'
              Width = 36
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              Width = 253
            end
            object cxGrid1DBTableView1Column3: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_FC'
              Width = 109
            end
            object cxGrid1DBTableView1Column4: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_NC'
              Width = 116
            end
          end
          object cxGrid1DBChartView1: TcxGridDBChartView
            DataController.DataSource = DSVtaRubro
            DataController.DetailKeyFieldNames = 'SUC'
            DataController.KeyFieldNames = 'SUC'
            DiagramBar.Active = True
            DiagramBar.AxisCategory.Title.Text = 'Grafico'
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
          object cxGrid1Level2: TcxGridLevel
            GridView = cxGrid1DBChartView1
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Detalles de Tasas'
        ImageIndex = 3
        DesignSize = (
          995
          512)
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 995
          Height = 481
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSVtaDetalle
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          OptionsView.ColumnFields = False
          OptionsView.ColumnGrandTotalText = 'Total'
          OptionsView.RowGrandTotalText = 'Total'
          PopupMenu = PopupMenu1
          TabOrder = 0
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'DETALLE_RUBRO'
            MinWidth = 220
            Visible = True
            UniqueName = 'Rubro'
          end
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_SUBRUBRO'
            MinWidth = 320
            Visible = True
            UniqueName = 'SubRubro'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            IsCaptionAssigned = True
            Caption = 'Exento'
            DataBinding.FieldName = 'EXENTO'
            MinWidth = 25
            Visible = True
            UniqueName = 'Exento'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'Gravado'
            DataBinding.FieldName = 'GRAVADO'
            MinWidth = 25
            Visible = True
            UniqueName = 'Gravado'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'RUBRO_STK'
            Visible = True
            UniqueName = 'Cod.Rub'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'SUBRUBRO_STK'
            Visible = True
            UniqueName = 'Cod.SubR'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            CustomTotals = <
              item
                SummaryType = stAverage
                DisplayFormat = '0.00%'
              end>
            DataBinding.FieldName = 'TASA'
            DisplayFormat = ',0.00 '
            PropertiesClassName = 'TcxCalcEditProperties'
            ImageAlign = taRightJustify
            SummaryType = stAverage
            Visible = True
            Width = 70
            UniqueName = 'Tasa'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            Area = faData
            AreaIndex = 2
            IsCaptionAssigned = True
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
            MinWidth = 25
            Visible = True
            UniqueName = 'Total'
          end
        end
        object BitBtn2: TBitBtn
          Left = 875
          Top = 487
          Width = 79
          Height = 22
          Hint = 'Buscar Registro'
          Anchors = [akLeft, akBottom]
          Caption = '&Buscar'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF006D7C94006F7C8800FF00FF00FF00
            FF000D7FA9000E80AA000D7FA9000E80AA000E80AA001081AB00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00788295001F89E00059A9DC00FF00FF00048C
            B90048D5EE0022D7FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA00FF00
            FF00FF00FF00FF00FF00788295002087DE004EB7FF0057AEF400048CB9008CFA
            FD0058E9FD0022D7FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180
            A700FF00FF008B8697001F7ECE004EB7FF0057AEF400FF00FF00088EBC008CFA
            FD0058E9FD0022D7FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE87
            7C008C6B6C006092BD004EB7FF004EB7FF00FF00FF00FF00FF00088EBC008CFA
            FD0058E9FD0024D8FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2
            D900CFB7A100AD8580004EB7FF00FF00FF00FF00FF00FF00FF00048CB900B4FF
            FF00B6F6FF00C6F5FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFE
            D600FFF2BA00CAA08C00FF00FF00FF00FF00FF00FF00FF00FF00048CB900B8ED
            F60030BCDC0011A7D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5
            CD00F8D09800ECD1AC00AD858000FF00FF00FF00FF00FF00FF00088EBC004BC6
            DC0058E9FD0022D7FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DA
            AB00F3BE8000F5DEB500AD858000FF00FF00FF00FF00FF00FF00048CB9008CFA
            FD0058E9FD0024D8FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB
            9A00FEEAB900E4CCA900AD858000FF00FF00FF00FF00FF00FF00048CB9008CFA
            FD0058E9FD0024D8FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7
            E000F9F6F200AD858000FF00FF00FF00FF00FF00FF00FF00FF00048CB9008CFA
            FD0058E9FD0024D8FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5
            B700AD858000AD858000FF00FF00FF00FF00FF00FF00FF00FF00088EBC008CFA
            FD0081F8FE0071F9FE007BFFFF0097FCFD00A1C6C8008F989B00868388008770
            7000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00048CB900FBFF
            FF00F5FFFE00D2FFFF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80
            AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A91
            C100F5FFFE00E3FEFF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00088EBC00088EBC00048CB900088EBC00088EBC00088EBC00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 723
          Top = 487
          Width = 70
          Height = 22
          Anchors = [akLeft, akBottom]
          Caption = '&Imprimir'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 799
          Top = 487
          Width = 70
          Height = 22
          Anchors = [akLeft, akBottom]
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
          TabOrder = 3
          OnClick = BitBtn4Click
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1003
      Height = 69
      Align = alTop
      BevelOuter = bvNone
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 392
        Top = 8
        Width = 109
        Height = 16
        Caption = 'Sucursal de Venta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel1: TJvLabel
        Left = 748
        Top = 8
        Width = 43
        Height = 16
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object RxLabel2: TJvLabel
        Left = 860
        Top = 7
        Width = 38
        Height = 16
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object Label7: TLabel
        Left = 15
        Top = 18
        Width = 222
        Height = 36
        Caption = 'Ventas x Rubro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -31
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 567
        Top = 5
        Width = 135
        Height = 19
        Caption = 'Filtrar comprobantes'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object dbcSucursal: TJvDBLookupCombo
        Left = 392
        Top = 27
        Width = 247
        Height = 23
        DisplayEmpty = 'Todas las Sucursales'
        EmptyValue = '-1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursal
        ParentFont = False
        TabOrder = 1
      end
      object Desde: TJvDateEdit
        Left = 748
        Top = 26
        Width = 95
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 2
      end
      object Hasta: TJvDateEdit
        Left = 860
        Top = 25
        Width = 98
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 3
      end
      object SpinButton1: TSpinButton
        Left = 964
        Top = 27
        Width = 20
        Height = 22
        DownGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        TabOrder = 4
        UpGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000080
          8000008080000080800000000000000000000000000000000000000000000080
          8000008080000080800000808000008080000000000000000000000000000080
          8000008080000080800000808000008080000080800000808000000000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        OnDownClick = SpinButton1DownClick
        OnUpClick = SpinButton1UpClick
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 609
    Width = 1003
    Align = alBottom
    ButtonHeight = 30
    ExplicitTop = 609
    ExplicitWidth = 1003
    inherited btConfirma: TBitBtn
      Height = 30
      Visible = False
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Height = 30
      Visible = False
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Height = 30
      Visible = False
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Height = 30
      Visible = False
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Height = 30
      Visible = False
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Height = 30
      Visible = False
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Height = 30
      Visible = False
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 28
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 585
      Top = 0
      Width = 75
      Height = 30
      Action = Imprimir
      Caption = '&Imprimir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 639
    Width = 1003
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 639
    ExplicitWidth = 1003
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 914
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 914
    end
  end
  inherited ActionList1: TActionList
    Left = 536
    Top = 80
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
    end
  end
  inherited DSBase: TDataSource
    Left = 664
    Top = 64
  end
  inherited ImageList1: TImageList
    Left = 264
    Top = 16
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
    Left = 352
    Top = 224
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 888
    Top = 128
  end
  object DSVtaRubro: TDataSource
    DataSet = CDSVtaRubro
    Left = 272
    Top = 128
  end
  object DSVendedorRubro: TDataSource
    DataSet = CDSVendedorRubro
    Left = 640
    Top = 144
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.819485486110000000
    ReportOptions.LastChange = 39638.819485486110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 344
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBVendedorRubro: TfrxDBDataset
    UserName = 'frDBVendedorRubro'
    CloseDataSource = False
    DataSource = DSVendedorRubro
    BCDToCurrency = False
    DataSetOptions = []
    Left = 696
    Top = 216
  end
  object frDBVtaRubro: TfrxDBDataset
    UserName = 'frDBVtaRubro'
    CloseDataSource = False
    DataSource = DSVtaRubro
    BCDToCurrency = False
    DataSetOptions = []
    Left = 688
    Top = 344
  end
  object DSClienteRubro: TDataSource
    DataSet = CDSClienteRubro
    Left = 584
    Top = 400
  end
  object frDBVtaCliente: TfrxDBDataset
    UserName = 'frDBVtaCliente'
    CloseDataSource = False
    DataSource = DSClienteRubro
    BCDToCurrency = False
    DataSetOptions = []
    Left = 688
    Top = 416
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 56
    Top = 448
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 120
    Top = 440
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = QSuc
    Left = 192
    Top = 440
  end
  object CDSVtaRubro: TClientDataSet
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
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVtaRubro'
    Left = 176
    Top = 152
    object CDSVtaRubroRUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSVtaRubroDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object CDSVtaRubroSUC: TIntegerField
      DisplayLabel = 'Sucursal'
      FieldName = 'SUC'
      Origin = 'SUC'
    end
    object CDSVtaRubroTOTAL_FC: TFloatField
      DisplayLabel = 'Total Fc'
      FieldName = 'TOTAL_FC'
      Origin = 'TOTAL_FC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVtaRubroTOTAL_NC: TFloatField
      DisplayLabel = 'Total Nc'
      FieldName = 'TOTAL_NC'
      Origin = 'TOTAL_NC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVtaRubroCOSTO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVtaRubroGANANCIA: TFloatField
      DisplayLabel = 'Ganancia'
      FieldName = 'GANANCIA'
      Origin = 'GANANCIA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVtaRubroTOTAL_FC_CIVA: TFloatField
      DisplayLabel = 'Total Fc Final'
      FieldName = 'TOTAL_FC_CIVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVtaRubroTOTAL_NC_CIVA: TFloatField
      DisplayLabel = 'Total Nc Final'
      FieldName = 'TOTAL_NC_CIVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVtaRubroCOSTO_CIVA: TFloatField
      DisplayLabel = 'Costo C/Iva'
      FieldName = 'COSTO_CIVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPVtaRubro: TDataSetProvider
    DataSet = QVtaRubro
    Left = 104
    Top = 152
  end
  object CDSVendedorRubro: TClientDataSet
    Aggregates = <>
    Params = <
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
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVendedorRubro'
    Left = 688
    Top = 168
    object CDSVendedorRubroRUBRO: TStringField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSVendedorRubroVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSVendedorRubroNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSVendedorRubroDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object CDSVendedorRubroTOTAL_FC: TFloatField
      DisplayLabel = 'Total Fc'
      FieldName = 'TOTAL_FC'
      Origin = 'TOTAL_FC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVendedorRubroTOTAL_NC: TFloatField
      DisplayLabel = 'Total Nc'
      FieldName = 'TOTAL_NC'
      Origin = 'TOTAL_NC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVendedorRubroCOSTO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSVendedorRubroGANANCIA: TFloatField
      DisplayLabel = 'Ganancia'
      FieldName = 'GANANCIA'
      Origin = 'GANANCIA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPVendedorRubro: TDataSetProvider
    DataSet = QVendedorRubro
    Left = 480
    Top = 136
  end
  object CDSClienteRubro: TClientDataSet
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
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPClienteRubro'
    Left = 504
    Top = 400
    object CDSClienteRubroRUBRO: TStringField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSClienteRubroCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object CDSClienteRubroNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSClienteRubroDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object CDSClienteRubroTOTAL_FC: TFloatField
      DisplayLabel = 'Total Fc'
      FieldName = 'TOTAL_FC'
      Origin = 'TOTAL_FC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSClienteRubroTOTAL_NC: TFloatField
      DisplayLabel = 'Total Nc'
      FieldName = 'TOTAL_NC'
      Origin = 'TOTAL_NC'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSClienteRubroCOSTO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSClienteRubroGANANCIA: TFloatField
      DisplayLabel = 'Ganancia'
      FieldName = 'GANANCIA'
      Origin = 'GANANCIA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPClienteRubro: TDataSetProvider
    DataSet = QClienteRubro
    Left = 432
    Top = 416
  end
  object DSPVtaDetalle: TDataSetProvider
    DataSet = QVtaDetalle
    Left = 464
    Top = 224
  end
  object CDSVtaDetalle: TClientDataSet
    Aggregates = <>
    Params = <
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
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
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
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVtaDetalle'
    Left = 552
    Top = 208
    object CDSVtaDetalleRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Rub'
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Size = 3
    end
    object CDSVtaDetalleSUBRUBRO_STK: TStringField
      DisplayLabel = 'Cod.SubR'
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSVtaDetalleDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Size = 35
    end
    object CDSVtaDetalleDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'SubRubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Size = 45
    end
    object CDSVtaDetalleTASA: TFloatField
      DisplayLabel = 'Tasa'
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = ',0.00'
    end
    object CDSVtaDetalleGRAVADO: TFloatField
      DisplayLabel = 'Gravado'
      FieldName = 'GRAVADO'
      Origin = 'GRAVADO'
      DisplayFormat = ',0.00'
    end
    object CDSVtaDetalleEXENTO: TFloatField
      DisplayLabel = 'Exento'
      FieldName = 'EXENTO'
      Origin = 'EXENTO'
      DisplayFormat = ',0.00'
    end
    object CDSVtaDetalleTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object DSVtaDetalle: TDataSource
    DataSet = CDSVtaDetalle
    Left = 632
    Top = 216
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 885
    Top = 336
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
      ReportDocument.CreationDate = 45415.282890995370000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 832
    Top = 128
  end
  object QVtaRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Venta_por_rubro(:Desde,:Hasta,:sucursal)')
    Left = 44
    Top = 165
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
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QVendedorRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from venta_por_rubro_por_vendedor(:desde,:hasta,:sucurs' +
        'al)')
    Left = 404
    Top = 141
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QVtaDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT s.rubro_stk,s.subrubro_stk,r.detalle_rubro,sr.detalle_sub' +
        'rubro,g.tasa,'
      
        '       Sum(d.total_gravado * (1-(fc.dsto*0.01))) as Gravado ,Sum' +
        '(d.total_exento * (1-(fc.dsto*0.01))) as Exento,sum(d.total * (1' +
        '-(fc.dsto*0.01))) as Total FROM fcvtacab fc'
      'left join fcvtadet d on d.id_cabfac=fc.id_fc'
      'left join stock s on s.codigo_stk=d.codigoarticulo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'left join gravamen g on g.codigo=s.tasa_iva'
      'left join comprobantes c on c.letra=fc.letrafac and'
      '                           c.tipo_comprob=fc.tipocpbte and'
      '                           c.clase_comprob=fc.clasecpbte and'
      '                           c.sucursal=fc.sucursal and'
      '                           c.compra_venta='#39'V'#39
      
        'where (fc.fechavta between :desde and :hasta) and ((fc.sucursal ' +
        '= :sucursal) or ( :sucursal = -1 )) and (fc.tipocpbte<>'#39'NC'#39') and' +
        ' (fc.anulado<>'#39'S'#39')'
      ''
      
        'group by s.rubro_stk,s.subrubro_stk,r.detalle_rubro,sr.detalle_s' +
        'ubrubro,g.tasa'
      ''
      'union'
      ''
      
        'SELECT s2.rubro_stk,s2.subrubro_stk,r2.detalle_rubro,sr2.detalle' +
        '_subrubro,g2.tasa,'
      
        '       (Sum(d2.total_gravado *(1-(fc2.dsto*0.01)))* -1) as Grava' +
        'do ,(Sum(d2.total_exento *(1-(fc2.dsto*0.01)))* -1) as Exento,(s' +
        'um(d2.total*(1-(fc2.dsto*0.01))) * -1) as Total FROM fcvtacab fc' +
        '2'
      'left join fcvtadet d2 on d2.id_cabfac=fc2.id_fc'
      'left join stock s2 on s2.codigo_stk=d2.codigoarticulo'
      'left join rubros r2 on r2.codigo_rubro=s2.rubro_stk'
      'left join subrubros sr2 on sr2.codigo_subrubro=s2.subrubro_stk'
      'left join gravamen g2 on g2.codigo=s2.tasa_iva'
      'left join comprobantes c2 on c2.letra=fc2.letrafac and'
      '                           c2.tipo_comprob=fc2.tipocpbte and'
      '                           c2.clase_comprob=fc2.clasecpbte and'
      '                           c2.sucursal=fc2.sucursal and'
      '                           c2.compra_venta='#39'V'#39
      
        'where (fc2.fechavta between :desde and :hasta) and ((fc2.sucursa' +
        'l = :sucursal) or ( :sucursal = -1 )) and (fc2.tipocpbte='#39'NC'#39') a' +
        'nd (fc2.anulado<>'#39'S'#39')'
      ''
      
        'group by s2.rubro_stk,s2.subrubro_stk,r2.detalle_rubro,sr2.detal' +
        'le_subrubro,g2.tasa')
    Left = 396
    Top = 221
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QClienteRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from Venta_por_rubro_por_cliente(:Desde,:Hasta,:sucursa' +
        'l)')
    Left = 380
    Top = 413
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
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 228
    Top = 333
    object LimpiarFiltros: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltrosClick
    end
  end
  object QSuc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,detalle from sucursal'
      '')
    Left = 116
    Top = 501
  end
end

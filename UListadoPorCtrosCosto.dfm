inherited FormLstPorCtroCosto: TFormLstPorCtroCosto
  Left = 194
  Top = 83
  Anchors = [akLeft, akTop, akRight]
  Caption = 'Listado Egresos por Centro de Costo'
  ClientHeight = 737
  ClientWidth = 1222
  Position = poDesktopCenter
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1240
  ExplicitHeight = 778
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1222
    Height = 684
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1222
    ExplicitHeight = 684
    object pcDatos: TPageControl
      Left = 0
      Top = 65
      Width = 1222
      Height = 619
      ActivePage = pagAgrupado
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = ImageList1
      ParentFont = False
      TabOrder = 0
      OnChange = pcDatosChange
      OnChanging = pcDatosChanging
      object pagListado: TTabSheet
        Caption = 'Listado'
        ImageIndex = -1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1214
          Height = 539
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          object cxGrid2DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSGastos
            OptionsSelection.HideSelection = True
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1TIPODETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPODETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Options.CellMerging = True
              Width = 84
            end
            object cxGrid2DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Options.CellMerging = True
            end
            object cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid2DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGrid2DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object cxGrid2DBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              HeaderAlignmentHorz = taCenter
              Width = 300
            end
            object cxGrid2DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid2DBTableView1PORCENTAJE: TcxGridDBColumn
              DataBinding.FieldName = 'PORCENTAJE'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object cxGrid2DBTableView1IMPORTE_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE_CPBTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid2DBTableView1NETO_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_CPBTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid2DBTableView1DEBE: TcxGridDBColumn
              DataBinding.FieldName = 'DEBE'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid2DBTableView1HABER: TcxGridDBColumn
              DataBinding.FieldName = 'HABER'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid2DBTableView1RUBRO_DET: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRO_DET'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid2DBTableView1SUBRUB_DET: TcxGridDBColumn
              DataBinding.FieldName = 'SUBRUB_DET'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
        object pnPie_listado: TPanel
          Left = 0
          Top = 539
          Width = 1214
          Height = 51
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1214
            51)
          object Label7: TLabel
            Left = 1078
            Top = 5
            Width = 27
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 945
          end
          object Label4: TLabel
            Left = 959
            Top = 5
            Width = 29
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Haber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 826
          end
          object Label3: TLabel
            Left = 840
            Top = 5
            Width = 26
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Debe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 707
          end
          object edHaber: TJvCalcEdit
            Left = 959
            Top = 24
            Width = 113
            Height = 21
            DisplayFormat = ',0.00;-,0.00;-'
            Anchors = [akTop, akRight]
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
          end
          object edSaldo: TJvCalcEdit
            Left = 1078
            Top = 24
            Width = 113
            Height = 21
            DisplayFormat = ',0.00;-,0.00;-'
            Anchors = [akTop, akRight]
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
          end
          object edDebe: TJvCalcEdit
            Left = 840
            Top = 24
            Width = 113
            Height = 21
            DisplayFormat = ',0.00;-,0.00;-'
            Anchors = [akTop, akRight]
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
          end
          object BitBtn1: TBitBtn
            Left = 11
            Top = 11
            Width = 96
            Height = 26
            Caption = 'Exportar XLS'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
              078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
              BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
              CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
              FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
              D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
              CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
              FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
              A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
              EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
              FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
              1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
              87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
              FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
              750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
              FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
              FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
              D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
              00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
              C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
              89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 3
            OnClick = BitBtn1Click
          end
          object chAgrupaTipo: TAdvOfficeCheckBox
            Left = 178
            Top = 6
            Width = 143
            Height = 20
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = chAgrupaTipoClick
            Alignment = taLeftJustify
            Caption = 'Agrupar por Tipo Op.'
            ReturnIsTab = False
            State = cbChecked
            Version = '1.8.4.2'
          end
          object chAgrupaCtro: TAdvOfficeCheckBox
            Left = 178
            Top = 29
            Width = 204
            Height = 20
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = chAgrupaCtroClick
            Alignment = taLeftJustify
            Caption = 'Agrupar por Desc.Cto.Cost.'
            ReturnIsTab = False
            State = cbChecked
            Version = '1.8.4.2'
          end
        end
      end
      object pagRelacion: TTabSheet
        Caption = 'Relacion'
        ImageIndex = -1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1214
          Height = 563
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSGastos
            DataController.Filter.AutoDataSetFilter = True
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'DEBE'
                Column = cxGrid1DBTableView1DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'HABER'
                Column = cxGrid1DBTableView1HABER
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'SALDOCALCULADO'
                Column = cxGrid1DBTableView1SALDOCALCULADO
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1HABER
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1SALDOCALCULADO
              end>
            DataController.Summary.SummaryGroups = <
              item
                SummaryItems = <
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    FieldName = 'DEBE'
                    Column = cxGrid1DBTableView1DEBE
                  end
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    FieldName = 'HABER'
                    Column = cxGrid1DBTableView1HABER
                  end
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    FieldName = 'SALDOCALCULADO'
                    Column = cxGrid1DBTableView1SALDOCALCULADO
                  end>
              end>
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = 'Sin Datos'
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              Caption = 'Ctro. de Costo'
              DataBinding.FieldName = 'DETALLE'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1TIPODETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPODETALLE'
              Visible = False
              GroupIndex = 1
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1RUBRO_DET: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRO_DET'
              Visible = False
              GroupIndex = 2
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1SUBRUB_DET: TcxGridDBColumn
              DataBinding.FieldName = 'SUBRUB_DET'
              Visible = False
              GroupIndex = 3
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              MinWidth = 15
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 15
            end
            object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
            end
            object cxGrid1DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 88
            end
            object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 95
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 50
            end
            object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 250
            end
            object cxGrid1DBTableView1NETO_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_CPBTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
            end
            object cxGrid1DBTableView1IMPORTE_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE_CPBTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
            end
            object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
            end
            object cxGrid1DBTableView1DEBE: TcxGridDBColumn
              DataBinding.FieldName = 'DEBE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 96
            end
            object cxGrid1DBTableView1HABER: TcxGridDBColumn
              DataBinding.FieldName = 'HABER'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 80
            end
            object cxGrid1DBTableView1SALDOCALCULADO: TcxGridDBColumn
              DataBinding.FieldName = 'SALDOCALCULADO'
              HeaderAlignmentHorz = taCenter
              Width = 97
            end
            object cxGrid1DBTableView1PORCENTAJE: TcxGridDBColumn
              DataBinding.FieldName = 'PORCENTAJE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 60
            end
          end
          object cxGrid1TableView1: TcxGridTableView
            object cxGrid1TableView1Column1: TcxGridColumn
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object pnPie_Relacion: TPanel
          Left = 0
          Top = 563
          Width = 1214
          Height = 27
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          object chbGrupo: TAdvOfficeCheckBox
            Left = 19
            Top = 4
            Width = 154
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = chbGrupoClick
            Alignment = taLeftJustify
            Caption = 'Mostrar Campos del Grupo'
            ReturnIsTab = False
            Version = '1.8.4.2'
          end
        end
      end
      object pagAgrupado: TTabSheet
        Caption = 'Agrupado'
        ImageIndex = -1
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1214
          Height = 554
          Align = alClient
          DataSource = DSGastos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsView.ColumnGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalWidth = 126
          OptionsView.RowTotals = False
          OptionsView.ScrollBars = ssVertical
          OptionsView.TotalsForSingleValues = True
          ParentFont = False
          PopupMenu = PopupMenu1
          Styles.Total = cxStyle1
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'FECHA'
            ImageAlign = taCenter
            MinWidth = 9
            SortBySummaryInfo.SummaryType = stCount
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'DETALLE'
            ImageAlign = taCenter
            Visible = True
            UniqueName = 'Desc.Ctro.Costo'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'DEBE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'
            Properties.UseThousandSeparator = True
            ImageAlign = taCenter
            Visible = True
            Width = 80
            UniqueName = 'Debe'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            DataBinding.FieldName = 'HABER'
            DisplayFormat = '0.00'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'
            Properties.UseThousandSeparator = True
            ImageAlign = taCenter
            GroupExpanded = False
            Visible = True
            Width = 80
            UniqueName = 'Haber'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 4
            DataBinding.FieldName = 'NOMBRE'
            ImageAlign = taCenter
            MinWidth = 30
            TotalsVisibility = tvNone
            Visible = True
            Width = 150
            UniqueName = 'Nombre'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 6
            DataBinding.FieldName = 'PORCENTAJE'
            DisplayFormat = '0.00'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '0.00'
            GroupExpanded = False
            TotalsVisibility = tvNone
            Visible = True
            Width = 47
            UniqueName = '%'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'TIPOCPBTE'
            ImageAlign = taCenter
            SortBySummaryInfo.SummaryType = stCustom
            TotalsVisibility = tvNone
            Visible = True
            Width = 50
            UniqueName = 'Tp'
          end
          object cxDBPivotGrid1Field9: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'IMPORTE_CPBTE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'
            SummaryType = stCustom
            TotalsVisibility = tvNone
            Visible = True
            Width = 60
            UniqueName = 'Imp.Cpbte.'
          end
          object cxDBPivotGrid1Field11: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'TIPODETALLE'
            SummaryType = stCustom
            SortBySummaryInfo.SummaryType = stCustom
            Visible = True
            Width = 100
            UniqueName = 'Tipo Op.'
          end
          object cxDBPivotGrid1Field12: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'CLASECPBTE'
            MinWidth = 10
            TotalsVisibility = tvNone
            Visible = True
            Width = 50
            UniqueName = 'Cl'
          end
          object cxDBPivotGrid1Field14: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'RUBRO_DET'
            Visible = True
            UniqueName = 'Rubro Det.'
          end
          object cxDBPivotGrid1Field16: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 3
            DataBinding.FieldName = 'SUBRUB_DET'
            Visible = True
            UniqueName = 'Sub Rub.Det'
          end
          object cxDBPivotGrid1Field17: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 5
            DataBinding.FieldName = 'TOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            SummaryType = stCustom
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Imp.Total'
          end
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'NROCPBTE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid1Field10: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'CODIGO'
            Visible = True
            UniqueName = 'Codigo'
          end
          object cxDBPivotGrid1Field13: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid1Field15: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'DETALLEART'
            Visible = True
            UniqueName = 'Det.Articulo'
          end
          object cxDBPivotGrid1Field18: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'SaldoDH'
            Visible = True
            UniqueName = 'Saldo D/H'
          end
        end
        object pnTotales: TJvPanel
          Left = 3
          Top = 275
          Width = 320
          Height = 127
          Color = clTeal
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object Label2: TLabel
            Left = 11
            Top = 9
            Width = 113
            Height = 13
            Caption = 'Mostrar Los Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 288
            Top = 3
            Width = 23
            Height = 22
            Hint = 'Cerrar'
            Caption = 'X'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object chOpSumas: TCheckListBox
            Left = 11
            Top = 28
            Width = 300
            Height = 77
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 17
            Items.Strings = (
              'Total General Columnas'
              'Totales por Columnas'
              'Total General Linea'
              'Totales Por Linea')
            ParentFont = False
            TabOrder = 0
            OnClick = chOpSumasClick
          end
        end
        object pnPie_Agrupado: TPanel
          Left = 0
          Top = 554
          Width = 1214
          Height = 36
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            1214
            36)
          object Label6: TLabel
            Left = 11
            Top = 6
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
            OnClick = Label6Click
          end
          object Label5: TLabel
            Left = 113
            Top = 6
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Muestra Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label5Click
          end
          object btExcelGastos: TBitBtn
            Left = 929
            Top = 6
            Width = 70
            Height = 25
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
            OnClick = btExcelGastosClick
          end
          object BitBtn2: TBitBtn
            Left = 1005
            Top = 6
            Width = 70
            Height = 25
            Anchors = [akTop, akRight]
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
            TabOrder = 1
            OnClick = BitBtn2Click
          end
        end
      end
      object pagAgrupado_2: TTabSheet
        Caption = 'Agr.Nuevo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = -1
        ParentFont = False
        object cxDBPivotGrid2: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1214
          Height = 549
          Align = alClient
          DataSource = DSGastos_2
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsView.ColumnGrandTotalText = 'Totales'
          OptionsView.FilterFields = False
          OptionsView.RowGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalWidth = 126
          OptionsView.ScrollBars = ssVertical
          OptionsView.TotalsForSingleValues = True
          PopupMenu = PopupMenu2
          Styles.Total = cxStyle1
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid2MouseDown
          OnMouseMove = cxDBPivotGrid2MouseMove
          OnMouseUp = cxDBPivotGrid2MouseUp
          object cxDBPivotGridField1: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'FECHA'
            ImageAlign = taCenter
            MinWidth = 9
            SortBySummaryInfo.SummaryType = stCount
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGridField2: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'DESCRIPCION_CTRCOSTO'
            ImageAlign = taCenter
            Visible = True
            UniqueName = 'Des.Ctro Costo'
          end
          object cxDBPivotGridField3: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'IMP_DEBE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'
            Properties.UseThousandSeparator = True
            ImageAlign = taCenter
            Visible = True
            Width = 80
            UniqueName = 'Debe'
          end
          object cxDBPivotGridField4: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            DataBinding.FieldName = 'IMP_HABER'
            DisplayFormat = '0.00'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'
            Properties.UseThousandSeparator = True
            ImageAlign = taCenter
            GroupExpanded = False
            Visible = True
            Width = 80
            UniqueName = 'Haber'
          end
          object cxDBPivotGridField5: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 4
            DataBinding.FieldName = 'NOMBRE'
            ImageAlign = taCenter
            MinWidth = 30
            TotalsVisibility = tvNone
            Visible = True
            Width = 150
            UniqueName = 'Nombre'
          end
          object cxDBPivotGridField6: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 6
            DataBinding.FieldName = 'PORCENTAJE'
            DisplayFormat = '0.00'
            Options.Filtering = False
            Options.Sorting = False
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '0.00'
            GroupExpanded = False
            TotalsVisibility = tvNone
            Visible = True
            Width = 55
            UniqueName = '%'
          end
          object cxDBPivotGridField7: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'TIPOCPBTE'
            ImageAlign = taCenter
            SortBySummaryInfo.SummaryType = stCustom
            TotalsVisibility = tvNone
            Visible = True
            Width = 50
            UniqueName = 'Tp'
          end
          object cxDBPivotGridField8: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'IMPORTE_CPBTE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'
            SummaryType = stCustom
            TotalsVisibility = tvNone
            Visible = True
            Width = 60
            UniqueName = 'Imp.Cpbte'
          end
          object cxDBPivotGridField9: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'TIPODETALLE'
            SummaryType = stCustom
            SortBySummaryInfo.SummaryType = stCustom
            Visible = True
            Width = 100
            UniqueName = 'Tipo Op.'
          end
          object cxDBPivotGridField10: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'CLASECPBTE'
            MinWidth = 10
            TotalsVisibility = tvNone
            Visible = True
            Width = 50
            UniqueName = 'Cl'
          end
          object cxDBPivotGridField11: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'RUBRO_DET'
            Visible = True
            UniqueName = 'Rubro'
          end
          object cxDBPivotGridField12: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 3
            DataBinding.FieldName = 'SUBRUB_DET'
            Visible = True
            UniqueName = 'Sub Rubro'
          end
          object cxDBPivotGridField13: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 5
            DataBinding.FieldName = 'NETO_CPBTE'
            PropertiesClassName = 'TcxCalcEditProperties'
            SummaryType = stCustom
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Neto.Cpbte'
          end
          object cxDBPivotGridField14: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'NROCPBTE'
            Visible = True
            UniqueName = 'Nro.Cpbte.'
          end
          object cxDBPivotGrid2Field1: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'SALDODEBEHABER'
            Visible = True
            UniqueName = 'Saldo D/H'
          end
        end
        object pnTotales_2: TJvPanel
          Left = 3
          Top = 275
          Width = 320
          Height = 127
          Color = clTeal
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object Label8: TLabel
            Left = 11
            Top = 9
            Width = 113
            Height = 13
            Caption = 'Mostrar Los Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton2: TSpeedButton
            Left = 288
            Top = 3
            Width = 23
            Height = 22
            Hint = 'Cerrar'
            Caption = 'X'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
          object chOpSumas_2: TCheckListBox
            Left = 11
            Top = 28
            Width = 300
            Height = 77
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 17
            Items.Strings = (
              'Total General Columnas'
              'Totales por Columnas'
              'Total General Linea'
              'Totales Por Linea')
            ParentFont = False
            TabOrder = 0
            OnClick = chOpSumas_2Click
          end
        end
        object pnPie_Nuevo: TPanel
          Left = 0
          Top = 549
          Width = 1214
          Height = 41
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            1214
            41)
          object Label10: TLabel
            Left = 14
            Top = 12
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
            OnClick = Label10Click
          end
          object Label9: TLabel
            Left = 113
            Top = 12
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Muestra Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label9Click
          end
          object BitBtn9: TBitBtn
            Left = 1046
            Top = 6
            Width = 103
            Height = 30
            Anchors = [akTop, akRight]
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
            TabOrder = 0
            OnClick = BitBtn9Click
          end
          object BitBtn14: TBitBtn
            Left = 951
            Top = 6
            Width = 81
            Height = 28
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
            OnClick = BitBtn14Click
          end
        end
      end
      object pagControlCompras: TTabSheet
        Caption = 'Control Compras'
        ImageIndex = -1
        object cxGridCompras: TcxGrid
          Left = 0
          Top = 0
          Width = 940
          Height = 590
          Align = alClient
          DragMode = dmAutomatic
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          object cxGridComprasDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridComprasDBTableView1DblClick
            OnDragDrop = cxGridComprasDBTableView1DragDrop
            OnDragOver = cxGridComprasDBTableView1DragOver
            OnCustomDrawCell = cxGridComprasDBTableView1CustomDrawCell
            DataController.DataSource = DSFcCompra
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridComprasDBTableView1TOTALNETO
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridComprasDBTableView1TOTALAPLICADO
              end>
            DataController.OnDetailExpanding = cxGrid2DBTableView1DataControllerDetailExpanding
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridComprasDBTableView1ID_FC: TcxGridDBColumn
              DataBinding.FieldName = 'ID_FC'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 55
            end
            object cxGridComprasDBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 30
            end
            object cxGridComprasDBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'FECHACOMPRA'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.AutoSelect = False
              Properties.DateButtons = []
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridComprasDBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taCenter
              MinWidth = 25
              Options.Moving = False
              Width = 120
            end
            object cxGridComprasDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 58
            end
            object cxGridComprasDBTableView1RAZONSOCIAL: TcxGridDBColumn
              DataBinding.FieldName = 'RAZONSOCIAL'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 277
            end
            object cxGridComprasDBTableView1TOTALNETO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALNETO'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 112
            end
            object cxGridComprasDBTableView1TOTALAPLICADO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALAPLICADO'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              VisibleForEditForm = bTrue
              Width = 110
            end
          end
          object cxGridComprasDBTableView2: TcxGridDBTableView
            OnDragDrop = cxGridComprasDBTableView2DragDrop
            OnDragOver = cxGridComprasDBTableView2DragOver
            OnKeyDown = cxGridComprasDBTableView2KeyDown
            DataController.DataSource = DSDetFcCompra
            DataController.DetailKeyFieldNames = 'ID_FC'
            DataController.KeyFieldNames = 'ID'
            DataController.MasterKeyFieldNames = 'ID_FC'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridComprasDBTableView2IMPUTADO
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridComprasDBTableView2DETIMPORTE
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridComprasDBTableView2IMPUTADO
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridComprasDBTableView2DETIMPORTE
              end>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGridComprasDBTableView2ID_FC: TcxGridDBColumn
              DataBinding.FieldName = 'ID_FC'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridComprasDBTableView2TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridComprasDBTableView2CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridComprasDBTableView2NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridComprasDBTableView2CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 58
            end
            object cxGridComprasDBTableView2DETALLE_STK: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_STK'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridComprasDBTableView2DETIMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'DETIMPORTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridComprasDBTableView2CTRO_COSTO: TcxGridDBColumn
              DataBinding.FieldName = 'CTRO_COSTO'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsEditFixedList
              Properties.ImmediatePost = True
              HeaderAlignmentHorz = taCenter
            end
            object cxGridComprasDBTableView2DESCRIPCION: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCION'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Options.ShowEditButtons = isebNever
              Options.Moving = False
              Width = 190
            end
            object cxGridComprasDBTableView2IMPUTADO: TcxGridDBColumn
              DataBinding.FieldName = 'IMPUTADO'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.IncSearch = False
              Options.ShowEditButtons = isebNever
            end
            object cxGridComprasDBTableView2PORCENTAJE: TcxGridDBColumn
              DataBinding.FieldName = 'PORCENTAJE'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 45
            end
          end
          object cxGridComprasLevel1: TcxGridLevel
            GridView = cxGridComprasDBTableView1
            object cxGridComprasLevel2: TcxGridLevel
              GridView = cxGridComprasDBTableView2
            end
          end
        end
        object pnCentrosDeCostos: TPanel
          Left = 940
          Top = 0
          Width = 274
          Height = 590
          Align = alRight
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object btExpand: TBitBtn
            Left = 8
            Top = 394
            Width = 25
            Height = 25
            Hint = 'Expandir Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000C17833CA7C20
              C67620CA7C20C46F14B5652CFFFFFFFFFFFFFFFFFFFFFEFEB66629CB8834CA7C
              20C6761FCA7A1FBF712BD59337EDAF21E6A119E69E1DC67C34F6EBE3FFFFFFFF
              FFFFFFFFFFFFFFFFF7EDE7CA8A4BEBB73FE59D13ECAA1DCE7D21D39141E9AE2E
              E6A11ED98E20CC936EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC47D49DF9A
              27E7A727E8A620CF822BDA9E4DEBB039E8B555F1BF46D48621D5A079FFFFFFFF
              FFFFFFFFFFFFFFFFC77D42E4A330F0B836D9912CF1CB68D68D33D99D4CD18D47
              CB8753F1D283F5C44AD88F2BD6A076FFFFFFFFFFFFCC8649E6AA3AF4C246D993
              32D2976FD29757D89A4BCA8037FAF2EAFFFFFFD08E53F3D485F7CA54DA9530DB
              A87ED08D4FE9B043F5C852DD9938D9A479FFFFFFF8EEE5CA8036FFFFFFFFFFFF
              FFFFFFFFFFFFD3924EF2D587F5CD60DFA03DE7B149F5CD5DDF9F3FDBA879FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD89D60EDC876F3
              C85BF4CE65E0A242E1B388FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDA9D55EDBD59F4CE70F6D06BE3A745E4B888FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9B4BF1C968FBDC80E8
              B44FF2DA9BFDE391E6AD48E4B57CFFFFFFFFFFFFFFFFFFFFFFFFDC9D44FCF5EC
              FFFFFFE2A555F2CD6FFCE28CEAB858E6B880E1AC63F9EAB8FEE795E8B44FE7B9
              7EFFFFFFFBF2E7DC9B43E9BD63E5AE57E3A856F4D378FCE593EBBE5FE8BC80FF
              FFFFFFFFFFE5AE5FFAE9B9FDE99BEABA56E8B979E5AE56E8B453EFCA7DF9E293
              F4D376FBE498EFC164EBC083FFFFFFFFFFFFFFFFFFFFFFFFE6AF5CF9ECBAFCE9
              A1F1C96BF9E08BEEC166EFCB80FBE7A5FADD8AF1D072ECBE77FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAB667F8E09CFADE8AFAE395EEC063F3D084FEEFBC
              FBE7A7F9E49DEFC169FDF5E8FFFFFFFFFFFFFFFFFFFFFFFFFDF7EBEDBD60FBE3
              9BFBE6A4FDECACF2C96EF0C76AF4D48AF3D387F5D588F2CD75ECB954FFFFFFFF
              FFFFFFFFFFFFFFFEECB954F3CE77F5D586F4D180F5D488F0C569}
            TabOrder = 2
            OnClick = btExpandClick
          end
          object btContraer: TBitBtn
            Left = 39
            Top = 393
            Width = 25
            Height = 25
            Hint = 'Contraer Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB6413FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5
              730ADE871DF5DCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDF9F7DDA280D77409E58C00E0840EF0C99AFFFDFBFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDDFAE93D27E38D97D0BE2
              8A07E58C04E18301DE7B08E9AD6AFDF7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAF4F1C87B53D97D0DEB9C0FEA9B09E9980AE58F0CE1850AEAAD33E29A32F2C8
              9DFFFFFFFFFFFFFFFFFFFFFFFFFEFCFBCF9173DB8314F2AD1CEFAA1DF2C047EF
              B842E89613F2C258DC9340E9BA9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C2B2
              CB6D15F6BD2CF2B82DEAB047D4813FE3A13EF8D678DE995FF3DCD1FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFC57B4FECAB2DF5C33BECB036DB9E77E9C3ABE7
              B566DD9E60FBF4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC7A3A
              F5C746F8CC48DC8D28F2DCD1FFFFFFD9905BFFFFFFFFFFFFFFFFFFF7DDB7F8DF
              B6F9E3B4FCECC7FFFFFFFFFFFFD48840F6CF56FAD357DC903EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF6DAB7EAA22DF3C348F4C649F6CB5CFFFFFFFFFFFFC9773D
              F9D761FEE069E2A037EBCCBCFFFFFFFFFFFFFFFFFFFFFFFFF5D7B4F1BD46FADD
              68F9D866F6CB5DFFFFFFFFFFFFCD8E6AEDBB4BFFEA7AF9D766D58844F7E8DFFF
              FFFFFFFFFFFAEDE0EBAF53FADB69FCE073F8D86BF7D480FFFFFFFFFFFFEFDCD3
              C87838FFEF87FEEA80FADD71DE933CE3A667E7AD69E9AA42FBDE72FDE67DFDE9
              8EF5C960FDF3DCFFFFFFFFFFFFFFFFFFDCB19EDC9C45FFF69BFFF08FFFF08AFC
              E275FCE275FFED87FFEC8DFFEF9FF3CE6BF9DFADFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD9A792DA954AF8E08DFFF8A9FFF5ABFFF5ACFFF4ACFBE59AF2C367F6D4
              9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DACFDDA47ADE9C59E8
              B363EBBB66E8B164EFC184FAEAD3FFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 3
            OnClick = btContraerClick
          end
          object chAutoContraer: TAdvOfficeCheckBox
            Left = 6
            Top = 431
            Width = 83
            Height = 17
            Checked = True
            TabOrder = 1
            TabStop = True
            Alignment = taRightJustify
            Caption = 'Auto Contraer '
            ReturnIsTab = False
            State = cbChecked
            Version = '1.8.4.2'
          end
          object JvDBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 272
            Height = 377
            Align = alTop
            DataSource = DSCtroCosto
            DragMode = dmAutomatic
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Alignment = taCenter
                Title.Caption = 'Ctro.Costo'
                Width = 228
                Visible = True
              end>
          end
        end
      end
      object pagControlEgresos: TTabSheet
        Caption = 'Control Egresos'
        ImageIndex = -1
        DesignSize = (
          1214
          590)
        object DBText1: TDBText
          Left = 111
          Top = 578
          Width = 65
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'ID'
          DataSource = DSDetEgresos
        end
        object DBText2: TDBText
          Left = 36
          Top = 578
          Width = 65
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'ID_EGRESO'
          DataSource = DSControlEgresos
        end
        object cxGridEgresos: TcxGrid
          Left = -5
          Top = 0
          Width = 940
          Height = 562
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          object cxGridEgresosView: TcxGridDBTableView
            OnDblClick = cxGridEgresosViewDblClick
            OnDragDrop = cxGridEgresosViewDragDrop
            OnDragOver = cxGridEgresosViewDragOver
            OnCustomDrawCell = cxGridEgresosViewCustomDrawCell
            DataController.DataSource = DSControlEgresos
            DataController.DetailKeyFieldNames = 'ID_EGRESO'
            DataController.KeyFieldNames = 'ID_EGRESO'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridEgresosViewIMPORTE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridEgresosViewTOTALAPLICADO
              end>
            DataController.OnDetailExpanding = cxGridEgresosDBTableView1DataControllerDetailExpanding
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridEgresosViewColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridEgresosViewTIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object cxGridEgresosViewNUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 125
            end
            object cxGridEgresosViewDETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 340
            end
            object cxGridEgresosViewIMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 98
            end
            object cxGridEgresosViewTOTALAPLICADO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALAPLICADO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 111
            end
            object cxGridEgresosViewID_EGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_EGRESO'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridDetEgresosView: TcxGridDBTableView
            OnDragDrop = cxGridDetEgresosViewDragDrop
            OnDragOver = cxGridDetEgresosViewDragOver
            OnKeyDown = cxGridDetEgresosViewKeyDown
            DataController.DataSource = DSDetEgresos
            DataController.DetailKeyFieldNames = 'ID_EGRESO'
            DataController.KeyFieldNames = 'ID'
            DataController.MasterKeyFieldNames = 'ID_EGRESO'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Column = cxGridDetEgresosViewDETIMPORTE
              end
              item
                Kind = skSum
                Column = cxGridDetEgresosViewIMPUTADO
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridDetEgresosViewDETIMPORTE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGridDetEgresosViewIMPUTADO
              end>
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGridDetEgresosViewID_EGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_EGRESO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
            end
            object cxGridDetEgresosViewID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
            end
            object cxGridDetEgresosViewFECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 60
            end
            object cxGridDetEgresosViewTIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxGridDetEgresosViewCLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxGridDetEgresosViewNROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
            end
            object cxGridDetEgresosViewCODIGOGASTO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOGASTO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 50
            end
            object cxGridDetEgresosViewDETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 220
            end
            object cxGridDetEgresosViewDETIMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'DETIMPORTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 70
            end
            object cxGridDetEgresosViewCTRO_COSTO: TcxGridDBColumn
              DataBinding.FieldName = 'CTRO_COSTO'
              PropertiesClassName = 'TcxComboBoxProperties'
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object cxGridDetEgresosViewDESCRIPCION: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCION'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 240
            end
            object cxGridDetEgresosViewIMPUTADO: TcxGridDBColumn
              DataBinding.FieldName = 'IMPUTADO'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridDetEgresosViewPORCENTAJE: TcxGridDBColumn
              Caption = '%'
              DataBinding.FieldName = 'PORCENTAJE'
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridDetEgresosViewID_APPCOSTO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_APPCOSTO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
            end
          end
          object cxGridEgresosLevel1: TcxGridLevel
            GridView = cxGridEgresosView
            object cxGridEgresosLevel2: TcxGridLevel
              GridView = cxGridDetEgresosView
            end
          end
        end
        object Panel4: TPanel
          Left = 940
          Top = 0
          Width = 274
          Height = 590
          Align = alRight
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object BitBtn3: TBitBtn
            Left = 14
            Top = 397
            Width = 25
            Height = 25
            Hint = 'Expandir Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000C17833CA7C20
              C67620CA7C20C46F14B5652CFFFFFFFFFFFFFFFFFFFFFEFEB66629CB8834CA7C
              20C6761FCA7A1FBF712BD59337EDAF21E6A119E69E1DC67C34F6EBE3FFFFFFFF
              FFFFFFFFFFFFFFFFF7EDE7CA8A4BEBB73FE59D13ECAA1DCE7D21D39141E9AE2E
              E6A11ED98E20CC936EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC47D49DF9A
              27E7A727E8A620CF822BDA9E4DEBB039E8B555F1BF46D48621D5A079FFFFFFFF
              FFFFFFFFFFFFFFFFC77D42E4A330F0B836D9912CF1CB68D68D33D99D4CD18D47
              CB8753F1D283F5C44AD88F2BD6A076FFFFFFFFFFFFCC8649E6AA3AF4C246D993
              32D2976FD29757D89A4BCA8037FAF2EAFFFFFFD08E53F3D485F7CA54DA9530DB
              A87ED08D4FE9B043F5C852DD9938D9A479FFFFFFF8EEE5CA8036FFFFFFFFFFFF
              FFFFFFFFFFFFD3924EF2D587F5CD60DFA03DE7B149F5CD5DDF9F3FDBA879FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD89D60EDC876F3
              C85BF4CE65E0A242E1B388FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDA9D55EDBD59F4CE70F6D06BE3A745E4B888FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9B4BF1C968FBDC80E8
              B44FF2DA9BFDE391E6AD48E4B57CFFFFFFFFFFFFFFFFFFFFFFFFDC9D44FCF5EC
              FFFFFFE2A555F2CD6FFCE28CEAB858E6B880E1AC63F9EAB8FEE795E8B44FE7B9
              7EFFFFFFFBF2E7DC9B43E9BD63E5AE57E3A856F4D378FCE593EBBE5FE8BC80FF
              FFFFFFFFFFE5AE5FFAE9B9FDE99BEABA56E8B979E5AE56E8B453EFCA7DF9E293
              F4D376FBE498EFC164EBC083FFFFFFFFFFFFFFFFFFFFFFFFE6AF5CF9ECBAFCE9
              A1F1C96BF9E08BEEC166EFCB80FBE7A5FADD8AF1D072ECBE77FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAB667F8E09CFADE8AFAE395EEC063F3D084FEEFBC
              FBE7A7F9E49DEFC169FDF5E8FFFFFFFFFFFFFFFFFFFFFFFFFDF7EBEDBD60FBE3
              9BFBE6A4FDECACF2C96EF0C76AF4D48AF3D387F5D588F2CD75ECB954FFFFFFFF
              FFFFFFFFFFFFFFFEECB954F3CE77F5D586F4D180F5D488F0C569}
            TabOrder = 1
            OnClick = BitBtn3Click
          end
          object BitBtn4: TBitBtn
            Left = 45
            Top = 397
            Width = 25
            Height = 25
            Hint = 'Contraer Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB6413FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5
              730ADE871DF5DCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDF9F7DDA280D77409E58C00E0840EF0C99AFFFDFBFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDDFAE93D27E38D97D0BE2
              8A07E58C04E18301DE7B08E9AD6AFDF7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAF4F1C87B53D97D0DEB9C0FEA9B09E9980AE58F0CE1850AEAAD33E29A32F2C8
              9DFFFFFFFFFFFFFFFFFFFFFFFFFEFCFBCF9173DB8314F2AD1CEFAA1DF2C047EF
              B842E89613F2C258DC9340E9BA9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C2B2
              CB6D15F6BD2CF2B82DEAB047D4813FE3A13EF8D678DE995FF3DCD1FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFC57B4FECAB2DF5C33BECB036DB9E77E9C3ABE7
              B566DD9E60FBF4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC7A3A
              F5C746F8CC48DC8D28F2DCD1FFFFFFD9905BFFFFFFFFFFFFFFFFFFF7DDB7F8DF
              B6F9E3B4FCECC7FFFFFFFFFFFFD48840F6CF56FAD357DC903EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF6DAB7EAA22DF3C348F4C649F6CB5CFFFFFFFFFFFFC9773D
              F9D761FEE069E2A037EBCCBCFFFFFFFFFFFFFFFFFFFFFFFFF5D7B4F1BD46FADD
              68F9D866F6CB5DFFFFFFFFFFFFCD8E6AEDBB4BFFEA7AF9D766D58844F7E8DFFF
              FFFFFFFFFFFAEDE0EBAF53FADB69FCE073F8D86BF7D480FFFFFFFFFFFFEFDCD3
              C87838FFEF87FEEA80FADD71DE933CE3A667E7AD69E9AA42FBDE72FDE67DFDE9
              8EF5C960FDF3DCFFFFFFFFFFFFFFFFFFDCB19EDC9C45FFF69BFFF08FFFF08AFC
              E275FCE275FFED87FFEC8DFFEF9FF3CE6BF9DFADFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD9A792DA954AF8E08DFFF8A9FFF5ABFFF5ACFFF4ACFBE59AF2C367F6D4
              9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DACFDDA47ADE9C59E8
              B363EBBB66E8B164EFC184FAEAD3FFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 2
            OnClick = BitBtn4Click
          end
          object JvDBGrid2: TDBGrid
            Left = 1
            Top = 1
            Width = 272
            Height = 377
            Align = alTop
            DataSource = DSCtroCosto
            DragMode = dmAutomatic
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Alignment = taCenter
                Title.Caption = 'Ctro.Costo'
                Width = 228
                Visible = True
              end>
          end
        end
      end
      object pagControlIngresos: TTabSheet
        Caption = 'Control Ingresos'
        ImageIndex = -1
        object cxGridIngresos: TcxGrid
          Left = 0
          Top = 0
          Width = 941
          Height = 590
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          object cxGridIngresosView: TcxGridDBTableView
            OnDblClick = cxGridIngresosViewDblClick
            OnDragDrop = cxGridIngresosViewDragDrop
            OnDragOver = cxGridIngresosViewDragOver
            OnCustomDrawCell = cxGridIngresosViewCustomDrawCell
            DataController.DataSource = DSControlIngresos
            DataController.OnDetailExpanding = cxGridIngresoscxGridDBTableView1DataControllerDetailExpanding
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridIngresosViewTIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 34
            end
            object cxGridIngresosViewColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridIngresosViewNUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
            end
            object cxGridIngresosViewDETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 340
            end
            object cxGridIngresosViewIMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 93
            end
            object cxGridIngresosViewTOTALAPLICADO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALAPLICADO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Width = 108
            end
            object cxGridIngresosViewID_INGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_INGRESO'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridDetIngresosView: TcxGridDBTableView
            OnDragDrop = cxGridDetIngresosViewDragDrop
            OnDragOver = cxGridDetIngresosViewDragOver
            OnKeyDown = cxGridDetIngresosViewKeyDown
            DataController.DataSource = DSDetIngresos
            DataController.DetailKeyFieldNames = 'ID_INGRESO'
            DataController.KeyFieldNames = 'ID'
            DataController.MasterKeyFieldNames = 'ID_INGRESO'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
              end
              item
                Format = ',0.00'
                Kind = skSum
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGridDetIngresosViewID_INGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_INGRESO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetIngresosViewID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetIngresosViewFECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetIngresosViewTIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetIngresosViewCLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetIngresosViewNROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetIngresosViewCODIGOINGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOINGRESO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 50
            end
            object cxGridDetIngresosViewDETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 220
            end
            object cxGridDetIngresosViewDETIMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'DETIMPORTE'
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridDetIngresosViewCTRO_COSTO: TcxGridDBColumn
              DataBinding.FieldName = 'CTRO_COSTO'
              PropertiesClassName = 'TcxComboBoxProperties'
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object cxGridDetIngresosViewDESCRIPCION: TcxGridDBColumn
              Caption = 'Detalle'
              DataBinding.FieldName = 'DESCRIPCION'
              HeaderAlignmentHorz = taCenter
              Width = 240
            end
            object cxGridDetIngresosViewIMPUTADO: TcxGridDBColumn
              DataBinding.FieldName = 'IMPUTADO'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridDetIngresosViewPORCENTAJE: TcxGridDBColumn
              DataBinding.FieldName = 'PORCENTAJE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridDetIngresosViewID_APPCOSTO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_APPCOSTO'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridIngresosLevel1: TcxGridLevel
            GridView = cxGridIngresosView
            object cxGridIngresosLevel2: TcxGridLevel
              GridView = cxGridDetIngresosView
            end
          end
        end
        object Panel5: TPanel
          Left = 941
          Top = 0
          Width = 273
          Height = 590
          Align = alRight
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object BitBtn5: TBitBtn
            Left = 14
            Top = 395
            Width = 25
            Height = 25
            Hint = 'Expandir Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000C17833CA7C20
              C67620CA7C20C46F14B5652CFFFFFFFFFFFFFFFFFFFFFEFEB66629CB8834CA7C
              20C6761FCA7A1FBF712BD59337EDAF21E6A119E69E1DC67C34F6EBE3FFFFFFFF
              FFFFFFFFFFFFFFFFF7EDE7CA8A4BEBB73FE59D13ECAA1DCE7D21D39141E9AE2E
              E6A11ED98E20CC936EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC47D49DF9A
              27E7A727E8A620CF822BDA9E4DEBB039E8B555F1BF46D48621D5A079FFFFFFFF
              FFFFFFFFFFFFFFFFC77D42E4A330F0B836D9912CF1CB68D68D33D99D4CD18D47
              CB8753F1D283F5C44AD88F2BD6A076FFFFFFFFFFFFCC8649E6AA3AF4C246D993
              32D2976FD29757D89A4BCA8037FAF2EAFFFFFFD08E53F3D485F7CA54DA9530DB
              A87ED08D4FE9B043F5C852DD9938D9A479FFFFFFF8EEE5CA8036FFFFFFFFFFFF
              FFFFFFFFFFFFD3924EF2D587F5CD60DFA03DE7B149F5CD5DDF9F3FDBA879FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD89D60EDC876F3
              C85BF4CE65E0A242E1B388FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDA9D55EDBD59F4CE70F6D06BE3A745E4B888FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9B4BF1C968FBDC80E8
              B44FF2DA9BFDE391E6AD48E4B57CFFFFFFFFFFFFFFFFFFFFFFFFDC9D44FCF5EC
              FFFFFFE2A555F2CD6FFCE28CEAB858E6B880E1AC63F9EAB8FEE795E8B44FE7B9
              7EFFFFFFFBF2E7DC9B43E9BD63E5AE57E3A856F4D378FCE593EBBE5FE8BC80FF
              FFFFFFFFFFE5AE5FFAE9B9FDE99BEABA56E8B979E5AE56E8B453EFCA7DF9E293
              F4D376FBE498EFC164EBC083FFFFFFFFFFFFFFFFFFFFFFFFE6AF5CF9ECBAFCE9
              A1F1C96BF9E08BEEC166EFCB80FBE7A5FADD8AF1D072ECBE77FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAB667F8E09CFADE8AFAE395EEC063F3D084FEEFBC
              FBE7A7F9E49DEFC169FDF5E8FFFFFFFFFFFFFFFFFFFFFFFFFDF7EBEDBD60FBE3
              9BFBE6A4FDECACF2C96EF0C76AF4D48AF3D387F5D588F2CD75ECB954FFFFFFFF
              FFFFFFFFFFFFFFFEECB954F3CE77F5D586F4D180F5D488F0C569}
            TabOrder = 1
            OnClick = BitBtn5Click
          end
          object BitBtn6: TBitBtn
            Left = 45
            Top = 395
            Width = 25
            Height = 25
            Hint = 'Contraer Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB6413FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5
              730ADE871DF5DCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDF9F7DDA280D77409E58C00E0840EF0C99AFFFDFBFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDDFAE93D27E38D97D0BE2
              8A07E58C04E18301DE7B08E9AD6AFDF7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAF4F1C87B53D97D0DEB9C0FEA9B09E9980AE58F0CE1850AEAAD33E29A32F2C8
              9DFFFFFFFFFFFFFFFFFFFFFFFFFEFCFBCF9173DB8314F2AD1CEFAA1DF2C047EF
              B842E89613F2C258DC9340E9BA9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C2B2
              CB6D15F6BD2CF2B82DEAB047D4813FE3A13EF8D678DE995FF3DCD1FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFC57B4FECAB2DF5C33BECB036DB9E77E9C3ABE7
              B566DD9E60FBF4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC7A3A
              F5C746F8CC48DC8D28F2DCD1FFFFFFD9905BFFFFFFFFFFFFFFFFFFF7DDB7F8DF
              B6F9E3B4FCECC7FFFFFFFFFFFFD48840F6CF56FAD357DC903EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF6DAB7EAA22DF3C348F4C649F6CB5CFFFFFFFFFFFFC9773D
              F9D761FEE069E2A037EBCCBCFFFFFFFFFFFFFFFFFFFFFFFFF5D7B4F1BD46FADD
              68F9D866F6CB5DFFFFFFFFFFFFCD8E6AEDBB4BFFEA7AF9D766D58844F7E8DFFF
              FFFFFFFFFFFAEDE0EBAF53FADB69FCE073F8D86BF7D480FFFFFFFFFFFFEFDCD3
              C87838FFEF87FEEA80FADD71DE933CE3A667E7AD69E9AA42FBDE72FDE67DFDE9
              8EF5C960FDF3DCFFFFFFFFFFFFFFFFFFDCB19EDC9C45FFF69BFFF08FFFF08AFC
              E275FCE275FFED87FFEC8DFFEF9FF3CE6BF9DFADFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD9A792DA954AF8E08DFFF8A9FFF5ABFFF5ACFFF4ACFBE59AF2C367F6D4
              9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DACFDDA47ADE9C59E8
              B363EBBB66E8B164EFC184FAEAD3FFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 2
            OnClick = BitBtn6Click
          end
          object BitBtn12: TBitBtn
            Left = 174
            Top = 399
            Width = 96
            Height = 26
            Caption = 'Exportar XLS'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
              078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
              BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
              CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
              FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
              D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
              CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
              FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
              A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
              EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
              FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
              1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
              87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
              FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
              750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
              FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
              FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
              D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
              00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
              C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
              89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 3
          end
          object JvDBGrid3: TDBGrid
            Left = 1
            Top = 1
            Width = 271
            Height = 377
            Align = alTop
            DataSource = DSCtroCosto
            DragMode = dmAutomatic
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Alignment = taCenter
                Title.Caption = 'Ctro.Costo'
                Width = 228
                Visible = True
              end>
          end
        end
      end
      object pagControlPersonal: TTabSheet
        Caption = 'Control Personal'
        ImageIndex = -1
        object cxGridVales: TcxGrid
          Left = 0
          Top = 0
          Width = 937
          Height = 590
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          object cxGridValesDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridValesDBTableView1DblClick
            OnDragDrop = cxGridValesDBTableView1DragDrop
            OnDragOver = cxGridValesDBTableView1DragOver
            OnCustomDrawCell = cxGridValesDBTableView1CustomDrawCell
            DataController.DataSource = DSControlVales
            DataController.OnDetailExpanding = cxGridValesDBTableView1DataControllerDetailExpanding
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridValesDBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
              Width = 44
            end
            object cxGridValesDBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
              Width = 125
            end
            object cxGridValesDBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
              Width = 425
            end
            object cxGridValesDBTableView1IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
              Width = 104
            end
            object cxGridValesDBTableView1TOTALAPLICADO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALAPLICADO'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
              Width = 100
            end
            object cxGridValesDBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridValesDBTableView2: TcxGridDBTableView
            OnDragDrop = cxGridValesDBTableView2DragDrop
            OnDragOver = cxGridValesDBTableView2DragOver
            OnKeyDown = cxGridValesDBTableView2KeyDown
            DataController.DataSource = DSDetPersonal
            DataController.DetailKeyFieldNames = 'ID'
            DataController.KeyFieldNames = 'CODIGO'
            DataController.MasterKeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
              end
              item
                Format = ',0.00'
                Kind = skSum
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGridValesDBTableView2ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridValesDBTableView2FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridValesDBTableView2TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridValesDBTableView2CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridValesDBTableView2NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridValesDBTableView2CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Options.Editing = False
              Options.Focusing = False
              Width = 50
            end
            object cxGridValesDBTableView2DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              Width = 220
            end
            object cxGridValesDBTableView2IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              Width = 70
            end
            object cxGridValesDBTableView2CTRO_COSTO: TcxGridDBColumn
              DataBinding.FieldName = 'CTRO_COSTO'
              PropertiesClassName = 'TcxComboBoxProperties'
              Width = 40
            end
            object cxGridValesDBTableView2DESCRIPCION: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCION'
              Width = 240
            end
            object cxGridValesDBTableView2IMPUTADO: TcxGridDBColumn
              DataBinding.FieldName = 'IMPUTADO'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              Width = 80
            end
            object cxGridValesDBTableView2PORCENTAJE: TcxGridDBColumn
              DataBinding.FieldName = 'PORCENTAJE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              Width = 70
            end
            object cxGridValesDBTableView2ID_APPCOSTO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_APPCOSTO'
              Visible = False
              Options.Focusing = False
            end
          end
          object cxGridValesLevel1: TcxGridLevel
            GridView = cxGridValesDBTableView1
            object cxGridValesLevel2: TcxGridLevel
              GridView = cxGridValesDBTableView2
            end
          end
        end
        object Panel6: TPanel
          Left = 937
          Top = 0
          Width = 277
          Height = 590
          Align = alRight
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object BitBtn7: TBitBtn
            Left = 6
            Top = 399
            Width = 25
            Height = 25
            Hint = 'Expandir Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000C17833CA7C20
              C67620CA7C20C46F14B5652CFFFFFFFFFFFFFFFFFFFFFEFEB66629CB8834CA7C
              20C6761FCA7A1FBF712BD59337EDAF21E6A119E69E1DC67C34F6EBE3FFFFFFFF
              FFFFFFFFFFFFFFFFF7EDE7CA8A4BEBB73FE59D13ECAA1DCE7D21D39141E9AE2E
              E6A11ED98E20CC936EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC47D49DF9A
              27E7A727E8A620CF822BDA9E4DEBB039E8B555F1BF46D48621D5A079FFFFFFFF
              FFFFFFFFFFFFFFFFC77D42E4A330F0B836D9912CF1CB68D68D33D99D4CD18D47
              CB8753F1D283F5C44AD88F2BD6A076FFFFFFFFFFFFCC8649E6AA3AF4C246D993
              32D2976FD29757D89A4BCA8037FAF2EAFFFFFFD08E53F3D485F7CA54DA9530DB
              A87ED08D4FE9B043F5C852DD9938D9A479FFFFFFF8EEE5CA8036FFFFFFFFFFFF
              FFFFFFFFFFFFD3924EF2D587F5CD60DFA03DE7B149F5CD5DDF9F3FDBA879FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD89D60EDC876F3
              C85BF4CE65E0A242E1B388FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDA9D55EDBD59F4CE70F6D06BE3A745E4B888FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9B4BF1C968FBDC80E8
              B44FF2DA9BFDE391E6AD48E4B57CFFFFFFFFFFFFFFFFFFFFFFFFDC9D44FCF5EC
              FFFFFFE2A555F2CD6FFCE28CEAB858E6B880E1AC63F9EAB8FEE795E8B44FE7B9
              7EFFFFFFFBF2E7DC9B43E9BD63E5AE57E3A856F4D378FCE593EBBE5FE8BC80FF
              FFFFFFFFFFE5AE5FFAE9B9FDE99BEABA56E8B979E5AE56E8B453EFCA7DF9E293
              F4D376FBE498EFC164EBC083FFFFFFFFFFFFFFFFFFFFFFFFE6AF5CF9ECBAFCE9
              A1F1C96BF9E08BEEC166EFCB80FBE7A5FADD8AF1D072ECBE77FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAB667F8E09CFADE8AFAE395EEC063F3D084FEEFBC
              FBE7A7F9E49DEFC169FDF5E8FFFFFFFFFFFFFFFFFFFFFFFFFDF7EBEDBD60FBE3
              9BFBE6A4FDECACF2C96EF0C76AF4D48AF3D387F5D588F2CD75ECB954FFFFFFFF
              FFFFFFFFFFFFFFFEECB954F3CE77F5D586F4D180F5D488F0C569}
            TabOrder = 1
            OnClick = BitBtn3Click
          end
          object BitBtn8: TBitBtn
            Left = 37
            Top = 399
            Width = 25
            Height = 25
            Hint = 'Contraer Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB6413FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5
              730ADE871DF5DCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDF9F7DDA280D77409E58C00E0840EF0C99AFFFDFBFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDDFAE93D27E38D97D0BE2
              8A07E58C04E18301DE7B08E9AD6AFDF7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAF4F1C87B53D97D0DEB9C0FEA9B09E9980AE58F0CE1850AEAAD33E29A32F2C8
              9DFFFFFFFFFFFFFFFFFFFFFFFFFEFCFBCF9173DB8314F2AD1CEFAA1DF2C047EF
              B842E89613F2C258DC9340E9BA9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C2B2
              CB6D15F6BD2CF2B82DEAB047D4813FE3A13EF8D678DE995FF3DCD1FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFC57B4FECAB2DF5C33BECB036DB9E77E9C3ABE7
              B566DD9E60FBF4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC7A3A
              F5C746F8CC48DC8D28F2DCD1FFFFFFD9905BFFFFFFFFFFFFFFFFFFF7DDB7F8DF
              B6F9E3B4FCECC7FFFFFFFFFFFFD48840F6CF56FAD357DC903EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF6DAB7EAA22DF3C348F4C649F6CB5CFFFFFFFFFFFFC9773D
              F9D761FEE069E2A037EBCCBCFFFFFFFFFFFFFFFFFFFFFFFFF5D7B4F1BD46FADD
              68F9D866F6CB5DFFFFFFFFFFFFCD8E6AEDBB4BFFEA7AF9D766D58844F7E8DFFF
              FFFFFFFFFFFAEDE0EBAF53FADB69FCE073F8D86BF7D480FFFFFFFFFFFFEFDCD3
              C87838FFEF87FEEA80FADD71DE933CE3A667E7AD69E9AA42FBDE72FDE67DFDE9
              8EF5C960FDF3DCFFFFFFFFFFFFFFFFFFDCB19EDC9C45FFF69BFFF08FFFF08AFC
              E275FCE275FFED87FFEC8DFFEF9FF3CE6BF9DFADFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD9A792DA954AF8E08DFFF8A9FFF5ABFFF5ACFFF4ACFBE59AF2C367F6D4
              9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DACFDDA47ADE9C59E8
              B363EBBB66E8B164EFC184FAEAD3FFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 2
            OnClick = BitBtn4Click
          end
          object dbgCentroCosto: TDBGrid
            Left = 1
            Top = 1
            Width = 275
            Height = 377
            Align = alTop
            DataSource = DSCtroCosto
            DragMode = dmAutomatic
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Alignment = taCenter
                Title.Caption = 'Ctro.Costo'
                Width = 228
                Visible = True
              end>
          end
        end
      end
      object pagGstoBanco: TTabSheet
        Caption = 'Control Gsto.Banco'
        ImageIndex = -1
        object cxGridGstoBancos: TcxGrid
          Left = 0
          Top = 0
          Width = 913
          Height = 590
          Align = alLeft
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          object cxGridGastosBcoView: TcxGridDBTableView
            OnDblClick = cxGridGastosBcoViewDblClick
            OnDragDrop = cxGridGastosBcoViewDragDrop
            OnDragOver = cxGridGastosBcoViewDragOver
            OnCustomDrawCell = cxGridGastosBcoViewCustomDrawCell
            DataController.DataSource = DSControlGstoBco
            DataController.OnDetailExpanding = cxGridValesDBTableView1DataControllerDetailExpanding
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridGastosBcoViewID_EGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              HeaderAlignmentHorz = taCenter
              Width = 49
            end
            object cxGridGastosBcoViewFECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Width = 118
            end
            object cxGridGastosBcoViewTIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 85
            end
            object cxGridGastosBcoViewNUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridGastosBcoViewDETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'BANCO'
              HeaderAlignmentHorz = taCenter
              Width = 197
            end
            object cxGridGastosBcoViewIMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Width = 107
            end
            object cxGridGastosBcoViewTOTALAPLICADO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALAPLICADO'
              HeaderAlignmentHorz = taCenter
              Width = 105
            end
          end
          object cxGridDetGastosBcoView: TcxGridDBTableView
            OnDragDrop = cxGridValesDBTableView2DragDrop
            OnDragOver = cxGridValesDBTableView2DragOver
            OnKeyDown = cxGridDetGastosBcoViewKeyDown
            DataController.DataSource = DSDetGstoBco
            DataController.DetailKeyFieldNames = 'ID'
            DataController.KeyFieldNames = 'CODIGO'
            DataController.MasterKeyFieldNames = 'ID'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
              end
              item
                Format = ',0.00'
                Kind = skSum
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGridDetGastosBcoViewID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetGastosBcoViewID_DET: TcxGridDBColumn
              DataBinding.FieldName = 'ID_DET'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetGastosBcoViewFECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
              Width = 120
            end
            object cxGridDetGastosBcoViewTIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetGastosBcoViewCLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetGastosBcoViewNROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetGastosBcoViewCODIGO_CONCEPTO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_CONCEPTO'
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetGastosBcoViewDETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetGastosBcoViewDETIMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'DETIMPORTE'
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGridDetGastosBcoViewCTRO_COSTO: TcxGridDBColumn
              DataBinding.FieldName = 'CTRO_COSTO'
              Width = 40
            end
            object cxGridDetGastosBcoViewDESCRIPCION: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCION'
            end
            object cxGridDetGastosBcoViewIMPUTADO: TcxGridDBColumn
              DataBinding.FieldName = 'IMPUTADO'
            end
            object cxGridDetGastosBcoViewPORCENTAJE: TcxGridDBColumn
              DataBinding.FieldName = 'PORCENTAJE'
            end
            object cxGridDetGastosBcoViewID_APPCOSTO: TcxGridDBColumn
              DataBinding.FieldName = 'ID_APPCOSTO'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridGastosBcoView
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDetGastosBcoView
            end
          end
        end
        object Panel3: TPanel
          Left = 937
          Top = 0
          Width = 277
          Height = 590
          Align = alRight
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object BitBtn10: TBitBtn
            Left = 6
            Top = 399
            Width = 25
            Height = 25
            Hint = 'Expandir Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000C17833CA7C20
              C67620CA7C20C46F14B5652CFFFFFFFFFFFFFFFFFFFFFEFEB66629CB8834CA7C
              20C6761FCA7A1FBF712BD59337EDAF21E6A119E69E1DC67C34F6EBE3FFFFFFFF
              FFFFFFFFFFFFFFFFF7EDE7CA8A4BEBB73FE59D13ECAA1DCE7D21D39141E9AE2E
              E6A11ED98E20CC936EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC47D49DF9A
              27E7A727E8A620CF822BDA9E4DEBB039E8B555F1BF46D48621D5A079FFFFFFFF
              FFFFFFFFFFFFFFFFC77D42E4A330F0B836D9912CF1CB68D68D33D99D4CD18D47
              CB8753F1D283F5C44AD88F2BD6A076FFFFFFFFFFFFCC8649E6AA3AF4C246D993
              32D2976FD29757D89A4BCA8037FAF2EAFFFFFFD08E53F3D485F7CA54DA9530DB
              A87ED08D4FE9B043F5C852DD9938D9A479FFFFFFF8EEE5CA8036FFFFFFFFFFFF
              FFFFFFFFFFFFD3924EF2D587F5CD60DFA03DE7B149F5CD5DDF9F3FDBA879FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD89D60EDC876F3
              C85BF4CE65E0A242E1B388FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDA9D55EDBD59F4CE70F6D06BE3A745E4B888FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9B4BF1C968FBDC80E8
              B44FF2DA9BFDE391E6AD48E4B57CFFFFFFFFFFFFFFFFFFFFFFFFDC9D44FCF5EC
              FFFFFFE2A555F2CD6FFCE28CEAB858E6B880E1AC63F9EAB8FEE795E8B44FE7B9
              7EFFFFFFFBF2E7DC9B43E9BD63E5AE57E3A856F4D378FCE593EBBE5FE8BC80FF
              FFFFFFFFFFE5AE5FFAE9B9FDE99BEABA56E8B979E5AE56E8B453EFCA7DF9E293
              F4D376FBE498EFC164EBC083FFFFFFFFFFFFFFFFFFFFFFFFE6AF5CF9ECBAFCE9
              A1F1C96BF9E08BEEC166EFCB80FBE7A5FADD8AF1D072ECBE77FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEAB667F8E09CFADE8AFAE395EEC063F3D084FEEFBC
              FBE7A7F9E49DEFC169FDF5E8FFFFFFFFFFFFFFFFFFFFFFFFFDF7EBEDBD60FBE3
              9BFBE6A4FDECACF2C96EF0C76AF4D48AF3D387F5D588F2CD75ECB954FFFFFFFF
              FFFFFFFFFFFFFFFEECB954F3CE77F5D586F4D180F5D488F0C569}
            TabOrder = 1
            OnClick = BitBtn3Click
          end
          object BitBtn13: TBitBtn
            Left = 37
            Top = 399
            Width = 25
            Height = 25
            Hint = 'Contraer Listado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB6413FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5
              730ADE871DF5DCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDF9F7DDA280D77409E58C00E0840EF0C99AFFFDFBFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDDFAE93D27E38D97D0BE2
              8A07E58C04E18301DE7B08E9AD6AFDF7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FAF4F1C87B53D97D0DEB9C0FEA9B09E9980AE58F0CE1850AEAAD33E29A32F2C8
              9DFFFFFFFFFFFFFFFFFFFFFFFFFEFCFBCF9173DB8314F2AD1CEFAA1DF2C047EF
              B842E89613F2C258DC9340E9BA9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C2B2
              CB6D15F6BD2CF2B82DEAB047D4813FE3A13EF8D678DE995FF3DCD1FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFC57B4FECAB2DF5C33BECB036DB9E77E9C3ABE7
              B566DD9E60FBF4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC7A3A
              F5C746F8CC48DC8D28F2DCD1FFFFFFD9905BFFFFFFFFFFFFFFFFFFF7DDB7F8DF
              B6F9E3B4FCECC7FFFFFFFFFFFFD48840F6CF56FAD357DC903EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF6DAB7EAA22DF3C348F4C649F6CB5CFFFFFFFFFFFFC9773D
              F9D761FEE069E2A037EBCCBCFFFFFFFFFFFFFFFFFFFFFFFFF5D7B4F1BD46FADD
              68F9D866F6CB5DFFFFFFFFFFFFCD8E6AEDBB4BFFEA7AF9D766D58844F7E8DFFF
              FFFFFFFFFFFAEDE0EBAF53FADB69FCE073F8D86BF7D480FFFFFFFFFFFFEFDCD3
              C87838FFEF87FEEA80FADD71DE933CE3A667E7AD69E9AA42FBDE72FDE67DFDE9
              8EF5C960FDF3DCFFFFFFFFFFFFFFFFFFDCB19EDC9C45FFF69BFFF08FFFF08AFC
              E275FCE275FFED87FFEC8DFFEF9FF3CE6BF9DFADFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD9A792DA954AF8E08DFFF8A9FFF5ABFFF5ACFFF4ACFBE59AF2C367F6D4
              9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DACFDDA47ADE9C59E8
              B363EBBB66E8B164EFC184FAEAD3FFFFFFFFFFFFFFFFFFFFFFFF}
            TabOrder = 2
            OnClick = BitBtn4Click
          end
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 275
            Height = 377
            Align = alTop
            DataSource = DSCtroCosto
            DragMode = dmAutomatic
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Alignment = taCenter
                Title.Caption = 'Ctro.Costo'
                Width = 228
                Visible = True
              end>
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1222
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        1222
        65)
      object Label1: TLabel
        Left = 1033
        Top = 6
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
        ExplicitLeft = 960
      end
      object Label11: TLabel
        Left = 7
        Top = 7
        Width = 274
        Height = 25
        Caption = 'Listado Por Centro de Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbcCtro: TJvDBLookupCombo
        Left = 7
        Top = 38
        Width = 295
        Height = 21
        DisplayEmpty = 'Todos Los Ctros de Costo'
        EmptyValue = '-1'
        LookupField = 'ID'
        LookupDisplay = 'DESCRIPCION'
        LookupSource = DSCtroCosto
        TabOrder = 0
        OnClick = BuscarExecute
      end
      object Desde: TJvDateEdit
        Left = 955
        Top = 25
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
        TabOrder = 2
        OnAcceptDate = DesdeAcceptDate
      end
      object Hasta: TJvDateEdit
        Left = 1050
        Top = 25
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
        TabOrder = 3
        OnAcceptDate = HastaAcceptDate
      end
      object UpDown1: TUpDown
        Left = 1145
        Top = 25
        Width = 17
        Height = 20
        Anchors = [akTop, akRight]
        Min = -32000
        Max = 32000
        TabOrder = 4
        OnClick = UpDown1Click
      end
      object chbPorDia: TAdvOfficeCheckBox
        Left = 906
        Top = 4
        Width = 97
        Height = 17
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Inc.por Dia'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
      object chVtas: TAdvOfficeCheckBox
        Left = 439
        Top = 4
        Width = 97
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Traer Las Vtas'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
      object chPersonal: TAdvOfficeCheckBox
        Left = 439
        Top = 23
        Width = 150
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Traer Los Mov.de Personal'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
      object chIngresos: TAdvOfficeCheckBox
        Left = 439
        Top = 42
        Width = 183
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Traer Los Mov.de Ing.de Caja'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 684
    Width = 1222
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 684
    ExplicitWidth = 1222
    inherited btConfirma: TBitBtn
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Height = 28
      Visible = False
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Height = 28
      DoubleBuffered = True
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Height = 28
      Visible = False
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Height = 28
      DoubleBuffered = True
      ParentFont = False
      ExplicitHeight = 28
    end
    object btImprimir: TBitBtn
      Left = 557
      Top = 0
      Width = 75
      Height = 28
      Action = Imprimir
      Caption = 'Imprimir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF006C6A6A006C6A6A00FF00FF00FF00FF006C6A6A006C6A
        6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006C6A6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3
        E3006C6A6A006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006C6A6A00DAD9D900A19F9F00A19F9F00A19F9F0037363600353535006C6D
        6D00BFBFBF00E1E2E200B7B6B6006C6A6A006C6A6A006C6A6A00FF00FF006C6A
        6A00D4D3D300CACACA008E8C8C008E8C8C008E8C8C003C3B3B000A090A000707
        07000B0B0B00070707007A7A7A00BBBBBB006C6A6A00FF00FF006C6A6A00CACA
        CA00CACACA008E8C8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A0008886
        86005E5B5C000707070009090900080808006C6A6A00767373006C6A6A00CACA
        CA008E8C8C00EFEEEE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCE
        CE00BDBCBC00ADABAB008B898900585656007A787800757373006C6A6A008E8C
        8C00FFFFFF00FEFCFC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0
        C100D7D7D700D8D8D800C7C6C600B7B6B600918F8F006C696900FF00FF006C6A
        6A006C6A6A00EDEBEB00B1A6A7007A6F72008A83880096929500969091009D97
        98009A9395009E989900BBBABA00D1D1D100C2C2C2006C6A6A00FF00FF00FF00
        FF00FF00FF006C6A6A00BB897F00A7876D008B6F64007D6760006F6265007973
        79008F8B8E00A9A3A400CBCACA00C1C1C1006C6A6A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BD828100FFE3B400FFD39F00E9B28100C9997300BA91
        6C00BD828100807D7E006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC6
        8800BD828100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C0868300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD82
        8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BD828100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD82
        8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BD828100FFFFF200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD82
        8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BD828100BD828100BD828100FBEFE200FBE3CF00FBDDC200BD828100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD828100BD828100BD828100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 7
    end
    object ToolButton1: TToolButton
      Left = 632
      Top = 0
      Width = 65
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn11: TBitBtn
      Left = 697
      Top = 0
      Width = 96
      Height = 28
      Action = ExportarExcel
      Caption = 'ExportarExcel'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
        078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
        BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
        CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
        FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
        D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
        CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
        FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
        A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
        EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
        FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
        1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
        87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
        FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
        750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
        FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
        FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
        D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
        00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
        C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
        89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 8
    end
  end
  inherited Panel1: TPanel
    Top = 714
    Width = 1222
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 714
    ExplicitWidth = 1222
    inherited sbEstado: TStatusBar
      Width = 1133
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1133
    end
  end
  inherited ActionList1: TActionList
    Left = 528
    Top = 200
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object excelrelacion: TAction
      Caption = 'Excel'
      OnExecute = excelrelacionExecute
    end
    object ExportarExcel: TAction
      Caption = 'ExportarExcel'
      OnExecute = ExportarExcelExecute
    end
    object LimpiarFiltros2: TAction
      Caption = 'Limpiar Filtros'
      OnExecute = LimpiarFiltros2Execute
    end
  end
  inherited DSBase: TDataSource
    Left = 752
  end
  inherited ImageList1: TImageList
    Left = 688
    Top = 16
    Bitmap = {
      494C01010B00C402040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      00000000000000000000000000000000000000000000716D6C00908D8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A00000000000000000000000000000000006D6967008C8987000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000075717100969391000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A0000000000000000007D7976009F9C9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000084807E00A8A5A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A78780075737300000000008A868400B0AEAC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000095919200CCC5B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A0000000000B0AA9600B9B7D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A000000000000000000C4BEA900807FEF005C6D
      FF00D7DFFD0000000000000000000000000000000000F2F1FE006E70EE00B6BC
      F900D4DBFD00C9D2FE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A00000000000000000000000000C8C4B0008F8EEA000B26
      F8005075F7006C8DF9007B92FA00B5BEFC00B8BEFD005355F7001213DE001E30
      EA003A5AF4003859F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      00000000000000000000000000000000000000000000D2CEBA009695EF000724
      F8005477F8006386F900395BF7002A44F5002436F7001B1DF3001013DE001C2E
      EA004061F5004062F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      00000000000000000000000000000000000000000000DAD5C2009D9DF2000724
      F7005275F8006185F9003A5BF7002A44F5002436F7001D20F3001213DE001B2D
      EA004464F5004768F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000DDD9C500A0A2F6000823
      F6005076F8006185F9003A5CF7002A44F5002436F7001D20F3001213DE001B2D
      EA004464F5004768F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      00000000000000000000000000000000000000000000E1DFC900A09FFC00011E
      F9004C71F7005E80F800395CF7002B45F5002536F7001C1CF3000C0DDF00182C
      EC003C5EF5003C5DF90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      00000000000000000000000000000000000000000000E5E2D200C5C6F3004865
      F500567BFA004B70F8002A4DF7001C36F5001224F5002124F5006568EF003C53
      F0005072F5005271F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAAA100B9B6C0000000
      0000E0E8FF00BECDFC0092A6FA00879AFA007988F9009A9CFB0000000000EFF2
      FE00ECF0FE00E8EDFE0000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00F81FF33F9FFF0000E007E0079FFF0000
      C003C0009FFF0000800180019FFF0000800100009FFF0000000000009FFF0000
      000000009FFF0000000080009FFF00000000E001878300000000F00380030000
      0000F01F800300008001E03F800300008001E03F80030000C003C03F80030000
      E007C07F80030000F81FF8FF90230000FFFFF81FF81FF81FC007E007E007E007
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
    Left = 400
    Top = 432
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 48
    Top = 568
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Top = 480
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 536
    Top = 248
  end
  inherited QBrowse2: TFDQuery
    Top = 616
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 120
    Top = 560
  end
  object CDSGastos: TClientDataSet
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
        Name = 'ingresos'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'vtas'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'personal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ct'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ct'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastos'
    OnCalcFields = CDSGastosCalcFields
    Left = 996
    Top = 404
    object CDSGastosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object CDSGastosCTROCOSTO: TIntegerField
      DisplayLabel = 'Ctro.Costo'
      FieldName = 'CTROCOSTO'
      Origin = 'CTROCOSTO'
    end
    object CDSGastosDETALLE: TStringField
      DisplayLabel = 'Desc.Ctro.Costo'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 46
    end
    object CDSGastosTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSGastosCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSGastosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSGastosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSGastosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object CDSGastosRUBRO: TStringField
      DisplayLabel = 'Rub.'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSGastosSUBRUBRO: TStringField
      DisplayLabel = 'Sub.R'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 6
    end
    object CDSGastosRUBRO_DET: TStringField
      DisplayLabel = 'Rubro Det.'
      FieldName = 'RUBRO_DET'
      Origin = 'RUBRO_DET'
      Size = 35
    end
    object CDSGastosSUBRUB_DET: TStringField
      DisplayLabel = 'Sub Rub.Det'
      FieldName = 'SUBRUB_DET'
      Origin = 'SUBRUB_DET'
      Size = 50
    end
    object CDSGastosIDCPBTE: TIntegerField
      DisplayLabel = 'Id.Cpbte'
      FieldName = 'IDCPBTE'
      Origin = 'IDCPBTE'
    end
    object CDSGastosTIPODETALLE: TStringField
      DisplayLabel = 'Tipo Op.'
      FieldKind = fkInternalCalc
      FieldName = 'TIPODETALLE'
      Size = 15
    end
    object CDSGastosDETALLEART: TStringField
      DisplayLabel = 'Det.Articulo'
      FieldName = 'DETALLEART'
      Origin = 'DETALLEART'
      Size = 50
    end
    object CDSGastosCODIGOART: TStringField
      FieldName = 'CODIGOART'
      Origin = 'CODIGOART'
      Size = 8
    end
    object CDSGastosMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkInternalCalc
      FieldName = 'MES'
      Size = 18
    end
    object CDSGastosFECHA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSGastosSALDOCALCULADO: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkInternalCalc
      FieldName = 'SALDOCALCULADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosTOTAL: TFloatField
      DisplayLabel = 'Imp.Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosNETO_CPBTE: TFloatField
      DisplayLabel = 'Neto Cpbte'
      FieldName = 'NETO_CPBTE'
      Origin = 'NETO_CPBTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosIMPORTE_CPBTE: TFloatField
      DisplayLabel = 'Imp.Cpbte.'
      FieldName = 'IMPORTE_CPBTE'
      Origin = 'IMPORTE_CPBTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosSaldoDH: TFloatField
      DisplayLabel = 'Saldo D/H'
      FieldKind = fkCalculated
      FieldName = 'SaldoDH'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
  end
  object DSGastos: TDataSource
    DataSet = CDSGastos
    Left = 1076
    Top = 404
  end
  object DSPGastos: TDataSetProvider
    DataSet = QGastos
    Options = []
    Left = 916
    Top = 404
  end
  object frListado: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.121858252300000000
    ReportOptions.LastChange = 39643.014895462950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1048
    Top = 544
    Datasets = <
      item
        DataSet = frDBMov
        DataSetName = 'frDBMov'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 6.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 62.000000000000000000
        Top = 18.897650000000000000
        Width = 771.024120000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 2.204700000000000000
          Width = 264.000000000000000000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Movimientos de stock')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 405.000000000000000000
          Top = 37.984230000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 573.000000000000000000
          Top = 37.984230000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 49.881880000000000000
          Top = 37.984230000000000000
          Width = 240.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 878.000000000000000000
        Top = 139.842610000000000000
        Width = 771.024120000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBMov
        DataSetName = 'frDBMov'
        RowCount = 0
        object Rich1: TfrxRichView
          AllowVectorExport = True
          Left = -7.000000000000000000
          Top = 0.157390000000000000
          Width = 724.000000000000000000
          Height = 870.000000000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67333038327B5C666F6E7474626C7B5C66
            305C666E696C205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F7220
            52696368656432302031302E302E31393034317D5C766965776B696E64345C75
            6331200D0A5C706172645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object frDBMov: TfrxDBDataset
    UserName = 'frDBMov'
    CloseDataSource = False
    DataSet = CDSGastos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 656
    Top = 264
    FieldDefs = <
      item
        FieldName = 'IDCPBTE'
        FieldAlias = 'IDCPBTE'
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
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'CTROCOSTO'
        FieldAlias = 'CTROCOSTO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'PORCENTAJE'
        FieldAlias = 'PORCENTAJE'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'TIPO'
        FieldAlias = 'TIPO'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'IMPORTE_CPBTE'
        FieldAlias = 'IMPORTE_CPBTE'
      end
      item
        FieldName = 'NETO_CPBTE'
        FieldAlias = 'NETO_CPBTE'
      end
      item
        FieldName = 'TIPODETALLE'
        FieldAlias = 'TIPODETALLE'
      end
      item
        FieldName = 'RUBRO'
        FieldAlias = 'RUBRO'
      end
      item
        FieldName = 'SUBRUBRO'
        FieldAlias = 'SUBRUBRO'
      end
      item
        FieldName = 'RUBRO_DET'
        FieldAlias = 'RUBRO_DET'
      end
      item
        FieldName = 'SUBRUB_DET'
        FieldAlias = 'SUBRUB_DET'
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
    Left = 632
    Top = 312
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Vista Previa'
    PreviewOptions.WindowState = wsMaximized
    PrintTitle = 'Centros de Costos'
    Version = 0
    Left = 965
    Top = 544
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
      ReportDocument.CreationDate = 45790.561293761570000000
      OptionsOnEveryPage.FilterBar = False
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PrinterPage.CenterOnPageH = True
      PrinterPage.CenterOnPageV = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 2974
      PrinterPage.GrayShading = True
      PrinterPage.Header = 2974
      PrinterPage.Margins.Bottom = 2974
      PrinterPage.Margins.Left = 2973
      PrinterPage.Margins.Right = 2973
      PrinterPage.Margins.Top = 2974
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45790.561293784730000000
      ShrinkToPageWidth = True
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsPagination.TopLevelGroup = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TcxPivotGridReportLink
      Component = cxDBPivotGrid2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object DSPFcCompra: TDataSetProvider
    DataSet = QFcCompra
    Options = []
    Left = 104
    Top = 186
  end
  object CDSFcCompra: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
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
      end>
    ProviderName = 'DSPFcCompra'
    AfterScroll = CDSFcCompraAfterScroll
    Left = 192
    Top = 187
    object CDSFcCompraID_FC: TIntegerField
      DisplayLabel = 'Id.Cpbte'
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFcCompraTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSFcCompraNUMERO: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      Size = 19
    end
    object CDSFcCompraCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSFcCompraRAZONSOCIAL: TStringField
      DisplayLabel = 'R.Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSFcCompraTOTALNETO: TFloatField
      DisplayLabel = 'Total Neto'
      FieldName = 'TOTALNETO'
      Origin = 'TOTALNETO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSFcCompraTOTALAPLICADO: TFloatField
      DisplayLabel = 'Suma Aplicado'
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSFcCompraFECHACOMPRA: TSQLTimeStampField
      DisplayLabel = 'Fecha COmp.'
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      ProviderFlags = []
      Required = True
    end
    object CDSFcCompraidmax: TAggregateField
      FieldName = 'idmax'
      ProviderFlags = []
      Active = True
      DisplayName = ''
      Expression = 'MAX(ID_FC)'
    end
    object CDSFcCompraidmin: TAggregateField
      FieldName = 'idmin'
      ProviderFlags = []
      Active = True
      DisplayName = ''
      Expression = 'MIN(ID_FC)'
    end
  end
  object DSFcCompra: TDataSource
    DataSet = CDSFcCompra
    Left = 284
    Top = 187
  end
  object DSPControlEgresos: TDataSetProvider
    DataSet = QControlEgresos
    Options = []
    Left = 104
    Top = 236
  end
  object CDSControlEgresos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
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
      end>
    ProviderName = 'DSPControlEgresos'
    Left = 192
    Top = 237
    object CDSControlEgresosID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSControlEgresosTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSControlEgresosNUMERO: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      Size = 19
    end
    object CDSControlEgresosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSControlEgresosIMPORTE: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSControlEgresosTOTALAPLICADO: TFloatField
      DisplayLabel = 'Suma Aplicado'
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      DisplayFormat = ',0.00'
    end
    object CDSControlEgresosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object CDSControlEgresosIDMIN: TAggregateField
      FieldName = 'IDMIN'
      ProviderFlags = []
      Active = True
      DisplayName = ''
      Expression = 'min(id_egreso)'
    end
    object CDSControlEgresosIDMAX: TAggregateField
      FieldName = 'IDMAX'
      ProviderFlags = []
      Active = True
      DisplayName = ''
      Expression = 'MAX(ID_EGRESO)'
    end
  end
  object DSControlEgresos: TDataSource
    DataSet = CDSControlEgresos
    Left = 284
    Top = 287
  end
  object DSPControlIngresos: TDataSetProvider
    DataSet = QControlIngresos
    Options = []
    Left = 104
    Top = 286
  end
  object CDSControlIngresos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
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
      end>
    ProviderName = 'DSPControlIngresos'
    Left = 192
    Top = 287
    object CDSControlIngresosID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      Origin = 'ID_INGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSControlIngresosTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSControlIngresosNUMERO: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      Size = 19
    end
    object CDSControlIngresosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSControlIngresosIMPORTE: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSControlIngresosTOTALAPLICADO: TFloatField
      DisplayLabel = 'Suma Aplicado'
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      DisplayFormat = ',0.00'
    end
    object CDSControlIngresosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object CDSControlIngresosIDMAX: TAggregateField
      FieldName = 'IDMAX'
      ProviderFlags = []
      Active = True
      DisplayName = ''
      Expression = 'max(id_ingreso)'
    end
    object CDSControlIngresosIDMIN: TAggregateField
      FieldName = 'IDMIN'
      ProviderFlags = []
      Active = True
      DisplayName = ''
      Expression = 'min(id_ingreso)'
    end
  end
  object DSControlIngresos: TDataSource
    DataSet = CDSControlIngresos
    Left = 284
    Top = 237
  end
  object DSPControlVales: TDataSetProvider
    DataSet = QControlVales
    Options = []
    Left = 104
    Top = 136
  end
  object CDSControlVales: TClientDataSet
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
      end>
    ProviderName = 'DSPControlVales'
    Left = 192
    Top = 137
    object CDSControlValesID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSControlValesTIPOCPBTE: TStringField
      DisplayLabel = 'Tipo.Cpbte'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSControlValesNUMERO: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      Size = 19
    end
    object CDSControlValesIMPORTE: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSControlValesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSControlValesTOTALAPLICADO: TFloatField
      DisplayLabel = 'Suma Aplicado'
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      DisplayFormat = ',0.00'
    end
  end
  object DSControlVales: TDataSource
    DataSet = CDSControlVales
    Left = 284
    Top = 137
  end
  object DSCtroCosto: TDataSource
    DataSet = QCtroCosto
    Left = 208
    Top = 488
  end
  object SaveDialog1: TSaveDialog
    Left = 648
    Top = 384
  end
  object PopupMenu1: TPopupMenu
    Left = 624
    Top = 16
    object OcultarCabeceraGrilla1: TMenuItem
      Caption = 'Ocultar Cabecera Grilla'
      OnClick = OcultarCabeceraGrilla1Click
    end
    object Excel1: TMenuItem
      Action = excelrelacion
    end
    object ExpandirTodolosItmes1: TMenuItem
      Caption = 'Expandir Todo los Itmes'
      OnClick = ExpandirTodolosItmes1Click
    end
    object ContraerTodolosItems1: TMenuItem
      Caption = 'Contraer Todo los Items'
      OnClick = ContraerTodolosItems1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LimpiarFiltros1: TMenuItem
      Action = LimpiarFiltros2
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 724
    Top = 345
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    object GridBandedTableViewStyleSheetWindowsClassic: TcxGridBandedTableViewStyleSheet
      Caption = 'Windows Classic'
      Styles.Content = cxStyle4
      Styles.ContentEven = cxStyle5
      Styles.ContentOdd = cxStyle6
      Styles.Footer = cxStyle7
      Styles.Group = cxStyle8
      Styles.GroupByBox = cxStyle9
      Styles.Header = cxStyle10
      Styles.Inactive = cxStyle11
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      Styles.Selection = cxStyle14
      Styles.BandHeader = cxStyle3
      BuiltIn = True
    end
  end
  object DSPGastos_2: TDataSetProvider
    DataSet = QGastos_2
    Options = []
    Left = 916
    Top = 354
  end
  object CDSGastos_2: TClientDataSet
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
        Name = 'ingresos'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'vtas'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'personal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ct'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ct'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastos_2'
    OnCalcFields = CDSGastos_2CalcFields
    Left = 996
    Top = 354
    object CDSGastos_2TIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object CDSGastos_2ID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSGastos_2TIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSGastos_2FECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSGastos_2CLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSGastos_2NROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte.'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSGastos_2CODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSGastos_2NOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object CDSGastos_2CODIGO_DET: TStringField
      FieldName = 'CODIGO_DET'
      Origin = 'CODIGO_DET'
      Size = 8
    end
    object CDSGastos_2DETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 46
    end
    object CDSGastos_2CTROCOSTO: TIntegerField
      DisplayLabel = 'Ctro.Costo'
      FieldName = 'CTROCOSTO'
      Origin = 'CTROCOSTO'
    end
    object CDSGastos_2DESCRIPCION_CTRCOSTO: TStringField
      DisplayLabel = 'Des.Ctro Costo'
      FieldName = 'DESCRIPCION_CTRCOSTO'
      Origin = 'DESCRIPCION_CTRCOSTO'
      Size = 45
    end
    object CDSGastos_2RUBRO: TStringField
      DisplayLabel = 'Cod.Rub.'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSGastos_2PORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      DisplayFormat = '0.00'
    end
    object CDSGastos_2SUBRUBRO: TStringField
      DisplayLabel = 'Cod.Sub.'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 6
    end
    object CDSGastos_2RUBRO_DET: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRO_DET'
      Origin = 'RUBRO_DET'
      Size = 35
    end
    object CDSGastos_2SUBRUB_DET: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'SUBRUB_DET'
      Origin = 'SUBRUB_DET'
      Size = 50
    end
    object CDSGastos_2TIPODETALLE: TStringField
      DisplayLabel = 'Tipo Op.'
      FieldKind = fkInternalCalc
      FieldName = 'TIPODETALLE'
      Size = 15
    end
    object CDSGastos_2SALDOCALCULADO: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkInternalCalc
      FieldName = 'SALDOCALCULADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastos_2NETO_CPBTE: TFloatField
      DisplayLabel = 'Neto.Cpbte'
      FieldName = 'NETO_CPBTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastos_2IMPORTE_CPBTE: TFloatField
      DisplayLabel = 'Imp.Cpbte'
      FieldName = 'IMPORTE_CPBTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastos_2IMP_DEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'IMP_DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastos_2IMP_HABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'IMP_HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastos_2SALDODEBEHABER: TFloatField
      DisplayLabel = 'Saldo D/H'
      FieldKind = fkCalculated
      FieldName = 'SALDODEBEHABER'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
    object CDSGastos_2TOTAL_DETALLE: TFloatField
      DisplayLabel = 'Total Det.'
      FieldName = 'TOTAL_DETALLE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSGastos_2: TDataSource
    DataSet = CDSGastos_2
    Left = 1076
    Top = 354
  end
  object CDSDetFcCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDDESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IDHASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetFcCompra'
    AfterPost = CDSDetFcCompraAfterPost
    Left = 996
    Top = 104
    object CDSDetFcCompraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      Required = True
    end
    object CDSDetFcCompraID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = []
    end
    object CDSDetFcCompraFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
    end
    object CDSDetFcCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetFcCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetFcCompraNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSDetFcCompraCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      Required = True
      Size = 8
    end
    object CDSDetFcCompraDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetFcCompraDETIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'DETIMPORTE'
      Origin = 'DETIMPORTE'
      ProviderFlags = []
    end
    object CDSDetFcCompraCTRO_COSTO: TIntegerField
      DisplayLabel = 'Ctro.Costo'
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      ProviderFlags = []
      OnSetText = CDSDetFcCompraCTRO_COSTOSetText
    end
    object CDSDetFcCompraDESCRIPCION: TStringField
      DisplayLabel = 'Det.Ctro.Costo'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetFcCompraIMPUTADO: TFloatField
      DisplayLabel = 'Imputado'
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSDetFcCompraPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSDetFcCompraID_APPCOSTO: TIntegerField
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID_APPCOSTO'
      ProviderFlags = []
    end
  end
  object DSPDetFcCompra: TDataSetProvider
    DataSet = QDetFcCompras
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 916
    Top = 104
  end
  object DSDetFcCompra: TDataSource
    DataSet = CDSDetFcCompra
    Left = 1076
    Top = 104
  end
  object DSPDetEgresos: TDataSetProvider
    DataSet = QDetEgresos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 916
    Top = 154
  end
  object CDSDetEgresos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDDESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IDHASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetEgresos'
    AfterPost = CDSDetEgresosAfterPost
    Left = 996
    Top = 154
    object CDSDetEgresosID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
      ProviderFlags = []
    end
    object CDSDetEgresosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetEgresosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSDetEgresosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetEgresosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetEgresosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSDetEgresosCODIGOGASTO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOGASTO'
      Origin = 'CODIGOGASTO'
      ProviderFlags = []
      Size = 6
    end
    object CDSDetEgresosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object CDSDetEgresosDETIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'DETIMPORTE'
      Origin = 'DETIMPORTE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSDetEgresosCTRO_COSTO: TIntegerField
      DisplayLabel = 'Ctr.Cost.'
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      ProviderFlags = []
      OnSetText = CDSDetEgresosCTRO_COSTOSetText
    end
    object CDSDetEgresosDESCRIPCION: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetEgresosIMPUTADO: TFloatField
      DisplayLabel = 'Imputado'
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
      DisplayFormat = ',0.00'
    end
    object CDSDetEgresosPORCENTAJE: TFloatField
      DisplayLabel = 'Proc%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      DisplayFormat = '0.00'
    end
    object CDSDetEgresosID_APPCOSTO: TIntegerField
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID_APPCOSTO'
      ProviderFlags = []
    end
    object CDSDetEgresosID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      ProviderFlags = []
    end
  end
  object DSDetEgresos: TDataSource
    DataSet = CDSDetEgresos
    Left = 1076
    Top = 154
  end
  object DSPDetIngresos: TDataSetProvider
    DataSet = QDetIngresos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 916
    Top = 204
  end
  object CDSDetIngresos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDDESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IDHASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetIngresos'
    AfterPost = CDSDetIngresosAfterPost
    Left = 996
    Top = 204
    object CDSDetIngresosID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      Origin = 'ID_INGRESO'
      ProviderFlags = []
    end
    object CDSDetIngresosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetIngresosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSDetIngresosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetIngresosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetIngresosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSDetIngresosCODIGOINGRESO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOINGRESO'
      Origin = 'CODIGOINGRESO'
      ProviderFlags = []
      Size = 6
    end
    object CDSDetIngresosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object CDSDetIngresosDETIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'DETIMPORTE'
      Origin = 'DETIMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSDetIngresosCTRO_COSTO: TIntegerField
      DisplayLabel = 'Ctro.Costo'
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      ProviderFlags = []
    end
    object CDSDetIngresosDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetIngresosIMPUTADO: TFloatField
      DisplayLabel = 'Imputado'
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
      DisplayFormat = ',0.00'
    end
    object CDSDetIngresosPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object CDSDetIngresosID_APPCOSTO: TIntegerField
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID_APPCOSTO'
      ProviderFlags = []
    end
  end
  object DSDetIngresos: TDataSource
    DataSet = CDSDetIngresos
    Left = 1076
    Top = 204
  end
  object CDSDetPersonal: TClientDataSet
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
      end>
    ProviderName = 'DSPDetPersonal'
    Left = 996
    Top = 254
    object CDSDetPersonalID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetPersonalFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSDetPersonalTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSDetPersonalCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSDetPersonalNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSDetPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSDetPersonalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSDetPersonalCTRO_COSTO: TIntegerField
      DisplayLabel = 'Cod.'
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      ProviderFlags = []
    end
    object CDSDetPersonalIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSDetPersonalDESCRIPCION: TStringField
      DisplayLabel = 'Desc.Ctro Costo'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetPersonalPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      ProviderFlags = []
      DisplayFormat = '0.00'
    end
    object CDSDetPersonalID_APPCOSTO: TIntegerField
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID'
      ProviderFlags = []
    end
    object CDSDetPersonalIMPUTADO: TFloatField
      DisplayLabel = 'Imputado'
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
  end
  object DSPDetPersonal: TDataSetProvider
    DataSet = QDetPersonal
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 916
    Top = 254
  end
  object DSDetPersonal: TDataSource
    DataSet = CDSDetPersonal
    Left = 1076
    Top = 254
  end
  object DataToXLS: TDataToXLS
    DataSet = CDSGastos
    Columns = <
      item
        DataField = 'TIPO'
        Title = 'Tipo Movimiento'
      end
      item
        DataField = 'CTROCOSTO'
        Title = 'Ctro.Costo'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'DETALLE'
        Title = 'Desc.Ctro.Costo'
      end
      item
        DataField = 'TIPOCPBTE'
        Title = 'Tp'
      end
      item
        DataField = 'CLASECPBTE'
        Title = 'Cl'
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
        DataField = 'CODIGO'
        Title = 'Codigo'
      end
      item
        DataField = 'NOMBRE'
        Title = 'Nombre'
      end
      item
        DataField = 'TOTAL'
        Title = 'Imp.Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PORCENTAJE'
        Title = '%'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'IMPORTE_CPBTE'
        Title = 'Imp.Cpbte.'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'NETO_CPBTE'
        Title = 'Neto Cpbte'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'DEBE'
        Title = 'Debe'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'HABER'
        Title = 'Haber'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'RUBRO'
        Title = 'Rub.'
      end
      item
        DataField = 'SUBRUBRO'
        Title = 'Sub.R'
      end
      item
        DataField = 'RUBRO_DET'
        Title = 'Rubro Det.'
      end
      item
        DataField = 'SUBRUB_DET'
        Title = 'Sub Rub.Det'
      end
      item
        DataField = 'IDCPBTE'
        Title = 'Id.Cpbte'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TIPODETALLE'
        Title = 'Tipo Op.'
      end
      item
        DataField = 'SALDOCALCULADO'
        Title = 'Saldo'
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
    Left = 396
    Top = 202
  end
  object DSPControlGstoBco: TDataSetProvider
    DataSet = QControlGastoBco
    Options = []
    Left = 104
    Top = 336
  end
  object CDSControlGstoBco: TClientDataSet
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
      end>
    ProviderName = 'DSPControlGstoBco'
    Left = 192
    Top = 337
    object CDSControlGstoBcoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSControlGstoBcoTIPOCPBTE: TStringField
      DisplayLabel = 'Tipo.Cpbte'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSControlGstoBcoNUMERO: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      Size = 19
    end
    object CDSControlGstoBcoBANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = 'BANCO'
    end
    object CDSControlGstoBcoIMPORTE: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'IMPORTE'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSControlGstoBcoTOTALAPLICADO: TFloatField
      DisplayLabel = 'Suma Aplicado'
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSControlGstoBcoFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object DSControlGstoBco: TDataSource
    DataSet = CDSControlGstoBco
    Left = 284
    Top = 337
  end
  object DSPDetGstoBco: TDataSetProvider
    DataSet = QDetGstoBco
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 916
    Top = 304
  end
  object CDSDetGstoBco: TClientDataSet
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
      end>
    ProviderName = 'DSPDetGstoBco'
    AfterPost = CDSDetEgresosAfterPost
    Left = 996
    Top = 304
    object CDSDetGstoBcoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSDetGstoBcoID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      ProviderFlags = []
      Required = True
    end
    object CDSDetGstoBcoFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSDetGstoBcoTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetGstoBcoCLASECPBTE: TStringField
      DisplayLabel = 'Cl.'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSDetGstoBcoNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSDetGstoBcoCODIGO_CONCEPTO: TStringField
      DisplayLabel = 'Cod'
      DisplayWidth = 6
      FieldName = 'CODIGO_CONCEPTO'
      Origin = 'CODIGO_CONCEPTO'
      ProviderFlags = []
      Required = True
      Size = 3
    end
    object CDSDetGstoBcoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object CDSDetGstoBcoDETIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'DETIMPORTE'
      Origin = 'DETIMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSDetGstoBcoCTRO_COSTO: TIntegerField
      DisplayLabel = 'Ctro.Cos'
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
    end
    object CDSDetGstoBcoIMPUTADO: TFloatField
      DisplayLabel = 'Aplicado'
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
    end
    object CDSDetGstoBcoDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 40
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetGstoBcoID_APPCOSTO: TIntegerField
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID_APPCOSTO'
      ProviderFlags = []
    end
    object CDSDetGstoBcoPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
  end
  object DSDetGstoBco: TDataSource
    DataSet = CDSDetGstoBco
    Left = 1076
    Top = 304
  end
  object QControlVales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id,c.tipocpbte, (c.tipocpbte || '#39'-'#39' || c.clasecpbte || ' +
        #39'-'#39' || c.nrocpbte) as Numero ,'
      '       c.detalle,'
      '       c.importe ,'
      
        '       (select sum(cc2.imputado) from aplica_ctro_costo cc2 wher' +
        'e'
      
        '         cc2.id_cpbte=c.id and cc2.tipocpbte=c.tipocpbte and cc2' +
        '.tipo='#39'E'#39') as TotalAplicado'
      '        from adelantos_sueldo c'
      
        'left join aplica_ctro_costo cc on cc.id_cpbte=c.id and cc.tipocp' +
        'bte=c.tipocpbte and cc.tipo='#39'E'#39
      'where c.fecha between :desde and :hasta')
    Left = 32
    Top = 137
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
      end>
    object QControlValesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QControlValesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QControlValesNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 19
    end
    object QControlValesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QControlValesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QControlValesTOTALAPLICADO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      ProviderFlags = []
    end
  end
  object QFcCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.fechacompra, c.id_fc,c.tipocpbte, (c.tipocpbte || '#39'-'#39' |' +
        '| c.clasecpbte || '#39'-'#39' || c.nrocpbte) as Numero ,c.codigo,c.razon' +
        'social,'
      
        '       (c.netograv2+c.netoexen2+c.importeexcluido2+c.netomonotri' +
        'buto2) as TotalNeto,'
      
        '       (select sum(cc2.imputado) from aplica_ctro_costo cc2 wher' +
        'e'
      
        '         cc2.id_cpbte=c.id_fc and cc2.tipocpbte=c.tipocpbte and ' +
        'cc2.tipo='#39'E'#39') as TotalAplicado'
      '        from fccompcab c'
      'where c.fechacompra between :desde and :hasta')
    Left = 32
    Top = 187
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
      end>
    object QFcCompraFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      Required = True
    end
    object QFcCompraID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFcCompraNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 19
    end
    object QFcCompraCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFcCompraRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QFcCompraTOTALNETO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALNETO'
      Origin = 'TOTALNETO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QFcCompraTOTALAPLICADO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      ProviderFlags = []
    end
  end
  object QGastos: TFDQuery
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
      end>
    SQL.Strings = (
      
        'select * from LST_POR_CTRO_COSTO_new(:desde,:hasta,:ingresos,:vt' +
        'as,:personal) where ctrocosto= :ct or :ct = -1'
      'order by tipo,ctrocosto,fecha')
    Left = 832
    Top = 410
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
        Name = 'ingresos'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'vtas'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'personal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'ct'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'ct'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QControlEgresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.fecha,c.id_egreso,c.tipocpbte, (c.tipocpbte || '#39'-'#39' || c' +
        '.clasecpbte || '#39'-'#39' || c.nrocpbte) as Numero ,'
      '       c.detalle, c.importe ,'
      
        '       (select sum(cc2.imputado) from aplica_ctro_costo cc2 wher' +
        'e'
      
        '         cc2.id_cpbte=c.id_egreso and cc2.tipocpbte=c.tipocpbte ' +
        'and cc2.tipo='#39'E'#39') as TotalAplicado'
      '        from egr_caja c'
      'where c.fecha between :desde and :hasta')
    Left = 32
    Top = 237
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
      end>
    object QControlEgresosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QControlEgresosID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QControlEgresosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QControlEgresosNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 19
    end
    object QControlEgresosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QControlEgresosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QControlEgresosTOTALAPLICADO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      ProviderFlags = []
    end
  end
  object QControlIngresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.fecha,c.id_ingreso,c.tipocpbte, (c.tipocpbte || '#39'-'#39' || ' +
        'c.clasecpbte || '#39'-'#39' || c.nrocpbte) as Numero ,'
      '       c.detalle, c.importe ,'
      
        '       (select sum(cc2.imputado) from aplica_ctro_costo cc2 wher' +
        'e'
      
        '         cc2.id_cpbte=c.id_ingreso and cc2.tipocpbte=c.tipocpbte' +
        ' and cc2.tipo='#39'I'#39') as TotalAplicado'
      '        from ing_caja c'
      'where c.fecha between :desde and :hasta'
      '')
    Left = 32
    Top = 287
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
      end>
    object QControlIngresosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QControlIngresosID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      Origin = 'ID_INGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QControlIngresosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QControlIngresosNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 19
    end
    object QControlIngresosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QControlIngresosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QControlIngresosTOTALAPLICADO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      ProviderFlags = []
    end
  end
  object QControlGastoBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.fecha,c.id,c.tipocpbte, (c.tipocpbte || '#39'-'#39' || c.clasec' +
        'pbte || '#39'-'#39' || c.nrocpbte) as Numero ,'
      
        '       c.banco, coalesce( (sum(d.debe)+Sum(d.haber)),c.total) as' +
        ' Importe , (select sum(cc2.imputado) from aplica_ctro_costo cc2 ' +
        'where cc2.id_cpbte=c.id and cc2.tipocpbte=c.tipocpbte and ((cc2.' +
        'tipo='#39'E'#39') or (cc2.tipo='#39'I'#39') )) as TotalAplicado'
      '        from gastos_bco_cab c'
      '  left join gastos_bco_det d on d.id_gasto_cab=c.id'
      ''
      'where c.fecha between :desde and :hasta'
      
        'group by  c.fecha,c.id,c.tipocpbte, c.tipocpbte,c.clasecpbte,c.n' +
        'rocpbte, c.banco,c.total'
      '')
    Left = 32
    Top = 337
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
      end>
    object QControlGastoBcoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QControlGastoBcoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QControlGastoBcoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QControlGastoBcoNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 19
    end
    object QControlGastoBcoBANCO: TStringField
      FieldName = 'BANCO'
      Origin = 'BANCO'
    end
    object QControlGastoBcoIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QControlGastoBcoTOTALAPLICADO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALAPLICADO'
      Origin = 'TOTALAPLICADO'
      ProviderFlags = []
    end
  end
  object QCtroCosto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from CENTRO_COSTO'
      'where activo='#39'S'#39)
    Left = 124
    Top = 482
    object QCtroCostoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtroCostoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object QCtroCostoPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Origin = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCtroCostoACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QDetFcCompras: TFDQuery
    Connection = DMMain_FD.fdcGestion
    UpdateOptions.AssignedValues = [uvCheckReadOnly]
    UpdateOptions.CheckReadOnly = False
    SQL.Strings = (
      
        'select cab.id_fc,det.id, cab.fechacompra,cab.tipocpbte,cab.clase' +
        'cpbte,cab.nrocpbte,'
      
        '       det.codigoarticulo,stk.detalle_stk,Sum(det.total * (1-(ca' +
        'b.dsto*0.01))) as DetImporte,'
      
        '       app.ctro_costo,ccos.descripcion,app.imputado,app.porcenta' +
        'je,app.id as Id_appCosto from fccompdet Det'
      '  left join fccompCab Cab on Cab.id_fc=det.id_cabfac'
      '  left join stock stk on stk.codigo_stk=det.codigoarticulo'
      
        '  left join aplica_ctro_costo app on app.id_cpbte=cab.id_fc and ' +
        'app.tipocpbte=cab.tipocpbte and app.concepto=det.codigoarticulo'
      '  left join centro_costo ccos on ccos.id=app.ctro_costo'
      'where det.id_cabfac between :iddesde and :idhasta'
      
        '  group by cab.id_fc,det.id, cab.fechacompra,cab.tipocpbte,cab.c' +
        'lasecpbte,cab.nrocpbte,'
      '           det.codigoarticulo,stk.detalle_stk,'
      
        '           app.ctro_costo,ccos.descripcion,app.imputado,app.porc' +
        'entaje,app.id'
      'order by det.id')
    Left = 832
    Top = 104
    ParamData = <
      item
        Name = 'IDDESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDHASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDetFcComprasID_FC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = []
    end
    object QDetFcComprasID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
    end
    object QDetFcComprasTIPOCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object QDetFcComprasCLASECPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object QDetFcComprasNROCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QDetFcComprasCODIGOARTICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      Size = 8
    end
    object QDetFcComprasDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object QDetFcComprasDETIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DETIMPORTE'
      Origin = 'DETIMPORTE'
      ProviderFlags = []
    end
    object QDetFcComprasCTRO_COSTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      ProviderFlags = []
    end
    object QDetFcComprasDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
    object QDetFcComprasIMPUTADO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
      ProviderFlags = []
    end
    object QDetFcComprasPORCENTAJE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      ProviderFlags = []
    end
    object QDetFcComprasID_APPCOSTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID_APPCOSTO'
      ProviderFlags = []
    end
    object QDetFcComprasFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
    end
  end
  object QDetEgresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    UpdateOptions.AssignedValues = [uvCheckReadOnly]
    UpdateOptions.CheckReadOnly = False
    SQL.Strings = (
      
        'select cab.id_egreso,det.id,det.id_cpbte, cab.fecha,cab.tipocpbt' +
        'e,cab.clasecpbte,cab.nrocpbte,'
      
        '       det.codigogasto,stk.detalle,Sum(det.importe) as DetImport' +
        'e,'
      
        '       app.ctro_costo,ccos.descripcion,app.imputado,app.porcenta' +
        'je,app.id as Id_appCosto from egr_caja_detalle Det'
      '  left join egr_caja Cab on Cab.id_egreso=det.id_cpbte'
      '  left join gastos_cuentas stk on stk.codigo=det.codigogasto'
      
        '  left join aplica_ctro_costo app on app.id_cpbte=cab.id_egreso ' +
        'and app.tipocpbte=cab.tipocpbte and app.concepto=det.codigogasto'
      '  left join centro_costo ccos on ccos.id=app.ctro_costo'
      'where det.id_cpbte between :iddesde and :idhasta'
      
        '  group by cab.id_egreso,det.id,det.id_cpbte, cab.fecha,cab.tipo' +
        'cpbte,cab.clasecpbte,cab.nrocpbte,'
      '           det.codigogasto,stk.detalle,'
      
        '           app.ctro_costo,ccos.descripcion,app.imputado,app.porc' +
        'entaje,app.id'
      'order by det.id')
    Left = 832
    Top = 153
    ParamData = <
      item
        Position = 1
        Name = 'IDDESDE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'IDHASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDetEgresosID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
    end
    object QDetEgresosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetEgresosID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QDetEgresosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QDetEgresosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QDetEgresosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QDetEgresosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QDetEgresosCODIGOGASTO: TStringField
      FieldName = 'CODIGOGASTO'
      Origin = 'CODIGOGASTO'
      Size = 6
    end
    object QDetEgresosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QDetEgresosDETIMPORTE: TFloatField
      FieldName = 'DETIMPORTE'
      Origin = 'DETIMPORTE'
    end
    object QDetEgresosCTRO_COSTO: TIntegerField
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
    end
    object QDetEgresosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object QDetEgresosIMPUTADO: TFloatField
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
    end
    object QDetEgresosPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QDetEgresosID_APPCOSTO: TIntegerField
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID_APPCOSTO'
    end
  end
  object QDetIngresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    UpdateOptions.AssignedValues = [uvCheckReadOnly]
    UpdateOptions.CheckReadOnly = False
    SQL.Strings = (
      
        'select cab.id_ingreso,det.id,det.id_cpbte, cab.fecha,cab.tipocpb' +
        'te,cab.clasecpbte,cab.nrocpbte,'
      
        '       det.codigoingreso,stk.detalle,Sum(det.importe) as DetImpo' +
        'rte,'
      
        '       app.ctro_costo,ccos.descripcion,app.imputado,app.porcenta' +
        'je,app.id as Id_appCosto from ing_caja_detalle Det'
      '  left join ing_caja Cab on Cab.id_ingreso=det.id_cpbte'
      '  left join gastos_cuentas stk on stk.codigo=det.codigoingreso'
      
        '  left join aplica_ctro_costo app on app.id_cpbte=cab.id_ingreso' +
        ' and app.tipocpbte=cab.tipocpbte and app.concepto=det.codigoingr' +
        'eso'
      '  left join centro_costo ccos on ccos.id=app.ctro_costo'
      'where det.id_cpbte between :iddesde and :idhasta'
      
        '  group by cab.id_ingreso,det.id,det.id_cpbte, cab.fecha,cab.tip' +
        'ocpbte,cab.clasecpbte,cab.nrocpbte,'
      '           det.codigoingreso,stk.detalle,'
      
        '           app.ctro_costo,ccos.descripcion,app.imputado,app.porc' +
        'entaje,app.id'
      'order by det.id')
    Left = 832
    Top = 203
    ParamData = <
      item
        Name = 'IDDESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDHASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDetIngresosID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      Origin = 'ID_INGRESO'
    end
    object QDetIngresosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetIngresosID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QDetIngresosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QDetIngresosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QDetIngresosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QDetIngresosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QDetIngresosCODIGOINGRESO: TStringField
      FieldName = 'CODIGOINGRESO'
      Origin = 'CODIGOINGRESO'
      Size = 6
    end
    object QDetIngresosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QDetIngresosDETIMPORTE: TFloatField
      FieldName = 'DETIMPORTE'
      Origin = 'DETIMPORTE'
    end
    object QDetIngresosCTRO_COSTO: TIntegerField
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
    end
    object QDetIngresosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object QDetIngresosIMPUTADO: TFloatField
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
    end
    object QDetIngresosPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QDetIngresosID_APPCOSTO: TIntegerField
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID_APPCOSTO'
    end
  end
  object QDetPersonal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    UpdateOptions.AssignedValues = [uvCheckReadOnly]
    UpdateOptions.CheckReadOnly = False
    SQL.Strings = (
      'select ad.id,ad.fecha,ad.tipocpbte,ad.clasecpbte,ad.nrocpbte,'
      '       ad.codigo,ad.detalle,ad.importe,'
      
        '       app.ctro_costo,ccos.descripcion,app.imputado,app.porcenta' +
        'je,app.id as Id_appCosto from adelantos_sueldo ad'
      
        '  left join aplica_ctro_costo app on app.id_cpbte=AD.id and app.' +
        'tipocpbte=AD.tipocpbte and ad.codigo=app.concepto'
      '  left join centro_costo ccos on ccos.id=app.ctro_costo'
      'where ad.fecha between :desde and :hasta')
    Left = 832
    Top = 253
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
      end>
    object QDetPersonalID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetPersonalFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QDetPersonalTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QDetPersonalCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QDetPersonalNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QDetPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QDetPersonalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QDetPersonalIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QDetPersonalCTRO_COSTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      ProviderFlags = []
    end
    object QDetPersonalDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
    object QDetPersonalIMPUTADO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
      ProviderFlags = []
    end
    object QDetPersonalPORCENTAJE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      ProviderFlags = []
    end
    object QDetPersonalID_APPCOSTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID'
      ProviderFlags = []
    end
  end
  object QGastos_2: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from LST_POR_CTRO_COSTO_new_2(:desde,:hasta,:ingresos,:' +
        'vtas,:personal) where ctrocosto= :ct or :ct = -1'
      '      order by ctrocosto,fecha')
    Left = 832
    Top = 352
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
        Name = 'ingresos'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'vtas'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'personal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'ct'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'ct'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDetGstoBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cab.id,det.id as ID_DET, cab.fecha,cab.tipocpbte,cab.clas' +
        'ecpbte,cab.nrocpbte,'
      
        '       det.codigo_concepto,stk.detalle,(Sum(det.debe)+sum(det.ha' +
        'ber)) as DetImporte,'
      
        '       app.ctro_costo,ccos.descripcion,app.imputado,app.porcenta' +
        'je,app.id as Id_appCosto from gastos_bco_det Det'
      '  left join gastos_bco_cab Cab on Cab.id=det.id_gasto_cab'
      
        '  left join conceptos_bancarios stk on stk.codigo=det.codigo_con' +
        'cepto'
      
        '  left join aplica_ctro_costo app on app.id_cpbte=cab.id and app' +
        '.tipocpbte=cab.tipocpbte and app.concepto=det.codigo_concepto'
      '  left join centro_costo ccos on ccos.id=app.ctro_costo'
      'where cab.fecha between :desde and :hasta'
      
        '  group by cab.id,det.id, cab.fecha,cab.tipocpbte,cab.clasecpbte' +
        ',cab.nrocpbte,'
      '           det.codigo_concepto,stk.detalle,'
      
        '           app.ctro_costo,ccos.descripcion,app.imputado,app.porc' +
        'entaje,app.id'
      'order by det.id')
    Left = 832
    Top = 302
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
      end>
    object QDetGstoBcoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QDetGstoBcoID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      Required = True
    end
    object QDetGstoBcoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QDetGstoBcoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QDetGstoBcoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QDetGstoBcoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QDetGstoBcoCODIGO_CONCEPTO: TStringField
      FieldName = 'CODIGO_CONCEPTO'
      Origin = 'CODIGO_CONCEPTO'
      Required = True
      Size = 3
    end
    object QDetGstoBcoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QDetGstoBcoDETIMPORTE: TFloatField
      FieldName = 'DETIMPORTE'
      Origin = 'DETIMPORTE'
    end
    object QDetGstoBcoCTRO_COSTO: TIntegerField
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
    end
    object QDetGstoBcoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object QDetGstoBcoIMPUTADO: TFloatField
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
    end
    object QDetGstoBcoPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QDetGstoBcoID_APPCOSTO: TIntegerField
      FieldName = 'ID_APPCOSTO'
      Origin = 'ID_APPCOSTO'
    end
  end
  object QInsertarMovCtrCosto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'insert into aplica_ctro_costo  (id,'
      '                                  id_cpbte,'
      '                                  tipocpbte,'
      '                                  ctro_costo,'
      '                                  imputado,'
      '                                  total,'
      '                                  porcentaje,'
      '                                  tipo,'
      '                                  concepto,'
      '                                  detalle_concep,'
      '                                  importe_linea,'
      '                                  porcentaje_total)'
      '  values(gen_id(next_id_ctro_costo,1),:id_cpbte,:tipocpbte,'
      '                                  :ctro_costo,'
      '                                  :imputado,'
      '                                  :total,'
      '                                  :porcentaje,'
      '                                  :tipo,'
      '                                  :concepto,'
      '                                  :detalle_concep,'
      '                                  :importe_linea,'
      '                                  :porcentaje_total)')
    Left = 568
    Top = 508
    ParamData = <
      item
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPOCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CTRO_COSTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IMPUTADO'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'CONCEPTO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'DETALLE_CONCEP'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'IMPORTE_LINEA'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Name = 'PORCENTAJE_TOTAL'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
  end
  object QModificaMovCtrCosto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update aplica_ctro_costo set imputado   = :imputado,'
      '                             porcentaje = :porcentaje,'
      '                             ctro_costo = :ctrocosto '
      'where id = :id'
      '')
    Left = 720
    Top = 488
    ParamData = <
      item
        Name = 'IMPUTADO'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Name = 'CTROCOSTO'
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBorrarMovCtrCosto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from aplica_ctro_costo where id = :id')
    Left = 684
    Top = 170
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object PopupMenu2: TPopupMenu
    Left = 508
    Top = 393
    object LimpiarFiltros: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltrosClick
    end
  end
end

inherited FormLstPresupuestoDetalle: TFormLstPresupuestoDetalle
  Caption = 'Listado de Presupuestos Con Detalles'
  ClientHeight = 676
  ClientWidth = 1439
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1457
  ExplicitHeight = 717
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1439
    Height = 623
    Align = alClient
    Color = clMenuHighlight
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1439
    ExplicitHeight = 623
    object pcPresupuestos: TPageControl
      Left = 0
      Top = 64
      Width = 1439
      Height = 559
      ActivePage = pag1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object pag1: TTabSheet
        Caption = 'Listado Detalle'
        object Splitter1: TSplitter
          Left = 0
          Top = 321
          Width = 1431
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = 157
          ExplicitWidth = 1057
        end
        object Splitter2: TSplitter
          Left = 774
          Top = 324
          Width = 4
          Height = 207
          ExplicitLeft = 744
          ExplicitTop = 327
          ExplicitHeight = 199
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1431
          Height = 321
          Align = alTop
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu3
            OnCellDblClick = cxGrid3DBTableView1CellDblClick
            OnCustomDrawCell = cxGrid3DBTableView1CustomDrawCell
            DataController.DataSource = DSFacCab
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.000'
                Kind = skSum
                Position = spFooter
                FieldName = 'TOTAL'
                Column = cxGrid3DBTableView1TOTAL
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.000'
                Kind = skSum
                FieldName = 'TOTAL'
                Column = cxGrid3DBTableView1TOTAL
                DisplayText = 'Total'
              end
              item
                Format = ',0.000'
                Kind = skSum
                FieldName = 'TOTALITEMGRAVADO'
                Column = cxGrid3DBTableView1TOTALITEMGRAVADO
              end
              item
                Format = ',0.000'
                Kind = skSum
                FieldName = 'TOTALACEPTADOS'
                Column = cxGrid3DBTableView1TOTAL
                DisplayText = 'Acpetados'
                VisibleForCustomization = False
              end
              item
                Format = ',0.000'
                Kind = skSum
                FieldName = 'TOTALESPERA'
                Column = cxGrid3DBTableView1TOTAL
                DisplayText = 'En Espera'
              end
              item
                Format = ',0.000'
                FieldName = 'TOTALRECHAZADOS'
                Column = cxGrid3DBTableView1TOTAL
                DisplayText = 'Rechazado'
              end>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            Styles.Header = cxStyle1
            object cxGrid3DBTableView1SUCFAC: TcxGridDBColumn
              DataBinding.FieldName = 'SUCFAC'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 38
            end
            object cxGrid3DBTableView1FECHAVTA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHAVTA'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 85
            end
            object cxGrid3DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 28
            end
            object cxGrid3DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 28
            end
            object cxGrid3DBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPTE_SUF'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 110
            end
            object cxGrid3DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 58
            end
            object cxGrid3DBTableView1RAZONSOCIAL: TcxGridDBColumn
              DataBinding.FieldName = 'RAZONSOCIAL'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGrid3DBTableView1REFERENCIA: TcxGridDBColumn
              DataBinding.FieldName = 'REFERENCIA'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 300
            end
            object cxGrid3DBTableView1OBRA: TcxGridDBColumn
              DataBinding.FieldName = 'OBRA'
              HeaderAlignmentHorz = taCenter
              Width = 160
            end
            object cxGrid3DBTableView1TOTALITEMGRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALITEMGRAVADO'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 93
            end
            object cxGrid3DBTableView1SIGNO: TcxGridDBColumn
              DataBinding.FieldName = 'SIGNO'
              HeaderAlignmentHorz = taCenter
              Width = 36
            end
            object cxGrid3DBTableView1TOTAL: TcxGridDBColumn
              AlternateCaption = 'Aceptados'
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 90
            end
            object cxGrid3DBTableView1MUESTRAESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAESTADO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 77
            end
            object cxGrid3DBTableView1INC_DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'INC_DETALLE'
              HeaderAlignmentHorz = taCenter
              Width = 604
            end
            object cxGrid3DBTableView1INC_FECHA_HORA: TcxGridDBColumn
              DataBinding.FieldName = 'INC_FECHA_HORA'
              HeaderAlignmentHorz = taCenter
              Width = 98
            end
            object cxGrid3DBTableView1INC_USUARIO: TcxGridDBColumn
              DataBinding.FieldName = 'INC_USUARIO'
              HeaderAlignmentHorz = taCenter
              Width = 92
            end
            object cxGrid3DBTableView1INC_CONTACTO: TcxGridDBColumn
              DataBinding.FieldName = 'INC_CONTACTO'
              HeaderAlignmentHorz = taCenter
              Width = 301
            end
            object cxGrid3DBTableView1INC_ASUNTO: TcxGridDBColumn
              DataBinding.FieldName = 'INC_ASUNTO'
              HeaderAlignmentHorz = taCenter
              Width = 416
            end
            object cxGrid3DBTableView1TIPOOBRA: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOOBRA'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
        object pnDetalle: TPanel
          Left = 0
          Top = 324
          Width = 774
          Height = 207
          Align = alLeft
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentBackground = False
          TabOrder = 1
          object cxGrid5: TcxGrid
            Left = 6
            Top = 6
            Width = 762
            Height = 195
            Align = alClient
            PopupMenu = PopupMenu1
            TabOrder = 0
            object cxGrid5DBTableView1: TcxGridDBTableView
              DataController.DataSource = DSFacDet
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.00'
                  Kind = skSum
                  FieldName = 'TOTAL'
                  Column = cxGrid5DBTableView1TOTAL
                end>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.Header = cxStyle1
              object cxGrid5DBTableView1CODIGOARTICULO: TcxGridDBColumn
                DataBinding.FieldName = 'CODIGOARTICULO'
                HeaderAlignmentHorz = taCenter
                Width = 104
              end
              object cxGrid5DBTableView1DETALLE: TcxGridDBColumn
                DataBinding.FieldName = 'DETALLE'
                HeaderAlignmentHorz = taCenter
                Width = 253
              end
              object cxGrid5DBTableView1UNIDAD: TcxGridDBColumn
                DataBinding.FieldName = 'UNIDAD'
                HeaderAlignmentHorz = taCenter
                Width = 32
              end
              object cxGrid5DBTableView1DESCUENTO: TcxGridDBColumn
                DataBinding.FieldName = 'DESCUENTO'
                HeaderAlignmentHorz = taCenter
              end
              object cxGrid5DBTableView1CANTIDAD: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD'
                HeaderAlignmentHorz = taCenter
              end
              object cxGrid5DBTableView1UNITARIO_TOTAL: TcxGridDBColumn
                Caption = 'Unitario'
                DataBinding.FieldName = 'UNITARIO_TOTAL'
                HeaderAlignmentHorz = taCenter
              end
              object cxGrid5DBTableView1SIGNO: TcxGridDBColumn
                DataBinding.FieldName = 'SIGNOMONEDA'
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 28
              end
              object cxGrid5DBTableView1TOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL'
                HeaderAlignmentHorz = taCenter
                Width = 84
              end
              object cxGrid5DBTableView1ITEM_NRO: TcxGridDBColumn
                DataBinding.FieldName = 'ITEM_NRO'
                HeaderAlignmentHorz = taCenter
                Width = 50
              end
            end
            object cxGrid5Level1: TcxGridLevel
              GridView = cxGrid5DBTableView1
            end
          end
        end
        object pnDetTotal: TPanel
          Left = 778
          Top = 324
          Width = 653
          Height = 207
          Align = alClient
          ParentBackground = False
          TabOrder = 2
          object cxGrid4: TcxGrid
            Left = 1
            Top = 1
            Width = 651
            Height = 205
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              DataController.DataSource = DSPresuSubDet
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.000'
                  Kind = skSum
                  FieldName = 'TOTAL_NETO'
                end
                item
                  Format = ',0.000'
                  Kind = skSum
                  FieldName = 'TOTAL_FINAL'
                end>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.Footer = cxStyle2
              Styles.Header = cxStyle1
              object cxGridDBTableView1ITEM_NRO: TcxGridDBColumn
                DataBinding.FieldName = 'ITEM_NRO'
              end
              object cxGridDBTableView1DETALLE: TcxGridDBColumn
                DataBinding.FieldName = 'DETALLE'
              end
              object cxGridDBTableView1CANTIDAD: TcxGridDBColumn
                DataBinding.FieldName = 'CANTIDAD'
              end
              object cxGridDBTableView1TOTAL_GRAVADO: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL_GRAVADO'
              end
              object cxGridDBTableView1TOTAL_UNIT_FINAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL_UNIT_FINAL'
              end
              object cxGridDBTableView1TOTAL_NETO: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL_NETO'
              end
              object cxGridDBTableView1TOTAL_IVA: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL_IVA'
              end
              object cxGridDBTableView1TOTAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL'
              end
              object cxGridDBTableView1TOTAL_FINAL: TcxGridDBColumn
                DataBinding.FieldName = 'TOTAL_FINAL'
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
      object pag2: TTabSheet
        Caption = 'Listado Agrupado x Fecha'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1431
          Height = 496
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGrid2DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            OnCellDblClick = cxGrid2DBTableView1CellDblClick
            DataController.DataSource = DSLstAgrupada
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'TOTAL_CIVA'
                Column = cxGrid2DBTableView1TOTAL_CIVA
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                OnGetText = cxGrid2DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                FieldName = 'TOTAL_CIVA'
                Column = cxGrid2DBTableView1TOTAL_CIVA
              end>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            Styles.Group = cxStyle1
            Styles.GroupByBox = cxStyle1
            Styles.Header = cxStyle1
            object cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 111
            end
            object cxGrid2DBTableView1FECHAVTA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHAVTA'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
            object cxGrid2DBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Width = 148
            end
            object cxGrid2DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid2DBTableView1CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGrid2DBTableView1UNITARIO_CIVA: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_CIVA'
              HeaderAlignmentHorz = taCenter
              Width = 107
            end
            object cxGrid2DBTableView1IVA_UNITARIO: TcxGridDBColumn
              DataBinding.FieldName = 'IVA_UNITARIO'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxGrid2DBTableView1IVA_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'IVA_TOTAL'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxGrid2DBTableView1TOTAL_CIVA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_CIVA'
              HeaderAlignmentHorz = taCenter
              Width = 94
            end
            object cxGrid2DBTableView1MUESTRAPRESPUESTO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAPRESPUESTO'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              IsCaptionAssigned = True
            end
          end
          object cxGrid2DBTableView2: TcxGridDBTableView
            DataController.DataSource = DSFacDet
            DataController.DetailKeyFieldNames = 'ID_CABPRES'
            DataController.KeyFieldNames = 'ID'
            DataController.MasterKeyFieldNames = 'ID_PR'
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView2CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
            end
            object cxGrid2DBTableView2DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
            end
            object cxGrid2DBTableView2DETALLE_ADICIONAL: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_ADICIONAL'
            end
            object cxGrid2DBTableView2UNIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'UNIDAD'
            end
            object cxGrid2DBTableView2DESCUENTO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCUENTO'
            end
            object cxGrid2DBTableView2CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
            end
            object cxGrid2DBTableView2IVA_UNITARIO: TcxGridDBColumn
              DataBinding.FieldName = 'IVA_UNITARIO'
            end
            object cxGrid2DBTableView2UNITARIO_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_TOTAL'
            end
            object cxGrid2DBTableView2TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 496
          Width = 1431
          Height = 35
          Align = alBottom
          Color = clHighlight
          ParentBackground = False
          TabOrder = 1
          object cbEstados: TComboBox
            Left = 12
            Top = 6
            Width = 181
            Height = 21
            TabOrder = 0
            Text = 'Todos'
            OnClick = cbEstadosClick
            Items.Strings = (
              'Todos'
              'Nuevos'
              'Anulado'
              'Aceptado'
              'Vencido '
              'Revision ')
          end
        end
      end
      object pagAgrupado: TTabSheet
        Caption = 'Agrupado'
        ImageIndex = 2
        object Label3: TLabel
          Left = 0
          Top = 518
          Width = 1431
          Height = 13
          Cursor = crHandPoint
          Align = alBottom
          Caption = 'Mostrar Campos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label3Click
          ExplicitWidth = 76
        end
        object Label4: TLabel
          Left = 0
          Top = 505
          Width = 1431
          Height = 13
          Cursor = crHandPoint
          Align = alBottom
          Caption = 'Muestra Totales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = Label4Click
          ExplicitWidth = 76
        end
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1431
          Height = 505
          Align = alClient
          DataSource = DSLstAgrupada
          Groups = <>
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsView.ColumnGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalText = 'Totales'
          PopupMenu = PopupMenu4
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1CLASECPBTE: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CLASECPBTE'
            Visible = True
            UniqueName = 'Cl'
          end
          object cxDBPivotGrid1NROCPBTE: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'NROCPBTESUB'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid1FECHAVTA: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'FECHAVTA'
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGrid1CODIGO: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'CODIGO'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Codigo'
          end
          object cxDBPivotGrid1NOMBRE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'NOMBRE'
            MinWidth = 200
            Visible = True
            UniqueName = 'Nombre'
          end
          object cxDBPivotGrid1RAZONSOCIAL: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'RAZONSOCIAL'
            Visible = True
            UniqueName = 'Razon Social'
          end
          object cxDBPivotGrid1CODIGOARTICULO: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'CODIGOARTICULO'
            Visible = True
            UniqueName = 'Cod.Artic.'
          end
          object cxDBPivotGrid1DETALLE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE'
            MinWidth = 280
            Visible = True
            UniqueName = 'Detalle'
          end
          object cxDBPivotGrid1CANTIDAD: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'CANTIDAD'
            SummaryType = stMax
            SortBySummaryInfo.SummaryType = stCustom
            Visible = True
            UniqueName = 'Cantidad'
          end
          object cxDBPivotGrid1UNITARIO_TOTAL: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            DataBinding.FieldName = 'UNITARIO_TOTAL'
            SummaryType = stMax
            Visible = True
            UniqueName = 'Prec.Unit'
          end
          object cxDBPivotGrid1IVA_UNITARIO: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'IVA_UNITARIO'
            Visible = True
            UniqueName = 'Iva Unit'
          end
          object cxDBPivotGrid1IVA_TOTAL: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'IVA_TOTAL'
            Visible = True
            UniqueName = 'Iva Total'
          end
          object cxDBPivotGrid1TOTAL: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'TOTAL'
            Visible = True
            UniqueName = 'Total'
          end
          object cxDBPivotGrid1MUESTRAPRESPUESTO: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'MUESTRAPRESPUESTO'
            Visible = True
            UniqueName = 'MUESTRAPRESPUESTO'
          end
          object cxDBPivotGrid1UNITARIO_CIVA: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'UNITARIO_CIVA'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Unitario C.Iva'
          end
          object cxDBPivotGrid1TOTAL_CIVA: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'TOTAL_CIVA'
            Visible = True
            UniqueName = 'Total c.Iva'
          end
          object cxDBPivotGrid1DIA: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'DIA'
            Visible = True
            UniqueName = 'Dia'
          end
          object cxDBPivotGrid1MES: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid1ANIO: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'ANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGrid1ANULADO: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'ANULADO'
            Visible = True
            UniqueName = 'Estado'
          end
        end
        object pnTotales: TJvPanel
          Left = 3
          Top = 258
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
            Left = 287
            Top = 4
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
            Top = 32
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
      end
      object pagLst_Itmes: TTabSheet
        Caption = 'Listado con Itmes'
        ImageIndex = 3
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1431
          Height = 490
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            OnDblClick = cxGrid1DBTableView1DblClick
            DataController.DataSource = DSLstAgrupadaItems
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'ITEM_TOTAL'
                Column = cxGrid1DBTableView1ITEM_TOTAL
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'ITEM_TOTAL'
                Column = cxGrid1DBTableView1ITEM_TOTAL
              end>
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGrid1DBTableView1ID_CABPRES: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CABPRES'
              Visible = False
              Width = 70
            end
            object cxGrid1DBTableView1NRO_FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_FECHA'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Styles.Content = cxStyle3
              Width = 53
              OnCompareRowValuesForCellMerging = cxGrid1DBTableView1CODIGOCompareRowValuesForCellMerging
            end
            object cxGrid1DBTableView1RAZONSOCIAL: TcxGridDBColumn
              DataBinding.FieldName = 'RAZONSOCIAL'
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Styles.Content = cxStyle3
              Width = 240
              OnCompareRowValuesForCellMerging = cxGrid1DBTableView1RAZONSOCIALCompareRowValuesForCellMerging
            end
            object cxGrid1DBTableView1NRO_ITEM: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_ITEM_DET'
              HeaderAlignmentHorz = taCenter
              Styles.Content = cxStyle3
              Width = 54
            end
            object cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Styles.Content = cxStyle3
              Width = 129
            end
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Styles.Content = cxStyle3
            end
            object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
              HeaderAlignmentHorz = taCenter
              Styles.Content = cxStyle3
              Width = 58
            end
            object cxGrid1DBTableView1UNITARIO_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_TOTAL'
              HeaderAlignmentHorz = taCenter
              Styles.Content = cxStyle3
              Width = 69
            end
            object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Styles.Content = cxStyle3
              Width = 90
            end
            object cxGrid1DBTableView1ITEM_NRO: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_NRO'
              HeaderAlignmentHorz = taCenter
              Width = 48
              OnCompareRowValuesForCellMerging = cxGrid1DBTableView1ITEM_NROCompareRowValuesForCellMerging
            end
            object cxGrid1DBTableView1ITEMDETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'ITEMDETALLE'
              HeaderAlignmentHorz = taCenter
              Width = 224
              OnCompareRowValuesForCellMerging = cxGrid1DBTableView1ITEMDETALLECompareRowValuesForCellMerging
            end
            object cxGrid1DBTableView1ITEMCANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'ITEMCANTIDAD'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 42
              OnCompareRowValuesForCellMerging = cxGrid1DBTableView1ITEMCANTIDADCompareRowValuesForCellMerging
            end
            object cxGrid1DBTableView1ITEM_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_GRAVADO'
              HeaderAlignmentHorz = taCenter
              Width = 85
              OnCompareRowValuesForCellMerging = cxGrid1DBTableView1ITEM_GRAVADOCompareRowValuesForCellMerging
            end
            object cxGrid1DBTableView1ITEM_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_TOTAL'
              HeaderAlignmentHorz = taCenter
              Width = 90
              OnCompareRowValuesForCellMerging = cxGrid1DBTableView1ITEM_TOTALCompareRowValuesForCellMerging
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              Visible = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 490
          Width = 1431
          Height = 41
          Align = alBottom
          Color = clHighlight
          ParentBackground = False
          TabOrder = 1
          object JvDBFindEdit1: TJvDBFindEdit
            Left = 15
            Top = 12
            Width = 330
            Height = 21
            CharCase = ecUpperCase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = ''
            OnKeyPress = JvDBFindEdit1KeyPress
            TextHint = 'Nombre Cliente'
            DataField = 'RAZONSOCIAL'
            DataSource = DSLstAgrupadaItems
            FindStyle = fsFilter
            FindMode = fmAnyPos
          end
          object JvDBFindEdit2: TJvDBFindEdit
            Left = 351
            Top = 12
            Width = 138
            Height = 21
            CharCase = ecUpperCase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Text = ''
            OnKeyPress = JvDBFindEdit2KeyPress
            TextHint = 'Codigo'
            DataField = 'CODIGO_ATERNATIVO'
            DataSource = DSLstAgrupadaItems
            FindStyle = fsFilter
            FindMode = fmAnyPos
          end
          object JvDBFindEdit3: TJvDBFindEdit
            Left = 495
            Top = 12
            Width = 402
            Height = 21
            CharCase = ecUpperCase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Text = ''
            OnChange = JvDBFindEdit3Change
            OnKeyPress = JvDBFindEdit3KeyPress
            TextHint = 'Codigo'
            DataField = 'DETALLE'
            DataSource = DSLstAgrupadaItems
            FindStyle = fsFilter
            FindMode = fmAnyPos
          end
        end
      end
      object pagPresFac: TTabSheet
        Caption = 'Presupuestos Vs. Facturas'
        ImageIndex = 4
        object dbgPresupuestos: TDBGrid
          Left = 0
          Top = 0
          Width = 1431
          Height = 496
          Align = alClient
          DataSource = DSPresuFactura
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgPresupuestosDrawColumnCell
          OnDblClick = dbgPresupuestosDblClick
          OnTitleClick = dbgPresupuestosTitleClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHAVTA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Pres.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 109
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NROCPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Nro. Cpbte. Pres'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 124
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Cod. Cliente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 270
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NROCPBTE_1'
              Title.Alignment = taCenter
              Title.Caption = 'Nro. Cpbte. Fac'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 121
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHAVTA_1'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Fac.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTALPRESUPUESTO'
              Title.Alignment = taCenter
              Title.Caption = 'Total Pres.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 143
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTALFACTURA'
              Title.Alignment = taCenter
              Title.Caption = 'Total Fac.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 143
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHA_REVISION'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Revision'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 109
              Visible = True
            end>
        end
        object pnPieDetalles: TPanel
          Left = 0
          Top = 496
          Width = 1431
          Height = 35
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1431
            35)
          object PorcentajeAceptados: TLabel
            Left = 759
            Top = 12
            Width = 29
            Height = 13
            Caption = '0.00%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object PorcentajeModificados: TLabel
            Left = 883
            Top = 12
            Width = 29
            Height = 13
            Caption = '0.00%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object PorcentajeNoAceptados: TLabel
            Left = 1009
            Top = 12
            Width = 29
            Height = 13
            Caption = '0.00%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object pnAcept: TPanel
            Left = 792
            Top = 8
            Width = 80
            Height = 20
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Color = clMoneyGreen
            Padding.Left = 4
            Padding.Right = 4
            ParentBackground = False
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 3
              Width = 51
              Height = 13
              Margins.Left = 0
              Margins.Top = 2
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Alignment = taCenter
              Caption = 'Aceptados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object pnModif: TPanel
            Left = 916
            Top = 8
            Width = 80
            Height = 20
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Color = clRed
            ParentBackground = False
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 1
              Top = 3
              Width = 57
              Height = 13
              Margins.Left = 0
              Margins.Top = 2
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Alignment = taCenter
              Caption = 'Modificados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object pnAceptados: TPanel
            Left = 1043
            Top = 8
            Width = 80
            Height = 20
            Color = clWhite
            ParentBackground = False
            TabOrder = 2
            object Label7: TLabel
              AlignWithMargins = True
              Left = 1
              Top = 3
              Width = 68
              Height = 13
              Margins.Left = 0
              Margins.Top = 2
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Alignment = taCenter
              Caption = 'No Aceptados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object btBuscarPresuFc: TBitBtn
            Left = 1302
            Top = 6
            Width = 81
            Height = 26
            Action = BuscarPresuFac
            Anchors = [akRight, akBottom]
            Caption = 'Buscar'
            DisabledImageIndex = 7
            Images = ImageListDos
            TabOrder = 3
          end
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1439
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object pnCab: TPanel
        Left = 0
        Top = 0
        Width = 1439
        Height = 64
        Align = alTop
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 0
        object RxLabel1: TJvLabel
          Left = 644
          Top = 12
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
          Left = 748
          Top = 13
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
          Left = 236
          Top = 11
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
        object Label1: TLabel
          Left = 7
          Top = 11
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
        object UpDown1: TUpDown
          Left = 851
          Top = 30
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
        object Hasta: TJvDateEdit
          Left = 748
          Top = 30
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
          TabOrder = 1
          OnAcceptDate = HastaAcceptDate
        end
        object edNombreCliente: TEdit
          Left = 317
          Top = 30
          Width = 312
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 2
        end
        object Desde: TJvDateEdit
          Left = 644
          Top = 30
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
          TabOrder = 3
          OnAcceptDate = DesdeAcceptDate
        end
        object dbcSucursal: TJvDBLookupCombo
          Left = 7
          Top = 30
          Width = 217
          Height = 21
          DisplayEmpty = 'Todas las Sucursales'
          EmptyValue = '-1'
          LookupField = 'CODIGO'
          LookupDisplay = 'DETALLE'
          LookupSource = DSSucursales
          TabOrder = 4
        end
        object chTodosLosClientes: TAdvOfficeCheckBox
          Left = 466
          Top = 13
          Width = 116
          Height = 11
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          TabStop = True
          OnClick = chTodosLosClientesClick
          Alignment = taLeftJustify
          Caption = 'Todos los Clientes'
          ReturnIsTab = False
          State = cbChecked
          Version = '1.8.4.2'
        end
        object ceCliente: TJvComboEdit
          Left = 236
          Top = 30
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
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 623
    Width = 1439
    Align = alBottom
    ExplicitTop = 623
    ExplicitWidth = 1439
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
      Width = 25
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 582
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
      OnClick = btImprimirClick
    end
    object btExportarExcel: TBitBtn
      Left = 657
      Top = 0
      Width = 113
      Height = 29
      Caption = 'Exportar a Excel'
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
      OnClick = btExportarExcelClick
    end
  end
  inherited Panel1: TPanel
    Top = 653
    Width = 1439
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 653
    ExplicitWidth = 1439
    inherited sbEstado: TStatusBar
      Width = 1350
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1350
    end
  end
  inherited ActionList1: TActionList
    Left = 632
    Top = 152
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BuscarPresuFac: TAction
      Caption = 'Buscar'
      ImageIndex = 7
      OnExecute = BuscarPresuFacExecute
    end
  end
  inherited DSBase: TDataSource
    Top = 48
  end
  inherited ImageList1: TImageList
    Left = 952
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
    Left = 720
    Top = 184
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 80
    Top = 544
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 808
    Top = 256
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 624
    Top = 368
  end
  inherited QBrowse2: TFDQuery
    Left = 80
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 64
    Top = 448
  end
  object DSPFacCab: TDataSetProvider
    DataSet = QFacC_New
    Left = 256
    Top = 200
  end
  object DSPFacDet: TDataSetProvider
    DataSet = QFacD
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 264
    Top = 152
  end
  object CDSFacCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
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
      end>
    ProviderName = 'DSPFacCab'
    OnCalcFields = CDSFacCabCalcFields
    Left = 320
    Top = 208
    object CDSFacCabID_PR: TIntegerField
      FieldName = 'ID_PR'
      Origin = 'ID_PR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFacCabTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSFacCabCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSFacCabNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      OnGetText = CDSFacCabNROCPBTEGetText
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSFacCabCODIGO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSFacCabLETRAFAC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Letra'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Size = 1
    end
    object CDSFacCabSUCFAC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Suc.'
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSFacCabNUMEROFAC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object CDSFacCabNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSFacCabRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSFacCabANULADO: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 16
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      OnGetText = CDSFacCabANULADOGetText
      Size = 1
    end
    object CDSFacCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSFacCabTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSFacCabREFERENCIA: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object CDSFacCabTOTALITEMGRAVADO: TFloatField
      DisplayLabel = 'Item Neto Gra.'
      FieldName = 'TOTALITEMGRAVADO'
      Origin = 'TOTALITEMGRAVADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSFacCabMUESTRAESTADO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Estado'
      FieldKind = fkCalculated
      FieldName = 'MUESTRAESTADO'
      Size = 15
      Calculated = True
    end
    object CDSFacCabSUB_NRO: TStringField
      DisplayLabel = 'Sub.'
      FieldName = 'SUB_NRO'
      Origin = 'SUB_NRO'
      Required = True
      Size = 2
    end
    object CDSFacCabNROCPTE_SUF: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 18
      FieldKind = fkCalculated
      FieldName = 'NROCPTE_SUF'
      Size = 18
      Calculated = True
    end
    object CDSFacCabINC_DETALLE: TStringField
      DisplayLabel = 'Detalle Inc.'
      FieldName = 'INC_DETALLE'
      Origin = 'INC_DETALLE'
      Size = 200
    end
    object CDSFacCabINC_USUARIO: TStringField
      DisplayLabel = 'Usuario Inc.'
      FieldName = 'INC_USUARIO'
      Origin = 'INC_USUARIO'
      Size = 50
    end
    object CDSFacCabINC_CONTACTO: TStringField
      DisplayLabel = 'Contacto Inci.'
      FieldName = 'INC_CONTACTO'
      Origin = 'INC_CONTACTO'
      Size = 150
    end
    object CDSFacCabINC_ASUNTO: TStringField
      DisplayLabel = 'Asunto Inci.'
      FieldName = 'INC_ASUNTO'
      Origin = 'INC_ASUNTO'
      Size = 200
    end
    object CDSFacCabOBRA: TStringField
      DisplayLabel = 'Obra'
      FieldName = 'OBRA'
      Origin = 'OBRA'
      Size = 100
    end
    object CDSFacCabCODIGOOBRA: TIntegerField
      FieldName = 'CODIGOOBRA'
      Origin = 'CODIGOOBRA'
    end
    object CDSFacCabFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSFacCabFECHA_TECNICA: TSQLTimeStampField
      FieldName = 'FECHA_TECNICA'
      Origin = 'FECHA_TECNICA'
    end
    object CDSFacCabFECHA_FINANCIERA: TSQLTimeStampField
      FieldName = 'FECHA_FINANCIERA'
      Origin = 'FECHA_FINANCIERA'
    end
    object CDSFacCabFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object CDSFacCabFECHA_REVISION: TSQLTimeStampField
      FieldName = 'FECHA_REVISION'
      Origin = 'FECHA_REVISION'
    end
    object CDSFacCabINC_FECHA_HORA: TSQLTimeStampField
      DisplayLabel = 'Inc.Fecha/Hora'
      FieldName = 'INC_FECHA_HORA'
      Origin = 'INC_FECHA_HORA'
    end
    object CDSFacCabTOTALACEPTADOS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTALACEPTADOS'
    end
    object CDSFacCabTOTALRECHAZADOS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTALRECHAZADOS'
    end
    object CDSFacCabTOTALESPERA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTALESPERA'
    end
    object CDSFacCabTIPOOBRA: TStringField
      DisplayLabel = 'Tipo Obra'
      FieldName = 'TIPOOBRA'
      Origin = 'TIPOOBRA'
      Size = 50
    end
    object CDSFacCabSIGNO: TStringField
      Alignment = taCenter
      DisplayLabel = 'M'
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
  end
  object CDSFacDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFacDet'
    OnCalcFields = CDSFacDetCalcFields
    Left = 320
    Top = 152
    object CDSFacDetID_CABPRES: TIntegerField
      FieldName = 'ID_CABPRES'
      Origin = 'ID_CABPRES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSFacDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFacDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSFacDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSFacDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSFacDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      OnGetText = CDSFacDetCODIGOARTICULOGetText
      Size = 8
    end
    object CDSFacDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSFacDetDETALLE_ADICIONAL: TStringField
      DisplayLabel = 'Detalle Adicional'
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object CDSFacDetUNIDAD: TStringField
      DisplayLabel = 'Uni.'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSFacDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSFacDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
    end
    object CDSFacDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
    end
    object CDSFacDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSFacDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSFacDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSFacDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSFacDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Size = 1
    end
    object CDSFacDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object CDSFacDetACEPTADO: TStringField
      FieldName = 'ACEPTADO'
      Origin = 'ACEPTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFacDetNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 100
    end
    object CDSFacDetCPBTESALIDA_ID: TIntegerField
      FieldName = 'CPBTESALIDA_ID'
      Origin = 'CPBTESALIDA_ID'
    end
    object CDSFacDetCPBTESALIDA_TIPO: TStringField
      FieldName = 'CPBTESALIDA_TIPO'
      Origin = 'CPBTESALIDA_TIPO'
      Size = 2
    end
    object CDSFacDetCPBTESALIDA_CLASE: TStringField
      FieldName = 'CPBTESALIDA_CLASE'
      Origin = 'CPBTESALIDA_CLASE'
      Size = 2
    end
    object CDSFacDetCPBTESALIDA_NROCPBTE: TStringField
      FieldName = 'CPBTESALIDA_NROCPBTE'
      Origin = 'CPBTESALIDA_NROCPBTE'
      Size = 13
    end
    object CDSFacDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
      Required = True
    end
    object CDSFacDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFacDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object CDSFacDetDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      DisplayFormat = '0.00'
    end
    object CDSFacDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFacDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object CDSFacDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
      DisplayFormat = ',0.00'
    end
    object CDSFacDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSFacDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00'
    end
    object CDSFacDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSFacDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00'
    end
    object CDSFacDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFacDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSFacDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSFacDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSFacDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSFacDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object CDSFacDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object CDSFacDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object CDSFacDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object CDSFacDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object CDSFacDetUNITARIO_CIVA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'UNITARIO_CIVA'
    end
    object CDSFacDetTOTAL_CIVA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_CIVA'
    end
    object CDSFacDetITEM_NRO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Itm.Nro'
      FieldName = 'ITEM_NRO'
      Origin = 'ITEM_NRO'
      Required = True
    end
    object CDSFacDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSFacDetESPECIFICACION: TStringField
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 45
    end
    object CDSFacDetCODALTERNATIVO: TStringField
      FieldName = 'CODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object CDSFacDetSIGNOMONEDA: TStringField
      Alignment = taCenter
      DisplayLabel = 'M'
      FieldName = 'SIGNOMONEDA'
      Origin = 'SIGNO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
  end
  object DSFacDet: TDataSource
    DataSet = CDSFacDet
    Left = 376
    Top = 144
  end
  object DSFacCab: TDataSource
    DataSet = CDSFacCab
    Left = 400
    Top = 200
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 104
    Top = 576
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
    Left = 168
    Top = 581
  end
  object DSSucursales: TDataSource
    DataSet = CDSSucursal
    Left = 240
    Top = 584
  end
  object DSLstAgrupada: TDataSource
    DataSet = CDSLstAgrupada
    Left = 460
    Top = 479
  end
  object frDBFcDet: TfrxDBDataset
    UserName = 'frDBFcDet'
    CloseDataSource = False
    DataSet = CDSFacDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 784
    Top = 512
    FieldDefs = <
      item
        FieldName = 'ID_CABPRES'
        FieldAlias = 'ID_CABPRES'
      end
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
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
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
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
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'MODO_GRAVAMEN'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end
      item
        FieldName = 'ID_MONEDA'
        FieldAlias = 'ID_MONEDA'
      end
      item
        FieldName = 'ACEPTADO'
        FieldAlias = 'ACEPTADO'
      end
      item
        FieldName = 'NOTAS'
        FieldAlias = 'NOTAS'
      end
      item
        FieldName = 'CPBTESALIDA_ID'
        FieldAlias = 'CPBTESALIDA_ID'
      end
      item
        FieldName = 'CPBTESALIDA_TIPO'
        FieldAlias = 'CPBTESALIDA_TIPO'
      end
      item
        FieldName = 'CPBTESALIDA_CLASE'
        FieldAlias = 'CPBTESALIDA_CLASE'
      end
      item
        FieldName = 'CPBTESALIDA_NROCPBTE'
        FieldAlias = 'CPBTESALIDA_NROCPBTE'
      end
      item
        FieldName = 'TIPOIB_TASA'
        FieldAlias = 'TIPOIB_TASA'
      end
      item
        FieldName = 'GRAVADO_IB'
        FieldAlias = 'GRAVADO_IB'
      end
      item
        FieldName = 'RENGLON'
        FieldAlias = 'RENGLON'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'COSTO_EXENTO'
        FieldAlias = 'COSTO_EXENTO'
      end
      item
        FieldName = 'COSTO_GRAVADO'
        FieldAlias = 'COSTO_GRAVADO'
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
        FieldName = 'TOTAL_EXENTO'
        FieldAlias = 'TOTAL_EXENTO'
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
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
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
        FieldName = 'MARGEN'
        FieldAlias = 'MARGEN'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'IB_TASA'
        FieldAlias = 'IB_TASA'
      end
      item
        FieldName = 'UNITARIO_CIVA'
        FieldAlias = 'UNITARIO_CIVA'
      end
      item
        FieldName = 'TOTAL_CIVA'
        FieldAlias = 'TOTAL_CIVA'
      end
      item
        FieldName = 'ITEM_NRO'
        FieldAlias = 'ITEM_NRO'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'ESPECIFICACION'
        FieldAlias = 'ESPECIFICACION'
      end
      item
        FieldName = 'CODALTERNATIVO'
        FieldAlias = 'CODALTERNATIVO'
      end>
  end
  object frDBFcCab: TfrxDBDataset
    UserName = 'frDBFcCab'
    CloseDataSource = False
    DataSet = CDSFacCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 848
    Top = 496
    FieldDefs = <
      item
        FieldName = 'ID_PR'
        FieldAlias = 'ID_PR'
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
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'LETRAFAC'
        FieldAlias = 'LETRAFAC'
      end
      item
        FieldName = 'SUCFAC'
        FieldAlias = 'SUCFAC'
      end
      item
        FieldName = 'NUMEROFAC'
        FieldAlias = 'NUMEROFAC'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'REFERENCIA'
        FieldAlias = 'REFERENCIA'
      end
      item
        FieldName = 'TOTALITEMGRAVADO'
        FieldAlias = 'TOTALITEMGRAVADO'
      end
      item
        FieldName = 'MUESTRAESTADO'
        FieldAlias = 'MUESTRAESTADO'
      end
      item
        FieldName = 'SUB_NRO'
        FieldAlias = 'SUB_NRO'
      end
      item
        FieldName = 'NROCPTE_SUF'
        FieldAlias = 'NROCPTE_SUF'
      end
      item
        FieldName = 'FECHA_TECNICA'
        FieldAlias = 'FECHA_TECNICA'
      end
      item
        FieldName = 'FECHA_FINANCIERA'
        FieldAlias = 'FECHA_FINANCIERA'
      end
      item
        FieldName = 'FECHA_ENTREGA'
        FieldAlias = 'FECHA_ENTREGA'
      end
      item
        FieldName = 'FECHA_REVISION'
        FieldAlias = 'FECHA_REVISION'
      end
      item
        FieldName = 'INC_FECHA_HORA'
        FieldAlias = 'INC_FECHA_HORA'
      end
      item
        FieldName = 'INC_DETALLE'
        FieldAlias = 'INC_DETALLE'
      end
      item
        FieldName = 'INC_USUARIO'
        FieldAlias = 'INC_USUARIO'
      end
      item
        FieldName = 'INC_CONTACTO'
        FieldAlias = 'INC_CONTACTO'
      end
      item
        FieldName = 'INC_ASUNTO'
        FieldAlias = 'INC_ASUNTO'
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
    Left = 776
    Top = 440
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 104.000000000000000000
      PaperHeight = 152.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
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
    Left = 646
    Top = 498
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 800
    Top = 296
  end
  object QFacC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.*,s.detalle as MuestraSucursal,(select sum(sd.total) fr' +
        'om presubdet sd where sd.id_cab=f.id_pr) as TotalItemGravado fro' +
        'm prescab f'
      'left join sucursal s on s.codigo=f.sucursal'
      
        'where ( f.tipocpbte=:Tipo or :tipo = '#39'XX'#39' ) and (f.codigo = :cod' +
        'igo or :codigo = '#39'******'#39' ) and'
      
        '       ( f.sucursal = :sucursal or :sucursal = -1 ) and f.fechav' +
        'ta between :desde and :hasta and f.anulado<>'#39'S'#39
      
        'order by f.sucursal,f.tipocpbte,f.clasecpbte, f.letrafac,f.sucfa' +
        'c,f.numerofac')
    Left = 36
    Top = 527
    ParamData = <
      item
        Position = 1
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 3
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QFacD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.*,s.reemplazo_stk as CodAlternativo,m.Signo as SignoMon' +
        'eda from presdet f'
      'left join  stock s on s.codigo_stk= f.codigoarticulo'
      'left join monedas m on m.id=f.id_moneda'
      'where f.id_cabpres >= :id_desde and  f.id_cabpres <= :id_hasta')
    Left = 188
    Top = 145
    ParamData = <
      item
        Position = 1
        Name = 'id_desde'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id_hasta'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QLstAgrupada_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.id_cabpres,c.clasecpbte,(c.nrocpbte||'#39'-'#39'||c.sub_nr' +
        'o) as nrocpbte,d.fechavta,c.codigo,c.nombre,'
      
        '       c.razonsocial,c.total as TotalRto,c.tipoiva,i.discriminai' +
        'va,'
      
        '       d.codigoarticulo,d.detalle,d.cantidad,d.unitario_total,d.' +
        'iva_unitario,d.iva_total, d.total,s.reemplazo_stk,'
      
        '       (c.clasecpbte|| '#39' '#39'|| c.nrocpbte||'#39'-'#39'||c.sub_nro|| '#39' '#39'  |' +
        '|c.fechavta|| '#39' '#39'||c.codigo|| '#39' '#39'||c.nombre|| '#39'-'#39' || c.razonsoci' +
        'al || '#39'-('#39' || c.anulado || '#39')'#39' ) as MuestraPresupuesto,'
      '       c.anulado'
      '         from prescab c'
      'left join presdet d on d.id_cabpres=c.id_pr'
      'left join inscripcion i on i.codigo=c.tipoiva'
      'left join stock s on s.codigo_stk=d.codigoarticulo'
      ''
      
        'where (c.fechavta between :desde and :hasta) and (c.codigo = :co' +
        'digo or :codigo = '#39'******'#39' )'
      ''
      '')
    Left = 172
    Top = 479
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
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 24
    Top = 224
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 652
    Top = 249
    object VerlosPreciosconIVA1: TMenuItem
      Caption = 'Ver los Precios con IVA'
      OnClick = VerlosPreciosconIVA1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
  end
  object QLstAgrupadaItems_: TFDQuery
    AggregatesActive = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  LISTA_PRES_CON_ITEM (:desde,:hasta,:codigo)'
      ''
      '')
    Left = 164
    Top = 367
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
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QLstAgrupadaItems_ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object QLstAgrupadaItems_ID_CABPRES: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 5
      FieldName = 'ID_CABPRES'
      Origin = 'ID_CABPRES'
    end
    object QLstAgrupadaItems_CLASECPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QLstAgrupadaItems_CODIGO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cliente'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QLstAgrupadaItems_NOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QLstAgrupadaItems_RAZONSOCIAL: TStringField
      DisplayLabel = 'R.Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QLstAgrupadaItems_NROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object QLstAgrupadaItems_TOTAL_PRESU: TFloatField
      DisplayLabel = 'Imp.Presupeusto'
      FieldName = 'TOTAL_PRESU'
      Origin = 'TOTAL_PRESU'
      DisplayFormat = ',0.00'
    end
    object QLstAgrupadaItems_TIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QLstAgrupadaItems_DISCRIMINAIVA: TStringField
      FieldName = 'DISCRIMINAIVA'
      Origin = 'DISCRIMINAIVA'
      FixedChar = True
      Size = 1
    end
    object QLstAgrupadaItems_CODIGOARTICULO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cod.Artic'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QLstAgrupadaItems_DETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QLstAgrupadaItems_CANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QLstAgrupadaItems_UNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unit.Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00'
    end
    object QLstAgrupadaItems_IVA_UNITARIO: TFloatField
      DisplayLabel = 'Iva Uni.'
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      DisplayFormat = ',0.00'
    end
    object QLstAgrupadaItems_IVA_TOTAL: TFloatField
      DisplayLabel = 'Iva Tot.'
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      DisplayFormat = ',0.00'
    end
    object QLstAgrupadaItems_TOTAL: TFloatField
      DisplayLabel = 'Total Lin.'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QLstAgrupadaItems_ITEM_NRO: TIntegerField
      DisplayLabel = 'Item Nro'
      FieldName = 'ITEM_NRO'
      Origin = 'ITEM_NRO'
    end
    object QLstAgrupadaItems_ITEMDETALLE: TStringField
      DisplayLabel = 'Item Det'
      FieldName = 'ITEMDETALLE'
      Origin = 'ITEMDETALLE'
      Size = 45
    end
    object QLstAgrupadaItems_ITEMCANTIDAD: TFloatField
      DisplayLabel = 'Item.Cant'
      FieldName = 'ITEMCANTIDAD'
      Origin = 'ITEMCANTIDAD'
      DisplayFormat = '0.00;-0.00;-'
    end
    object QLstAgrupadaItems_ITEM_GRAVADO: TFloatField
      DisplayLabel = 'Item.Garavdo'
      FieldName = 'ITEM_GRAVADO'
      Origin = 'ITEM_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QLstAgrupadaItems_ITEM_TOTAL: TFloatField
      DisplayLabel = 'Item Total'
      FieldName = 'ITEM_TOTAL'
      Origin = 'ITEM_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QLstAgrupadaItems_CODIGO_ATERNATIVO: TStringField
      FieldName = 'CODIGO_ATERNATIVO'
      Origin = 'CODIGO_ATERNATIVO'
    end
    object QLstAgrupadaItems_NRO_ITEM_DET: TIntegerField
      DisplayLabel = 'It.Det'
      FieldName = 'NRO_ITEM_DET'
      Origin = 'NRO_ITEM_DET'
    end
    object QLstAgrupadaItems_NRO_FECHA: TStringField
      DisplayLabel = 'Nro.Cpte - Fecha'
      FieldName = 'NRO_FECHA'
      Origin = 'NRO_FECHA'
      Size = 30
    end
    object QLstAgrupadaItems_FECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
  end
  object DSLstAgrupadaItems: TDataSource
    DataSet = CDSLstAgrupadaItems
    Left = 508
    Top = 369
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 24
    Top = 16
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientInactiveCaption
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.codigo,c.nombre,c.razon_social ,'
      '  p.telediscado as MuestraTelediscado,'
      '  v.nombre as MuestraVendedor'
      'FROM Clientes C'
      '  left join personal v on v.codigo=c.vendedor'
      '  left join c_postal p on c.id_cod_postal=p.id_postal'
      'where (c.codigo=:codigo)')
    Left = 76
    Top = 121
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesMUESTRATELEDISCADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATELEDISCADO'
      Origin = 'TELEDISCADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QClientesMUESTRAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link2
    Version = 0
    Left = 524
    Top = 169
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 8500
      PrinterPage.Margins.Right = 6900
      PrinterPage.Margins.Top = 7400
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.CenterTitle.Strings = (
        '')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -15
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 46000.385130983800000000
      ReportTitle.Color = clMoneyGreen
      ReportTitle.Text = 'Listado Presupuestos'
      ReportTitle.Transparent = False
      OptionsView.Caption = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 4100
      PrinterPage.GrayShading = True
      PrinterPage.Header = 4100
      PrinterPage.Margins.Bottom = 6400
      PrinterPage.Margins.Left = 4100
      PrinterPage.Margins.Right = 4100
      PrinterPage.Margins.Top = 4100
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.Background.Brush.Color = 13565902
      PrinterPage.PageHeader.Background.Mode = bmBrush
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -13
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageHeader.LeftTitle.Strings = (
        'Listado Presupuestos'
        '[Machine Name]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 46000.385131006940000000
      ReportTitle.Color = clMoneyGreen
      ReportTitle.Text = 'Listado Presupuesto'
      ReportTitle.TextAlignX = taLeft
      ReportTitle.Transparent = False
      ShrinkToPageWidth = True
      OptionsOnEveryPage.Caption = False
      OptionsView.Caption = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 580
    Top = 241
    object MenuItem4: TMenuItem
      Caption = 'Cuadro Grupo'
      OnClick = MenuItem4Click
    end
    object ExpandirListado1: TMenuItem
      Caption = 'Expandir Listado'
      OnClick = ExpandirListado1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 508
    Top = 248
    object MostrarTip1: TMenuItem
      Caption = 'Mostrar Tipo'
      Checked = True
      OnClick = MostrarTip1Click
    end
    object MostrarClase1: TMenuItem
      Caption = 'Mostrar Clase'
      Checked = True
      OnClick = MostrarClase1Click
    end
    object MostraTotal: TMenuItem
      Caption = 'Mostrar Total'
      Checked = True
      OnClick = MostraTotalClick
    end
    object MostrarSuc: TMenuItem
      Caption = 'Mostra Suc'
      Checked = True
      OnClick = MostrarSucClick
    end
    object MostrarIncidencia: TMenuItem
      Caption = 'Mostrar Incidencia'
      Checked = True
      OnClick = MostrarIncidenciaClick
    end
    object MostrarObra1: TMenuItem
      Caption = 'Mostrar Obra'
      OnClick = MostrarObra1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MostrarAgrupamiento: TMenuItem
      Caption = 'Mostrar Agrupar'
      OnClick = MostrarAgrupamientoClick
    end
  end
  object QFacC_New: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select li.* from lista_pres_detalle_incid (:tipo,:codigo,:sucurs' +
        'al,:desde,:hasta) li')
    Left = 188
    Top = 201
    ParamData = <
      item
        Position = 1
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object DSPPresuSubDet: TDataSetProvider
    DataSet = QPresuSubDet
    UpdateMode = upWhereKeyOnly
    Left = 912
    Top = 138
  end
  object CDSPresuSubDet: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ITEM_NRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CAB'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'CANTIDAD'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_IVA'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_UNIT_FINAL'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_NETO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_FINAL'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'NdxItem'
        Fields = 'ITEM_NRO'
      end>
    Params = <
      item
        DataType = ftUnknown
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPresuSubDet'
    StoreDefs = True
    Left = 984
    Top = 138
    object CDSPresuSubDetITEM_NRO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'It.Nr'
      FieldName = 'ITEM_NRO'
      Origin = 'ITEM_NRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPresuSubDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPresuSubDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSPresuSubDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_GRAVADO: TFloatField
      DisplayLabel = 'Valor .Unitario'
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_UNIT_FINAL: TFloatField
      DisplayLabel = 'Valor .Unit.Final'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_UNIT_FINAL'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_NETO: TFloatField
      DisplayLabel = 'T.Neto'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_NETO'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_EXENTO: TFloatField
      DisplayLabel = 'T.Exen'
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_IVA: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'TOTAL_IVA'
      Origin = 'TOTAL_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuSubDetTOTAL_FINAL: TFloatField
      DisplayLabel = 'Total C/Iva'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_FINAL'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPresuSubDet: TDataSource
    DataSet = CDSPresuSubDet
    Left = 1072
    Top = 144
  end
  object QPresuSubDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sd.* from presubdet sd'
      'where sd.id_cab between :desde and :hasta'
      'order by sd.item_nro')
    Left = 856
    Top = 136
    ParamData = <
      item
        Position = 1
        Name = 'DESDE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPresuSubDetITEM_NRO: TIntegerField
      FieldName = 'ITEM_NRO'
      Origin = 'ITEM_NRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPresuSubDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPresuSubDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QPresuSubDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QPresuSubDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
    end
    object QPresuSubDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
    end
    object QPresuSubDetTOTAL_IVA: TFloatField
      FieldName = 'TOTAL_IVA'
      Origin = 'TOTAL_IVA'
    end
    object QPresuSubDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
  end
  object QMinMaxId: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select min(p.id_pr), max(p.id_pr) from prescab p'
      
        'where (p.fechavta between :desde and :hasta) and (p.codigo=:codi' +
        'go or (:codigo='#39'******'#39')) and'
      '(p.sucursal=:sucursal or (:sucursal = -1))')
    Left = 180
    Top = 256
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
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMinMaxIdMIN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = 'MIN'
      ProviderFlags = []
      ReadOnly = True
    end
    object QMinMaxIdMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object CDSLstAgrupada: TClientDataSet
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
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPLstAgrupada'
    OnCalcFields = CDSLstAgrupadaCalcFields
    Left = 380
    Top = 480
    object CDSLstAgrupadaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLstAgrupadaID_CABPRES: TIntegerField
      FieldName = 'ID_CABPRES'
      Origin = 'ID_CABPRES'
    end
    object CDSLstAgrupadaCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSLstAgrupadaNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 16
    end
    object CDSLstAgrupadaCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      OnGetText = CDSLstAgrupadaCODIGOGetText
      Size = 6
    end
    object CDSLstAgrupadaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSLstAgrupadaRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSLstAgrupadaCODIGOARTICULO: TStringField
      DisplayLabel = 'Cod.Art.'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      OnGetText = CDSLstAgrupadaCODIGOARTICULOGetText
      Size = 8
    end
    object CDSLstAgrupadaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSLstAgrupadaCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unitario Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      OnGetText = CDSLstAgrupadaUNITARIO_TOTALGetText
      DisplayFormat = ',0.000'
    end
    object CDSLstAgrupadaIVA_UNITARIO: TFloatField
      DisplayLabel = 'Iva Unit.'
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaIVA_TOTAL: TFloatField
      DisplayLabel = 'Iva Total'
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      OnGetText = CDSLstAgrupadaTOTALGetText
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaUNITARIO_CIVA: TFloatField
      DisplayLabel = 'Unitario C.Iva'
      FieldKind = fkInternalCalc
      FieldName = 'UNITARIO_CIVA'
      DisplayFormat = ',0.000'
    end
    object CDSLstAgrupadaTOTAL_CIVA: TFloatField
      DisplayLabel = 'Total C.Iva'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_CIVA'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
      ProviderFlags = []
    end
    object CDSLstAgrupadaDISCRIMINAIVA: TStringField
      FieldName = 'DISCRIMINAIVA'
      Origin = 'DISCRIMINAIVA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSLstAgrupadaTOTALRTO: TFloatField
      FieldName = 'TOTALRTO'
      Origin = 'TOTALRTO'
      ProviderFlags = []
      DisplayFormat = ',0.000'
    end
    object CDSLstAgrupadaMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkInternalCalc
      FieldName = 'MES'
    end
    object CDSLstAgrupadaDIA: TStringField
      DisplayLabel = 'Dia'
      FieldKind = fkInternalCalc
      FieldName = 'DIA'
      Size = 2
    end
    object CDSLstAgrupadaANIO: TStringField
      DisplayLabel = 'A'#241'o'
      FieldKind = fkInternalCalc
      FieldName = 'ANIO'
    end
    object CDSLstAgrupadaFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSLstAgrupadaREEMPLAZO_STK: TStringField
      DisplayLabel = 'Co-Alternativo'
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object CDSLstAgrupadaNROCPBTESUB: TStringField
      DisplayLabel = 'Nro.Cpbte.'
      FieldKind = fkInternalCalc
      FieldName = 'NROCPBTESUB'
      Size = 16
    end
    object CDSLstAgrupadaANULADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      OnGetText = CDSLstAgrupadaANULADOGetText
      Size = 1
    end
    object CDSLstAgrupadaMUESTRAPRESUPUESTO: TStringField
      FieldName = 'MUESTRAPRESUPUESTO'
      Origin = 'MUESTRAPRESUPUESTO'
      Size = 128
    end
  end
  object DSPLstAgrupada: TDataSetProvider
    DataSet = QLstAgrupada_
    Options = []
    Left = 276
    Top = 480
  end
  object PopupMenu4: TPopupMenu
    Left = 852
    Top = 353
    object LimpiarFiltros: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltrosClick
    end
  end
  object CDSLstAgrupadaItems: TClientDataSet
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
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPLstAgrupadaItems'
    Left = 388
    Top = 368
    object CDSLstAgrupadaItemsID: TIntegerField
      FieldName = 'ID'
    end
    object CDSLstAgrupadaItemsID_CABPRES: TIntegerField
      FieldName = 'ID_CABPRES'
    end
    object CDSLstAgrupadaItemsCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSLstAgrupadaItemsCODIGO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSLstAgrupadaItemsNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSLstAgrupadaItemsRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSLstAgrupadaItemsNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSLstAgrupadaItemsTOTAL_PRESU: TFloatField
      FieldName = 'TOTAL_PRESU'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaItemsTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSLstAgrupadaItemsDISCRIMINAIVA: TStringField
      FieldName = 'DISCRIMINAIVA'
      FixedChar = True
      Size = 1
    end
    object CDSLstAgrupadaItemsCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo Articulo'
      FieldName = 'CODIGOARTICULO'
      OnGetText = CDSLstAgrupadaItemsCODIGOARTICULOGetText
      Size = 8
    end
    object CDSLstAgrupadaItemsDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSLstAgrupadaItemsCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaItemsUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unitario Total'
      FieldName = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaItemsIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaItemsIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaItemsTOTAL: TFloatField
      DisplayLabel = 'Total Linea'
      FieldName = 'TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaItemsITEM_NRO: TIntegerField
      DisplayLabel = 'Item Nro.'
      FieldName = 'ITEM_NRO'
    end
    object CDSLstAgrupadaItemsITEMDETALLE: TStringField
      DisplayLabel = 'Item Detalle'
      FieldName = 'ITEMDETALLE'
      Size = 45
    end
    object CDSLstAgrupadaItemsITEMCANTIDAD: TFloatField
      DisplayLabel = 'Item Cantidad'
      FieldName = 'ITEMCANTIDAD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaItemsITEM_GRAVADO: TFloatField
      DisplayLabel = 'Item Gravado'
      FieldName = 'ITEM_GRAVADO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaItemsITEM_TOTAL: TFloatField
      DisplayLabel = 'Item Total'
      FieldName = 'ITEM_TOTAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSLstAgrupadaItemsCODIGO_ATERNATIVO: TStringField
      FieldName = 'CODIGO_ATERNATIVO'
    end
    object CDSLstAgrupadaItemsNRO_ITEM_DET: TIntegerField
      DisplayLabel = 'It.Det'
      FieldName = 'NRO_ITEM_DET'
    end
    object CDSLstAgrupadaItemsNRO_FECHA: TStringField
      FieldName = 'NRO_FECHA'
      Size = 30
    end
    object CDSLstAgrupadaItemsFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
  end
  object DSPLstAgrupadaItems: TDataSetProvider
    DataSet = QLstAgrupadaItems_
    Options = []
    Left = 276
    Top = 368
  end
  object QPresuFactura: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      ' select pc.id_pr, '
      '       pc.nrocpbte,'
      '       pc.fechavta,'
      '       c.codigo,'
      '       c.nombre,'
      '       fc.id_fc,'
      '       fc.nrocpbte,'
      '       fc.fechavta,'
      '       pc.total as totalpresupuesto,'
      '       fc.total as totalfactura,'
      '       sum(pd.cantidad) as cantidadP,'
      '       sum(fd.cantidad) as cantidadF,'
      '       sum(HASH(pd.codigoarticulo)) as hashpresu,'
      '       sum(HASH(fd.codigoarticulo)) as hashfac,'
      '       pc.fecha_revision,'
      ''
      ''
      ''
      ''
      '        CASE'
      
        '        WHEN (((pc.total <> fc.total) and (fc.nrocpbte is not nu' +
        'll)) or (pc.fecha_revision <>pc.fechavta))'
      '        THEN 1'
      '        ELSE 0'
      '        END as modificado'
      ''
      ''
      ''
      ''
      'from prescab pc'
      '    left join presdet pd on pd.id_cabpres = pc.id_pr'
      '    left join fcvtacab fc on fc.id_fc = pc.id_factura'
      '    left join fcvtadet fd on fd.id_cabfac = fc.id_fc'
      '    left join clientes c on c.codigo = pc.codigo'
      '    where (pc.fechavta between :desde and :hasta) and'
      
        '          (pc.sucursal= :sucu or :sucu=-1) and (pc.codigo=:clien' +
        'te or (:cliente='#39'******'#39'))'
      '    '
      'group by pc.id_pr,'
      '       pc.nrocpbte,'
      '       pc.fechavta,'
      '       c.codigo,'
      '       c.nombre,'
      '       fc.id_fc,'
      '       fc.nrocpbte,'
      '       fc.fechavta,'
      '       totalpresupuesto,'
      '       totalfactura,'
      '       modificado,'
      '       pc.fecha_revision'
      '       order by hashpresu,hashfac'
      '')
    Left = 932
    Top = 480
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
        Name = 'SUCU'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object DSPPresuFactura: TDataSetProvider
    DataSet = QPresuFactura
    Left = 1028
    Top = 488
  end
  object CDSPresuFactura: TClientDataSet
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
        Name = 'SUCU'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPPresuFactura'
    Left = 1116
    Top = 496
    object CDSPresuFacturaID_PR: TIntegerField
      FieldName = 'ID_PR'
      Required = True
    end
    object CDSPresuFacturaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object CDSPresuFacturaFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object CDSPresuFacturaCODIGO: TStringField
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 6
    end
    object CDSPresuFacturaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 35
    end
    object CDSPresuFacturaID_FC: TIntegerField
      FieldName = 'ID_FC'
      ReadOnly = True
    end
    object CDSPresuFacturaNROCPBTE_1: TStringField
      FieldName = 'NROCPBTE_1'
      ReadOnly = True
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object CDSPresuFacturaFECHAVTA_1: TSQLTimeStampField
      FieldName = 'FECHAVTA_1'
      ReadOnly = True
    end
    object CDSPresuFacturaTOTALPRESUPUESTO: TFloatField
      FieldName = 'TOTALPRESUPUESTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuFacturaTOTALFACTURA: TFloatField
      FieldName = 'TOTALFACTURA'
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPresuFacturaMODIFICADO: TIntegerField
      FieldName = 'MODIFICADO'
      ReadOnly = True
    end
    object CDSPresuFacturaCANTIDADP: TFloatField
      FieldName = 'CANTIDADP'
      ReadOnly = True
    end
    object CDSPresuFacturaCANTIDADF: TFloatField
      FieldName = 'CANTIDADF'
      ReadOnly = True
    end
    object CDSPresuFacturaFECHA_REVISION: TSQLTimeStampField
      FieldName = 'FECHA_REVISION'
    end
    object CDSPresuFacturaHASHPRESU: TLargeintField
      FieldName = 'HASHPRESU'
      ReadOnly = True
    end
    object CDSPresuFacturaHASHFAC: TLargeintField
      FieldName = 'HASHFAC'
      ReadOnly = True
    end
  end
  object DSPresuFactura: TDataSource
    DataSet = CDSPresuFactura
    Left = 1188
    Top = 504
  end
end

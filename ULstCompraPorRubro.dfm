inherited FormListadoCompraPorRubro: TFormListadoCompraPorRubro
  Left = 170
  Top = 83
  Caption = 'Listado de Compra por Rubro'
  ClientHeight = 749
  ClientWidth = 1231
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1249
  ExplicitHeight = 790
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1231
    Height = 696
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1231
    ExplicitHeight = 696
    object PageControl1: TPageControl
      Left = 0
      Top = 73
      Width = 1231
      Height = 623
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Con Detalle'
        object dbgDetalle: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 554
          Align = alClient
          DataSource = DSCompras
          Options = [dgAlwaysShowEditor, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgDetalleDblClick
          TitleButtons = True
          OnTitleBtnClick = dbgDetalleTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          WordWrap = True
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHAFISCAL'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 105
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHACOMPRA'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_RUBRO'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 143
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_SUBRUBRO'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 229
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Color = clBlue
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 257
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalCalculado'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 92
              Visible = True
            end>
        end
        object pnPieDetalle: TPanel
          Left = 0
          Top = 554
          Width = 1223
          Height = 41
          Align = alBottom
          TabOrder = 1
          object Label1: TLabel
            Left = 19
            Top = 8
            Width = 33
            Height = 13
            Caption = 'Detalle'
            FocusControl = cxDBTextEdit1
          end
          object DBEdit2: TDBEdit
            Left = 78
            Top = 5
            Width = 71
            Height = 21
            DataField = 'CODIGOARTICULO'
            DataSource = DSCompras
            TabOrder = 0
          end
          object cxDBTextEdit1: TDBEdit
            Left = 155
            Top = 5
            Width = 346
            Height = 21
            DataField = 'DETALLE'
            DataSource = DSCompras
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 507
            Top = 5
            Width = 121
            Height = 21
            DataField = 'NROCPBTE'
            DataSource = DSCompras
            TabOrder = 2
          end
          object edTotal: TJvCalcEdit
            Left = 790
            Top = 5
            Width = 121
            Height = 21
            DisplayFormat = ',0.00'
            Enabled = False
            ShowButton = False
            TabOrder = 3
            DisabledTextColor = clBlack
            DecimalPlacesAlwaysShown = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Agrupados'
        ImageIndex = 1
        object JvDBGrid1: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 595
          Align = alClient
          DataSource = DSAgrupada
          Options = [dgAlwaysShowEditor, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = JvDBGrid1DblClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          WordWrap = True
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHAFISCAL'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHACOMPRA'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_RUBRO'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 163
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_SUBRUBRO'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 251
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_STK'
              Title.Alignment = taCenter
              Title.Color = clNavy
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_LINEA'
              Title.Alignment = taCenter
              Title.Color = clBlack
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clMaroon
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 131
              Visible = True
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Cuadro'
        ImageIndex = 2
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 554
          Customization.AvailableFieldsSorted = True
          Align = alClient
          DataSource = DSAgrupada
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Whiteprint'
          OptionsData.SummaryNullIgnore = True
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnGrandTotalText = 'Totales'
          OptionsView.FilterFields = False
          OptionsView.GrandTotalsForSingleValues = True
          OptionsView.RowGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalWidth = 404
          OptionsView.TotalsForSingleValues = True
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnDblClick = cxDBPivotGrid1DblClick
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'NOMBRESUCURSAL'
            Visible = True
            UniqueName = 'Nom.Suc'
          end
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_SUBRUBRO'
            Visible = True
            Width = 250
            UniqueName = 'Subrubro'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'DETALLE_RUBRO'
            Visible = True
            Width = 200
            UniqueName = 'Rubro'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'FECHACOMPRA'
            Visible = True
            UniqueName = 'Fecha Compr.'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'TOTAL_LINEA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Total Linea (S/IVA)'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'MUESTRAMES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'MUESTRAANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGrid1Field10: TcxDBPivotGridField
            AreaIndex = 31
            DataBinding.FieldName = 'TIPOCPBTE'
            Visible = True
            UniqueName = 'Tp'
          end
          object cxDBPivotGrid1Field11: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'CODIGOARTICULO'
            Visible = True
            UniqueName = 'Cod.Art.'
          end
          object cxDBPivotGrid1Field12: TcxDBPivotGridField
            AreaIndex = 4
            IsCaptionAssigned = True
            Caption = 'Detalle Art.'
            DataBinding.FieldName = 'DETALLE_STK'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Detalle Art.'
          end
          object cxDBPivotGrid1Field13: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'PROVEE_CODIGO'
            Visible = True
            UniqueName = 'Cod.Proveedor'
          end
          object cxDBPivotGrid1Field14: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'PROVEE_NOMBRE'
            Visible = True
            UniqueName = 'Nombre Proveedor'
          end
          object cxDBPivotGrid1Field15: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'CLASECPBTE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Cl'
          end
          object cxDBPivotGrid1Field16: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'NROCPBTE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid1Field19: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'CTRO_COSTO_IMPUTADO'
            DisplayFormat = ',0.00'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Properties.Precision = 15
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Ctro.Costo.Imp.'
          end
          object cxDBPivotGrid1Field20: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'CTRO_COSTO_PORCEN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '0.00'
            Properties.Precision = 15
            SummaryType = stCount
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Ctr.C. %'
          end
          object cxDBPivotGrid1Field21: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'OBSERVACION1'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Obs 1'
          end
          object cxDBPivotGrid1Field22: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'OBSERVACION2'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Obs 2'
          end
          object cxDBPivotGrid1Field23: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'CPBTE_TOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Properties.Precision = 15
            Visible = True
            UniqueName = 'Cpbte.Total'
          end
          object cxDBPivotGrid1Field25: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'CANTIDAD'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Cant.'
          end
          object cxDBPivotGrid1Field9: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'CPBTE_NETO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Cpbte.Neto'
          end
          object cxDBPivotGrid1Field17: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'CTRO_COSTO_DESCRIPCION'
            TotalsVisibility = tvCustom
            Visible = True
            UniqueName = 'Ctro.Costo Descrip.'
          end
          object cxDBPivotGrid1Field18: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'CTRO_COSTO'
            Visible = True
            UniqueName = 'Ctro.Costo'
          end
          object cxDBPivotGrid1Field24: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'ID_FC'
            Visible = True
            UniqueName = 'Id'
          end
          object cxDBPivotGrid1Field26: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'UNITARIO_TOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Unit.Total'
          end
          object cxDBPivotGrid1Field27: TcxDBPivotGridField
            AreaIndex = 23
            DataBinding.FieldName = 'UNITARIO_FINAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Unit.Final'
          end
          object cxDBPivotGrid1Field28: TcxDBPivotGridField
            Area = faData
            AreaIndex = 2
            DataBinding.FieldName = 'TOTAL_LINEA_FINAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'T.Linea F'
          end
          object cxDBPivotGrid1Field29: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'UNITARIO_IVA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Unit.IVA'
          end
          object cxDBPivotGrid1Field30: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'UNITARIO_EXENTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Uni.Exento'
          end
          object cxDBPivotGrid1Field31: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'UNITARIO_GRAVADO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Uni.Gravado'
          end
          object cxDBPivotGrid1Field32: TcxDBPivotGridField
            AreaIndex = 24
            DataBinding.FieldName = 'TOTAL_LINEA_GRAV'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'T.Linea Gravado'
          end
          object cxDBPivotGrid1Field33: TcxDBPivotGridField
            AreaIndex = 25
            DataBinding.FieldName = 'TOTAL_LINEA_EXEN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'T.Linea Exento'
          end
          object cxDBPivotGrid1Field34: TcxDBPivotGridField
            AreaIndex = 26
            DataBinding.FieldName = 'TOTAL_LINEA_IMPIN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'T.Linea Imp.I'
          end
          object cxDBPivotGrid1Field35: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            DataBinding.FieldName = 'TOTAL_LINEA_IVA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'T.Linea IVA'
          end
          object cxDBPivotGrid1Field36: TcxDBPivotGridField
            AreaIndex = 27
            DataBinding.FieldName = 'MUESTRADIA'
            Visible = True
            UniqueName = 'Dia'
          end
          object cxDBPivotGrid1Field37: TcxDBPivotGridField
            AreaIndex = 28
            DataBinding.FieldName = 'DIRECCION'
            Visible = True
            UniqueName = 'Direccion'
          end
          object cxDBPivotGrid1Field38: TcxDBPivotGridField
            AreaIndex = 29
            DataBinding.FieldName = 'TELEFONO'
            Visible = True
            UniqueName = 'Telefono'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            AreaIndex = 30
            DataBinding.FieldName = 'FECHAFISCAL'
            Visible = True
            UniqueName = 'Fecha Fiscal'
          end
          object cxDBPivotGrid1Field40: TcxDBPivotGridField
            AreaIndex = 32
            IsCaptionAssigned = True
            Caption = 'Detalle Ficha de Stock'
            DataBinding.FieldName = 'DETALLE_STK'
            Visible = True
            UniqueName = 'Detalle Ficha de Stock'
          end
        end
        object pnTotales: TJvPanel
          Left = 19
          Top = 314
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
          object Label4: TLabel
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
            Left = 286
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
        object pnPieCuadro: TPanel
          Left = 0
          Top = 554
          Width = 1223
          Height = 41
          Align = alBottom
          TabOrder = 2
          object Label2: TLabel
            Left = 9
            Top = 9
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
            OnClick = Label2Click
          end
          object Label5: TLabel
            Left = 109
            Top = 9
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
          object Label6: TLabel
            Left = 601
            Top = 9
            Width = 28
            Height = 13
            Caption = 'Vistas'
          end
          object spVistas: TSpeedButton
            Left = 969
            Top = 5
            Width = 23
            Height = 22
            Hint = 'Ingresar Vista Actual'
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFBBE4C270CF8527B7471EBA401EBA4027B74770CF85BBE4C2FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFA4FB96219C1401FCE4C24DC5827
              DD5C27DD5C24DC581FCE4C19C1404FB962FAFDFAFFFFFFFFFFFFFFFFFFFBFDFB
              21A93A1ED04E22D55521D35503B82C00A71200A71203B82C21D35522D5551ED0
              4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D21D3541FCC4D0FCC4500AD13FF
              FFFFFFFFFF00AD130FCC451FCC4D21D3541ECE4D4EB15BFFFFFFBDDEBE17BA3F
              21DA5A1ECC5120D0530DC74200BE25FFFFFFFFFFFF00BE250DC74220D0531ECC
              5121DA5A17BA3FBDDEBE6ABC7417D15120D45F0BCC4A04CA4300C13300BC22FF
              FFFFFFFFFF00BD2700C23B10CA4B0ECC4C20D45F17D1516ABC7430A03F33E67A
              00B62D00AD1300AD1300AD1300AD13FFFFFFFFFFFF00AD1300BD2700BD2300AD
              1300B62D33E67A30A14130A34381FCC300AF21FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF2181FCC430A14223953785FDCC
              2AC262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF2AC26285FDCC23953533933D7BFAC33CD07D71C7801EBF5921C05B0ABA4DFF
              FFFFFFFFFF10BC5122C05C1EBF5971C7803CD07D7BFAC333933D67AB668AE5B9
              65EAB050DF9756DF9C41DB8D22C05CFFFFFFFFFFFF22C05C49DC9356DF9C50DF
              9765EAB08AE5B967AB66B9D4B94EB068AFFFEA5EE0A156E19F45DE9766D589FF
              FFFFFFFFFF23C05B50E09E56E19F5EE0A1AFFFEA4EB068B9D4B9FFFFFF458945
              7BDCA8B6FFEF76E5B551DFA366D589FFFFFFFFFFFF24BF5956E2A876E5B5B6FF
              EF7BDCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B7FFF5AAF7E370E0B022
              C05C22C05C74E2B3ABF7E4B7FFF56DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
              F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
              45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
              8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = spVistasClick
          end
          object dbcVistas: TJvDBLookupCombo
            Left = 642
            Top = 6
            Width = 321
            Height = 21
            LookupField = 'ID'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DSVista
            TabOrder = 0
            OnChange = dbcVistasChange
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Orden de Compra'
        ImageIndex = 3
        object cxDBPivotGrid2: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 554
          Customization.AvailableFieldsSorted = True
          Align = alClient
          DataSource = DSOCompra
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'UserSkin'
          OptionsData.SummaryNullIgnore = True
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnGrandTotalText = 'Totales'
          OptionsView.GrandTotalsForSingleValues = True
          OptionsView.RowGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalWidth = 404
          OptionsView.TotalsForSingleValues = True
          PopupMenu = PopupMenu1
          TabOrder = 0
          object cxDBPivotGrid2Field1: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'ANIOCOMPRA'
            Visible = True
            UniqueName = 'A'#241'o Comp.'
          end
          object cxDBPivotGrid2Field2: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'ANIOCUMPLIDA'
            Visible = True
            UniqueName = 'A'#241'o Cump.'
          end
          object cxDBPivotGrid2Field3: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CODIGO'
            Visible = True
            UniqueName = 'Cod.Prov.'
          end
          object cxDBPivotGrid2Field4: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'CODIGO_STK'
            Visible = True
            UniqueName = 'Codigo'
          end
          object cxDBPivotGrid2Field5: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'DETALLE_RUBRO'
            Visible = True
            Width = 200
            UniqueName = 'Rubro'
          end
          object cxDBPivotGrid2Field6: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'DETALLE_STK'
            Visible = True
            UniqueName = 'Detalle'
          end
          object cxDBPivotGrid2Field7: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_SUBRUBRO'
            Visible = True
            Width = 250
            UniqueName = 'Sub Rubro'
          end
          object cxDBPivotGrid2Field8: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'FECHA'
            Visible = True
            UniqueName = 'Fecha O.C'
          end
          object cxDBPivotGrid2Field9: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'FECHACUMPLIDA'
            Visible = True
            UniqueName = 'F.Cump.'
          end
          object cxDBPivotGrid2Field10: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'MESCOMPRA'
            Visible = True
            UniqueName = 'Mes Comp.'
          end
          object cxDBPivotGrid2Field11: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'MESCUMPLIDA'
            Visible = True
            UniqueName = 'Mes Cump.'
          end
          object cxDBPivotGrid2Field12: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'NOMBRE'
            Visible = True
            UniqueName = 'Nombre Prov.'
          end
          object cxDBPivotGrid2Field13: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'NOMBRESUCURSAL'
            Visible = True
            UniqueName = 'Sucursal'
          end
          object cxDBPivotGrid2Field14: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'SUCURSAL'
            Visible = True
            UniqueName = 'Cod.Suc.'
          end
          object cxDBPivotGrid2Field15: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'TIPOCPBTE'
            Visible = True
            UniqueName = 'Tp'
          end
          object cxDBPivotGrid2Field16: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'SUM'
            Visible = True
            UniqueName = 'Total'
          end
          object cxDBPivotGrid2Field17: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'MUESTRAESTADO'
            Visible = True
            UniqueName = 'Estado'
          end
        end
        object pnPieOCompra: TPanel
          Left = 0
          Top = 554
          Width = 1223
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1223
            41)
          object Label3: TLabel
            Left = 3
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
            OnClick = Label3Click
          end
          object rgOrdenCompraFecha: TAdvOfficeRadioGroup
            Left = 912
            Top = -1
            Width = 234
            Height = 34
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            Version = '1.8.4.2'
            Anchors = [akTop, akRight]
            Caption = 'Consulta por'
            ParentBackground = False
            ParentCtl3D = True
            TabOrder = 0
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Fecha de  Pedido'
              'Fecha Rececpion')
            Ellipsis = False
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Proveed+Rubro+Sub'
        ImageIndex = 4
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 595
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSAgrupada
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL_LINEA'
                Column = cxGrid1DBTableView1TOTAL_LINEA
              end>
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            object cxGrid1DBTableView1DETALLE_RUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_RUBRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
              Width = 168
            end
            object cxGrid1DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_SUBRUBRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1PROVEE_NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'PROVEE_NOMBRE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_STK'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TOTAL_LINEA: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_LINEA'
              HeaderAlignmentHorz = taCenter
              Width = 115
            end
            object cxGrid1DBTableView1MUESTRAMES: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAMES'
              Visible = False
              GroupIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Ctr.Costo+Sub+Prove'
        ImageIndex = 5
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 595
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            DataController.DataSource = DSAgrupada
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Position = spFooter
                FieldName = 'TOTAL_LINEA'
                Column = cxGridDBColumn5
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL_LINEA'
                Column = cxGridDBColumn5
              end>
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGridDBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'CTRO_COSTO_DESCRIPCION'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Options.CellMerging = True
              Width = 249
            end
            object cxGridDBTableView1Column2: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_RUBRO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_SUBRUBRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'PROVEE_NOMBRE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.CellMerging = True
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_STK'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_LINEA'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAMES'
              Visible = False
              GroupIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Rubro/Sub/Artic x Mes'
        ImageIndex = 7
        object cxDBPivotGrid3: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 595
          Customization.AvailableFieldsSorted = True
          Align = alClient
          DataSource = DSAgrupada
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          LookAndFeel.SkinName = 'Blueprint'
          OptionsData.SummaryNullIgnore = True
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnGrandTotalText = 'Totales'
          OptionsView.DataFields = False
          OptionsView.FilterFields = False
          OptionsView.GrandTotalsForSingleValues = True
          OptionsView.RowGrandTotalText = 'Totales'
          OptionsView.RowGrandTotalWidth = 490
          OptionsView.TotalsForSingleValues = True
          TabOrder = 0
          OnDblClick = cxDBPivotGrid1DblClick
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGridField1: TcxDBPivotGridField
            AreaIndex = 31
            DataBinding.FieldName = 'NOMBRESUCURSAL'
            Visible = True
            UniqueName = 'Nom.Suc'
          end
          object cxDBPivotGridField2: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_SUBRUBRO'
            Visible = True
            Width = 250
            UniqueName = 'Subrubro'
          end
          object cxDBPivotGridField3: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'DETALLE_RUBRO'
            Visible = True
            Width = 200
            UniqueName = 'Rubro'
          end
          object cxDBPivotGridField4: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'FECHACOMPRA'
            Visible = True
            UniqueName = 'Fecha Compr.'
          end
          object cxDBPivotGridField5: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'FECHAFISCAL'
            Visible = True
            UniqueName = 'Fecha Fiscal'
          end
          object cxDBPivotGridField6: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'TOTAL_LINEA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Total Linea (S/IVA)'
          end
          object cxDBPivotGridField7: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MUESTRAMES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGridField8: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'MUESTRAANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGridField9: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'CODIGOARTICULO'
            Visible = True
            UniqueName = 'Cod.Art.'
          end
          object cxDBPivotGridField10: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            IsCaptionAssigned = True
            Caption = 'Detalle Art.'
            DataBinding.FieldName = 'DETALLE_STK'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Detalle Art.'
          end
          object cxDBPivotGridField11: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'PROVEE_CODIGO'
            Visible = True
            UniqueName = 'Cod.Proveedor'
          end
          object cxDBPivotGridField12: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'PROVEE_NOMBRE'
            Visible = True
            UniqueName = 'Nombre Proveedor'
          end
          object cxDBPivotGridField13: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'TIPOCPBTE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Tp'
          end
          object cxDBPivotGridField14: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'CLASECPBTE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Cl'
          end
          object cxDBPivotGridField15: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'NROCPBTE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGridField16: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'CTRO_COSTO_IMPUTADO'
            DisplayFormat = ',0.00'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Properties.Precision = 15
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Ctro.Costo.Imp.'
          end
          object cxDBPivotGridField17: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'CTRO_COSTO_PORCEN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '0.00'
            Properties.Precision = 15
            SummaryType = stCount
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Ctr.C. %'
          end
          object cxDBPivotGridField18: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'OBSERVACION1'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Obs 1'
          end
          object cxDBPivotGridField19: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'OBSERVACION2'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Obs 2'
          end
          object cxDBPivotGridField20: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'CPBTE_TOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Properties.Precision = 15
            Visible = True
            UniqueName = 'Cpbte.Total'
          end
          object cxDBPivotGridField21: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'CANTIDAD'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Cant.'
          end
          object cxDBPivotGridField22: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'CPBTE_NETO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Cpbte.Neto'
          end
          object cxDBPivotGridField23: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'CTRO_COSTO_DESCRIPCION'
            TotalsVisibility = tvCustom
            Visible = True
            UniqueName = 'Ctro.Costo Descrip.'
          end
          object cxDBPivotGridField24: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'CTRO_COSTO'
            Visible = True
            UniqueName = 'Ctro.Costo'
          end
          object cxDBPivotGridField25: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'ID_FC'
            Visible = True
            UniqueName = 'Id'
          end
          object cxDBPivotGridField26: TcxDBPivotGridField
            AreaIndex = 23
            DataBinding.FieldName = 'UNITARIO_TOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Unit.Total'
          end
          object cxDBPivotGridField27: TcxDBPivotGridField
            AreaIndex = 24
            DataBinding.FieldName = 'UNITARIO_FINAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Unit.Final'
          end
          object cxDBPivotGridField28: TcxDBPivotGridField
            AreaIndex = 32
            DataBinding.FieldName = 'TOTAL_LINEA_FINAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'T.Linea F'
          end
          object cxDBPivotGridField29: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'UNITARIO_IVA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Unit.IVA'
          end
          object cxDBPivotGridField30: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'UNITARIO_EXENTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Uni.Exento'
          end
          object cxDBPivotGridField31: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'UNITARIO_GRAVADO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Uni.Gravado'
          end
          object cxDBPivotGridField32: TcxDBPivotGridField
            AreaIndex = 25
            DataBinding.FieldName = 'TOTAL_LINEA_GRAV'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'T.Linea Gravado'
          end
          object cxDBPivotGridField33: TcxDBPivotGridField
            AreaIndex = 26
            DataBinding.FieldName = 'TOTAL_LINEA_EXEN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'T.Linea Exento'
          end
          object cxDBPivotGridField34: TcxDBPivotGridField
            AreaIndex = 27
            DataBinding.FieldName = 'TOTAL_LINEA_IMPIN'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'T.Linea Imp.I'
          end
          object cxDBPivotGridField35: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'TOTAL_LINEA_IVA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'T.Linea IVA'
          end
          object cxDBPivotGridField36: TcxDBPivotGridField
            AreaIndex = 28
            DataBinding.FieldName = 'MUESTRADIA'
            Visible = True
            UniqueName = 'Dia'
          end
          object cxDBPivotGridField37: TcxDBPivotGridField
            AreaIndex = 29
            DataBinding.FieldName = 'DIRECCION'
            Visible = True
            UniqueName = 'Direccion'
          end
          object cxDBPivotGridField38: TcxDBPivotGridField
            AreaIndex = 30
            DataBinding.FieldName = 'TELEFONO'
            Visible = True
            UniqueName = 'Telefono'
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Ultima compra'
        ImageIndex = 6
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 595
          Align = alClient
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSUltimaCompra
            OptionsView.GroupByBox = False
            object cxGrid3DBTableView1ULTIMACOMPRA: TcxGridDBColumn
              DataBinding.FieldName = 'ULTIMACOMPRA'
              HeaderAlignmentHorz = taCenter
              Width = 95
            end
            object cxGrid3DBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Width = 75
            end
            object cxGrid3DBTableView1DETALLE_STK: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_STK'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid3DBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              HeaderAlignmentHorz = taCenter
              Width = 221
            end
            object cxGrid3DBTableView1IVA_TASA: TcxGridDBColumn
              DataBinding.FieldName = 'IVA_TASA'
              HeaderAlignmentHorz = taCenter
              Width = 48
            end
            object cxGrid3DBTableView1UNITARIO_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_GRAVADO'
              HeaderAlignmentHorz = taCenter
              Width = 74
            end
            object cxGrid3DBTableView1UNITARIO_EXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_EXENTO'
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxGrid3DBTableView1UNITARIO_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_TOTAL'
              HeaderAlignmentHorz = taCenter
              Width = 73
            end
            object cxGrid3DBTableView1DETALLE_RUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_RUBRO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid3DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_SUBRUBRO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Cuadro CC'
        ImageIndex = 9
        object cxDBPivotGrid4: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1223
          Height = 554
          Align = alClient
          DataSource = DSAgrupadaCC
          Groups = <>
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2010Blue'
          OptionsLockedStateImage.Text = 'Un Momento ...'
          OptionsView.ColumnGrandTotalText = 'Total'
          OptionsView.RowGrandTotalText = 'Totales'
          TabOrder = 1
          OnMouseDown = cxDBPivotGrid4MouseDown
          OnMouseMove = cxDBPivotGrid4MouseMove
          OnMouseUp = cxDBPivotGrid4MouseUp
          object cxDBPivotGrid4ID_FC: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'ID_FC'
            Visible = True
            UniqueName = 'Id FC'
          end
          object cxDBPivotGrid4TIPOCPBTE: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'TIPOCPBTE'
            Visible = True
            UniqueName = 'Tp'
          end
          object cxDBPivotGrid4CLASECPBTE: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'CLASECPBTE'
            Visible = True
            UniqueName = 'Cl'
          end
          object cxDBPivotGrid4NROCPBTE: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'NROCPBTE'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid4FECHAFISCAL: TcxDBPivotGridField
            AreaIndex = 4
            IsCaptionAssigned = True
            Caption = 'Fecha Fiscal'
            DataBinding.FieldName = 'FECHAFISCAL'
            Visible = True
            UniqueName = 'Fecha Fiscal'
          end
          object cxDBPivotGrid4FECHACOMPRA: TcxDBPivotGridField
            AreaIndex = 5
            IsCaptionAssigned = True
            Caption = 'Fecha Compra'
            DataBinding.FieldName = 'FECHACOMPRA'
            Visible = True
            UniqueName = 'Fecha Compra'
          end
          object cxDBPivotGrid4NOMBRESUCURSAL: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'NOMBRESUCURSAL'
            Visible = True
            UniqueName = 'Sucursal'
          end
          object cxDBPivotGrid4PROVEE_NOMBRE: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'PROVEE_NOMBRE'
            Visible = True
            UniqueName = 'Nombre Proveedor'
          end
          object cxDBPivotGrid4CODIGOARTICULO: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'CODIGOARTICULO'
            Visible = True
            UniqueName = 'Cod.Art'
          end
          object cxDBPivotGrid4DETALLE_STK: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'DETALLE_STK'
            MinWidth = 100
            Visible = True
            Width = 350
            UniqueName = 'Detalle Stk'
          end
          object cxDBPivotGrid4CANTIDAD: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'CANTIDAD'
            Visible = True
            UniqueName = 'Cantidad'
          end
          object cxDBPivotGrid4UNITARIO_GRAVADO: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'UNITARIO_GRAVADO'
            Visible = True
            UniqueName = 'Uni.Gravado'
          end
          object cxDBPivotGrid4UNITARIO_EXENTO: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'UNITARIO_EXENTO'
            Visible = True
            UniqueName = 'Uni.Exento'
          end
          object cxDBPivotGrid4UNITARIO_IMPINTE: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'UNITARIO_IMPINTE'
            Visible = True
            UniqueName = 'UNITARIO_IMPINTE'
          end
          object cxDBPivotGrid4UNITARIO_IVA: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'UNITARIO_IVA'
            Visible = True
            UniqueName = 'Uni.IVA'
          end
          object cxDBPivotGrid4UNITARIO_TOTAL: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'UNITARIO_TOTAL'
            Visible = True
            UniqueName = 'Uni.Total'
          end
          object cxDBPivotGrid4UNITARIO_FINAL: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'UNITARIO_FINAL'
            Visible = True
            UniqueName = 'Uni.Total C/IVA'
          end
          object cxDBPivotGrid4TOTAL_LINEA: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'TOTAL_LINEA'
            Visible = True
            UniqueName = 'Total Linea'
          end
          object cxDBPivotGrid4CPBTE_NETO: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'CPBTE_NETO'
            Visible = True
            UniqueName = 'Cpbte Neto'
          end
          object cxDBPivotGrid4CPBTE_TOTAL: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'CPBTE_TOTAL'
            Visible = True
            UniqueName = 'Vpbte Total'
          end
          object cxDBPivotGrid4DETALLE_RUBRO: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'DETALLE_RUBRO'
            MinWidth = 60
            Visible = True
            Width = 160
            UniqueName = 'Rubro'
          end
          object cxDBPivotGrid4DETALLE_SUBRUBRO: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_SUBRUBRO'
            MinWidth = 100
            Visible = True
            Width = 300
            UniqueName = 'Sub Rubro'
          end
          object cxDBPivotGrid4MESCOMPRA: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'MESCOMPRA'
            Visible = True
            UniqueName = 'Mes Compra'
          end
          object cxDBPivotGrid4ANIOCOMPRA: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'ANIOCOMPRA'
            Visible = True
            UniqueName = 'A'#241'o Compra'
          end
          object cxDBPivotGrid4MESFISCAL: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'MESFISCAL'
            Visible = True
            UniqueName = 'Mes Fiscal'
          end
          object cxDBPivotGrid4ANIOFISCAL: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'ANIOFISCAL'
            Visible = True
            UniqueName = 'A'#241'o Fiscal'
          end
          object cxDBPivotGrid4CTRO_COSTO: TcxDBPivotGridField
            AreaIndex = 23
            DataBinding.FieldName = 'CTRO_COSTO'
            Visible = True
            UniqueName = 'CTRO_COSTO'
          end
          object cxDBPivotGrid4CTRO_COSTO_DESCRIPCION: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'CTRO_COSTO_DESCRIPCION'
            Visible = True
            UniqueName = 'Ctr de Costo'
          end
          object cxDBPivotGrid4CTRO_COSTO_IMPUTADO: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'CTRO_COSTO_IMPUTADO'
            Visible = True
            UniqueName = 'Ctro Costo Imputado'
          end
          object cxDBPivotGrid4CTRO_COSTO_PORCEN: TcxDBPivotGridField
            AreaIndex = 24
            DataBinding.FieldName = 'CTRO_COSTO_PORCEN'
            Visible = True
            UniqueName = 'Ctr Costo %'
          end
          object cxDBPivotGrid4TOTAL_LINEA_FINAL: TcxDBPivotGridField
            AreaIndex = 25
            DataBinding.FieldName = 'TOTAL_LINEA_FINAL'
            Visible = True
            UniqueName = 'T.Linea Final'
          end
          object cxDBPivotGrid4TOTAL_LINEA_GRAV: TcxDBPivotGridField
            AreaIndex = 26
            DataBinding.FieldName = 'TOTAL_LINEA_GRAV'
            Visible = True
            UniqueName = 'T.Linea Grav'
          end
          object cxDBPivotGrid4TOTAL_LINEA_EXEN: TcxDBPivotGridField
            AreaIndex = 27
            DataBinding.FieldName = 'TOTAL_LINEA_EXEN'
            Visible = True
            UniqueName = 'T.Linea Exe.'
          end
          object cxDBPivotGrid4TOTAL_LINEA_IMPIN: TcxDBPivotGridField
            AreaIndex = 28
            DataBinding.FieldName = 'TOTAL_LINEA_IMPIN'
            Visible = True
            UniqueName = 'TOTAL_LINEA_IMPIN'
          end
          object cxDBPivotGrid4TOTAL_LINEA_IVA: TcxDBPivotGridField
            AreaIndex = 29
            DataBinding.FieldName = 'TOTAL_LINEA_IVA'
            Visible = True
            UniqueName = 'T.Linea IVA'
          end
        end
        object pnTotalCC: TJvPanel
          Left = 11
          Top = 266
          Width = 320
          Height = 127
          Color = clTeal
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 0
          Visible = False
          object Label7: TLabel
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
            Left = 286
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
          object chSumasCC: TCheckListBox
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
            OnClick = chSumasCCClick
          end
        end
        object pnPieCuadroCC: TPanel
          Left = 0
          Top = 554
          Width = 1223
          Height = 41
          Align = alBottom
          TabOrder = 2
          object Label8: TLabel
            Left = 9
            Top = 9
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
            OnClick = Label8Click
          end
          object Label9: TLabel
            Left = 109
            Top = 9
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
          object Label10: TLabel
            Left = 601
            Top = 9
            Width = 28
            Height = 13
            Caption = 'Vistas'
          end
          object SpeedButton3: TSpeedButton
            Left = 969
            Top = 5
            Width = 23
            Height = 22
            Hint = 'Ingresar Vista Actual'
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFBBE4C270CF8527B7471EBA401EBA4027B74770CF85BBE4C2FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFA4FB96219C1401FCE4C24DC5827
              DD5C27DD5C24DC581FCE4C19C1404FB962FAFDFAFFFFFFFFFFFFFFFFFFFBFDFB
              21A93A1ED04E22D55521D35503B82C00A71200A71203B82C21D35522D5551ED0
              4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D21D3541FCC4D0FCC4500AD13FF
              FFFFFFFFFF00AD130FCC451FCC4D21D3541ECE4D4EB15BFFFFFFBDDEBE17BA3F
              21DA5A1ECC5120D0530DC74200BE25FFFFFFFFFFFF00BE250DC74220D0531ECC
              5121DA5A17BA3FBDDEBE6ABC7417D15120D45F0BCC4A04CA4300C13300BC22FF
              FFFFFFFFFF00BD2700C23B10CA4B0ECC4C20D45F17D1516ABC7430A03F33E67A
              00B62D00AD1300AD1300AD1300AD13FFFFFFFFFFFF00AD1300BD2700BD2300AD
              1300B62D33E67A30A14130A34381FCC300AF21FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF2181FCC430A14223953785FDCC
              2AC262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF2AC26285FDCC23953533933D7BFAC33CD07D71C7801EBF5921C05B0ABA4DFF
              FFFFFFFFFF10BC5122C05C1EBF5971C7803CD07D7BFAC333933D67AB668AE5B9
              65EAB050DF9756DF9C41DB8D22C05CFFFFFFFFFFFF22C05C49DC9356DF9C50DF
              9765EAB08AE5B967AB66B9D4B94EB068AFFFEA5EE0A156E19F45DE9766D589FF
              FFFFFFFFFF23C05B50E09E56E19F5EE0A1AFFFEA4EB068B9D4B9FFFFFF458945
              7BDCA8B6FFEF76E5B551DFA366D589FFFFFFFFFFFF24BF5956E2A876E5B5B6FF
              EF7BDCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B7FFF5AAF7E370E0B022
              C05C22C05C74E2B3ABF7E4B7FFF56DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
              F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
              45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
              8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = SpeedButton3Click
          end
          object JvDBLookupCombo1: TJvDBLookupCombo
            Left = 642
            Top = 6
            Width = 321
            Height = 21
            LookupField = 'ID'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DSVista
            TabOrder = 0
            OnChange = dbcVistasChange
          end
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'En Construccion'
        ImageIndex = 8
        object tmChartCompras: TTMSFNCChart
          Left = 0
          Top = 0
          Width = 1223
          Height = 585
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
          Legend.Fill.Kind = gfkSolid
          Legend.Stroke.Kind = gskSolid
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          Legend.Left = 10.000000000000000000
          Legend.Top = 10.000000000000000000
          SeriesMargins.Left = 23
          SeriesMargins.Top = 0
          SeriesMargins.Right = 0
          SeriesMargins.Bottom = 0
          Series = <>
          Title.Stroke.Kind = gskSolid
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Height = 35.000000000000000000
          Title.TextMargins.Left = 3
          Title.TextMargins.Top = 3
          Title.TextMargins.Right = 3
          Title.TextMargins.Bottom = 3
          Title.Text = 'TMS FNC Chart'
          XAxis.Stroke.Kind = gskSolid
          XAxis.Stroke.Color = clBlue
          XAxis.Height = 35.000000000000000000
          YAxis.Fill.ColorTo = clBlue
          YAxis.Stroke.Kind = gskSolid
          YAxis.Stroke.Color = clBlue
          YAxis.Width = 31.000000000000000000
          DefaultLoadOptions.XValuesFormatString = '%.0f'
          DefaultLoadOptions.YValuesFormatString = '%.2f'
          DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
          OnGetNumberOfPoints = tmChartComprasGetNumberOfPoints
          OnGetPoint = tmChartComprasGetPoint
          Align = alTop
          TabOrder = 0
          object TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter
            Left = 976
            Top = 144
            Width = 26
            Height = 26
            Visible = True
            Active = True
            Source.DataSource = DSAgrupadaCC
            Source.Series = <
              item
                YValue = 'TOTAL_LINEA'
                XValue = 'DETALLE_RUBRO'
              end>
          end
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1231
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        1231
        73)
      object RxLabel1: TJvLabel
        Left = 1012
        Top = 2
        Width = 33
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -12
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 885
      end
      object RxLabel2: TJvLabel
        Left = 1105
        Top = 2
        Width = 30
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -12
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 978
      end
      object RxLabel3: TJvLabel
        Left = 7
        Top = 4
        Width = 94
        Height = 13
        Caption = 'Rubros de Articulos'
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
      object JvLabel1: TJvLabel
        Left = 278
        Top = 4
        Width = 54
        Height = 13
        Caption = 'Sucursales'
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
      object UpDown1: TUpDown
        Left = 1203
        Top = 18
        Width = 17
        Height = 23
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akTop, akRight]
        Min = -1000000000
        Max = 100000000
        Position = 100
        TabOrder = 7
        Wrap = True
        OnClick = UpDown1Click
      end
      object Hasta: TJvDateEdit
        Left = 1108
        Top = 18
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
        TabOrder = 5
        OnAcceptDate = HastaAcceptDate
      end
      object Desde: TJvDateEdit
        Left = 1012
        Top = 18
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
        TabOrder = 4
        OnAcceptDate = DesdeAcceptDate
      end
      object dblRubros: TJvDBLookupCombo
        Left = 7
        Top = 21
        Width = 265
        Height = 21
        DisplayEmpty = 'Todos los Rubros'
        EmptyValue = '***'
        LookupField = 'CODIGO_RUBRO'
        LookupDisplay = 'DETALLE_RUBRO'
        LookupSource = DSRubros
        TabOrder = 2
      end
      object dbcSucursal: TJvDBLookupCombo
        Left = 278
        Top = 21
        Width = 217
        Height = 21
        DisplayEmpty = 'Todas las Sucursales'
        EmptyValue = '-1'
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursales
        TabOrder = 3
      end
      object rgFecha: TAdvOfficeRadioGroup
        Left = 625
        Top = -1
        Width = 116
        Height = 70
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Version = '1.8.4.2'
        Caption = 'Consulta por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentCtl3D = True
        ParentFont = False
        TabOrder = 0
        ItemIndex = 0
        Items.Strings = (
          'Fecha de Compra'
          'Fecha Fiscal')
        Themed = True
        Ellipsis = False
      end
      object rgIVA: TAdvOfficeRadioGroup
        Left = 524
        Top = 0
        Width = 95
        Height = 70
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Version = '1.8.4.2'
        Caption = 'Segun IVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentCtl3D = True
        ParentFont = False
        TabOrder = 1
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'En Libro IVA'
          'Sin Declarar')
        Themed = True
        Ellipsis = False
      end
      object chRefresh: TAdvOfficeCheckBox
        Left = 1104
        Top = 42
        Width = 112
        Height = 17
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TabStop = True
        Alignment = taLeftJustify
        Caption = 'Refresh Al Cambiar'
        ReturnIsTab = False
        ShowFocus = False
        Version = '1.8.4.2'
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 696
    Width = 1231
    Align = alBottom
    ButtonHeight = 27
    ExplicitTop = 696
    ExplicitWidth = 1231
    inherited btConfirma: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited btNuevo: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited btCancelar: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited btModificar: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited Pr: TSpeedButton
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btBuscar: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited Ne: TSpeedButton
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btBorrar: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited btSalir: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 17
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 574
      Top = 0
      Width = 75
      Height = 27
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
    object btExcel: TBitBtn
      Left = 649
      Top = 0
      Width = 104
      Height = 27
      Action = ExortarXKS
      Caption = 'Exportar Excel'
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
      TabOrder = 8
    end
  end
  inherited Panel1: TPanel
    Top = 726
    Width = 1231
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 726
    ExplicitWidth = 1231
    inherited DBStatusLabel1: TJvDBStatusLabel
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 1142
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1142
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 8
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object ExortarXKS: TAction
      Caption = 'Exportar Excel'
      OnExecute = ExortarXKSExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 776
    Top = 240
  end
  inherited ImageList1: TImageList
    Left = 368
    Top = 144
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
    Left = 568
    Top = 288
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
    Top = 448
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 424
    Top = 208
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 512
    Top = 208
  end
  inherited QBrowse2: TFDQuery
    Left = 56
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 24
    Top = 336
  end
  object DSCompras: TDataSource
    DataSet = CDSCompras
    Left = 456
    Top = 312
  end
  object DSRubros: TDataSource
    DataSet = CDSRubro
    Left = 744
    Top = 160
  end
  object frCompras: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.121865555600000000
    ReportOptions.LastChange = 39642.835369456020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportTitle1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnBeginDoc = frComprasBeginDoc
    Left = 616
    Top = 224
    Datasets = <>
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 90.000000000000000000
        Top = 60.472480000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 19.527520000000000000
          Width = 156.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 626.000000000000000000
          Top = 15.527520000000000000
          Width = 80.000000000000000000
          Height = 20.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.000000000000000000
          Top = 47.527520000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 47.527520000000000000
          Width = 88.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 83.527520000000000000
          Width = 56.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 190.000000000000000000
          Top = 83.527520000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 451.000000000000000000
          Top = 83.527520000000000000
          Width = 64.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 587.000000000000000000
          Top = 83.527520000000000000
          Width = 52.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 654.000000000000000000
          Top = 83.527520000000000000
          Width = 56.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = -6.000000000000000000
          Top = 83.527520000000000000
          Width = 728.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = -6.000000000000000000
          Top = 83.527520000000000000
          Height = 18.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 66.000000000000000000
          Top = 83.527520000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 447.000000000000000000
          Top = 83.527520000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 583.000000000000000000
          Top = 83.527520000000000000
          Height = 18.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 643.000000000000000000
          Top = 83.527520000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 722.000000000000000000
          Top = 83.527520000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 392.000000000000000000
          Top = 84.527520000000000000
          Width = 52.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 526.000000000000000000
          Top = 84.527520000000000000
          Width = 51.000000000000000000
          Height = 15.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 519.000000000000000000
          Top = 83.527520000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 474.000000000000000000
          Top = 63.527520000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DatosMaestros1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 17.000000000000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'DatosMaestros1OnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        RowCount = 0
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = -6.000000000000000000
          Top = 9.346320000000000000
          Width = 728.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = -3.000000000000000000
          Top = 2.480210000000000000
          Width = 64.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 70.000000000000000000
          Top = 2.480210000000000000
          Width = 304.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 451.000000000000000000
          Top = 2.480210000000000000
          Width = 65.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 585.000000000000000000
          Top = 2.480210000000000000
          Width = 56.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 646.000000000000000000
          Top = 2.480210000000000000
          Width = 72.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = -6.000000000000000000
          Top = 1.480210000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 66.000000000000000000
          Top = 1.480210000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 447.000000000000000000
          Top = 1.480210000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 583.000000000000000000
          Top = 1.480210000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 643.000000000000000000
          Top = 1.480210000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = -6.000000000000000000
          Top = 1.480210000000000000
          Width = 728.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 722.000000000000000000
          Top = 1.480210000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 395.000000000000000000
          Top = 2.480210000000000000
          Width = 45.000000000000000000
          Height = 15.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 526.000000000000000000
          Top = 2.480210000000000000
          Width = 52.000000000000000000
          Height = 15.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 519.000000000000000000
          Top = 1.480210000000000000
          Height = 17.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
      end
      object TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 54.000000000000000000
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 602.000000000000000000
          Top = 40.976190000000000000
          Width = 116.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 454.000000000000000000
          Top = 40.976190000000000000
          Width = 120.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = -6.000000000000000000
          Top = 37.976190000000000000
          Width = 731.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
      end
      object Memo9: TfrxMemoView
        AllowVectorExport = True
        Left = 625.000000000000000000
        Top = 360.000000000000000000
        Width = 96.000000000000000000
        Height = 18.000000000000000000
        StretchMode = smMaxHeight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        HideZeros = True
        ParentFont = False
        VAlign = vaCenter
      end
      object Line15: TfrxLineView
        AllowVectorExport = True
        Left = -6.000000000000000000
        Top = 162.000000000000000000
        Width = 728.000000000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
    end
  end
  object frDBCompras: TfrxDBDataset
    UserName = 'frDBCompras'
    CloseDataSource = False
    DataSet = CDSCompras
    BCDToCurrency = False
    DataSetOptions = []
    Left = 728
    Top = 291
    FieldDefs = <
      item
        FieldName = 'TIPOCPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'CLASECPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE_RUBRO'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'DETALLE_SUBRUBRO'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'RUBRO_STK'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE_STK'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'TotalCalculado'
      end
      item
        FieldName = 'ID_CABFAC'
      end
      item
        FieldName = 'SUBRUBRO_STK'
        FieldType = fftString
      end
      item
        FieldName = 'TOTAL'
      end
      item
        FieldName = 'DETALLE'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'OBSERVACION1'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'OBSERVACION2'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'IVA_TASA'
      end
      item
        FieldName = 'FECHACOMPRA'
      end
      item
        FieldName = 'FECHAFISCAL'
      end>
  end
  object CDSCompras: TClientDataSet
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
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
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
        DataType = ftString
        Name = 'iva'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'iva'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompras'
    OnCalcFields = CDSComprasCalcFields
    Left = 376
    Top = 312
    object CDSComprasTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSComprasCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSComprasNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSComprasCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      Size = 8
    end
    object CDSComprasDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
    end
    object CDSComprasDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'SubRubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 40
    end
    object CDSComprasRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      ProviderFlags = []
      Size = 3
    end
    object CDSComprasDETALLE_STK: TStringField
      DisplayLabel = 'Detalle Articulo'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSComprasTotalCalculado: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkInternalCalc
      FieldName = 'TotalCalculado'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSComprasID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      ProviderFlags = []
      Required = True
    end
    object CDSComprasSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      ProviderFlags = []
      Size = 5
    end
    object CDSComprasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
    end
    object CDSComprasDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSComprasOBSERVACION1: TStringField
      DisplayLabel = 'Obs 1'
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object CDSComprasOBSERVACION2: TStringField
      DisplayLabel = 'Obs 2'
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object CDSComprasIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      ProviderFlags = []
    end
    object CDSComprasFECHACOMPRA: TSQLTimeStampField
      DisplayLabel = 'Fecha Comp'
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSComprasFECHAFISCAL: TSQLTimeStampField
      DisplayLabel = 'Fecha Fiscal'
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
      Required = True
    end
  end
  object DSPCompras: TDataSetProvider
    DataSet = QCompras
    Options = [poAllowCommandText]
    Left = 304
    Top = 312
  end
  object DataToXLS: TDataToXLS
    DataSet = CDSCompras
    Columns = <
      item
        DataField = 'TIPOCPBTE'
        Title = 'Tp'
      end
      item
        DataField = 'CLASECPBTE'
        Title = 'Cl'
      end
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbte'
      end
      item
        DataField = 'FECHACOMPRA'
        Title = 'Fecha Compra'
      end
      item
        DataField = 'CODIGOARTICULO'
        Title = 'Codigo'
      end
      item
        DataField = 'DETALLE_RUBRO'
        Title = 'Rubro'
      end
      item
        DataField = 'DETALLE_SUBRUBRO'
        Title = 'SubRubro'
      end
      item
        DataField = 'RUBRO_STK'
        Title = 'RUBRO_STK'
      end
      item
        DataField = 'DETALLE_STK'
        Title = 'DETALLE_STK'
      end
      item
        DataField = 'DETALLE'
        Title = 'Des.Detalle'
      end
      item
        DataField = 'TotalCalculado'
        Title = 'Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'FECHAFISCAL'
        Title = 'Fecha Fiscal'
      end
      item
        DataField = 'IVA_TASA'
        Title = 'IVA_TASA'
        Alignment = taRightJustify
      end
      item
        DataField = 'SUBRUBRO_STK'
        Title = 'SUBRUBRO_STK'
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
    Left = 568
    Top = 360
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 552
    Top = 432
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
    Left = 672
    Top = 432
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 784
    Top = 176
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Options = []
    Left = 632
    Top = 152
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal_old
    Options = []
    Left = 224
    Top = 248
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 280
    Top = 248
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object DSSucursales: TDataSource
    DataSet = CDSSucursal
    Left = 336
    Top = 248
  end
  object DSPComprasAgrup: TDataSetProvider
    DataSet = QComprasAgrup
    Options = [poAllowCommandText]
    Left = 304
    Top = 376
  end
  object CDSComprasAgrup: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
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
        DataType = ftString
        Name = 'iva'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'fecha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprasAgrup'
    OnCalcFields = CDSComprasAgrupCalcFields
    Left = 392
    Top = 376
    object CDSComprasAgrupMUESTRAMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAMES'
      Size = 15
    end
    object CDSComprasAgrupCODIGOARTICULO: TStringField
      DisplayLabel = 'Cod.Art.'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSComprasAgrupSUCURSALCOMPRA: TIntegerField
      DisplayLabel = 'Suc.'
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
    end
    object CDSComprasAgrupNOMBRESUCURSAL: TStringField
      DisplayLabel = 'Nom.Suc'
      FieldName = 'NOMBRESUCURSAL'
      Origin = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSComprasAgrupTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 4
    end
    object CDSComprasAgrupCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 4
    end
    object CDSComprasAgrupNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSComprasAgrupRUBRO_STK: TStringField
      DisplayLabel = 'Rub.'
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Size = 3
    end
    object CDSComprasAgrupDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Size = 35
    end
    object CDSComprasAgrupSUBRUBRO_STK: TStringField
      DisplayLabel = 'Sub.'
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSComprasAgrupDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Subrubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Size = 45
    end
    object CDSComprasAgrupCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSComprasAgrupMESCOMPRA: TSmallintField
      DisplayLabel = 'Mes.Cp'
      FieldName = 'MESCOMPRA'
      Origin = 'MESCOMPRA'
    end
    object CDSComprasAgrupANIOCOMPRA: TSmallintField
      DisplayLabel = 'A'#241'o Cp.'
      FieldName = 'ANIOCOMPRA'
      Origin = 'ANIOCOMPRA'
    end
    object CDSComprasAgrupMESFISCAL: TSmallintField
      DisplayLabel = 'Mes Fiscal'
      FieldName = 'MESFISCAL'
      Origin = 'MESFISCAL'
    end
    object CDSComprasAgrupANIOFISCAL: TSmallintField
      DisplayLabel = 'A'#241'o Fiscal'
      FieldName = 'ANIOFISCAL'
      Origin = 'ANIOFISCAL'
    end
    object CDSComprasAgrupDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSComprasAgrupMUESTRAANIO: TStringField
      DisplayLabel = 'A'#241'o'
      FieldKind = fkCalculated
      FieldName = 'MUESTRAANIO'
      Size = 4
      Calculated = True
    end
    object CDSComprasAgrupOBSERVACION1: TStringField
      DisplayLabel = 'Obs 1'
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object CDSComprasAgrupOBSERVACION2: TStringField
      DisplayLabel = 'Obs 2'
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object CDSComprasAgrupID_FC: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object CDSComprasAgrupPROVEE_CODIGO: TStringField
      DisplayLabel = 'Cod.Proveedor'
      FieldName = 'PROVEE_CODIGO'
      Origin = 'PROVEE_CODIGO'
      Size = 6
    end
    object CDSComprasAgrupPROVEE_NOMBRE: TStringField
      DisplayLabel = 'Nombre Proveedor'
      FieldName = 'PROVEE_NOMBRE'
      Origin = 'PROVEE_NOMBRE'
      Size = 35
    end
    object CDSComprasAgrupUNITARIO_GRAVADO: TFloatField
      DisplayLabel = 'Uni.Gravado'
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSComprasAgrupUNITARIO_EXENTO: TFloatField
      DisplayLabel = 'Uni.Exento'
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSComprasAgrupUNITARIO_IMPINTE: TFloatField
      DisplayLabel = 'Uni.Imp.Int.'
      FieldName = 'UNITARIO_IMPINTE'
      Origin = 'UNITARIO_IMPINTE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSComprasAgrupUNITARIO_IVA: TFloatField
      DisplayLabel = 'Unit.IVA'
      FieldName = 'UNITARIO_IVA'
      Origin = 'UNITARIO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSComprasAgrupUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unit.Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSComprasAgrupCPBTE_NETO: TFloatField
      DisplayLabel = 'Cpbt.Neto'
      FieldName = 'CPBTE_NETO'
      Origin = 'CPBTE_NETO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSComprasAgrupCPBTE_TOTAL: TFloatField
      DisplayLabel = 'Cpbte.Total'
      FieldName = 'CPBTE_TOTAL'
      Origin = 'CPBTE_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSComprasAgrupCTRO_COSTO: TIntegerField
      DisplayLabel = 'Ctro.Costo'
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSComprasAgrupCTRO_COSTO_DESCRIPCION: TStringField
      DisplayLabel = 'Ctro.Costo Descrip.'
      FieldName = 'CTRO_COSTO_DESCRIPCION'
      Origin = 'CTRO_COSTO_DESCRIPCION'
      Size = 45
    end
    object CDSComprasAgrupCTRO_COSTO_IMPUTADO: TFloatField
      DisplayLabel = 'Ctro.Costo.Imp.'
      FieldName = 'CTRO_COSTO_IMPUTADO'
      Origin = 'CTRO_COSTO_IMPUTADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSComprasAgrupCTRO_COSTO_PORCEN: TFloatField
      DisplayLabel = 'Ctr.C. %'
      FieldName = 'CTRO_COSTO_PORCEN'
      Origin = 'CTRO_COSTO_PORCEN'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSComprasAgrupUNITARIO_FINAL: TFloatField
      DisplayLabel = 'Unit.Final'
      FieldName = 'UNITARIO_FINAL'
      Origin = 'UNITARIO_FINAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSComprasAgrupTOTAL_LINEA: TFloatField
      DisplayLabel = 'Total Linea (S/IVA)'
      FieldName = 'TOTAL_LINEA'
      Origin = 'TOTAL_LINEA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSComprasAgrupTOTAL_LINEA_FINAL: TFloatField
      DisplayLabel = 'T.Linea F'
      FieldName = 'TOTAL_LINEA_FINAL'
      Origin = 'TOTAL_LINEA_FINAL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSComprasAgrupTOTAL_LINEA_GRAV: TFloatField
      DisplayLabel = 'T.Linea Gravado'
      FieldName = 'TOTAL_LINEA_GRAV'
      Origin = 'TOTAL_LINEA_GRAV'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSComprasAgrupTOTAL_LINEA_EXEN: TFloatField
      DisplayLabel = 'T.Linea Exento'
      FieldName = 'TOTAL_LINEA_EXEN'
      Origin = 'TOTAL_LINEA_EXEN'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSComprasAgrupTOTAL_LINEA_IMPIN: TFloatField
      DisplayLabel = 'T.Linea Imp.I'
      FieldName = 'TOTAL_LINEA_IMPIN'
      Origin = 'TOTAL_LINEA_IMPIN'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSComprasAgrupTOTAL_LINEA_IVA: TFloatField
      DisplayLabel = 'T.Linea IVA'
      FieldName = 'TOTAL_LINEA_IVA'
      Origin = 'TOTAL_LINEA_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSComprasAgrupMUESTRADIA: TStringField
      DisplayLabel = 'Dia'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRADIA'
      Size = 2
    end
    object CDSComprasAgrupDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSComprasAgrupTELEFONO: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Size = 10
    end
    object CDSComprasAgrupFECHAFISCAL: TSQLTimeStampField
      DisplayLabel = 'Fecha Fiscal'
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
    end
    object CDSComprasAgrupFECHACOMPRA: TSQLTimeStampField
      DisplayLabel = 'Fecha Comp.'
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
    end
  end
  object DSAgrupada: TDataSource
    DataSet = CDSComprasAgrup
    Left = 496
    Top = 376
  end
  object frDBComprasAgrup: TfrxDBDataset
    UserName = 'frDBComprasAgrup'
    CloseDataSource = False
    DataSet = CDSComprasAgrup
    BCDToCurrency = False
    DataSetOptions = []
    Left = 680
    Top = 347
    FieldDefs = <
      item
        FieldName = 'MUESTRAMES'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldType = fftString
      end
      item
        FieldName = 'SUCURSALCOMPRA'
      end
      item
        FieldName = 'NOMBRESUCURSAL'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'CLASECPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'RUBRO_STK'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE_RUBRO'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'SUBRUBRO_STK'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE_SUBRUBRO'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'CANTIDAD'
      end
      item
        FieldName = 'MESCOMPRA'
      end
      item
        FieldName = 'ANIOCOMPRA'
      end
      item
        FieldName = 'MESFISCAL'
      end
      item
        FieldName = 'ANIOFISCAL'
      end
      item
        FieldName = 'DETALLE_STK'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'MUESTRAANIO'
        FieldType = fftString
      end
      item
        FieldName = 'OBSERVACION1'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'OBSERVACION2'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'ID_FC'
      end
      item
        FieldName = 'PROVEE_CODIGO'
        FieldType = fftString
      end
      item
        FieldName = 'PROVEE_NOMBRE'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'UNITARIO_GRAVADO'
      end
      item
        FieldName = 'UNITARIO_EXENTO'
      end
      item
        FieldName = 'UNITARIO_IMPINTE'
      end
      item
        FieldName = 'UNITARIO_IVA'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
      end
      item
        FieldName = 'CPBTE_NETO'
      end
      item
        FieldName = 'CPBTE_TOTAL'
      end
      item
        FieldName = 'CTRO_COSTO'
      end
      item
        FieldName = 'CTRO_COSTO_DESCRIPCION'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'CTRO_COSTO_IMPUTADO'
      end
      item
        FieldName = 'CTRO_COSTO_PORCEN'
      end
      item
        FieldName = 'UNITARIO_FINAL'
      end
      item
        FieldName = 'TOTAL_LINEA'
      end
      item
        FieldName = 'TOTAL_LINEA_FINAL'
      end
      item
        FieldName = 'TOTAL_LINEA_GRAV'
      end
      item
        FieldName = 'TOTAL_LINEA_EXEN'
      end
      item
        FieldName = 'TOTAL_LINEA_IMPIN'
      end
      item
        FieldName = 'TOTAL_LINEA_IVA'
      end
      item
        FieldName = 'MUESTRADIA'
        FieldType = fftString
      end
      item
        FieldName = 'DIRECCION'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'TELEFONO'
        FieldType = fftString
      end
      item
        FieldName = 'FECHAFISCAL'
      end
      item
        FieldName = 'FECHACOMPRA'
      end>
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link5
    PreviewOptions.Caption = 'Vista Previa'
    PrintTitle = 'Informe'
    Version = 0
    Left = 628
    Top = 299
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
      ReportDocument.CreationDate = 45986.583877037040000000
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
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 5000
      PrinterPage.Margins.Right = 5000
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45986.583877060180000000
      OptionsExpanding.ExpandGroupRows = True
      OptionsExpanding.ExpandMasterRows = True
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link4: TdxGridReportLink
      Active = True
      Component = cxGrid2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 5000
      PrinterPage.Margins.Right = 5000
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45986.583877083340000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link5: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid3
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
      ReportDocument.CreationDate = 45986.583877094900000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      OptionsView.Prefilter = pfvNever
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object DSPOCompra: TDataSetProvider
    DataSet = QOCompra
    Options = [poAllowCommandText]
    Left = 240
    Top = 400
  end
  object CDSOCompra: TClientDataSet
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
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
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
    ProviderName = 'DSPOCompra'
    OnCalcFields = CDSOCompraCalcFields
    Left = 384
    Top = 432
    object CDSOCompraSUCURSAL: TIntegerField
      DisplayLabel = 'Cod.Suc.'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      ProviderFlags = []
    end
    object CDSOCompraNOMBRESUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'NOMBRESUCURSAL'
      Origin = 'NOMBRESUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSOCompraTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSOCompraRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Rubro'
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      ProviderFlags = []
      Size = 3
    end
    object CDSOCompraDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSOCompraSUBRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Sub Rub.'
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      ProviderFlags = []
      Size = 5
    end
    object CDSOCompraDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSOCompraMESCOMPRA: TSmallintField
      DisplayLabel = 'Mes Comp.'
      FieldName = 'MESCOMPRA'
      Origin = 'MESCOMPRA'
      ProviderFlags = []
    end
    object CDSOCompraANIOCOMPRA: TSmallintField
      DisplayLabel = 'A'#241'o Comp.'
      FieldName = 'ANIOCOMPRA'
      Origin = 'ANIOCOMPRA'
      ProviderFlags = []
    end
    object CDSOCompraMESCUMPLIDA: TSmallintField
      DisplayLabel = 'Mes Cump.'
      FieldName = 'MESCUMPLIDA'
      Origin = 'MESCUMPLIDA'
      ProviderFlags = []
    end
    object CDSOCompraANIOCUMPLIDA: TSmallintField
      DisplayLabel = 'A'#241'o Cump.'
      FieldName = 'ANIOCUMPLIDA'
      Origin = 'ANIOCUMPLIDA'
      ProviderFlags = []
    end
    object CDSOCompraCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = []
      Size = 8
    end
    object CDSOCompraDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSOCompraCODIGO: TStringField
      DisplayLabel = 'Cod.Prov.'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSOCompraNOMBRE: TStringField
      DisplayLabel = 'Nombre Prov.'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSOCompraESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSOCompraMUESTRAESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAESTADO'
      Size = 15
    end
    object CDSOCompraSUM: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSOCompraFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha O.C'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSOCompraFECHACUMPLIDA: TSQLTimeStampField
      DisplayLabel = 'F.Cumplida'
      FieldName = 'FECHACUMPLIDA'
      Origin = 'FECHACUMPLIDA'
    end
  end
  object DSOCompra: TDataSource
    DataSet = CDSOCompra
    Left = 472
    Top = 432
  end
  object DSPVista: TDataSetProvider
    DataSet = QVista
    Options = []
    Left = 896
    Top = 388
  end
  object CDSVista: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVista'
    Left = 953
    Top = 387
    object CDSVistaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVistaVISTA: TBlobField
      FieldName = 'VISTA'
      Origin = 'VISTA'
    end
    object CDSVistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSVista: TDataSource
    DataSet = CDSVista
    Left = 1016
    Top = 384
  end
  object QOCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fc.sucursal,suc.detalle as NombreSucursal,fc.tipocpbte,fc' +
        '.fecha,fc.fechacumplida,'
      
        '       s.rubro_stk,r.detalle_rubro,s.subrubro_stk,sr.detalle_sub' +
        'rubro,sum( fd.total),'
      
        '       extract (month from fc.fecha) as MesCompra, extract (year' +
        ' from fc.fecha) as AnioCompra,'
      
        '       extract (month from fc.fechacumplida) as MesCumplida, ext' +
        'ract (year from fc.fechacumplida) as AnioCumplida,'
      
        '       s.codigo_stk,s.detalle_stk,fc.codigo,fc.nombre,fc.estado ' +
        'from ordencompradet fd'
      'left join stock s on s.codigo_stk=fd.codigoarticulo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'left join ordencompracab fc on fc.id_oc=fd.id_caboc'
      'left join sucursal suc on suc.codigo=fc.sucursal'
      'where (fc.fecha between :Desde and :Hasta) and'
      '((s.rubro_stk = :rubro) or ( :rubro = '#39'***'#39')) and'
      '(fc.sucursal = :sucursal or :sucursal = -1 ) and'
      '(fc.Anulado<>'#39'S'#39') and (fc.estado<>'#39'C'#39') and (fc.estado<>'#39'V'#39')'
      ''
      
        'group by fc.sucursal, suc.detalle, fc.tipocpbte, fc.fecha,fc.fec' +
        'hacumplida,'
      
        '         s.rubro_stk,r.detalle_rubro,s.subrubro_stk,sr.detalle_s' +
        'ubrubro,fc.fecha,fc.fechacumplida,'
      
        '         s.codigo_stk,s.detalle_stk,fc.codigo,fc.nombre,fc.estad' +
        'o '
      'order by s.rubro_stk,s.subrubro_stk')
    Left = 208
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'Desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QComprasAgrup: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from  DET_COMPRAS_RUB_2 ( :rubro , :desde, :hasta, :suc' +
        'ursal, :iva, :fecha )')
    Left = 208
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
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
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'iva'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'fecha'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QCompras: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fc.fechafiscal,fd.FechaCompra,fd.tipocpbte,fd.clasecpbte,' +
        'fd.nrocpbte,fd.codigoarticulo,s.detalle_stk,fd.detalle,'
      
        'fd.iva_tasa, fd.total*(1-fc.dsto*0.01) as total,s.rubro_stk,r.de' +
        'talle_rubro,s.subrubro_stk,sr.detalle_subrubro,fd.id_cabfac,'
      'fc.observacion1,fc.observacion2 from fccompcab fc'
      'left join fccompdet fd on fd.id_cabfac=fc.id_fc'
      'left join stock s on s.codigo_stk=fd.codigoarticulo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where (fc.fechaCompra between :Desde and :Hasta) and'
      '((s.rubro_stk = :rubro) or ( :rubro = '#39'***'#39')) and'
      '(fc.sucursalcompra = :sucursal or :sucursal = -1 ) and'
      '(fc.ingresa_libro_iva = :iva or :iva ='#39'*'#39')'
      ''
      'order by s.rubro_stk,s.subrubro_stk,fd.codigoarticulo')
    Left = 208
    Top = 312
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
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'rubro'
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
        Name = 'iva'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'iva'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QUltimaCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fd.codigoarticulo,s.detalle_stk,fc.nombre, Max(fd.FechaCo' +
        'mpra) as UltimaCompra,'
      
        'fd.iva_tasa,max(fd.unitario_gravado) as unitario_gravado ,Max(fd' +
        '.unitario_exento) as unitario_exento,'
      
        ' max(fd.unitario_total) as unitario_total,r.detalle_rubro,sr.det' +
        'alle_subrubro from fccompcab fc'
      'left join fccompdet fd on fd.id_cabfac=fc.id_fc'
      'left join stock s on s.codigo_stk=fd.codigoarticulo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where (fc.fechaCompra between :Desde and :Hasta) and'
      '((s.rubro_stk = :rubro) or ( :rubro = '#39'***'#39')) and'
      '(fc.sucursalcompra = :sucursal or :sucursal = -1 ) and'
      
        '(fc.ingresa_libro_iva = :iva or :iva ='#39'*'#39') and fc.tipocpbte<>'#39'NC' +
        #39
      'group by fd.codigoarticulo,s.detalle_stk,fc.nombre,'
      'fd.iva_tasa,r.detalle_rubro,sr.detalle_subrubro'
      '')
    Left = 192
    Top = 520
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
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'rubro'
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
        Name = 'iva'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'iva'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPUltimaCompra: TDataSetProvider
    DataSet = QUltimaCompra
    Options = [poAllowCommandText]
    Left = 288
    Top = 520
  end
  object CDSUltimaCompra: TClientDataSet
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
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
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
        DataType = ftString
        Name = 'iva'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'iva'
        ParamType = ptInput
      end>
    ProviderName = 'DSPUltimaCompra'
    OnCalcFields = CDSComprasCalcFields
    Left = 360
    Top = 520
    object CDSUltimaCompraCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object CDSUltimaCompraDETALLE_STK: TStringField
      DisplayLabel = 'Detalle Stock'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSUltimaCompraNOMBRE: TStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ReadOnly = True
      Size = 35
    end
    object CDSUltimaCompraIVA_TASA: TFloatField
      DisplayLabel = '% Iva'
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSUltimaCompraUNITARIO_GRAVADO: TFloatField
      DisplayLabel = 'Uni.Gravado'
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSUltimaCompraUNITARIO_EXENTO: TFloatField
      DisplayLabel = 'Uni.Exento'
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSUltimaCompraUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Uni.Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSUltimaCompraDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object CDSUltimaCompraDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSUltimaCompraULTIMACOMPRA: TSQLTimeStampField
      DisplayLabel = 'Ult.Compra'
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
    end
  end
  object DSUltimaCompra: TDataSource
    DataSet = CDSUltimaCompra
    Left = 440
    Top = 520
  end
  object PopupMenu1: TPopupMenu
    Left = 428
    Top = 281
    object LimpiarFiltros: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltrosClick
    end
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from Rubros')
    Left = 580
    Top = 153
  end
  object QComprasRub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select  s.rubro_stk,r.detalle_rubro,Sum(fd.total*(1-fc.dsto*0.01' +
        ')) as total from fccompcab fc'
      'left join fccompdet fd on fd.id_cabfac=fc.id_fc'
      'left join stock s on s.codigo_stk=fd.codigoarticulo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where (fc.fechaCompra between :Desde and :Hasta) and'
      '(fc.sucursalcompra = :sucursal or :sucursal = -1 )'
      ''
      'group by  s.rubro_stk,r.detalle_rubro'
      'order by s.rubro_stk')
    Left = 224
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = 'Desde'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end
      item
        Position = 2
        Name = 'Hasta'
        DataType = ftDate
        ParamType = ptInput
        Value = 44197d
      end
      item
        Position = 5
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
        Value = -1
      end>
    object QComprasRubRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Size = 3
    end
    object QComprasRubDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Size = 35
    end
    object QComprasRubTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
  end
  object QVista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT * from VISTA_grillas where origen = :origen')
    Left = 828
    Top = 393
    ParamData = <
      item
        Position = 1
        Name = 'origen'
        DataType = ftString
        ParamType = ptInput
      end>
    object QVistaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVistaVISTA: TBlobField
      FieldName = 'VISTA'
      Origin = 'VISTA'
    end
    object QVistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 150
    end
  end
  object QAgrupadaCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from  DET_COMPRAS_RUB_3_CTRO_COSTO ( :rubro , :desde, :' +
        'hasta, :sucursal, :iva, :fecha )')
    Left = 648
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
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
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'iva'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'fecha'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPAgrupadaCC: TDataSetProvider
    DataSet = QAgrupadaCC
    Options = [poAllowCommandText]
    Left = 744
    Top = 536
  end
  object CDSAgrupadaCC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
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
        DataType = ftString
        Name = 'iva'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'fecha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAgrupadaCC'
    OnCalcFields = CDSComprasAgrupCalcFields
    Left = 832
    Top = 536
    object CDSAgrupadaCCID_FC: TIntegerField
      DisplayLabel = 'Id FC'
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object CDSAgrupadaCCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 4
    end
    object CDSAgrupadaCCCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 4
    end
    object CDSAgrupadaCCNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSAgrupadaCCFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
    end
    object CDSAgrupadaCCFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
    end
    object CDSAgrupadaCCNOMBRESUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'NOMBRESUCURSAL'
      Origin = 'NOMBRESUCURSAL'
      Size = 35
    end
    object CDSAgrupadaCCPROVEE_NOMBRE: TStringField
      DisplayLabel = 'Nombre Proveedor'
      FieldName = 'PROVEE_NOMBRE'
      Origin = 'PROVEE_NOMBRE'
      Size = 35
    end
    object CDSAgrupadaCCCODIGOARTICULO: TStringField
      DisplayLabel = 'Cod.Art'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSAgrupadaCCDETALLE_STK: TStringField
      DisplayLabel = 'Detalle Ficha de Stock'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSAgrupadaCCCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCUNITARIO_IVA: TFloatField
      DisplayLabel = 'Uni.IVA'
      FieldName = 'UNITARIO_IVA'
      Origin = 'UNITARIO_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Uni.Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCUNITARIO_FINAL: TFloatField
      DisplayLabel = 'Uni.Total C/IVA'
      FieldName = 'UNITARIO_FINAL'
      Origin = 'UNITARIO_FINAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCTOTAL_LINEA: TFloatField
      DisplayLabel = 'Total Linea'
      FieldName = 'TOTAL_LINEA'
      Origin = 'TOTAL_LINEA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCCPBTE_NETO: TFloatField
      DisplayLabel = 'Cpbte Neto'
      FieldName = 'CPBTE_NETO'
      Origin = 'CPBTE_NETO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCCPBTE_TOTAL: TFloatField
      DisplayLabel = 'Vpbte Total'
      FieldName = 'CPBTE_TOTAL'
      Origin = 'CPBTE_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Size = 35
    end
    object CDSAgrupadaCCDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Size = 45
    end
    object CDSAgrupadaCCMESCOMPRA: TSmallintField
      DisplayLabel = 'Mes Compra'
      FieldName = 'MESCOMPRA'
      Origin = 'MESCOMPRA'
    end
    object CDSAgrupadaCCANIOCOMPRA: TSmallintField
      DisplayLabel = 'A'#241'o Compra'
      FieldName = 'ANIOCOMPRA'
      Origin = 'ANIOCOMPRA'
    end
    object CDSAgrupadaCCMESFISCAL: TSmallintField
      DisplayLabel = 'Mes Fiscal'
      FieldName = 'MESFISCAL'
      Origin = 'MESFISCAL'
    end
    object CDSAgrupadaCCANIOFISCAL: TSmallintField
      DisplayLabel = 'A'#241'o Fiscal'
      FieldName = 'ANIOFISCAL'
      Origin = 'ANIOFISCAL'
    end
    object CDSAgrupadaCCCTRO_COSTO_DESCRIPCION: TStringField
      DisplayLabel = 'Ctr de Costo'
      FieldName = 'CTRO_COSTO_DESCRIPCION'
      Origin = 'CTRO_COSTO_DESCRIPCION'
      Size = 45
    end
    object CDSAgrupadaCCCTRO_COSTO_IMPUTADO: TFloatField
      DisplayLabel = 'Ctro Costo Imputado'
      FieldName = 'CTRO_COSTO_IMPUTADO'
      Origin = 'CTRO_COSTO_IMPUTADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCCTRO_COSTO_PORCEN: TFloatField
      DisplayLabel = 'Ctr Costo %'
      FieldName = 'CTRO_COSTO_PORCEN'
      Origin = 'CTRO_COSTO_PORCEN'
    end
    object CDSAgrupadaCCTOTAL_LINEA_FINAL: TFloatField
      DisplayLabel = 'T.Linea Final'
      FieldName = 'TOTAL_LINEA_FINAL'
      Origin = 'TOTAL_LINEA_FINAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCTOTAL_LINEA_GRAV: TFloatField
      DisplayLabel = 'T.Linea Grav'
      FieldName = 'TOTAL_LINEA_GRAV'
      Origin = 'TOTAL_LINEA_GRAV'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCTOTAL_LINEA_EXEN: TFloatField
      DisplayLabel = 'T.Linea Exe.'
      FieldName = 'TOTAL_LINEA_EXEN'
      Origin = 'TOTAL_LINEA_EXEN'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCTOTAL_LINEA_IVA: TFloatField
      DisplayLabel = 'T.Linea IVA'
      FieldName = 'TOTAL_LINEA_IVA'
      Origin = 'TOTAL_LINEA_IVA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCSUCURSALCOMPRA: TIntegerField
      DisplayLabel = 'Cod.Sucursal'
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
    end
    object CDSAgrupadaCCUNITARIO_GRAVADO: TFloatField
      DisplayLabel = 'Uni.Gravado'
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCUNITARIO_EXENTO: TFloatField
      DisplayLabel = 'Uni.Exento'
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCUNITARIO_IMPINTE: TFloatField
      DisplayLabel = 'Uni.Imp/Int.'
      FieldName = 'UNITARIO_IMPINTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCTOTAL_LINEA_IMPIN: TFloatField
      DisplayLabel = 'T.Lin.Imp/Int'
      FieldName = 'TOTAL_LINEA_IMPIN'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAgrupadaCCRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Rub'
      FieldName = 'RUBRO_STK'
      Size = 3
    end
    object CDSAgrupadaCCSUBRUBRO_STK: TStringField
      DisplayLabel = 'Cod.SubRub'
      FieldName = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSAgrupadaCCCTRO_COSTO: TIntegerField
      DisplayLabel = 'Cod.Ctr Cos.'
      FieldName = 'CTRO_COSTO'
    end
  end
  object DSAgrupadaCC: TDataSource
    DataSet = CDSAgrupadaCC
    Left = 936
    Top = 536
  end
end

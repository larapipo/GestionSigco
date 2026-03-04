inherited FormDetalleArticulosVendidos: TFormDetalleArticulosVendidos
  Left = 323
  Top = 71
  Caption = 'Detalle de Articulos Vendidos'
  ClientHeight = 774
  ClientWidth = 1579
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1597
  ExplicitHeight = 815
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1579
    Height = 721
    Align = alClient
    Color = clGradientInactiveCaption
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1579
    ExplicitHeight = 721
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 1579
      Height = 721
      ActivePage = tsGeneral
      Align = alClient
      TabOrder = 0
      object tsGeneral: TTabSheet
        Caption = 'General'
        object dbgMovimientos: TJvDBGrid
          Left = 0
          Top = 137
          Width = 1571
          Height = 461
          Align = alClient
          DataSource = DSMovimientos
          FixedColor = clNavy
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = PopupMenu2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgMovimientosDblClick
          TitleButtons = True
          OnTitleBtnClick = dbgMovimientosTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 66
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
              Width = 282
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Cant.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRES_CANTIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'PRESEN_UNITARIA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'PRES_UNIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_EXENTO'
              Title.Alignment = taCenter
              Title.Caption = '$ Exento'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_GRAVADO'
              Title.Alignment = taCenter
              Title.Caption = '$ Gravado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = '$ Uni.Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Total Neto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_RECALCULADO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'UNITARIO_FINAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'TOTAL_FINAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'TOTAL_REC_FINAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ULT_PRECIO_COMPRA'
              Title.Alignment = taCenter
              Title.Caption = '$Ult.Compra'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CATEGORIA_CLIENTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object pnPieGral: TPanel
          Left = 0
          Top = 598
          Width = 1571
          Height = 95
          Align = alBottom
          Color = clSkyBlue
          Padding.Top = 2
          Padding.Bottom = 2
          ParentBackground = False
          TabOrder = 1
          object Label7: TLabel
            Left = 7
            Top = 60
            Width = 43
            Height = 13
            Caption = 'Uni.Pres.'
          end
          object cxDBTextEdit1: TDBText
            Left = 56
            Top = 60
            Width = 71
            Height = 13
            Alignment = taRightJustify
            AutoSize = True
            Color = clInactiveCaptionText
            DataField = 'PRES_UNIDAD'
            DataSource = DSMovimientos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label8: TLabel
            Left = 141
            Top = 60
            Width = 59
            Height = 13
            Caption = 'Total x Pres.'
          end
          object cxDBTextEdit2: TDBText
            Left = 206
            Top = 60
            Width = 71
            Height = 13
            Alignment = taRightJustify
            AutoSize = True
            Color = clInactiveCaptionText
            DataField = 'PRES_CANTIDAD'
            DataSource = DSMovimientos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object RxLabel4: TLabel
            Left = 6
            Top = 16
            Width = 60
            Height = 13
            Caption = 'Total Exento'
            Transparent = True
          end
          object RxLabel5: TLabel
            Left = 156
            Top = 16
            Width = 68
            Height = 13
            Caption = 'Total Gravado'
            Transparent = True
          end
          object RxLabel6: TLabel
            Left = 294
            Top = 16
            Width = 69
            Height = 13
            Caption = 'Total Cantidad'
            Transparent = True
          end
          object RxLabel7: TLabel
            Left = 601
            Top = 16
            Width = 64
            Height = 13
            Caption = 'Total General'
            Transparent = True
          end
          object RxLabel8: TLabel
            Left = 689
            Top = 16
            Width = 101
            Height = 13
            Caption = 'Total Neto Facturado'
            Transparent = True
          end
          object JvLabel1: TLabel
            Left = 421
            Top = 16
            Width = 63
            Height = 13
            Caption = 'Total Unitario'
            Transparent = True
          end
          object JvLabel2: TLabel
            Left = 832
            Top = 37
            Width = 83
            Height = 13
            Caption = 'Total x Contenido'
            Transparent = True
          end
          object JvLabel3: TLabel
            Left = 308
            Top = 60
            Width = 98
            Height = 13
            Caption = 'Totales Con IVA >>>'
            Transparent = True
          end
          object JvLabel5: TLabel
            Left = 946
            Top = 37
            Width = 96
            Height = 13
            Hint = 
              'Se tiene en cuenta el precio de venta Final (IVA INCLUIDO)'#13#10'meno' +
              's el costo del art.  o el '#250'ltimo precio de compra al momento de ' +
              'la venta'
            Caption = 'Ganancia Calculada'
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object eGananciaTotal: TDBEdit
            Left = 923
            Top = 56
            Width = 121
            Height = 21
            Hint = 
              'Se tiene en cuenta el precio de venta Final (IVA INCLUIDO)'#13#10'meno' +
              's el costo del art.  o el '#250'ltimo precio de compra al momento de ' +
              'la venta'
            BiDiMode = bdRightToLeft
            DataField = 'GananciaTotal'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
          end
          object rgCostoGanancia: TRadioGroup
            Left = 1050
            Top = 14
            Width = 119
            Height = 68
            Hint = 
              'Se tiene en cuenta el precio de venta Final (IVA INCLUIDO)'#13#10'meno' +
              's el costo del art.  o el '#250'ltimo precio de compra al momento de ' +
              'la venta'
            Caption = 'Calcular Ganancia por'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemIndex = 1
            Items.Strings = (
              'Costo Articulo'
              #218'ltima Compra')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = rgCostoGananciaClick
          end
          object eTotalGravado: TDBEdit
            Left = 157
            Top = 33
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ImpTotalGravado'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 2
          end
          object eTotalCantidad: TDBEdit
            Left = 294
            Top = 31
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'CantidadTotal'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 3
          end
          object eTotalUnitario: TDBEdit
            Left = 421
            Top = 31
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ImpUnitarioTotal'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 4
          end
          object eTotalGeneral: TDBEdit
            Left = 546
            Top = 31
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ImpTotal'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 5
          end
          object eTotalNeto: TDBEdit
            Left = 671
            Top = 31
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ImpTotalNeto'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 6
          end
          object eTotalContenido: TDBEdit
            Left = 798
            Top = 56
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ContenidoTotal'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 7
          end
          object eTotalExento: TDBEdit
            Left = 6
            Top = 33
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ImpTotalExento'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 8
          end
          object eTotalUnitarioFinal: TDBEdit
            Left = 421
            Top = 56
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ImpUnitarioFinal'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 9
          end
          object eTotalFinal: TDBEdit
            Left = 546
            Top = 56
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ImpTotalFInal'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 10
          end
          object eTotalNetoFinal: TDBEdit
            Left = 671
            Top = 56
            Width = 121
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ImpNetoFinal'
            DataSource = DSMovimientos
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 11
          end
        end
        object pnCabeceraGral: TPanel
          Left = 0
          Top = 0
          Width = 1571
          Height = 137
          Align = alTop
          TabOrder = 2
          object Label1: TLabel
            Left = 519
            Top = 8
            Width = 30
            Height = 13
            Caption = 'Marca'
          end
          object Label2: TLabel
            Left = 183
            Top = 49
            Width = 34
            Height = 13
            Caption = 'Rubros'
          end
          object Label3: TLabel
            Left = 479
            Top = 49
            Width = 51
            Height = 13
            Caption = 'Sub Rubro'
          end
          object Label4: TLabel
            Left = 186
            Top = 8
            Width = 41
            Height = 13
            Caption = 'Sucursal'
          end
          object lb1: TLabel
            Left = 783
            Top = 48
            Width = 57
            Height = 13
            Caption = 'Vendedores'
          end
          object Label5: TLabel
            Left = 708
            Top = 8
            Width = 88
            Height = 13
            Caption = 'Filtra Comprobante'
          end
          object Label6: TLabel
            Left = 11
            Top = 86
            Width = 35
            Height = 13
            Caption = 'Articulo'
          end
          object Label13: TLabel
            Left = 353
            Top = 8
            Width = 30
            Height = 13
            Caption = 'Zonas'
          end
          object Label18: TLabel
            Left = 544
            Top = 87
            Width = 32
            Height = 13
            Caption = 'Cliente'
          end
          object RxLabel1: TLabel
            Left = 804
            Top = 8
            Width = 31
            Height = 13
            Caption = 'Desde'
            Transparent = True
          end
          object RxLabel2: TLabel
            Left = 907
            Top = 8
            Width = 28
            Height = 13
            Caption = 'Hasta'
            Transparent = True
          end
          object UpDown1: TUpDown
            Left = 1001
            Top = 23
            Width = 19
            Height = 20
            Hint = 'Cambia el Per'#237'odo'
            Max = 10000
            ParentShowHint = False
            Position = 100
            ShowHint = True
            TabOrder = 0
            OnClick = UpDown1Click
          end
          object rgItems: TRadioGroup
            Left = 8
            Top = 8
            Width = 169
            Height = 73
            Caption = 'Items a Visualizar'
            ItemIndex = 0
            Items.Strings = (
              'Todos los Articulos'
              'los Afectados por el Iva'
              'los No Afectados por el Iva')
            ParentBackground = False
            TabOrder = 1
            OnClick = BuscarExecute
          end
          object edDetalle: TEdit
            Left = 92
            Top = 101
            Width = 312
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 2
          end
          object chbTodosLosArticulos: TCheckBox
            Left = 410
            Top = 103
            Width = 117
            Height = 17
            Caption = 'Todos los Articulos'
            Checked = True
            State = cbChecked
            TabOrder = 3
            OnClick = chbTodosLosArticulosClick
          end
          object cbbTipo: TComboBox
            Left = 711
            Top = 23
            Width = 49
            Height = 21
            TabOrder = 4
            Text = '**'
            OnChange = BuscarExecute
            Items.Strings = (
              '**'
              'FC'
              'NC'
              'ND'
              'FO'
              'TK')
          end
          object cbSucursal: TJvDBLookupCombo
            Left = 182
            Top = 23
            Width = 161
            Height = 21
            DisplayEmpty = 'Todas las Sucursales'
            EmptyValue = '-1'
            EmptyItemColor = clWhite
            LookupField = 'CODIGO'
            LookupDisplay = 'DETALLE'
            LookupSource = DSSucursal
            TabOrder = 5
          end
          object cbRubro: TJvDBLookupCombo
            Left = 183
            Top = 64
            Width = 290
            Height = 21
            DisplayEmpty = 'Todos Los Rubros'
            EmptyValue = '***'
            LookupField = 'CODIGO_RUBRO'
            LookupDisplay = 'DETALLE_RUBRO'
            LookupSource = DSRubros
            TabOrder = 6
          end
          object cbMarca: TJvDBLookupCombo
            Left = 518
            Top = 23
            Width = 176
            Height = 21
            DisplayEmpty = 'Todas las Marcas'
            EmptyValue = '****'
            LookupField = 'MARCA_STK'
            LookupDisplay = 'DESCRIPCION_MARCA'
            LookupSource = DSMarca
            TabOrder = 7
          end
          object cbSubRubro: TJvDBLookupCombo
            Left = 479
            Top = 65
            Width = 297
            Height = 21
            DisplayEmpty = 'Todos los Subrubros'
            EmptyValue = '*****'
            LookupField = 'CODIGO_SUBRUBRO'
            LookupDisplay = 'DETALLE_SUBRUBRO'
            LookupSource = DSSubRubro
            TabOrder = 8
            OnEnter = cbSubRubroEnter
          end
          object cbVendedores: TJvDBLookupCombo
            Left = 782
            Top = 64
            Width = 238
            Height = 21
            DisplayEmpty = 'Todos Los Vendedores'
            EmptyValue = '******'
            LookupField = 'CODIGO'
            LookupDisplay = 'NOMBRE'
            LookupSource = DSVendedores
            TabOrder = 9
          end
          object Desde: TJvDateEdit
            Left = 804
            Top = 23
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
            TabOrder = 10
          end
          object Hasta: TJvDateEdit
            Left = 906
            Top = 23
            Width = 93
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
            TabOrder = 11
          end
          object ceCodigo: TJvComboEdit
            Left = 11
            Top = 101
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
            TabOrder = 12
            Text = ''
            OnButtonClick = BuscarArticuloExecute
          end
          object chbporDia: TCheckBox
            Left = 977
            Top = 3
            Width = 112
            Height = 17
            Caption = 'Sincro. Dia x Dia'
            TabOrder = 13
          end
          object Button1: TButton
            Left = 964
            Top = 88
            Width = 125
            Height = 16
            Caption = 'Filtrar comprobantes'
            TabOrder = 14
            OnClick = Button1Click
          end
          object dbcZonas: TJvDBLookupCombo
            Left = 349
            Top = 23
            Width = 161
            Height = 21
            DisplayEmpty = 'Todas las Zonas'
            EmptyValue = '-1'
            EmptyItemColor = clWhite
            LookupField = 'ID_ZONA'
            LookupDisplay = 'DETALLE'
            LookupSource = DSZonas
            TabOrder = 15
          end
          object ceCliente_1: TJvComboEdit
            Left = 545
            Top = 102
            Width = 73
            Height = 21
            AlwaysEnableButton = True
            ButtonWidth = 16
            ClickKey = 16397
            Enabled = False
            Glyph.Data = {
              4E000000424D4E000000000000003E000000280000000A000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FFC000003300000033000000FFC00000}
            MaxLength = 6
            TabOrder = 16
            Text = ''
            OnButtonClick = ceCliente_1ButtonClick
            OnKeyPress = ceCliente_1KeyPress
          end
          object edNombreCliente_1: TEdit
            Left = 624
            Top = 101
            Width = 257
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 17
          end
          object chbTodoLosClientes: TCheckBox
            Left = 887
            Top = 105
            Width = 117
            Height = 17
            Caption = 'Todos los Clientes'
            Checked = True
            State = cbChecked
            TabOrder = 18
            OnClick = chbTodoLosClientesClick
          end
          object chBuscarCambiar: TCheckBox
            Left = 1026
            Top = 20
            Width = 74
            Height = 32
            Caption = 'Busca Al Cambiar'
            TabOrder = 19
            WordWrap = True
          end
        end
      end
      object tsAgrupado: TTabSheet
        Caption = 'Agrupado'
        ImageIndex = 1
        object Label9: TLabel
          Left = 512
          Top = 16
          Width = 29
          Height = 13
          Caption = 'Rubro'
        end
        object Label11: TLabel
          Left = 1008
          Top = 16
          Width = 43
          Height = 13
          Caption = 'M.de Vta'
        end
        object Label21: TLabel
          Left = 544
          Top = 64
          Width = 45
          Height = 13
          Caption = 'Categoria'
        end
        object Label22: TLabel
          Left = 696
          Top = 64
          Width = 66
          Height = 13
          Caption = 'Cod.Alterntivo'
        end
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1571
          Height = 609
          Align = alClient
          DataSource = DSMovimientos_2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = ''
          OptionsPrefilter.MRUItemsListDropDownCount = 300
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnGrandTotalText = 'Totales'
          OptionsView.ColumnGrandTotalWidth = 95
          OptionsView.GrandTotalsForSingleValues = True
          OptionsView.RowGrandTotalText = 'Totales'
          OptionsView.ShowHeaderFilterButtons = pgsfbWhenSelected
          OptionsView.TotalsForSingleValues = True
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'ANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'Mes'
            DataBinding.FieldName = 'MUESTRAMES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CODIGOARTICULO'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Codigo Art.'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_STK'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Detalle'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'CANTIDAD'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Cant.'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'IVA_UNITARIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Iva Unit,'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            AreaIndex = 32
            DataBinding.FieldName = 'IVA_TOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Iva Total'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'UNITARIO_TOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Unit.Total'
          end
          object cxDBPivotGrid1Field9: TcxDBPivotGridField
            AreaIndex = 31
            DataBinding.FieldName = 'TOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Total'
          end
          object cxDBPivotGrid1Field10: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'UNITARIO_FINAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Unit.Final'
          end
          object cxDBPivotGrid1Field11: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'TOTAL_FINAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            Visible = True
            UniqueName = 'Total Fin.'
          end
          object cxDBPivotGrid1Field12: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'RUBRODETALLE'
            Visible = True
            Width = 250
            UniqueName = 'Rubro'
          end
          object cxDBPivotGrid1Field13: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'SUBRUBRODETALL'
            Visible = True
            Width = 300
            UniqueName = 'Sub Rub.'
          end
          object cxDBPivotGrid1Field14: TcxDBPivotGridField
            AreaIndex = 7
            IsCaptionAssigned = True
            Caption = 'Vendedor'
            DataBinding.FieldName = 'VENDEDOR'
            Visible = True
            UniqueName = 'Vendedor'
          end
          object cxDBPivotGrid1Field15: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'SUCURSAL'
            Visible = True
            UniqueName = 'Sucursal'
          end
          object cxDBPivotGrid1Field16: TcxDBPivotGridField
            AreaIndex = 9
            IsCaptionAssigned = True
            Caption = 'Zona'
            DataBinding.FieldName = 'ZONADETALLE'
            Visible = True
            UniqueName = 'Zona'
          end
          object cxDBPivotGrid1Field17: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'NOMBRE_CLI'
            GroupIntervalRange = 20
            TotalsVisibility = tvNone
            Visible = True
            Width = 200
            UniqueName = 'Nombre Cliente'
          end
          object cxDBPivotGrid1Field18: TcxDBPivotGridField
            AreaIndex = 11
            IsCaptionAssigned = True
            Caption = 'Vdor.del Cliente'
            DataBinding.FieldName = 'VENDEDOR_CLI'
            Visible = True
            UniqueName = 'Vdor.del Cliente'
          end
          object cxDBPivotGrid1Field19: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'TIPO_VTA'
            SummaryType = stCustom
            Visible = True
            UniqueName = 'Tipo Vta'
          end
          object cxDBPivotGrid1Field20: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'LETRA'
            Visible = True
            UniqueName = 'Letra'
          end
          object cxDBPivotGrid1Field21: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'IVATASA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            SummaryType = stCustom
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Tasa de Iva'
          end
          object cxDBPivotGrid1Field22: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'MARCADETALLE'
            Visible = True
            UniqueName = 'Marca'
          end
          object cxDBPivotGrid1Field23: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'DIRECCION'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Direccion'
          end
          object cxDBPivotGrid1Field24: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'TIPO'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Tipo'
          end
          object cxDBPivotGrid1Field25: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'CLASE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Clase'
          end
          object cxDBPivotGrid1Field26: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'NROCPBTE'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid1Field27: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'UNID_VTA'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Uni.Vta'
          end
          object cxDBPivotGrid1Field28: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'FECHA'
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGrid1Field29: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'PRESEN_CANTIDAD'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Pres.Cant'
          end
          object cxDBPivotGrid1Field30: TcxDBPivotGridField
            AreaIndex = 23
            DataBinding.FieldName = 'PRESEN_UNIDAD'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Pres.Uni'
          end
          object cxDBPivotGrid1Field31: TcxDBPivotGridField
            AreaIndex = 24
            DataBinding.FieldName = 'MUESTRASEMANA'
            Visible = True
            UniqueName = 'Semana'
          end
          object cxDBPivotGrid1Field32: TcxDBPivotGridField
            AreaIndex = 25
            DataBinding.FieldName = 'COBRADOR'
            Visible = True
            UniqueName = 'Cobrador'
          end
          object cxDBPivotGrid1Field33: TcxDBPivotGridField
            AreaIndex = 26
            DataBinding.FieldName = 'COBRADOR_NOMBRE'
            Visible = True
            UniqueName = 'Cobrador Nombre'
          end
          object cxDBPivotGrid1Field34: TcxDBPivotGridField
            AreaIndex = 27
            DataBinding.FieldName = 'UNITARIO_EXENTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Unit.Exen'
          end
          object cxDBPivotGrid1Field35: TcxDBPivotGridField
            AreaIndex = 28
            DataBinding.FieldName = 'UNITARIO_GRAVADO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Unit.Grav'
          end
          object cxDBPivotGrid1Field36: TcxDBPivotGridField
            AreaIndex = 29
            DataBinding.FieldName = 'TOTAL_EXENTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'T.Exento'
          end
          object cxDBPivotGrid1Field37: TcxDBPivotGridField
            AreaIndex = 30
            DataBinding.FieldName = 'TOTAL_GRAVADO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.00'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'T.Grava.'
          end
          object cxDBPivotGrid1Field38: TcxDBPivotGridField
            AreaIndex = 33
            DataBinding.FieldName = 'MARCADETALLE'
            Visible = True
            UniqueName = 'Marca'
          end
          object cxDBPivotGrid1Field39: TcxDBPivotGridField
            AreaIndex = 34
            DataBinding.FieldName = 'OBSERVACIONES'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Observaciones'
          end
          object cxDBPivotGrid1Field40: TcxDBPivotGridField
            AreaIndex = 35
            DataBinding.FieldName = 'INSCRIPCION_IVA'
            Visible = True
            UniqueName = 'Cond.de IVA'
          end
          object cxDBPivotGrid1Field41: TcxDBPivotGridField
            AreaIndex = 36
            DataBinding.FieldName = 'MUESTRA_FECHACORTA'
            Visible = True
            UniqueName = 'Dia'
          end
          object cxDBPivotGrid1Field42: TcxDBPivotGridField
            AreaIndex = 37
            DataBinding.FieldName = 'CATEGORIA'
            Visible = True
            UniqueName = 'Categoria'
          end
          object cxDBPivotGrid1Field43: TcxDBPivotGridField
            AreaIndex = 38
            DataBinding.FieldName = 'TASA_MANUFACTURA'
            Visible = True
            UniqueName = 'Tasa Manuf.'
          end
          object cxDBPivotGrid1Field44: TcxDBPivotGridField
            AreaIndex = 39
            DataBinding.FieldName = 'CODIGO_ALTERNATIVO'
            ImageAlign = taRightJustify
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Cod.Alterntivo'
          end
          object cxDBPivotGrid1Field45: TcxDBPivotGridField
            AreaIndex = 40
            DataBinding.FieldName = 'COSTO_STOCK'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            ImageAlign = taRightJustify
            GroupExpanded = False
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Costo'
          end
          object cxDBPivotGrid1Field46: TcxDBPivotGridField
            AreaIndex = 42
            DataBinding.FieldName = 'SIGNO_MONEDA'
            ImageAlign = taCenter
            GroupExpanded = False
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Moneda'
          end
          object cxDBPivotGrid1Field47: TcxDBPivotGridField
            AreaIndex = 43
            DataBinding.FieldName = 'COSTO_MONEDA_CURSO'
            ImageAlign = taRightJustify
            GroupExpanded = False
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Cos.Moneda Local'
          end
          object cxDBPivotGrid1Field48: TcxDBPivotGridField
            AreaIndex = 44
            DataBinding.FieldName = 'EXISTENCIA'
            ImageAlign = taRightJustify
            GroupExpanded = False
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Existencia'
          end
          object cxDBPivotGrid1Field49: TcxDBPivotGridField
            AreaIndex = 45
            DataBinding.FieldName = 'CODIGO_ALTERNATIVO'
            Visible = True
            UniqueName = 'Cod.Alterntivo'
          end
          object cxDBPivotGrid1Field50: TcxDBPivotGridField
            AreaIndex = 46
            DataBinding.FieldName = 'PRESENT_UNI_TOTALES'
            Visible = True
            UniqueName = 'Unid.Totales Pres.'
          end
          object cxDBPivotGrid1Field51: TcxDBPivotGridField
            AreaIndex = 47
            DataBinding.FieldName = 'CODIGO_CLI'
            Visible = True
            UniqueName = 'Cod.Cli'
          end
          object cxDBPivotGrid1Field52: TcxDBPivotGridField
            AreaIndex = 48
            DataBinding.FieldName = 'MUESTRA_FECHADIA'
            Visible = True
            UniqueName = 'Dia(Unit.)'
          end
          object cxDBPivotGrid1Field53: TcxDBPivotGridField
            AreaIndex = 41
            IsCaptionAssigned = True
            Caption = 'Costo en Fact.'
            DataBinding.FieldName = 'COSTO_STOCK_FC'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Visible = True
            UniqueName = 'Costo Fact.'
          end
          object cxDBPivotGrid1Field54: TcxDBPivotGridField
            AreaIndex = 49
            DataBinding.FieldName = 'MARGEN_COSTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.000'
            Visible = True
            UniqueName = 'Margen Sobtre Costo'
          end
          object cxDBPivotGrid1Field55: TcxDBPivotGridField
            AreaIndex = 50
            DataBinding.FieldName = 'MARGEN_VTA'
            Visible = True
            UniqueName = 'Margen Sobre Vta'
          end
          object cxDBPivotGrid1Field56: TcxDBPivotGridField
            AreaIndex = 51
            DataBinding.FieldName = 'DESCUENTO'
            Visible = True
            UniqueName = 'Dscto'
          end
          object cxDBPivotGrid1Field57: TcxDBPivotGridField
            AreaIndex = 52
            DataBinding.FieldName = 'LINEA_DESCTO_IMPORTE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'Linea Dscto $'
          end
          object cxDBPivotGrid1Field58: TcxDBPivotGridField
            AreaIndex = 53
            DataBinding.FieldName = 'LINEA_NETO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'Neto x Linea(Sin Dcto)'
          end
          object cxDBPivotGrid1Field59: TcxDBPivotGridField
            AreaIndex = 54
            DataBinding.FieldName = 'UNITARIO_SINDESCTO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'Uni.Sin Dscto.'
          end
          object cxDBPivotGrid1Field60: TcxDBPivotGridField
            AreaIndex = 55
            DataBinding.FieldName = 'LISTAPRECIO'
            Visible = True
            UniqueName = 'List.Precio'
          end
          object cxDBPivotGrid1Field61: TcxDBPivotGridField
            AreaIndex = 56
            DataBinding.FieldName = 'IVA_STK'
            Visible = True
            UniqueName = 'Iva Stk'
          end
          object cxDBPivotGrid1Field62: TcxDBPivotGridField
            AreaIndex = 57
            DataBinding.FieldName = 'CATEGORIA_CLIENTE'
            Visible = True
            UniqueName = 'Categoria Cliente'
          end
          object cxDBPivotGrid1Field63: TcxDBPivotGridField
            AreaIndex = 58
            DataBinding.FieldName = 'DETALLE_STK_FACT'
            Visible = True
            UniqueName = 'Detalle Stk (Factura)'
          end
        end
        object pnTotales: TJvPanel
          Left = 19
          Top = 212
          Width = 320
          Height = 125
          Color = clTeal
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object Label15: TLabel
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
            Top = 5
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
        object pnPieAgrupado: TPanel
          Left = 0
          Top = 609
          Width = 1571
          Height = 84
          Align = alBottom
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 2
          DesignSize = (
            1571
            84)
          object Label10: TLabel
            Left = 5
            Top = 2
            Width = 41
            Height = 13
            Caption = 'Sucursal'
          end
          object Label12: TLabel
            Left = 1200
            Top = 49
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label12Click
            ExplicitLeft = 744
          end
          object Label14: TLabel
            Left = 602
            Top = 6
            Width = 19
            Height = 13
            Caption = 'A'#241'o'
          end
          object Label16: TLabel
            Left = 1076
            Top = 49
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = 'Muestra Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label16Click
            ExplicitLeft = 597
          end
          object Label17: TLabel
            Left = 697
            Top = 6
            Width = 20
            Height = 13
            Caption = 'Mes'
          end
          object spVistas: TSpeedButton
            Left = 1071
            Top = 21
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
          object Label19: TLabel
            Left = 747
            Top = 6
            Width = 28
            Height = 13
            Caption = 'Vistas'
          end
          object JvLabel4: TLabel
            Left = 202
            Top = 6
            Width = 32
            Height = 13
            Caption = 'Cliente'
            Transparent = True
          end
          object btBuscarAnual: TBitBtn
            Left = 1298
            Top = 51
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            TabOrder = 0
            OnClick = btBuscarAnualClick
          end
          object btDatosCruzados: TBitBtn
            Left = 1374
            Top = 51
            Width = 70
            Height = 22
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
            OnClick = btDatosCruzadosClick
          end
          object btExportarXLS: TBitBtn
            Left = 1450
            Top = 51
            Width = 70
            Height = 22
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
            TabOrder = 2
            OnClick = btExportarXLSClick
          end
          object ceCliente_2: TJvComboEdit
            Left = 201
            Top = 21
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
            TabOrder = 3
            Text = ''
            OnButtonClick = ceCliente_2ButtonClick
            OnKeyPress = ceCliente_2KeyPress
          end
          object edNombreCliente_2: TEdit
            Left = 280
            Top = 21
            Width = 312
            Height = 21
            Color = clInfoBk
            Enabled = False
            TabOrder = 4
          end
          object chTodosLosClientes_2: TCheckBox
            Left = 463
            Top = 3
            Width = 97
            Height = 17
            Caption = 'Todos los Clientes'
            Checked = True
            State = cbChecked
            TabOrder = 5
            OnClick = chTodosLosClientes_2Click
          end
          object dbcSucursal: TJvDBLookupCombo
            Left = 5
            Top = 21
            Width = 182
            Height = 21
            DisplayEmpty = 'Todas las Sucursales'
            EmptyValue = '-1'
            EmptyItemColor = clWhite
            LookupField = 'CODIGO'
            LookupDisplay = 'DETALLE'
            LookupSource = DSSucursal
            TabOrder = 6
          end
          object spAnio: TSpinEdit
            Left = 598
            Top = 21
            Width = 86
            Height = 22
            MaxValue = 9000
            MinValue = 1900
            TabOrder = 7
            Value = 1900
          end
          object spMeses: TSpinEdit
            Left = 690
            Top = 21
            Width = 48
            Height = 22
            Hint = 'Poner Cero para traer todos los meses del a'#241'o...'
            MaxValue = 12
            MinValue = 0
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            Value = 0
          end
          object dbcVistas: TJvDBLookupCombo
            Left = 744
            Top = 21
            Width = 321
            Height = 21
            LookupField = 'ID'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DSVista
            TabOrder = 9
            OnChange = dbcVistasChange
          end
          object rbTipoFecha: TRadioGroup
            Left = 2
            Top = 48
            Width = 185
            Height = 32
            Caption = 'Tomar Fecha de'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Fiscal'
              'Venta')
            TabOrder = 10
          end
        end
      end
      object Pag3: TTabSheet
        Caption = 'Ranking'
        ImageIndex = 2
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1571
          Height = 652
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSABC
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBTableView1CANTIDAD
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBTableView1TOTAL
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBTableView1Column1
                Sorted = True
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1CANTIDAD
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1TOTAL
              end
              item
                Kind = skSum
                Column = cxGrid1DBTableView1Column1
              end>
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.GroupRowStyle = grsOffice11
            object cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
            object cxGrid1DBTableView1Column2: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_ALTERNATIVO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_STK'
              HeaderAlignmentHorz = taCenter
              Width = 316
            end
            object cxGrid1DBTableView1Column3: TcxGridDBColumn
              DataBinding.FieldName = 'MARCADETALLE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1Column4: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRODETALLE'
              HeaderAlignmentHorz = taCenter
              Width = 170
            end
            object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 81
            end
            object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'PORCENTAJE'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object pnPieRanking: TPanel
          Left = 0
          Top = 652
          Width = 1571
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1571
            41)
          object Label20: TLabel
            Left = 987
            Top = 10
            Width = 19
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'A'#241'o'
            ExplicitLeft = 508
          end
          object Label23: TLabel
            Left = 337
            Top = 10
            Width = 41
            Height = 13
            Caption = 'Sucursal'
          end
          object btImpABC: TBitBtn
            Left = 1433
            Top = 7
            Width = 70
            Height = 22
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
            OnClick = btImpABCClick
          end
          object btBuscarABC: TBitBtn
            Left = 1276
            Top = 7
            Width = 70
            Height = 22
            Action = BuscarABC
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            TabOrder = 1
          end
          object spAnioABC: TSpinEdit
            Left = 1012
            Top = 7
            Width = 86
            Height = 22
            Anchors = [akTop, akRight]
            MaxValue = 9000
            MinValue = 1900
            TabOrder = 2
            Value = 1900
            OnChange = spAnioABCChange
            OnClick = spAnioABCClick
          end
          object btExportarABCXls: TBitBtn
            Left = 1352
            Top = 7
            Width = 75
            Height = 22
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
            TabOrder = 3
            OnClick = btExportarABCXlsClick
          end
          object cbMeses: TJvComboBox
            Left = 1104
            Top = 8
            Width = 145
            Height = 21
            Anchors = [akTop, akRight]
            Flat = True
            ParentFlat = False
            TabOrder = 4
            Text = 'Todos Los Meses'
            OnClick = cbMesesClick
            Items.Strings = (
              'Todos Los Meses'
              'Enero'
              'Febrero'
              'Marzo'
              'Abril'
              'Mayo'
              'Junio'
              'Julio'
              'Agosto'
              'Septiembre'
              'Octubre'
              'Noviembre'
              'Diciembre')
            ItemIndex = 0
          end
          object cbSucursalABC: TJvDBLookupCombo
            Left = 388
            Top = 6
            Width = 182
            Height = 21
            DisplayEmpty = 'Todas las Sucursales'
            EmptyValue = '-1'
            EmptyItemColor = clWhite
            LookupField = 'CODIGO'
            LookupDisplay = 'DETALLE'
            LookupSource = DSSucursal
            TabOrder = 5
            OnClick = cbSucursalABCClick
          end
        end
      end
      object tsVtasVendedor: TTabSheet
        Caption = 'Ventas x Vendedor'
        ImageIndex = 3
        object cxDBPivotGridVtaVendor: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1571
          Height = 652
          Align = alClient
          DataSource = DSMovimientos_2
          Groups = <>
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = True
          LookAndFeel.SkinName = ''
          OptionsView.ColumnGrandTotals = False
          OptionsView.ShowHeaderFilterButtons = pgsfbWhenSelected
          PopupMenu = PopupMenu3
          TabOrder = 0
          object cxDBPivotGrid2CODIGOARTICULO: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CODIGOARTICULO'
            Visible = True
            UniqueName = 'Codigo Art.'
          end
          object cxDBPivotGrid2DETALLE_STK: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_STK'
            Visible = True
            Width = 300
            UniqueName = 'Detalle'
          end
          object cxDBPivotGrid2ANIO: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'ANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGrid2MES: TcxDBPivotGridField
            AreaIndex = 25
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid2RUBRO: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'RUBRO'
            Visible = True
            UniqueName = 'Cod.Rub'
          end
          object cxDBPivotGrid2SUBRUBRO: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'SUBRUBRO'
            Visible = True
            UniqueName = 'Cod.Sub'
          end
          object cxDBPivotGrid2RUBRODETALLE: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'RUBRODETALLE'
            Visible = True
            UniqueName = 'Rubro'
          end
          object cxDBPivotGrid2SUBRUBRODETALL: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'SUBRUBRODETALL'
            Visible = True
            UniqueName = 'Sub Rub.'
          end
          object cxDBPivotGrid2VENDEDOR: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'VENDEDOR'
            Visible = True
            Width = 200
            UniqueName = 'Vendero'
          end
          object cxDBPivotGrid2SUCURSAL: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'SUCURSAL'
            Visible = True
            UniqueName = 'Sucursal'
          end
          object cxDBPivotGrid2ZONA: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'ZONA'
            Visible = True
            UniqueName = 'Zona'
          end
          object cxDBPivotGrid2VENDEDOR_CLI: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'VENDEDOR_CLI'
            Visible = True
            UniqueName = 'Vende.Cli'
          end
          object cxDBPivotGrid2CODIGO_CLI: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'CODIGO_CLI'
            Visible = True
            UniqueName = 'Cod.Cli'
          end
          object cxDBPivotGrid2NOMBRE_CLI: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'NOMBRE_CLI'
            Visible = True
            UniqueName = 'Nombre Cliente'
          end
          object cxDBPivotGrid2TIPO_VTA: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'TIPO_VTA'
            Visible = True
            UniqueName = 'Tipo Vta'
          end
          object cxDBPivotGrid2LETRA: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'LETRA'
            Visible = True
            UniqueName = 'Letra'
          end
          object cxDBPivotGrid2MARCADETALLE: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'MARCADETALLE'
            Visible = True
            UniqueName = 'Marca'
          end
          object cxDBPivotGrid2DIRECCION: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'DIRECCION'
            Visible = True
            UniqueName = 'Direccion'
          end
          object cxDBPivotGrid2ZONADETALLE: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'ZONADETALLE'
            Visible = True
            UniqueName = 'Zona Detalle'
          end
          object cxDBPivotGrid2TIPO: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'TIPO'
            Visible = True
            UniqueName = 'Tipo'
          end
          object cxDBPivotGrid2CLASE: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'CLASE'
            Visible = True
            UniqueName = 'Clase'
          end
          object cxDBPivotGrid2NROCPBTE: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'NROCPBTE'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid2UNID_VTA: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'UNID_VTA'
            Visible = True
            UniqueName = 'Unid.Vta'
          end
          object cxDBPivotGrid2FECHA: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'FECHA'
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGrid2PRESEN_UNIDAD: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'PRESEN_UNIDAD'
            Visible = True
            UniqueName = 'Pres.Unidad'
          end
          object cxDBPivotGrid2COBRADOR: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'COBRADOR'
            Visible = True
            UniqueName = 'Cobrador'
          end
          object cxDBPivotGrid2COBRADOR_NOMBRE: TcxDBPivotGridField
            AreaIndex = 23
            DataBinding.FieldName = 'COBRADOR_NOMBRE'
            Visible = True
            UniqueName = 'Cobrador Nombre'
          end
          object cxDBPivotGrid2MUESTRAMES: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MUESTRAMES'
            Visible = True
            UniqueName = 'Mes Nombre'
          end
          object cxDBPivotGrid2MUESTRASEMANA: TcxDBPivotGridField
            AreaIndex = 24
            DataBinding.FieldName = 'MUESTRASEMANA'
            Visible = True
            UniqueName = 'Semana'
          end
          object cxDBPivotGrid2OBSERVACIONES: TcxDBPivotGridField
            AreaIndex = 26
            DataBinding.FieldName = 'OBSERVACIONES'
            Visible = True
            UniqueName = 'Observaciones'
          end
          object cxDBPivotGrid2INSCRIPCION_IVA: TcxDBPivotGridField
            AreaIndex = 27
            DataBinding.FieldName = 'INSCRIPCION_IVA'
            Visible = True
            UniqueName = 'Cond.de IVA'
          end
          object cxDBPivotGrid2MUESTRA_FECHACORTA: TcxDBPivotGridField
            AreaIndex = 28
            DataBinding.FieldName = 'MUESTRA_FECHACORTA'
            Visible = True
            UniqueName = 'Dia'
          end
          object cxDBPivotGrid2CATEGORIA: TcxDBPivotGridField
            AreaIndex = 29
            DataBinding.FieldName = 'CATEGORIA'
            Visible = True
            UniqueName = 'Categoria'
          end
          object cxDBPivotGrid2CODIGO_ALTERNATIVO: TcxDBPivotGridField
            AreaIndex = 30
            DataBinding.FieldName = 'CODIGO_ALTERNATIVO'
            Visible = True
            UniqueName = 'Cod.Alterntivo'
          end
          object cxDBPivotGrid2UNITARIO_GRAVADO: TcxDBPivotGridField
            AreaIndex = 31
            DataBinding.FieldName = 'UNITARIO_GRAVADO'
            Visible = True
            UniqueName = '$ Unit.Grav'
          end
          object cxDBPivotGrid2PRESEN_CANTIDAD: TcxDBPivotGridField
            AreaIndex = 32
            DataBinding.FieldName = 'PRESEN_CANTIDAD'
            Visible = True
            UniqueName = 'Pres.Cantid.'
          end
          object cxDBPivotGrid2UNITARIO_EXENTO: TcxDBPivotGridField
            AreaIndex = 33
            DataBinding.FieldName = 'UNITARIO_EXENTO'
            Visible = True
            UniqueName = '$ Unit.Exen'
          end
          object cxDBPivotGrid2UNITARIO_TOTAL: TcxDBPivotGridField
            AreaIndex = 42
            DataBinding.FieldName = 'UNITARIO_TOTAL'
            Visible = True
            UniqueName = '$ Unit.Total'
          end
          object cxDBPivotGrid2IVA_UNITARIO: TcxDBPivotGridField
            AreaIndex = 34
            DataBinding.FieldName = 'IVA_UNITARIO'
            Visible = True
            UniqueName = 'Iva Unit.'
          end
          object cxDBPivotGrid2UNITARIO_FINAL: TcxDBPivotGridField
            AreaIndex = 35
            DataBinding.FieldName = 'UNITARIO_FINAL'
            Visible = True
            UniqueName = '$ Unit.Final'
          end
          object cxDBPivotGrid2TOTAL_GRAVADO: TcxDBPivotGridField
            AreaIndex = 36
            DataBinding.FieldName = 'TOTAL_GRAVADO'
            Visible = True
            UniqueName = 'T.Grava.'
          end
          object cxDBPivotGrid2TOTAL_EXENTO: TcxDBPivotGridField
            AreaIndex = 37
            DataBinding.FieldName = 'TOTAL_EXENTO'
            Visible = True
            UniqueName = 'T.Exento'
          end
          object cxDBPivotGrid2TOTAL: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            DataBinding.FieldName = 'TOTAL'
            DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            UniqueName = 'Total Neto'
          end
          object cxDBPivotGrid2IVA_TOTAL: TcxDBPivotGridField
            AreaIndex = 38
            DataBinding.FieldName = 'IVA_TOTAL'
            Visible = True
            UniqueName = 'Iva Total'
          end
          object cxDBPivotGrid2TOTAL_FINAL: TcxDBPivotGridField
            Area = faData
            AreaIndex = 2
            DataBinding.FieldName = 'TOTAL_FINAL'
            DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            UniqueName = 'Total Fin.'
          end
          object cxDBPivotGrid2IVATASA: TcxDBPivotGridField
            AreaIndex = 39
            DataBinding.FieldName = 'IVATASA'
            Visible = True
            UniqueName = 'Tasa de Iva'
          end
          object cxDBPivotGrid2COSTO_STOCK: TcxDBPivotGridField
            AreaIndex = 40
            DataBinding.FieldName = 'COSTO_STOCK'
            Visible = True
            UniqueName = 'Costo'
          end
          object cxDBPivotGrid2PRESENT_UNI_TOTALES: TcxDBPivotGridField
            AreaIndex = 41
            DataBinding.FieldName = 'PRESENT_UNI_TOTALES'
            Visible = True
            UniqueName = 'Unid.Totales Pres.'
          end
          object cxDBPivotGrid2CANTIDAD: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'CANTIDAD'
            DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            UniqueName = 'Cant.'
          end
          object cxDBPivotGrid2MUESTRA_FECHADIA: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 1
            DataBinding.FieldName = 'MUESTRA_FECHADIA'
            Visible = True
            UniqueName = 'Dia (Unit.)'
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 652
          Width = 1571
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1571
            41)
          object BitBtn1: TBitBtn
            Left = 1474
            Top = 6
            Width = 70
            Height = 22
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
            OnClick = btExportarXLSClick
          end
          object BitBtn2: TBitBtn
            Left = 1398
            Top = 6
            Width = 70
            Height = 22
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
            OnClick = btDatosCruzadosClick
          end
          object BitBtn3: TBitBtn
            Left = 1320
            Top = 6
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            TabOrder = 2
            OnClick = btBuscarAnualClick
          end
        end
      end
      object pagComparativa: TTabSheet
        Caption = 'Graficos Comparativos'
        ImageIndex = 4
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 1571
          Height = 693
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Splitter3: TSplitter
            Left = 834
            Top = 0
            Width = 5
            Height = 693
            Color = clBlue
            ParentColor = False
          end
          object pnIzq: TPanel
            Left = 0
            Top = 0
            Width = 834
            Height = 693
            Align = alLeft
            Caption = 'pnIzq'
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 0
            object Splitter1: TSplitter
              Left = 4
              Top = 296
              Width = 826
              Height = 5
              Cursor = crVSplit
              Align = alTop
            end
            object pnVentas: TPanel
              Left = 4
              Top = 4
              Width = 826
              Height = 292
              Align = alTop
              Color = clMenuHighlight
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              ParentBackground = False
              TabOrder = 0
              object chartVentas: TTMSFNCChart
                Left = 4
                Top = 4
                Width = 818
                Height = 284
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
                Legend.Visible = False
                Legend.Font.Charset = DEFAULT_CHARSET
                Legend.Font.Color = clWindowText
                Legend.Font.Height = -11
                Legend.Font.Name = 'Segoe UI'
                Legend.Font.Style = []
                Legend.Left = 10.000000000000000000
                Legend.Top = 10.000000000000000000
                Stroke.Kind = gskNone
                SeriesMargins.Left = 0
                SeriesMargins.Top = 0
                SeriesMargins.Right = 0
                SeriesMargins.Bottom = 0
                Series = <>
                Title.Stroke.Kind = gskSolid
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Title.Height = 35.000000000000000000
                Title.TextMargins.Left = 3
                Title.TextMargins.Top = 3
                Title.TextMargins.Right = 3
                Title.TextMargins.Bottom = 3
                Title.Text = 'TMS FNC Chart'
                XAxis.Stroke.Kind = gskSolid
                XAxis.AutoSize = False
                XAxis.Height = 35.000000000000000000
                XAxis.Positions = [xpTop, xpBottom]
                YAxis.Stroke.Kind = gskSolid
                YAxis.AutoSize = False
                YAxis.Width = 35.000000000000000000
                Adapter = TMSFNCChartDatabaseAdapter1
                DefaultLoadOptions.XValuesFormatString = '%.0f'
                DefaultLoadOptions.YValuesFormatString = '%.2f'
                DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
                Align = alClient
                TabOrder = 0
                object TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter
                  Left = 768
                  Top = 112
                  Width = 26
                  Height = 26
                  Visible = True
                  AutoCreateSeries = False
                  Source.DataSource = DSVentasArt
                  Source.Series = <
                    item
                      YValue = 'CANTIDAD'
                      XValue = 'ANIOMES'
                      XLabel = 'ANIOMES'
                    end>
                end
              end
            end
            object pnCompras: TPanel
              Left = 4
              Top = 301
              Width = 826
              Height = 388
              Align = alClient
              Color = clMenuHighlight
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              ParentBackground = False
              TabOrder = 1
              object chartCompras: TTMSFNCChart
                Left = 4
                Top = 4
                Width = 818
                Height = 380
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
                Legend.Visible = False
                Legend.Font.Charset = DEFAULT_CHARSET
                Legend.Font.Color = clWindowText
                Legend.Font.Height = -11
                Legend.Font.Name = 'Segoe UI'
                Legend.Font.Style = []
                Legend.Left = 10.000000000000000000
                Legend.Top = 10.000000000000000000
                SeriesMargins.Left = 0
                SeriesMargins.Top = 0
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
                    Labels.Font.Charset = DEFAULT_CHARSET
                    Labels.Font.Color = clWindowText
                    Labels.Font.Height = -11
                    Labels.Font.Name = 'Segoe UI'
                    Labels.Font.Style = []
                    Labels.Format = '%.2f'
                    Labels.OffsetY = -10.000000000000000000
                    Markers.Fill.Color = 16105559
                    Markers.Height = 10.000000000000000000
                    Markers.Stroke.Color = 8020012
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
                        YValue = 79.000000000000000000
                        YValueSecond = 64.000000000000000000
                        YValueVariable = 79.000000000000000000
                        YValueLow = 30.000000000000000000
                        YValueClose = 50.000000000000000000
                        YValueHigh = 79.000000000000000000
                        YValueOpen = 43.000000000000000000
                        YValueMedian = 74.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 1.000000000000000000
                        YValue = 87.000000000000000000
                        YValueSecond = 71.000000000000000000
                        YValueVariable = 87.000000000000000000
                        YValueLow = 30.000000000000000000
                        YValueClose = 77.000000000000000000
                        YValueHigh = 87.000000000000000000
                        YValueOpen = 54.000000000000000000
                        YValueMedian = 88.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 2.000000000000000000
                        YValue = 46.000000000000000000
                        YValueSecond = 32.000000000000000000
                        YValueVariable = 46.000000000000000000
                        YValueLow = 18.000000000000000000
                        YValueClose = 40.000000000000000000
                        YValueHigh = 46.000000000000000000
                        YValueOpen = 36.000000000000000000
                        YValueMedian = 46.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 3.000000000000000000
                        YValue = 105.000000000000000000
                        YValueSecond = 95.000000000000000000
                        YValueVariable = 105.000000000000000000
                        YValueLow = 57.000000000000000000
                        YValueClose = 71.000000000000000000
                        YValueHigh = 105.000000000000000000
                        YValueOpen = 75.000000000000000000
                        YValueMedian = 105.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 4.000000000000000000
                        YValue = 33.000000000000000000
                        YValueSecond = 18.000000000000000000
                        YValueVariable = 33.000000000000000000
                        YValueLow = 5.000000000000000000
                        YValueClose = 11.000000000000000000
                        YValueHigh = 33.000000000000000000
                        YValueOpen = 20.000000000000000000
                        YValueMedian = 36.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 5.000000000000000000
                        YValue = 54.000000000000000000
                        YValueSecond = 40.000000000000000000
                        YValueVariable = 54.000000000000000000
                        YValueLow = 22.000000000000000000
                        YValueClose = 37.000000000000000000
                        YValueHigh = 54.000000000000000000
                        YValueOpen = 34.000000000000000000
                        YValueMedian = 57.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 6.000000000000000000
                        YValue = 122.000000000000000000
                        YValueSecond = 112.000000000000000000
                        YValueVariable = 122.000000000000000000
                        YValueLow = 71.000000000000000000
                        YValueClose = 75.000000000000000000
                        YValueHigh = 122.000000000000000000
                        YValueOpen = 90.000000000000000000
                        YValueMedian = 122.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 7.000000000000000000
                        YValue = 113.000000000000000000
                        YValueSecond = 95.000000000000000000
                        YValueVariable = 113.000000000000000000
                        YValueLow = 64.000000000000000000
                        YValueClose = 71.000000000000000000
                        YValueHigh = 113.000000000000000000
                        YValueOpen = 98.000000000000000000
                        YValueMedian = 108.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 8.000000000000000000
                        YValue = 28.000000000000000000
                        YValueSecond = 12.000000000000000000
                        YValueVariable = 28.000000000000000000
                        YValueLow = 6.000000000000000000
                        YValueClose = 19.000000000000000000
                        YValueHigh = 28.000000000000000000
                        YValueOpen = 19.000000000000000000
                        YValueMedian = 31.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 9.000000000000000000
                        YValue = 63.000000000000000000
                        YValueSecond = 52.000000000000000000
                        YValueVariable = 63.000000000000000000
                        YValueLow = 22.000000000000000000
                        YValueClose = 62.000000000000000000
                        YValueHigh = 63.000000000000000000
                        YValueOpen = 42.000000000000000000
                        YValueMedian = 67.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 10.000000000000000000
                        YValue = 39.000000000000000000
                        YValueSecond = 25.000000000000000000
                        YValueVariable = 39.000000000000000000
                        YValueLow = 16.000000000000000000
                        YValueClose = 36.000000000000000000
                        YValueHigh = 39.000000000000000000
                        YValueOpen = 32.000000000000000000
                        YValueMedian = 36.000000000000000000
                      end>
                    Legend.Font.Charset = DEFAULT_CHARSET
                    Legend.Font.Color = clWindowText
                    Legend.Font.Height = -11
                    Legend.Font.Name = 'Segoe UI'
                    Legend.Font.Style = []
                    Legend.Left = -10.000000000000000000
                    Stroke.Color = 16105559
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
                    Labels.Font.Charset = DEFAULT_CHARSET
                    Labels.Font.Color = clWindowText
                    Labels.Font.Height = -11
                    Labels.Font.Name = 'Segoe UI'
                    Labels.Font.Style = []
                    Labels.Format = '%.2f'
                    Labels.OffsetY = -10.000000000000000000
                    Markers.Fill.Color = 5644279
                    Markers.Height = 10.000000000000000000
                    Markers.Stroke.Color = 2822268
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
                        YValue = 53.000000000000000000
                        YValueSecond = 36.000000000000000000
                        YValueVariable = 53.000000000000000000
                        YValueLow = 22.000000000000000000
                        YValueClose = 40.000000000000000000
                        YValueHigh = 53.000000000000000000
                        YValueOpen = 50.000000000000000000
                        YValueMedian = 55.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 1.000000000000000000
                        YValue = 99.000000000000000000
                        YValueSecond = 85.000000000000000000
                        YValueVariable = 99.000000000000000000
                        YValueLow = 57.000000000000000000
                        YValueClose = 84.000000000000000000
                        YValueHigh = 99.000000000000000000
                        YValueOpen = 71.000000000000000000
                        YValueMedian = 94.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 2.000000000000000000
                        YValue = 86.000000000000000000
                        YValueSecond = 67.000000000000000000
                        YValueVariable = 86.000000000000000000
                        YValueLow = 50.000000000000000000
                        YValueClose = 69.000000000000000000
                        YValueHigh = 86.000000000000000000
                        YValueOpen = 68.000000000000000000
                        YValueMedian = 88.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 3.000000000000000000
                        YValue = 98.000000000000000000
                        YValueSecond = 81.000000000000000000
                        YValueVariable = 98.000000000000000000
                        YValueLow = 37.000000000000000000
                        YValueClose = 68.000000000000000000
                        YValueHigh = 98.000000000000000000
                        YValueOpen = 60.000000000000000000
                        YValueMedian = 97.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 4.000000000000000000
                        YValue = 30.000000000000000000
                        YValueSecond = 20.000000000000000000
                        YValueVariable = 30.000000000000000000
                        YValueLow = 5.000000000000000000
                        YValueClose = 6.000000000000000000
                        YValueHigh = 30.000000000000000000
                        YValueOpen = 12.000000000000000000
                        YValueMedian = 33.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 5.000000000000000000
                        YValue = 67.000000000000000000
                        YValueSecond = 49.000000000000000000
                        YValueVariable = 67.000000000000000000
                        YValueLow = 24.000000000000000000
                        YValueClose = 48.000000000000000000
                        YValueHigh = 67.000000000000000000
                        YValueOpen = 61.000000000000000000
                        YValueMedian = 65.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 6.000000000000000000
                        YValue = 125.000000000000000000
                        YValueSecond = 106.000000000000000000
                        YValueVariable = 125.000000000000000000
                        YValueLow = 51.000000000000000000
                        YValueClose = 73.000000000000000000
                        YValueHigh = 125.000000000000000000
                        YValueOpen = 74.000000000000000000
                        YValueMedian = 124.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 7.000000000000000000
                        YValue = 113.000000000000000000
                        YValueSecond = 96.000000000000000000
                        YValueVariable = 113.000000000000000000
                        YValueLow = 61.000000000000000000
                        YValueClose = 97.000000000000000000
                        YValueHigh = 113.000000000000000000
                        YValueOpen = 69.000000000000000000
                        YValueMedian = 115.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 8.000000000000000000
                        YValue = 37.000000000000000000
                        YValueSecond = 24.000000000000000000
                        YValueVariable = 37.000000000000000000
                        YValueLow = 13.000000000000000000
                        YValueClose = 33.000000000000000000
                        YValueHigh = 37.000000000000000000
                        YValueOpen = 21.000000000000000000
                        YValueMedian = 35.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 9.000000000000000000
                        YValue = 50.000000000000000000
                        YValueSecond = 37.000000000000000000
                        YValueVariable = 50.000000000000000000
                        YValueLow = 19.000000000000000000
                        YValueClose = 41.000000000000000000
                        YValueHigh = 50.000000000000000000
                        YValueOpen = 31.000000000000000000
                        YValueMedian = 48.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 10.000000000000000000
                        YValue = 93.000000000000000000
                        YValueSecond = 75.000000000000000000
                        YValueVariable = 93.000000000000000000
                        YValueLow = 48.000000000000000000
                        YValueClose = 73.000000000000000000
                        YValueHigh = 93.000000000000000000
                        YValueOpen = 82.000000000000000000
                        YValueMedian = 94.000000000000000000
                      end>
                    Legend.Font.Charset = DEFAULT_CHARSET
                    Legend.Font.Color = clWindowText
                    Legend.Font.Height = -11
                    Legend.Font.Name = 'Segoe UI'
                    Legend.Font.Style = []
                    Legend.Left = -10.000000000000000000
                    Stroke.Color = 5644279
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
                    Fill.Color = 7936771
                    LegendText = 'Series 2'
                    Labels.Font.Charset = DEFAULT_CHARSET
                    Labels.Font.Color = clWindowText
                    Labels.Font.Height = -11
                    Labels.Font.Name = 'Segoe UI'
                    Labels.Font.Style = []
                    Labels.Format = '%.2f'
                    Labels.OffsetY = -10.000000000000000000
                    Markers.Fill.Color = 7936771
                    Markers.Height = 10.000000000000000000
                    Markers.Stroke.Color = 3935746
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
                        YValue = 35.000000000000000000
                        YValueSecond = 19.000000000000000000
                        YValueVariable = 35.000000000000000000
                        YValueLow = 10.000000000000000000
                        YValueClose = 17.000000000000000000
                        YValueHigh = 35.000000000000000000
                        YValueOpen = 28.000000000000000000
                        YValueMedian = 37.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 1.000000000000000000
                        YValue = 40.000000000000000000
                        YValueSecond = 22.000000000000000000
                        YValueVariable = 40.000000000000000000
                        YValueLow = 16.000000000000000000
                        YValueClose = 34.000000000000000000
                        YValueHigh = 40.000000000000000000
                        YValueOpen = 26.000000000000000000
                        YValueMedian = 36.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 2.000000000000000000
                        YValue = 46.000000000000000000
                        YValueSecond = 36.000000000000000000
                        YValueVariable = 46.000000000000000000
                        YValueLow = 21.000000000000000000
                        YValueClose = 29.000000000000000000
                        YValueHigh = 46.000000000000000000
                        YValueOpen = 30.000000000000000000
                        YValueMedian = 50.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 3.000000000000000000
                        YValue = 44.000000000000000000
                        YValueSecond = 33.000000000000000000
                        YValueVariable = 44.000000000000000000
                        YValueLow = 19.000000000000000000
                        YValueClose = 43.000000000000000000
                        YValueHigh = 44.000000000000000000
                        YValueOpen = 28.000000000000000000
                        YValueMedian = 48.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 4.000000000000000000
                        YValue = 88.000000000000000000
                        YValueSecond = 78.000000000000000000
                        YValueVariable = 88.000000000000000000
                        YValueLow = 52.000000000000000000
                        YValueClose = 63.000000000000000000
                        YValueHigh = 88.000000000000000000
                        YValueOpen = 74.000000000000000000
                        YValueMedian = 83.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 5.000000000000000000
                        YValue = 63.000000000000000000
                        YValueSecond = 46.000000000000000000
                        YValueVariable = 63.000000000000000000
                        YValueLow = 22.000000000000000000
                        YValueClose = 33.000000000000000000
                        YValueHigh = 63.000000000000000000
                        YValueOpen = 23.000000000000000000
                        YValueMedian = 59.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 6.000000000000000000
                        YValue = 21.000000000000000000
                        YValueSecond = 5.000000000000000000
                        YValueVariable = 21.000000000000000000
                        YValueLow = 5.000000000000000000
                        YValueClose = 14.000000000000000000
                        YValueHigh = 21.000000000000000000
                        YValueOpen = 17.000000000000000000
                        YValueMedian = 25.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 7.000000000000000000
                        YValue = 70.000000000000000000
                        YValueSecond = 52.000000000000000000
                        YValueVariable = 70.000000000000000000
                        YValueLow = 25.000000000000000000
                        YValueClose = 60.000000000000000000
                        YValueHigh = 70.000000000000000000
                        YValueOpen = 51.000000000000000000
                        YValueMedian = 73.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 8.000000000000000000
                        YValue = 85.000000000000000000
                        YValueSecond = 74.000000000000000000
                        YValueVariable = 85.000000000000000000
                        YValueLow = 48.000000000000000000
                        YValueClose = 72.000000000000000000
                        YValueHigh = 85.000000000000000000
                        YValueOpen = 70.000000000000000000
                        YValueMedian = 80.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 9.000000000000000000
                        YValue = 68.000000000000000000
                        YValueSecond = 58.000000000000000000
                        YValueVariable = 68.000000000000000000
                        YValueLow = 25.000000000000000000
                        YValueClose = 39.000000000000000000
                        YValueHigh = 68.000000000000000000
                        YValueOpen = 61.000000000000000000
                        YValueMedian = 68.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 10.000000000000000000
                        YValue = 51.000000000000000000
                        YValueSecond = 41.000000000000000000
                        YValueVariable = 51.000000000000000000
                        YValueLow = 23.000000000000000000
                        YValueClose = 31.000000000000000000
                        YValueHigh = 51.000000000000000000
                        YValueOpen = 23.000000000000000000
                        YValueMedian = 51.000000000000000000
                      end>
                    Legend.Font.Charset = DEFAULT_CHARSET
                    Legend.Font.Color = clWindowText
                    Legend.Font.Height = -11
                    Legend.Font.Name = 'Segoe UI'
                    Legend.Font.Style = []
                    Legend.Left = -10.000000000000000000
                    Stroke.Color = 7936771
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
                    XValues.Title.Text = 'X-Axis Series 3'
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
                    YValues.Title.Text = 'Y-Axis Series 3'
                    YValues.Positions = []
                    Crosshair.XTextStroke.Color = 7936771
                    Crosshair.XTextFill.Color = 7936771
                    Crosshair.XTextFont.Charset = DEFAULT_CHARSET
                    Crosshair.XTextFont.Color = clWhite
                    Crosshair.XTextFont.Height = -11
                    Crosshair.XTextFont.Name = 'Segoe UI'
                    Crosshair.XTextFont.Style = []
                    Crosshair.YTextStroke.Color = 7936771
                    Crosshair.YTextFill.Color = 7936771
                    Crosshair.YTextFont.Charset = DEFAULT_CHARSET
                    Crosshair.YTextFont.Color = clWhite
                    Crosshair.YTextFont.Height = -11
                    Crosshair.YTextFont.Name = 'Segoe UI'
                    Crosshair.YTextFont.Style = []
                    Crosshair.HorizontalLineStroke.Color = 7936771
                    Crosshair.VerticalLineStroke.Color = 7936771
                  end>
                Title.Stroke.Kind = gskSolid
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Title.Height = 35.000000000000000000
                Title.TextMargins.Left = 3
                Title.TextMargins.Top = 3
                Title.TextMargins.Right = 3
                Title.TextMargins.Bottom = 3
                Title.Text = 'Compras'
                XAxis.Stroke.Kind = gskSolid
                XAxis.Height = 35.000000000000000000
                YAxis.Stroke.Kind = gskSolid
                YAxis.Width = 35.000000000000000000
                DefaultLoadOptions.XValuesFormatString = '%.0f'
                DefaultLoadOptions.YValuesFormatString = '%.2f'
                DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
                Align = alClient
                TabOrder = 0
              end
            end
          end
          object pnDer: TPanel
            Left = 839
            Top = 0
            Width = 732
            Height = 693
            Align = alClient
            Caption = 'pnDer'
            Padding.Left = 3
            Padding.Top = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 1
            object Splitter2: TSplitter
              Left = 4
              Top = 222
              Width = 724
              Height = 5
              Cursor = crVSplit
              Align = alTop
              ExplicitLeft = 1
              ExplicitTop = 233
              ExplicitWidth = 627
            end
            object Panel3: TPanel
              Left = 4
              Top = 4
              Width = 724
              Height = 218
              Align = alTop
              Caption = 'pnCas'
              Color = clMenuHighlight
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              ParentBackground = False
              TabOrder = 0
              object TMSFNCChart1: TTMSFNCChart
                Left = 4
                Top = 4
                Width = 716
                Height = 210
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
                Legend.Font.Name = 'Segoe UI'
                Legend.Font.Style = []
                Legend.Left = 10.000000000000000000
                Legend.Top = 10.000000000000000000
                SeriesMargins.Left = 0
                SeriesMargins.Top = 0
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
                    ChartType = ctBar
                    Fill.Color = 16105559
                    LegendText = 'Series 0'
                    Labels.Font.Charset = DEFAULT_CHARSET
                    Labels.Font.Color = clWindowText
                    Labels.Font.Height = -11
                    Labels.Font.Name = 'Segoe UI'
                    Labels.Font.Style = []
                    Labels.Format = '%.2f'
                    Labels.OffsetY = -10.000000000000000000
                    Markers.Fill.Color = 16105559
                    Markers.Height = 10.000000000000000000
                    Markers.Stroke.Color = 8020012
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
                        YValue = 86.000000000000000000
                        YValueSecond = 67.000000000000000000
                        YValueVariable = 86.000000000000000000
                        YValueLow = 30.000000000000000000
                        YValueClose = 33.000000000000000000
                        YValueHigh = 86.000000000000000000
                        YValueOpen = 66.000000000000000000
                        YValueMedian = 82.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 1.000000000000000000
                        YValue = 80.000000000000000000
                        YValueSecond = 63.000000000000000000
                        YValueVariable = 80.000000000000000000
                        YValueLow = 41.000000000000000000
                        YValueClose = 57.000000000000000000
                        YValueHigh = 80.000000000000000000
                        YValueOpen = 68.000000000000000000
                        YValueMedian = 81.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 2.000000000000000000
                        YValue = 123.000000000000000000
                        YValueSecond = 106.000000000000000000
                        YValueVariable = 123.000000000000000000
                        YValueLow = 42.000000000000000000
                        YValueClose = 50.000000000000000000
                        YValueHigh = 123.000000000000000000
                        YValueOpen = 65.000000000000000000
                        YValueMedian = 121.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 3.000000000000000000
                        YValue = 24.000000000000000000
                        YValueSecond = 7.000000000000000000
                        YValueVariable = 24.000000000000000000
                        YValueLow = 1.000000000000000000
                        YValueClose = 19.000000000000000000
                        YValueHigh = 24.000000000000000000
                        YValueOpen = 15.000000000000000000
                        YValueMedian = 27.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 4.000000000000000000
                        YValue = 118.000000000000000000
                        YValueSecond = 107.000000000000000000
                        YValueVariable = 118.000000000000000000
                        YValueLow = 68.000000000000000000
                        YValueClose = 75.000000000000000000
                        YValueHigh = 118.000000000000000000
                        YValueOpen = 80.000000000000000000
                        YValueMedian = 113.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 5.000000000000000000
                        YValue = 112.000000000000000000
                        YValueSecond = 100.000000000000000000
                        YValueVariable = 112.000000000000000000
                        YValueLow = 58.000000000000000000
                        YValueClose = 111.000000000000000000
                        YValueHigh = 112.000000000000000000
                        YValueOpen = 91.000000000000000000
                        YValueMedian = 108.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 6.000000000000000000
                        YValue = 56.000000000000000000
                        YValueSecond = 46.000000000000000000
                        YValueVariable = 56.000000000000000000
                        YValueLow = 21.000000000000000000
                        YValueClose = 53.000000000000000000
                        YValueHigh = 56.000000000000000000
                        YValueOpen = 42.000000000000000000
                        YValueMedian = 52.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 7.000000000000000000
                        YValue = 36.000000000000000000
                        YValueSecond = 20.000000000000000000
                        YValueVariable = 36.000000000000000000
                        YValueLow = 6.000000000000000000
                        YValueClose = 35.000000000000000000
                        YValueHigh = 36.000000000000000000
                        YValueOpen = 32.000000000000000000
                        YValueMedian = 34.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 8.000000000000000000
                        YValue = 34.000000000000000000
                        YValueSecond = 21.000000000000000000
                        YValueVariable = 34.000000000000000000
                        YValueLow = 11.000000000000000000
                        YValueClose = 26.000000000000000000
                        YValueHigh = 34.000000000000000000
                        YValueOpen = 23.000000000000000000
                        YValueMedian = 36.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 9.000000000000000000
                        YValue = 94.000000000000000000
                        YValueSecond = 76.000000000000000000
                        YValueVariable = 94.000000000000000000
                        YValueLow = 43.000000000000000000
                        YValueClose = 80.000000000000000000
                        YValueHigh = 94.000000000000000000
                        YValueOpen = 61.000000000000000000
                        YValueMedian = 91.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 10.000000000000000000
                        YValue = 88.000000000000000000
                        YValueSecond = 74.000000000000000000
                        YValueVariable = 88.000000000000000000
                        YValueLow = 41.000000000000000000
                        YValueClose = 54.000000000000000000
                        YValueHigh = 88.000000000000000000
                        YValueOpen = 80.000000000000000000
                        YValueMedian = 87.000000000000000000
                      end>
                    Legend.Font.Charset = DEFAULT_CHARSET
                    Legend.Font.Color = clWindowText
                    Legend.Font.Height = -11
                    Legend.Font.Name = 'Segoe UI'
                    Legend.Font.Style = []
                    Legend.Left = -10.000000000000000000
                    Stroke.Color = 16105559
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
                    ChartType = ctBar
                    Fill.Color = 5644279
                    LegendText = 'Series 1'
                    Labels.Font.Charset = DEFAULT_CHARSET
                    Labels.Font.Color = clWindowText
                    Labels.Font.Height = -11
                    Labels.Font.Name = 'Segoe UI'
                    Labels.Font.Style = []
                    Labels.Format = '%.2f'
                    Labels.OffsetY = -10.000000000000000000
                    Markers.Fill.Color = 5644279
                    Markers.Height = 10.000000000000000000
                    Markers.Stroke.Color = 2822268
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
                        YValue = 30.000000000000000000
                        YValueSecond = 18.000000000000000000
                        YValueVariable = 30.000000000000000000
                        YValueLow = 4.000000000000000000
                        YValueClose = 6.000000000000000000
                        YValueHigh = 30.000000000000000000
                        YValueOpen = 21.000000000000000000
                        YValueMedian = 26.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 1.000000000000000000
                        YValue = 111.000000000000000000
                        YValueSecond = 99.000000000000000000
                        YValueVariable = 111.000000000000000000
                        YValueLow = 68.000000000000000000
                        YValueClose = 88.000000000000000000
                        YValueHigh = 111.000000000000000000
                        YValueOpen = 96.000000000000000000
                        YValueMedian = 112.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 2.000000000000000000
                        YValue = 98.000000000000000000
                        YValueSecond = 83.000000000000000000
                        YValueVariable = 98.000000000000000000
                        YValueLow = 38.000000000000000000
                        YValueClose = 62.000000000000000000
                        YValueHigh = 98.000000000000000000
                        YValueOpen = 73.000000000000000000
                        YValueMedian = 101.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 3.000000000000000000
                        YValue = 117.000000000000000000
                        YValueSecond = 107.000000000000000000
                        YValueVariable = 117.000000000000000000
                        YValueLow = 67.000000000000000000
                        YValueClose = 81.000000000000000000
                        YValueHigh = 117.000000000000000000
                        YValueOpen = 90.000000000000000000
                        YValueMedian = 115.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 4.000000000000000000
                        YValue = 65.000000000000000000
                        YValueSecond = 48.000000000000000000
                        YValueVariable = 65.000000000000000000
                        YValueLow = 21.000000000000000000
                        YValueClose = 48.000000000000000000
                        YValueHigh = 65.000000000000000000
                        YValueOpen = 22.000000000000000000
                        YValueMedian = 63.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 5.000000000000000000
                        YValue = 58.000000000000000000
                        YValueSecond = 47.000000000000000000
                        YValueVariable = 58.000000000000000000
                        YValueLow = 24.000000000000000000
                        YValueClose = 57.000000000000000000
                        YValueHigh = 58.000000000000000000
                        YValueOpen = 40.000000000000000000
                        YValueMedian = 61.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 6.000000000000000000
                        YValue = 33.000000000000000000
                        YValueSecond = 18.000000000000000000
                        YValueVariable = 33.000000000000000000
                        YValueLow = 8.000000000000000000
                        YValueClose = 21.000000000000000000
                        YValueHigh = 33.000000000000000000
                        YValueOpen = 10.000000000000000000
                        YValueMedian = 31.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 7.000000000000000000
                        YValue = 61.000000000000000000
                        YValueSecond = 46.000000000000000000
                        YValueVariable = 61.000000000000000000
                        YValueLow = 31.000000000000000000
                        YValueClose = 46.000000000000000000
                        YValueHigh = 61.000000000000000000
                        YValueOpen = 60.000000000000000000
                        YValueMedian = 65.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 8.000000000000000000
                        YValue = 75.000000000000000000
                        YValueSecond = 58.000000000000000000
                        YValueVariable = 75.000000000000000000
                        YValueLow = 24.000000000000000000
                        YValueClose = 25.000000000000000000
                        YValueHigh = 75.000000000000000000
                        YValueOpen = 41.000000000000000000
                        YValueMedian = 75.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 9.000000000000000000
                        YValue = 106.000000000000000000
                        YValueSecond = 89.000000000000000000
                        YValueVariable = 106.000000000000000000
                        YValueLow = 39.000000000000000000
                        YValueClose = 90.000000000000000000
                        YValueHigh = 106.000000000000000000
                        YValueOpen = 74.000000000000000000
                        YValueMedian = 104.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 10.000000000000000000
                        YValue = 60.000000000000000000
                        YValueSecond = 50.000000000000000000
                        YValueVariable = 60.000000000000000000
                        YValueLow = 23.000000000000000000
                        YValueClose = 37.000000000000000000
                        YValueHigh = 60.000000000000000000
                        YValueOpen = 26.000000000000000000
                        YValueMedian = 60.000000000000000000
                      end>
                    Legend.Font.Charset = DEFAULT_CHARSET
                    Legend.Font.Color = clWindowText
                    Legend.Font.Height = -11
                    Legend.Font.Name = 'Segoe UI'
                    Legend.Font.Style = []
                    Legend.Left = -10.000000000000000000
                    Stroke.Color = 5644279
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
                Title.Stroke.Kind = gskSolid
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Title.Height = 35.000000000000000000
                Title.TextMargins.Left = 3
                Title.TextMargins.Top = 3
                Title.TextMargins.Right = 3
                Title.TextMargins.Bottom = 3
                Title.Text = 'TMS FNC Chart'
                XAxis.Stroke.Kind = gskSolid
                XAxis.Height = 35.000000000000000000
                YAxis.Stroke.Kind = gskSolid
                YAxis.Width = 35.000000000000000000
                DefaultLoadOptions.XValuesFormatString = '%.0f'
                DefaultLoadOptions.YValuesFormatString = '%.2f'
                DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
                Align = alClient
                TabOrder = 0
              end
            end
            object pnCuatro: TPanel
              Left = 4
              Top = 227
              Width = 724
              Height = 462
              Align = alClient
              Caption = 'pnCuatro'
              Color = clMenuHighlight
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              ParentBackground = False
              TabOrder = 1
              object TMSFNCChart4: TTMSFNCChart
                Left = 4
                Top = 4
                Width = 716
                Height = 454
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
                Legend.Font.Name = 'Segoe UI'
                Legend.Font.Style = []
                Legend.Left = 10.000000000000000000
                Legend.Top = 10.000000000000000000
                SeriesMargins.Left = 0
                SeriesMargins.Top = 0
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
                    ChartType = ctBar
                    Fill.Color = 16105559
                    LegendText = 'Series 0'
                    Labels.Font.Charset = DEFAULT_CHARSET
                    Labels.Font.Color = clWindowText
                    Labels.Font.Height = -11
                    Labels.Font.Name = 'Segoe UI'
                    Labels.Font.Style = []
                    Labels.Format = '%.2f'
                    Labels.OffsetY = -10.000000000000000000
                    Markers.Fill.Color = 16105559
                    Markers.Height = 10.000000000000000000
                    Markers.Stroke.Color = 8020012
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
                        YValue = 86.000000000000000000
                        YValueSecond = 67.000000000000000000
                        YValueVariable = 86.000000000000000000
                        YValueLow = 30.000000000000000000
                        YValueClose = 33.000000000000000000
                        YValueHigh = 86.000000000000000000
                        YValueOpen = 66.000000000000000000
                        YValueMedian = 82.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 1.000000000000000000
                        YValue = 80.000000000000000000
                        YValueSecond = 63.000000000000000000
                        YValueVariable = 80.000000000000000000
                        YValueLow = 41.000000000000000000
                        YValueClose = 57.000000000000000000
                        YValueHigh = 80.000000000000000000
                        YValueOpen = 68.000000000000000000
                        YValueMedian = 81.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 2.000000000000000000
                        YValue = 123.000000000000000000
                        YValueSecond = 106.000000000000000000
                        YValueVariable = 123.000000000000000000
                        YValueLow = 42.000000000000000000
                        YValueClose = 50.000000000000000000
                        YValueHigh = 123.000000000000000000
                        YValueOpen = 65.000000000000000000
                        YValueMedian = 121.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 3.000000000000000000
                        YValue = 24.000000000000000000
                        YValueSecond = 7.000000000000000000
                        YValueVariable = 24.000000000000000000
                        YValueLow = 1.000000000000000000
                        YValueClose = 19.000000000000000000
                        YValueHigh = 24.000000000000000000
                        YValueOpen = 15.000000000000000000
                        YValueMedian = 27.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 4.000000000000000000
                        YValue = 118.000000000000000000
                        YValueSecond = 107.000000000000000000
                        YValueVariable = 118.000000000000000000
                        YValueLow = 68.000000000000000000
                        YValueClose = 75.000000000000000000
                        YValueHigh = 118.000000000000000000
                        YValueOpen = 80.000000000000000000
                        YValueMedian = 113.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 5.000000000000000000
                        YValue = 112.000000000000000000
                        YValueSecond = 100.000000000000000000
                        YValueVariable = 112.000000000000000000
                        YValueLow = 58.000000000000000000
                        YValueClose = 111.000000000000000000
                        YValueHigh = 112.000000000000000000
                        YValueOpen = 91.000000000000000000
                        YValueMedian = 108.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 6.000000000000000000
                        YValue = 56.000000000000000000
                        YValueSecond = 46.000000000000000000
                        YValueVariable = 56.000000000000000000
                        YValueLow = 21.000000000000000000
                        YValueClose = 53.000000000000000000
                        YValueHigh = 56.000000000000000000
                        YValueOpen = 42.000000000000000000
                        YValueMedian = 52.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 7.000000000000000000
                        YValue = 36.000000000000000000
                        YValueSecond = 20.000000000000000000
                        YValueVariable = 36.000000000000000000
                        YValueLow = 6.000000000000000000
                        YValueClose = 35.000000000000000000
                        YValueHigh = 36.000000000000000000
                        YValueOpen = 32.000000000000000000
                        YValueMedian = 34.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 8.000000000000000000
                        YValue = 34.000000000000000000
                        YValueSecond = 21.000000000000000000
                        YValueVariable = 34.000000000000000000
                        YValueLow = 11.000000000000000000
                        YValueClose = 26.000000000000000000
                        YValueHigh = 34.000000000000000000
                        YValueOpen = 23.000000000000000000
                        YValueMedian = 36.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 9.000000000000000000
                        YValue = 94.000000000000000000
                        YValueSecond = 76.000000000000000000
                        YValueVariable = 94.000000000000000000
                        YValueLow = 43.000000000000000000
                        YValueClose = 80.000000000000000000
                        YValueHigh = 94.000000000000000000
                        YValueOpen = 61.000000000000000000
                        YValueMedian = 91.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 10.000000000000000000
                        YValue = 88.000000000000000000
                        YValueSecond = 74.000000000000000000
                        YValueVariable = 88.000000000000000000
                        YValueLow = 41.000000000000000000
                        YValueClose = 54.000000000000000000
                        YValueHigh = 88.000000000000000000
                        YValueOpen = 80.000000000000000000
                        YValueMedian = 87.000000000000000000
                      end>
                    Legend.Font.Charset = DEFAULT_CHARSET
                    Legend.Font.Color = clWindowText
                    Legend.Font.Height = -11
                    Legend.Font.Name = 'Segoe UI'
                    Legend.Font.Style = []
                    Legend.Left = -10.000000000000000000
                    Stroke.Color = 16105559
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
                    ChartType = ctBar
                    Fill.Color = 5644279
                    LegendText = 'Series 1'
                    Labels.Font.Charset = DEFAULT_CHARSET
                    Labels.Font.Color = clWindowText
                    Labels.Font.Height = -11
                    Labels.Font.Name = 'Segoe UI'
                    Labels.Font.Style = []
                    Labels.Format = '%.2f'
                    Labels.OffsetY = -10.000000000000000000
                    Markers.Fill.Color = 5644279
                    Markers.Height = 10.000000000000000000
                    Markers.Stroke.Color = 2822268
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
                        YValue = 30.000000000000000000
                        YValueSecond = 18.000000000000000000
                        YValueVariable = 30.000000000000000000
                        YValueLow = 4.000000000000000000
                        YValueClose = 6.000000000000000000
                        YValueHigh = 30.000000000000000000
                        YValueOpen = 21.000000000000000000
                        YValueMedian = 26.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 1.000000000000000000
                        YValue = 111.000000000000000000
                        YValueSecond = 99.000000000000000000
                        YValueVariable = 111.000000000000000000
                        YValueLow = 68.000000000000000000
                        YValueClose = 88.000000000000000000
                        YValueHigh = 111.000000000000000000
                        YValueOpen = 96.000000000000000000
                        YValueMedian = 112.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 2.000000000000000000
                        YValue = 98.000000000000000000
                        YValueSecond = 83.000000000000000000
                        YValueVariable = 98.000000000000000000
                        YValueLow = 38.000000000000000000
                        YValueClose = 62.000000000000000000
                        YValueHigh = 98.000000000000000000
                        YValueOpen = 73.000000000000000000
                        YValueMedian = 101.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 3.000000000000000000
                        YValue = 117.000000000000000000
                        YValueSecond = 107.000000000000000000
                        YValueVariable = 117.000000000000000000
                        YValueLow = 67.000000000000000000
                        YValueClose = 81.000000000000000000
                        YValueHigh = 117.000000000000000000
                        YValueOpen = 90.000000000000000000
                        YValueMedian = 115.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 4.000000000000000000
                        YValue = 65.000000000000000000
                        YValueSecond = 48.000000000000000000
                        YValueVariable = 65.000000000000000000
                        YValueLow = 21.000000000000000000
                        YValueClose = 48.000000000000000000
                        YValueHigh = 65.000000000000000000
                        YValueOpen = 22.000000000000000000
                        YValueMedian = 63.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 5.000000000000000000
                        YValue = 58.000000000000000000
                        YValueSecond = 47.000000000000000000
                        YValueVariable = 58.000000000000000000
                        YValueLow = 24.000000000000000000
                        YValueClose = 57.000000000000000000
                        YValueHigh = 58.000000000000000000
                        YValueOpen = 40.000000000000000000
                        YValueMedian = 61.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 6.000000000000000000
                        YValue = 33.000000000000000000
                        YValueSecond = 18.000000000000000000
                        YValueVariable = 33.000000000000000000
                        YValueLow = 8.000000000000000000
                        YValueClose = 21.000000000000000000
                        YValueHigh = 33.000000000000000000
                        YValueOpen = 10.000000000000000000
                        YValueMedian = 31.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 7.000000000000000000
                        YValue = 61.000000000000000000
                        YValueSecond = 46.000000000000000000
                        YValueVariable = 61.000000000000000000
                        YValueLow = 31.000000000000000000
                        YValueClose = 46.000000000000000000
                        YValueHigh = 61.000000000000000000
                        YValueOpen = 60.000000000000000000
                        YValueMedian = 65.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 8.000000000000000000
                        YValue = 75.000000000000000000
                        YValueSecond = 58.000000000000000000
                        YValueVariable = 75.000000000000000000
                        YValueLow = 24.000000000000000000
                        YValueClose = 25.000000000000000000
                        YValueHigh = 75.000000000000000000
                        YValueOpen = 41.000000000000000000
                        YValueMedian = 75.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 9.000000000000000000
                        YValue = 106.000000000000000000
                        YValueSecond = 89.000000000000000000
                        YValueVariable = 106.000000000000000000
                        YValueLow = 39.000000000000000000
                        YValueClose = 90.000000000000000000
                        YValueHigh = 106.000000000000000000
                        YValueOpen = 74.000000000000000000
                        YValueMedian = 104.000000000000000000
                      end
                      item
                        Annotations = <>
                        XValue = 10.000000000000000000
                        YValue = 60.000000000000000000
                        YValueSecond = 50.000000000000000000
                        YValueVariable = 60.000000000000000000
                        YValueLow = 23.000000000000000000
                        YValueClose = 37.000000000000000000
                        YValueHigh = 60.000000000000000000
                        YValueOpen = 26.000000000000000000
                        YValueMedian = 60.000000000000000000
                      end>
                    Legend.Font.Charset = DEFAULT_CHARSET
                    Legend.Font.Color = clWindowText
                    Legend.Font.Height = -11
                    Legend.Font.Name = 'Segoe UI'
                    Legend.Font.Style = []
                    Legend.Left = -10.000000000000000000
                    Stroke.Color = 5644279
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
                Title.Stroke.Kind = gskSolid
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Segoe UI'
                Title.Font.Style = []
                Title.Height = 35.000000000000000000
                Title.TextMargins.Left = 3
                Title.TextMargins.Top = 3
                Title.TextMargins.Right = 3
                Title.TextMargins.Bottom = 3
                Title.Text = 'TMS FNC Chart'
                XAxis.Stroke.Kind = gskSolid
                XAxis.Height = 35.000000000000000000
                YAxis.Stroke.Kind = gskSolid
                YAxis.Width = 35.000000000000000000
                DefaultLoadOptions.XValuesFormatString = '%.0f'
                DefaultLoadOptions.YValuesFormatString = '%.2f'
                DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
                Align = alClient
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 721
    Width = 1579
    Align = alBottom
    ButtonHeight = 30
    ExplicitTop = 721
    ExplicitWidth = 1579
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
      Width = 44
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object chAgrupado: TCheckBox
      Left = 601
      Top = 0
      Width = 97
      Height = 30
      Caption = 'Lista Agrupado'
      TabOrder = 9
      OnClick = chAgrupadoClick
    end
    object rbPorCodigo: TRadioButton
      Left = 698
      Top = 0
      Width = 82
      Height = 30
      Caption = 'por Codigo'
      Checked = True
      TabOrder = 11
      TabStop = True
    end
    object rbPorDetalle: TRadioButton
      Left = 780
      Top = 0
      Width = 93
      Height = 30
      Caption = 'por Detalle'
      TabOrder = 12
    end
    object rgindex: TRadioGroup
      Left = 873
      Top = 0
      Width = 183
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Color = clGradientInactiveCaption
      Columns = 2
      Ctl3D = True
      DefaultHeaderFont = False
      Enabled = False
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      ItemIndex = 0
      Items.Strings = (
        'por codigo'
        'por detalle')
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object ToolButton2: TToolButton
      Left = 1056
      Top = 0
      Width = 15
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object BitBtn4: TBitBtn
      Left = 1071
      Top = 0
      Width = 76
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
    object btExcel: TBitBtn
      Left = 1147
      Top = 0
      Width = 75
      Height = 30
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
      TabOrder = 8
      OnClick = btExcelClick
    end
  end
  inherited Panel1: TPanel
    Top = 751
    Width = 1579
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 751
    ExplicitWidth = 1579
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 1490
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1490
    end
  end
  inherited ActionList1: TActionList
    Left = 472
    Top = 128
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object LimpiarFiltros: TAction
      Caption = 'Limpiar Filtros'
      OnExecute = LimpiarFiltrosExecute
    end
    object BuscarABC: TAction
      Caption = 'Buscar'
      OnExecute = BuscarABCExecute
    end
    object ArmarGrafico: TAction
      Caption = 'Armar Grafico'
      OnExecute = ArmarGraficoExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 584
    Top = 184
  end
  inherited ImageList1: TImageList
    Left = 424
    Top = 224
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
    Left = 592
    Top = 232
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 8
    Top = 488
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 536
    Top = 312
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 464
    Top = 248
  end
  inherited QBrowse2: TFDQuery
    Left = 104
    Top = 568
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 56
    Top = 544
  end
  object DSPMovimientos: TDataSetProvider
    DataSet = QMovimientos
    Left = 216
    Top = 348
  end
  object CDSMovimientos: TClientDataSet
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
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'declarado_iva'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'subrubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'vend'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'zona'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovimientos'
    OnCalcFields = CDSMovimientosCalcFields
    Left = 313
    Top = 347
    object CDSMovimientosTIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSMovimientosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovimientosFECHACPBTE: TSQLTimeStampField
      FieldName = 'FECHACPBTE'
      Origin = 'FECHACPBTE'
    end
    object CDSMovimientosCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      OnGetText = CDSMovimientosCODIGOARTICULOGetText
      Size = 8
    end
    object CDSMovimientosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSMovimientosUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSMovimientosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSMovimientosCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Origin = 'CODIGOCLIENTE'
      Size = 6
    end
    object CDSMovimientosRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSMovimientosPRESEN_UNITARIA: TFloatField
      DisplayLabel = 'Present.Unit'
      FieldName = 'PRESEN_UNITARIA'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosPRES_UNIDAD: TStringField
      Alignment = taCenter
      DisplayLabel = 'Unid.Pres.'
      FieldName = 'PRES_UNIDAD'
      Origin = 'PRES_UNIDAD'
      Size = 3
    end
    object CDSMovimientosCODIGO_ALTERNATIVO: TStringField
      FieldName = 'CODIGO_ALTERNATIVO'
      Origin = 'CODIGO_ALTERNATIVO'
    end
    object CDSMovimientosCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosTOTAL_RECALCULADO: TFloatField
      DisplayLabel = 'Total Recal.'
      FieldName = 'TOTAL_RECALCULADO'
      Origin = 'TOTAL_RECALCULADO'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosUNITARIO_EXENTO: TFloatField
      DisplayLabel = 'Unit.Exen'
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosUNITARIO_GRAVADO: TFloatField
      DisplayLabel = 'Unit.Grav'
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unit.Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosTOTAL_FINAL: TFloatField
      DisplayLabel = '$ Total C/Iva'
      FieldName = 'TOTAL_FINAL'
      Origin = 'TOTAL_FINAL'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosTOTAL_REC_FINAL: TFloatField
      DisplayLabel = '$ T.Rec.C/Iva'
      FieldName = 'TOTAL_REC_FINAL'
      Origin = 'TOTAL_REC_FINAL'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosUNITARIO_FINAL: TFloatField
      DisplayLabel = '$ Uni.C/Iva'
      FieldName = 'UNITARIO_FINAL'
      Origin = 'UNITARIO_FINAL'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosPRES_CANTIDAD: TFloatField
      DisplayLabel = 'Total x Pres.'
      FieldName = 'PRES_CANTIDAD'
      Origin = 'PRES_CANTIDAD'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosFISICO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FISICO'
      Calculated = True
    end
    object CDSMovimientosIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object CDSMovimientosIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
    end
    object CDSMovimientosCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object CDSMovimientosULT_PRECIO_COMPRA: TFloatField
      FieldName = 'ULT_PRECIO_COMPRA'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientosDET_RUBRO: TStringField
      FieldName = 'DET_RUBRO'
      Size = 35
    end
    object CDSMovimientosDET_SUBRUBRO: TStringField
      FieldName = 'DET_SUBRUBRO'
      Size = 45
    end
    object CDSMovimientosCATEGORIA_CLIENTE: TStringField
      DisplayLabel = 'Categoria Cliente'
      FieldName = 'CATEGORIA_CLIENTE'
      Size = 30
    end
    object CDSMovimientosGananciaTotalCosto: TAggregateField
      FieldName = 'GananciaTotalCosto'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'sum(TOTAL_REC_FINAL-COSTO)'
    end
    object CDSMovimientosImpTotalGravado: TAggregateField
      FieldName = 'ImpTotalGravado'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'sum(UNITARIO_GRAVADO*CANTIDAD)'
    end
    object CDSMovimientosImpTotalExento: TAggregateField
      FieldName = 'ImpTotalExento'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'SUM(UNITARIO_EXENTO*CANTIDAD)'
    end
    object CDSMovimientosImpTotal: TAggregateField
      FieldName = 'ImpTotal'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'SUM(TOTAL)'
    end
    object CDSMovimientosImpUnitarioTotal: TAggregateField
      FieldName = 'ImpUnitarioTotal'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'sum(UNITARIO_TOTAL*CANTIDAD)'
    end
    object CDSMovimientosImpTotalNeto: TAggregateField
      FieldName = 'ImpTotalNeto'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'sum(TOTAL_RECALCULADO)'
    end
    object CDSMovimientosCantidadTotal: TAggregateField
      FieldName = 'CantidadTotal'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'sum(CANTIDAD)'
    end
    object CDSMovimientosContenidoTotal: TAggregateField
      FieldName = 'ContenidoTotal'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'SUM(PRES_CANTIDAD)'
    end
    object CDSMovimientosImpUnitarioFinal: TAggregateField
      FieldName = 'ImpUnitarioFinal'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'sum(UNITARIO_FINAL*CANTIDAD)'
    end
    object CDSMovimientosImpTotalFInal: TAggregateField
      FieldName = 'ImpTotalFInal'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'sum(TOTAL_FINAL)'
    end
    object CDSMovimientosImpNetoFinal: TAggregateField
      FieldName = 'ImpNetoFinal'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'sum(TOTAL_REC_FINAL)'
    end
    object CDSMovimientosGananciaTotalPrCompra: TAggregateField
      FieldName = 'GananciaTotalPrCompra'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.00;-,0.00;-'
      Expression = 'sum(Total_REC_FINAL-ULT_PRECIO_COMPRA)'
    end
  end
  object DSMovimientos: TDataSource
    DataSet = CDSMovimientos
    Left = 400
    Top = 344
  end
  object frMov: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.832151145820000000
    ReportOptions.LastChange = 39638.832151145820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 344
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frDBDMov: TfrxDBDataset
    UserName = 'frDBDMov'
    CloseDataSource = False
    DataSet = CDSMovimientos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 352
    FieldDefs = <
      item
        FieldName = 'TIPO_CPBTE'
        FieldAlias = 'TIPO_CPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'FECHACPBTE'
        FieldAlias = 'FECHACPBTE'
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
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
      end
      item
        FieldName = 'CODIGOCLIENTE'
        FieldAlias = 'CODIGOCLIENTE'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end
      item
        FieldName = 'PRESEN_UNITARIA'
        FieldAlias = 'PRESEN_UNITARIA'
      end
      item
        FieldName = 'PRES_UNIDAD'
        FieldAlias = 'PRES_UNIDAD'
      end
      item
        FieldName = 'CODIGO_ALTERNATIVO'
        FieldAlias = 'CODIGO_ALTERNATIVO'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'TOTAL_RECALCULADO'
        FieldAlias = 'TOTAL_RECALCULADO'
      end
      item
        FieldName = 'UNITARIO_EXENTO'
        FieldAlias = 'UNITARIO_EXENTO'
      end
      item
        FieldName = 'UNITARIO_GRAVADO'
        FieldAlias = 'UNITARIO_GRAVADO'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'UNITARIO_TOTAL'
      end
      item
        FieldName = 'TOTAL_FINAL'
        FieldAlias = 'TOTAL_FINAL'
      end
      item
        FieldName = 'TOTAL_REC_FINAL'
        FieldAlias = 'TOTAL_REC_FINAL'
      end
      item
        FieldName = 'UNITARIO_FINAL'
        FieldAlias = 'UNITARIO_FINAL'
      end
      item
        FieldName = 'PRES_CANTIDAD'
        FieldAlias = 'PRES_CANTIDAD'
      end
      item
        FieldName = 'FISICO'
        FieldAlias = 'FISICO'
      end
      item
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_TASA'
      end
      item
        FieldName = 'IVA_IMPORTE'
        FieldAlias = 'IVA_IMPORTE'
      end
      item
        FieldName = 'COSTO'
        FieldAlias = 'COSTO'
      end
      item
        FieldName = 'ULT_PRECIO_COMPRA'
        FieldAlias = 'ULT_PRECIO_COMPRA'
      end
      item
        FieldName = 'DET_RUBRO'
        FieldAlias = 'DET_RUBRO'
      end
      item
        FieldName = 'DET_SUBRUBRO'
        FieldAlias = 'DET_SUBRUBRO'
      end
      item
        FieldName = 'GananciaTotalCosto'
        FieldAlias = 'GananciaTotalCosto'
      end
      item
        FieldName = 'ImpTotalGravado'
        FieldAlias = 'ImpTotalGravado'
      end
      item
        FieldName = 'ImpTotalExento'
        FieldAlias = 'ImpTotalExento'
      end
      item
        FieldName = 'ImpTotal'
        FieldAlias = 'ImpTotal'
      end
      item
        FieldName = 'ImpUnitarioTotal'
        FieldAlias = 'ImpUnitarioTotal'
      end
      item
        FieldName = 'ImpTotalNeto'
        FieldAlias = 'ImpTotalNeto'
      end
      item
        FieldName = 'CantidadTotal'
        FieldAlias = 'CantidadTotal'
      end
      item
        FieldName = 'ContenidoTotal'
        FieldAlias = 'ContenidoTotal'
      end
      item
        FieldName = 'ImpUnitarioFinal'
        FieldAlias = 'ImpUnitarioFinal'
      end
      item
        FieldName = 'ImpTotalFInal'
        FieldAlias = 'ImpTotalFInal'
      end
      item
        FieldName = 'ImpNetoFinal'
        FieldAlias = 'ImpNetoFinal'
      end
      item
        FieldName = 'GananciaTotalPrCompra'
        FieldAlias = 'GananciaTotalPrCompra'
      end>
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 1128
    Top = 176
  end
  object DSRubros: TDataSource
    DataSet = CDSRubro
    Left = 1136
    Top = 224
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 520
    Top = 184
  end
  object DataToXLS: TDataToXLS
    DataSet = CDSMovimientos
    Columns = <
      item
        DataField = 'CODIGOARTICULO'
        Title = 'Codigo'
      end
      item
        DataField = 'DETALLE'
        Title = 'Detalle'
      end
      item
        DataField = 'FECHACPBTE'
        Title = 'Fecha'
      end
      item
        DataField = 'TIPO_CPBTE'
        Title = 'Tp.Cpbte'
      end
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbte'
      end
      item
        DataField = 'UNIDAD'
        Title = 'Unidad'
      end
      item
        DataField = 'CANTIDAD'
        Title = 'Cantidad'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL'
        Title = 'Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'DESCUENTO'
        Title = 'Descuento'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL_RECALCULADO'
        Title = 'Total Recalculado'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'VENDEDOR'
        Title = 'Vendedor'
      end
      item
        DataField = 'CODIGOCLIENTE'
        Title = 'Codigo Cliente'
      end
      item
        DataField = 'RAZONSOCIAL'
        Title = 'Razon Social'
      end
      item
        DataField = 'UNITARIO_EXENTO'
        Title = 'Unitario Exento'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'UNITARIO_GRAVADO'
        Title = 'Unitario Gravado'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'UNITARIO_TOTAL'
        Title = 'Unitaio Final'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PRES_UNIDAD'
        Title = 'Uni.Pres.'
      end
      item
        DataField = 'PRES_CANTIDAD'
        Title = 'Total x Pres.'
        Alignment = taRightJustify
      end
      item
        DataField = 'TOTAL_FINAL'
        Title = 'Total C/Iva'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL_REC_FINAL'
        Title = 'T.Rec.C/Iva'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'UNITARIO_FINAL'
        Title = 'Uni.C/Iva'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'FISICO'
        Title = 'Fisico'
        DataType = ctDouble
      end
      item
        DataField = 'DET_RUBRO'
        Title = 'Rubro'
      end
      item
        DataField = 'DET_SUBRUBRO'
        Title = 'Sub Rubro'
      end
      item
        DataField = 'CATEGORIA_CLIENTE'
        Title = 'Categoria Cliente'
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
    Left = 784
    Top = 256
  end
  object DSMarca: TDataSource
    DataSet = CDSMarca
    Left = 1128
    Top = 328
  end
  object DSSubRubro: TDataSource
    DataSet = CDSSubRubro
    Left = 1128
    Top = 272
  end
  object DSVendedores: TDataSource
    DataSet = CDSVendedor
    Left = 344
    Top = 216
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 992
    Top = 224
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
    DataSet = DMBuscadores.QBuscaRubroFD
    Left = 1064
    Top = 224
  end
  object CDSSubRubro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSubRubro'
    Left = 992
    Top = 280
    object CDSSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSSubRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object DSPSubRubro: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSubRubroFD
    Left = 1064
    Top = 272
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 992
    Top = 176
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
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 1056
    Top = 176
  end
  object CDSMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMarca'
    Left = 984
    Top = 328
    object CDSMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CDSMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object DSPMarca: TDataSetProvider
    DataSet = DMBuscadores.QBuscaMarca
    Left = 1064
    Top = 320
  end
  object CDSVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVendedor'
    Left = 272
    Top = 152
    object CDSVendedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSVendedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSVendedorCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
  end
  object DSPVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Left = 216
    Top = 152
  end
  object DSPMovimientos_2: TDataSetProvider
    DataSet = QMovimientos_2
    Left = 232
    Top = 276
  end
  object CDSMovimientos_2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_FECHA'
        ParamType = ptInput
        Size = 1
      end>
    ProviderName = 'DSPMovimientos_2'
    OnCalcFields = CDSMovimientos_2CalcFields
    Left = 305
    Top = 283
    object CDSMovimientos_2CODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo Art.'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSMovimientos_2DETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSMovimientos_2ANIO: TSmallintField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSMovimientos_2MES: TSmallintField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSMovimientos_2RUBRO: TStringField
      DisplayLabel = 'Cod.Rub'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSMovimientos_2SUBRUBRO: TStringField
      DisplayLabel = 'Cod.Sub'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 5
    end
    object CDSMovimientos_2RUBRODETALLE: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRODETALLE'
      Origin = 'RUBRODETALLE'
      Size = 35
    end
    object CDSMovimientos_2SUBRUBRODETALL: TStringField
      DisplayLabel = 'Sub Rub.'
      FieldName = 'SUBRUBRODETALL'
      Origin = 'SUBRUBRODETALL'
      Size = 45
    end
    object CDSMovimientos_2VENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object CDSMovimientos_2SUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Size = 35
    end
    object CDSMovimientos_2ZONA: TIntegerField
      DisplayLabel = 'Zona'
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSMovimientos_2VENDEDOR_CLI: TStringField
      DisplayLabel = 'Vende.Cli'
      FieldName = 'VENDEDOR_CLI'
      Origin = 'VENDEDOR_CLI'
      Size = 50
    end
    object CDSMovimientos_2CODIGO_CLI: TStringField
      DisplayLabel = 'Cod.Cli'
      FieldName = 'CODIGO_CLI'
      Origin = 'CODIGO_CLI'
      Size = 6
    end
    object CDSMovimientos_2NOMBRE_CLI: TStringField
      DisplayLabel = 'Nombre Cliente'
      FieldName = 'NOMBRE_CLI'
      Origin = 'NOMBRE_CLI'
      Size = 45
    end
    object CDSMovimientos_2TIPO_VTA: TStringField
      DisplayLabel = 'Tipo Vta'
      FieldName = 'TIPO_VTA'
      Origin = 'TIPO_VTA'
      Size = 10
    end
    object CDSMovimientos_2LETRA: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Size = 1
    end
    object CDSMovimientos_2MARCADETALLE: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCADETALLE'
      Origin = 'MARCADETALLE'
      Size = 25
    end
    object CDSMovimientos_2DIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSMovimientos_2ZONADETALLE: TStringField
      DisplayLabel = 'Zona Detalle'
      FieldName = 'ZONADETALLE'
      Origin = 'ZONADETALLE'
      Size = 25
    end
    object CDSMovimientos_2TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object CDSMovimientos_2CLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE'
      Origin = 'CLASE'
      Size = 2
    end
    object CDSMovimientos_2NROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovimientos_2UNID_VTA: TStringField
      DisplayLabel = 'Unid.Vta'
      FieldName = 'UNID_VTA'
      Origin = 'UNID_VTA'
      Size = 3
    end
    object CDSMovimientos_2FECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovimientos_2PRESEN_UNIDAD: TStringField
      DisplayLabel = 'Pres.Unidad'
      FieldName = 'PRESEN_UNIDAD'
      Origin = 'PRESEN_UNIDAD'
      Size = 3
    end
    object CDSMovimientos_2COBRADOR: TStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object CDSMovimientos_2COBRADOR_NOMBRE: TStringField
      DisplayLabel = 'Cobrador Nombre'
      FieldName = 'COBRADOR_NOMBRE'
      Origin = 'COBRADOR_NOMBRE'
      Size = 50
    end
    object CDSMovimientos_2MUESTRAMES: TStringField
      DisplayLabel = 'Mes Nombre'
      FieldKind = fkCalculated
      FieldName = 'MUESTRAMES'
      Calculated = True
    end
    object CDSMovimientos_2MUESTRASEMANA: TWordField
      DisplayLabel = 'Semana'
      FieldKind = fkCalculated
      FieldName = 'MUESTRASEMANA'
      Calculated = True
    end
    object CDSMovimientos_2OBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 60
    end
    object CDSMovimientos_2INSCRIPCION_IVA: TStringField
      DisplayLabel = 'Cond.de IVA'
      FieldName = 'INSCRIPCION_IVA'
      Origin = 'INSCRIPCION_IVA'
      Size = 15
    end
    object CDSMovimientos_2MUESTRA_FECHACORTA: TStringField
      DisplayLabel = 'Dia'
      FieldKind = fkCalculated
      FieldName = 'MUESTRA_FECHACORTA'
      Calculated = True
    end
    object CDSMovimientos_2CATEGORIA: TStringField
      DisplayLabel = 'Categoria Vdor'
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 30
    end
    object CDSMovimientos_2TASA_MANUFACTURA: TStringField
      DisplayLabel = 'Tasa Manuf.'
      FieldName = 'TASA_MANUFACTURA'
      Origin = 'TASA_MANUFACTURA'
      Size = 1
    end
    object CDSMovimientos_2CODIGO_ALTERNATIVO: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Cod.Alterntivo'
      FieldName = 'CODIGO_ALTERNATIVO'
      Origin = 'CODIGO_ALTERNATIVO'
    end
    object CDSMovimientos_2COSTO_MONEDA: TIntegerField
      FieldName = 'COSTO_MONEDA'
      Origin = 'COSTO_MONEDA'
    end
    object CDSMovimientos_2SIGNO_MONEDA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Moneda'
      FieldName = 'SIGNO_MONEDA'
      Origin = 'SIGNO_MONEDA'
      Size = 5
    end
    object CDSMovimientos_2COSTO_MONEDA_CURSO: TFloatField
      DisplayLabel = 'Cos.Moneda Local'
      FieldKind = fkCalculated
      FieldName = 'COSTO_MONEDA_CURSO'
      DisplayFormat = ',0.000'
      Calculated = True
    end
    object CDSMovimientos_2UNITARIO_GRAVADO: TFloatField
      DisplayLabel = '$ Unit.Grav'
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2PRESEN_CANTIDAD: TFloatField
      DisplayLabel = 'Pres.Cantid.'
      FieldName = 'PRESEN_CANTIDAD'
      Origin = 'PRESEN_CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2UNITARIO_EXENTO: TFloatField
      DisplayLabel = '$ Unit.Exen'
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2UNITARIO_TOTAL: TFloatField
      DisplayLabel = '$ Unit.Total'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2IVA_UNITARIO: TFloatField
      DisplayLabel = 'Iva Unit.'
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2UNITARIO_FINAL: TFloatField
      DisplayLabel = '$ Unit.Final'
      FieldName = 'UNITARIO_FINAL'
      Origin = 'UNITARIO_FINAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2TOTAL_GRAVADO: TFloatField
      DisplayLabel = 'T.Grava.'
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2TOTAL_EXENTO: TFloatField
      DisplayLabel = 'T.Exento'
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2TOTAL: TFloatField
      DisplayLabel = 'Total Neto'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2IVA_TOTAL: TFloatField
      DisplayLabel = 'Iva Total'
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2TOTAL_FINAL: TFloatField
      DisplayLabel = 'Total Fin.'
      FieldName = 'TOTAL_FINAL'
      Origin = 'TOTAL_FINAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2IVATASA: TFloatField
      DisplayLabel = 'Tasa de Iva'
      FieldName = 'IVATASA'
      Origin = 'IVATASA'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientos_2COSTO_STOCK: TFloatField
      DisplayLabel = 'Costo en Stock'
      FieldName = 'COSTO_STOCK'
      Origin = 'COSTO_STOCK'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSMovimientos_2COTIZACION: TFloatField
      DisplayLabel = 'Cotiz'
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSMovimientos_2EXISTENCIA: TFloatField
      DisplayLabel = 'Existencia'
      FieldName = 'EXISTENCIA'
      Origin = 'EXISTENCIA'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSMovimientos_2PRESENT_UNI_TOTALES: TFloatField
      DisplayLabel = 'Unid.Totales Pres.'
      FieldName = 'PRESENT_UNI_TOTALES'
      Origin = 'PRESENT_UNI_TOTALES'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSMovimientos_2CANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSMovimientos_2MUESTRA_FECHADIA: TStringField
      DisplayLabel = 'Dia (Unit.)'
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRA_FECHADIA'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovimientos_2COSTO_STOCK_FC: TFloatField
      DisplayLabel = 'Costo Fact.'
      FieldName = 'COSTO_STOCK_FC'
      Origin = 'COSTO_STOCK_FC'
    end
    object CDSMovimientos_2MARGEN_VTA: TFloatField
      DisplayLabel = 'Margen Sobre Vta'
      FieldName = 'MARGEN_VTA'
      Origin = 'MARGEN_VTA'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientos_2MARGEN_COSTO: TFloatField
      DisplayLabel = 'Margen Sobtre Costo'
      FieldName = 'MARGEN_COSTO'
      Origin = 'MARGEN_COSTO'
      DisplayFormat = ',0.00'
    end
    object CDSMovimientos_2SIGLAS: TStringField
      FieldName = 'SIGLAS'
      Size = 2
    end
    object CDSMovimientos_2DESCUENTO: TFloatField
      DisplayLabel = 'Dscto'
      FieldName = 'DESCUENTO'
      DisplayFormat = '0.00'
    end
    object CDSMovimientos_2LINEA_NETO: TFloatField
      DisplayLabel = 'Neto x Linea(Sin Dcto)'
      FieldName = 'LINEA_NETO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2LINEA_DESCTO_IMPORTE: TFloatField
      DisplayLabel = 'Linea Dscto $'
      FieldName = 'LINEA_DESCTO_IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2UNITARIO_SINDESCTO: TFloatField
      DisplayLabel = 'Uni.Sin Dscto.'
      FieldName = 'UNITARIO_SINDESCTO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientos_2LISTAPRECIO: TIntegerField
      DisplayLabel = 'List.Precio'
      FieldName = 'LISTAPRECIO'
    end
    object CDSMovimientos_2IVA_STK: TFloatField
      DisplayLabel = 'Iva Stk'
      FieldName = 'IVA_STK'
    end
    object CDSMovimientos_2CATEGORIA_CLIENTE: TStringField
      DisplayLabel = 'Categoria Cliente'
      FieldName = 'CATEGORIA_CLIENTE'
      Size = 30
    end
    object CDSMovimientos_2DETALLE_STK_FACT: TStringField
      DisplayLabel = 'Detalle Stk (Factura)'
      FieldName = 'DETALLE_STK_FACT'
      Size = 45
    end
  end
  object DSMovimientos_2: TDataSource
    DataSet = CDSMovimientos_2
    Left = 416
    Top = 280
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link3
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 1093
    Top = 432
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
      ReportDocument.CreationDate = 45856.359536377310000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
      Active = True
      Component = cxGrid1
      DateFormat = 0
      PageNumberFormat = pnfNumeral
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
      ReportDocument.CreationDate = 45856.359536400470000000
      TimeFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGridVtaVendor
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
      ReportDocument.CreationDate = 45856.359536412030000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.RowFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 877
    Top = 264
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
    object N2: TMenuItem
      Caption = '-'
    end
    object RehacerCamposIni: TMenuItem
      Caption = 'Rehacer Archivo Ini Campos'
      OnClick = RehacerCamposIniClick
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Left = 1064
    Top = 376
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
    Left = 992
    Top = 384
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object CDSClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object CDSClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      FixedChar = True
      Size = 1
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object CDSClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
    end
    object CDSClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object CDSClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object CDSClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
    end
    object CDSClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
    end
    object CDSClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
    end
    object CDSClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
    end
    object CDSClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Size = 15
    end
    object CDSClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object CDSClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
    end
    object CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
    end
    object CDSClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
    end
    object CDSClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object CDSClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object CDSClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object CDSClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Size = 6
    end
    object CDSClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CDSClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Size = 25
    end
    object CDSClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Size = 25
    end
    object CDSClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Size = 40
    end
    object CDSClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Size = 10
    end
    object CDSClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Size = 10
    end
    object CDSClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Size = 10
    end
    object CDSClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesMUESTRATELEDISCADO: TStringField
      FieldName = 'MUESTRATELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object CDSClientesMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSClientesMUESTRACOBRADOR: TStringField
      FieldName = 'MUESTRACOBRADOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
    end
    object CDSClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
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
    Left = 1020
    Top = 456
  end
  object DSZonas: TDataSource
    DataSet = CDSZonas
    Left = 672
    Top = 64
  end
  object CDSZonas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPZonas'
    Left = 736
    Top = 64
    object CDSZonasID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object CDSZonasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object DSPZonas: TDataSetProvider
    DataSet = DMBuscadores.QBuscaZona
    Left = 800
    Top = 64
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    Left = 268
    Top = 96
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = DMBuscadores.QStockCodigo_Detalle
    Left = 196
    Top = 120
  end
  object QVista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT * from VISTA_grillas where origen = :origen')
    Left = 453
    Top = 424
    ParamData = <
      item
        Name = 'origen'
        DataType = ftString
        ParamType = ptInput
      end>
    object QVistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QVistaVISTA: TBlobField
      FieldName = 'VISTA'
      Size = 1
    end
    object QVistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSPVista: TDataSetProvider
    DataSet = QVista
    Left = 504
    Top = 428
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
    OnCalcFields = CDSMovimientos_2CalcFields
    Left = 561
    Top = 427
    object CDSVistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSVistaVISTA: TBlobField
      FieldName = 'VISTA'
      Size = 1
    end
    object CDSVistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSVista: TDataSource
    DataSet = CDSVista
    Left = 616
    Top = 424
  end
  object DSPABC: TDataSetProvider
    DataSet = QABC
    Left = 216
    Top = 404
  end
  object CDSABC: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGOARTICULO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETALLE_STK'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'RUBRO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SUBRUBRO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'RUBRODETALLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'SUBRUBRODETALL'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MARCADETALLE'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CODIGO_ALTERNATIVO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CANTIDAD'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_GRAVADO'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_EXENTO'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SUCURSAL'
        ParamType = ptInput
      end>
    ProviderName = 'DSPABC'
    StoreDefs = True
    Left = 297
    Top = 403
    object CDSABCCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      Size = 8
    end
    object CDSABCDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSABCTOTAL_GRAVADO: TFloatField
      DisplayLabel = 'Total Grav.'
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSABCTOTAL_EXENTO: TFloatField
      DisplayLabel = 'Total Exen.'
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSABCTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.000'
    end
    object CDSABCRUBRO: TStringField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      ProviderFlags = []
      Size = 3
    end
    object CDSABCSUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      ProviderFlags = []
      Size = 5
    end
    object CDSABCRUBRODETALLE: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRODETALLE'
      Origin = 'RUBRODETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSABCSUBRUBRODETALL: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'SUBRUBRODETALL'
      Origin = 'SUBRUBRODETALL'
      ProviderFlags = []
      Size = 45
    end
    object CDSABCPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldKind = fkInternalCalc
      FieldName = 'PORCENTAJE'
      DisplayFormat = ',0.000'
    end
    object CDSABCMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = 'MARCA'
      ProviderFlags = []
      Size = 4
    end
    object CDSABCMARCADETALLE: TStringField
      DisplayLabel = 'Detalle Marca'
      FieldName = 'MARCADETALLE'
      Origin = 'MARCADETALLE'
      ProviderFlags = []
      Size = 25
    end
    object CDSABCCODIGO_ALTERNATIVO: TStringField
      DisplayLabel = 'Cod.Alter.'
      FieldName = 'CODIGO_ALTERNATIVO'
      Origin = 'CODIGO_ALTERNATIVO'
      ProviderFlags = []
    end
    object CDSABCCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
  end
  object DSABC: TDataSource
    DataSet = CDSABC
    Left = 376
    Top = 408
  end
  object PopupMenu2: TPopupMenu
    Left = 772
    Top = 208
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
  end
  object QMovimientos_2: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      
        'SELECT v.*  FROM VTAS_ANUAL_ARTIC_2( :anio, :codigo, :cliente,:s' +
        'uc,:mes,:Tipo_Fecha ) v')
    Left = 148
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'cliente'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'mes'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'TIPO_FECHA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object QMovimientos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      
        'select * from LISTA_ART_VENDIDO(:desde,:hasta,:sucursal,:declara' +
        'do_iva,:rubro,'
      
        '                                :subrubro,:marca,:vend,:tipo,:co' +
        'digo,:zona,:cliente)'
      'order by codigoarticulo,fechacpbte')
    Left = 132
    Top = 344
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
        Name = 'declarado_iva'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'subrubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'vend'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'zona'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'cliente'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QABC: TFDQuery
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
      'SELECT v.codigoarticulo,v.detalle_stk,'
      '       v.rubro,v.subrubro,v.rubrodetalle,v.subrubrodetall,'
      '       v.marca,v.marcadetalle,v.codigo_alternativo,'
      
        '       Sum(v.cantidad) as cantidad,sum(v.total_gravado) as total' +
        '_gravado,'
      
        '       sum(v.total_exento) as total_exento,sum(v.total) as total' +
        '  FROM vtas_anual_artic_abc( :anio,:MES,:sucursal ) v'
      'group by'
      '       v.codigoarticulo,v.detalle_stk,'
      '       v.rubro,v.subrubro,v.rubrodetalle,v.subrubrodetall,'
      '       v.marca,v.marcadetalle,v.codigo_alternativo')
    Left = 116
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'anio'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'MES'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataToXLS1: TDataToXLS
    DataSet = CDSMovimientos
    Columns = <
      item
        DataField = 'CODIGOARTICULO'
        Title = 'Codigo'
      end
      item
        DataField = 'DETALLE'
        Title = 'Detalle'
      end
      item
        DataField = 'FECHACPBTE'
        Title = 'Fecha'
      end
      item
        DataField = 'TIPO_CPBTE'
        Title = 'Tp.Cpbte'
      end
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbte'
      end
      item
        DataField = 'UNIDAD'
        Title = 'Unidad'
      end
      item
        DataField = 'CANTIDAD'
        Title = 'Cantidad'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL'
        Title = 'Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'DESCUENTO'
        Title = 'Descuento'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL_RECALCULADO'
        Title = 'Total Recalculado'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'VENDEDOR'
        Title = 'Vendedor'
      end
      item
        DataField = 'CODIGOCLIENTE'
        Title = 'Codigo Cliente'
      end
      item
        DataField = 'RAZONSOCIAL'
        Title = 'Razon Social'
      end
      item
        DataField = 'UNITARIO_EXENTO'
        Title = 'Unitario Exento'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'UNITARIO_GRAVADO'
        Title = 'Unitario Gravado'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'UNITARIO_TOTAL'
        Title = 'Unitaio Final'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PRES_UNIDAD'
        Title = 'Uni.Pres.'
      end
      item
        DataField = 'PRES_CANTIDAD'
        Title = 'Total x Pres.'
        Alignment = taRightJustify
      end
      item
        DataField = 'TOTAL_FINAL'
        Title = 'Total C/Iva'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL_REC_FINAL'
        Title = 'T.Rec.C/Iva'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'UNITARIO_FINAL'
        Title = 'Uni.C/Iva'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'FISICO'
        Title = 'Fisico'
        DataType = ctDouble
      end
      item
        DataField = 'DET_RUBRO'
        Title = 'Rubro'
      end
      item
        DataField = 'DET_SUBRUBRO'
        Title = 'Sub Rubro'
      end
      item
        DataField = 'CATEGORIA_CLIENTE'
        Title = 'Categoria Cliente'
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
    Left = 944
    Top = 480
  end
  object PopupMenu3: TPopupMenu
    Left = 589
    Top = 104
    object MenuItem1: TMenuItem
      Caption = 'Mostrar Campos '
      OnClick = MostrarCampos1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Cabeceras  Linea'
      OnClick = Columnas1Click
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Action = LimpiarFiltros
    end
  end
  object QVentasArt: TFDQuery
    OnCalcFields = QVentasArtCalcFields
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select  extract (month from  d.fechavta) as mes, extract (year f' +
        'rom d.fechavta) as anio,'
      '        '
      '  d.codigoarticulo,'
      '  sum( (case when d.tipocpbte='#39'NC'#39' then d.cantidad * -1 else'
      
        '                                     d.cantidad * 1 end )) as ca' +
        'ntidad,'
      
        '(extract  (year from d.fechavta) ||  right( '#39'0'#39' ||extract (month' +
        ' from  d.fechavta),2)) as aniomes                               ' +
        '       from fcvtadet d'
      'left join fcvtacab c on c.id_fc=d.id_cabfac'
      
        'where (d.fechavta between :desde and :hasta) and ((c.codigo=:cod' +
        'igo) or (:codigo='#39'******'#39')) and ((d.codigoarticulo=:CodigoArticu' +
        'lo) or (:CodigoArticulo='#39'********'#39'))'
      
        'group by  extract (month from  d.fechavta), extract (year from d' +
        '.fechavta),d.codigoarticulo')
    Left = 492
    Top = 528
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = '01/01/2024'
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = '01/01/2025'
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = '******'
      end
      item
        Name = 'CODIGOARTICULO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = '00000037'
      end>
    object QVentasArtMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVentasArtANIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVentasArtCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QVentasArtCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVentasArtANIOMES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ANIOMES'
      Size = 7
    end
  end
  object QComprasArt: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select extract (month from  dc.fechacompra) as mes, extract (yea' +
        'r from dc.fechacompra) as anio,'
      '  dc.codigoarticulo,'
      '  sum( (case when dc.tipocpbte='#39'NC'#39' then dc.cantidad * -1 else'
      
        '                                     dc.cantidad * 1 end )) as c' +
        'antidad from fccompdet dc'
      'where dc.fechacompra between :desde and :hasta'
      
        'group by extract (month from  dc.fechacompra) , extract (year fr' +
        'om dc.fechacompra),dc.codigoarticulo'
      '')
    Left = 652
    Top = 512
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
    object QComprasArtMES: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'MES'
      Origin = 'MES'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasArtANIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ANIO'
      Origin = 'ANIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QComprasArtCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QComprasArtCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSVentasArt: TDataSource
    DataSet = QVentasArt
    Left = 495
    Top = 580
  end
end

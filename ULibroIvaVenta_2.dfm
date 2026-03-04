inherited FormLibroIvaVenta_2: TFormLibroIvaVenta_2
  Left = 192
  Top = 94
  Caption = 'Libro de Iva Venta'
  ClientHeight = 678
  ClientWidth = 1064
  Visible = True
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1082
  ExplicitHeight = 719
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1064
    Height = 625
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1064
    ExplicitHeight = 625
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label2: TLabel
      Left = 443
      Top = 4
      Font.Color = clWhite
      ParentFont = False
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 443
      ExplicitTop = 4
    end
    inherited Label3: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    object JvDBStatusLabel1: TJvDBStatusLabel [3]
      Left = 953
      Top = 155
      Width = 96
      Height = 13
      DataSource = DatosLibroIvaVta.DSLibroIvaVenta
      Style = lsRecordNo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Anchors = [akTop, akRight]
      ParentFont = False
      Transparent = True
      ExplicitLeft = 912
    end
    inherited rgOrden: TRadioGroup
      Left = 464
      Top = 50
      Width = 174
      Height = 101
      DefaultHeaderFont = False
      Font.Color = clWhite
      HeaderFont.Color = clWhite
      Items.Strings = (
        'por fechas'
        'por razon social'
        'por Tipo + Numero'
        'por Juridicci'#243'n + Fecha + Nro')
      ParentFont = False
      ShowFrame = False
      OnClick = rgPorCtaClick
      ExplicitLeft = 464
      ExplicitTop = 50
      ExplicitWidth = 174
      ExplicitHeight = 101
    end
    inherited dbgTotales: TDBGrid
      Top = 56
      Height = 112
      DataSource = DatosLibroIvaVta.DSTotales
      DrawingStyle = gdsGradient
      PopupMenu = PopupMenu1
      TabOrder = 3
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPO_CPBTE'
          Title.Alignment = taCenter
          Title.Caption = 'Tp'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETO'
          Title.Alignment = taCenter
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TASA'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPUESTO'
          Title.Alignment = taCenter
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRASUCURSAL'
          Title.Alignment = taCenter
          Title.Caption = 'Sucursal'
          Width = 170
          Visible = True
        end>
    end
    inherited UpDown1: TUpDown
      TabOrder = 4
    end
    inherited BitBtn2: TBitBtn
      Left = 763
      Top = 129
      Width = 92
      Height = 22
      DoubleBuffered = True
      TabOrder = 6
      ExplicitLeft = 763
      ExplicitTop = 129
      ExplicitWidth = 92
      ExplicitHeight = 22
    end
    inherited cbSucursales: TJvDBLookupCombo
      Left = 443
      Top = 20
      TabOrder = 7
      OnChange = cbSucursalesChange
      ExplicitLeft = 443
      ExplicitTop = 20
    end
    inherited ceNroHoja: TJvCalcEdit
      StyleElements = [seFont, seClient, seBorder]
      TabOrder = 5
    end
    inherited Desde: TJvDateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Hasta: TJvDateEdit
      Left = 116
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 116
    end
    object pnPie: TPanel
      Left = 0
      Top = 570
      Width = 1064
      Height = 55
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 8
      object Label4: TLabel
        Left = 9
        Top = 2
        Width = 102
        Height = 13
        Caption = 'Tipo de Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object sbReporte: TSpeedButton
        Left = 823
        Top = 17
        Width = 23
        Height = 22
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555555555555555555555555555555555555555555
          555555555555555555555555555555555555555FFFFFFFFFF555550000000000
          55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
          B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
          000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
          555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
          55555575FFF75555555555700007555555555557777555555555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
        OnClick = sbReporteClick
      end
      object Label7: TLabel
        Left = 405
        Top = 3
        Width = 53
        Height = 13
        Caption = 'Coeficiente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 510
        Top = 2
        Width = 92
        Height = 13
        Caption = 'Archivo de Reporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbTipoCpbte: TJvDBLookupCombo
        Left = 9
        Top = 20
        Width = 188
        Height = 21
        DisplayEmpty = 'Sin Selecci'#243'n'
        EmptyValue = 'XX'
        LookupField = 'SIGLA'
        LookupDisplay = 'DETALLE'
        LookupSource = DatosLibroIvaVta.DSTipoCpbte
        TabOrder = 0
      end
      object BitBtn5: TBitBtn
        Left = 220
        Top = 18
        Width = 97
        Height = 25
        Action = AgruparLibro
        Caption = 'Agrupar'
        Glyph.Data = {
          06020000424D0602000000000000760000002800000028000000140000000100
          0400000000009001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333388888888883333333333FFFFFFFFFF3333333330000000000833333
          33338888888888F3333333330FFFFFFFF083333333338F33333F38F333333333
          0FFFF00FF083333333338F33388FF8F3333333330FFF0000F083333333338F33
          8888F8F3333333330FF80000F083333333338F338888F8F3333333330F800000
          0083333333338F38888888F3333333330F000F000083333333338F88838888F3
          333333330F00FFF00083333333338F88333888F3333333330FFFFF0000833333
          33338F33338888FF333333330FFFFF0F0003333333338F33338F888F33333333
          0FFFFF003008333333338FFFFF88388F33333333000000033800333333338888
          88833388F333333333333333330083333333333333333388FF33333333333333
          3330033333333333333333388F33333333333333333303333333333333333333
          8333333333333333333333333333333333333333333333333333333333333333
          33333333333333333333}
        NumGlyphs = 2
        TabOrder = 1
      end
      object edReporte: TEdit
        Left = 510
        Top = 18
        Width = 307
        Height = 21
        TabOrder = 2
        Text = 'edReporte'
      end
      object edCoeficiente: TSpinEdit
        Left = 409
        Top = 18
        Width = 51
        Height = 22
        Increment = 5
        MaxValue = 100
        MinValue = 0
        TabOrder = 3
        Value = 0
      end
    end
    object btDetalles: TButton
      Left = 653
      Top = 129
      Width = 95
      Height = 22
      Caption = 'Detalle Ivas'
      TabOrder = 9
      OnClick = btDetallesClick
    end
    object rgPorCta: TRadioGroup
      Left = 653
      Top = 50
      Width = 174
      Height = 73
      Caption = 'Tipos de Vtas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos Los Tipos'
        'las que son  por Cta y Orden'
        'las que No son por Cta y Orden')
      ParentFont = False
      ShowFrame = False
      TabOrder = 10
      OnClick = BuscarExecute
    end
    object pcMovimientos: TPageControl
      Left = 0
      Top = 174
      Width = 1064
      Height = 396
      ActivePage = pagLibro
      Align = alBottom
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 11
      object pagDebitosCredito: TTabSheet
        Caption = 'Debitos/Creditos'
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1056
          Height = 368
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DatosLibroIvaVta.DSCompIVADebCred
            OptionsSelection.CellSelect = False
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Width = 68
            end
            object cxGrid1DBTableView1ID_IVA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_IVA'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1IVA_DESCRIPCION: TcxGridDBColumn
              DataBinding.FieldName = 'IVA_DESCRIPCION'
              HeaderAlignmentHorz = taCenter
              Width = 108
            end
            object cxGrid1DBTableView1NETO_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_GRAVADO'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
            object cxGrid1DBTableView1NETO_EXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_EXENTO'
              HeaderAlignmentHorz = taCenter
              Width = 87
            end
            object cxGrid1DBTableView1NETO1: TcxGridDBColumn
              DataBinding.FieldName = 'NETO1'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NETO2: TcxGridDBColumn
              DataBinding.FieldName = 'NETO2'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NETO3: TcxGridDBColumn
              DataBinding.FieldName = 'NETO3'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NETO4: TcxGridDBColumn
              DataBinding.FieldName = 'NETO4'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1PORCTASA_1: TcxGridDBColumn
              DataBinding.FieldName = 'PORCTASA_1'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1PORCTASA_2: TcxGridDBColumn
              DataBinding.FieldName = 'PORCTASA_2'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1PORCTASA_3: TcxGridDBColumn
              DataBinding.FieldName = 'PORCTASA_3'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1PORCTASA_4: TcxGridDBColumn
              DataBinding.FieldName = 'PORCTASA_4'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TASA_1: TcxGridDBColumn
              DataBinding.FieldName = 'TASA_1'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TASA_2: TcxGridDBColumn
              DataBinding.FieldName = 'TASA_2'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TASA_3: TcxGridDBColumn
              DataBinding.FieldName = 'TASA_3'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TASA_4: TcxGridDBColumn
              DataBinding.FieldName = 'TASA_4'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1IIBB: TcxGridDBColumn
              DataBinding.FieldName = 'IIBB'
              HeaderAlignmentHorz = taCenter
              Width = 98
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'PERCIVA'
              HeaderAlignmentHorz = taCenter
              Width = 89
            end
            object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Width = 116
            end
            object cxGrid1DBTableView1TOTALCALCULADO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALCALCULADO'
              HeaderAlignmentHorz = taCenter
              Width = 121
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object pagLibro: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object cxGridListado: TcxGrid
          Left = 0
          Top = 0
          Width = 1056
          Height = 368
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          object cxGridListadoDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridListadoDBTableView1DblClick
            DataController.DataSource = DatosLibroIvaVta.DSLibroIvaVenta
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'COL1_REC'
                Column = cxGridListadoDBTableView1COL1_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'COL2_REC'
                Column = cxGridListadoDBTableView1COL2_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'COL3_REC'
                Column = cxGridListadoDBTableView1COL3_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'COL4_REC'
                Column = cxGridListadoDBTableView1COL4_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'COL5_REC'
                Column = cxGridListadoDBTableView1COL5_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'NETO_EXENTO_REC'
                Column = cxGridListadoDBTableView1NETO_EXENTO_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'NETO_GRAVADO_REC'
                Column = cxGridListadoDBTableView1NETO_GRAVADO_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'PERC_IB_REC'
                Column = cxGridListadoDBTableView1PERC_IB_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'TOTAL_REC'
                Column = cxGridListadoDBTableView1TOTAL_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'PERC_IVA_REC'
                Column = cxGridListadoDBTableView1PERC_IB_REC
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Column = cxGridListadoDBTableView1PERC_IVA_REC
              end>
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridListadoDBTableView1SUCURSALVENTA: TcxGridDBColumn
              DataBinding.FieldName = 'SUCURSALVENTA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1TIPO_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO_CPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 32
            end
            object cxGridListadoDBTableView1CLASE_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASE_CPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 32
            end
            object cxGridListadoDBTableView1CODIGO_AFIP: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_AFIP'
              HeaderAlignmentHorz = taCenter
              Width = 38
            end
            object cxGridListadoDBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Width = 93
            end
            object cxGridListadoDBTableView1NRO_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_CPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1RAZON_SOCIAL: TcxGridDBColumn
              DataBinding.FieldName = 'RAZON_SOCIAL'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1MUESTRA_IVA: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRA_IVA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1CONDICION_IVA: TcxGridDBColumn
              DataBinding.FieldName = 'CONDICION_IVA'
              HeaderAlignmentHorz = taCenter
              Width = 33
            end
            object cxGridListadoDBTableView1CUIT: TcxGridDBColumn
              DataBinding.FieldName = 'CUIT'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1NETO_GRAVADO_REC: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_GRAVADO_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1NETO_EXENTO_REC: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_EXENTO_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1COL2_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL2_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1COL3_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL3_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1COL1_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL1_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1COL4_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL4_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1COL5_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL5_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1PERC_IB_REC: TcxGridDBColumn
              DataBinding.FieldName = 'PERC_IB_REC'
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object cxGridListadoDBTableView1PERC_IVA_REC: TcxGridDBColumn
              DataBinding.FieldName = 'PERC_IVA_REC'
              HeaderAlignmentHorz = taCenter
              Width = 74
            end
            object cxGridListadoDBTableView1TOTAL_REC: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1ANULADO: TcxGridDBColumn
              DataBinding.FieldName = 'ANULADO'
              HeaderAlignmentHorz = taCenter
              Width = 68
            end
            object cxGridListadoDBTableView1JURIDICION: TcxGridDBColumn
              DataBinding.FieldName = 'JURIDICION'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1JURIDICION_LOCALIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'JURIDICION_LOCALIDAD'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1JURIDICION_DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'JURIDICION_DETALLE'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridListadoLevel1: TcxGridLevel
            GridView = cxGridListadoDBTableView1
          end
        end
      end
      object Categorias: TTabSheet
        Caption = 'Categorias'
        ImageIndex = 3
        object cxGCategorias: TcxGrid
          Left = 0
          Top = 0
          Width = 1056
          Height = 368
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGCategoriasDBTableView1: TcxGridDBTableView
            DataController.DataSource = DatosLibroIvaVta.DSTotalesPorCategoria
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'MUESTRANETO'
                Column = cxGCategoriasDBTableView1MUESTRANETO
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'MUESTRAIMPUESTO'
                Column = cxGCategoriasDBTableView1MUESTRAIMPUESTO
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'TOTAL'
                Column = cxGCategoriasDBTableView1TOTAL
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'TOTALIIBB'
                Column = cxGCategoriasDBTableView1TOTALIIBB
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'MUESTRANETO'
                Column = cxGCategoriasDBTableView1MUESTRANETO
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'MUESTRAIMPUESTO'
                Column = cxGCategoriasDBTableView1MUESTRAIMPUESTO
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL'
                Column = cxGCategoriasDBTableView1TOTAL
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTALIIBB'
                Column = cxGCategoriasDBTableView1TOTALIIBB
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTALEXENTO'
                Column = cxGCategoriasDBTableView1TOTALEXENTO
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            Styles.GroupByBox = cxStyle1
            Styles.Header = cxStyle1
            object cxGCategoriasDBTableView1MUESTRASUCURSAL: TcxGridDBColumn
              Caption = 'Sucursal:'
              DataBinding.FieldName = 'MUESTRASUCURSAL'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
            end
            object cxGCategoriasDBTableView1MUESTRAINSCRIPCION: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAINSCRIPCION'
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 102
            end
            object cxGCategoriasDBTableView1MUESTRACOMPROBANTE: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRACOMPROBANTE'
              HeaderAlignmentHorz = taCenter
              Width = 115
            end
            object cxGCategoriasDBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 34
            end
            object cxGCategoriasDBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 37
            end
            object cxGCategoriasDBTableView1LETRAFAC: TcxGridDBColumn
              DataBinding.FieldName = 'LETRAFAC'
              HeaderAlignmentHorz = taCenter
              Width = 44
            end
            object cxGCategoriasDBTableView1TASA: TcxGridDBColumn
              DataBinding.FieldName = 'TASA'
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object cxGCategoriasDBTableView1MUESTRANETO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRANETO'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxGCategoriasDBTableView1TOTALEXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALEXENTO'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxGCategoriasDBTableView1TOTALIIBB: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALIIBB'
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxGCategoriasDBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALPERCIVA'
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxGCategoriasDBTableView1MUESTRAIMPUESTO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAIMPUESTO'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGCategoriasDBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
          end
          object cxGCategoriasLevel1: TcxGridLevel
            GridView = cxGCategoriasDBTableView1
          end
        end
      end
      object ListadoDetalles: TTabSheet
        Caption = 'Composicion Detalles'
        ImageIndex = 2
        object dbgCabecera: TDBGrid
          Left = 0
          Top = 0
          Width = 1056
          Height = 216
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DatosLibroIvaVta.DSLibroIvaVenta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
        object dbgDetalle: TDBGrid
          Left = 0
          Top = 216
          Width = 1056
          Height = 83
          Align = alTop
          Anchors = [akLeft, akRight, akBottom]
          DataSource = DatosLibroIvaVta.DSLibroIvaDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 625
    Width = 1064
    Align = alBottom
    ButtonHeight = 29
    ExplicitTop = 625
    ExplicitWidth = 1064
    inherited btConfirma: TBitBtn
      Height = 29
      DoubleBuffered = True
      ExplicitHeight = 29
    end
    inherited btNuevo: TBitBtn
      Height = 29
      DoubleBuffered = True
      ExplicitHeight = 29
    end
    inherited btCancelar: TBitBtn
      Height = 29
      DoubleBuffered = True
      ExplicitHeight = 29
    end
    inherited btModificar: TBitBtn
      Height = 29
      DoubleBuffered = True
      ExplicitHeight = 29
    end
    inherited Pr: TSpeedButton
      Height = 29
      ExplicitHeight = 29
    end
    inherited btBuscar: TBitBtn
      Height = 29
      Caption = 'Iniciar'
      Default = True
      DoubleBuffered = True
      ExplicitHeight = 29
    end
    inherited Ne: TSpeedButton
      Height = 29
      ExplicitHeight = 29
    end
    inherited btBorrar: TBitBtn
      Height = 29
      DoubleBuffered = True
      ExplicitHeight = 29
    end
    inherited btSalir: TBitBtn
      Height = 29
      DoubleBuffered = True
      ExplicitHeight = 29
    end
    inherited BitBtn1: TBitBtn
      Height = 29
      DoubleBuffered = True
      ExplicitHeight = 29
    end
    object BitBtn4: TBitBtn
      Left = 387
      Top = 0
      Width = 96
      Height = 29
      Action = ExortarXLS
      Caption = 'Exortar XLS'
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
      TabOrder = 9
    end
    object BitBtn3: TBitBtn
      Left = 483
      Top = 0
      Width = 76
      Height = 29
      Action = ExportarCiti
      Caption = 'Expor. CITI'
      Enabled = False
      TabOrder = 8
    end
    object btFiltro: TBitBtn
      Left = 559
      Top = 0
      Width = 96
      Height = 29
      Caption = 'Filtro Sucursales'
      TabOrder = 10
      OnClick = btFiltroClick
    end
    object ToolButton1: TToolButton
      Left = 655
      Top = 0
      Width = 21
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object bt3685: TBitBtn
      Left = 676
      Top = 0
      Width = 75
      Height = 29
      Action = Citi3685
      Caption = 'Citi Res.3685'
      Enabled = False
      TabOrder = 11
    end
    object btRICA: TBitBtn
      Left = 751
      Top = 0
      Width = 75
      Height = 29
      Action = PresentacionRICA
      Caption = 'R.I.C.A'
      TabOrder = 12
    end
    object Button1: TButton
      Left = 826
      Top = 0
      Width = 72
      Height = 29
      Caption = 'XML (Vizcay)'
      TabOrder = 13
      OnClick = Button1Click
    end
    object btLibroIvaDigital: TButton
      Left = 898
      Top = 0
      Width = 102
      Height = 29
      Action = LibroIvaDigital
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      WordWrap = True
    end
  end
  inherited Panel1: TPanel
    Top = 655
    Width = 1064
    Align = alBottom
    Color = clGradientInactiveCaption
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 655
    ExplicitWidth = 1064
    inherited sbEstado: TStatusBar
      Width = 975
      SimplePanel = True
      ExplicitWidth = 975
    end
  end
  inherited ActionList1: TActionList
    Left = 360
    Top = 88
    object ExportarCiti: TAction
      Caption = 'Expor. CITI'
    end
    object ExportarCitiMultiple: TAction
      Caption = 'ExportarCitiMultiple'
      OnExecute = ExportarCitiMultipleExecute
    end
    object ExortarXLS: TAction
      Caption = 'Exortar XLS'
      OnExecute = ExortarXLSExecute
    end
    object AgruparLibro: TAction
      Caption = 'Agrupar'
      OnExecute = AgruparLibroExecute
    end
    object Citi3685: TAction
      Caption = 'Citi Res.3685'
      OnExecute = Citi3685Execute
    end
    object PresentacionRICA: TAction
      Caption = 'R.I.C.A'
      Hint = 'Regimend de Informacion de Comprobantes Clase  A (res.3668)'
      OnExecute = PresentacionRICAExecute
    end
    object LibroIvaDigital: TAction
      Caption = 'Libro Iva Digital'
      OnExecute = LibroIvaDigitalExecute
    end
    object LeerTXT: TAction
      Caption = 'Leer Arch. Libro Digital'
      OnExecute = LeerTXTExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 928
    Top = 0
  end
  inherited ImageList1: TImageList
    Left = 360
    Top = 16
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 688
    Top = 240
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 24
    Top = 336
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 536
    Top = 264
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 880
    Top = 64
  end
  inherited QBrowse2: TFDQuery
    Left = 88
    Top = 304
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 144
    Top = 360
  end
  inherited frLibroIva: TfrxReport
    Left = 309
    Top = 534
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frDBTotales: TfrxDBDataset [14]
    UserName = 'frDBTotales'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSTotales
    BCDToCurrency = False
    DataSetOptions = []
    Left = 648
    Top = 416
    FieldDefs = <
      item
        FieldName = 'SUCURSALVENTA'
        FieldAlias = 'SUCURSALVENTA'
      end
      item
        FieldName = 'TIPO_CPBTE'
        FieldAlias = 'TIPO_CPBTE'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'TASA'
        FieldAlias = 'TASA'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'IMPUESTO'
        FieldAlias = 'IMPUESTO'
      end>
  end
  object frDBTitulos: TfrxDBDataset [15]
    UserName = 'frDBTitulos'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSTitulos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 600
    Top = 464
    FieldDefs = <
      item
        FieldName = 'COLUMNA'
        FieldAlias = 'COLUMNA'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end>
  end
  object frDBLibroIva: TfrxDBDataset [16]
    UserName = 'frDBLibroIva'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSLibroIvaVenta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 600
    Top = 528
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'TIPO_CPBTE'
        FieldAlias = 'TIPO_CPBTE'
      end
      item
        FieldName = 'CLASE_CPBTE'
        FieldAlias = 'CLASE_CPBTE'
      end
      item
        FieldName = 'NRO_CPBTE'
        FieldAlias = 'NRO_CPBTE'
      end
      item
        FieldName = 'MUESTRA_IVA'
        FieldAlias = 'MUESTRA_IVA'
      end
      item
        FieldName = 'RAZON_SOCIAL'
        FieldAlias = 'RAZON_SOCIAL'
      end
      item
        FieldName = 'CONDICION_IVA'
        FieldAlias = 'CONDICION_IVA'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'SUCURSALVENTA'
        FieldAlias = 'SUCURSALVENTA'
      end
      item
        FieldName = 'NETO_EXENTO'
        FieldAlias = 'NETO_EXENTO'
      end
      item
        FieldName = 'NETO_GRAVADO'
        FieldAlias = 'NETO_GRAVADO'
      end
      item
        FieldName = 'PERC_IB'
        FieldAlias = 'PERC_IB'
      end
      item
        FieldName = 'PERC_IVA'
        FieldAlias = 'PERC_IVA'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'COL1'
        FieldAlias = 'COL1'
      end
      item
        FieldName = 'COL2'
        FieldAlias = 'COL2'
      end
      item
        FieldName = 'COL3'
        FieldAlias = 'COL3'
      end
      item
        FieldName = 'COL4'
        FieldAlias = 'COL4'
      end
      item
        FieldName = 'COL5'
        FieldAlias = 'COL5'
      end
      item
        FieldName = 'COL6'
        FieldAlias = 'COL6'
      end
      item
        FieldName = 'TOTAL_REC'
        FieldAlias = 'TOTAL_REC'
      end
      item
        FieldName = 'COL1_REC'
        FieldAlias = 'COL1_REC'
      end
      item
        FieldName = 'COL2_REC'
        FieldAlias = 'COL2_REC'
      end
      item
        FieldName = 'COL3_REC'
        FieldAlias = 'COL3_REC'
      end
      item
        FieldName = 'COL4_REC'
        FieldAlias = 'COL4_REC'
      end
      item
        FieldName = 'COL5_REC'
        FieldAlias = 'COL5_REC'
      end
      item
        FieldName = 'NETO_EXENTO_REC'
        FieldAlias = 'NETO_EXENTO_REC'
      end
      item
        FieldName = 'NETO_GRAVADO_REC'
        FieldAlias = 'NETO_GRAVADO_REC'
      end
      item
        FieldName = 'JURIDICION'
        FieldAlias = 'JURIDICION'
      end
      item
        FieldName = 'JURIDICION_LOCALIDAD'
        FieldAlias = 'JURIDICION_LOCALIDAD'
      end
      item
        FieldName = 'JURIDICION_DETALLE'
        FieldAlias = 'JURIDICION_DETALLE'
      end
      item
        FieldName = 'PREFIJO'
        FieldAlias = 'PREFIJO'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'LETRA'
        FieldAlias = 'LETRA'
      end
      item
        FieldName = 'TIPODOCUMENTO'
        FieldAlias = 'TIPODOCUMENTO'
      end
      item
        FieldName = 'ALCICUOTA'
        FieldAlias = 'ALCICUOTA'
      end
      item
        FieldName = 'CUIT_LIMPIO'
        FieldAlias = 'CUIT_LIMPIO'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'CODIGO_AFIP'
        FieldAlias = 'CODIGO_AFIP'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
      end
      item
        FieldName = 'PERC_IB_REC'
        FieldAlias = 'PERC_IB_REC'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'FECHAVTO'
        FieldAlias = 'FECHAVTO'
      end
      item
        FieldName = 'PERC_IVA_REC'
        FieldAlias = 'PERC_IVA_REC'
      end>
  end
  object frDBTotalesPorCategoria: TfrxDBDataset [17]
    UserName = 'frDBTotalesPorCategoria'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSTotalesPorCategoria
    BCDToCurrency = False
    DataSetOptions = []
    Left = 536
    Top = 672
    FieldDefs = <
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'TIPOIVA'
        FieldAlias = 'TIPOIVA'
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
        FieldName = 'LETRAFAC'
        FieldAlias = 'LETRAFAC'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'MUESTRAINSCRIPCION'
        FieldAlias = 'MUESTRAINSCRIPCION'
      end
      item
        FieldName = 'TASA'
        FieldAlias = 'TASA'
      end
      item
        FieldName = 'MUESTRANETO'
        FieldAlias = 'MUESTRANETO'
      end
      item
        FieldName = 'MUESTRAIMPUESTO'
        FieldAlias = 'MUESTRAIMPUESTO'
      end
      item
        FieldName = 'TOTAL_SUMANETO_IMPUESTO'
        FieldAlias = 'TOTAL_SUMANETO_IMPUESTO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'TOTALNETO'
        FieldAlias = 'TOTALNETO'
      end
      item
        FieldName = 'TOTALEXENTO'
        FieldAlias = 'TOTALEXENTO'
      end
      item
        FieldName = 'TOTALIIBB'
        FieldAlias = 'TOTALIIBB'
      end>
  end
  object SaveDialog1: TSaveDialog [18]
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Archivo de Retenciones'
    Left = 320
    Top = 424
  end
  object OpenDialog: TOpenDialog [19]
    DefaultExt = '*.frp'
    Left = 424
    Top = 312
  end
  object DataToXLS: TDataToXLS [20]
    DataSet = DatosLibroIvaVta.CDSLibroIvaVenta
    Columns = <
      item
        DataField = 'FECHA'
        Title = 'FECHA'
      end
      item
        DataField = 'TIPO_CPBTE'
        Title = 'TIPO_CPBTE'
      end
      item
        DataField = 'CLASE_CPBTE'
        Title = 'CLASE_CPBTE'
      end
      item
        DataField = 'NRO_CPBTE'
        Title = 'NRO_CPBTE'
      end
      item
        DataField = 'SUCURSALVENTA'
        Title = 'SUCURSALVENTA'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'RAZON_SOCIAL'
        Title = 'RAZON_SOCIAL'
      end
      item
        DataField = 'MUESTRA_IVA'
        Title = 'MUESTRA_IVA'
      end
      item
        DataField = 'CUIT'
        Title = 'CUIT'
      end
      item
        DataField = 'NETO_GRAVADO_REC'
        Title = 'Neto_Gravado'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'NETO_EXENTO_REC'
        Title = 'Neto_Exento'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL1_REC'
        Title = 'iva1'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL2_REC'
        Title = 'iva2'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL3_REC'
        Title = 'iva3'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL4_REC'
        Title = 'Iva4'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL5_REC'
        Title = 'iva5'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PERC_IB_REC'
        Title = 'perc_IIBB'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PERC_IVA_REC'
        Title = 'Perc_IVA'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL_REC'
        Title = 'Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'ANULADO'
        Title = 'ANULADO'
      end
      item
        DataField = 'JURIDICION'
        Title = 'JURICCION'
      end
      item
        DataField = 'JURIDICION_LOCALIDAD'
        Title = 'JURIDICCION LOCALIDAD'
      end
      item
        DataField = 'LETRA'
        Title = 'Letra'
      end
      item
        DataField = 'PREFIJO'
        Title = 'Prefijo'
      end
      item
        DataField = 'NUMERO'
        Title = 'Numero'
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
    Left = 704
    Top = 360
  end
  object frDBDebitos: TfrxDBDataset [21]
    UserName = 'frDBDebitos'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSDebitos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 656
    Top = 464
    FieldDefs = <
      item
        FieldName = 'CONDICION_IVA'
        FieldAlias = 'CONDICION_IVA'
      end
      item
        FieldName = 'PERCEPIIBB'
        FieldAlias = 'PERCEPIIBB'
      end
      item
        FieldName = 'NETOGRAVADO'
        FieldAlias = 'NETOGRAVADO'
      end
      item
        FieldName = 'MUESTRA_IVA'
        FieldAlias = 'MUESTRA_IVA'
      end
      item
        FieldName = 'EXENTO'
        FieldAlias = 'EXENTO'
      end
      item
        FieldName = 'IVA'
        FieldAlias = 'IVA'
      end
      item
        FieldName = 'IVA1'
        FieldAlias = 'IVA1'
      end
      item
        FieldName = 'IVA2'
        FieldAlias = 'IVA2'
      end
      item
        FieldName = 'IVA3'
        FieldAlias = 'IVA3'
      end
      item
        FieldName = 'IVA4'
        FieldAlias = 'IVA4'
      end
      item
        FieldName = 'TASA1'
        FieldAlias = 'TASA1'
      end
      item
        FieldName = 'TASA2'
        FieldAlias = 'TASA2'
      end
      item
        FieldName = 'TASA3'
        FieldAlias = 'TASA3'
      end
      item
        FieldName = 'TASA4'
        FieldAlias = 'TASA4'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'PERCEPIVA'
        FieldAlias = 'PERCEPIVA'
      end>
  end
  object frDBCreditos: TfrxDBDataset [22]
    UserName = 'frDBCreditos'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSCreditos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 664
    Top = 520
    FieldDefs = <
      item
        FieldName = 'CONDICION_IVA'
        FieldAlias = 'CONDICION_IVA'
      end
      item
        FieldName = 'MUESTRA_IVA'
        FieldAlias = 'MUESTRA_IVA'
      end
      item
        FieldName = 'EXENTO'
        FieldAlias = 'EXENTO'
      end
      item
        FieldName = 'NETOGRAVADO'
        FieldAlias = 'NETOGRAVADO'
      end
      item
        FieldName = 'PERCEPIIBB'
        FieldAlias = 'PERCEPIIBB'
      end
      item
        FieldName = 'IVA'
        FieldAlias = 'IVA'
      end
      item
        FieldName = 'IVA1'
        FieldAlias = 'IVA1'
      end
      item
        FieldName = 'IVA2'
        FieldAlias = 'IVA2'
      end
      item
        FieldName = 'IVA3'
        FieldAlias = 'IVA3'
      end
      item
        FieldName = 'IVA4'
        FieldAlias = 'IVA4'
      end
      item
        FieldName = 'TASA1'
        FieldAlias = 'TASA1'
      end
      item
        FieldName = 'TASA2'
        FieldAlias = 'TASA2'
      end
      item
        FieldName = 'TASA3'
        FieldAlias = 'TASA3'
      end
      item
        FieldName = 'TASA4'
        FieldAlias = 'TASA4'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end>
  end
  object frxPDFExport1: TfrxPDFExport [23]
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
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
    Left = 872
    Top = 424
  end
  inherited DSSucursal: TDataSource
    Left = 61
    Top = 398
  end
  inherited CDSSucursal: TClientDataSet
    Left = 288
    Top = 272
    object CDSSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
    end
    object CDSSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
    end
    object CDSSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object CDSSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
    object CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSSucursalGENERA_XML_COMUN: TStringField
      FieldName = 'GENERA_XML_COMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSSucursalHOST: TStringField
      FieldName = 'HOST'
      Size = 250
    end
    object CDSSucursalCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Size = 100
    end
    object CDSSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSSucursalRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  inherited DSPSucursal: TDataSetProvider
    Left = 216
    Top = 264
  end
  inherited spGeneraLibro_FD: TFDStoredProc
    Left = 520
    Top = 432
  end
  object DataToXLSHolister: TDataToXLS [28]
    DataSet = DatosLibroIvaVta.CDSLibroIvaVenta
    Columns = <
      item
        DataField = 'FECHA'
        Title = 'Fecha'
      end
      item
        DataField = 'TIPO_CPBTE'
        Title = 'Comprobante'
      end
      item
        DataField = 'LETRA'
        Title = 'Tipo'
      end
      item
        DataField = 'PREFIJO'
        Title = 'Prefijo'
      end
      item
        DataField = 'NUMERO'
        Title = 'Numero'
      end
      item
        DataField = 'RAZON_SOCIAL'
        Title = 'Razon Social'
      end
      item
        DataField = 'TIPODOCUMENTO'
        Title = 'Tipo Doc'
      end
      item
        DataField = 'CUIT_LIMPIO'
        Title = 'Cuit'
      end
      item
        DataField = 'MUESTRA_IVA'
        Title = 'Condicion Fisc'
      end
      item
        DataField = 'NETO_GRAVADO_REC'
        Title = 'Neto Gravado'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'ALICUOTA'
        Title = 'Alicuota'
        DataType = ctDouble
      end
      item
        DataField = 'IVALIQ'
        Title = 'Iva Liq'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'IVADEBITO'
        Title = 'Iva Debito'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'NETO_EXENTO_REC'
        Title = 'Neto Exento'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL_REC'
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
    Left = 800
    Top = 352
  end
  object PopupMenu1: TPopupMenu [29]
    Left = 280
    Top = 88
    object ExcelHolister1: TMenuItem
      Caption = 'Excel Holister'
      OnClick = ExcelHolister1Click
    end
  end
  object frxDBEmpresa: TfrxDBDataset [30]
    UserName = 'frDBEmpresa'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 64
    Top = 584
    FieldDefs = <
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'ACTIVIDAD'
        FieldAlias = 'ACTIVIDAD'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'CORREO'
        FieldAlias = 'CORREO'
      end
      item
        FieldName = 'TELEFONO1'
        FieldAlias = 'TELEFONO1'
      end
      item
        FieldName = 'TELEFONO2'
        FieldAlias = 'TELEFONO2'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'CONDICIONIVA'
        FieldAlias = 'CONDICIONIVA'
      end
      item
        FieldName = 'NRO_AGTE_RET_INGBRUTOS'
        FieldAlias = 'NRO_AGTE_RET_INGBRUTOS'
      end
      item
        FieldName = 'LOGO'
        FieldAlias = 'LOGO'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'NRO_AGTE_RET_GANANCIA'
        FieldAlias = 'NRO_AGTE_RET_GANANCIA'
      end
      item
        FieldName = 'AG_RET_GANANCIA'
        FieldAlias = 'AG_RET_GANANCIA'
      end
      item
        FieldName = 'AG_RET_ING_BRUTOS'
        FieldAlias = 'AG_RET_ING_BRUTOS'
      end
      item
        FieldName = 'AG_PERCEPCION_ING_BRUTOS'
        FieldAlias = 'AG_PERCEPCION_ING_BRUTOS'
      end
      item
        FieldName = 'TASA_PERCEPCION_IB'
        FieldAlias = 'TASA_PERCEPCION_IB'
      end
      item
        FieldName = 'MINO_IMP_PERCEP_IB'
        FieldAlias = 'MINO_IMP_PERCEP_IB'
      end
      item
        FieldName = 'PROVINCIA'
        FieldAlias = 'PROVINCIA'
      end
      item
        FieldName = 'TASA_RET_IIBB'
        FieldAlias = 'TASA_RET_IIBB'
      end
      item
        FieldName = 'MINIMO_IMP_RET_IIBB'
        FieldAlias = 'MINIMO_IMP_RET_IIBB'
      end>
  end
  object frDBDIIBBJuridicion: TfrxDBDataset [31]
    UserName = 'frDBDIIBBJuridicion'
    CloseDataSource = False
    DataSet = DatosLibroIvaVta.CDSIIBBJuridiccion
    BCDToCurrency = False
    DataSetOptions = []
    Left = 88
    Top = 488
    FieldDefs = <
      item
        FieldName = 'JURIDICION'
      end
      item
        FieldName = 'JURIDICION_DETALLE'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRAJURIDICCION'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'NETO'
      end
      item
        FieldName = 'IMPUESTO'
      end
      item
        FieldName = 'NETO_CAL'
      end
      item
        FieldName = 'TIPO_CPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'IMPUESTO_CAL'
      end
      item
        FieldName = 'IMPORTEIVA'
      end
      item
        FieldName = 'IMPORTEIVA_CAL'
      end>
  end
  object dxComponentPrinter1: TdxComponentPrinter [32]
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 900
    Top = 258
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGridListado
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.CenterOnPageH = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6550
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 10000
      PrinterPage.Margins.Right = 10000
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Libro IVA')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -16
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 46028.426328680560000000
      TimeFormat = 0
      OptionsExpanding.ExpandCards = True
      OptionsExpanding.ExpandGroupRows = True
      OptionsExpanding.ExpandMasterRows = True
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsPreview.Visible = False
      OptionsSize.AutoWidth = True
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object PopupMenu2: TPopupMenu [33]
    Left = 636
    Top = 282
    object ImiprimirArt1: TMenuItem
      Caption = 'Imiprimir'
      OnClick = ImiprimirArt1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExportaraExcelArticulos1: TMenuItem
      Caption = 'Exportar a Excel'
      OnClick = ExportaraExcelArticulos1Click
    end
    object ExportaraExcelcon1: TMenuItem
      Caption = 'Exportar a Excel  Listado+Categorias'
      OnClick = ExportaraExcelcon1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository [34]
    Left = 65528
    Top = 32
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
  inherited spCierreFiscal_FD: TFDStoredProc
    Left = 424
    Top = 436
  end
  inherited Query4_FD: TFDQuery
    Top = 216
  end
  object frDBSucursal: TfrxDBDataset
    UserName = 'frDBSucursal'
    CloseDataSource = False
    DataSet = CDSSucursal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 232
    Top = 488
    FieldDefs = <
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'TELEFONO1'
        FieldAlias = 'TELEFONO1'
      end
      item
        FieldName = 'TELEFONO2'
        FieldAlias = 'TELEFONO2'
      end
      item
        FieldName = 'RECARGO'
        FieldAlias = 'RECARGO'
      end
      item
        FieldName = 'APLICA_PERCEPCION_IIBB'
        FieldAlias = 'APLICA_PERCEPCION_IIBB'
      end
      item
        FieldName = 'GENERA_XML_COMUN'
        FieldAlias = 'GENERA_XML_COMUN'
      end
      item
        FieldName = 'HOST'
        FieldAlias = 'HOST'
      end
      item
        FieldName = 'CERTIFICADO_ELEC'
        FieldAlias = 'CERTIFICADO_ELEC'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end>
  end
end

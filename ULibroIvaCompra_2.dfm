inherited FormLibroIvaCompra_2: TFormLibroIvaCompra_2
  Left = 116
  Top = 78
  Caption = 'Libro de Iva Compra'
  ClientHeight = 761
  ClientWidth = 1007
  Visible = True
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1025
  ExplicitHeight = 802
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1007
    Height = 708
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1007
    ExplicitHeight = 708
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label2: TLabel
      Left = 455
      Top = 3
      Font.Color = clWhite
      ParentFont = False
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 455
      ExplicitTop = 3
    end
    inherited Label3: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    object JvDBStatusLabel1: TJvDBStatusLabel [3]
      Left = 888
      Top = 163
      Width = 96
      Height = 13
      DataSource = DatosLibroIvaCompra.DSListado
      Style = lsRecordNo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Anchors = [akTop, akRight]
      ParentFont = False
      Transparent = True
      ExplicitLeft = 834
    end
    object spClintes: TSpeedButton [4]
      Left = 472
      Top = 146
      Width = 23
      Height = 22
      Hint = 'Filtrar por Proveedor'
      Flat = True
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000000000000031
        1F0000193500001B3800001C3A003D343A007B3B2A00004B0000004E00000055
        030001451100006B0000006F0000007A0000007D0000007D0500074E3C000778
        210000234400012444000025490000224C0000274C0004274D0001284A000129
        4F00062D4D000034410001374C00002A5000012D5200032D5600012F58000031
        5A0003335E0000355D00113A5E00013160000235630005376500023A6700053F
        6700013B6C00033676000148510006416F00054C6D001E44670013466D001C41
        6D0001457900224B70002D497800286C60008C1C0000972400009D280000D346
        1C00E3421A00D54C2800DD492B00DD5F3000ED452300E34B2100E0542500FB5A
        2800FF4D3400FF4F3B00FF623C00FF6F4300FF674E00FF6E4F00FF764F000082
        0000059C0F000998140009951C000A991E00098F280005982D00228E31000DB2
        2500459546001DD7570026E65D000C4B83000B4E8A000D4E9200094F9700094D
        9F001C5C9C00335C910000639E000744A3000E4FB1000F57B4001166AF001363
        B2001C6EB6001060BD00094CD3000B63DA001D78D900366FC100247DCC00237B
        D1000C62F0000E63FA001465F800106DFE001773FF00127AFF00FF00FF00008A
        D0002987D9001E81FF002088FF00218CFF002B95F2002391FF002596FF002898
        FF00289DFF002D9EFF002DA2FF002FA5FF0030A7FF0032AAFF0035AEFF0035B2
        FF003AB7FF0039B8FF006386CA00DAA68600EBB8980091C98C00ADCC9F00FFE1
        CE00000000000000000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000707070707070
        7070703636363636363870707070707070373642394446433A36707070707070
        70363C3F863D48473E3670707070707070363B41898540453670707008080808
        080836065B673405707070080C494A4C0C0D0A5D6A6D6F65177070080D515350
        520D2C6E7578797963041C084B544D88874F5878797D7D7E6617310109111084
        354E2E787F7F835519142F1770586C6B641B70617976622D711933175F737978
        745E701422273071277024255769817D78742B700202131C7070172A195A727F
        7E78147070707070707019715C1E1E6882567070707070707070223271712227
        6125707070707070707070192020702213707070707070707070}
      ParentShowHint = False
      ShowHint = True
      OnClick = spClintesClick
    end
    object pcDetalles: TAdvPageControl [5]
      Left = 0
      Top = 182
      Width = 1007
      Height = 482
      ActivePage = pagLibroIva
      ActiveFont.Charset = DEFAULT_CHARSET
      ActiveFont.Color = clWindowText
      ActiveFont.Height = -11
      ActiveFont.Name = 'Tahoma'
      ActiveFont.Style = []
      Align = alBottom
      Anchors = [akTop, akRight, akBottom]
      DoubleBuffered = True
      TabBackGroundColor = clBtnFace
      TabMargin.RightMargin = 0
      TabOverlap = 0
      Version = '2.1.3.1'
      PersistPagesState.Location = plRegistry
      PersistPagesState.Enabled = False
      TabOrder = 12
      object pagImpuesto: TAdvTabSheet
        Caption = 'Creditos/Debitos'
        Color = clMenuHighlight
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 999
          Height = 454
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DatosLibroIvaCompra.DSCompIvaDebCredito
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1ID_IVA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_IVA'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1IVA_DESCRIPCION: TcxGridDBColumn
              DataBinding.FieldName = 'IVA_DESCRIPCION'
              HeaderAlignmentHorz = taCenter
              Width = 103
            end
            object cxGrid1DBTableView1NETO_GRAVADO: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_GRAVADO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NETO_EXENTO: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_EXENTO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NETO_MONOTRIBUTO: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_MONOTRIBUTO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NETO_EXCLUIDO: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_EXCLUIDO'
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
            object cxGrid1DBTableView1IIBB: TcxGridDBColumn
              DataBinding.FieldName = 'IIBB'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1PERIVA: TcxGridDBColumn
              DataBinding.FieldName = 'PERIVA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TOTALCALCULADO: TcxGridDBColumn
              DataBinding.FieldName = 'TOTALCALCULADO'
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object cxGrid1DBTableView1NETO_1: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_1'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NETO_2: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_2'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NETO_3: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_3'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NETO_4: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_4'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object pgArticulos: TAdvTabSheet
        Caption = 'Articulos'
        Color = clMenuHighlight
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGArticulos: TcxGrid
          Left = 0
          Top = 0
          Width = 999
          Height = 424
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          object cxGArticulosDBTableView1: TcxGridDBTableView
            DataController.DataSource = DatosLibroIvaCompra.DSDetalleMercaderia
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Position = spFooter
                FieldName = 'IMPORTE_REC'
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00;,0.00;-'
                Kind = skSum
                FieldName = 'IMPORTE_REC'
                Column = cxGArticulosDBTableView1IMPORTE_REC
              end>
            DataController.Summary.SummaryGroups = <
              item
                SummaryItems = <
                  item
                    Kind = skSum
                    Position = spFooter
                    FieldName = 'IMPORTE_REC'
                  end>
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGArticulosDBTableView1DETALLE_RUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_RUBRO'
              Options.CellMerging = True
              Width = 226
            end
            object cxGArticulosDBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_SUBRUBRO'
              Options.CellMerging = True
            end
            object cxGArticulosDBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              Width = 92
            end
            object cxGArticulosDBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
            end
            object cxGArticulosDBTableView1CLASE_ARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CLASE_ARTICULO'
            end
            object cxGArticulosDBTableView1CANTIDAD_REC: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD_REC'
            end
            object cxGArticulosDBTableView1CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
            end
            object cxGArticulosDBTableView1IMPORTE_REC: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE_REC'
            end
            object cxGArticulosDBTableView1IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
            end
          end
          object cxGArticulosLevel1: TcxGridLevel
            GridView = cxGArticulosDBTableView1
          end
        end
        object pnPieArt: TPanel
          Left = 0
          Top = 424
          Width = 999
          Height = 30
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            999
            30)
          object btMercaderia: TButton
            Left = 850
            Top = 6
            Width = 131
            Height = 19
            Anchors = [akTop, akRight]
            Caption = 'Traer Det.de Articulos'
            TabOrder = 0
            OnClick = btMercaderiaClick
          end
        end
      end
      object pagLibroIva: TAdvTabSheet
        Caption = 'Listado'
        Color = clMenuHighlight
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGridListado: TcxGrid
          Left = 0
          Top = 0
          Width = 999
          Height = 454
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          object cxGridListadoDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridListadoDBTableView1DblClick
            OnCellDblClick = cxGridListadoDBTableView1CellDblClick
            DataController.DataSource = DatosLibroIvaCompra.DSListado
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'COL1_REC'
                Column = cxGridListadoDBTableView1COL1_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'COL2_REC'
                Column = cxGridListadoDBTableView1COL2_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'COL3_REC'
                Column = cxGridListadoDBTableView1COL3_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'COL4_REC'
                Column = cxGridListadoDBTableView1COL4_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'COL5_REC'
                Column = cxGridListadoDBTableView1COL5_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'COL6_REC'
                Column = cxGridListadoDBTableView1COL6_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'COL7_REC'
                Column = cxGridListadoDBTableView1COL7_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'NETO_EXCLUIDO_REC'
                Column = cxGridListadoDBTableView1NETO_EXCLUIDO_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'NETO_EXENTO_REC'
                Column = cxGridListadoDBTableView1NETO_EXENTO_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'NETO_GRAVADO_REC'
                Column = cxGridListadoDBTableView1NETO_GRAVADO_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'NETO_MONOTRIBUTO_REC'
                Column = cxGridListadoDBTableView1NETO_MONOTRIBUTO_REC
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL_REC'
                Column = cxGridListadoDBTableView1TOTAL_REC
              end>
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridListadoDBTableView1SUCURSALCOMPRA: TcxGridDBColumn
              DataBinding.FieldName = 'SUCURSALCOMPRA'
              HeaderAlignmentHorz = taCenter
              Width = 51
            end
            object cxGridListadoDBTableView1FECHA_FACTURA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_FACTURA'
              HeaderAlignmentHorz = taCenter
              Width = 74
            end
            object cxGridListadoDBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxGridListadoDBTableView1TIPO_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO_CPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 23
            end
            object cxGridListadoDBTableView1CLASE_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASE_CPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 26
            end
            object cxGridListadoDBTableView1CODIGO_AFIP: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_AFIP'
              HeaderAlignmentHorz = taCenter
              Width = 30
            end
            object cxGridListadoDBTableView1NRO_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_CPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 108
            end
            object cxGridListadoDBTableView1RAZON_SOCIAL: TcxGridDBColumn
              DataBinding.FieldName = 'RAZON_SOCIAL'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1CONDICION_IVA: TcxGridDBColumn
              DataBinding.FieldName = 'CONDICION_IVA'
              HeaderAlignmentHorz = taCenter
              Width = 56
            end
            object cxGridListadoDBTableView1MUESTRA_IVA: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRA_IVA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1CUIT: TcxGridDBColumn
              DataBinding.FieldName = 'CUIT'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1NETO_EXCLUIDO_REC: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_EXCLUIDO_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1NETO_EXENTO_REC: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_EXENTO_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1NETO_GRAVADO_REC: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_GRAVADO_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1NETO_MONOTRIBUTO_REC: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_MONOTRIBUTO_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1COL1_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL1_REC'
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
            object cxGridListadoDBTableView1COL4_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL4_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1COL5_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL5_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1COL6_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL6_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1COL7_REC: TcxGridDBColumn
              DataBinding.FieldName = 'COL7_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1TOTAL_REC: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_REC'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridListadoDBTableView1LOTEAFIP: TcxGridDBColumn
              DataBinding.FieldName = 'LOTEAFIP'
            end
          end
          object cxGridListadoLevel1: TcxGridLevel
            GridView = cxGridListadoDBTableView1
          end
        end
      end
      object pagContable: TAdvTabSheet
        Caption = 'Mov.Contable'
        Color = clMenuHighlight
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGContable: TcxGrid
          Left = 0
          Top = 0
          Width = 999
          Height = 427
          Align = alClient
          PopupMenu = PopupMenu3
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'McSkin'
          object cxGridDBTableView1: TcxGridDBTableView
            DataController.DataSource = DSGastosFcCompra
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL'
                Column = cxGridDBTableView1TOTAL
              end>
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView1CTA_CONTABLE_COD: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE_COD'
              HeaderAlignmentHorz = taCenter
              Width = 164
            end
            object cxGridDBTableView1CTA_CONTABLE: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE'
              HeaderAlignmentHorz = taCenter
              Width = 384
            end
            object cxGridDBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Width = 114
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object pnPieContable: TPanel
          Left = 0
          Top = 427
          Width = 999
          Height = 27
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            999
            27)
          object btGastos: TButton
            Left = 847
            Top = 6
            Width = 141
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'Traer Movimientos'
            TabOrder = 0
            OnClick = btGastosClick
          end
        end
      end
      object pagAsiento: TAdvTabSheet
        Caption = 'Asiento Borrador'
        Color = clMenuHighlight
        ColorTo = clNone
        TabColor = clBtnFace
        TabColorTo = clNone
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgAsientos: TcxGrid
          Left = 0
          Top = 0
          Width = 999
          Height = 448
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu4
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object dbgAsientosDBTableView1: TcxGridDBTableView
            DataController.DataSource = DSBorradorAsiento
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Column = dbgAsientosDBTableView1DEBE
              end
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Column = dbgAsientosDBTableView1HABER
              end>
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.FocusRect = False
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            object dbgAsientosDBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 657
            end
            object dbgAsientosDBTableView1DEBE: TcxGridDBColumn
              DataBinding.FieldName = 'DEBE'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 115
            end
            object dbgAsientosDBTableView1HABER: TcxGridDBColumn
              DataBinding.FieldName = 'HABER'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 115
            end
          end
          object dbgAsientosLevel1: TcxGridLevel
            GridView = dbgAsientosDBTableView1
          end
        end
      end
    end
    object chbGastosBco: TCheckBox [6]
      Left = 726
      Top = 111
      Width = 176
      Height = 17
      Caption = 'Incluir Gastos Bancarios'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 10
    end
    object chbResumeTC: TCheckBox [7]
      Left = 726
      Top = 88
      Width = 187
      Height = 17
      Caption = 'Incluir Resum de T.de Creditos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 9
    end
    inherited rgOrden: TRadioGroup
      Left = 472
      Width = 176
      Font.Color = clWhite
      ParentFont = False
      ShowFrame = False
      TabOrder = 6
      OnClick = RadioGroup1Click
      ExplicitLeft = 472
      ExplicitWidth = 176
    end
    inherited dbgTotales: TDBGrid
      Left = 16
      Top = 46
      Height = 130
      TabStop = False
      DataSource = DatosLibroIvaCompra.DSTotales
      DrawingStyle = gdsGradient
      TabOrder = 5
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Caption = 'Tp'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETO'
          Title.Alignment = taCenter
          Title.Caption = 'Neto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TASA'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPUESTO'
          Title.Alignment = taCenter
          Title.Caption = 'Impuesto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRASUCURSAL'
          Title.Alignment = taCenter
          Title.Caption = 'Sucursal'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 170
          Visible = True
        end>
    end
    inherited UpDown1: TUpDown
      TabOrder = 2
    end
    inherited BitBtn2: TBitBtn
      Left = 834
      Top = 11
      DoubleBuffered = True
      TabStop = False
      ExplicitLeft = 834
      ExplicitTop = 11
    end
    inherited cbSucursales: TJvDBLookupCombo
      Left = 455
      Top = 20
      TabOrder = 4
      TabStop = False
      OnChange = cbSucursalesChange
      ExplicitLeft = 455
      ExplicitTop = 20
    end
    inherited ceNroHoja: TJvCalcEdit
      TabStop = False
      StyleElements = [seFont, seClient, seBorder]
      TabOrder = 3
    end
    inherited Desde: TJvDateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Hasta: TJvDateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    object chDetallePercIIBB: TCheckBox
      Left = 726
      Top = 42
      Width = 176
      Height = 17
      Caption = 'Detallar Per.IIBB en FC Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object chbLiqTC: TCheckBox
      Left = 726
      Top = 65
      Width = 152
      Height = 17
      Caption = 'Incluir Liq de T.de Creditos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 11
    end
    object pnPie: TPanel
      Left = 0
      Top = 664
      Width = 1007
      Height = 44
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 13
      object Label5: TLabel
        Left = 521
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
      object sbReporte: TSpeedButton
        Left = 840
        Top = 17
        Width = 23
        Height = 21
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
      object edReporte: TEdit
        Left = 521
        Top = 17
        Width = 313
        Height = 21
        TabStop = False
        TabOrder = 0
        Text = 'edReporte'
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 708
    Width = 1007
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 708
    ExplicitWidth = 1007
    inherited btConfirma: TBitBtn
      Height = 28
      DoubleBuffered = True
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Height = 28
      DoubleBuffered = True
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Height = 28
      DoubleBuffered = True
      ParentFont = False
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Height = 28
      DoubleBuffered = True
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Height = 28
      DoubleBuffered = True
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Height = 28
      DoubleBuffered = True
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Height = 28
      DoubleBuffered = True
      ParentFont = False
      ExplicitHeight = 28
    end
    inherited BitBtn1: TBitBtn
      Height = 28
      DoubleBuffered = True
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 387
      Top = 0
      Width = 38
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn3: TBitBtn
      Left = 425
      Top = 0
      Width = 96
      Height = 28
      Action = ExportarXLS
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
      TabOrder = 8
    end
    object ToolButton2: TToolButton
      Left = 521
      Top = 0
      Width = 24
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object bt3685: TBitBtn
      Left = 545
      Top = 0
      Width = 75
      Height = 28
      Action = CITI3685
      Caption = 'CITI 3685'
      TabOrder = 9
    end
    object chbFechaFc: TCheckBox
      Left = 620
      Top = 0
      Width = 157
      Height = 28
      Caption = 'Tomar Fecha Fc Al Generar'
      TabOrder = 10
    end
    object btLibroIvaDigital: TButton
      Left = 777
      Top = 0
      Width = 136
      Height = 28
      Action = LibroIvaDigital
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  inherited Panel1: TPanel
    Top = 738
    Width = 1007
    Align = alBottom
    Color = clGradientInactiveCaption
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 738
    ExplicitWidth = 1007
    inherited DBStatusLabel1: TJvDBStatusLabel
      Visible = True
    end
    inherited sbEstado: TStatusBar
      Width = 918
      SimplePanel = True
      ExplicitWidth = 918
    end
  end
  object pnProveedores: TJvPanel [3]
    Left = 117
    Top = 206
    Width = 474
    Height = 432
    Movable = True
    FlatBorderColor = clYellow
    Anchors = [akLeft, akTop, akBottom]
    BevelOuter = bvNone
    BorderWidth = 1
    BorderStyle = bsSingle
    Caption = 'pnClientes'
    Color = clGreen
    ParentBackground = False
    TabOrder = 3
    Visible = False
    DesignSize = (
      470
      428)
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 468
      Height = 21
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object Label7: TLabel
        Left = 200
        Top = 3
        Width = 62
        Height = 14
        Caption = 'Proveedores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
      end
    end
    object lbProveedores: TCheckListBox
      Left = 1
      Top = 22
      Width = 468
      Height = 358
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 17
      TabOrder = 1
      OnClick = lbProveedoresClick
    end
    object btSelec: TBitBtn
      Left = 377
      Top = 386
      Width = 33
      Height = 25
      Hint = 'Seleccionar Todos'
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF00761E
        07007F1E0100491F3F00811E0000111FB8000566950003689A00086B9A000268
        A3000274A9000479AF00011FFA000120FA00092AFA000C2EFA00284BFB002B4D
        FB003557FB003859FB003D5DFB000788BC00108BBC000386C100058BC7000791
        C5001CAAD30031B5D30030B0DA006480FB00758EFC0012CBFE0030C9E90020CE
        FE003FE3FE0048CFF20054DEFF0055F6FE005FFEFF0074E0F80068F6FF0073FA
        FE0078FBFE007FFEFF008097FC00A5B6FC00AABAFC0083FAFB0089FBFE0092FF
        FF009FFBFE0098FFFF00A7E9F300A3F3FF00A0FFFF00B6F2FF00B7FFFF00CAD4
        FE00CED7FE00DCE3FE00C6FFFF00DAF8FF00DCFFFF00EAEEFE00E5FAFF00EDFA
        FC00F0FFFF00F8FAFE00FBFFFF00FEFEFE000000000000000000000000000000
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
        04040404040404040000000006060606044545451E2D45040000000A201F2124
        0445451D0C14450400000A29221F21240439100C100D390400000A29221F2124
        04140E2E3F0E130400000A29221F2124043B3945452C0C0300000A3235373D40
        044545454545140C00000A341A19151604040404040401050C000A1B221F2124
        271C0907000000000C0C0A29221F2124271C170600000000000C0A29221F2124
        271C17060000000000000A29221F2124271C17060000000000000A2A2825262A
        302318060000000000000A45423C363232312506000000000000000B423D3832
        302F080000000000000000000A0A0A0A0A0A0000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btSelecClick
    end
    object btUnSelec: TBitBtn
      Left = 416
      Top = 386
      Width = 33
      Height = 25
      Hint = 'Deseleccionar Todos'
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        B1908EB1908EB1908EB1908EB1908EB1908EB1908EB1908EB1908EB1908EB190
        8EB1908EFF00FFFF00FFFF00FFFF00FFB1908EFEFBFAFEFBFAFEFBFAFEFBFAFE
        FBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAB1908EFF00FFFF00FFFF00FFFF00FF
        B1908EFEFBFAFEFBFAFEFBFAFEFBFACCE5CA007000007000CCE5CAFEFBFAFEFB
        FAB1908EFF00FFFF00FFFF00FFFF00FFB1908EFEFAF4FEFAF4007000CCE3C500
        7000CCE3C5CCE3C5007000FEFAF4FEFAF4B1908EFF00FFFF00FFFF00FFFF00FF
        B1908EFEF7F0FEF7F0007000007000CCE1C2FEF7F0FEF7F0CCE1C2FEF7F0FEF7
        F0B1908EFF00FFFF00FFFF00FFFF00FFB1908EFEF4EBFEF4EB00700000700000
        7000FEF4EBFEF4EBFEF4EBFEF4EBFEF4EBB1908EFF00FFFF00FFFF00FFFF00FF
        B1908EFEF2E6FEF2E6FEF2E6FEF2E6FEF2E6007000007000007000FEF2E6FEF2
        E6B1908EFF00FFFF00FFFF00FFFF00FFB1908EFEEFE2FEEFE2CCDAB7FEEFE2FE
        EFE2CCDAB7007000007000FEEFE2FEEFE2B1908EFF00FFFF00FFFF00FFFF00FF
        B1908EFFEDDDFFEDDD007000CED9B2CED9B2007000CED9B2007000FFEDDDFFED
        DDB1908EFF00FFFF00FFFF00FFFF00FFB1908EFFEBD9FFEBD9CED8B000700000
        7000CED8B0D3C1B1D3C1B1D3C1B1D3C1B1B1908EFF00FFFF00FFFF00FFFF00FF
        B1908EFFE9D4FFE9D4FFE9D4FFE9D4FFE9D4FFE9D4B5A193B2A092B19F91B09E
        90B1908EFF00FFFF00FFFF00FFFF00FFB1908EFFE6CFFFE6CFFFE6CFFFE6CFFF
        E6CFFFE6CF9C8B7E9C8B7E9C8B7E9C8B7EB1908EFF00FFFF00FFFF00FFFF00FF
        B1908EFFE3CBFFE3CBFFE3CBFFE3CBFFE3CBBAA697FAF6F0FAF6F0DECFCEB190
        8EFF00FFFF00FFFF00FFFF00FFFF00FFB1908EFFE1C6FFE1C6FFE1C6FFE1C6FF
        E1C6BAA697FAF6F0D5C0B7B1908EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        B1908EFFDEC2FFDEC2FFDEC2FFDEC2FFDEC2BAA697D5C0B7B1908EFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFB1908EB1908EB1908EB1908EB1908EB1
        908EB1908EB1908EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btUnSelecClick
    end
    object BitBtn4: TBitBtn
      Left = 19
      Top = 386
      Width = 75
      Height = 29
      Hint = 'Salir'
      Anchors = [akLeft, akBottom]
      Caption = '&Salir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0004490600055B0900066C0C00066C0C00055E
        0A00044C0600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0005600900056009000891130009B0180009B31A0009B3190009B1
        19000796140005680C0005680C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000A6A15000A7F15000BB61C0009B91A0008B4180007B2160009B3190009B4
        190009B81A0009B91A0007831000044D0600FF00FF00FF00FF00FF00FF000B6A
        15000F85220016BD340011B727000BB21C0007B1160008B1170009B2190009B2
        190009B2190009B4190009BA1A000784100006670C00FF00FF00FF00FF000B6A
        150020BE49001BBD400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE
        6D0009B2190009B2190009B3190009BA1A0006670C00FF00FF00087210001B9A
        3A002AC65B001DBB45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FD
        F8005ACB650009B2190009B2190009B81A0008941300045D0900087210002AB6
        5B002CC5650022BD4D000FB422000AB21A000CB31C000AB219008DDB9500FDFE
        FD00F6FCF70058CB630009B2190009B51A0008AB1700045D09000F821C0037C2
        6C0033C76C00CDF1DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FD
        F900FFFFFF00F2FBF3006FD2790008B4190009B3190005650B00138D230058CC
        830042C97700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFE
        FD00FFFFFF00FFFFFF00BCEAC1000AB41A0009B31900066D0D000F911D006FD2
        93005FD38D006DD4950072D6990071D6980072D6990064D28C0092DFA800FBFE
        FB00FFFFFF00ACE5B8002EBF4C0011B82B0008B1190005610A000F911D0067CC
        83009BE5BA0038C6700030C3690038C56F0038C56F0070D69700E8F8EE00FFFF
        FF009FE2B10020BD48001AB93E0010BA290008A3170005610A00FF00FF0025AE
        3900BCEDD20082DBA40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2
        B20022BC4B001DBA410018B7360014C030000A851700FF00FF00FF00FF0025AE
        390071D28C00D2F4E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2
        630024BE560023BC4D001FC1460016AE34000A851700FF00FF00FF00FF00FF00
        FF0025AE390084D89F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA
        7B0048CB780039CB6A0021B649000F7C1F00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0025AE390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2
        B30064D492002FB157002FB15700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0032B74E0025AE390025AE390025AE390025AE
        390024A34200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 4
      OnClick = BitBtn4Click
    end
  end
  inherited ActionList1: TActionList
    Left = 664
    Top = 48
    object ChangeSucursal: TAction
      Caption = 'ChangeSucursal'
    end
    object ExportarXLS: TAction
      Caption = 'Exportar XLS'
      OnExecute = ExportarXLSExecute
    end
    object CITI3685: TAction
      Caption = 'CITI 3685'
      OnExecute = CITI3685Execute
    end
    object LimpiarIIBHuerfanos: TAction
      Caption = 'Limpiar IIB Huerfanos'
      OnExecute = LimpiarIIBHuerfanosExecute
    end
    object LibroIvaDigital: TAction
      Caption = 'Libro Iva Digital'
      OnExecute = LibroIvaDigitalExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 712
    Top = 272
  end
  inherited ImageList1: TImageList
    Left = 636
    Top = 65534
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 504
    Top = 360
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
    Top = 400
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 416
    Top = 256
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 648
    Top = 248
  end
  inherited QBrowse2: TFDQuery
    Top = 272
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 8
    Top = 624
  end
  inherited frLibroIva: TfrxReport
    ReportOptions.CreateDate = 39673.861169884290000000
    ReportOptions.LastChange = 39749.007164351850000000
    ScriptText.Strings = (
      'var'
      '  Total,TotalMTributo,TotalExento,TotalExcluido,TotalGravado,'
      
        '  Col1,Col2,Col3,Col4,Col5,Col6:real;                           ' +
        '                                                 '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<frxDBListado."TIPO_CPBTE">='#39'FC'#39') or'
      '       (<frxDBListado."TIPO_CPBTE">='#39'FO'#39') or'
      '       (<frxDBListado."TIPO_CPBTE">='#39'ND'#39') or'
      '       (<frxDBListado."TIPO_CPBTE">='#39'LQ'#39') or'
      '       (<frxDBListado."TIPO_CPBTE">='#39'RQ'#39') or'
      '       (<frxDBListado."TIPO_CPBTE">='#39'GX'#39') '
      '     Then'
      '    begin'
      
        '      TotalGravado   := TotalGravado+<frxDBListado."NETO_GRAVADO' +
        '">;'
      
        '      TotalExento    := TotalExento+<frxDBListado."NETO_EXENTO">' +
        ';  '
      
        '      TotalMTributo  := TotalMTributo+<frxDBListado."NETO_MONOTR' +
        'IBUTO">;        '
      
        '      TotalExcluido  := TotalExcluido+<frxDBListado."NETO_EXCLUI' +
        'DO">;      '
      '      Total          := Total+<frxDBListado."TOTAL">;          '
      '      Col1 :=Col1+<frxDBListado."COL1">;'
      '      Col2 :=Col2+<frxDBListado."COL2">;'
      '      Col3 :=Col3+<frxDBListado."COL3">;'
      '      Col4 :=Col4+<frxDBListado."COL4">;'
      '      Col5 :=Col5+<frxDBListado."COL5">;'
      '      Col6 :=Col6+<frxDBListado."COL6">;'
      '                  '
      '    end'
      '  else'
      '    begin'
      
        '      TotalGravado   :=TotalGravado-<frxDBListado."NETO_GRAVADO"' +
        '>;'
      
        '      TotalExento    :=TotalExento-<frxDBListado."NETO_EXENTO">;' +
        '  '
      
        '      TotalMTributo  :=TotalMTributo-<frxDBListado."NETO_MONOTRI' +
        'BUTO">;        '
      
        '      TotalExcluido  :=TotalExcluido-<frxDBListado."NETO_EXCLUID' +
        'O">;      '
      '      Total          :=Total-<frxDBListado."TOTAL">;          '
      '      Col1 :=Col1-<frxDBListado."COL1">;'
      '      Col2 :=Col2-<frxDBListado."COL2">;'
      '      Col3 :=Col3-<frxDBListado."COL3">;'
      '      Col4 :=Col4-<frxDBListado."COL4">;'
      '      Col5 :=Col5-<frxDBListado."COL5">;'
      '      Col6 :=Col6-<frxDBListado."COL6">;'
      '  '
      '    end;'
      '     '
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 37
    Top = 94
    Datasets = <
      item
        DataSet = frDBCreditos
        DataSetName = 'frDBCreditos'
      end
      item
        DataSet = frDBDebitos
        DataSetName = 'frDBDebitos'
      end
      item
        DataSet = frDBTotales
        DataSetName = 'frDBTotales'
      end
      item
        DataSet = frDBTitulos
        DataSetName = 'frDBTitulos'
      end
      item
        DataSet = frxDBListado
        DataSetName = 'frxDBListado'
      end>
    Variables = <
      item
        Name = ' variables'
        Value = Null
      end
      item
        Name = 'sucursal'
        Value = Null
      end
      item
        Name = 'desde'
        Value = Null
      end
      item
        Name = 'hasta'
        Value = Null
      end
      item
        Name = 'NroPagina'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 166.299320000000000000
        Width = 1103.622760000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBListado
        DataSetName = 'frxDBListado'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1005.354980000000000000
          Width = 79.370130000000000000
          Height = 13.228346460000000000
          DataField = 'TOTAL'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."TOTAL"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Width = 18.897650000000000000
          Height = 13.228346460000000000
          DataField = 'FECHA'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = 'dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListado."FECHA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 18.897650000000000000
          Height = 13.228346460000000000
          DataField = 'TIPO_CPBTE'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListado."TIPO_CPBTE"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataField = 'NRO_CPBTE'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = 'a-####-########'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListado."NRO_CPBTE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Width = 162.519790000000000000
          Height = 13.228346460000000000
          DataField = 'RAZON_SOCIAL'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListado."RAZON_SOCIAL"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 956.221090000000000000
          Width = 52.913385830000000000
          Height = 13.228346460000000000
          DataField = 'COL6'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."COL6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 899.528140000000000000
          Width = 52.913385830000000000
          Height = 13.228346460000000000
          DataField = 'COL5'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."COL5"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 846.614720000000000000
          Width = 52.913385830000000000
          Height = 13.228346460000000000
          DataField = 'COL4'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."COL4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 793.701300000000000000
          Width = 52.913385830000000000
          Height = 13.228346460000000000
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."COL3"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Width = 83.149660000000000000
          Height = 13.228346460000000000
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '99-99999999-9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListado."CUIT"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Width = 79.370130000000000000
          Height = 13.228346460000000000
          DataField = 'MUESTRA_IVA'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBListado."MUESTRA_IVA"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 740.787880000000000000
          Width = 52.913385830000000000
          Height = 13.228346460000000000
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."COL2"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."COL1"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DataField = 'NETO_GRAVADO'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."NETO_GRAVADO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DataField = 'NETO_MONOTRIBUTO'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."NETO_MONOTRIBUTO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DataField = 'NETO_EXENTO'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."NETO_EXENTO"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DataField = 'NETO_EXCLUIDO'
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBListado."NETO_EXCLUIDO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 15.118120000000000000
          Width = 1084.725110000000000000
          Color = clBlack
          Frame.Color = 15000804
          Frame.ShadowColor = clGrayText
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 219.212740000000000000
        Width = 1103.622760000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 1005.354980000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 13.606299210000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Total]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 952.441560000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 13.606299210000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[col6]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 899.528140000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 13.606299210000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[col5]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 846.614720000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 13.606299210000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[COL4]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 2.000000000000000000
          Width = 45.354360000000000000
          Height = 13.606299210000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[col3]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 2.000000000000000000
          Width = 60.472480000000000000
          Height = 13.606299210000000000
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TotalGravado ]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 13.606299210000000000
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TotalMTributo]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 13.606299210000000000
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TotalExento]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 13.606299210000000000
          DataSet = frxDBListado
          DataSetName = 'frxDBListado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TotalExcluido]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 1088.504640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 748.346940000000000000
          Top = 2.000000000000000000
          Width = 45.354360000000000000
          Height = 13.606299210000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[col2]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Top = 2.000000000000000000
          Width = 45.354360000000000000
          Height = 13.606299210000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[col1]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 1103.622760000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 1016.693570000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<Page#>+<NroPagina>]')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 78.866110000000000000
          Width = 39.307050000000000000
          Height = 13.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 340.850650000000000000
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sucursal de Compra : [sucursal]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 340.850650000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Periodo del')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 46.047310000000000000
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Libro de Iva Compra')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 461.795610000000000000
          Top = 75.590600000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Gravado')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 578.961040000000000000
          Top = 75.590600000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Exento')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 624.315400000000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Excluido')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 526.047620000000000000
          Top = 75.590600000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M.Trib.')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 64.944960000000000000
          Top = 79.370130000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Comprobante')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 424.000310000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'mm.dd.aaaa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[desde]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 507.149970000000000000
          Top = 37.795300000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'al')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 526.047620000000000000
          Top = 37.795300000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'mm.dd.aaaa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[hasta]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 0.220470000000000000
          Top = 94.488250000000000000
          Width = 1088.504640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 687.874460000000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'General')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 755.906000000000000000
          Top = 75.590600000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '27%')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 75.590600000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '13,5%')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 854.173780000000000000
          Top = 75.590600000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tas.Dif.')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 907.087200000000000000
          Top = 75.590600000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P.Iva')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 963.780150000000000000
          Top = 75.590600000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'I.Brs')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 1024.252630000000000000
          Top = 75.590600000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 22.677180000000000000
        Width = 718.110700000000000000
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Resumen de Movimientos')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Neto Gravado')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 22.677180000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Iva')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Perc.IIBB')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Perc.Iva')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Exento')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Totales')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        DataSet = frDBDebitos
        DataSetName = 'frDBDebitos'
        RowCount = 0
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PERCIVA'
          DataSet = frDBDebitos
          DataSetName = 'frDBDebitos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBDebitos."PERCIVA"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'IVA'
          DataSet = frDBDebitos
          DataSetName = 'frDBDebitos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBDebitos."IVA"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frDBDebitos
          DataSetName = 'frDBDebitos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBDebitos."TOTAL"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PERCIBB'
          DataSet = frDBDebitos
          DataSetName = 'frDBDebitos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBDebitos."PERCIBB"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'NETOGRAVADO'
          DataSet = frDBDebitos
          DataSetName = 'frDBDebitos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBDebitos."NETOGRAVADO"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Debitos')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'MUESTRA_IVA'
          DataSet = frDBDebitos
          DataSetName = 'frDBDebitos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBDebitos."MUESTRA_IVA"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOEXENTO'
          DataSet = frDBDebitos
          DataSetName = 'frDBDebitos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBDebitos."MONTOEXENTO"]')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frDBCreditos
        DataSetName = 'frDBCreditos'
        RowCount = 0
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Creditos')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'NETOGRAVADO'
          DataSet = frDBCreditos
          DataSetName = 'frDBCreditos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCreditos."NETOGRAVADO"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'IVA'
          DataSet = frDBCreditos
          DataSetName = 'frDBCreditos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCreditos."IVA"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PERCIVA'
          DataSet = frDBCreditos
          DataSetName = 'frDBCreditos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCreditos."PERCIVA"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'PERCIBB'
          DataSet = frDBCreditos
          DataSetName = 'frDBCreditos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCreditos."PERCIBB"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frDBCreditos
          DataSetName = 'frDBCreditos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCreditos."TOTAL"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'MUESTRA_IVA'
          DataSet = frDBCreditos
          DataSetName = 'frDBCreditos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBCreditos."MUESTRA_IVA"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'MONTOEXENTO'
          DataSet = frDBCreditos
          DataSetName = 'frDBCreditos'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBCreditos."MONTOEXENTO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBCreditos."MONTOEXENTO">,MasterData4)]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBCreditos."netogravado">,MasterData4)]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBCreditos."iva">,MasterData4)]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBCreditos."perciva">,MasterData4)]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBCreditos."percibb">,MasterData4)]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBCreditos."total">,MasterData4)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Width = 563.149970000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBDebitos."MONTOEXENTO">,MasterData3)]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBDebitos."netogravado">,MasterData3)]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBDebitos."iva">,MasterData3)]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBDebitos."perciva">,MasterData3)]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBDebitos."percibb">,MasterData3)]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBDebitos."total">,MasterData3)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Width = 563.149970000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        DataSet = frDBTotales
        DataSetName = 'frDBTotales'
        RowCount = 0
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataField = 'NETO'
          DataSet = frDBTotales
          DataSetName = 'frDBTotales'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBTotales."NETO"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'TASA'
          DataSet = frDBTotales
          DataSetName = 'frDBTotales'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBTotales."TASA"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'IMPUESTO'
          DataSet = frDBTotales
          DataSetName = 'frDBTotales'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBTotales."IMPUESTO"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DataField = 'TIPOCPBTE'
          DataSet = frDBTotales
          DataSetName = 'frDBTotales'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBTotales."TIPOCPBTE"]')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 22.677180000000000000
        Width = 718.110700000000000000
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Detalle por Tipo de Comprobante y Tasa')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        Condition = 'frDBTotales."TIPOCPBTE"'
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Neto Gravado')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tasa %')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBTotales."IMPUESTO">)]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBTotales."NETO">)]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 362.834880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  inherited DSSucursal: TDataSource
    Left = 285
    Top = 342
  end
  inherited CDSSucursal: TClientDataSet
    Left = 200
    Top = 344
  end
  inherited DSPSucursal: TDataSetProvider
    Left = 128
    Top = 344
  end
  inherited spGeneraLibro_FD: TFDStoredProc
    StoredProcName = 'GENERA_LIBRO_IVA_COMPRA'
    Left = 384
    Top = 400
    ParamData = <
      item
        Position = 1
        Name = 'FECHAINICIAL'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'FECHAFINAL'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'LIQUIDACIONTC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'RESUMENTC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'RESUMENBCO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited Query4_FD: TFDQuery
    Top = 208
  end
  object frxDBListado: TfrxDBDataset
    UserName = 'frxDBListado'
    CloseDataSource = False
    DataSet = DatosLibroIvaCompra.CDSListado
    BCDToCurrency = False
    DataSetOptions = []
    Left = 165
    Top = 86
    FieldDefs = <
      item
        FieldName = 'MUESTRA_IVA'
        FieldAlias = 'MUESTRA_IVA'
      end
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
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
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
        FieldName = 'SUCURSALCOMPRA'
        FieldAlias = 'SUCURSALCOMPRA'
      end
      item
        FieldName = 'NETO_EXCLUIDO_REC'
        FieldAlias = 'NETO_EXCLUIDO_REC'
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
        FieldName = 'NETO_MONOTRIBUTO_REC'
        FieldAlias = 'NETO_MONOTRIBUTO_REC'
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
        FieldName = 'COL6_REC'
        FieldAlias = 'COL6_REC'
      end
      item
        FieldName = 'COL7_REC'
        FieldAlias = 'COL7_REC'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
      end
      item
        FieldName = 'CODIGO_AFIP'
        FieldAlias = 'CODIGO_AFIP'
      end
      item
        FieldName = 'FECHA_FACTURA'
        FieldAlias = 'FECHA_FACTURA'
      end
      item
        FieldName = 'NETO_EXCLUIDO'
        FieldAlias = 'NETO_EXCLUIDO'
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
        FieldName = 'NETO_MONOTRIBUTO'
        FieldAlias = 'NETO_MONOTRIBUTO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
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
        FieldName = 'COL7'
        FieldAlias = 'COL7'
      end
      item
        FieldName = 'TIPO_LIQ'
        FieldAlias = 'TIPO_LIQ'
      end
      item
        FieldName = 'RET_IVA'
        FieldAlias = 'RET_IVA'
      end>
  end
  object frDBTotales: TfrxDBDataset
    UserName = 'frDBTotales'
    CloseDataSource = False
    DataSet = DatosLibroIvaCompra.CDSTotales
    BCDToCurrency = False
    DataSetOptions = []
    Left = 317
    Top = 134
    FieldDefs = <
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'NOMBRE_SUCURSAL'
        FieldAlias = 'NOMBRE_SUCURSAL'
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
  object frDBTitulos: TfrxDBDataset
    UserName = 'frDBTitulos'
    CloseDataSource = False
    DataSet = DatosLibroIvaCompra.CDSTitulos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 245
    Top = 126
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
  object OpenDialog: TOpenDialog
    DefaultExt = '*.frp'
    Left = 488
    Top = 224
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 800
    Top = 480
  end
  object DataToXLS: TDataToXLS
    DataSet = DatosLibroIvaCompra.CDSListado
    Columns = <
      item
        DataField = 'FECHA'
        Title = 'Fecha'
      end
      item
        DataField = 'FECHA_FACTURA'
        Title = 'Fecha. Fc'
      end
      item
        DataField = 'TIPO_CPBTE'
        Title = 'Tp'
      end
      item
        DataField = 'CLASE_CPBTE'
        Title = 'Cl'
      end
      item
        DataField = 'NRO_CPBTE'
        Title = 'Nro Comprobante'
      end
      item
        DataField = 'SUCURSALCOMPRA'
        Title = 'Sucursal'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'RAZON_SOCIAL'
        Title = 'Razon Social'
      end
      item
        DataField = 'MUESTRA_IVA'
        Title = 'Iva'
      end
      item
        DataField = 'CUIT'
        Title = 'Cuit'
      end
      item
        DataField = 'NETO_GRAVADO_REC'
        Title = 'Neto Gravado'
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
        DataField = 'NETO_EXCLUIDO_REC'
        Title = 'Neto Excluido'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'NETO_MONOTRIBUTO_REC'
        Title = 'Neto Monotributo'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL1_REC'
        Title = 'Iva 1'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL2_REC'
        Title = 'Iva 2'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL3_REC'
        Title = 'Iva 3'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL4_REC'
        Title = 'Iva 4'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL5_REC'
        Title = 'Iva 5'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COL6_REC'
        Title = 'Iva 6'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL_REC'
        Title = 'TOTAL'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TIPO_LIQ'
        Title = 'Tipo Liquidacion'
        Alignment = taCenter
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
    Left = 536
    Top = 432
  end
  object SaveDialog1: TSaveDialog
    Left = 720
    Top = 448
  end
  object frDBCreditos: TfrxDBDataset
    UserName = 'frDBCreditos'
    CloseDataSource = False
    DataSet = DatosLibroIvaCompra.CDSCreditos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 233
    Top = 213
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
        FieldName = 'MONTOEXENTO'
        FieldAlias = 'MONTOEXENTO'
      end
      item
        FieldName = 'NETOGRAVADO'
        FieldAlias = 'NETOGRAVADO'
      end
      item
        FieldName = 'IVA'
        FieldAlias = 'IVA'
      end
      item
        FieldName = 'PERCIVA'
        FieldAlias = 'PERCIVA'
      end
      item
        FieldName = 'PERCIBB'
        FieldAlias = 'PERCIBB'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'SUCURSALCOMPRA'
        FieldAlias = 'SUCURSALCOMPRA'
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
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end>
  end
  object frDBDebitos: TfrxDBDataset
    UserName = 'frDBDebitos'
    CloseDataSource = False
    DataSet = DatosLibroIvaCompra.CDSDebitos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 267
    Top = 264
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
        FieldName = 'MONTOEXENTO'
        FieldAlias = 'MONTOEXENTO'
      end
      item
        FieldName = 'NETOGRAVADO'
        FieldAlias = 'NETOGRAVADO'
      end
      item
        FieldName = 'IVA'
        FieldAlias = 'IVA'
      end
      item
        FieldName = 'PERCIVA'
        FieldAlias = 'PERCIVA'
      end
      item
        FieldName = 'PERCIBB'
        FieldAlias = 'PERCIBB'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'SUCURSALCOMPRA'
        FieldAlias = 'SUCURSALCOMPRA'
      end
      item
        FieldName = 'TASA1'
        FieldAlias = 'TASA1'
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
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end>
  end
  object frxDBDetealleMercad: TfrxDBDataset
    UserName = 'frxDBDetealleMercad'
    CloseDataSource = False
    DataSet = DatosLibroIvaCompra.CDSDetalleMercaderia
    BCDToCurrency = False
    DataSetOptions = []
    Left = 810
    Top = 350
    FieldDefs = <
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'RUBRO_STK'
        FieldAlias = 'RUBRO_STK'
      end
      item
        FieldName = 'SUBRUBRO_STK'
        FieldAlias = 'SUBRUBRO_STK'
      end
      item
        FieldName = 'CLASE_ARTICULO'
        FieldAlias = 'CLASE_ARTICULO'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'DETALLE_RUBRO'
        FieldAlias = 'DETALLE_RUBRO'
      end
      item
        FieldName = 'DETALLE_SUBRUBRO'
        FieldAlias = 'DETALLE_SUBRUBRO'
      end
      item
        FieldName = 'IMPORTE_REC'
        FieldAlias = 'IMPORTE_REC'
      end
      item
        FieldName = 'CANTIDAD_REC'
        FieldAlias = 'CANTIDAD_REC'
      end
      item
        FieldName = 'SUCURSALCOMPRA'
        FieldAlias = 'SUCURSALCOMPRA'
      end>
  end
  object frDBSucursal: TfrxDBDataset
    UserName = 'frDBSucursal'
    CloseDataSource = False
    DataSet = CDSSucursal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 373
    Top = 110
    FieldDefs = <
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end>
  end
  object frxDBPercIIBB: TfrxDBDataset
    UserName = 'frxDBPercIIBB'
    CloseDataSource = False
    DataSet = DatosLibroIvaCompra.CDSPercIIBB
    BCDToCurrency = False
    DataSetOptions = []
    Left = 245
    Top = 86
    FieldDefs = <
      item
        FieldName = 'CODIGO_PERCEPCION'
        FieldAlias = 'CODIGO_PERCEPCION'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'JURIDICION'
        FieldAlias = 'JURIDICION'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = [poAllowCommandText]
    Left = 698
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 775
    Top = 8
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
    object CDSEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSEmpresaCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
    object CDSEmpresaID_CPOSTAL: TIntegerField
      FieldName = 'ID_CPOSTAL'
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Size = 10
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 50
    end
    object CDSEmpresaCODIGO_COT: TStringField
      FieldName = 'CODIGO_COT'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaDIRECCION_NRO: TStringField
      FieldName = 'DIRECCION_NRO'
      Size = 10
    end
    object CDSEmpresaAG_PERCEPCION_IVA: TStringField
      FieldName = 'AG_PERCEPCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField
      FieldName = 'MIN_IMP_PERCEPCION_IVA'
      Required = True
    end
    object CDSEmpresaTASA_LEY15311: TFloatField
      FieldName = 'TASA_LEY15311'
      Required = True
    end
    object CDSEmpresaDIRECCION_OPERACION: TStringField
      FieldName = 'DIRECCION_OPERACION'
      Size = 150
    end
  end
  object DSPDespacho: TDataSetProvider
    DataSet = QDespacho
    Options = []
    Left = 144
    Top = 432
  end
  object DSPDetalle: TDataSetProvider
    DataSet = QDetalle
    Options = []
    Left = 240
    Top = 512
  end
  object CDSDespacho: TClientDataSet
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
    ProviderName = 'DSPDespacho'
    Left = 216
    Top = 432
    object CDSDespachoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDespachoNRO: TStringField
      FieldName = 'NRO'
      Origin = 'NRO'
      EditMask = 'AA-AAA-AAAA-AAAAAA-A;1;_'
      Size = 45
    end
    object CDSDespachoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSDespachoFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
      Origin = 'FECHA_FISCAL'
    end
    object CDSDespachoFOB_DIVISA: TIntegerField
      FieldName = 'FOB_DIVISA'
      Origin = 'FOB_DIVISA'
    end
    object CDSDespachoFLETE_DIVISA: TIntegerField
      FieldName = 'FLETE_DIVISA'
      Origin = 'FLETE_DIVISA'
    end
    object CDSDespachoSEGURO_DIVISA: TIntegerField
      FieldName = 'SEGURO_DIVISA'
      Origin = 'SEGURO_DIVISA'
    end
    object CDSDespachoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 60
    end
    object CDSDespachoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.0000'
    end
    object CDSDespachoFOB: TFloatField
      FieldName = 'FOB'
      Origin = 'FOB'
      DisplayFormat = ',0.00'
    end
    object CDSDespachoVALOR_ADUANA_DOLAR: TFloatField
      FieldName = 'VALOR_ADUANA_DOLAR'
      Origin = 'VALOR_ADUANA_DOLAR'
      DisplayFormat = ',0.00'
    end
    object CDSDespachoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSDespachoTOTAL_PESOS: TFloatField
      FieldName = 'TOTAL_PESOS'
      Origin = 'TOTAL_PESOS'
      DisplayFormat = ',0.00'
    end
    object CDSDespachoFLETE: TFloatField
      FieldName = 'FLETE'
      Origin = 'FLETE'
      DisplayFormat = ',0.00'
    end
    object CDSDespachoSEGURO: TFloatField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      DisplayFormat = ',0.00'
    end
    object CDSDespachoBASEIVA_GANC: TFloatField
      FieldName = 'BASEIVA_GANC'
      Origin = 'BASEIVA_GANC'
      DisplayFormat = ',0.00'
    end
  end
  object CDSDetalle: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CAB'
    MasterFields = 'ID'
    MasterSource = DSDespacho
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalle'
    Left = 304
    Top = 512
    object CDSDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetalleID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetalleCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object CDSDetalleDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSDetalleMUESTRADETALLE: TStringField
      DisplayLabel = 'Detalle Concpeto'
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetalleBASE_IMPONIBLE: TFloatField
      DisplayLabel = 'Base Imponible'
      FieldName = 'BASE_IMPONIBLE'
      Origin = 'BASE_IMPONIBLE'
      DisplayFormat = ',0.00'
    end
    object CDSDetalleTASA: TFloatField
      DisplayLabel = '%'
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSDetalleIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSDetalleIMPORTE_PESOS: TFloatField
      DisplayLabel = 'Importe en Pesos'
      FieldName = 'IMPORTE_PESOS'
      Origin = 'IMPORTE_PESOS'
      DisplayFormat = ',0.00'
    end
  end
  object DSDespacho: TDataSource
    DataSet = CDSDespacho
    Left = 296
    Top = 432
  end
  object frDBDespacho: TfrxDBDataset
    UserName = 'frDBDespacho'
    CloseDataSource = False
    DataSet = CDSDespacho
    BCDToCurrency = False
    DataSetOptions = []
    Left = 720
    Top = 568
  end
  object frDBDetalleDesp: TfrxDBDataset
    UserName = 'frDBDetalleDesp'
    CloseDataSource = False
    DataSet = CDSDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 736
    Top = 664
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
    Left = 32
    Top = 128
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    DataSet = CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 410
    Top = 254
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
      end
      item
        FieldName = 'NOMBRE_FANTASIA'
        FieldAlias = 'NOMBRE_FANTASIA'
      end>
  end
  object frDBComposicionCred: TfrxDBDataset
    UserName = 'frDBComposicionCred'
    CloseDataSource = False
    DataSet = DatosLibroIvaCompra.CDSCompIVACre
    BCDToCurrency = False
    DataSetOptions = []
    Left = 808
    Top = 400
    FieldDefs = <
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'IVA_DESCRIPCION'
        FieldAlias = 'IVA_DESCRIPCION'
      end
      item
        FieldName = 'ID_IVA'
        FieldAlias = 'ID_IVA'
      end
      item
        FieldName = 'NETO_GRAVADO'
        FieldAlias = 'NETO_GRAVADO'
      end
      item
        FieldName = 'NETO_EXENTO'
        FieldAlias = 'NETO_EXENTO'
      end
      item
        FieldName = 'NETO_MONOTRIBUTO'
        FieldAlias = 'NETO_MONOTRIBUTO'
      end
      item
        FieldName = 'NETO_EXCLUIDO'
        FieldAlias = 'NETO_EXCLUIDO'
      end
      item
        FieldName = 'TASA_1'
        FieldAlias = 'TASA_1'
      end
      item
        FieldName = 'TASA_2'
        FieldAlias = 'TASA_2'
      end
      item
        FieldName = 'TASA_3'
        FieldAlias = 'TASA_3'
      end
      item
        FieldName = 'TASA_4'
        FieldAlias = 'TASA_4'
      end
      item
        FieldName = 'IIBB'
        FieldAlias = 'IIBB'
      end
      item
        FieldName = 'PERIVA'
        FieldAlias = 'PERIVA'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'TOTALCALCULADO'
        FieldAlias = 'TOTALCALCULADO'
      end
      item
        FieldName = 'PORCTASA_1'
        FieldAlias = 'PORCTASA_1'
      end
      item
        FieldName = 'PORCTASA_2'
        FieldAlias = 'PORCTASA_2'
      end
      item
        FieldName = 'PORCTASA_3'
        FieldAlias = 'PORCTASA_3'
      end
      item
        FieldName = 'PORCTASA_4'
        FieldAlias = 'PORCTASA_4'
      end
      item
        FieldName = 'NETO_1'
        FieldAlias = 'NETO_1'
      end
      item
        FieldName = 'NETO_2'
        FieldAlias = 'NETO_2'
      end
      item
        FieldName = 'NETO_3'
        FieldAlias = 'NETO_3'
      end
      item
        FieldName = 'NETO_4'
        FieldAlias = 'NETO_4'
      end>
  end
  object frDBComposicionDeb: TfrxDBDataset
    UserName = 'frDBComposicionDeb'
    CloseDataSource = False
    DataSet = DatosLibroIvaCompra.CDSCompIVADeb
    BCDToCurrency = False
    DataSetOptions = []
    Left = 560
    Top = 224
    FieldDefs = <
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'ID_IVA'
        FieldAlias = 'ID_IVA'
      end
      item
        FieldName = 'IVA_DESCRIPCION'
        FieldAlias = 'IVA_DESCRIPCION'
      end
      item
        FieldName = 'TASA_1'
        FieldAlias = 'TASA_1'
      end
      item
        FieldName = 'TASA_2'
        FieldAlias = 'TASA_2'
      end
      item
        FieldName = 'TASA_3'
        FieldAlias = 'TASA_3'
      end
      item
        FieldName = 'TASA_4'
        FieldAlias = 'TASA_4'
      end
      item
        FieldName = 'NETO_GRAVADO'
        FieldAlias = 'NETO_GRAVADO'
      end
      item
        FieldName = 'NETO_EXENTO'
        FieldAlias = 'NETO_EXENTO'
      end
      item
        FieldName = 'NETO_MONOTRIBUTO'
        FieldAlias = 'NETO_MONOTRIBUTO'
      end
      item
        FieldName = 'NETO_EXCLUIDO'
        FieldAlias = 'NETO_EXCLUIDO'
      end
      item
        FieldName = 'IIBB'
        FieldAlias = 'IIBB'
      end
      item
        FieldName = 'PERIVA'
        FieldAlias = 'PERIVA'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'TOTALCALCULADO'
        FieldAlias = 'TOTALCALCULADO'
      end
      item
        FieldName = 'PORCTASA_1'
        FieldAlias = 'PORCTASA_1'
      end
      item
        FieldName = 'PORCTASA_2'
        FieldAlias = 'PORCTASA_2'
      end
      item
        FieldName = 'PORCTASA_3'
        FieldAlias = 'PORCTASA_3'
      end
      item
        FieldName = 'PORCTASA_4'
        FieldAlias = 'PORCTASA_4'
      end
      item
        FieldName = 'NETO_1'
        FieldAlias = 'NETO_1'
      end
      item
        FieldName = 'NETO_2'
        FieldAlias = 'NETO_2'
      end
      item
        FieldName = 'NETO_3'
        FieldAlias = 'NETO_3'
      end
      item
        FieldName = 'NETO_4'
        FieldAlias = 'NETO_4'
      end>
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link3
    Version = 0
    Left = 404
    Top = 338
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGArticulos
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Articulos Detalles')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -16
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 46028.590855949070000000
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
    object dxComponentPrinter1Link2: TdxGridReportLink
      Active = True
      Component = cxGridListado
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 4065
      PrinterPage.Margins.Right = 4065
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Libro Iva Compra')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -15
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 46028.590855972220000000
      OptionsCards.Borders = False
      OptionsExpanding.ExpandGroupRows = True
      OptionsExpanding.ExpandMasterRows = True
      OptionsOnEveryPage.FilterBar = False
      OptionsPreview.Visible = False
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TdxGridReportLink
      Active = True
      Component = cxGContable
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
      ReportDocument.CreationDate = 46028.590855983800000000
      OptionsPreview.Visible = False
      OptionsView.Caption = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 612
    Top = 314
    object ImiprimirArt1: TMenuItem
      Caption = 'Imiprimir Art.'
      OnClick = ImiprimirArt1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExportaraExcelArticulos1: TMenuItem
      Caption = 'Exportar a Excel Articulos'
      OnClick = ExportaraExcelArticulos1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 508
    Top = 290
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
    object ExportarExcel1: TMenuItem
      Caption = 'Exportar Excel'
      OnClick = ExportarExcel1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object LimpiarIIBVacios1: TMenuItem
      Action = LimpiarIIBHuerfanos
    end
  end
  object DSPGastosFcCompra: TDataSetProvider
    DataSet = QGastosFcCompra
    Options = []
    Left = 160
    Top = 576
  end
  object CDSGastosFCCompra: TClientDataSet
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
      end>
    ProviderName = 'DSPGastosFcCompra'
    Left = 240
    Top = 568
    object CDSGastosFCCompraFECHAFISCAL: TSQLTimeStampField
      DisplayLabel = 'Fe.Fiscal'
      DisplayWidth = 34
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
    end
    object CDSGastosFCCompraFECHACOMPRA: TSQLTimeStampField
      DisplayLabel = 'Fe.Compra'
      DisplayWidth = 34
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
    end
    object CDSGastosFCCompraCODIGOARTICULO: TStringField
      DisplayLabel = 'Cod.Arti'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSGastosFCCompraDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSGastosFCCompraSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
    end
    object CDSGastosFCCompraCTA_CONTABLE: TStringField
      DisplayLabel = 'Cta.Contable'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE'
      LookupDataSet = DatosLibroIvaCompra.CDSCtaContable
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACUENTA'
      KeyFields = 'CODIGOARTICULO'
      Size = 40
      Lookup = True
    end
    object CDSGastosFCCompraCTA_CONTABLE_COD: TStringField
      DisplayLabel = 'Cod.Cta'
      FieldKind = fkLookup
      FieldName = 'CTA_CONTABLE_COD'
      LookupDataSet = DatosLibroIvaCompra.CDSCtaContable
      LookupKeyFields = 'CODIGOELEMENTO'
      LookupResultField = 'MUESTRACODIGOCTA'
      KeyFields = 'CODIGOARTICULO'
      Size = 15
      Lookup = True
    end
    object CDSGastosFCCompraTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object DSGastosFcCompra: TDataSource
    DataSet = CDSGastosFCCompra
    Left = 320
    Top = 568
  end
  object PopupMenu3: TPopupMenu
    Left = 812
    Top = 274
    object MenuItem1: TMenuItem
      Caption = 'Imprimir'
      OnClick = MenuItem1Click
    end
    object ExporarExcel1: TMenuItem
      Caption = 'Exporar Excel'
      OnClick = ExporarExcel1Click
    end
  end
  object QDespacho: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.* from despacho_impo d where d.fecha_fiscal between :de' +
        'sde and :hasta'
      'order by d.id')
    Left = 28
    Top = 494
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
  end
  object QDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*,c.detalle as MuestraDetalle from despacho_impo_det d'
      'left join despacho_impo_concep c on c.id=d.codigo'
      'where d.id_cab = :id')
    Left = 164
    Top = 510
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QGastosFcCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fc.fechacompra,fc.FechaFiscal,d.codigoarticulo,s.detalle_' +
        'stk,fc.sucursalcompra, Sum(d.total) as Total from  fccompdet d'
      'left join stock s on s.codigo_stk=d.codigoarticulo'
      'left join fccompcab fc on fc.id_fc=d.id_cabfac'
      'where fc.fechaFISCAL between :desde and :hasta and'
      '      ( fc.sucursalcompra = :sucursal or :sucursal = -1 )'
      
        ' group by fc.fechacompra,fc.FechaFiscal,d.codigoarticulo,s.detal' +
        'le_stk,fc.sucursalcompra'
      ' ORDER BY fc.fechaCOMPRA, fc.sucursalcompra')
    Left = 84
    Top = 574
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
      end>
  end
  object QBorradorAsiento: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from borrador_asiento_compras (:desde,:hasta)')
    Left = 52
    Top = 262
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QBorradorAsientoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QBorradorAsientoDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QBorradorAsientoHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSBorradorAsiento: TDataSource
    DataSet = QBorradorAsiento
    Left = 63
    Top = 329
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 668
    Top = 390
    object ExportaraExcel1: TMenuItem
      Caption = 'Exportar a Excel'
      OnClick = ExportaraExcel1Click
    end
  end
end

inherited FormListadoOPago: TFormListadoOPago
  Left = 246
  Top = 167
  Anchors = [akLeft, akTop, akBottom]
  Caption = 'Listado de O. de Pago'
  ClientHeight = 725
  ClientWidth = 1177
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1195
  ExplicitHeight = 766
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1177
    Height = 672
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1177
    ExplicitHeight = 672
    object pcOrdenesPago: TPageControl
      Left = 0
      Top = 0
      Width = 1177
      Height = 672
      ActivePage = pag1
      Align = alClient
      TabOrder = 0
      object pag1: TTabSheet
        Caption = 'Listado'
        DesignSize = (
          1169
          644)
        object RxLabel3: TJvLabel
          Left = 7
          Top = 2
          Width = 43
          Height = 13
          Caption = 'Sucursal'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel1: TJvLabel
          Left = 775
          Top = 2
          Width = 33
          Height = 13
          Caption = 'Desde'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel2: TJvLabel
          Left = 881
          Top = 2
          Width = 30
          Height = 13
          Caption = 'Hasta'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel4: TJvLabel
          Left = 8
          Top = 94
          Width = 108
          Height = 16
          Caption = 'Orden de Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object RxLabel7: TJvLabel
          Left = 657
          Top = 285
          Width = 139
          Height = 16
          Caption = 'Ret.Ingresos Brutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object RxLabel8: TJvLabel
          Left = 657
          Top = 557
          Width = 119
          Height = 16
          Caption = 'Ret.de Ganancia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Anchors = [akLeft, akBottom]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          ExplicitTop = 555
        end
        object Label1: TLabel
          Left = 251
          Top = 2
          Width = 63
          Height = 13
          Caption = 'Comprobante'
        end
        object JvLabel1: TJvLabel
          Left = 383
          Top = 289
          Width = 93
          Height = 13
          Caption = 'Detalles de Valores'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object Label2: TLabel
          Left = 657
          Top = 588
          Width = 108
          Height = 16
          Anchors = [akLeft, akBottom]
          Caption = 'Total de Pagos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 586
        end
        object Label3: TLabel
          Left = 9
          Top = 48
          Width = 49
          Height = 13
          Caption = 'Proveedor'
        end
        object Label4: TLabel
          Left = 463
          Top = 3
          Width = 64
          Height = 13
          Caption = 'Tipo de Pago'
        end
        object Label5: TLabel
          Left = 515
          Top = 48
          Width = 31
          Height = 13
          Caption = 'Banco'
        end
        object JvLabel2: TJvLabel
          Left = 657
          Top = 94
          Width = 160
          Height = 16
          Caption = 'Detalles de Aplicacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvLabel3: TJvLabel
          Left = 2
          Top = 289
          Width = 138
          Height = 16
          Caption = 'Valorer Entregados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object JvLabel4: TJvLabel
          Left = 647
          Top = 2
          Width = 74
          Height = 13
          Caption = 'Fecha Proceso'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object lbPath: TLabel
          Left = 9
          Top = 627
          Width = 30
          Height = 13
          Cursor = crHandPoint
          Anchors = [akLeft, akBottom]
          Caption = 'lbPath'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          WordWrap = True
          OnClick = lbPathClick
          ExplicitTop = 585
        end
        object JvLabel5: TJvLabel
          Left = 657
          Top = 530
          Width = 77
          Height = 16
          Caption = 'Ret.de IVA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Anchors = [akLeft, akBottom]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          ExplicitTop = 528
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 548
          Top = 97
          Width = 96
          Height = 13
          DataSource = DSOPago
          Style = lsRecordNo
          Transparent = True
        end
        object UpDown1: TUpDown
          Left = 975
          Top = 21
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
        object Desde: TJvDateEdit
          Left = 776
          Top = 21
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
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 1
        end
        object Hasta: TJvDateEdit
          Left = 880
          Top = 21
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
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 2
        end
        object dbcComprobante: TJvDBLookupCombo
          Left = 251
          Top = 21
          Width = 206
          Height = 21
          DisplayEmpty = 'Todos Los Comprobantes'
          EmptyValue = '-1'
          LookupField = 'ID_COMPROBANTE'
          LookupDisplay = 'DENOMINACION'
          LookupSource = DSComprob
          TabOrder = 3
          OnClick = dbcComprobanteClick
        end
        object dbcSucursal: TJvDBLookupCombo
          Left = 7
          Top = 21
          Width = 238
          Height = 21
          DisplayEmpty = 'Sin Seleccion'
          EmptyValue = '-1'
          LookupField = 'CODIGO'
          LookupDisplay = 'DETALLE'
          LookupSource = DSSucursal
          TabOrder = 4
          OnClick = dbcSucursalClick
        end
        object edTotalPagos: TJvCalcEdit
          Left = 901
          Top = 585
          Width = 138
          Height = 24
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Anchors = [akLeft, akBottom]
          ParentFont = False
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object ceProveedor: TJvComboEdit
          Left = 9
          Top = 67
          Width = 73
          Height = 21
          ButtonWidth = 16
          ClickKey = 16397
          Enabled = False
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          MaxLength = 6
          TabOrder = 6
          Text = ''
          OnButtonClick = BuscarProveedorExecute
          OnKeyPress = ceProveedorKeyPress
        end
        object edNombreProveedor: TEdit
          Left = 88
          Top = 67
          Width = 257
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 7
        end
        object chProveedores: TCheckBox
          Left = 351
          Top = 69
          Width = 139
          Height = 17
          Caption = 'Todos Los Proveedores'
          Checked = True
          State = cbChecked
          TabOrder = 8
          OnClick = chProveedoresClick
        end
        object cbTipoPago: TComboBox
          Left = 463
          Top = 21
          Width = 145
          Height = 21
          ItemIndex = 0
          TabOrder = 9
          Text = 'Todos'
          OnClick = cbTipoPagoClick
          Items.Strings = (
            'Todos'
            'Efectivo'
            'Cheques Propios'
            'Cheques de 3'#186
            'Transferencias')
        end
        object dbcBanco: TJvDBLookupCombo
          Left = 515
          Top = 67
          Width = 335
          Height = 21
          DropDownCount = 15
          DropDownWidth = 300
          DisplayAllFields = True
          DisplayEmpty = 'Sin Seleccion'
          EmptyValue = '-1'
          LookupField = 'ID_BANCO'
          LookupDisplay = 'NOMBRE;Nro_Cuenta'
          LookupSource = DSBanco
          TabOrder = 10
          OnClick = dbcBancoClick
        end
        object DBEdit1: TDBEdit
          Left = 943
          Top = 557
          Width = 95
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'IMPUESTO_RETENIDO'
          DataSource = DSRetGan
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object cxGMovValores: TcxGrid
          Left = 3
          Top = 289
          Width = 641
          Height = 328
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 12
          object cxGMovValoresDBTableView1: TcxGridDBTableView
            DataController.DataSource = DSValores
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                Position = spFooter
                FieldName = 'IMPORTE'
                Column = cxGMovValoresDBTableView1IMPORTE
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'IMPORTE'
                Column = cxGMovValoresDBTableView1IMPORTE
              end>
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            Styles.Footer = cxStyle2
            Styles.Group = cxStyle1
            Styles.Header = cxStyle1
            object cxGMovValoresDBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 118
            end
            object cxGMovValoresDBTableView1TIPO: TcxGridDBColumn
              Caption = 'Modo '
              DataBinding.FieldName = 'TIPO'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 38
            end
            object cxGMovValoresDBTableView1BANCO: TcxGridDBColumn
              DataBinding.FieldName = 'BANCO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 149
            end
            object cxGMovValoresDBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGMovValoresDBTableView1FECHA_COBRO: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_COBRO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 110
            end
            object cxGMovValoresDBTableView1IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 139
            end
          end
          object cxGMovValoresLevel1: TcxGridLevel
            GridView = cxGMovValoresDBTableView1
          end
        end
        object cxGRetIIBB: TcxGrid
          Left = 657
          Top = 307
          Width = 404
          Height = 216
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 13
          object cxGRetIIBBDBTableView1: TcxGridDBTableView
            DataController.DataSource = DSRetIB
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'RETENCION'
                Column = cxGRetIIBBDBTableView1RETENCION
              end>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Footer = cxStyle2
            Styles.Header = cxStyle1
            object cxGRetIIBBDBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 81
            end
            object cxGRetIIBBDBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 120
            end
            object cxGRetIIBBDBTableView1PORCENTAJE: TcxGridDBColumn
              DataBinding.FieldName = 'PORCENTAJE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 67
            end
            object cxGRetIIBBDBTableView1RETENCION: TcxGridDBColumn
              DataBinding.FieldName = 'RETENCION'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 115
            end
          end
          object cxGRetIIBBLevel1: TcxGridLevel
            GridView = cxGRetIIBBDBTableView1
          end
        end
        object cxGAplicaciones: TcxGrid
          Left = 657
          Top = 114
          Width = 404
          Height = 169
          TabOrder = 14
          object cxGAplicacionesDBTableView1: TcxGridDBTableView
            DataController.DataSource = DSMovAplicaCCCompra
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'IMPORTE'
                Column = cxGAplicacionesDBTableView1IMPORTE
              end>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Footer = cxStyle2
            Styles.Header = cxStyle1
            object cxGAplicacionesDBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAFECHACPBTE'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 80
            end
            object cxGAplicacionesDBTableView1APLICA_TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 34
            end
            object cxGAplicacionesDBTableView1APLICA_CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_CLASECPBTE'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 33
            end
            object cxGAplicacionesDBTableView1APLICA_NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_NROCPBTE'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 123
            end
            object cxGAplicacionesDBTableView1IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 109
            end
          end
          object cxGAplicacionesLevel1: TcxGridLevel
            GridView = cxGAplicacionesDBTableView1
          end
        end
        object cxGOPago: TcxGrid
          Left = 3
          Top = 113
          Width = 641
          Height = 170
          TabOrder = 15
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
            DataController.DataSource = DSOPago
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL'
                Column = cxGridDBTableView1TOTAL
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Footer = cxStyle2
            Styles.Header = cxStyle1
            object cxGridDBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 78
            end
            object cxGridDBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 95
            end
            object cxGridDBTableView1NOMBRE: TcxGridDBColumn
              Caption = 'Razon Social'
              DataBinding.FieldName = 'RAZONSOCIAL'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 202
            end
            object cxGridDBTableView1DESCUENTO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCUENTO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 51
            end
            object cxGridDBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 130
            end
            object cxGridDBTableView1ENTREGADO: TcxGridDBColumn
              Caption = 'Proces.'
              DataBinding.FieldName = 'ENTREGADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ClearKey = 46
              Properties.ImmediatePost = True
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 61
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object chbProcesados: TCheckBox
          Left = 856
          Top = 69
          Width = 166
          Height = 17
          Caption = 'Traer solo No procesados'
          TabOrder = 16
          OnClick = chProveedoresClick
        end
        object edFechaProceso: TJvDateEdit
          Left = 648
          Top = 21
          Width = 89
          Height = 21
          DefaultToday = True
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
          TabOrder = 17
        end
        object chbPonerNroChe: TCheckBox
          Left = 486
          Top = 625
          Width = 134
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Poner Nro de Cheque'
          TabOrder = 18
        end
        object chbEChek: TCheckBox
          Left = 626
          Top = 624
          Width = 95
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Emitir E-cheq'
          TabOrder = 19
        end
        object DBEdit2: TDBEdit
          Left = 943
          Top = 530
          Width = 95
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'IMPUESTO_RETENIDO'
          DataSource = DSRetIva
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Control de Entrega'
        ImageIndex = 2
        DesignSize = (
          1169
          644)
        object lwComprobantes: TListView
          Left = 3
          Top = 3
          Width = 838
          Height = 539
          Anchors = [akLeft, akTop, akBottom]
          Checkboxes = True
          Columns = <
            item
            end
            item
              Caption = 'Proveedor'
              Width = 300
            end
            item
              Alignment = taCenter
              Caption = 'Numero Cpbte.'
              Width = 140
            end
            item
              Alignment = taCenter
              Caption = 'Fecha'
              Width = 100
            end
            item
              Alignment = taRightJustify
              Caption = 'Importe'
              Width = 120
            end
            item
              Caption = 'Id'
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.ItemData = {050000000000000000}
          ParentFont = False
          TabOrder = 0
          ViewStyle = vsReport
          OnColumnClick = lwComprobantesColumnClick
          OnCompare = lwComprobantesCompare
          OnCustomDrawItem = lwComprobantesCustomDrawItem
        end
        object BitBtn1: TBitBtn
          Left = 753
          Top = 548
          Width = 75
          Height = 30
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
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object btMarcar: TBitBtn
          Left = 37
          Top = 564
          Width = 150
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Marca Ordenes de Pago'
          TabOrder = 2
          OnClick = btMarcarClick
        end
      end
      object pag3: TTabSheet
        Caption = 'Formato Excel'
        ImageIndex = 3
        object AdvSGridPagos: TAdvSpreadGrid
          Left = 0
          Top = 0
          Width = 1169
          Height = 603
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
          ExplicitWidth = 1079
          ExplicitHeight = 561
          ColWidths = (
            0
            0
            0
            0
            65)
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
          Top = 603
          Width = 1169
          Height = 41
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1169
            41)
          object btExcel: TBitBtn
            Left = 970
            Top = 8
            Width = 75
            Height = 25
            Anchors = [akBottom]
            Caption = 'Excel'
            TabOrder = 0
            OnClick = btExcelClick
          end
          object btVer: TBitBtn
            Left = 1071
            Top = 8
            Width = 75
            Height = 25
            Anchors = [akBottom]
            Caption = 'Ver'
            TabOrder = 1
            OnClick = btVerClick
          end
        end
      end
      object pag2: TTabSheet
        Caption = 'Configuracion de Exportacion'
        ImageIndex = 1
        object Label15: TLabel
          Left = 465
          Top = 16
          Width = 158
          Height = 13
          Caption = 'Empresa Pagador / Razon Social'
        end
        object Label9: TLabel
          Left = 463
          Top = 61
          Width = 218
          Height = 13
          Caption = 'Correo Electronico Alternativo de Proveedores'
        end
        object edRazonSocial: TMaskEdit
          Left = 465
          Top = 35
          Width = 344
          Height = 21
          Alignment = taCenter
          MaxLength = 40
          TabOrder = 0
          Text = ''
        end
        object edCorreo: TEdit
          Left = 465
          Top = 80
          Width = 402
          Height = 21
          TabOrder = 1
        end
        object gbFrances: TGroupBox
          Left = 3
          Top = 16
          Width = 395
          Height = 283
          Caption = 'Datos Para el Bco.Frances'
          Color = clGradientInactiveCaption
          ParentBackground = False
          ParentColor = False
          TabOrder = 2
          object Label7: TLabel
            Left = 17
            Top = 16
            Width = 85
            Height = 13
            Caption = 'Nro de Cta Debito'
          end
          object Label6: TLabel
            Left = 148
            Top = 16
            Width = 53
            Height = 13
            Caption = 'Nro de Cuit'
          end
          object Label8: TLabel
            Left = 19
            Top = 64
            Width = 75
            Height = 13
            Caption = 'Sucursal Banco'
          end
          object Label10: TLabel
            Left = 19
            Top = 120
            Width = 94
            Height = 13
            Caption = 'Sucursal Cta Debito'
          end
          object Label11: TLabel
            Left = 144
            Top = 120
            Width = 68
            Height = 13
            Caption = 'DV Cta Debito'
          end
          object Label12: TLabel
            Left = 148
            Top = 62
            Width = 166
            Height = 13
            Caption = 'Contrato Proveedores Bco Frances'
          end
          object Label16: TLabel
            Left = 23
            Top = 179
            Width = 162
            Height = 13
            Caption = 'Autorizado a Retirar Pago Frances'
          end
          object Label17: TLabel
            Left = 21
            Top = 225
            Width = 75
            Height = 13
            Caption = 'Nro.Documento'
          end
          object edNroCtaDebito: TMaskEdit
            Left = 21
            Top = 35
            Width = 57
            Height = 21
            Alignment = taCenter
            EditMask = '0000000;1;_'
            MaxLength = 7
            TabOrder = 0
            Text = '       '
          end
          object edCuitEmpresa: TMaskEdit
            Left = 148
            Top = 35
            Width = 93
            Height = 21
            Alignment = taCenter
            EditMask = '00-00000000-0;1;_'
            MaxLength = 13
            TabOrder = 1
            Text = '  -        - '
          end
          object edSucursalEntrega: TMaskEdit
            Left = 23
            Top = 83
            Width = 46
            Height = 21
            Alignment = taCenter
            EditMask = '0000;1;_'
            MaxLength = 4
            TabOrder = 2
            Text = '    '
          end
          object edSucCtaDebito: TMaskEdit
            Left = 23
            Top = 139
            Width = 46
            Height = 21
            Alignment = taCenter
            EditMask = '0000;1;_'
            MaxLength = 4
            TabOrder = 3
            Text = '    '
          end
          object edDvCtaDebito: TMaskEdit
            Left = 148
            Top = 139
            Width = 44
            Height = 21
            Alignment = taCenter
            EditMask = '00;1;_'
            MaxLength = 2
            TabOrder = 4
            Text = '  '
          end
          object edContratoProv: TMaskEdit
            Left = 148
            Top = 81
            Width = 205
            Height = 21
            Alignment = taCenter
            MaxLength = 20
            TabOrder = 5
            Text = ''
          end
          object edDocAutorizado: TEdit
            Left = 23
            Top = 244
            Width = 178
            Height = 21
            TabOrder = 6
          end
          object edAutorizado: TEdit
            Left = 21
            Top = 198
            Width = 344
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 7
          end
        end
        object gbGalicia: TGroupBox
          Left = 3
          Top = 336
          Width = 395
          Height = 249
          Caption = 'Datos Para el Bco.Galicia'
          Color = clGradientInactiveCaption
          ParentBackground = False
          ParentColor = False
          TabOrder = 3
          object Label13: TLabel
            Left = 17
            Top = 24
            Width = 98
            Height = 13
            Caption = 'Siglas de la Empresa'
          end
          object Label14: TLabel
            Left = 142
            Top = 24
            Width = 83
            Height = 13
            Caption = 'Cta Especial PAP'
          end
          object edSiglasEmpresa: TMaskEdit
            Left = 19
            Top = 43
            Width = 42
            Height = 21
            Alignment = taCenter
            CharCase = ecUpperCase
            EditMask = 'aa;1;_'
            MaxLength = 2
            TabOrder = 0
            Text = '  '
          end
          object edCtaPAP: TMaskEdit
            Left = 144
            Top = 43
            Width = 141
            Height = 21
            Alignment = taCenter
            EditMask = '00000000000000;1;_'
            MaxLength = 14
            TabOrder = 1
            Text = '              '
          end
        end
        object gbBancoMacro: TGroupBox
          Left = 428
          Top = 122
          Width = 423
          Height = 105
          Caption = 'Banco Macro'
          TabOrder = 4
          object Label18: TLabel
            Left = 16
            Top = 16
            Width = 65
            Height = 13
            Caption = 'Nro.Convenio'
          end
          object edNroConvenioMacro: TEdit
            Left = 16
            Top = 35
            Width = 169
            Height = 21
            TabOrder = 0
            Text = 'edNroConvenioMacro'
          end
        end
      end
      object pagNumeros: TTabSheet
        Caption = 'Numeracion'
        ImageIndex = 4
        object cxGrid1: TcxGrid
          Left = 3
          Top = 0
          Width = 614
          Height = 473
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSOPagoNumeracion
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            OptionsView.GroupByBox = False
            Styles.Header = cxStyle1
            object cxGrid1DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 97
            end
            object cxGrid1DBTableView1ID_OP: TcxGridDBColumn
              DataBinding.FieldName = 'ID_OP'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 35
            end
            object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 35
            end
            object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
            end
            object cxGrid1DBTableView1LETRAOP: TcxGridDBColumn
              DataBinding.FieldName = 'LETRAOP'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Width = 40
            end
            object cxGrid1DBTableView1SUCOP: TcxGridDBColumn
              DataBinding.FieldName = 'SUCOP'
              HeaderAlignmentHorz = taCenter
              Width = 62
            end
            object cxGrid1DBTableView1NUMEROOP: TcxGridDBColumn
              DataBinding.FieldName = 'NUMEROOP'
              HeaderAlignmentHorz = taCenter
              Width = 108
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object ModoContinuo: TTabSheet
        Caption = 'Modo Continuo'
        ImageIndex = 5
        object Panel3: TPanel
          Left = 0
          Top = 603
          Width = 1169
          Height = 41
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            1169
            41)
          object btConsultar: TButton
            Left = 1057
            Top = 6
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Consultar'
            TabOrder = 0
            OnClick = btConsultarClick
          end
          object btExcelLst: TButton
            Left = 946
            Top = 6
            Width = 74
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Excel'
            TabOrder = 1
            OnClick = btExcelLstClick
          end
          object chbFiltros: TAdvOfficeCheckBox
            Left = 8
            Top = 9
            Width = 120
            Height = 20
            Color = clBtnHighlight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentColor = False
            TabOrder = 2
            OnClick = chbFiltrosClick
            Alignment = taLeftJustify
            Caption = 'Activar Filtros'
            ReturnIsTab = False
            Themed = True
            Version = '1.8.4.2'
          end
        end
        object dbgListado: TDBAdvGrid
          Left = 0
          Top = 0
          Width = 1169
          Height = 603
          Align = alClient
          ColCount = 18
          Ctl3D = True
          DrawingStyle = gdsGradient
          FixedColor = clWhite
          RowCount = 2
          FixedRows = 1
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect, goFixedRowDefAlign]
          ParentCtl3D = False
          TabOrder = 1
          OnGetAlignment = dbgListadoGetAlignment
          OnGetFormat = dbgListadoGetFormat
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = 4474440
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 11565130
          ActiveCellColorTo = 11565130
          BorderColor = 11250603
          ColumnHeaders.Strings = (
            ''
            'Fecha'
            'Codigo'
            'Nombre'
            'Tp'
            'Cl'
            'Nro.Cpbte'
            'Cuit'
            'Detalle'
            'Nro.Che'
            'Nro.Cta'
            'Nro.Che 3'#186
            'Banco')
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
          ExcelStyleDecimalSeparator = True
          Filter = <>
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'Tahoma'
          FilterDropDown.Font.Style = []
          FilterDropDown.TextChecked = 'Checked'
          FilterDropDown.TextUnChecked = 'Unchecked'
          FilterDropDownClear = '(All)'
          FilterDropDownCheck = True
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
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '0.00'
          FormatType = ftExcel
          HoverButtons.Buttons = <>
          HTMLSettings.ImageFolder = 'images'
          HTMLSettings.ImageBaseName = 'img'
          Look = glCustom
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
          SelectionColor = 13744549
          SelectionTextColor = clWindowText
          SortSettings.HeaderColor = clWhite
          SortSettings.HeaderColorTo = clWhite
          SortSettings.HeaderMirrorColor = clWhite
          SortSettings.HeaderMirrorColorTo = clWhite
          Version = '2.8.3.9'
          AutoCreateColumns = True
          AutoRemoveColumns = False
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
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = 3881787
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
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
              FieldName = 'FECHA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Fecha'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 79
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 6
              FieldName = 'CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Codigo'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 64
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 35
              FieldName = 'NOMBRE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Nombre'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 151
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 2
              FieldName = 'TIPOCPBTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Tp'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 40
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 2
              FieldName = 'CLASECPBTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Cl'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 34
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 13
              FieldName = 'NROCPBTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Nro.Cpbte'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 106
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 13
              FieldName = 'CUIT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Cuit'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 78
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 15
              FieldName = 'DETALLE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Detalle'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 138
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 11
              FieldName = 'NROCHQUE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Nro.Che'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 90
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 15
              FieldName = 'NROCTA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Nro.Cta'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 90
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 11
              FieldName = 'NROCHQUE3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Header = 'Nro.Che 3'#186
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 85
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 20
              FieldName = 'BANCO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
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
              EditLength = 24
              FieldName = 'RETGANANCIA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 71
            end
            item
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              EditLength = 24
              FieldName = 'RETIIBB'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 70
            end
            item
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              FieldName = 'HABER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 81
            end
            item
              Alignment = taRightJustify
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              FieldName = 'TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clBlue
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = [fsBold]
              HeaderAlignment = taCenter
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              Width = 90
            end
            item
              Alignment = taCenter
              Borders = []
              BorderPen.Color = clSilver
              ButtonHeight = 18
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              FieldName = 'MUESTRACOMPROBANTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header = 'Tipo Comprobante'
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clGreen
              HeaderFont.Height = -11
              HeaderFont.Name = 'MS Sans Serif'
              HeaderFont.Style = [fsBold]
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'MS Sans Serif'
              PrintFont.Style = []
              Width = 115
            end>
          DataSource = DSListado
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
          ExplicitWidth = 1389
          ExplicitHeight = 561
          ColWidths = (
            20
            79
            64
            151
            40
            34
            106
            78
            138
            90
            90
            85
            123
            71
            70
            81
            90
            115)
          RowHeights = (
            22
            22)
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 672
    Width = 1177
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 672
    ExplicitWidth = 1177
    inherited btConfirma: TBitBtn
      Width = 39
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitWidth = 39
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Left = 41
      Width = 32
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 41
      ExplicitWidth = 32
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Left = 73
      Width = 32
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 73
      ExplicitWidth = 32
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Left = 105
      Width = 24
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 105
      ExplicitWidth = 24
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Left = 129
      Height = 28
      Visible = False
      ExplicitLeft = 129
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Left = 144
      Height = 28
      DoubleBuffered = True
      ExplicitLeft = 144
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Left = 219
      Height = 28
      Visible = False
      ExplicitLeft = 219
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Left = 234
      Width = 39
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 234
      ExplicitWidth = 39
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Left = 273
      Height = 28
      DoubleBuffered = True
      ExplicitLeft = 273
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 348
      Top = 0
      Width = 21
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 369
      Top = 0
      Width = 75
      Height = 28
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
    object ToolButton2: TToolButton
      Left = 444
      Top = 0
      Width = 36
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object btFrances: TButton
      Left = 480
      Top = 0
      Width = 153
      Height = 28
      Action = ExportarBcoFrances
      TabOrder = 8
    end
    object ToolButton3: TToolButton
      Left = 633
      Top = 0
      Width = 15
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object chFechaProceso: TCheckBox
      Left = 648
      Top = 0
      Width = 138
      Height = 28
      Caption = 'Usar Fecha de Proceso'
      TabOrder = 10
    end
    object btGalicia: TButton
      Left = 786
      Top = 0
      Width = 143
      Height = 28
      Action = ExportarBcoGalicia
      TabOrder = 9
    end
    object btBcoMacro: TButton
      Left = 929
      Top = 0
      Width = 143
      Height = 28
      Action = ExportarBcoMacro
      TabOrder = 11
    end
  end
  inherited Panel1: TPanel
    Top = 702
    Width = 1177
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 702
    ExplicitWidth = 1177
    inherited DBStatusLabel1: TJvDBStatusLabel
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 1088
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1088
    end
  end
  inherited ActionList1: TActionList
    Left = 288
    Top = 56
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object VerCpbte: TAction
      Caption = 'VerCpbte'
      OnExecute = VerCpbteExecute
    end
    object ExportarBcoFrances: TAction
      Caption = 'Exportar TXT Bco.Frances'
      OnExecute = ExportarBcoFrancesExecute
    end
    object BuscarProveedor: TAction
      Caption = 'BuscarProveedor'
      OnExecute = BuscarProveedorExecute
    end
    object ExportarBcoGalicia: TAction
      Caption = 'Exportar TXT Bco.Galicia'
      OnExecute = ExportarBcoGaliciaExecute
    end
    object ExportarBcoMacro: TAction
      Caption = 'Exportar TXT Bco.Macro'
      OnExecute = ExportarBcoMacroExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 816
    Top = 104
  end
  inherited ImageList1: TImageList
    Left = 296
    Top = 152
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
    Left = 552
    Top = 440
  end
  inherited QUltimoCodigo: TSQLQuery
    Top = 528
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 616
    Top = 448
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 528
    Top = 240
  end
  inherited QBrowse2: TFDQuery
    Left = 32
    Top = 672
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 32
    Top = 656
  end
  object DSOPago: TDataSource
    DataSet = CDSOPago
    Left = 216
    Top = 72
  end
  object DSCajaMov: TDataSource
    DataSet = QCajaMov
    Left = 384
    Top = 344
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 642
    Top = 299
  end
  object frDBOPago: TfrxDBDataset
    UserName = 'frDBOPago'
    CloseDataSource = False
    DataSource = DSOPago
    BCDToCurrency = False
    DataSetOptions = []
    Left = 448
    Top = 480
    FieldDefs = <
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'ID_OP'
        FieldAlias = 'ID_OP'
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
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
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
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'ENTREGADO'
        FieldAlias = 'ENTREGADO'
      end
      item
        FieldName = 'IMPORTEIIBB'
        FieldAlias = 'IMPORTEIIBB'
      end
      item
        FieldName = 'IMPORTERETGAN'
        FieldAlias = 'IMPORTERETGAN'
      end
      item
        FieldName = 'CORREO'
        FieldAlias = 'CORREO'
      end
      item
        FieldName = 'PROVINCIA'
        FieldAlias = 'PROVINCIA'
      end
      item
        FieldName = 'TOTAL_NETO'
        FieldAlias = 'TOTAL_NETO'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'AUTORIZADO_NOMBRE'
        FieldAlias = 'AUTORIZADO_NOMBRE'
      end
      item
        FieldName = 'AUTORIZADO_TIPODOC'
        FieldAlias = 'AUTORIZADO_TIPODOC'
      end
      item
        FieldName = 'AUTORIZADO_NRODOC'
        FieldAlias = 'AUTORIZADO_NRODOC'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end>
  end
  object frDBValores: TfrxDBDataset
    UserName = 'frDBValores'
    CloseDataSource = False
    DataSource = DSCajaMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 248
    Top = 488
    FieldDefs = <
      item
        FieldName = 'ID_TPAGO'
        FieldAlias = 'ID_TPAGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end>
  end
  object frConsulta: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.814745000000000000
    ReportOptions.LastChange = 39638.814745000000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 128
    Top = 507
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object DSRetIB: TDataSource
    DataSet = QRetIngBrDet
    Left = 488
    Top = 176
  end
  object DSRetGan: TDataSource
    DataSet = QRetGan
    Left = 88
    Top = 320
  end
  object frDBGanacias: TfrxDBDataset
    UserName = 'frDBGanacias'
    CloseDataSource = False
    DataSource = DSRetGan
    BCDToCurrency = False
    DataSetOptions = []
    Left = 176
    Top = 488
    FieldDefs = <
      item
        FieldName = 'CONCEPTO'
        FieldAlias = 'CONCEPTO'
      end
      item
        FieldName = 'IMPUESTO_RETENIDO'
        FieldAlias = 'IMPUESTO_RETENIDO'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end>
  end
  object frDBIngBru: TfrxDBDataset
    UserName = 'frDBIngBru'
    CloseDataSource = False
    DataSource = DSRetIB
    BCDToCurrency = False
    DataSetOptions = []
    Left = 304
    Top = 488
    FieldDefs = <
      item
        FieldName = 'ID_DET'
        FieldAlias = 'ID_DET'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'BASEIMPONIBLE'
        FieldAlias = 'BASEIMPONIBLE'
      end
      item
        FieldName = 'PORCENTAJE'
        FieldAlias = 'PORCENTAJE'
      end
      item
        FieldName = 'RETENCION'
        FieldAlias = 'RETENCION'
      end
      item
        FieldName = 'ID_CPBTE_RETENIDO'
        FieldAlias = 'ID_CPBTE_RETENIDO'
      end
      item
        FieldName = 'TIPOCPBTE_RETENIDO'
        FieldAlias = 'TIPOCPBTE_RETENIDO'
      end
      item
        FieldName = 'CLASECPBTE_RETENIDO'
        FieldAlias = 'CLASECPBTE_RETENIDO'
      end>
  end
  object CDSOPago: TClientDataSet
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
        Name = 'ESTADO'
        ParamType = ptInput
        Size = 1
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'formapag'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'banco'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_comprob'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOPago'
    AfterDelete = CDSOPagoAfterDelete
    AfterScroll = CDSOPagoAfterScroll
    Left = 157
    Top = 72
    object CDSOPagoID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = []
      Required = True
    end
    object CDSOPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSOPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSOPagoNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSOPagoTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSOPagoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      ProviderFlags = []
      Size = 13
    end
    object CDSOPagoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 35
    end
    object CDSOPagoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
      Size = 15
    end
    object CDSOPagoCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      ProviderFlags = []
      Size = 8
    end
    object CDSOPagoENTREGADO: TStringField
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      ProviderFlags = []
      Required = True
      OnSetText = CDSOPagoENTREGADOSetText
      FixedChar = True
      Size = 1
    end
    object CDSOPagoIMPORTEIIBB: TFloatField
      FieldName = 'IMPORTEIIBB'
      Origin = 'IMPORTEIIBB'
      ProviderFlags = []
    end
    object CDSOPagoIMPORTERETGAN: TFloatField
      FieldName = 'IMPORTERETGAN'
      Origin = 'IMPORTERETGAN'
      ProviderFlags = []
    end
    object CDSOPagoCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      ProviderFlags = []
      Size = 100
    end
    object CDSOPagoPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
      ProviderFlags = []
    end
    object CDSOPagoTOTAL_NETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'TOTAL_NETO'
      Origin = 'TOTAL_NETO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSOPagoDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSOPagoAUTORIZADO_NOMBRE: TStringField
      FieldName = 'AUTORIZADO_NOMBRE'
      Origin = 'AUTORIZADO_NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSOPagoAUTORIZADO_TIPODOC: TStringField
      FieldName = 'AUTORIZADO_TIPODOC'
      Origin = 'AUTORIZADO_TIPODOC'
      ProviderFlags = []
      Size = 3
    end
    object CDSOPagoAUTORIZADO_NRODOC: TStringField
      FieldName = 'AUTORIZADO_NRODOC'
      Origin = 'AUTORIZADO_NRODOC'
      ProviderFlags = []
      Size = 8
    end
    object CDSOPagoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object CDSOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object CDSOPagoFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = []
    end
    object CDSOPagoCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      ProviderFlags = []
      Size = 22
    end
  end
  object DSPOPago: TDataSetProvider
    DataSet = QOPago_Nueva
    UpdateMode = upWhereKeyOnly
    Left = 109
    Top = 72
  end
  object DSComprob: TDataSource
    AutoEdit = False
    DataSet = QComprob
    Left = 848
    Top = 488
  end
  object DSValores: TDataSource
    AutoEdit = False
    DataSet = QValores
    Left = 832
    Top = 336
  end
  object frDBTipoValores: TfrxDBDataset
    UserName = 'frDBTipoValores'
    CloseDataSource = False
    DataSource = DSValores
    BCDToCurrency = False
    DataSetOptions = []
    Left = 384
    Top = 488
    FieldDefs = <
      item
        FieldName = 'ID_CAJA_MOV'
        FieldAlias = 'ID_CAJA_MOV'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'TIPO_COMPROB'
        FieldAlias = 'TIPO_COMPROB'
      end
      item
        FieldName = 'CLASE_COMPROB'
        FieldAlias = 'CLASE_COMPROB'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ID_TPAGO'
        FieldAlias = 'ID_TPAGO'
      end
      item
        FieldName = 'TIPO'
        FieldAlias = 'TIPO'
      end
      item
        FieldName = 'BANCO'
        FieldAlias = 'BANCO'
      end
      item
        FieldName = 'FECHA_COBRO'
        FieldAlias = 'FECHA_COBRO'
      end>
  end
  object DSPMovAplicaCCCompra: TDataSetProvider
    DataSet = DMMain_2.QMovAplicaCCCompra
    UpdateMode = upWhereKeyOnly
    Left = 296
    Top = 210
  end
  object CDSMovAplicaCCCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovAplicaCCCompra'
    Left = 384
    Top = 48
    object CDSMovAplicaCCCompraID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCCompraFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSMovAplicaCCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSMovAplicaCCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovAplicaCCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSMovAplicaCCCompraIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraAPLICA_NROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'APLICA_NROCPBTE'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSMovAplicaCCCompraAPLICA_NETO: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'APLICA_NETO'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovAplicaCCCompraDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
    object CDSMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField
      DisplayLabel = 'Fecha Fc.'
      FieldName = 'MUESTRAFECHACPBTE'
      ProviderFlags = []
    end
    object CDSMovAplicaCCCompraMUESTRATOTALFACTURA: TFMTBCDField
      FieldName = 'MUESTRATOTALFACTURA'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object CDSMovAplicaCCCompraCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSMovAplicaCCCompra: TDataSource
    DataSet = CDSMovAplicaCCCompra
    Left = 488
    Top = 45
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_2.QProveedores
    Left = 128
    Top = 184
  end
  object CDSProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProveedor'
    Left = 208
    Top = 184
    object CDSProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSProveedorN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Size = 14
    end
    object CDSProveedorID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object CDSProveedorCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Size = 8
    end
    object CDSProveedorLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSProveedorTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Size = 10
    end
    object CDSProveedorTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Size = 10
    end
    object CDSProveedorCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object CDSProveedorN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Size = 13
    end
    object CDSProveedorACTIVO: TStringField
      FieldName = 'ACTIVO'
      Size = 1
    end
    object CDSProveedorRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Size = 1
    end
    object CDSProveedorRETIENE_IB: TStringField
      FieldName = 'RETIENE_IB'
      Size = 1
    end
    object CDSProveedorRETIENE_GANANCIAS: TStringField
      FieldName = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object CDSProveedorIVA_SERVICIOS: TStringField
      FieldName = 'IVA_SERVICIOS'
      Size = 1
    end
    object CDSProveedorPRECIOS_CON_IVA: TStringField
      FieldName = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object CDSProveedorOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSProveedorNOMBRE_REPRESENTANTE: TStringField
      FieldName = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorDIRECCION_REPRESENTANTE: TStringField
      FieldName = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object CDSProveedorTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Required = True
      Size = 1
    end
    object CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object CDSProveedorFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object CDSProveedorSALDO_INICIAL: TFMTBCDField
      FieldName = 'SALDO_INICIAL'
      Precision = 15
      Size = 3
    end
    object CDSProveedorID_PERC_IVA: TIntegerField
      FieldName = 'ID_PERC_IVA'
    end
    object CDSProveedorID_PERC_IBB: TIntegerField
      FieldName = 'ID_PERC_IBB'
    end
    object CDSProveedorID_PERC_IBB_2: TIntegerField
      FieldName = 'ID_PERC_IBB_2'
    end
    object CDSProveedorRUBRO: TIntegerField
      FieldName = 'RUBRO'
    end
    object CDSProveedorID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object CDSProveedorEXENTO_GANACIA: TStringField
      FieldName = 'EXENTO_GANACIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField
      FieldName = 'CODIGO_REGIMEN_RET_GANACIA'
      Required = True
    end
    object CDSProveedorEXENTO_RETENCION_IB: TStringField
      FieldName = 'EXENTO_RETENCION_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorID_TASA_RETENCION_IB: TIntegerField
      FieldName = 'ID_TASA_RETENCION_IB'
      Required = True
    end
    object CDSProveedorNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
    object CDSProveedorCORREO: TStringField
      FieldName = 'CORREO'
      Size = 100
    end
    object CDSProveedorCONV_MULTI: TStringField
      FieldName = 'CONV_MULTI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorMONEDA_PRECIOS: TIntegerField
      FieldName = 'MONEDA_PRECIOS'
    end
    object CDSProveedorTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object CDSProveedorDESPERIVA: TStringField
      FieldName = 'DESPERIVA'
      ProviderFlags = []
    end
    object CDSProveedorDESPERIB: TStringField
      FieldName = 'DESPERIB'
      ProviderFlags = []
    end
    object CDSProveedorDESPERIB2: TStringField
      FieldName = 'DESPERIB2'
      ProviderFlags = []
    end
    object CDSProveedorMUESTRADETALLERETIIBB: TStringField
      FieldName = 'MUESTRADETALLERETIIBB'
      ProviderFlags = []
      Size = 25
    end
    object CDSProveedorMUESTRATASARETIIBB: TFMTBCDField
      FieldName = 'MUESTRATASARETIIBB'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object CDSProveedorMUESTRAMINIMPONIRETIIBB: TFMTBCDField
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 708
    Top = 424
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxListViewReportLink
      Active = True
      Component = lwComprobantes
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 10000
      PrinterPage.Margins.Right = 10000
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45886.996159675920000000
      ShrinkToPageWidth = True
      TimeFormat = 0
      EndEllipsis = True
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object frAplicaciones: TfrxDBDataset
    UserName = 'frAplicaciones'
    CloseDataSource = False
    DataSet = CDSMovAplicaCCCompra
    BCDToCurrency = False
    DataSetOptions = []
    Left = 512
    Top = 480
    FieldDefs = <
      item
        FieldName = 'ID_MOV'
        FieldAlias = 'ID_MOV'
      end
      item
        FieldName = 'ID_MOVCCCOMPRA'
        FieldAlias = 'ID_MOVCCCOMPRA'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'PROVEEDOR'
        FieldAlias = 'PROVEEDOR'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
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
        FieldName = 'NUMEROCPBTE'
        FieldAlias = 'NUMEROCPBTE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'APLICA_ID_CPBTE'
        FieldAlias = 'APLICA_ID_CPBTE'
      end
      item
        FieldName = 'APLICA_TIPOCPBTE'
        FieldAlias = 'APLICA_TIPOCPBTE'
      end
      item
        FieldName = 'APLICA_CLASECPBTE'
        FieldAlias = 'APLICA_CLASECPBTE'
      end
      item
        FieldName = 'APLICA_NROCPBTE'
        FieldAlias = 'APLICA_NROCPBTE'
      end
      item
        FieldName = 'APLICA_NETO'
        FieldAlias = 'APLICA_NETO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'MUESTRAFECHACPBTE'
        FieldAlias = 'MUESTRAFECHACPBTE'
      end
      item
        FieldName = 'MUESTRATOTALFACTURA'
        FieldAlias = 'MUESTRATOTALFACTURA'
      end
      item
        FieldName = 'CONCILIADO'
        FieldAlias = 'CONCILIADO'
      end>
  end
  object DSPBanco: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCtaCajaBco
    Left = 124
    Top = 392
  end
  object CDSBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBanco'
    Left = 188
    Top = 392
    object CDSBancoID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
    end
    object CDSBancoID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Required = True
    end
    object CDSBancoNOMBRE: TStringField
      DisplayWidth = 22
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBancoNRO_CUENTA: TStringField
      DisplayWidth = 10
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object CDSBancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSBancoCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSBancoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSBanco: TDataSource
    DataSet = CDSBanco
    Left = 68
    Top = 392
  end
  object SaveDialog: TSaveDialog
    Left = 700
    Top = 168
  end
  object QOPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select o.fecha,o.id_op,o.tipocpbte,o.clasecpbte,o.nrocpbte,o.nom' +
        'bre,o.razonsocial, o.Total_neto,o.descuento,o.total,'
      
        '       o.codigo,o.cuit,o.direccion,o.localidad,o.cpostal,o.entre' +
        'gado,pro.cbu,'
      
        '       rii.total as ImporteIIBB,rg.impuesto_retenido as ImporteR' +
        'etGan,pro.correo,cp.provincia,'
      
        '       pro.autorizado_nombre,pro.autorizado_tipodoc,autorizado_n' +
        'rodoc,ch.id_banco,cca.id_banco from caja_mov cm'
      '  left join ordenpago o on o.id_op = cm.id_comprobante'
      '  left join comprobantes c on c.letra    = o.letraop and'
      '                         c.tipo_comprob  = o.tipocpbte and'
      '                         c.sucursal      = o.sucursal and'
      '                         c.clase_comprob = o.clasecpbte and'
      '                         c.compra_venta  = '#39'C'#39
      '  left join cheque_propio ch on ch.id_mov_caja = cm.id_mov_caja'
      '  left join bancos b on b.id_banco = ch.id_banco'
      ''
      
        '  left join transf_banco_emitidas tb on tb.id_mov_caja = cm.id_m' +
        'ov_caja'
      '  left join cuenta_caja cca on cca.id_cuenta=tb.id_cuenta_banco'
      '  left join bancos bt on bt.id_banco=cca.id_banco'
      ' '
      
        '  left join cpbte_ret_ingbr_cab rii on rii.id_cpbte_origen = o.i' +
        'd_op'
      '  left join retenciones_ganancia rg on rg.id_op = o.id_op'
      '  left join poveedor pro on pro.codigo = o.codigo'
      '  left join c_postal cp on cp.id_postal = pro.id_cod_postal'
      'where (cm.fecha_operacion between :desde and :hasta) and'
      
        '      (cm.tipo_comprob= '#39'OP'#39') and (o.entregado = :estado or :est' +
        'ado = '#39'*'#39' ) and'
      '      (o.sucursal = :suc or :suc = -1 ) and'
      '      ((cm.id_tpago = :formapag ) or (:formapag <= 0)) and'
      '      (((ch.id_banco = :banco ) or (:banco = -1)  ) or'
      '      ((cca.id_banco = :banco ) or (:banco = -1)) ) and'
      ''
      '      (o.codigo = :codigo or :codigo = '#39'******'#39' ) and'
      '      (c.id_comprobante=:id_comprob or :id_comprob = -1 )'
      ''
      
        'group by o.fecha,o.id_op,o.tipocpbte,o.clasecpbte,o.nrocpbte,o.n' +
        'ombre,o.razonsocial, o.total_neto,o.descuento, o.total,'
      
        '         o.codigo,o.cuit,o.direccion,o.localidad,o.cpostal,o.ent' +
        'regado,pro.cbu,rii.total,rg.impuesto_retenido,pro.correo,cp.prov' +
        'incia,'
      
        '         pro.autorizado_nombre,pro.autorizado_tipodoc,autorizado' +
        '_nrodoc,ch.id_banco,cca.id_banco'
      'order by o.fecha,o.nrocpbte')
    Left = 48
    Top = 40
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
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'formapag'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'banco'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'id_comprob'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOPagoID_OP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoTIPOCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QOPagoCLASECPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QOPagoNROCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QOPagoNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QOPagoTOTAL_NETO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_NETO'
      Origin = 'TOTAL_NETO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoDESCUENTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QOPagoCUIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUIT'
      Origin = 'CUIT'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QOPagoDIRECCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QOPagoLOCALIDAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QOPagoCPOSTAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QOPagoENTREGADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QOPagoIMPORTEIIBB: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPORTEIIBB'
      Origin = 'IMPORTEIIBB'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoIMPORTERETGAN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPORTERETGAN'
      Origin = 'IMPORTERETGAN'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoCORREO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CORREO'
      Origin = 'CORREO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QOPagoPROVINCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QOPagoAUTORIZADO_NOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AUTORIZADO_NOMBRE'
      Origin = 'AUTORIZADO_NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QOPagoAUTORIZADO_TIPODOC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AUTORIZADO_TIPODOC'
      Origin = 'AUTORIZADO_TIPODOC'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QOPagoAUTORIZADO_NRODOC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AUTORIZADO_NRODOC'
      Origin = 'AUTORIZADO_NRODOC'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QOPagoRAZONSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QOPagoCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
  end
  object QRetGan: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ret.concepto,ret.impuesto_retenido,ret.fecha,ret.numero_r' +
        'etencion from RETENCIONES_GANANCIA ret'
      'where ret.id_op=:id')
    Left = 32
    Top = 316
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetGanCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 25
    end
    object QRetGanIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
      Origin = 'IMPUESTO_RETENIDO'
      DisplayFormat = ',0.00'
    end
    object QRetGanNUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Origin = 'NUMERO_RETENCION'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QRetGanFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
  end
  object QRetIngBrDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select det.* from CPBTE_RET_INGBR_DET det '
      'where det.id_cab=:id')
    Left = 336
    Top = 260
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetIngBrDetID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetIngBrDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
    end
    object QRetIngBrDetFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRetIngBrDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 15
    end
    object QRetIngBrDetIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object QRetIngBrDetBASEIMPONIBLE: TFloatField
      DisplayLabel = 'Base Imp.'
      FieldName = 'BASEIMPONIBLE'
      Origin = 'BASEIMPONIBLE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QRetIngBrDetPORCENTAJE: TFloatField
      DisplayLabel = '% Ret.'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QRetIngBrDetRETENCION: TFloatField
      DisplayLabel = 'Reten.'
      FieldName = 'RETENCION'
      Origin = 'RETENCION'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QRetIngBrDetID_CPBTE_RETENIDO: TIntegerField
      FieldName = 'ID_CPBTE_RETENIDO'
      Origin = 'ID_CPBTE_RETENIDO'
    end
    object QRetIngBrDetTIPOCPBTE_RETENIDO: TStringField
      FieldName = 'TIPOCPBTE_RETENIDO'
      Origin = 'TIPOCPBTE_RETENIDO'
      Size = 2
    end
    object QRetIngBrDetCLASECPBTE_RETENIDO: TStringField
      FieldName = 'CLASECPBTE_RETENIDO'
      Origin = 'CLASECPBTE_RETENIDO'
      Size = 2
    end
  end
  object QRetIB: TFDQuery
    AfterOpen = QRetIBAfterOpen
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select reti.id,reti.nrocpbte,reti.total,reti.fecha from CPBTE_RE' +
        'T_INGBR_CAB reti'
      'where reti.id_cpbte_origen=:id')
    Left = 424
    Top = 180
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetIBID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetIBNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QRetIBTOTAL: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object QRetIBFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object QCajaMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cm.id_tpago,tp.detalle,Sum(cm.haber) as Haber from caja_m' +
        'ov cm'
      'left join tipopago tp on tp.id_tpago=cm.id_tpago '
      'where cm.id_comprobante=:id and cm.tipo_comprob=:tipo'
      'group by cm.id_tpago,tp.detalle')
    Left = 320
    Top = 340
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QCajaMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object QCajaMovDETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QCajaMovHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
  end
  object QValores: TFDQuery
    AfterOpen = QValoresAfterOpen
    Filtered = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from lst_valores_comprob (:id_comprob,:tipocpbte,:clase' +
        'cpbte)')
    Left = 768
    Top = 340
    ParamData = <
      item
        Position = 1
        Name = 'id_comprob'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'tipocpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'clasecpbte'
        DataType = ftString
        ParamType = ptInput
      end>
    object QValoresID_CAJA_MOV: TIntegerField
      FieldName = 'ID_CAJA_MOV'
      Origin = 'ID_CAJA_MOV'
    end
    object QValoresNUMERO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object QValoresTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object QValoresCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object QValoresDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 40
    end
    object QValoresIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QValoresID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
    end
    object QValoresTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 3
    end
    object QValoresBANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 40
    end
    object QValoresFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QValoresFECHA_COBRO: TSQLTimeStampField
      DisplayLabel = 'Fecha Cobro'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes'
      'where tipo_comprob='#39'OP'#39' '
      'and compra_venta='#39'C'#39' '
      'and sucursal=:suc')
    Left = 856
    Top = 412
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QComprobDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QComprobID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QComprobCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QComprobFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QComprobDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QComprobULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QComprobEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QChePropios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select SUm(cm.haber) as TotalChe from caja_mov cm where cm.tipo_' +
        'comprob='#39'OP'#39' and cm.id_tpago=2 and'
      'cm.id_comprobante between :Id_desde and :Id_hasta')
    Left = 240
    Top = 520
    ParamData = <
      item
        Position = 1
        Name = 'Id_desde'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Id_hasta'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QChePropiosTOTALCHE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCHE'
      Origin = 'TOTALCHE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QSumaRetIIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Sum(det.retencion) as SumaRetIIBB from cpbte_ret_ingbr_de' +
        't det'
      'left join cpbte_ret_ingbr_cab cab on cab.id=det.id_cab'
      'where cab.id_cpbte_origen between :id_Desde and'
      ':Id_Hasta and cab.tipocpbte_origen='#39'OP'#39)
    Left = 336
    Top = 592
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
    object QSumaRetIIBBSUMARETIIBB: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUMARETIIBB'
      Origin = 'SUMARETIIBB'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QSumRetGanancia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(ret.impuesto_retenido) as TotalRetGanancia from RETEN' +
        'CIONES_GANANCIA ret'
      'where ret.id_op between :ID_Desde and :ID_Hasta')
    Left = 344
    Top = 552
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
    object QSumRetGananciaTOTALRETGANANCIA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALRETGANANCIA'
      Origin = 'TOTALRETGANANCIA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 984
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object QCambiaEstado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update ordenpago op set op.entregado = :estado where op.id_op= :' +
        'id')
    Left = 544
    Top = 552
    ParamData = <
      item
        Name = 'ESTADO'
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
  end
  object QOPagoNumeracion: TFDQuery
    AfterPost = QOPagoNumeracionAfterPost
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select o.fecha,o.id_op,o.letraop, o.tipocpbte,o.clasecpbte,o.nro' +
        'cpbte,o.nombre,o.sucop,o.numeroop from ordenpago o '
      'where o.fecha between :desde and :hasta '
      ''
      'order by o.fecha,o.nrocpbte')
    Left = 632
    Top = 144
    ParamData = <
      item
        Position = 9
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 10
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QOPagoNumeracionFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QOPagoNumeracionID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object QOPagoNumeracionTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QOPagoNumeracionCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QOPagoNumeracionNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QOPagoNumeracionNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QOPagoNumeracionSUCOP: TStringField
      DisplayLabel = 'Suc.Op'
      FieldName = 'SUCOP'
      Origin = 'SUCOP'
      OnSetText = QOPagoNumeracionSUCOPSetText
      Size = 4
    end
    object QOPagoNumeracionNUMEROOP: TStringField
      DisplayLabel = 'Nro.Op'
      FieldName = 'NUMEROOP'
      Origin = 'NUMEROOP'
      OnSetText = QOPagoNumeracionNUMEROOPSetText
      Size = 8
    end
    object QOPagoNumeracionLETRAOP: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRAOP'
      Origin = 'LETRAOP'
      Size = 1
    end
  end
  object DSOPagoNumeracion: TDataSource
    DataSet = QOPagoNumeracion
    Left = 736
    Top = 112
  end
  object QSumaRetIVA: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select sum(r.impuesto_retenido) as TotalRetIva from retenciones_' +
        'iva r '
      'where r.id_op between :ID_Desde and :ID_Hasta and r.anulada<>'#39'S'#39)
    Left = 832
    Top = 544
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
    object QSumaRetIVATOTALRETIVA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALRETIVA'
      Origin = 'TOTALRETIVA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QRetIva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select r.* from retenciones_iva r '
      'where r.id_op=:id')
    Left = 896
    Top = 616
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRetIvaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetIvaID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      Required = True
    end
    object QRetIvaNUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Origin = 'NUMERO_RETENCION'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QRetIvaCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object QRetIvaCODIGO_REGIMEN: TIntegerField
      FieldName = 'CODIGO_REGIMEN'
      Origin = 'CODIGO_REGIMEN'
      Required = True
    end
    object QRetIvaCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 25
    end
    object QRetIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QRetIvaBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
      Origin = 'BASE_IMPONIBLE'
    end
    object QRetIvaMINIMO_NO_IMPONIBLE: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE'
      Origin = 'MINIMO_NO_IMPONIBLE'
    end
    object QRetIvaIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
      Origin = 'IMPUESTO_RETENIDO'
      DisplayFormat = ',0.00;-,0.00'
    end
    object QRetIvaOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QRetIvaANULADA: TStringField
      FieldName = 'ANULADA'
      Origin = 'ANULADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetIvaESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetIvaFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal')
    Left = 540
    Top = 344
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
  end
  object DSRetIva: TDataSource
    DataSet = QRetIva
    Left = 864
    Top = 568
  end
  object QOpMaxID: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Max(o.id_op) from caja_mov cm'
      '  left join ordenpago o on o.id_op=cm.id_comprobante'
      '  left join comprobantes c on c.letra=o.letraop and'
      
        '                                       c.tipo_comprob=o.tipocpbt' +
        'e and'
      '                                       c.sucursal=o.sucursal and'
      
        '                                       c.clase_comprob=o.clasecp' +
        'bte and'
      '                                       c.compra_venta='#39'C'#39
      '  left join cheque_propio ch on ch.id_mov_caja=cm.id_mov_caja'
      '  left join bancos b on b.id_banco=ch.id_banco'
      
        '  left join cpbte_ret_ingbr_cab rii on rii.id_cpbte_origen=o.id_' +
        'op'
      '  left join retenciones_ganancia rg on rg.id_op=o.id_op'
      '  left join poveedor pro on pro.codigo=o.codigo'
      '  left join c_postal cp on cp.id_postal=pro.id_cod_postal'
      'where (cm.fecha_operacion between :desde and :hasta) and'
      
        '      (cm.tipo_comprob= '#39'OP'#39') and (o.entregado = :estado or :est' +
        'ado = '#39'*'#39' ) and'
      '      (o.sucursal=:suc or :suc = -1 ) and'
      '      ((cm.id_tpago= :formapag ) or (:formapag <= 0)) and'
      '      ((ch.id_banco= :banco) or (:banco = -1)) and'
      '      (o.codigo = :codigo or :codigo = '#39'******'#39' ) and'
      '      (c.id_comprobante=:id_comprob or :id_comprob = -1 )'
      '')
    Left = 40
    Top = 160
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
      end
      item
        Position = 3
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'formapag'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'banco'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'id_comprob'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOpMaxIDMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QOpMinID: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select min(o.id_op) from caja_mov cm'
      '  left join ordenpago o on o.id_op=cm.id_comprobante'
      '  left join comprobantes c on c.letra=o.letraop and'
      
        '                                       c.tipo_comprob=o.tipocpbt' +
        'e and'
      '                                       c.sucursal=o.sucursal and'
      
        '                                       c.clase_comprob=o.clasecp' +
        'bte and'
      '                                       c.compra_venta='#39'C'#39
      '  left join cheque_propio ch on ch.id_mov_caja=cm.id_mov_caja'
      '  left join bancos b on b.id_banco=ch.id_banco'
      
        '  left join cpbte_ret_ingbr_cab rii on rii.id_cpbte_origen=o.id_' +
        'op'
      '  left join retenciones_ganancia rg on rg.id_op=o.id_op'
      '  left join poveedor pro on pro.codigo=o.codigo'
      '  left join c_postal cp on cp.id_postal=pro.id_cod_postal'
      'where (cm.fecha_operacion between :desde and :hasta) and'
      
        '      (cm.tipo_comprob= '#39'OP'#39') and (o.entregado = :estado or :est' +
        'ado = '#39'*'#39' ) and'
      '      (o.sucursal=:suc or :suc = -1 ) and'
      '      ((cm.id_tpago= :formapag ) or (:formapag <= 0)) and'
      '      ((ch.id_banco= :banco) or (:banco = -1)) and'
      '      (o.codigo = :codigo or :codigo = '#39'******'#39' ) and'
      '      (c.id_comprobante=:id_comprob or :id_comprob = -1 )'
      '')
    Left = 32
    Top = 216
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
      end
      item
        Position = 3
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'formapag'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'banco'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'id_comprob'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOpMinIDMIN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = 'MIN'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 660
    Top = 400
  end
  object QListado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select op.fecha,op.codigo,op.nombre,op.tipocpbte,op.clasecpbte,o' +
        'p.nrocpbte,op.cuit,cm.id_tpago,tp.detalle,'
      
        '       (coalesce(ch.numero,'#39'-'#39')) as NroChque,(coalesce(chq.nro_c' +
        'uenta,'#39'-'#39')) as NroCta,'
      
        '       (coalesce(ch3.numero,'#39'-'#39')) as NroChque3,(coalesce(b.nombr' +
        'e,'#39'-'#39')) as Banco,'
      '       (coalesce(rg.impuesto_retenido,0)) as RetGanancia,'
      ''
      
        '       (select coalesce( Sum(det.retencion),0) as RetIIBB from c' +
        'pbte_ret_ingbr_det det'
      '         left join cpbte_ret_ingbr_cab cab on cab.id=det.id_cab'
      
        '       where cab.id_cpbte_origen=op.id_op and cab.tipocpbte_orig' +
        'en='#39'OP'#39' and det.retencion>0),'
      ''
      ''
      
        '       cm.haber, op.total,c.denominacion as MuestraComprobante f' +
        'rom ordenpago op'
      
        'left join caja_mov cm on cm.id_comprobante=op.id_op and cm.tipo_' +
        'comprob=op.tipocpbte'
      'left join tipopago tp on tp.id_tpago=cm.id_tpago'
      'left join cheque_propio ch on ch.id_mov_caja=cm.id_mov_caja'
      'left join chequera chq on chq.id_chequera=ch.id_chequera'
      
        'left join cheque_tercero ch3 on ch3.id_mov_caja_egresos=cm.id_mo' +
        'v_caja'
      'left join bancos b on b.id_banco=ch3.id_banco'
      'left join retenciones_ganancia rg on rg.id_op=op.id_op'
      'left join comprobantes c on c.letra = op.letraop and'
      
        '                                      c.tipo_comprob=op.tipocpbt' +
        'e and'
      '                                      c.sucursal=op.sucursal and'
      
        '                                      c.clase_comprob=op.clasecp' +
        'bte and'
      '                                      c.compra_venta='#39'C'#39
      'where op.fecha between :desde and :hasta')
    Left = 796
    Top = 248
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
      end>
  end
  object CDSListado: TClientDataSet
    Active = True
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
      end>
    ProviderName = 'DSPListado'
    Left = 908
    Top = 248
    object CDSListadoFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSListadoCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSListadoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSListadoTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSListadoCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSListadoNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSListadoCUIT: TStringField
      DisplayLabel = 'Cuit'
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSListadoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object CDSListadoNROCTA: TStringField
      DisplayLabel = 'Nro.Cta'
      FieldName = 'NROCTA'
      Origin = 'NROCTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object CDSListadoBANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = 'BANCO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSListadoHABER: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSListadoTOTAL: TFloatField
      DisplayLabel = 'Total OP'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSListadoRETGANANCIA: TFloatField
      DisplayLabel = 'Ret.Ganancia'
      FieldName = 'RETGANANCIA'
      Origin = 'RETGANANCIA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSListadoRETIIBB: TFloatField
      DisplayLabel = 'Ret.IIBB'
      FieldName = 'RETIIBB'
      Origin = 'RETIIBB'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSListadoNROCHQUE: TStringField
      DisplayLabel = 'Nro.Che'
      FieldName = 'NROCHQUE'
      Origin = 'NROCHQUE'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object CDSListadoNROCHQUE3: TStringField
      DisplayLabel = 'Nro.Che 3'#186
      FieldName = 'NROCHQUE3'
      Origin = 'NROCHQUE3'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object CDSListadoMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
  end
  object DSPListado: TDataSetProvider
    DataSet = QListado
    Options = []
    Left = 852
    Top = 248
  end
  object DSListado: TDataSource
    DataSet = CDSListado
    Left = 956
    Top = 248
  end
  object AdvGridExcelI: TAdvGridExcelIO
    AdvStringGrid = dbgListado
    Options.ExportOverwrite = omWarn
    Options.ExportOverwriteMessage = 'Archivo %s exsitente lo sobre escribe ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    DateFormat = 'dd/mm/yyyy'
    Version = '3.14'
    OnExportColumnFormat = AdvGridExcelIExportColumnFormat
    Left = 1100
    Top = 240
  end
  object QOPago_Nueva: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'WITH CTE AS ('
      
        '  SELECT o.id_op, o.fecha, o.tipocpbte, o.clasecpbte, o.nrocpbte' +
        ', o.nombre, o.razonsocial,'
      
        '         o.Total_neto, o.descuento, o.total, o.codigo, o.cuit, o' +
        '.direccion, o.localidad, '
      '         o.cpostal, o.entregado, COALESCE(pro.cbu, '#39#39') as cbu,'
      
        '         COALESCE(rii.total, 0) as ImporteIIBB, COALESCE(rg.impu' +
        'esto_retenido, 0) as ImporteRetGan,'
      
        '         COALESCE(pro.correo, '#39#39') as correo, COALESCE(cp.provinc' +
        'ia, -1) as provincia,'
      
        '         COALESCE(pro.autorizado_nombre, '#39#39') as autorizado_nombr' +
        'e, '
      
        '         COALESCE(pro.autorizado_tipodoc, '#39#39') as autorizado_tipo' +
        'doc,'
      
        '         COALESCE(pro.autorizado_nrodoc, '#39#39') as autorizado_nrodo' +
        'c,'
      
        '         COALESCE(ch.id_banco, -1) as BancoCHE, COALESCE(cca.id_' +
        'banco, -1) as BancoTX,'
      
        '         ROW_NUMBER() OVER (PARTITION BY o.id_op ORDER BY o.fech' +
        'a DESC) AS fila'
      '  FROM caja_mov cm'
      '  LEFT JOIN ordenpago o ON o.id_op = cm.id_comprobante'
      '  LEFT JOIN comprobantes c ON c.letra = o.letraop'
      '                           AND c.tipo_comprob = o.tipocpbte'
      '                           AND c.sucursal = o.sucursal'
      '                           AND c.clase_comprob = o.clasecpbte'
      '                           AND c.compra_venta = '#39'C'#39
      '  LEFT JOIN cheque_propio ch ON ch.id_mov_caja = cm.id_mov_caja'
      '  LEFT JOIN bancos b ON b.id_banco = ch.id_banco'
      
        '  LEFT JOIN transf_banco_emitidas tb ON tb.id_mov_caja = cm.id_m' +
        'ov_caja'
      
        '  LEFT JOIN cuenta_caja cca ON cca.id_cuenta = tb.id_cuenta_banc' +
        'o'
      '  LEFT JOIN bancos bt ON bt.id_banco = cca.id_banco'
      
        '  LEFT JOIN cpbte_ret_ingbr_cab rii ON rii.id_cpbte_origen = o.i' +
        'd_op'
      '  LEFT JOIN retenciones_ganancia rg ON rg.id_op = o.id_op'
      '  LEFT JOIN poveedor pro ON pro.codigo = o.codigo'
      '  LEFT JOIN c_postal cp ON cp.id_postal = pro.id_cod_postal'
      '  WHERE (cm.fecha_operacion BETWEEN :desde AND :hasta)'
      '    AND (cm.tipo_comprob = '#39'OP'#39')'
      '    AND (o.entregado = :estado OR :estado = '#39'*'#39')'
      '    AND (o.sucursal = :suc OR :suc = -1)'
      '    AND ((cm.id_tpago = :formapag) OR (:formapag <= 0))'
      '    AND (((ch.id_banco = :banco) OR (:banco = -1))'
      '         OR ((cca.id_banco = :banco) OR (:banco = -1)))'
      '    AND (o.codigo = :codigo OR :codigo = '#39'******'#39')'
      '    AND (c.id_comprobante = :id_comprob OR :id_comprob = -1)'
      ')'
      'SELECT *'
      'FROM CTE'
      'WHERE fila = 1'
      'ORDER BY fecha, nrocpbte;')
    Left = 44
    Top = 104
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
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'formapag'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'banco'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'id_comprob'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

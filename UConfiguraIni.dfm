inherited FormConfiguraIni: TFormConfiguraIni
  Left = 370
  Top = 97
  Caption = 'Configuraci'#243'n del Equipo Local'
  ClientHeight = 729
  ClientWidth = 823
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 841
  ExplicitHeight = 770
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 823
    Height = 676
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 823
    ExplicitHeight = 584
    object pcConfiguracion: TPageControl
      Left = 0
      Top = 0
      Width = 823
      Height = 676
      ActivePage = tbGeneral
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 584
      object tbGeneral: TTabSheet
        Caption = 'General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        DesignSize = (
          815
          648)
        object Label1: TLabel
          Left = 24
          Top = 0
          Width = 41
          Height = 13
          Caption = 'Sucursal'
        end
        object Label2: TLabel
          Left = 24
          Top = 40
          Width = 21
          Height = 13
          Caption = 'Caja'
        end
        object Label3: TLabel
          Left = 184
          Top = 0
          Width = 47
          Height = 13
          Caption = 'Depositos'
          ParentShowHint = False
          ShowHint = True
        end
        object Label5: TLabel
          Left = 24
          Top = 80
          Width = 132
          Height = 13
          Caption = 'Impresora de Comprobantes'
          ParentShowHint = False
          ShowHint = True
        end
        object Label10: TLabel
          Left = 24
          Top = 122
          Width = 103
          Height = 13
          Caption = 'Impresora de Listados'
          ParentShowHint = False
          ShowHint = True
        end
        object Label6: TLabel
          Left = 24
          Top = 160
          Width = 106
          Height = 13
          Caption = 'Empleado por Defecto'
          ParentShowHint = False
          ShowHint = True
        end
        object Label11: TLabel
          Left = 12
          Top = 591
          Width = 91
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Cliente por Defecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          ExplicitTop = 452
        end
        object Label17: TLabel
          Left = 656
          Top = 7
          Width = 60
          Height = 13
          Caption = 'Host de FTP'
          ParentShowHint = False
          ShowHint = True
          Visible = False
        end
        object Label25: TLabel
          Left = 621
          Top = 570
          Width = 63
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Saldo CC Vta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 431
        end
        object Label26: TLabel
          Left = 708
          Top = 570
          Width = 68
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Sald CC Comp'
          ExplicitTop = 431
        end
        object Label27: TLabel
          Left = 575
          Top = 590
          Width = 20
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Min.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 451
        end
        object Label28: TLabel
          Left = 575
          Top = 615
          Width = 23
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Max.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 476
        end
        object Label42: TLabel
          Left = 498
          Top = 212
          Width = 177
          Height = 13
          Caption = 'Estado a Tomar en el Alta del Articulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label58: TLabel
          Left = 24
          Top = 272
          Width = 65
          Height = 13
          Hint = 'establece el pedio de consulta'
          Caption = 'Id de Balanza'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label59: TLabel
          Left = 24
          Top = 226
          Width = 96
          Height = 13
          Hint = 'establece el pedio de consulta'
          Caption = 'Puerto Com Balanza'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object cbAgenda: TCheckBox
          Left = 184
          Top = 209
          Width = 97
          Height = 17
          Caption = 'Usar Agenda'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object cbPrinterCpbte: TComboBox
          Left = 24
          Top = 96
          Width = 145
          Height = 21
          Hint = 'Impresora por defecto en Comprobantes'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnChange = cbPrinterCpbteChange
        end
        object cbPrinterListados: TComboBox
          Left = 24
          Top = 138
          Width = 145
          Height = 21
          Hint = 'Impresora por defecto en Listados'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnChange = cbPrinterCpbteChange
        end
        object cbImpresoraDefectoCpbte: TCheckBox
          Left = 184
          Top = 176
          Width = 249
          Height = 17
          Hint = 
            'Si se usa esta opci'#243'n la impresora elegida sera ignorada y'#13#10'se u' +
            'sara la que tiene Windows por Defecto'
          Caption = 'Usar Impresora por defecto en Comprobantes'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object cbImpresoraDefectoListado: TCheckBox
          Left = 184
          Top = 193
          Width = 233
          Height = 17
          Hint = 
            'Si se usa esta opci'#243'n la impresora elegida sera ignorada y'#13#10'se u' +
            'sara la que tiene Windows por Defecto'
          Caption = 'Usar Impresora por defecto en Listados'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object gbIntervalos: TGroupBox
          Left = 184
          Top = 76
          Width = 201
          Height = 97
          Caption = 'Meses de Intervalo en Ctas.Ctes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          object Label7: TLabel
            Left = 72
            Top = 20
            Width = 48
            Height = 13
            Hint = 'establece el pedio de consulta'
            Caption = 'en Ventas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label8: TLabel
            Left = 72
            Top = 44
            Width = 56
            Height = 13
            Hint = 'establece el pedio de consulta'
            Caption = 'en Compras'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label9: TLabel
            Left = 72
            Top = 68
            Width = 67
            Height = 13
            Hint = 'establece el pedio de consulta'
            Caption = 'en Empleados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object upRangoVta: TUpDown
            Left = 49
            Top = 16
            Width = 16
            Height = 21
            Hint = 'establece el pedio de consulta'
            Associate = edRangoVta
            Max = 500
            ParentShowHint = False
            Position = 1
            ShowHint = True
            TabOrder = 0
          end
          object edRangoVta: TEdit
            Left = 8
            Top = 16
            Width = 41
            Height = 21
            Hint = 'establece el pedio de consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Text = '1'
          end
          object edRangoComp: TEdit
            Left = 8
            Top = 40
            Width = 41
            Height = 21
            Hint = 'establece el pedio de consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Text = '1'
          end
          object upRangoComp: TUpDown
            Left = 49
            Top = 40
            Width = 16
            Height = 21
            Hint = 'establece el pedio de consulta'
            Associate = edRangoComp
            Max = 500
            ParentShowHint = False
            Position = 1
            ShowHint = True
            TabOrder = 3
          end
          object edRangoEmpleado: TEdit
            Left = 8
            Top = 64
            Width = 41
            Height = 21
            Hint = 'establece el pedio de consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Text = '1'
          end
          object UpRangoEmpleado: TUpDown
            Left = 49
            Top = 64
            Width = 16
            Height = 21
            Hint = 'establece el pedio de consulta'
            Associate = edRangoEmpleado
            Max = 500
            ParentShowHint = False
            Position = 1
            ShowHint = True
            TabOrder = 5
          end
        end
        object cbScannerSerie: TCheckBox
          Left = 24
          Top = 203
          Width = 97
          Height = 17
          Caption = 'Usa Balanza'
          TabOrder = 10
          OnClick = cbScannerSerieClick
        end
        object cbPuertoCom: TComboBox
          Left = 24
          Top = 245
          Width = 89
          Height = 21
          Hint = 'Puerto de Coneccion de la Balanza'
          Enabled = False
          TabOrder = 11
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
        end
        object cbVerFacturasVtaConIva: TCheckBox
          Left = 184
          Top = 226
          Width = 313
          Height = 17
          Hint = 
            'Visualiza las Facturas de Vta. en Inscripto con el IVA Incluido ' +
            'como si fuese una Factura B'
          Caption = 'Ver las Facturas de Venta Con Iva Discriminado (Inscriptos)'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object edNombreCliente: TEdit
          Left = 91
          Top = 609
          Width = 257
          Height = 21
          Anchors = [akLeft, akBottom]
          Color = clInfoBk
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          ExplicitTop = 517
        end
        object GroupBox1: TGroupBox
          Left = 423
          Top = 23
          Width = 365
          Height = 152
          Caption = 'Para la Carga de Articulos y Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          object Label13: TLabel
            Left = 8
            Top = 16
            Width = 88
            Height = 13
            Caption = 'Tipo Inscrp.Cliente'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label14: TLabel
            Left = 160
            Top = 17
            Width = 85
            Height = 13
            Caption = 'Tasa Iva Articulos'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label15: TLabel
            Left = 160
            Top = 58
            Width = 116
            Height = 13
            Caption = 'Sobre Tasa Iva Articulos'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label30: TLabel
            Left = 8
            Top = 56
            Width = 139
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = 'Modo de Gravamen Art'#237'culos'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
          end
          object Label16: TLabel
            Left = 8
            Top = 101
            Width = 80
            Height = 13
            Caption = 'Unidad de Stock'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label29: TLabel
            Left = 159
            Top = 101
            Width = 114
            Height = 13
            Caption = 'Unidad monetaria Stock'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object dbcMoneda: TJvDBLookupCombo
            Left = 159
            Top = 120
            Width = 145
            Height = 21
            EmptyValue = '-1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'ID'
            LookupDisplay = 'MONEDA'
            LookupSource = DSMoneda
            ParentFont = False
            TabOrder = 4
          end
          object ceInscripcionCliente: TJvDBLookupCombo
            Left = 8
            Top = 32
            Width = 145
            Height = 21
            Hint = 'Caja por defecto para las operaciones de caja y fondo'
            EmptyValue = '-1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'CODIGO'
            LookupDisplay = 'DETALLE'
            LookupSource = DSTipoInscripcion
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object ceTasaIva: TJvDBLookupCombo
            Left = 160
            Top = 32
            Width = 145
            Height = 21
            Hint = 'Caja por defecto para las operaciones de caja y fondo'
            EmptyValue = '-1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'CODIGO'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DSTasaIva
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object ceUnidades: TJvDBLookupCombo
            Left = 8
            Top = 120
            Width = 145
            Height = 21
            Hint = 'Caja por defecto para las operaciones de caja y fondo'
            EmptyValue = '-1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'ID'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DSUnidades
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object ceSobreTasaIva: TJvDBLookupCombo
            Left = 160
            Top = 74
            Width = 145
            Height = 21
            Hint = 'Caja por defecto para las operaciones de caja y fondo'
            EmptyValue = '-1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'CODIGO'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DSSobreTasaIva
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
        end
        object edHost: TEdit
          Left = 740
          Top = 3
          Width = 48
          Height = 21
          TabOrder = 16
          Visible = False
        end
        object chbFiltraCpbteCondIva: TCheckBox
          Left = 184
          Top = 243
          Width = 249
          Height = 17
          Caption = 'Filtra Cpbte. de Venta Segun Cond.Iva'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
        end
        object chbIngresoAutoamtico: TCheckBox
          Left = 184
          Top = 260
          Width = 281
          Height = 17
          Hint = 
            'Esta opcion hace que cuando se ingresa un itme en las facturas d' +
            'e venta, '#13#10'se complete el renglon con una unidad del articulo ve' +
            'ndido, '#13#10'para facilitar la carga. '#13#10'De todos modos se puede modi' +
            'ficar si es necesario mas de un item por renglon'
          Caption = 'Autocompletar cantidad en Facturas de Vta en 1 (uno)'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
        end
        object chEfectoVentana: TCheckBox
          Left = 431
          Top = 3
          Width = 169
          Height = 17
          Caption = 'Aplicar Efecto a las Ventanas'
          TabOrder = 19
        end
        object chbVerificaPrecioRt: TCheckBox
          Left = 184
          Top = 331
          Width = 169
          Height = 17
          Caption = 'Verifica Precio al facturar Rtos'
          TabOrder = 24
        end
        object chbVerificaPrecioCompra: TCheckBox
          Left = 184
          Top = 277
          Width = 169
          Height = 17
          Hint = 
            'Avisa la diferencia de precio en la compra, habilita o no la pre' +
            'gunta de si lo cambia o no'
          Caption = 'Verifica Precio En Compras'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 25
        end
        object ceSucursal: TJvDBLookupCombo
          Left = 24
          Top = 16
          Width = 145
          Height = 21
          Hint = 'Sucursal por defecto, con la que se hacen las operaciones.'
          EmptyValue = '-1'
          LookupField = 'CODIGO'
          LookupDisplay = 'DETALLE'
          LookupSource = DSSucursales
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object ceCaja: TJvDBLookupCombo
          Left = 24
          Top = 56
          Width = 145
          Height = 21
          Hint = 
            'Caja por defecto para las operaciones de caja y fondo. '#13#10'Esta Op' +
            'ci'#243'n tendra efecto si no esta activa la opcion de '#13#10'Control de C' +
            'aja por Usuario. De ser asi, la que prevalece es la '#13#10'Opcion de ' +
            'Caja por Usuario.'
          EmptyValue = '-1'
          LookupField = 'ID_CUENTA'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSCaja
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyPress = ceCajaKeyPress
        end
        object ceDeposito: TJvDBLookupCombo
          Left = 184
          Top = 16
          Width = 145
          Height = 21
          Hint = 'Deposito de mercaderia por defecto'
          EmptyValue = '-1'
          LookupField = 'ID'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSDepositos
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object ceEmpleado: TJvDBLookupCombo
          Left = 24
          Top = 176
          Width = 154
          Height = 21
          Hint = 'Este valor se usa en las ordenes de Trabajo '
          EmptyValue = '-1'
          LookupField = 'CODIGO'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSEmpleado
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object ceCliente: TJvComboEdit
          Left = 12
          Top = 610
          Width = 73
          Height = 21
          Anchors = [akLeft, akBottom]
          ButtonWidth = 16
          ClickKey = 16397
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          TabOrder = 13
          Text = ''
          OnButtonClick = BuscarClientesExecute
          OnKeyDown = ceClienteKeyDown
          OnKeyPress = ceClienteKeyPress
          ExplicitTop = 518
        end
        object Minimo: TJvCalcEdit
          Left = 604
          Top = 587
          Width = 80
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '0.00'
          FormatOnEditing = True
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 20
          DecimalPlacesAlwaysShown = False
          ExplicitTop = 495
        end
        object Maximo: TJvCalcEdit
          Left = 604
          Top = 612
          Width = 80
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '0.00'
          FormatOnEditing = True
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 21
          Value = 1000000.000000000000000000
          DecimalPlacesAlwaysShown = False
          ExplicitTop = 520
        end
        object MinimoComp: TJvCalcEdit
          Left = 696
          Top = 587
          Width = 80
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FormatOnEditing = True
          Anchors = [akLeft, akBottom]
          ParentFont = False
          ShowButton = False
          TabOrder = 22
          DecimalPlacesAlwaysShown = False
          ExplicitTop = 495
        end
        object MaximoComp: TJvCalcEdit
          Left = 696
          Top = 610
          Width = 80
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '0.00'
          FormatOnEditing = True
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 23
          Value = 1000000.000000000000000000
          DecimalPlacesAlwaysShown = False
          ExplicitTop = 518
        end
        object chIvaComprobantes: TCheckBox
          Left = 184
          Top = 295
          Width = 281
          Height = 17
          Hint = 
            'Verifica el tipo de comprobante segun la condicion de iva del cl' +
            'iente'
          Caption = 'Verifica Comprobantes Contra Condicion IVA Cliente'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 26
        end
        object chbVerificaNumercionCpbte: TCheckBox
          Left = 184
          Top = 349
          Width = 283
          Height = 17
          Caption = 'Verifica Numeraci'#243'n de Cbtes.de Vta en Todas las Suc'
          TabOrder = 27
        end
        object chbGenerarOProducionVta: TCheckBox
          Left = 498
          Top = 176
          Width = 227
          Height = 17
          Caption = 'Generar O.de Produccion en Fc de Vtas'
          TabOrder = 28
        end
        object chbPrecioArticulo: TCheckBox
          Left = 512
          Top = 243
          Width = 124
          Height = 17
          Caption = 'Modificar Precio Art.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 29
        end
        object chbDetalleArticulo: TCheckBox
          Left = 512
          Top = 226
          Width = 124
          Height = 17
          Caption = 'Modicar Detalle Art.'
          TabOrder = 30
        end
        object chbSeguimientoCosto: TCheckBox
          Left = 184
          Top = 313
          Width = 281
          Height = 17
          Hint = 'Ingresa el Ctro de Costo'
          Caption = 'Seguimiento x Centro Costo Automatico'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 31
        end
        object chbPedirConfirmacion: TCheckBox
          Left = 512
          Top = 193
          Width = 201
          Height = 17
          Caption = 'Pedir Confirmacion Para Generar'
          TabOrder = 32
        end
        object chbNotaVtaContado: TCheckBox
          Left = 498
          Top = 277
          Width = 308
          Height = 17
          Hint = 'Modo en que se genera las facturas de Contado Electronicas'
          Caption = 'Tomar Fc. de Contado Electronicas como Notas de Vta Ctdo'
          Ctl3D = True
          Enabled = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 33
        end
        object chbControlaImpresion: TCheckBox
          Left = 184
          Top = 405
          Width = 308
          Height = 17
          Hint = 'Controla al Confirmacion de Impresion de Facturas'
          Caption = 'Controlar la Impresion de Facturas'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 34
        end
        object chConceptoTC: TCheckBox
          Left = 184
          Top = 366
          Width = 294
          Height = 17
          Caption = 'Hacer Recargo T.de Credito en Vtas agregando el concepto'
          TabOrder = 35
        end
        object chbEnterCB: TCheckBox
          Left = 184
          Top = 385
          Width = 283
          Height = 17
          Hint = 
            'Afecta en la carga de item en la facturacion, si no esta configu' +
            'rado en el Lector agregar el codigo barra'
          Caption = 'Agregar CR en Codigo Barra'
          TabOrder = 36
        end
        object chbVerificaCheRc: TCheckBox
          Left = 498
          Top = 295
          Width = 308
          Height = 17
          Hint = 'Verifica Cheques en el BCRA'
          Caption = 'Verifica Cheques en BCRA en Recibos'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 37
        end
        object chbVerificaCuitRC: TCheckBox
          Left = 498
          Top = 313
          Width = 227
          Height = 17
          Hint = 'Verifica el cuit en recibos'
          Caption = 'Verifica Cuit en Recibos'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 38
        end
        object chbConfirmaAutoEnvioCorreo: TCheckBox
          Left = 498
          Top = 260
          Width = 227
          Height = 17
          Hint = 'Verifica el cuit y los cheques en recibos'
          Caption = 'Pedir Confirmacion de Autoenvio correo Fc'
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 39
        end
        object chbReproWeb: TCheckBox
          Left = 498
          Top = 331
          Width = 227
          Height = 17
          Hint = 'Verifica el cuit y los cheques en recibos'
          Caption = 'Consultar ReproWeb Ret IVA'
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 40
        end
        object chbReprobeAuto: TCheckBox
          Left = 498
          Top = 349
          Width = 227
          Height = 17
          Caption = 'Consulta Automatica ReproWeb Ret IVA'
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 41
        end
        object edBalanza: TEdit
          Left = 24
          Top = 291
          Width = 49
          Height = 21
          Hint = 'IOndetifaca el Id de Balanza'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 42
          Text = '5'
        end
        object upDBalanza: TUpDown
          Left = 73
          Top = 291
          Width = 16
          Height = 21
          Hint = 'establece el pedio de consulta'
          Associate = edBalanza
          Max = 500
          ParentShowHint = False
          Position = 5
          ShowHint = True
          TabOrder = 43
        end
        object ceModoGravamen_old2: TJvComboBox
          Left = 432
          Top = 97
          Width = 145
          Height = 21
          TabOrder = 44
          Text = 'ceModoGravamen_old2'
          Items.Strings = (
            'Gravado'
            'Exento'
            'Mixto (Grav+Exent)'
            'Con Impuestos Internos'
            'Mixto con Impt.Internos')
        end
        object chPresupStock: TCheckBox
          Left = 498
          Top = 366
          Width = 138
          Height = 17
          Caption = 'Presupuestar sin Stock'
          TabOrder = 45
        end
        object chMostrarListadoPedidos: TCheckBox
          Left = 498
          Top = 384
          Width = 215
          Height = 17
          Caption = 'Mostrar Listado de Pedidos en Aviso'
          Checked = True
          State = cbChecked
          TabOrder = 46
        end
        object chAdministraPresupuestosAlCobro: TCheckBox
          Left = 498
          Top = 401
          Width = 230
          Height = 17
          Caption = 'Administrar Presupuestos que van al Cobro'
          TabOrder = 47
        end
        object chStockMinimo: TCheckBox
          Left = 498
          Top = 418
          Width = 173
          Height = 17
          Hint = 'Acepta cantidades negativas en presupuesto'
          Caption = 'Dar Aviso de Stock Minimo'
          Checked = True
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 48
        end
        object chImprimePedidosAppAutomatico: TCheckBox
          Left = 499
          Top = 436
          Width = 173
          Height = 17
          Hint = 'Acepta cantidades negativas en presupuesto'
          Caption = 'Imprimir Pedidos App Automatico'
          Checked = True
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 49
        end
      end
      object tbCorreo: TTabSheet
        Caption = 'Correo'
        ImageIndex = 1
        object Label18: TLabel
          Left = 24
          Top = 16
          Width = 150
          Height = 13
          Caption = 'Direcci'#243'n de Correo Electr'#243'nico'
        end
        object Label19: TLabel
          Left = 312
          Top = 16
          Width = 159
          Height = 13
          Caption = 'Asunto en encabezado de Correo'
        end
        object Label20: TLabel
          Left = 24
          Top = 104
          Width = 147
          Height = 13
          Caption = 'Nombre de la cuenta de correo'
        end
        object Label21: TLabel
          Left = 24
          Top = 148
          Width = 54
          Height = 13
          Caption = 'Contrase'#241'a'
        end
        object Label22: TLabel
          Left = 24
          Top = 60
          Width = 129
          Height = 13
          Caption = 'Servidor de Correo Saliente'
        end
        object Label23: TLabel
          Left = 312
          Top = 60
          Width = 31
          Height = 13
          Caption = 'Puerto'
        end
        object Label24: TLabel
          Left = 312
          Top = 103
          Width = 99
          Height = 13
          Caption = 'Remitente del Correo'
        end
        object Label44: TLabel
          Left = 464
          Top = 79
          Width = 168
          Height = 26
          Caption = 
            '( Con Gmail: 587 TLS / 465 SSL    )'#13#10'( Servidor :smtp.gmail.com ' +
            '             )'
        end
        object Label45: TLabel
          Left = 464
          Top = 148
          Width = 162
          Height = 26
          Caption = 
            '( Con Hotmail: 587 TLS /25 SSL  )'#13#10'( Servidor :smtp.live.com    ' +
            '          )'
        end
        object Label54: TLabel
          Left = 24
          Top = 245
          Width = 59
          Height = 13
          Caption = 'Metodo SSL'
        end
        object Label55: TLabel
          Left = 24
          Top = 293
          Width = 67
          Height = 13
          Caption = 'Usa TLS/SSL'
        end
        object Label56: TLabel
          Left = 248
          Top = 245
          Width = 50
          Height = 13
          Caption = 'Modo SSL'
        end
        object edDireccionCorreo: TEdit
          Left = 24
          Top = 32
          Width = 257
          Height = 21
          Hint = 'pone la direcci'#243'n de correo que esta instalada '
          TabOrder = 0
          Text = 'edDireccionCorreo'
        end
        object edAsunto: TEdit
          Left = 312
          Top = 32
          Width = 257
          Height = 21
          Hint = 'Es el texto que va a ir en el asunto del correo enviado'
          TabOrder = 5
          Text = 'edAsunto'
        end
        object edNombreCuenta: TEdit
          Left = 24
          Top = 120
          Width = 257
          Height = 21
          Hint = 
            'Nombre de la Cta de Correo que esta configurado en el cliente de' +
            ' correo'
          TabOrder = 2
          Text = 'edNombreCuenta'
        end
        object edClave: TEdit
          Left = 24
          Top = 164
          Width = 257
          Height = 21
          Hint = 'Contrase'#241'a del correo'
          PasswordChar = '*'
          TabOrder = 3
          Text = 'Edit3'
        end
        object chbAutenticacion: TCheckBox
          Left = 24
          Top = 201
          Width = 209
          Height = 17
          Caption = 'Usa Autenticaci'#243'n'
          TabOrder = 4
        end
        object edNombreServidor: TEdit
          Left = 24
          Top = 77
          Width = 257
          Height = 21
          Hint = 
            'Nombre del servidor de correo saliente configurado en el servido' +
            'r de correo'
          TabOrder = 1
          Text = 'Nombre'
        end
        object edPuerto: TEdit
          Left = 312
          Top = 79
          Width = 121
          Height = 21
          TabOrder = 6
          Text = 'edPuerto'
        end
        object edNombreRte: TEdit
          Left = 312
          Top = 120
          Width = 121
          Height = 21
          Hint = 'Nombre que aparece como remitente del correo saliente'
          TabOrder = 7
          Text = 'edNombreRte'
        end
        object chSASL: TCheckBox
          Left = 24
          Top = 224
          Width = 124
          Height = 17
          Caption = 'Autenticacion SASL'
          TabOrder = 8
        end
        object cbUsoTLS: TComboBox
          Left = 24
          Top = 312
          Width = 274
          Height = 21
          ItemIndex = 0
          TabOrder = 9
          Text = 'TLS expl'#237'cito      >> utUseExplicitTLS  (GMail)'
          Items.Strings = (
            'TLS expl'#237'cito      >> utUseExplicitTLS  (GMail)'
            'Sin soporte TLS >> utNoTLSSupport'
            'TLS impl'#237'cito      >>  utUseImplicitTLS'
            'TLS requerido   >> utUseRequireTLS')
        end
        object cbMetodoSSL: TComboBox
          Left = 24
          Top = 264
          Width = 199
          Height = 21
          ItemIndex = 0
          TabOrder = 10
          Text = 'sslvSSLv2'
          Items.Strings = (
            'sslvSSLv2'
            'sslvSSLv23(GMAIL)'
            'sslvSSLv3'
            'sslvTLSv1'
            'sslvTLSv1_1'
            'sslvTLSv1_2')
        end
        object cbModoSSL: TComboBox
          Left = 248
          Top = 264
          Width = 199
          Height = 21
          ItemIndex = 0
          TabOrder = 11
          Text = 'sslmUnassigned'
          Items.Strings = (
            'sslmUnassigned'
            'sslmClient'
            'sslmServer'
            'sslmBoth')
        end
      end
      object tsAdicional: TTabSheet
        Caption = 'Otras opciones'
        ImageIndex = 2
        object Label31: TLabel
          Left = 299
          Top = 11
          Width = 95
          Height = 13
          Caption = 'Path Base de Datos'
          ParentShowHint = False
          ShowHint = True
        end
        object Label4: TLabel
          Left = 298
          Top = 63
          Width = 143
          Height = 13
          Caption = 'Path Base de Datos  Contable'
          ParentShowHint = False
          ShowHint = True
        end
        object spFCC: TSpeedButton
          Left = 304
          Top = 171
          Width = 19
          Height = 21
          Action = DirectorioCC
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object Label12: TLabel
          Left = 3
          Top = 152
          Width = 212
          Height = 13
          Caption = 'Directorio de Facturas de Cta.Cte. Freezadas'
          ParentShowHint = False
          ShowHint = True
        end
        object Label32: TLabel
          Left = 3
          Top = 198
          Width = 199
          Height = 13
          Caption = 'Directorio de Facturas de Ctdo. Freezadas'
          ParentShowHint = False
          ShowHint = True
        end
        object spFCtdo: TSpeedButton
          Left = 304
          Top = 217
          Width = 19
          Height = 21
          Action = DirectorioCtdo
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object Label33: TLabel
          Left = 1
          Top = 109
          Width = 84
          Height = 13
          Caption = 'Icono del Sistema'
          ParentShowHint = False
          ShowHint = True
        end
        object spIcono: TSpeedButton
          Left = 303
          Top = 128
          Width = 19
          Height = 21
          Action = DirIcono
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object Label34: TLabel
          Left = 328
          Top = 109
          Width = 167
          Height = 13
          Caption = 'Directorio Archivo Clave Electonica'
          ParentShowHint = False
          ShowHint = True
        end
        object Label35: TLabel
          Left = 328
          Top = 157
          Width = 154
          Height = 13
          Caption = 'Directorio Certificado Electronico'
          ParentShowHint = False
          ShowHint = True
        end
        object sbClaveElect: TSpeedButton
          Left = 767
          Top = 128
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = sbClaveElectClick
        end
        object spCertificadoElect: TSpeedButton
          Left = 768
          Top = 171
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = spCertificadoElectClick
        end
        object Label36: TLabel
          Left = 3
          Top = 239
          Width = 70
          Height = 13
          Caption = 'Url URLWSAA'
          ParentShowHint = False
          ShowHint = True
        end
        object Label37: TLabel
          Left = 3
          Top = 279
          Width = 67
          Height = 13
          Caption = 'Url URLWSW'
          ParentShowHint = False
          ShowHint = True
        end
        object Label43: TLabel
          Left = 3
          Top = 323
          Width = 127
          Height = 13
          Caption = 'Url URLWSW (Eportacion)'
          ParentShowHint = False
          ShowHint = True
        end
        object Label57: TLabel
          Left = 3
          Top = 371
          Width = 47
          Height = 13
          Caption = 'URL Bcra'
          ParentShowHint = False
          ShowHint = True
        end
        object rgRedondeoUnitarioVentas: TRadioGroup
          Left = 16
          Top = 19
          Width = 177
          Height = 57
          Caption = 'Decimal Redondeo en Vtas/Rtos'
          ItemIndex = 0
          Items.Strings = (
            '2 Decimales'
            '3 Decimales')
          TabOrder = 0
        end
        object edDirectorioFreazadoCC: TEdit
          Left = 3
          Top = 171
          Width = 295
          Height = 21
          TabOrder = 1
          Text = 'edDirectorioFreazadoCC'
        end
        object edDirectorioFreezadoCtdo: TEdit
          Left = 3
          Top = 217
          Width = 295
          Height = 21
          TabOrder = 2
          Text = 'edDirectorioFrezadoCtdo'
        end
        object chbNegativoPresupuesto: TCheckBox
          Left = 16
          Top = 82
          Width = 209
          Height = 17
          Hint = 'Acepta cantidades negativas en presupuesto'
          Caption = 'Acepta Can.en  Negativo Presupuesto'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object edIcono: TEdit
          Left = 1
          Top = 128
          Width = 297
          Height = 21
          TabOrder = 4
          Text = 'Icono del Sistema'
        end
        object edClaveElectronica: TEdit
          Left = 328
          Top = 128
          Width = 433
          Height = 21
          TabOrder = 5
          Text = 'Clave Electronica'
        end
        object edCertificadoElectronico: TEdit
          Left = 329
          Top = 171
          Width = 433
          Height = 21
          TabOrder = 6
          Text = 'Certificado Electronico'
        end
        object edURLWSAA: TEdit
          Left = 3
          Top = 256
          Width = 433
          Height = 21
          TabOrder = 7
          Text = 'https://wsaahomo.afip.gov.ar/ws/services/LoginCms'
        end
        object edURLWSW: TEdit
          Left = 3
          Top = 296
          Width = 433
          Height = 21
          TabOrder = 8
          Text = 'https://wswhomo.afip.gov.ar/wsfev1/service.asmx'
        end
        object rgModoFcElectronica: TRadioGroup
          Left = 459
          Top = 244
          Width = 119
          Height = 73
          Caption = 'Modo Fc.Electronica'
          ItemIndex = 0
          Items.Strings = (
            'Testing'
            'Producci'#243'n')
          TabOrder = 9
          OnClick = rgModoFcElectronicaClick
        end
        object edURLWSW_EX: TEdit
          Left = 3
          Top = 339
          Width = 433
          Height = 21
          TabOrder = 10
          Text = 'https://wswhomo.afip.gov.ar/wsfexv1/service.asmx'
        end
        object chbPadronIIBBWeb: TCheckBox
          Left = 602
          Top = 235
          Width = 209
          Height = 17
          Hint = 'Busca Actualizacion Online del Padron de Arba'
          Caption = 'Actualiza Padron Rentas x WebService'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object rgBaseDatos: TRadioGroup
          Left = 217
          Top = 18
          Width = 75
          Height = 58
          Caption = 'Tipo de Base de Datos'
          ItemIndex = 1
          Items.Strings = (
            'Interbase'
            'Firebird')
          TabOrder = 12
        end
        object pnPLU: TPanel
          Left = 603
          Top = 396
          Width = 201
          Height = 120
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 13
          object Label50: TLabel
            Left = 23
            Top = 23
            Width = 57
            Height = 13
            Caption = 'Codigo PLU'
            ParentShowHint = False
            ShowHint = True
          end
          object Label51: TLabel
            Left = 21
            Top = 48
            Width = 83
            Height = 13
            Caption = 'Peso/Precio PLU'
            ParentShowHint = False
            ShowHint = True
          end
          object Label52: TLabel
            Left = 111
            Top = 5
            Width = 25
            Height = 13
            Caption = 'Inicio'
            ParentShowHint = False
            ShowHint = True
          end
          object Label53: TLabel
            Left = 148
            Top = 5
            Width = 41
            Height = 13
            Caption = 'Longitud'
            ParentShowHint = False
            ShowHint = True
          end
          object Label70: TLabel
            Left = 119
            Top = 71
            Width = 73
            Height = 13
            Caption = 'Decimales PLU'
            ParentShowHint = False
            ShowHint = True
          end
          object spCod_posInicial: TSpinEdit
            Left = 110
            Top = 20
            Width = 38
            Height = 22
            MaxValue = 14
            MinValue = 1
            TabOrder = 0
            Value = 1
            OnChange = spCod_posInicialChange
          end
          object spCod_Long: TSpinEdit
            Left = 152
            Top = 20
            Width = 38
            Height = 22
            MaxValue = 14
            MinValue = 1
            TabOrder = 1
            Value = 1
            OnChange = spCod_posInicialChange
          end
          object spPeso_Inic: TSpinEdit
            Left = 110
            Top = 43
            Width = 38
            Height = 22
            MaxValue = 14
            MinValue = 1
            TabOrder = 2
            Value = 1
            OnChange = spCod_posInicialChange
          end
          object spPeso_Long: TSpinEdit
            Left = 152
            Top = 43
            Width = 38
            Height = 22
            MaxValue = 14
            MinValue = 1
            TabOrder = 3
            Value = 1
            OnChange = spCod_posInicialChange
          end
          object rgModoPLU: TRadioGroup
            Left = 16
            Top = 71
            Width = 88
            Height = 49
            Caption = 'Modo PLU'
            ItemIndex = 0
            Items.Strings = (
              'x Precio'
              'x Peso')
            TabOrder = 4
          end
          object spPluDecimales: TSpinEdit
            Left = 152
            Top = 90
            Width = 38
            Height = 22
            MaxValue = 2
            MinValue = 0
            TabOrder = 5
            Value = 2
          end
        end
        object chbAvisoFacSinCae: TCheckBox
          Left = 329
          Top = 198
          Width = 173
          Height = 17
          Hint = 'Acepta cantidades negativas en presupuesto'
          Caption = 'Dar Aviso de Facturas Sin CAE'
          Checked = True
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 14
          OnClick = chbAvisoFacSinCaeClick
        end
        object edURLBcra: TEdit
          Left = 3
          Top = 387
          Width = 433
          Height = 21
          TabOrder = 15
          Text = 'http://sigcom.dnsalias.com:8080/datos/'
        end
        object chbAplicaIvaDiferenciado: TCheckBox
          Left = 603
          Top = 258
          Width = 209
          Height = 17
          Hint = 'Busca Actualizacion Online del Padron de Arba'
          Caption = 'Aplica Iva Diferenciado'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
        end
        object chbControlaNumFiscal: TCheckBox
          Left = 329
          Top = 221
          Width = 184
          Height = 17
          Hint = 'Controlar la Numeracion al Fiascalizar'
          Caption = 'Controla Numeracion al Fiscalizar'
          Checked = True
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 17
        end
        object btPasaConfFC: TButton
          Left = 664
          Top = 197
          Width = 98
          Height = 30
          Caption = 'Aplica a Todos los usuarios'
          HotImageIndex = 2
          ImageIndex = 2
          Images = ImageList1
          PressedImageIndex = 1
          SelectedImageIndex = 4
          TabOrder = 18
          Visible = False
          WordWrap = True
          OnClick = btPasaConfFCClick
        end
        object colbAlias: TColumnComboBox
          Left = 299
          Top = 30
          Width = 502
          Height = 21
          Hint = 'This is my hint here'
          Color = clWindow
          Version = '1.7.2.4'
          Visible = True
          Ctl3D = False
          Columns = <
            item
              Color = clWhite
              Width = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            item
              ColumnType = ctImage
              Width = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end>
          ComboItems = <
            item
              ImageIndex = 0
              Strings.Strings = (
                '1'
                'BMW'
                'Cabrio CI 328 ')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '8'
                'BMW'
                'Z3 M Roadster')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '3'
                'Porsche'
                'Boxster S-type')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '4'
                'Mercedes'
                'SLK 320 ')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '5'
                'Ferrari'
                'Modena 360 spider')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '6'
                'Mercedes'
                'Vision SLR Roadster')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '10'
                'Wiessman'
                'Roadster')
              Tag = 0
            end
            item
              ImageIndex = 1
              Strings.Strings = (
                '2'
                'Audi'
                'Roadster TT')
              Tag = 0
            end
            item
              ImageIndex = 1
              Strings.Strings = (
                '9'
                'Jaguar'
                'XK8 Coupe')
              Tag = 0
            end
            item
              ImageIndex = 1
              Strings.Strings = (
                '7'
                'MG'
                'MGF')
              Tag = 0
            end>
          EditColumn = -1
          EditHeight = 15
          EmptyText = ''
          EmptyTextStyle = []
          DropWidth = 550
          DropHeight = 250
          DropDownCount = 60
          Images = ImageList1
          Enabled = True
          ButtonWidth = 17
          ItemIndex = -1
          LookupColumn = 2
          LookupBkColor = clBlack
          LookupTextColor = clBlack
          LabelCaption = ''
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          SortColumn = 0
          TabOrder = 19
          OnKeyDown = colbAliasKeyDown
        end
        object colbAliasContable: TColumnComboBox
          Left = 298
          Top = 82
          Width = 503
          Height = 21
          Hint = 'This is my hint here'
          Color = clWindow
          Version = '1.7.2.4'
          Visible = True
          Ctl3D = False
          Columns = <
            item
              Color = clWhite
              Width = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            item
              ColumnType = ctImage
              Width = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end>
          ComboItems = <
            item
              ImageIndex = 0
              Strings.Strings = (
                '1'
                'BMW'
                'Cabrio CI 328 ')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '8'
                'BMW'
                'Z3 M Roadster')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '3'
                'Porsche'
                'Boxster S-type')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '4'
                'Mercedes'
                'SLK 320 ')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '5'
                'Ferrari'
                'Modena 360 spider')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '6'
                'Mercedes'
                'Vision SLR Roadster')
              Tag = 0
            end
            item
              ImageIndex = 0
              Strings.Strings = (
                '10'
                'Wiessman'
                'Roadster')
              Tag = 0
            end
            item
              ImageIndex = 1
              Strings.Strings = (
                '2'
                'Audi'
                'Roadster TT')
              Tag = 0
            end
            item
              ImageIndex = 1
              Strings.Strings = (
                '9'
                'Jaguar'
                'XK8 Coupe')
              Tag = 0
            end
            item
              ImageIndex = 1
              Strings.Strings = (
                '7'
                'MG'
                'MGF')
              Tag = 0
            end>
          EditColumn = -1
          EditHeight = 15
          EmptyText = ''
          EmptyTextStyle = []
          DropWidth = 550
          DropHeight = 250
          DropDownCount = 60
          Images = ImageList1
          Enabled = True
          ButtonWidth = 17
          ItemIndex = -1
          LookupColumn = 2
          LookupBkColor = clBlack
          LookupTextColor = clBlack
          LabelCaption = ''
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          SortColumn = 0
          TabOrder = 20
          OnKeyDown = colbAliasContableKeyDown
        end
        object chOrdenar: TCheckBox
          Left = 603
          Top = 7
          Width = 150
          Height = 17
          Hint = 'Busca Actualizacion Online del Padron de Arba'
          Caption = 'Ordenar Listado'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnClick = chOrdenarClick
        end
        object edBarCode: TdxBarCode
          Left = 3
          Top = 447
          AutoSize = False
          Text = '123456'
          ParentFont = False
          Properties.BarCodeSymbologyClassName = 'TdxBarCodeEAN13Symbology'
          Properties.FitMode = ifmStretch
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 49
          Width = 152
        end
        object trackPLU: TdxRangeTrackBar
          Left = 176
          Top = 419
          ParentFont = False
          ParentShowHint = False
          Properties.AutoSize = False
          Properties.BorderWidth = 1
          Properties.LineSize = 3
          Properties.Max = 13
          Properties.Min = 1
          Properties.PageSize = 1
          Properties.SelectionColor = clGreen
          Properties.ShowPositionHint = True
          Properties.ThumbHeight = 5
          Properties.ThumbWidth = 5
          Properties.TickSize = 1
          Properties.TickType = tbttTicksAndNumbers
          Properties.TrackSize = 2
          Properties.OnChange = trackPLUPropertiesChange
          Range.Max = 5
          Range.Min = 1
          ShowHint = True
          Style.HotTrack = False
          Style.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          TabOrder = 23
          Transparent = True
          Height = 44
          Width = 281
        end
        object trackPrecio: TdxRangeTrackBar
          Left = 177
          Top = 469
          ParentFont = False
          ParentShowHint = False
          Properties.AutoSize = False
          Properties.BorderWidth = 1
          Properties.LineSize = 3
          Properties.Max = 13
          Properties.Min = 1
          Properties.PageSize = 1
          Properties.SelectionColor = clGreen
          Properties.ShowPositionHint = True
          Properties.ThumbHeight = 5
          Properties.ThumbWidth = 5
          Properties.TickSize = 1
          Properties.TickType = tbttTicksAndNumbers
          Properties.TrackSize = 2
          Properties.OnChange = trackPrecioPropertiesChange
          Range.Max = 12
          Range.Min = 6
          ShowHint = True
          TabOrder = 24
          Transparent = True
          Height = 47
          Width = 280
        end
        object Panel2: TPanel
          Left = 459
          Top = 429
          Width = 138
          Height = 87
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 25
          object edPlu: TEdit
            Left = 8
            Top = 9
            Width = 121
            Height = 22
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object edPesoPrecio: TEdit
            Left = 8
            Top = 52
            Width = 121
            Height = 22
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object edCodigoBarra: TEdit
          Left = 3
          Top = 420
          Width = 152
          Height = 21
          Alignment = taCenter
          MaxLength = 12
          NumbersOnly = True
          TabOrder = 26
          Text = '2001251746004'
          OnChange = edCodigoBarraChange
        end
      end
      object tsTransferecias: TTabSheet
        Caption = 'Archivos de Trasnferencia'
        ImageIndex = 3
        object Label38: TLabel
          Left = 3
          Top = 14
          Width = 157
          Height = 13
          Caption = 'Directorio Comun de Tx de Stock'
          ParentShowHint = False
          ShowHint = True
        end
        object spTxStock: TSpeedButton
          Left = 442
          Top = 33
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = spTxStockClick
        end
        object Label39: TLabel
          Left = 3
          Top = 62
          Width = 186
          Height = 13
          Caption = 'Directorio Tx de Stock Sucursal Central'
          ParentShowHint = False
          ShowHint = True
        end
        object sptxStockCtral: TSpeedButton
          Left = 442
          Top = 81
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = sptxStockCtralClick
        end
        object Label40: TLabel
          Left = 3
          Top = 110
          Width = 261
          Height = 13
          Caption = 'Directorio Ajustes de Stock Informacion a Administrador'
          ParentShowHint = False
          ShowHint = True
        end
        object spAjustesStock: TSpeedButton
          Left = 442
          Top = 129
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = spAjustesStockClick
        end
        object Label41: TLabel
          Left = 478
          Top = 113
          Width = 163
          Height = 13
          Caption = 'Sucursal Administradora Depositos'
        end
        object Label46: TLabel
          Left = 3
          Top = 182
          Width = 180
          Height = 13
          Caption = 'Directorio Alternativo Reportes Cpbtes'
          ParentShowHint = False
          ShowHint = True
        end
        object spPathCpbtes: TSpeedButton
          Left = 442
          Top = 199
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = spPathCpbtesClick
        end
        object Label47: TLabel
          Left = 3
          Top = 230
          Width = 186
          Height = 13
          Caption = 'Directorio Alternativo Reportes Listados'
          ParentShowHint = False
          ShowHint = True
        end
        object spPathListados: TSpeedButton
          Left = 442
          Top = 247
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = spPathListadosClick
        end
        object Label48: TLabel
          Left = 3
          Top = 292
          Width = 176
          Height = 13
          Caption = 'Intervalo Dias Calculo Debitos Abono'
        end
        object Label49: TLabel
          Left = 3
          Top = 334
          Width = 125
          Height = 13
          Caption = 'Cargo Fijo Debitos Abonos'
        end
        object Label60: TLabel
          Left = 298
          Top = 277
          Width = 138
          Height = 26
          Caption = 'Codigo Concepto Honoriarios'#13#10'Despachante'
        end
        object Label62: TLabel
          Left = 3
          Top = 382
          Width = 235
          Height = 26
          Caption = 
            'Limite Min Facturacion C.Final sin Nro.Documento'#13#10'Fac.Electronic' +
            'as'
        end
        object Label63: TLabel
          Left = 456
          Top = 292
          Width = 133
          Height = 13
          Caption = 'Codigo Concepto Anticiposs'
        end
        object SpeedButton1: TSpeedButton
          Left = 442
          Top = 504
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = SpeedButton1Click
        end
        object Label65: TLabel
          Left = 3
          Top = 487
          Width = 130
          Height = 13
          Caption = 'Archivo Log Base de Datos'
          ParentShowHint = False
          ShowHint = True
        end
        object Label66: TLabel
          Left = 610
          Top = 422
          Width = 76
          Height = 13
          Caption = 'Clave para COT'
        end
        object Label67: TLabel
          Left = 610
          Top = 468
          Width = 67
          Height = 13
          Caption = 'Cuit para COT'
        end
        object Label71: TLabel
          Left = 298
          Top = 344
          Width = 131
          Height = 13
          Caption = 'Codigo Concepto para COT'
        end
        object Label72: TLabel
          Left = 451
          Top = 344
          Width = 131
          Height = 13
          Caption = 'Detalle Concepto para COT'
        end
        object Label73: TLabel
          Left = 3
          Top = 443
          Width = 154
          Height = 13
          Caption = 'Tolerancia Deuda Cta Cte Venta'
        end
        object edDirectorioTxStock: TEdit
          Left = 3
          Top = 33
          Width = 433
          Height = 21
          Hint = 
            'Despues de Hacer una Transferencia, se puede hacer el Archivo pa' +
            'ra que luego lo tome la Sucursal que le corresponde'
          TabOrder = 0
          TextHint = 'Directorio de Tx de Stock'
        end
        object edDirectorioTxStock_a_Ctral: TEdit
          Left = 3
          Top = 81
          Width = 433
          Height = 21
          TabOrder = 1
          TextHint = 'Directorio de Tx de Stock a la Central'
        end
        object chbArchivoTxAutomatico: TCheckBox
          Left = 478
          Top = 35
          Width = 251
          Height = 17
          Caption = 'Generar Archivo XML de Tx.Stock Automatico'
          TabOrder = 2
        end
        object chbArchivoAjAutomatico: TCheckBox
          Left = 478
          Top = 58
          Width = 251
          Height = 17
          Caption = 'Generar Archivo XML de Ajuste Stock Automatico'
          TabOrder = 3
        end
        object edDirectorioAjStock: TEdit
          Left = 3
          Top = 129
          Width = 433
          Height = 21
          TabOrder = 4
          TextHint = 'Directorio de Ajustes Stock'
        end
        object ceSucursalAdmin: TJvDBLookupCombo
          Left = 478
          Top = 129
          Width = 187
          Height = 21
          Hint = 'Sucursal por defecto, con la que se hacen las operaciones.'
          EmptyValue = '-1'
          LookupField = 'CODIGO'
          LookupDisplay = 'DETALLE'
          LookupSource = DSSucursalAdmin
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = ceSucursalAdminKeyDown
        end
        object edPathCpbte: TEdit
          Left = 3
          Top = 201
          Width = 433
          Height = 21
          TabOrder = 6
          TextHint = 'Directorio de Cpbtes'
        end
        object edPathListados: TEdit
          Left = 3
          Top = 249
          Width = 433
          Height = 21
          TabOrder = 7
          TextHint = 'Directorios Listado'
        end
        object chbUsarDirCpbtes: TCheckBox
          Left = 240
          Top = 178
          Width = 196
          Height = 17
          BiDiMode = bdRightToLeft
          Caption = 'Usar Directorio Alternativo Cpbtes'
          ParentBiDiMode = False
          TabOrder = 8
        end
        object chbUsarDirListados: TCheckBox
          Left = 240
          Top = 226
          Width = 196
          Height = 17
          BiDiMode = bdRightToLeft
          Caption = 'Usar Directorio Alternativo Listados'
          ParentBiDiMode = False
          TabOrder = 9
        end
        object edAbonosDias: TJvCalcEdit
          Left = 3
          Top = 309
          Width = 80
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '0.00'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 10
          DecimalPlacesAlwaysShown = False
        end
        object edAbonosCargoFijo: TJvCalcEdit
          Left = 3
          Top = 351
          Width = 80
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '0.00'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 11
          DecimalPlacesAlwaysShown = False
        end
        object rgReondeoVta: TRadioGroup
          Left = 560
          Top = 178
          Width = 219
          Height = 80
          Caption = 'Aplica Redondeo en la Vta'
          ItemIndex = 0
          Items.Strings = (
            '0 Sin Redondeo'
            '2 Decimales'
            '3 Decimales')
          TabOrder = 12
          Visible = False
        end
        object edCodHonorarios: TEdit
          Left = 298
          Top = 309
          Width = 138
          Height = 21
          Alignment = taCenter
          MaxLength = 8
          TabOrder = 13
          Text = 'edCodHonorarios'
        end
        object edLimiteFacturaB: TJvCalcEdit
          Left = 3
          Top = 411
          Width = 127
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '0.00'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 14
          DecimalPlacesAlwaysShown = False
        end
        object edCodAnticipos: TEdit
          Left = 456
          Top = 309
          Width = 169
          Height = 21
          Alignment = taCenter
          MaxLength = 8
          TabOrder = 15
          Text = 'edCodHonorarios'
        end
        object edMonitoreo: TEdit
          Left = 3
          Top = 505
          Width = 433
          Height = 21
          Hint = 'Directorio Monitoreo'
          TabOrder = 16
          TextHint = 'Directorio Monitoreo Base de Datos'
        end
        object chbActivaMonitoreo: TCheckBox
          Left = 240
          Top = 532
          Width = 196
          Height = 17
          BiDiMode = bdRightToLeft
          Caption = 'Activar Monitoreo'
          ParentBiDiMode = False
          TabOrder = 17
          OnClick = chbActivaMonitoreoClick
        end
        object edClaveCOT: TEdit
          Left = 610
          Top = 441
          Width = 169
          Height = 21
          Alignment = taCenter
          MaxLength = 25
          TabOrder = 18
          TextHint = 'Clave Acceso COT'
        end
        object rgModoCOT: TRadioGroup
          Left = 658
          Top = 513
          Width = 121
          Height = 48
          Caption = 'Modo Operaci'#243'n'
          ItemIndex = 0
          Items.Strings = (
            'Homologaci'#243'n'
            'Producci'#243'n')
          TabOrder = 19
        end
        object edCotCuit: TEdit
          Left = 610
          Top = 484
          Width = 169
          Height = 21
          Alignment = taCenter
          MaxLength = 11
          TabOrder = 20
          TextHint = 'Cuit de Conecci'#243'n'
        end
        object edConceptoCOT: TEdit
          Left = 298
          Top = 363
          Width = 138
          Height = 21
          Alignment = taCenter
          MaxLength = 25
          TabOrder = 21
          TextHint = 'Codigo Concepto COT'
        end
        object edDetalleConceptoCOT: TEdit
          Left = 451
          Top = 363
          Width = 328
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 25
          TabOrder = 22
          TextHint = 'Detalle'
        end
        object edToleranciaDeuda: TJvCalcEdit
          Left = 6
          Top = 460
          Width = 127
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '0.00'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 23
          Value = 1000.000000000000000000
          DecimalPlacesAlwaysShown = False
        end
      end
      object txAPIs: TTabSheet
        Caption = 'Configuracion APIs'
        ImageIndex = 4
        object Label61: TLabel
          Left = 3
          Top = 10
          Width = 68
          Height = 13
          Caption = 'Token WisPro'
        end
        object Label64: TLabel
          Left = 258
          Top = 10
          Width = 73
          Height = 13
          Caption = 'Api Key Google'
        end
        object Label74: TLabel
          Left = 3
          Top = 354
          Width = 75
          Height = 13
          Caption = 'Api Key OpenAI'
        end
        object Label75: TLabel
          Left = 3
          Top = 400
          Width = 188
          Height = 13
          Caption = 'Sub Rubro para alta de Articulo Express'
        end
        object edTokenWisPro: TEdit
          Left = 3
          Top = 29
          Width = 227
          Height = 21
          Alignment = taCenter
          TabOrder = 0
          TextHint = 'Token Wispro'
        end
        object edApiKeyGoogle: TEdit
          Left = 258
          Top = 29
          Width = 295
          Height = 21
          TabOrder = 1
          TextHint = 'Api Key'
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 68
          Width = 385
          Height = 269
          Caption = 'WoordPress'
          TabOrder = 2
          object Label98: TLabel
            Left = 12
            Top = 20
            Width = 38
            Height = 13
            Caption = 'Dominio'
          end
          object Label96: TLabel
            Left = 13
            Top = 66
            Width = 49
            Height = 13
            Caption = 'Usuario/id'
          end
          object Label97: TLabel
            Left = 13
            Top = 112
            Width = 45
            Height = 13
            Caption = 'Pass/key'
          end
          object Label68: TLabel
            Left = 13
            Top = 158
            Width = 185
            Height = 13
            Caption = 'Lista de Precio  que Toma para la Web'
          end
          object Label69: TLabel
            Left = 13
            Top = 207
            Width = 179
            Height = 13
            Caption = 'Bonificacion Precio Oferta Sobre Lista'
          end
          object edDominioWP: TEdit
            Left = 12
            Top = 39
            Width = 354
            Height = 21
            TabOrder = 0
            TextHint = 'Dominio'
          end
          object edUsuarioWP: TEdit
            Left = 13
            Top = 85
            Width = 353
            Height = 21
            TabOrder = 1
            TextHint = 'Usuario'
          end
          object edPassWP: TEdit
            Left = 13
            Top = 131
            Width = 353
            Height = 21
            TabOrder = 2
            TextHint = 'Password'
          end
          object dbcListaPreciosWeb: TDBLookupComboBox
            Left = 13
            Top = 176
            Width = 273
            Height = 21
            Hint = 'Lista de Precios que se aplica para los Items en la Web'
            KeyField = 'ID'
            ListField = 'NOMBRE'
            ListSource = DSListaPrecios
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object Edit1: TEdit
            Left = 192
            Top = 240
            Width = 1
            Height = 21
            TabOrder = 4
            Text = 'Edit1'
          end
          object edBonificacionPrecioWeb: TJvCalcEdit
            Left = 13
            Top = 224
            Width = 80
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = '0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 5
            DecimalPlacesAlwaysShown = False
          end
        end
        object edOpenAIKey: TEdit
          Left = 3
          Top = 373
          Width = 574
          Height = 21
          PasswordChar = '*'
          TabOrder = 3
          TextHint = 'Api Key'
        end
        object sBuscar: TDBAdvSearchEdit
          Left = 3
          Top = 419
          Width = 409
          Height = 22
          Appearance.CategoryControlFont = False
          Appearance.CategoryFont.Charset = DEFAULT_CHARSET
          Appearance.CategoryFont.Color = clWindowText
          Appearance.CategoryFont.Height = -11
          Appearance.CategoryFont.Name = 'Tahoma'
          Appearance.CategoryFont.Style = []
          Appearance.DescriptionFont.Charset = DEFAULT_CHARSET
          Appearance.DescriptionFont.Color = clWindowText
          Appearance.DescriptionFont.Height = -11
          Appearance.DescriptionFont.Name = 'Tahoma'
          Appearance.DescriptionFont.Style = []
          Appearance.DescriptionControlFont = False
          Appearance.HighlightTextColor = clBlue
          Appearance.SelectionColor = 15914434
          Appearance.SelectionTextColor = 3881787
          Appearance.FilterCountFont.Charset = DEFAULT_CHARSET
          Appearance.FilterCountFont.Color = clWindowText
          Appearance.FilterCountFont.Height = -11
          Appearance.FilterCountFont.Name = 'Tahoma'
          Appearance.FilterCountFont.Style = []
          Appearance.FilterCountFormat = '(%d)'
          Appearance.ItemCategoryFont.Charset = DEFAULT_CHARSET
          Appearance.ItemCategoryFont.Color = clOrange
          Appearance.ItemCategoryFont.Height = -11
          Appearance.ItemCategoryFont.Name = 'Tahoma'
          Appearance.ItemCategoryFont.Style = []
          Appearance.ItemCategoryFormat = 'in %s'
          AutoSelect = False
          BorderColor = 10724259
          Categories = <>
          CategoryButton.Appearance.BorderColor = 11382963
          CategoryButton.Appearance.BorderColorHot = 11565130
          CategoryButton.Appearance.BorderColorCheckedHot = 11565130
          CategoryButton.Appearance.BorderColorDown = 11565130
          CategoryButton.Appearance.BorderColorChecked = 13744549
          CategoryButton.Appearance.BorderColorDisabled = 13948116
          CategoryButton.Appearance.Color = clWhite
          CategoryButton.Appearance.ColorTo = clWhite
          CategoryButton.Appearance.ColorChecked = 13744549
          CategoryButton.Appearance.ColorCheckedTo = 13744549
          CategoryButton.Appearance.ColorDisabled = clWhite
          CategoryButton.Appearance.ColorDisabledTo = clNone
          CategoryButton.Appearance.ColorDown = 11565130
          CategoryButton.Appearance.ColorDownTo = 11565130
          CategoryButton.Appearance.ColorHot = 16444643
          CategoryButton.Appearance.ColorHotTo = 16444643
          CategoryButton.Appearance.ColorMirror = clWhite
          CategoryButton.Appearance.ColorMirrorTo = clWhite
          CategoryButton.Appearance.ColorMirrorHot = 16444643
          CategoryButton.Appearance.ColorMirrorHotTo = 16444643
          CategoryButton.Appearance.ColorMirrorDown = 11565130
          CategoryButton.Appearance.ColorMirrorDownTo = 11565130
          CategoryButton.Appearance.ColorMirrorChecked = 13744549
          CategoryButton.Appearance.ColorMirrorCheckedTo = 13744549
          CategoryButton.Appearance.ColorMirrorDisabled = clWhite
          CategoryButton.Appearance.ColorMirrorDisabledTo = clNone
          CategoryButton.Appearance.GradientHot = ggVertical
          CategoryButton.Appearance.GradientMirrorHot = ggVertical
          CategoryButton.Appearance.GradientDown = ggVertical
          CategoryButton.Appearance.GradientMirrorDown = ggVertical
          CategoryButton.Appearance.GradientChecked = ggVertical
          CategoryButton.Appearance.TextColorChecked = 3750459
          CategoryButton.Appearance.TextColorDown = 2303013
          CategoryButton.Appearance.TextColorHot = 2303013
          CategoryButton.Appearance.TextColorDisabled = 13948116
          CategoryButton.Visible = False
          Columns = <
            item
              Alignment = gtaCenter
              ControlFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Trimming = True
              Width = 64
              DataField = 'CODIGO_SUBRUBRO'
            end
            item
              ControlFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Trimming = True
              Width = 200
              DataField = 'DETALLE_SUBRUBRO'
            end
            item
              Color = clInfoBk
              ControlFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 130
              DataField = 'MUESTRARUBRO'
            end>
          DragMode = dmAutomatic
          DropDownHeader.Color = clWhite
          DropDownHeader.ColorTo = clNone
          DropDownHeader.Caption = 
            '<B>  Cos.Sub             Descripcion                            ' +
            '                Rubro </B>'
          DropDownHeader.Font.Charset = DEFAULT_CHARSET
          DropDownHeader.Font.Color = clBlue
          DropDownHeader.Font.Height = -11
          DropDownHeader.Font.Name = 'Tahoma'
          DropDownHeader.Font.Style = []
          DropDownHeader.Visible = True
          DropDownHeader.BorderColor = 11250603
          DropDownHeader.BorderWidth = 0
          DropDownHeader.Buttons = <>
          DropDownHeight = 350
          DropDownFooter.Color = clWhite
          DropDownFooter.ColorTo = clNone
          DropDownFooter.Font.Charset = DEFAULT_CHARSET
          DropDownFooter.Font.Color = 6184542
          DropDownFooter.Font.Height = -11
          DropDownFooter.Font.Name = 'Tahoma'
          DropDownFooter.Font.Style = []
          DropDownFooter.Visible = False
          DropDownFooter.BorderColor = 11250603
          DropDownFooter.BorderWidth = 0
          DropDownFooter.SizeGrip = False
          DropDownFooter.Buttons = <>
          DropDownShadow = True
          DropDownWidth = 550
          EmptyText = 'Buscar...'
          EmptyTextFocused = True
          FilterCondition.AutoSelect = True
          FilterCondition.Column = 1
          FilterCondition.Text = ' '
          FocusBorder = True
          FocusColor = clWhite
          FocusFontColor = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4474440
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 20
          Items = <>
          ParentFont = False
          SearchButton.Appearance.BorderColor = 11382963
          SearchButton.Appearance.BorderColorHot = 11565130
          SearchButton.Appearance.BorderColorCheckedHot = 11565130
          SearchButton.Appearance.BorderColorDown = 11565130
          SearchButton.Appearance.BorderColorChecked = 13744549
          SearchButton.Appearance.BorderColorDisabled = 13948116
          SearchButton.Appearance.Color = clWhite
          SearchButton.Appearance.ColorTo = clWhite
          SearchButton.Appearance.ColorChecked = 13744549
          SearchButton.Appearance.ColorCheckedTo = 13744549
          SearchButton.Appearance.ColorDisabled = clWhite
          SearchButton.Appearance.ColorDisabledTo = clNone
          SearchButton.Appearance.ColorDown = 11565130
          SearchButton.Appearance.ColorDownTo = 11565130
          SearchButton.Appearance.ColorHot = 16444643
          SearchButton.Appearance.ColorHotTo = 16444643
          SearchButton.Appearance.ColorMirror = clWhite
          SearchButton.Appearance.ColorMirrorTo = clWhite
          SearchButton.Appearance.ColorMirrorHot = 16444643
          SearchButton.Appearance.ColorMirrorHotTo = 16444643
          SearchButton.Appearance.ColorMirrorDown = 11565130
          SearchButton.Appearance.ColorMirrorDownTo = 11565130
          SearchButton.Appearance.ColorMirrorChecked = 13744549
          SearchButton.Appearance.ColorMirrorCheckedTo = 13744549
          SearchButton.Appearance.ColorMirrorDisabled = clWhite
          SearchButton.Appearance.ColorMirrorDisabledTo = clNone
          SearchButton.Appearance.GradientHot = ggVertical
          SearchButton.Appearance.GradientMirrorHot = ggVertical
          SearchButton.Appearance.GradientDown = ggVertical
          SearchButton.Appearance.GradientMirrorDown = ggVertical
          SearchButton.Appearance.GradientChecked = ggVertical
          SearchButton.Appearance.TextColorChecked = 3750459
          SearchButton.Appearance.TextColorDown = 2303013
          SearchButton.Appearance.TextColorHot = 2303013
          SearchButton.Appearance.TextColorDisabled = 13948116
          SearchButton.Visible = False
          TabOrder = 4
          Text = ''
          Version = '1.1.6.0'
          OnSelect = sBuscarSelect
          DropDownColor = clBlack
          ListSource = DSSubRubro
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 676
    Width = 823
    Align = alBottom
    ButtonHeight = 31
    ExplicitTop = 584
    ExplicitWidth = 823
    inherited btConfirma: TBitBtn
      Height = 31
      DoubleBuffered = True
      ExplicitHeight = 31
    end
    inherited btNuevo: TBitBtn
      Height = 31
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 31
    end
    inherited btCancelar: TBitBtn
      Height = 31
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 31
    end
    inherited btModificar: TBitBtn
      Height = 31
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 31
    end
    inherited Pr: TSpeedButton
      Height = 31
      ExplicitHeight = 31
    end
    inherited btBuscar: TBitBtn
      Height = 31
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 31
    end
    inherited Ne: TSpeedButton
      Height = 31
      ExplicitHeight = 31
    end
    inherited btBorrar: TBitBtn
      Height = 31
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 31
    end
    inherited btSalir: TBitBtn
      Height = 31
      DoubleBuffered = True
      ExplicitHeight = 31
    end
  end
  inherited Panel1: TPanel
    Top = 706
    Width = 823
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 614
    ExplicitWidth = 823
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 734
      ExplicitWidth = 734
    end
  end
  inherited ActionList1: TActionList
    Left = 600
    Top = 48
    inherited Prev: TAction
      Visible = False
    end
    inherited Next: TAction
      Visible = False
    end
    object BuscarClientes: TAction
      Caption = 'BuscarClientes'
      OnExecute = BuscarClientesExecute
    end
    object DirectorioCC: TAction
      OnExecute = DirectorioCCExecute
    end
    object DirectorioCtdo: TAction
      OnExecute = DirectorioCtdoExecute
    end
    object DirIcono: TAction
      OnExecute = DirIconoExecute
    end
    object BuscarConcepto: TAction
      Caption = 'BuscarConcepto'
    end
  end
  inherited DSBase: TDataSource
    Left = 720
    Top = 64
  end
  inherited ImageList1: TImageList
    Left = 784
    Top = 328
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
    Left = 560
    Top = 88
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 46
    Top = 660
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 760
    Top = 88
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 400
    Top = 144
  end
  inherited QBrowse2: TFDQuery
    Left = 176
    Top = 144
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 424
    Top = 144
  end
  object DSSucursales: TDataSource
    DataSet = CDSSucursal
    Left = 184
    Top = 336
  end
  object DSCaja: TDataSource
    DataSet = CDSCaja
    Left = 440
    Top = 464
  end
  object DSDepositos: TDataSource
    DataSet = CDSDepositos
    Left = 424
    Top = 416
  end
  object DSEmpleado: TDataSource
    DataSet = CDSEmpleado
    Left = 192
    Top = 544
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Options = []
    Left = 96
    Top = 336
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPClientes'
    Left = 96
    Top = 288
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
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
  end
  object DSTipoInscripcion: TDataSource
    DataSet = CDSInscripcion
    Left = 192
    Top = 600
  end
  object DSTasaIva: TDataSource
    DataSet = CDSTasaIva
    Left = 696
    Top = 608
  end
  object DSSobreTasaIva: TDataSource
    DataSet = CDSSobreTasaIva
    Left = 608
    Top = 528
  end
  object DSUnidades: TDataSource
    DataSet = CDSUnidades
    Left = 456
    Top = 552
  end
  object DSMoneda: TDataSource
    DataSet = CDSMoneda
    Left = 656
    Top = 504
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 144
    Top = 280
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
    Options = []
    Left = 56
    Top = 264
  end
  object CDSEmpleado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpleado'
    Left = 112
    Top = 544
    object CDSEmpleadoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSEmpleadoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPEmpleado: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPersonal
    Options = []
    Left = 48
    Top = 504
  end
  object CDSCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCaja'
    Left = 384
    Top = 416
    object CDSCajaID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
    end
    object CDSCajaID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Required = True
    end
    object CDSCajaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSCajaNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object CDSCajaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSCajaCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSCajaRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSPCaja: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCtaCaja
    Options = [poAllowCommandText]
    Left = 312
    Top = 408
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 264
    Top = 424
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 264
    Top = 480
  end
  object CDSInscripcion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPInscripcion'
    Left = 112
    Top = 600
    object CDSInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
  end
  object DSPInscripcion: TDataSetProvider
    DataSet = DMBuscadores.QBuscaInscripcion
    Options = []
    Left = 40
    Top = 528
  end
  object CDSUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUnidades'
    Left = 392
    Top = 456
    object CDSUnidadesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSUnidadesSIGLAS: TStringField
      FieldName = 'SIGLAS'
      Size = 3
    end
    object CDSUnidadesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
  end
  object DSPUnidades: TDataSetProvider
    DataSet = DMBuscadores.QBuscaUnidades
    Options = []
    Left = 288
    Top = 552
  end
  object CDSTasaIva: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTasaIva'
    Left = 680
    Top = 328
    object CDSTasaIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTasaIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object CDSTasaIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      Required = True
    end
    object CDSTasaIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
  end
  object DSPTasaIva: TDataSetProvider
    DataSet = DMBuscadores.QBuscaIva
    Options = []
    Left = 752
    Top = 352
  end
  object CDSSobreTasaIva: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSobreTasaIva'
    Left = 696
    Top = 304
    object CDSSobreTasaIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSobreTasaIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object CDSSobreTasaIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      Required = True
    end
    object CDSSobreTasaIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
  end
  object DSPSobreTasaIva: TDataSetProvider
    DataSet = DMBuscadores.QBuscaIva
    Options = []
    Left = 504
    Top = 480
  end
  object CDSMoneda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMoneda'
    Left = 560
    Top = 552
    object CDSMonedaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMonedaMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object CDSMonedaCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSMonedaSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object CDSMonedaORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object CDSMonedaCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
    end
  end
  object DSPMoneda: TDataSetProvider
    DataSet = DMBuscadores.QBuscaMoneda
    Options = []
    Left = 504
    Top = 552
  end
  object CDSSucursalAdmin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 392
    Top = 608
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSSucursalAdmin: TDataSource
    DataSet = CDSSucursalAdmin
    Left = 488
    Top = 608
  end
  object QUsuarios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select user_name from ucs_users')
    Left = 760
    Top = 544
    object QUsuariosUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Origin = 'USER_NAME'
      Required = True
      Size = 30
    end
  end
  object BuscaArchivo: TFileOpenDialog
    DefaultFolder = 'C:\Gestion\Certificados'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Title = 'Buscar Archivo'
    Left = 760
    Top = 496
  end
  object QListaPrecios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  listaprecioespecialcab l order by nombre')
    Left = 452
    Top = 240
  end
  object DSListaPrecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 772
    Top = 240
  end
  object CDSListaPrecios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaPrecios'
    Left = 724
    Top = 176
    object CDSListaPreciosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSListaPreciosRECARGOBASE: TFloatField
      FieldName = 'RECARGOBASE'
    end
    object CDSListaPreciosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSListaPreciosPORDEFECTO: TStringField
      FieldName = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaPreciosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
    object CDSListaPreciosUSO_ADMINISTRADOR: TStringField
      FieldName = 'USO_ADMINISTRADOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaPreciosCLONADA: TStringField
      FieldName = 'CLONADA'
      FixedChar = True
      Size = 1
    end
    object CDSListaPreciosID_LISTA_CLONADA: TIntegerField
      FieldName = 'ID_LISTA_CLONADA'
    end
    object CDSListaPreciosCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
    end
    object CDSListaPreciosEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaPreciosACTUALIZA_EXCEPCION: TStringField
      FieldName = 'ACTUALIZA_EXCEPCION'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = QListaPrecios
    Options = []
    Left = 516
    Top = 120
  end
  object QSubRub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sr.*, r.detalle_rubro as MuestraRubro from subrubros sr'
      'left join rubros r on r.codigo_rubro=sr.codigo_rubro'
      ''
      'where (:rubro is null) or (r.codigo_rubro=:rubro)'
      'order by sr.detalle_subrubro')
    Left = 448
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = 'RUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
      end>
    object QSubRubCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QSubRubDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object QSubRubCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object QSubRubMUESTRARUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DSSubRubro: TDataSource
    DataSet = QSubRub
    Left = 532
    Top = 328
  end
end

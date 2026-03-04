inherited FormComprobantes: TFormComprobantes
  Left = 285
  Top = 76
  Caption = 'Comprobantes del Sistema'
  ClientHeight = 673
  ClientWidth = 816
  Visible = False
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 834
  ExplicitHeight = 714
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 816
    Height = 562
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 816
    ExplicitHeight = 562
    object pcComprobantes: TJvPageControl
      Left = 0
      Top = 0
      Width = 816
      Height = 562
      ActivePage = pagComprobantes
      Align = alClient
      TabOrder = 0
      object pagComprobantes: TTabSheet
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = 'Comprobantes'
        object pnComprobante: TPanel
          Left = 0
          Top = 0
          Width = 808
          Height = 534
          Align = alClient
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 11
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = dbeCodigo
          end
          object Label2: TLabel
            Left = 88
            Top = 11
            Width = 87
            Height = 13
            Caption = 'Tipo Comprobante'
          end
          object Label3: TLabel
            Left = 16
            Top = 56
            Width = 29
            Height = 13
            Caption = 'Clase '
            FocusControl = dbeSiglas
          end
          object Label4: TLabel
            Left = 16
            Top = 96
            Width = 68
            Height = 13
            Caption = 'Denominaci'#243'n'
            FocusControl = dbeDenominacion
          end
          object Label5: TLabel
            Left = 16
            Top = 183
            Width = 41
            Height = 13
            Caption = 'Sucursal'
          end
          object Label6: TLabel
            Left = 278
            Top = 96
            Width = 24
            Height = 13
            Caption = 'Letra'
            FocusControl = dbeletra
          end
          object Label10: TLabel
            Left = 236
            Top = 208
            Width = 41
            Height = 26
            Caption = 'Copias a'#13#10'Imprimir'
          end
          object Label11: TLabel
            Left = 6
            Top = 343
            Width = 94
            Height = 13
            Caption = 'Archivo del Reporte'
            FocusControl = dbeReporte
          end
          object sbReporte: TSpeedButton
            Left = 519
            Top = 359
            Width = 23
            Height = 22
            Action = BuscaReporte
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
          end
          object Label13: TLabel
            Left = 176
            Top = 96
            Width = 82
            Height = 13
            Caption = 'Lineas en Detalle'
            FocusControl = dbeLineas
          end
          object Label14: TLabel
            Left = 16
            Top = 139
            Width = 110
            Height = 13
            Caption = 'Caja Asignada al Cpbte'
          end
          object Label17: TLabel
            Left = 6
            Top = 305
            Width = 120
            Height = 13
            Caption = 'Codigo Comprobante Afip'
          end
          object Label18: TLabel
            Left = 6
            Top = 268
            Width = 188
            Height = 13
            Hint = 
              'Este Ajuste esta asociado para las ventas que se hacen en cuotas' +
              ' y '#13#10'se usa para generar el Mov.de Anticipo si lo hubiese.'#13#10'Solo' +
              ' tiene insidencia en los comprobantes de venta en Cta.Cte'
            Caption = 'Comprobante de Ajuste CC(Vta Cuotas) '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label19: TLabel
            Left = 560
            Top = 224
            Width = 76
            Height = 13
            Hint = 'Centro de Costo para Vtas'
            Caption = 'Centro de Costo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label20: TLabel
            Left = 278
            Top = 139
            Width = 42
            Height = 13
            Caption = 'Deposito'
          end
          object Label21: TLabel
            Left = 362
            Top = 267
            Width = 97
            Height = 13
            Hint = 
              'Este Ajuste esta asociado para las ventas que se hacen en cuotas' +
              ' y '#13#10'se usa para generar el Mov.de Anticipo si lo hubiese.'#13#10'Solo' +
              ' tiene insidencia en los comprobantes de venta en Cta.Cte'
            Caption = 'Nro.Reg.Controlador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label27: TLabel
            Left = 562
            Top = 267
            Width = 122
            Height = 13
            Hint = 'Centro de Costo para Vtas'
            Caption = 'Moneda del Comprobante'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object dbeCodigo: TDBEdit
            Left = 16
            Top = 27
            Width = 64
            Height = 21
            DataField = 'ID_COMPROBANTE'
            DataSource = DSBase
            Enabled = False
            TabOrder = 3
          end
          object dbeSiglas: TDBEdit
            Left = 16
            Top = 72
            Width = 33
            Height = 21
            DataField = 'CLASE_COMPROB'
            DataSource = DSBase
            TabOrder = 6
          end
          object dbeDenominacion: TDBEdit
            Left = 16
            Top = 112
            Width = 145
            Height = 21
            DataField = 'DENOMINACION'
            DataSource = DSBase
            TabOrder = 9
          end
          object dbcTipoComprob: TDBLookupComboBox
            Left = 88
            Top = 27
            Width = 170
            Height = 21
            DataField = 'TIPO_COMPROB'
            DataSource = DSBase
            DropDownRows = 12
            DropDownWidth = 250
            KeyField = 'SIGLA'
            ListField = 'DETALLE'
            ListSource = DatosComprobantes.DSTipoComprobante
            TabOrder = 4
            OnClick = dbcTipoComprobClick
            OnEnter = dbcTipoComprobEnter
          end
          object dbcSucursal: TDBLookupComboBox
            Left = 16
            Top = 199
            Width = 159
            Height = 21
            DataField = 'SUCURSAL'
            DataSource = DSBase
            KeyField = 'CODIGO'
            ListField = 'DETALLE'
            ListSource = DSSucursal
            TabOrder = 17
            OnEnter = dbcSucursalEnter
          end
          object dbchAfectaLibroIva: TDBCheckBox
            Left = 16
            Top = 227
            Width = 97
            Height = 17
            Caption = 'Afecta Libro Iva'
            DataField = 'AFECTA_IVA'
            DataSource = DSBase
            TabOrder = 21
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbchAfectaCtaCte: TDBCheckBox
            Left = 16
            Top = 245
            Width = 97
            Height = 17
            Caption = 'Afecta Cta.Cte.'
            DataField = 'AFECTA_CC'
            DataSource = DSBase
            TabOrder = 24
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object pnNumeracion: TPanel
            Left = 325
            Top = 88
            Width = 185
            Height = 57
            BevelInner = bvRaised
            BevelOuter = bvLowered
            ParentColor = True
            TabOrder = 7
            object Label7: TLabel
              Left = 13
              Top = 8
              Width = 29
              Height = 13
              Caption = 'Prefijo'
              FocusControl = dbePrefijo
            end
            object Label8: TLabel
              Left = 77
              Top = 8
              Width = 37
              Height = 13
              Caption = 'Numero'
              FocusControl = dbeNumero
            end
            object dbePrefijo: TDBEdit
              Left = 13
              Top = 24
              Width = 57
              Height = 21
              DataField = 'PREFIJO'
              DataSource = DSBase
              TabOrder = 0
            end
            object dbeNumero: TDBEdit
              Left = 77
              Top = 24
              Width = 81
              Height = 21
              DataField = 'NUMERO'
              DataSource = DSBase
              TabOrder = 1
            end
          end
          object pnEnumeraDesde: TPanel
            Left = 516
            Top = 88
            Width = 265
            Height = 57
            BevelInner = bvRaised
            BevelOuter = bvLowered
            ParentColor = True
            TabOrder = 8
            object Label9: TLabel
              Left = 8
              Top = 8
              Width = 74
              Height = 13
              Caption = 'Enumera desde'
            end
            object dbeMuestraComprob: TDBEdit
              Left = 64
              Top = 24
              Width = 161
              Height = 21
              Color = clInfoBk
              DataField = 'MUESTRADENOMINACION'
              DataSource = DSBase
              Enabled = False
              TabOrder = 1
            end
            object rxdbComprobante: TJvDBComboEdit
              Left = 8
              Top = 24
              Width = 49
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'TOMA_NRO_DE'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 16
              TabOrder = 0
              OnButtonClick = rxdbComprobanteButtonClick
            end
          end
          object dbeletra: TDBEdit
            Left = 278
            Top = 112
            Width = 41
            Height = 21
            CharCase = ecUpperCase
            DataField = 'LETRA'
            DataSource = DSBase
            TabOrder = 11
          end
          object dbchDesglozaIva: TDBCheckBox
            Left = 136
            Top = 226
            Width = 97
            Height = 17
            Caption = 'Desgloza Iva'
            DataField = 'DESGLOZA_IVA'
            DataSource = DSBase
            TabOrder = 20
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbrTipoComprobante: TDBRadioGroup
            Left = 298
            Top = 9
            Width = 209
            Height = 58
            Caption = 'Comprobante'
            DataField = 'COMPRA_VENTA'
            DataSource = DSBase
            Items.Strings = (
              'de Compra/Egresos'
              'de Venta/Ingresos - Interno')
            TabOrder = 0
            Values.Strings = (
              'C'
              'V')
            OnClick = dbrTipoComprobanteClick
          end
          object dbeCopias: TDBEdit
            Left = 236
            Top = 240
            Width = 41
            Height = 21
            DataField = 'COPIAS'
            DataSource = DSBase
            TabOrder = 22
          end
          object dbrNumeracion: TDBRadioGroup
            Left = 488
            Top = 9
            Width = 201
            Height = 73
            Caption = 'Tipo de Numeraci'#243'n'
            DataField = 'NUMERARCION_PROPIA'
            DataSource = DSBase
            Items.Strings = (
              'Numeraci'#243'n Propia'
              'Toma N'#250'mero de Otro Comprobante'
              'Sin Numeraci'#243'n')
            TabOrder = 1
            Values.Strings = (
              'S'
              'N'
              'X')
            OnClick = dbrNumeracionClick
          end
          object dbeReporte: TDBEdit
            Left = 4
            Top = 359
            Width = 509
            Height = 21
            DataField = 'REPORTE'
            DataSource = DSBase
            TabOrder = 28
          end
          object dbchImprime: TDBCheckBox
            Left = 136
            Top = 244
            Width = 97
            Height = 17
            Caption = 'Imprime'
            DataField = 'IMPRIME'
            DataSource = DSBase
            TabOrder = 23
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = dbchImprimeClick
          end
          object grFiscal: TGroupBox
            Left = 302
            Top = 208
            Width = 216
            Height = 61
            Caption = 'Comprobante Fiscal'
            Ctl3D = True
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 18
            object Label12: TLabel
              Left = 77
              Top = 15
              Width = 101
              Height = 13
              Caption = 'Nombre de Impresora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object dbchFiscal: TDBCheckBox
              Left = 8
              Top = 29
              Width = 50
              Height = 17
              Caption = 'Fiscal'
              DataField = 'FISCAL'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = dbchFiscalClick
            end
            object dbeImpresoraFiscal: TDBComboBox
              Left = 61
              Top = 27
              Width = 145
              Height = 21
              Style = csDropDownList
              DataField = 'NOMBREIMPRESORA'
              DataSource = DSBase
              DropDownCount = 12
              DropDownWidth = 180
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Items.Strings = (
                ''
                'EPSON-LX300+'
                'EPSON-TM2000'
                'EPSON-TMU300'
                'EPSON-TMU220AF2'
                'EPSON-TMT900'
                'HASAR-330F'
                'HASAR-262'
                'HASAR-715'
                'HASAR-615'
                'HASAR-250F'
                'HASAR-PT1000F')
              ParentFont = False
              TabOrder = 1
            end
          end
          object dbeLineas: TDBEdit
            Left = 176
            Top = 112
            Width = 64
            Height = 21
            Hint = 'solo para facturas, remitos y trasnferencias de mercaderia'
            DataField = 'LINEAS_DETALLE'
            DataSource = DSBase
            TabOrder = 10
          end
          object dbchPorDefecto: TDBCheckBox
            Left = 176
            Top = 65
            Width = 80
            Height = 17
            Hint = 
              'En el caso de haber mas de un mismo tipo de Comprobante,'#13#10'en una' +
              ' misma sucursal, excepto los de facturacion '#233'ste indicaria '#13#10'cua' +
              'l ser'#237'a el que se toma en primer t'#233'rmino.'#13#10'Para el caso de los a' +
              'justes, indicar uno por defecto para las Ctas Coorportivas.'#13#10
            ParentCustomHint = False
            Caption = 'Por defecto'
            DataField = 'DEFECTO'
            DataSource = DSBase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbcCaja: TDBLookupComboBox
            Left = 16
            Top = 156
            Width = 242
            Height = 21
            DataField = 'CAJA_DEFECTO'
            DataSource = DSBase
            KeyField = 'ID_CUENTA'
            ListField = 'NOMBRE'
            ListSource = DatosComprobantes.DSCtaCaja
            TabOrder = 14
            OnKeyDown = dbcCajaKeyDown
          end
          object dbchDivide: TDBCheckBox
            Left = 642
            Top = 174
            Width = 160
            Height = 17
            Caption = 'Divide el Iva'
            DataField = 'DIVIDE_IVA'
            DataSource = DSBase
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbchEnUso: TDBCheckBox
            Left = 505
            Top = 151
            Width = 134
            Height = 17
            Caption = 'Comprobante en Uso'
            DataField = 'EN_USO'
            DataSource = DSBase
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = dbchImprimeClick
          end
          object dbcAjustes: TDBLookupComboBox
            Left = 4
            Top = 283
            Width = 213
            Height = 21
            Hint = 
              'Este Ajuste esta asociado para las ventas que se hacen en cuotas' +
              ' y '
            DataField = 'ID_AJUSTECC'
            DataSource = DSBase
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'ID_COMPROBANTE'
            ListField = 'DENOMINACION'
            ListSource = DatosComprobantes.DSBuscaAjustes
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 26
            OnEnter = dbcAjustesEnter
            OnKeyDown = dbcAjustesKeyDown
          end
          object dbcCtroCosto: TDBLookupComboBox
            Left = 560
            Top = 240
            Width = 242
            Height = 21
            Hint = 'Centro de Costo para Vtas'
            DataField = 'CENTRO_COSTO'
            DataSource = DSBase
            DropDownRows = 10
            DropDownWidth = 300
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'ID'
            ListField = 'DESCRIPCION'
            ListSource = DatosComprobantes.DSBuscaCtro
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnKeyDown = dbcAjustesKeyDown
          end
          object Memo1: TMemo
            Left = 560
            Top = 316
            Width = 242
            Height = 91
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Lines.Strings = (
              'Para el Uso de LIQUIDACION en '
              '  Compras usar Clase LQ'
              'Para Compra Directa Precuaria'
              '  Compras usar Clase LP'
              'Para Liquido Producto en'
              '  Ventas Usar FL')
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 25
          end
          object dbcDeposito: TDBLookupComboBox
            Left = 278
            Top = 156
            Width = 205
            Height = 21
            DataField = 'DEPOSITO'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'ID'
            ListField = 'NOMBRE'
            ListSource = DatosComprobantes.DSDepositos
            ParentFont = False
            TabOrder = 15
            OnKeyDown = dbcDepositoKeyDown
          end
          object dbcCalculaIva: TDBCheckBox
            Left = 642
            Top = 151
            Width = 160
            Height = 17
            Caption = 'Calcula el Iva en Los Items'
            DataField = 'CALCULA_IVA_ARTICULOS'
            DataSource = DSBase
            TabOrder = 13
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = dbchImprimeClick
          end
          object dbchEditaNro: TDBCheckBox
            Left = 695
            Top = 10
            Width = 98
            Height = 17
            Hint = 
              'Esta opcion Habilita si Modifica el Numero cuando se esta proces' +
              'ando'
            Caption = 'Editar Numero'
            DataField = 'EDITAR_NRO'
            DataSource = DSBase
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            Visible = False
          end
          object dbcCodAfip: TJvDBLookupCombo
            Left = 4
            Top = 321
            Width = 507
            Height = 21
            DropDownCount = 25
            DropDownWidth = 600
            DisplayAllFields = True
            DataField = 'CODIGO_AFIP'
            DataSource = DSBase
            LookupField = 'CODIGO'
            LookupDisplay = 'codigo;DETALLE'
            LookupSource = DatosComprobantes.DSBuscaCompAfip
            RightTrimmedLookup = True
            TabOrder = 27
          end
          object DBEdit1: TDBEdit
            Left = 362
            Top = 286
            Width = 162
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTROLADOR_NROREG'
            DataSource = DSBase
            TabOrder = 29
          end
          object cbUsaCAEA: TDBCheckBox
            Left = 505
            Top = 197
            Width = 202
            Height = 17
            Caption = 'Facturaci'#243'n Electronica con CAEA'
            DataField = 'USAR_CAEA'
            DataSource = DSBase
            Enabled = False
            TabOrder = 30
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object chFacturaElectronica: TDBCheckBox
            Left = 505
            Top = 174
            Width = 134
            Height = 17
            Caption = 'Factura Electronica'
            DataField = 'FACTURAELECTRONICA'
            DataSource = DSBase
            TabOrder = 31
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = dbchImprimeClick
          end
          object GroupBox1: TGroupBox
            Left = 6
            Top = 413
            Width = 806
            Height = 110
            Caption = '             Datos para Remitos Con CAI '
            DefaultHeaderFont = False
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            ParentShowHint = False
            ShowHint = False
            TabOrder = 32
            object Label22: TLabel
              Left = 18
              Top = 20
              Width = 146
              Height = 13
              Caption = 'Datos Imprenta Nombre - CUIT'
              FocusControl = edImprenta
            end
            object Label23: TLabel
              Left = 325
              Top = 20
              Width = 127
              Height = 13
              Caption = 'Fecha/Rango Numeracion'
              FocusControl = cxDBTextEdit2
              ParentShowHint = False
              ShowHint = True
            end
            object Label24: TLabel
              Left = 18
              Top = 60
              Width = 89
              Height = 13
              Hint = 'Direccion Imprenta'
              Caption = 'Direccion Imprenta'
              FocusControl = cxDBTextEdit3
            end
            object Label25: TLabel
              Left = 636
              Top = 20
              Width = 26
              Height = 13
              Caption = 'C.A.I '
              FocusControl = cxDBTextEdit4
            end
            object Label26: TLabel
              Left = 641
              Top = 59
              Width = 84
              Height = 13
              Caption = 'Vencimiento C.A.I'
              FocusControl = cxDBTextEdit5
            end
            object edImprenta: TDBEdit
              Left = 19
              Top = 39
              Width = 300
              Height = 21
              Hint = 'Nombre Appellido - CUIT: XX-XXXXXXXX-X - Hab:N'#186' 000000'
              ParentCustomHint = False
              DataField = 'REMITO_IMPRENTA'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TextHint = 'Nombre Appellido - CUIT: XX-XXXXXXXX-X - Hab:N'#186' 000000'
            end
            object cxDBTextEdit2: TDBEdit
              Left = 325
              Top = 39
              Width = 294
              Height = 21
              Hint = 'Fecha Imp: Oct.2025 - Nro: 00000-00000000/00000000'
              ParentCustomHint = False
              DataField = 'REMITO_FECHA_RANGO'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TextHint = 'Fecha Imp: Oct.2025 - Nro: 00000-00000000/00000000'
            end
            object cxDBTextEdit3: TDBEdit
              Left = 18
              Top = 75
              Width = 300
              Height = 21
              Hint = 'Calle XX 1111 - Lalidadad - Provincia'
              ParentCustomHint = False
              DataField = 'REMITO_DIRECCION'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              TextHint = 'Calle XX 1111 - Lalidadad - Provincia'
            end
            object cxDBTextEdit4: TDBEdit
              Left = 636
              Top = 36
              Width = 160
              Height = 21
              Hint = 'C.A.I'
              ParentCustomHint = False
              DataField = 'REMITO_CAI'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              TextHint = 'C.A.I'
            end
            object cxDBTextEdit5: TDBEdit
              Left = 635
              Top = 75
              Width = 161
              Height = 21
              Hint = 'Vencimiento C.A.I'
              ParentCustomHint = False
              DataField = 'REMITO_VENCIMIENTO_CAI'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              TextHint = 'Vencimiento C.A.I'
            end
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 560
            Top = 283
            Width = 242
            Height = 21
            Hint = 'Moneda de Comprobante x Ahora Solo en Compra'
            DataField = 'ID_MONEDA_CPBTE'
            DataSource = DSBase
            DropDownRows = 10
            DropDownWidth = 300
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'ID'
            ListField = 'MONEDA'
            ListSource = DatosComprobantes.DSMonedas
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 33
            OnKeyDown = dbcAjustesKeyDown
          end
        end
      end
      object pagFiscales: TTabSheet
        Caption = 'Fc.Fiscales'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 808
          Height = 389
          Align = alTop
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 806
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label15: TLabel
              Left = 10
              Top = 11
              Width = 41
              Height = 13
              Caption = 'Sucursal'
            end
            object dbcSucursales: TJvDBLookupCombo
              Left = 60
              Top = 7
              Width = 190
              Height = 21
              DisplayEmpty = 'Todas las Sucursal'
              EmptyValue = '-1'
              LookupField = 'CODIGO'
              LookupDisplay = 'DETALLE'
              LookupSource = DatosComprobantes.DSBuscaSuc
              TabOrder = 0
              OnChange = CompFiscalesExecute
            end
          end
          object dbgFiscales: TDBGrid
            Left = 1
            Top = 42
            Width = 806
            Height = 311
            Align = alTop
            DataSource = DatosComprobantes.DSCompFiscales
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = dbgFiscalesDblClick
            OnEditButtonClick = dbgFiscalesEditButtonClick
            Columns = <
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'ID_COMPROBANTE'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'MUESTRASUCURSAL'
                Title.Alignment = taCenter
                Width = 182
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TIPO_COMPROB'
                Title.Alignment = taCenter
                Width = 31
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'CLASE_COMPROB'
                Title.Alignment = taCenter
                Width = 36
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'DENOMINACION'
                Title.Alignment = taCenter
                Width = 99
                Visible = True
              end
              item
                DropDownRows = 15
                Expanded = False
                FieldName = 'NOMBREIMPRESORA'
                PickList.Strings = (
                  ''
                  'EPSON-LX300+'
                  'EPSON-TM2000'
                  'EPSON-TMU300'
                  'EPSON-TMU220AF2'
                  'EPSON-TMT900'
                  'HASAR-330F'
                  'HASAR-262'
                  'HASAR-715'
                  'HASAR-615'
                  'HASAR-250F')
                Title.Alignment = taCenter
                Width = 134
                Visible = True
              end>
          end
          object btCompFiscales: TBitBtn
            Left = 472
            Top = 357
            Width = 113
            Height = 25
            Action = CompFiscales
            Caption = 'Traer Comp'
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
            TabOrder = 2
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Cpbtes. Electronicos'
        ImageIndex = 2
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 808
          Height = 389
          Align = alTop
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 806
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label16: TLabel
              Left = 10
              Top = 11
              Width = 41
              Height = 13
              Caption = 'Sucursal'
            end
            object dbcSucursal2: TJvDBLookupCombo
              Left = 60
              Top = 7
              Width = 190
              Height = 21
              DisplayEmpty = 'Todas las Sucursal'
              EmptyValue = '-1'
              LookupField = 'CODIGO'
              LookupDisplay = 'DETALLE'
              LookupSource = DatosComprobantes.DSBuscaSuc
              TabOrder = 0
              OnChange = CompElectExecute
            end
          end
          object dbgElectronicos: TDBGrid
            Left = 1
            Top = 42
            Width = 806
            Height = 311
            Align = alTop
            DataSource = DatosComprobantes.DSCompElect
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = dbgElectronicosDblClick
            Columns = <
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'ID_COMPROBANTE'
                Title.Alignment = taCenter
                Width = 71
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'MUESTRASUCURSAL'
                Title.Alignment = taCenter
                Width = 182
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'TIPO_COMPROB'
                Title.Alignment = taCenter
                Width = 48
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'CLASE_COMPROB'
                Title.Alignment = taCenter
                Width = 36
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'DENOMINACION'
                Title.Alignment = taCenter
                Width = 99
                Visible = True
              end
              item
                DropDownRows = 10
                Expanded = False
                FieldName = 'NOMBREIMPRESORA'
                PickList.Strings = (
                  ''
                  'EPSON-LX300+'
                  'EPSON-TM2000'
                  'EPSON-TMU300'
                  'EPSON-TMU220AF2'
                  'HASAR-330F'
                  'HASAR-262'
                  'HASAR-715'
                  'HASAR-615')
                Title.Alignment = taCenter
                Width = 134
                Visible = True
              end>
          end
          object BitBtn1: TBitBtn
            Left = 472
            Top = 357
            Width = 113
            Height = 25
            Action = CompElect
            Caption = 'Traer Comp'
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
            TabOrder = 2
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Control de Comprobantes Repetidos'
        ImageIndex = 3
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 808
          Height = 345
          Align = alTop
          DataSource = DatosComprobantes.DSControlRepetido
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgElectronicosDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'LETRACPBTE'
              Title.Alignment = taCenter
              Width = 56
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Width = 54
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Width = 126
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CV'
              Title.Alignment = taCenter
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object btRepetidos: TBitBtn
          Left = 478
          Top = 351
          Width = 113
          Height = 25
          Caption = 'Traer Comp'
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
          OnClick = btRepetidosClick
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Revision de Comp.Compra'
        ImageIndex = 4
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 808
          Height = 345
          Align = alTop
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
            DataController.DataSource = DatosComprobantes.DSControlCompra
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
            end
            object cxGrid1DBTableView1SUCURSALCOMPRA: TcxGridDBColumn
              DataBinding.FieldName = 'SUCURSALCOMPRA'
            end
            object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Width = 31
            end
            object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Width = 28
            end
            object cxGrid1DBTableView1LETRAFAC: TcxGridDBColumn
              DataBinding.FieldName = 'LETRAFAC'
              Width = 35
            end
            object cxGrid1DBTableView1DENOMINACION: TcxGridDBColumn
              DataBinding.FieldName = 'DENOMINACION'
              Width = 116
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object btCompras: TBitBtn
          Left = 472
          Top = 357
          Width = 113
          Height = 25
          Caption = 'Traer Comp'
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
          OnClick = btComprasClick
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Revision de Comp.Vta'
        ImageIndex = 5
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 808
          Height = 345
          Align = alTop
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
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
            DataController.DataSource = DatosComprobantes.DSControlVta
            OptionsView.GroupByBox = False
            object cxGridDBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
            end
            object cxGridDBTableView1SUCURSAL: TcxGridDBColumn
              DataBinding.FieldName = 'SUCURSAL'
              Width = 81
            end
            object cxGridDBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Width = 46
            end
            object cxGridDBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Width = 39
            end
            object cxGridDBTableView1LETRAFAC: TcxGridDBColumn
              DataBinding.FieldName = 'LETRAFAC'
              Width = 36
            end
            object cxGridDBTableView1DENOMINACION: TcxGridDBColumn
              DataBinding.FieldName = 'DENOMINACION'
              Width = 135
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object btVentas: TBitBtn
          Left = 472
          Top = 357
          Width = 113
          Height = 25
          Caption = 'Traer Comp'
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
          OnClick = btVentasClick
        end
      end
      object pagTipos: TTabSheet
        Caption = 'Tipos de Comprobantes'
        ImageIndex = 6
        TabVisible = False
        object dbgTipoCpbte: TDBGrid
          Left = 16
          Top = 3
          Width = 641
          Height = 391
          DataSource = DSTipoCpbte
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 562
    Width = 816
    ExplicitTop = 562
    ExplicitWidth = 816
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 52
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object spAsiganrCtroCostoGral: TSpeedButton
      Left = 609
      Top = 0
      Width = 40
      Height = 29
      Hint = 'Aplicar Centro de Costo en los comprobantes de la Sucursal'
      Action = AplicarCtroCosto
      Flat = True
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        41004242420043434300444444004545450041474A003E494F003B4B5400384D
        5800354F5C002B556A00235A75001B5F810014648B000F6691000D6894000B69
        97000B6B9A000A6D9C000A6E9D000B6F9E000B70A0000B71A0000C71A1000B72
        A2000B72A2000B73A3000A73A4000A74A5000B77A9000C7BAD000E7EAF000D82
        B4000D84B7000F88BA00108ABD00118BBE00148DBE00158EC0001791C3001994
        C6001B96C8001F9AC900259DC9002DA2CA0033A7CE0036A9CF0039AAD10037AB
        D30033ABD5002FABD6002CACD9002AAEDC0028B0DF0025B3E30023B6E60020B8
        E9001BBBED0018BFF20019C3F50017C4F70015C5F90014C6FA0011C6FB0011C7
        FC0013C7FC0016C8FB001DC8FA0024C8F80032CBF6003DCDF50045CEF4004BCE
        F30051D0F30054D1F30058D3F3005BD5F30060D4F10064D3EF0068D2EC006ED3
        EB0072D3EA007AD3E90080D3E6008AD4E50093D5E5009ED6E300ACD6DF00BDD5
        DB00C8D6D900D2D8DA00D6D9DA00DAD9D900DDD9D800DED9D800DDD9D800DDD9
        D800DCD8D800DCD8D700DBD7D600DAD6D500D9D5D400D7D4D300D5D1D100D3D0
        CF00D1CECE00CECCCC00CBCAC900C9C8C700C6C5C500C3C3C300C0C0C000BDBD
        BD00BCBBBB00BABABA00B8B8B800B7B7B700B6B6B600B7B7B700B8B8B800BAB7
        B700BDB7B600BFB6B600C1B6B500C2B6B500C4B5B400C5B5B400C7B5B400C8B5
        B400C9B5B400C9B5B400C8B5B300C8B4B200CCA8B300D0A0B500D592BC00DE7A
        C800E365D000E852D700ED41DD00F134E300F429E800F61FED00F915F300FC0A
        F800FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE01
        FE00FD02FC00F50CF500EA1BE800D831D700C253BF00B06CAD00A47FA0009E89
        99009A8E9600998F9300988F9200978E9000958D8E00938C8C00918A8A008F89
        89008B868600878383008481810083808000817F7F00807F7F00DDDDDDDDDDDD
        DD646951DDDDDDDDDDDDDDDDDD666652616A6B57536C68DDDDDDDDDDDD676C6A
        647A8668717167DDDDDDDD58606D90717881858871979358DDDDDD6E6D719392
        878381878D8E796B67DDDD5F68778F938B6E6D788080807B6BDDDD5D6A768A93
        FFFFFFFF6D80808063DDDD5E6A6B87FF9FF1F7C7FF87949760DDDD5C636A78FF
        9FF2F7C7FF8E969267DDDDDD506577FF9FF2F7C7FF89894FDDDDDDDDDD565EFF
        9FF2F7C6FF615EDDDDDDDDDDDDDDDDFF9EF2F8C6FFDDDDDDDDDDDDDDDDDDDDFF
        F1F9FEF9FFDDDDDDDDDDDDDDDDDDDDFFA4B7F7F4FFDDDDDDDDDDDDDDDDDDDDFF
        9E9FB6FAFFDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFDDDDDDDDDDDD}
    end
    object spAplicaCtrCostoVta: TSpeedButton
      Left = 649
      Top = 0
      Width = 40
      Height = 29
      Hint = 'Aplicar Centro de Costo en Facturas de Venta'
      Action = AplicarCtroCostoVenta
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00030000000B0000000E0000000F0000000F0000001000000010000000110000
        00110000001200000012000000130000000F0000000400000000000000000000
        000AD4A377FFD3A075FFD29F72FFD09C6FFFCE9A6CFFCD9869FFCC9567FFCA93
        64FFC89162FFC88F5FFFC68D5DFFC48C5AFF0000000F00000000000000000000
        000BD6A57AFFFFFFFFFFFAF4EDFFF9F2EAFFF8F0E7FFF7EDE4FFF6ECE1FFF6EA
        DFFFF5E8DCFFF5E7DAFFF3E5D8FFC68D5CFF0000001200000000000000000000
        000AD8A77CFFFFFFFFFFFBF5EFFFFAF3EDFFF9F2E9FFF9EFE7FFF7EDE4FFF6EC
        E2FFF6EBDFFFF5E9DDFFF5E7DAFFC78F5FFF0000001100000000000000000000
        0009D8A97FFFFFFFFFFFFCF7F2FFDEB793FFDAB28EFFD6AD88FFD2A883FFCEA3
        7CFFCB9F78FFF6EADEFFF5E8DCFFC89161FF0000001000000000000000000000
        0009DAAB81FFFFFFFFFFFCF8F4FFFBF7F2FFFBF5EFFFF9F3EDFFF9F1E9FFF8F0
        E7FFF7EDE4FFF7ECE1FFF5EADFFFC99364FF0000000F00000000000000000000
        0008DBAD84FFFFFFFFFFFDFAF7FFE4BD9BFFE3BC9AFFE1B996FFDDB592FFD9B1
        8CFFD5AB86FFF8EEE4FFF7ECE1FFCB9567FF0000000E00000000000000000000
        0007DDAF86FFFFFFFFFFFBF7F4FFF5EFE9FFF9F4F0FFF9F3EDFFF2EAE2FFF7EF
        E7FFF9F2E9FFF8EFE6FFF7EEE4FFCD976AFF0000000D00000000000000000000
        0006DEB087FFFFFFFFFFF1ECE6FF7169ACFFE4DACEFFE3D7CBFF6B63A4FFECE2
        D7FFFAF4ECFFF9F1EAFFF8EFE6FFCE9A6CFF0000000C00000000000000000000
        0005DEB189FFFFFFFFFFECE5DFFF1010A2FF625796FF5E528FFF080898FFE2D6
        C9FFFBF6EFFFF9F3ECFFF9F1E9FFD09C6FFF0000000B00000000000000000000
        0004DFB28AFFFFFFFFFFF1ECE6FF1414A6FF4747BDFF2323B1FF0A0A9AFFE1D5
        CAFFFBF7F2FFFBF6EFFFF9F3EDFFD19F71FF0000000A00000000000000000000
        0003DFB28AFFFFFFFFFFF8F6F3FF1817ABFF8080DAFF3F3FC6FF0C0D9EFFE5DC
        D1FFFCF9F5FFFCF7F2FFFBF5EFFFD3A175FF0000000900000000000000000000
        0003DFB28AFFFFFFFFFFFDFCFBFF1C1BB0FF8484DBFF4444C8FF1010A2FFEAE2
        DAFFFDFAF7FFFCF9F4FFFBF7F2FFD4A278FF0000000800000000000000000000
        0002DFB28AFFFFFFFFFFFFFFFFFF1F1FB5FF8887DCFF8484DCFF1314A6FFEFEA
        E6FFFFFFFFFFFFFFFFFFFFFFFFFFD6A57AFF0000000700000000000000000000
        0001DFB28AFFDFB28AFFDFB28AFF2222B9FF1F1FB5FF1C1BB1FF1818ABFFD6A8
        7EFFDCAD83FFDAAB81FFD8A97FFFD8A77CFF0000000500000000000000000000
        0000000000010000000100000002000000020000000201000004020100080201
        0007000000040000000400000005000000040000000100000000}
    end
  end
  inherited Panel1: TPanel
    Top = 592
    Width = 816
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 592
    ExplicitWidth = 816
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 727
      ExplicitWidth = 727
    end
  end
  inherited ActionList1: TActionList
    Left = 424
    Top = 24
    object BuscaReporte: TAction
      OnExecute = BuscaReporteExecute
    end
    object Liberar: TAction
      Caption = 'Liberar'
      ShortCut = 16460
      OnExecute = LiberarExecute
    end
    object CompFiscales: TAction
      Caption = 'Traer Comp'
      OnExecute = CompFiscalesExecute
    end
    object CompElect: TAction
      Caption = 'Traer Comp'
      OnExecute = CompElectExecute
    end
    object AplicarCtroCosto: TAction
      OnExecute = AplicarCtroCostoExecute
    end
    object AplicarCtroCostoVenta: TAction
      OnExecute = AplicarCtroCostoVentaExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSComprobantes
    Left = 368
    Top = 200
  end
  inherited ImageList1: TImageList
    Left = 615
    Top = 73
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
    Left = 728
    Top = 64
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 48
    Top = 552
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 752
    Top = 392
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 768
    Top = 112
  end
  inherited QBrowse2: TFDQuery
    Left = 120
    Top = 608
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(id_comprobante) as Codigo from Comprobantes'
      '')
    Left = 32
    Top = 608
    object QUltimoCodigo2CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 224
    Top = 464
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.frp'
    Left = 672
    Top = 64
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 154
    Top = 392
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
    Left = 226
    Top = 392
  end
  object DSPComprobantes: TDataSetProvider
    DataSet = DatosComprobantes.QComprobantes
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 584
    Top = 528
  end
  object CDSComprobantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobantes'
    BeforePost = CDSComprobantesBeforePost
    OnNewRecord = CDSComprobantesNewRecord
    OnReconcileError = CDSComprobantesReconcileError
    Left = 664
    Top = 528
    object CDSComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSComprobantesLETRA: TStringField
      Alignment = taCenter
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesPREFIJO: TStringField
      Alignment = taCenter
      FieldName = 'PREFIJO'
      OnSetText = CDSComprobantesPREFIJOSetText
      Size = 4
    end
    object CDSComprobantesNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesNUMERO: TStringField
      Alignment = taCenter
      FieldName = 'NUMERO'
      OnSetText = CDSComprobantesNUMEROSetText
      Size = 8
    end
    object CDSComprobantesTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
    end
    object CDSComprobantesAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Required = True
      OnChange = CDSComprobantesCOMPRA_VENTAChange
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object CDSComprobantesREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
    end
    object CDSComprobantesIMPRIME: TStringField
      FieldName = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesFISCAL: TStringField
      FieldName = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Size = 15
    end
    object CDSComprobantesPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Required = True
    end
    object CDSComprobantesCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Required = True
    end
    object CDSComprobantesDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesEN_USO: TStringField
      FieldName = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Size = 3
    end
    object CDSComprobantesID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
    end
    object CDSComprobantesCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
    end
    object CDSComprobantesFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSComprobantesULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
    end
    object CDSComprobantesEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesCONTROLADOR_NROREG: TStringField
      FieldName = 'CONTROLADOR_NROREG'
    end
    object CDSComprobantesUSAR_CAEA: TStringField
      FieldName = 'USAR_CAEA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesCAEA: TStringField
      FieldName = 'CAEA'
      Size = 50
    end
    object CDSComprobantesVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_DESDE'
    end
    object CDSComprobantesVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_HASTA'
    end
    object CDSComprobantesMUESTRADENOMINACION: TStringField
      FieldName = 'MUESTRADENOMINACION'
      Size = 15
    end
    object CDSComprobantesFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesREMITO_IMPRENTA: TStringField
      FieldName = 'REMITO_IMPRENTA'
      Size = 100
    end
    object CDSComprobantesREMITO_FECHA_RANGO: TStringField
      FieldName = 'REMITO_FECHA_RANGO'
      Size = 100
    end
    object CDSComprobantesREMITO_DIRECCION: TStringField
      FieldName = 'REMITO_DIRECCION'
      Size = 100
    end
    object CDSComprobantesREMITO_CAI: TStringField
      FieldName = 'REMITO_CAI'
      Size = 40
    end
    object CDSComprobantesREMITO_VENCIMIENTO_CAI: TStringField
      FieldName = 'REMITO_VENCIMIENTO_CAI'
    end
    object CDSComprobantesID_MONEDA_CPBTE: TIntegerField
      FieldName = 'ID_MONEDA_CPBTE'
      Required = True
    end
  end
  object spAplicaCentroCostoVta: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ASIGNA_CTROCOSTO_FCVTA'
    Left = 584
    Top = 576
    ParamData = <
      item
        Position = 1
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CENTROCOSTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QTiposCpbtes: TFDQuery
    AfterPost = QTiposCpbtesAfterPost
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Tipo_comprobante')
    Left = 628
    Top = 176
    object QTiposCpbtesID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Origin = 'ID_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTiposCpbtesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QTiposCpbtesSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
    object QTiposCpbtesDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      FixedChar = True
      Size = 1
    end
    object QTiposCpbtesAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      FixedChar = True
      Size = 1
    end
    object QTiposCpbtesAFECTA_LIBRO_IVA: TStringField
      FieldName = 'AFECTA_LIBRO_IVA'
      Origin = 'AFECTA_LIBRO_IVA'
      FixedChar = True
      Size = 1
    end
    object QTiposCpbtesTIPO_DE_OPERACION: TStringField
      FieldName = 'TIPO_DE_OPERACION'
      Origin = 'TIPO_DE_OPERACION'
      FixedChar = True
      Size = 1
    end
  end
  object DSTipoCpbte: TDataSource
    DataSet = QTiposCpbtes
    Left = 708
    Top = 192
  end
end

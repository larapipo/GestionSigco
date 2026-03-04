inherited FormClientes_2: TFormClientes_2
  Left = 235
  Top = 97
  Caption = 'Datos de Clientes'
  ClientHeight = 683
  ClientWidth = 838
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 856
  ExplicitHeight = 724
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 838
    Height = 497
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 838
    ExplicitHeight = 497
    object PageControl1: TPageControl
      Left = 0
      Top = 20
      Width = 838
      Height = 477
      ActivePage = Pag1
      Align = alClient
      TabOrder = 0
      object Pag1: TTabSheet
        Caption = 'Datos de Clientes'
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 830
          Height = 449
          ActivePage = SubPag4
          Align = alClient
          MultiLine = True
          TabOrder = 0
          object SubPag1: TTabSheet
            Caption = 'Datos Principales'
            object Label1: TLabel
              Left = 3
              Top = 5
              Width = 33
              Height = 13
              Caption = 'Codigo'
            end
            object Label2: TLabel
              Left = 77
              Top = 7
              Width = 37
              Height = 13
              Caption = 'Nombre'
            end
            object Label3: TLabel
              Left = 77
              Top = 49
              Width = 63
              Height = 13
              Caption = 'Raz'#243'n Social'
            end
            object Label6: TLabel
              Left = 3
              Top = 134
              Width = 46
              Height = 13
              Caption = 'Localidad'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 77
              Top = 89
              Width = 91
              Height = 13
              Caption = 'Domicilio Comercial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Bevel5: TBevel
              Left = 297
              Top = 150
              Width = 70
              Height = 19
            end
            object Bevel2: TBevel
              Left = 77
              Top = 150
              Width = 218
              Height = 19
            end
            object dbtLocalidad: TDBText
              Left = 77
              Top = 152
              Width = 215
              Height = 14
              DataField = 'Localidad'
              DataSource = DSBase
            end
            object dbtCPostal: TDBText
              Left = 301
              Top = 152
              Width = 65
              Height = 12
              DataField = 'CPostal'
              DataSource = DSBase
            end
            object Label16: TLabel
              Left = 3
              Top = 173
              Width = 46
              Height = 13
              Caption = 'Vendedor'
            end
            object Label23: TLabel
              Left = 3
              Top = 256
              Width = 75
              Height = 13
              Caption = 'Lista de Precios'
            end
            object Label30: TLabel
              Left = 531
              Top = 269
              Width = 110
              Height = 13
              Caption = 'Coeficientes Sobre lista'
            end
            object Label31: TLabel
              Left = 3
              Top = 213
              Width = 43
              Height = 13
              Caption = 'Cobrador'
            end
            object Label32: TLabel
              Left = 531
              Top = 206
              Width = 43
              Height = 13
              Caption = 'Contacto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 531
              Top = 249
              Width = 87
              Height = 13
              Caption = 'Telefono contacto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object btn1: TSpeedButton
              Left = 274
              Top = 105
              Width = 22
              Height = 22
              Action = GeoPosicionar
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FF185380185380085C95FF00FFFF00FFFF00FFFF00FFFF00FF681E0B681E0B68
                1E0B681E0B681E0BFF00FFFF00FF1F527D3C81B163D8F6085C95FF00FFFF00FF
                FF00FF681E0B681E0BCB771AB6802052A533958C28CB771A621F0F304257397F
                B060DAF767DDFF1A7BC4FF00FFFF00FF681E0BBB5700BB5700BB58005F822021
                64211C5E1C404A0E335A57387FAF60D9F766DAFF1B7BCAFF00FFFF00FF681E0B
                9D6C0FB55100B551006A32027A571B795B1D64581C194A353481B762DAF766DA
                FF2370B0FF00FFFF00FFFF00FF3B45169F6D16B04E02995515B17434C99151C7
                8E4BC0813A835E2A39A7D064DCFF2A77AC50241BFF00FFFF00FF681E0B84BF64
                B66E28AB5913B87D3EEBC291D8D59AD4CF8FD3C67ECB884181622D25434B5732
                0EA74300681E0BFF00FF681E0BB0722FBD7336AD7230F0EED1E0E5B8DEE0B2DA
                D8A3D4CE8ED5C177B47A326C400E6425005D6307681E0BFF00FF681E0BBF7944
                C17F4CB27838EFF7E2E6F3D7E3EFCEDDE2B4D8D49AD1C781BD803C6E4D156423
                00209518681E0BFF00FF681E0BC18155C78B64B07435F6FEEFEEFBEDE9F6DEE0
                E6BBD9D59DD9C583BA813D62581B4F78181C9D1C681E0BFF00FF681E0BC58B67
                CE9A7BB17438C99A68F0FEEFE9F0D4E0E2B6DADAA4EFCB97A069282C6E262EAA
                2E1E9E1E3B4516FF00FFFF00FF681E0BD5AC96C58F6FAF7435C4955EF6EAD1F2
                D9BBEEC79EAF75367A822F40B6412EAA2E3B4516FF00FFFF00FFFF00FF681E0B
                D1A691D0A48FC1896CAF8145AB7635AB7635A47A3566C15A4FC0503DB53E2CA9
                2C681E0BFF00FFFF00FFFF00FFFF00FF681E0BC9967ECE9F89C0846A98B67589
                AF656BD16C5AC75B49BC4A419D30681E0BFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF681E0B681E0BC59076B68C69A9754E976739825622681E0B681E0BFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF681E0B681E0B68
                1E0B681E0B681E0BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            end
            object dbtLocalidad1: TDBText
              Left = 77
              Top = 130
              Width = 91
              Height = 14
              DataField = 'LATITUD'
              DataSource = DSBase
            end
            object dbtLocalidad2: TDBText
              Left = 182
              Top = 130
              Width = 91
              Height = 14
              DataField = 'LONGITUD'
              DataSource = DSBase
            end
            object Label72: TLabel
              Left = 3
              Top = 87
              Width = 53
              Height = 13
              Caption = 'Codigo Op.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = Label72Click
              OnMouseMove = Label72MouseMove
            end
            object Label70: TLabel
              Left = 339
              Top = 49
              Width = 90
              Height = 13
              Caption = 'Cod.Tarjeta Cliente'
            end
            object Label76: TLabel
              Left = 340
              Top = 7
              Width = 83
              Height = 13
              Caption = 'Nombre Ampliado'
            end
            object Label90: TLabel
              Left = 302
              Top = 91
              Width = 32
              Height = 13
              Caption = 'Rubro '
            end
            object Label95: TLabel
              Left = 537
              Top = 139
              Width = 30
              Height = 13
              Caption = 'Nro.IP'
            end
            object Label96: TLabel
              Left = 305
              Top = 172
              Width = 95
              Height = 13
              Caption = 'Nick Mercado Pago'
            end
            object Label116: TLabel
              Left = 3
              Top = 300
              Width = 84
              Height = 13
              Caption = 'Esquema de Lista'
            end
            object dbeCodigo: TDBEdit
              Left = 3
              Top = 22
              Width = 68
              Height = 20
              AutoSize = False
              BiDiMode = bdRightToLeft
              DataField = 'Codigo'
              DataSource = DSBase
              ParentBiDiMode = False
              TabOrder = 0
              OnEnter = dbeCodigoEnter
              OnExit = dbeCodigoExit
              OnKeyDown = dbeCodigoKeyDown
            end
            object dbeNombre: TDBEdit
              Left = 77
              Top = 22
              Width = 256
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Nombre'
              DataSource = DSBase
              TabOrder = 1
              OnEnter = dbeNombreEnter
              OnExit = dbeNombreExit
              OnKeyDown = dbeNombreKeyDown
            end
            object dbeRazonSocial: TDBEdit
              Left = 77
              Top = 64
              Width = 255
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Razon_Social'
              DataSource = DSBase
              TabOrder = 3
            end
            object dbeDomicilio: TDBEdit
              Left = 77
              Top = 105
              Width = 196
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Direccion_Comercial'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object GroupBox3: TGroupBox
              Left = 532
              Top = 51
              Width = 273
              Height = 82
              Caption = 'Tel'#233'fonos'
              Color = clGradientInactiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 6
              object Bevel1: TBevel
                Left = 13
                Top = 20
                Width = 57
                Height = 20
              end
              object Label22: TLabel
                Left = 28
                Top = 46
                Width = 32
                Height = 13
                Caption = 'Celular'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object dbtTelediscado: TDBText
                Left = 16
                Top = 22
                Width = 52
                Height = 17
                DataField = 'MUESTRATELEDISCADO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object dbeTel1: TDBEdit
                Left = 81
                Top = 19
                Width = 90
                Height = 21
                DataField = 'Telefono_Comercial_1'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dbeTel2: TDBEdit
                Left = 177
                Top = 19
                Width = 90
                Height = 21
                DataField = 'Telefono_Comercial_2'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DbeTel3: TDBEdit
                Left = 81
                Top = 46
                Width = 90
                Height = 21
                DataField = 'Telefono_Celular'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
            end
            object dbeMuestraVendedor: TDBEdit
              Left = 77
              Top = 189
              Width = 222
              Height = 21
              CharCase = ecUpperCase
              Color = clInfoBk
              DataField = 'MUESTRAVENDEDOR'
              DataSource = DSBase
              Enabled = False
              TabOrder = 8
            end
            object dbcListaPrecios: TDBLookupComboBox
              Left = 3
              Top = 273
              Width = 358
              Height = 21
              DataField = 'LISTAPRECIOS'
              DataSource = DSBase
              DropDownRows = 12
              KeyField = 'ID'
              ListField = 'NOMBRE'
              ListSource = DatosClientes.DSListaPrecios
              TabOrder = 11
              OnExit = dbcListaPreciosExit
              OnKeyDown = dbcListaPreciosKeyDown
            end
            object GroupBox1: TGroupBox
              Left = 0
              Top = 344
              Width = 405
              Height = 65
              Caption = 'Datos Adicionales para Personas Unica'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              object Label24: TLabel
                Left = 11
                Top = 16
                Width = 79
                Height = 13
                Caption = 'Documento Tipo'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label25: TLabel
                Left = 107
                Top = 16
                Width = 95
                Height = 13
                Caption = 'Documento Numero'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label26: TLabel
                Left = 275
                Top = 16
                Width = 86
                Height = 13
                Caption = 'Fecha Nacimiento'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object dbeNumeroDocumento: TDBEdit
                Left = 107
                Top = 32
                Width = 145
                Height = 21
                DataField = 'NRODOCUMENTO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnKeyPress = dbeNumeroDocumentoKeyPress
              end
              object dbeFechaNacimiento: TJvDBDateEdit
                Left = 272
                Top = 32
                Width = 113
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                DataField = 'FECHANACIMIENTO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
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
                TabOrder = 2
              end
              object dbTipoDoc: TJvDBComboBox
                Left = 11
                Top = 32
                Width = 61
                Height = 21
                DataField = 'TIPODOCUMENTO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  '-'
                  'DNI'
                  'CI'
                  'LE'
                  'LC'
                  'PAS')
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
              end
            end
            object dbeMuestraCobrador: TDBEdit
              Left = 77
              Top = 229
              Width = 222
              Height = 21
              CharCase = ecUpperCase
              Color = clInfoBk
              DataField = 'MUESTRACOBRADOR'
              DataSource = DSBase
              Enabled = False
              TabOrder = 10
            end
            object dbeContacto: TDBEdit
              Left = 531
              Top = 222
              Width = 245
              Height = 21
              DataField = 'CONTACTO'
              DataSource = DSBase
              TabOrder = 12
            end
            object dbeTelefonoContacto: TDBEdit
              Left = 673
              Top = 246
              Width = 104
              Height = 21
              DataField = 'TELEFONO_CONTACTO'
              DataSource = DSBase
              TabOrder = 13
            end
            object RxDBIdPostal: TJvDBComboEdit
              Left = 3
              Top = 149
              Width = 49
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'Id_Cod_Postal'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 16
              TabOrder = 5
              OnButtonClick = BuscaLocalidadExecute
            end
            object rxcVendedor: TJvDBComboEdit
              Left = 3
              Top = 189
              Width = 70
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'VENDEDOR'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 16
              TabOrder = 7
              OnButtonClick = BuscaVendedorExecute
              OnKeyDown = rxcVendedorKeyDown
            end
            object rxcCobrador: TJvDBComboEdit
              Left = 3
              Top = 229
              Width = 70
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'COBRADOR'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 16
              TabOrder = 9
              OnButtonClick = BuscaCobradoresExecute
              OnKeyDown = rxcCobradorKeyDown
            end
            object pnCredito: TPanel
              Left = 532
              Top = 162
              Width = 273
              Height = 43
              TabOrder = 16
              object Label18: TLabel
                Left = 14
                Top = 1
                Width = 78
                Height = 13
                Caption = 'Limite de Cr'#233'dito'
              end
              object dbeLimiteCredito: TDBEdit
                Left = 16
                Top = 15
                Width = 80
                Height = 21
                DataField = 'Limite_Credito'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dbchDeuda30: TDBCheckBox
                Left = 127
                Top = -1
                Width = 97
                Height = 37
                TabStop = False
                Caption = 'Controla Deuda Mayor a'
                Color = clBtnFace
                DataField = 'DEUDAMAYOR30'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                WordWrap = True
                OnClick = dbchDeuda30Click
              end
              object dbeDias: TJvDBCalcEdit
                Left = 230
                Top = 14
                Width = 35
                Height = 21
                DecimalPlaces = 0
                DisplayFormat = '0'
                Enabled = False
                ShowButton = False
                TabOrder = 2
                DisabledColor = clBtnFace
                DecimalPlacesAlwaysShown = False
                DataField = 'DIAS_MAYOR_30'
                DataSource = DSBase
              end
            end
            object dbgCoeficientes: TJvDBGrid
              Left = 531
              Top = 285
              Width = 233
              Height = 85
              TabStop = False
              DataSource = DatosClientes.DSCoeficientes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlue
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              OnCheckIfBooleanField = dbgCoeficientesCheckIfBooleanField
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ID_LISTA_PRECIO'
                  Title.Alignment = taCenter
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COEFICIENTE'
                  Title.Alignment = taCenter
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'POR_DEFECTO'
                  Title.Alignment = taCenter
                  Width = 45
                  Visible = True
                end>
            end
            object dbeCodOperativo: TDBEdit
              Left = 3
              Top = 106
              Width = 65
              Height = 21
              CharCase = ecUpperCase
              Color = clMoneyGreen
              DataField = 'CUENTA_OPERATIVA'
              DataSource = DSBase
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 17
            end
            object dbeTarjetaCliente: TDBEdit
              Left = 339
              Top = 64
              Width = 147
              Height = 21
              CharCase = ecUpperCase
              Color = 16776176
              DataField = 'TARJETA_CLIENTE'
              DataSource = DSBase
              TabOrder = 18
            end
            object dbeNombreCompleto: TDBEdit
              Left = 340
              Top = 24
              Width = 425
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              DataField = 'NOMBRE_COMPLETO'
              DataSource = DSBase
              TabOrder = 2
            end
            object DBCheckBox8: TDBCheckBox
              Left = 719
              Top = 1
              Width = 57
              Height = 22
              Hint = 
                'Estado de Morosidad en cuanto a Mov de Cta vencidos segun fecha ' +
                'actual, ver control de morosidad'
              TabStop = False
              Caption = 'Moroso'
              Color = clBtnFace
              DataField = 'MOROSO'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 19
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              WordWrap = True
            end
            object dbcRubros: TDBLookupComboBox
              Left = 302
              Top = 106
              Width = 201
              Height = 21
              DataField = 'RUBRO'
              DataSource = DSBase
              DropDownRows = 10
              DropDownWidth = 250
              KeyField = 'ID'
              ListField = 'DETALLE'
              ListSource = DatosClientes.DSBuscaRubrosCLi
              TabOrder = 20
            end
            object DBEdit12: TDBEdit
              Left = 577
              Top = 135
              Width = 97
              Height = 21
              DataField = 'NRO_IP'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 21
            end
            object DBCheckBox11: TDBCheckBox
              Left = 314
              Top = 231
              Width = 96
              Height = 17
              TabStop = False
              Caption = 'Permite Cheques'
              Color = clBtnFace
              DataField = 'CHEQUES'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 22
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = chbEmiteFacturaClick
            end
            object edNick: TDBEdit
              Left = 305
              Top = 189
              Width = 208
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NICKNAME_MERCADOPAGO'
              DataSource = DSBase
              TabOrder = 23
              OnEnter = dbeNombreEnter
              OnExit = dbeNombreExit
              OnKeyDown = dbeNombreKeyDown
            end
            object dbcEsquemaLista: TDBLookupComboBox
              Left = 3
              Top = 317
              Width = 357
              Height = 21
              Hint = 'Esquena de Lista de Precios'
              DataField = 'ESQUEMALISTA'
              DataSource = DSBase
              DropDownRows = 12
              KeyField = 'ID'
              ListField = 'NOMBRE'
              ListSource = DatosClientes.DSEsquemas
              ParentShowHint = False
              ShowHint = True
              TabOrder = 24
              OnKeyDown = dbcEsquemaListaKeyDown
            end
          end
          object SubPag2: TTabSheet
            Caption = 'Datos Impositivos'
            ImageIndex = 1
            object Label15: TLabel
              Left = 258
              Top = 56
              Width = 25
              Height = 13
              Caption = 'Zona'
            end
            object Label14: TLabel
              Left = 258
              Top = 9
              Width = 41
              Height = 13
              Caption = 'Sucursal'
            end
            object Label11: TLabel
              Left = 6
              Top = 267
              Width = 101
              Height = 13
              Caption = 'Condiciones de Pago'
            end
            object Label12: TLabel
              Left = 317
              Top = 267
              Width = 71
              Height = 13
              Caption = 'Observaciones'
            end
            object Label17: TLabel
              Left = 140
              Top = 8
              Width = 52
              Height = 13
              Caption = 'N'#186' C.U.I.T.'
            end
            object Label21: TLabel
              Left = 120
              Top = 56
              Width = 66
              Height = 13
              Caption = 'Fecha de Alta'
            end
            object Label4: TLabel
              Left = 6
              Top = 8
              Width = 67
              Height = 13
              Caption = 'Condici'#243'n IVA'
            end
            object Label10: TLabel
              Left = 121
              Top = 101
              Width = 96
              Height = 13
              Caption = 'Estado de la Cuenta'
            end
            object Label20: TLabel
              Left = 6
              Top = 56
              Width = 85
              Height = 13
              Caption = 'Fecha Ult.Compra'
            end
            object Label19: TLabel
              Left = 6
              Top = 103
              Width = 90
              Height = 13
              Caption = 'Fecha Ultimo Pago'
            end
            object Label27: TLabel
              Left = 6
              Top = 183
              Width = 87
              Height = 13
              Caption = 'Correo Electr'#243'nico'
              FocusControl = dbeCorreo
            end
            object Label39: TLabel
              Left = 6
              Top = 143
              Width = 45
              Height = 13
              Caption = 'Categoria'
            end
            object Label62: TLabel
              Left = 6
              Top = 223
              Width = 140
              Height = 13
              Caption = 'Correo Electr'#243'nico Alternativo'
              FocusControl = dbeCorreo_2
            end
            object Label46: TLabel
              Left = 567
              Top = 5
              Width = 114
              Height = 13
              Caption = 'Dep'#243'sitos de Franquicia'
            end
            object Label91: TLabel
              Left = 487
              Top = 54
              Width = 87
              Height = 13
              Caption = 'Alerta de Aviso'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label105: TLabel
              Left = 280
              Top = 103
              Width = 91
              Height = 13
              Caption = 'Fecha Inactivacion'
            end
            object dbmNotas: TDBMemo
              Left = 314
              Top = 283
              Width = 456
              Height = 117
              DataField = 'Observaciones'
              DataSource = DSBase
              ScrollBars = ssVertical
              TabOrder = 9
            end
            object dblZona: TDBLookupComboBox
              Left = 258
              Top = 73
              Width = 222
              Height = 21
              DataField = 'ZONA'
              DataSource = DSBase
              DropDownRows = 10
              KeyField = 'Id_Zona'
              ListField = 'Detalle'
              ListSource = DatosClientes.DSZona
              TabOrder = 5
              OnKeyDown = dblZonaKeyDown
            end
            object dblSucursal: TDBLookupComboBox
              Left = 258
              Top = 24
              Width = 159
              Height = 21
              DataField = 'Sucursal'
              DataSource = DSBase
              KeyField = 'Codigo'
              ListField = 'Detalle'
              ListSource = DatosClientes.DSBuscaSucursal
              TabOrder = 2
              OnKeyDown = dblSucursalKeyDown
            end
            object dbeCuit: TDBEdit
              Left = 140
              Top = 24
              Width = 89
              Height = 21
              DataField = 'Nro_de_CUIT'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyDown = dbeCuitKeyDown
            end
            object GroupBox4: TGroupBox
              Left = 690
              Top = 119
              Width = 120
              Height = 85
              Caption = 'Condiciones '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
              object chbEmiteFactura: TDBCheckBox
                Left = 10
                Top = 17
                Width = 97
                Height = 17
                TabStop = False
                Caption = 'Emite Factura'
                Color = clBtnFace
                DataField = 'Emite_Factura'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = chbEmiteFacturaClick
              end
              object DBCheckBox5: TDBCheckBox
                Left = 10
                Top = 40
                Width = 97
                Height = 17
                TabStop = False
                Caption = 'Emite Remito'
                Color = clBtnFace
                DataField = 'Emite_Remito'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object chbVtaCtdo: TDBCheckBox
                Left = 10
                Top = 63
                Width = 113
                Height = 17
                TabStop = False
                Caption = 'Permite Vta.Ctdo'
                Color = clBtnFace
                DataField = 'VENDER_DE_CTDO'
                DataSource = DSBase
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object dblInscripcion: TDBLookupComboBox
              Left = 6
              Top = 24
              Width = 128
              Height = 21
              DataField = 'Condicion_Iva'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'Codigo'
              ListField = 'Detalle'
              ListSource = DatosClientes.DSBuscaInscripcion
              ParentFont = False
              TabOrder = 0
            end
            object dbeCorreo: TDBEdit
              Left = 6
              Top = 202
              Width = 292
              Height = 21
              DataField = 'CORREOELECTRONICO'
              DataSource = DSBase
              TabOrder = 11
            end
            object gbPercepIB: TGroupBox
              Left = 403
              Top = 98
              Width = 281
              Height = 118
              Caption = 'Percepci'#243'n Ingresos Brutos'
              Color = clGradientInactiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 12
              object DBText1: TDBText
                Left = 208
                Top = 39
                Width = 57
                Height = 14
                DataField = 'TASA_PERCEPCION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBText2: TDBText
                Left = 208
                Top = 71
                Width = 57
                Height = 14
                DataField = 'TASA_RETENCION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label34: TLabel
                Left = 196
                Top = 20
                Width = 77
                Height = 13
                Caption = 'Tasa Percep.'
              end
              object Label35: TLabel
                Left = 196
                Top = 52
                Width = 57
                Height = 13
                Caption = 'Tasa Ret.'
              end
              object pnInsMuticonvenio: TPanel
                Left = 8
                Top = 40
                Width = 169
                Height = 73
                BevelInner = bvLowered
                Enabled = False
                TabOrder = 0
                object Label29: TLabel
                  Left = 26
                  Top = 28
                  Width = 135
                  Height = 13
                  BiDiMode = bdLeftToRight
                  Caption = 'Fecha Vencimiento de DDJJ'
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
                object chbInscrMulticonvenio: TDBCheckBox
                  Left = 8
                  Top = 8
                  Width = 145
                  Height = 17
                  BiDiMode = bdLeftToRight
                  Caption = 'Inscrp.en Muticonvenio'
                  Color = clBtnFace
                  DataField = 'INSCRIPTO_MULTICONVENIO'
                  DataSource = DSBase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentBiDiMode = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  OnClick = chbInscrMulticonvenioClick
                end
                object dbeFechaVencimiento: TJvDBDateEdit
                  Left = 26
                  Top = 45
                  Width = 121
                  Height = 21
                  Margins.Left = 1
                  Margins.Top = 1
                  DataField = 'FECHA_VENCIMI_DDJJ_MULTI'
                  DataSource = DSBase
                  Color = clBtnFace
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
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
                  TabOrder = 0
                end
              end
              object chbPercibeIB: TDBCheckBox
                Left = 21
                Top = 17
                Width = 169
                Height = 17
                BiDiMode = bdLeftToRight
                Caption = 'Aplica Percepci'#243'n Ing.Brutos'
                Color = clBtnFace
                DataField = 'PERCIBIR_IB'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentColor = False
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = chbPercibeIBClick
              end
            end
            object cbEstado: TJvDBComboBox
              Left = 121
              Top = 120
              Width = 144
              Height = 21
              DataField = 'Activo'
              DataSource = DSBase
              Items.Strings = (
                'Activo'
                'Gestion Judicial'
                'Inactivo'
                'Incobrable')
              TabOrder = 6
              Values.Strings = (
                'S'
                'G'
                'N'
                'I')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              OnChange = cbEstadoChange
            end
            object dblCategoria: TDBLookupComboBox
              Left = 6
              Top = 160
              Width = 223
              Height = 21
              DataField = 'CATEGORIA'
              DataSource = DSBase
              DropDownWidth = 400
              KeyField = 'id'
              ListField = 'Detalle'
              ListSource = DatosClientes.DSCategorias
              TabOrder = 7
              OnKeyDown = dblCategoriaKeyDown
            end
            object DBDateEdit3: TJvDBDateEdit
              Left = 6
              Top = 73
              Width = 97
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              DataField = 'FECHAULTIMACOMPRA'
              DataSource = DSBase
              Enabled = False
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
              PopupColor = clAqua
              ShowNullDate = False
              TabOrder = 3
            end
            object DBDateEdit4: TJvDBDateEdit
              Left = 120
              Top = 73
              Width = 97
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              DataField = 'FECHAALTA'
              DataSource = DSBase
              Color = clWhite
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
              PopupColor = clAqua
              ShowNullDate = False
              TabOrder = 4
            end
            object DBDateEdit1: TJvDBDateEdit
              Left = 6
              Top = 120
              Width = 97
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              DataField = 'ULTIMOPAGO'
              DataSource = DSBase
              Enabled = False
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
              PopupColor = clAqua
              ShowNullDate = False
              TabOrder = 10
            end
            inline FrameCtaContable1: TFrameCtaContable
              Left = 408
              Top = 222
              Width = 364
              Height = 58
              AutoSize = True
              Color = clBtnFace
              Padding.Left = 3
              Padding.Top = 3
              Padding.Bottom = 3
              ParentBackground = False
              ParentColor = False
              TabOrder = 13
              ExplicitLeft = 408
              ExplicitTop = 222
              ExplicitWidth = 364
              inherited pnBase: TPanel
                Width = 361
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 361
                inherited dbtNombre: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label1: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited ceCodigo: TJvDBComboEdit
                  Width = 64
                  Height = 21
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 64
                  ExplicitHeight = 21
                end
              end
            end
            object dbeCorreo_2: TDBEdit
              Left = 6
              Top = 240
              Width = 292
              Height = 21
              DataField = 'CORREOELECTRONICO_2'
              DataSource = DSBase
              TabOrder = 14
            end
            object cbDeposito: TJvDBLookupCombo
              Left = 567
              Top = 24
              Width = 177
              Height = 21
              DataField = 'ID_DEPOSITO_FRANQUICIA'
              DataSource = DSBase
              DisplayEmpty = 'Sin Deposito'
              EmptyItemColor = clScrollBar
              Enabled = False
              LookupField = 'ID'
              LookupDisplay = 'NOMBRE'
              LookupSource = DatosClientes.DSBuscaDeposito
              TabOrder = 15
            end
            object dbchFranquicia: TDBCheckBox
              Left = 464
              Top = 24
              Width = 97
              Height = 21
              TabStop = False
              Caption = 'Es Franquicia'
              Color = clBtnFace
              DataField = 'FRANQUICIA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 16
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              WordWrap = True
              OnClick = dbchFranquiciaClick
            end
            object DBEdit10: TDBEdit
              Left = 487
              Top = 73
              Width = 287
              Height = 21
              Color = clMoneyGreen
              DataField = 'AVISO'
              DataSource = DSBase
              TabOrder = 17
            end
            object dbgCondVenta: TJvDBGrid
              Left = 10
              Top = 286
              Width = 298
              Height = 114
              DataSource = DatosClientes.DSFCondVenta
              TabOrder = 18
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnColEnter = dbgCondVentaColEnter
              OnEditButtonClick = dbgCondVentaEditButtonClick
              OnKeyPress = dbgCondVentaKeyPress
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              OnCheckIfBooleanField = dbgCondVentaCheckIfBooleanField
              Columns = <
                item
                  Alignment = taLeftJustify
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'CODIGOPAGO'
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
                  FieldName = 'DETALLE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 64
                  Visible = True
                end
                item
                  Alignment = taLeftJustify
                  Expanded = False
                  FieldName = 'DESCUENTO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 64
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'POR_DEFECTO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 64
                  Visible = True
                end>
            end
            object DBCheckBox10: TDBCheckBox
              Left = 304
              Top = 222
              Width = 97
              Height = 40
              TabStop = False
              Caption = 'Enviar Mail Automatico de Fc Electronica '
              Color = clBtnFace
              DataField = 'ENVIAR_CPTE_MAIL'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 19
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              WordWrap = True
              OnClick = dbchFranquiciaClick
            end
            object edFechaBaja: TJvDBDateEdit
              Left = 280
              Top = 120
              Width = 97
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              DataField = 'FECHA_INACTIVO'
              DataSource = DSBase
              Color = clWhite
              Enabled = False
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
              PopupColor = clAqua
              ShowNullDate = False
              TabOrder = 20
              DisabledColor = cl3DLight
            end
            object DBCheckBox12: TDBCheckBox
              Left = 280
              Top = 147
              Width = 98
              Height = 37
              TabStop = False
              Caption = 'Aplicar Percepcion de IVA'
              Color = clBtnFace
              DataField = 'PERCIBE_IVA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 21
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              WordWrap = True
            end
          end
          object SubPag3: TTabSheet
            Caption = 'Comprobantes - Transporte - Abono Plantilla'
            ImageIndex = 3
            object Label13: TLabel
              Left = 3
              Top = 5
              Width = 174
              Height = 13
              Caption = 'Usar Comp. para Facturar en Cta.Cte'
            end
            object Label28: TLabel
              Left = 3
              Top = 51
              Width = 179
              Height = 13
              Caption = 'Usar Comp. para Facturar de Contado'
            end
            object Label37: TLabel
              Left = 3
              Top = 95
              Width = 159
              Height = 13
              Caption = 'Usar Comp. para Notas de D'#233'bito'
            end
            object Label38: TLabel
              Left = 3
              Top = 143
              Width = 161
              Height = 13
              Caption = 'Usar Comp. para Notas de Credito'
            end
            object lb1: TLabel
              Left = 3
              Top = 191
              Width = 143
              Height = 13
              Caption = 'Usar Comp. Tcket por defecto'
            end
            object Label45: TLabel
              Left = 3
              Top = 283
              Width = 93
              Height = 13
              Caption = 'Transporte Habitual'
            end
            object Label69: TLabel
              Left = 3
              Top = 334
              Width = 79
              Height = 13
              Caption = 'Cta Coorporativa'
            end
            object Label75: TLabel
              Left = 3
              Top = 238
              Width = 149
              Height = 13
              Caption = 'Usar Comp. Recibo por defecto'
            end
            object gbAbonos: TGroupBox
              Left = 380
              Top = 5
              Width = 393
              Height = 374
              Caption = 'Opcion de Abonos por Plantillas'
              Color = clGradientInactiveCaption
              ParentBackground = False
              ParentColor = False
              TabOrder = 8
              object Label40: TLabel
                Left = 208
                Top = 18
                Width = 123
                Height = 13
                Caption = 'Fecha Inicio Cobro Abono'
              end
              object Label41: TLabel
                Left = 16
                Top = 70
                Width = 127
                Height = 13
                Caption = 'Mes Incio Anual/Semestral'
              end
              object Label42: TLabel
                Left = 16
                Top = 19
                Width = 70
                Height = 13
                Caption = 'Tipo de Abono'
              end
              object Label74: TLabel
                Left = 175
                Top = 70
                Width = 45
                Height = 13
                Caption = 'Prestador'
              end
              object Label77: TLabel
                Left = 176
                Top = 168
                Width = 171
                Height = 13
                Caption = 'Mes Aplicacion Hostin o Adicionales'
              end
              object DBText5: TDBText
                Left = 280
                Top = 262
                Width = 86
                Height = 17
                Alignment = taRightJustify
                DataField = 'TOTAL'
                DataSource = DatosClientes.DSPrecioDet
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -16
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
              end
              object lbPrecioEspecial: TLabel
                Left = 123
                Top = 262
                Width = 111
                Height = 18
                Caption = 'Precio Especial'
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
              end
              object lbMasIVA: TLabel
                Left = 123
                Top = 286
                Width = 87
                Height = 18
                Caption = 'Precio + IVA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
                Visible = False
              end
              object Label93: TLabel
                Left = 17
                Top = 222
                Width = 86
                Height = 13
                Caption = 'Plantilla Abono'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label94: TLabel
                Left = 313
                Top = 222
                Width = 43
                Height = 13
                Caption = 'Importe'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbcTipoAbono: TJvDBComboBox
                Left = 16
                Top = 36
                Width = 168
                Height = 21
                DataField = 'TIPOABONO'
                DataSource = DSBase
                Items.Strings = (
                  'Sin Abono'
                  'Mensual'
                  'Anual'
                  'Semestral')
                TabOrder = 0
                Values.Strings = (
                  'X'
                  'M'
                  'A'
                  'S')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
                OnChange = dbcTipoAbonoChange
              end
              object JvDBDateEdit1: TJvDBDateEdit
                Left = 208
                Top = 36
                Width = 115
                Height = 21
                Hint = 
                  'Esta fecha tiene incidencia solo por primera vez, cuando se defi' +
                  'ne el incio de cobro del Abono.'
                Margins.Left = 1
                Margins.Top = 1
                TabStop = False
                DataField = 'FECHA_INCIO_FC_ABONO'
                DataSource = DSBase
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
                ParentShowHint = False
                PopupColor = clAqua
                ShowHint = True
                ShowNullDate = False
                TabOrder = 1
              end
              object bdcMesIncio: TJvDBComboBox
                Left = 16
                Top = 89
                Width = 153
                Height = 21
                DataField = 'MES_ABONOANUAL'
                DataSource = DSBase
                Items.Strings = (
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
                  'Diciembre'
                  '----')
                TabOrder = 2
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10'
                  '11'
                  '12'
                  '0')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
              end
              object dbgPlantilla: TJvDBGrid
                Left = 3
                Top = 306
                Width = 387
                Height = 65
                DataSource = DatosClientes.DSPlantillas
                Enabled = False
                Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgPlantillaColEnter
                OnEnter = dbgPlantillaEnter
                OnKeyDown = dbgPlantillaKeyDown
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'MUESTRAPLANTILLA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Plantilla de Abono'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlue
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 257
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTAL'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlue
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Visible = True
                  end>
              end
              object DBCheckBox2: TDBCheckBox
                Left = 15
                Top = 145
                Width = 97
                Height = 17
                Caption = 'Con Monitoreo'
                DataField = 'CON_MONITOREO'
                DataSource = DSBase
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox3: TDBCheckBox
                Left = 176
                Top = 145
                Width = 145
                Height = 17
                Caption = 'Con Hosting/Adicionales'
                DataField = 'CON_HOSTING'
                DataSource = DSBase
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox4: TDBCheckBox
                Left = 15
                Top = 168
                Width = 97
                Height = 17
                Caption = 'Con GPRS'
                DataField = 'CON_GPRS'
                DataSource = DSBase
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox6: TDBCheckBox
                Left = 16
                Top = 191
                Width = 113
                Height = 17
                Caption = 'Alarm.Comunitaria'
                DataField = 'COMUNITARIO'
                DataSource = DSBase
                TabOrder = 7
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object dbcPrestador: TJvDBLookupCombo
                Left = 175
                Top = 89
                Width = 201
                Height = 21
                DropDownWidth = 300
                DisplayAllFields = True
                DataField = 'ID_PRESTADOR'
                DataSource = DSBase
                LookupField = 'ID'
                LookupDisplay = 'NOMBRE'
                LookupSource = DatosClientes.DSPrestadores
                TabOrder = 8
              end
              object JvDBComboBox1: TJvDBComboBox
                Left = 176
                Top = 187
                Width = 153
                Height = 21
                DataField = 'MES_ADICIONAL'
                DataSource = DSBase
                Items.Strings = (
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
                TabOrder = 9
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10'
                  '11'
                  '12')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
              end
              object dbcMesSemestral: TJvDBComboBox
                Left = 17
                Top = 118
                Width = 153
                Height = 21
                DataField = 'MES_SEMESTRAL'
                DataSource = DSBase
                Items.Strings = (
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
                  'Diciembre'
                  '---')
                TabOrder = 10
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10'
                  '11'
                  '12'
                  '0')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
              end
              object DBCheckBox9: TDBCheckBox
                Left = 200
                Top = 122
                Width = 144
                Height = 17
                Caption = 'Precio Plantilla con IVA'
                DataField = 'PLANTILLA_CIVA'
                DataSource = DSBase
                TabOrder = 11
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object dbcPlantilla: TJvDBLookupCombo
                Left = 8
                Top = 239
                Width = 376
                Height = 21
                DropDownWidth = 400
                DisplayAllFields = True
                DataField = 'ID_PLANTILLA'
                DataSource = DSBase
                EmptyStrIsNull = False
                EmptyItemColor = clMenu
                LookupField = 'ID'
                LookupDisplay = 'DETALLE;TOTAL'
                LookupSource = DatosClientes.DSGruposPlantillas
                TabOrder = 12
                OnKeyDown = dbcPlantillaKeyDown
              end
            end
            object dbcFc: TJvDBLookupCombo
              Left = 3
              Top = 24
              Width = 270
              Height = 21
              DropDownWidth = 300
              DisplayAllFields = True
              DataField = 'ID_FACTURAPORDEFECTO'
              DataSource = DSBase
              LookupField = 'ID_COMPROBANTE'
              LookupDisplay = 'DENOMINACION;TIPO_COMPROB;CLASE_COMPROB'
              LookupSource = DatosClientes.DSBuscaFc
              TabOrder = 0
              OnEnter = dbcFcEnter
              OnKeyDown = dbcFcKeyDown
            end
            object dbcFO: TJvDBLookupCombo
              Left = 3
              Top = 68
              Width = 270
              Height = 21
              DropDownWidth = 300
              DisplayAllFields = True
              DataField = 'ID_FACTURACONTADOPORDEFECTO'
              DataSource = DSBase
              LookupField = 'ID_COMPROBANTE'
              LookupDisplay = 'DENOMINACION;TIPO_COMPROB;CLASE_COMPROB'
              LookupSource = DatosClientes.DSBuscaFO
              TabOrder = 1
              OnEnter = dbcFOEnter
              OnKeyDown = dbcFOKeyDown
            end
            object dbcND: TJvDBLookupCombo
              Left = 3
              Top = 114
              Width = 270
              Height = 21
              DropDownWidth = 300
              DisplayAllFields = True
              DataField = 'ID_NOTADEBITOPORDEFECTO'
              DataSource = DSBase
              LookupField = 'ID_COMPROBANTE'
              LookupDisplay = 'DENOMINACION;TIPO_COMPROB;CLASE_COMPROB'
              LookupSource = DatosClientes.DSBuscaND
              TabOrder = 2
              OnEnter = dbcNDEnter
              OnKeyDown = dbcNDKeyDown
            end
            object dbcNC: TJvDBLookupCombo
              Left = 3
              Top = 162
              Width = 270
              Height = 21
              DropDownWidth = 300
              DisplayAllFields = True
              DataField = 'ID_NOTACREDITOPORDEFECTO'
              DataSource = DSBase
              LookupField = 'ID_COMPROBANTE'
              LookupDisplay = 'DENOMINACION;TIPO_COMPROB;CLASE_COMPROB'
              LookupSource = DatosClientes.DSBuscaNC
              TabOrder = 3
              OnEnter = dbcNCEnter
              OnKeyDown = dbcNCKeyDown
            end
            object dbcTk: TJvDBLookupCombo
              Left = 3
              Top = 211
              Width = 270
              Height = 21
              DropDownWidth = 300
              DisplayAllFields = True
              DataField = 'ID_TIKETPORDEFECTO'
              DataSource = DSBase
              LookupField = 'ID_COMPROBANTE'
              LookupDisplay = 'DENOMINACION;TIPO_COMPROB;CLASE_COMPROB'
              LookupSource = DatosClientes.DSBuscaTk
              TabOrder = 4
              OnEnter = dbcTkEnter
              OnKeyDown = dbcTkKeyDown
            end
            object dbcTransporte: TJvDBLookupCombo
              Left = 3
              Top = 302
              Width = 270
              Height = 21
              DropDownWidth = 300
              DisplayAllFields = True
              DataField = 'ID_TRANSPORTE'
              DataSource = DSBase
              LookupField = 'ID'
              LookupDisplay = 'NOMBRE'
              LookupSource = DatosClientes.DSTransporte
              TabOrder = 7
            end
            object ceCliente: TJvDBComboEdit
              Left = 4
              Top = 348
              Width = 73
              Height = 21
              ClickKey = 16397
              DataField = 'CODIGO_COORPORATIVO'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 16
              TabOrder = 5
              OnButtonClick = ceClienteButtonClick
              OnKeyDown = ceClienteKeyDown
            end
            object edNombreCliente: TDBEdit
              Left = 83
              Top = 348
              Width = 257
              Height = 21
              Color = clInfoBk
              DataField = 'MUESTRACTACOORPORATIVA'
              DataSource = DSBase
              Enabled = False
              TabOrder = 6
            end
            object dbcRecibos: TJvDBLookupCombo
              Left = 3
              Top = 257
              Width = 270
              Height = 21
              DropDownWidth = 300
              DisplayAllFields = True
              DataField = 'ID_RECIBOPORDEFECTO'
              DataSource = DSBase
              LookupField = 'ID_COMPROBANTE'
              LookupDisplay = 'DENOMINACION;TIPO_COMPROB;CLASE_COMPROB'
              LookupSource = DatosClientes.DSBuscaRC
              TabOrder = 9
              OnEnter = dbcRecibosEnter
              OnKeyDown = dbcRecibosKeyDown
            end
          end
          object SubPag4: TTabSheet
            Caption = 'L.D.R'
            ImageIndex = 2
            object Label5: TLabel
              Left = 13
              Top = 11
              Width = 33
              Height = 13
              Caption = 'Codigo'
            end
            object Label8: TLabel
              Left = 13
              Top = 57
              Width = 45
              Height = 13
              Caption = 'Direcci'#243'n'
            end
            object Label9: TLabel
              Left = 112
              Top = 11
              Width = 37
              Height = 13
              Caption = 'Nombre'
            end
            object DBStatusLabel2: TJvDBStatusLabel
              Left = 13
              Top = 383
              Width = 85
              Height = 13
              DataSetName = ' '
              Captions.Strings = (
                ''
                'En Consulta'
                'Modificando'
                'Agregando Nuevo')
              ShowOptions = doBoth
              ShadowPos = spLeftTop
              Transparent = True
            end
            object Label78: TLabel
              Left = 237
              Top = 57
              Width = 39
              Height = 13
              Caption = 'C.Postal'
            end
            object Label92: TLabel
              Left = 350
              Top = 59
              Width = 46
              Height = 13
              Caption = 'Localidad'
            end
            object Label117: TLabel
              Left = 15
              Top = 338
              Width = 56
              Height = 13
              Caption = 'Correo LDR'
            end
            object dbeCodigoLdr: TDBEdit
              Left = 13
              Top = 27
              Width = 73
              Height = 21
              DataField = 'CODIGO_LDR'
              DataSource = DatosClientes.DSLdr
              TabOrder = 0
            end
            object dbeNombreLdr: TDBEdit
              Left = 112
              Top = 27
              Width = 265
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOMBRE'
              DataSource = DatosClientes.DSLdr
              TabOrder = 1
            end
            object dbeDireccionLdr: TDBEdit
              Left = 13
              Top = 75
              Width = 212
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DIRECCION'
              DataSource = DatosClientes.DSLdr
              TabOrder = 2
            end
            object dbgLdr: TDBGrid
              Left = 8
              Top = 106
              Width = 780
              Height = 223
              TabStop = False
              DataSource = DatosClientes.DSLdr
              DrawingStyle = gdsClassic
              FixedColor = clPurple
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 3
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clYellow
              TitleFont.Height = -8
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGO_LDR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Codigo LDR'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOMBRE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nombre'
                  Width = 189
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DIRECCION'
                  Title.Alignment = taCenter
                  Title.Caption = 'Direccion'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CPOSTAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cod.Postal'
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LOCALIDAD'
                  Title.Alignment = taCenter
                  Title.Caption = 'Localidad'
                  Width = 205
                  Visible = True
                end>
            end
            object dbnLdr: TDBNavigator
              Left = 383
              Top = 24
              Width = 240
              Height = 25
              DataSource = DatosClientes.DSLdr
              TabOrder = 4
            end
            object DBEdit8: TDBEdit
              Left = 237
              Top = 75
              Width = 92
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CPOSTAL'
              DataSource = DatosClientes.DSLdr
              TabOrder = 5
            end
            object DBEdit11: TDBEdit
              Left = 350
              Top = 75
              Width = 281
              Height = 21
              CharCase = ecUpperCase
              DataField = 'LOCALIDAD'
              DataSource = DatosClientes.DSLdr
              TabOrder = 6
            end
            object DBEdit18: TDBEdit
              Left = 89
              Top = 335
              Width = 534
              Height = 21
              DataField = 'EMAIL'
              DataSource = DatosClientes.DSLdr
              TabOrder = 7
            end
          end
          object SubPage5: TTabSheet
            Caption = 'Datos Postales/ T. de Cre. - Cta.Bco'
            ImageIndex = 4
            object Label47: TLabel
              Left = 13
              Top = 14
              Width = 74
              Height = 13
              Caption = 'Domicilio Postal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label48: TLabel
              Left = 229
              Top = 14
              Width = 32
              Height = 13
              Caption = 'Calle 1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label49: TLabel
              Left = 437
              Top = 14
              Width = 32
              Height = 13
              Caption = 'Calle 2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label50: TLabel
              Left = 229
              Top = 0
              Width = 56
              Height = 13
              Caption = 'Entre Calles'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 13
              Top = 55
              Width = 84
              Height = 13
              Caption = 'Tarjeta de Credito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 13
              Top = 98
              Width = 34
              Height = 13
              Caption = 'Banco '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label66: TLabel
              Left = 253
              Top = 55
              Width = 68
              Height = 13
              Caption = 'Nro.de Tarjeta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label67: TLabel
              Left = 253
              Top = 98
              Width = 84
              Height = 13
              Caption = 'Nro.de Cta / CBU'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label68: TLabel
              Left = 463
              Top = 55
              Width = 44
              Height = 13
              Caption = 'Cod.Seg.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label71: TLabel
              Left = 530
              Top = 55
              Width = 58
              Height = 13
              Caption = 'Vencimiento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label73: TLabel
              Left = 614
              Top = 205
              Width = 68
              Height = 13
              Caption = 'Codigo RIPSA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label89: TLabel
              Left = 13
              Top = 148
              Width = 145
              Height = 13
              Hint = 
                'Para se usado como datos adicionales en la facturaci'#243'n o remitos' +
                ' '
              Caption = 'Observaciones en Facturaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object SpeedButton1: TSpeedButton
              Left = 770
              Top = 3
              Width = 23
              Height = 22
              Action = ModificaOSocial
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF009933000099330000993300009933
                000099330000993300009933000099330000FF00FF00FF00FF00FF00FF00FF00
                FF000E80AA000E80AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFE
                FE008EA4FD00B8C6FD00FDFEFE0099330000FF00FF00FF00FF00FF00FF00078D
                BB0049D5EE0023D7FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98
                FC000335FB00597AFC00FDFEFE0099330000FF00FF00FF00FF00078DBB008CFB
                FE0059EAFE0023D7FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335
                FB004368FC000335FB00D9E0FE0099330000FF00FF00FF00FF00078DBB008CFB
                FE0059EAFE0023D7FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9
                FD00EFF2FE001A47FB004F72FC0097330400FF00FF00FF00FF00078DBB008CFB
                FE0059EAFE0023D7FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFE
                FE00FDFEFE0098ACFD000335FB0064345900FF00FF00FF00FF00078DBB00B3FC
                FE00B6F6FF00C6F5FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFE
                FE00FDFEFE00FDFEFE005274FC000335FB00FF00FF00FF00FF00078DBB00BAEE
                F60030BCDD0011A7D200129FCB0020A2CB009933000099330000993300009933
                000099330000993300008F3311002235C8000335FB00FF00FF00078DBB004AC5
                DD0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80
                AA00FF00FF00FF00FF00FF00FF00FF00FF000335FB000335FB00078DBB008CFB
                FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
                AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000335FB00078DBB008CFB
                FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
                AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB008CFB
                FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
                AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB0091FC
                FE0082F8FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80
                AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB00FDFE
                FE00F4FFFF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80
                AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C92
                C000F4FFFF00E3FAFF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00078DBB00078DBB00078DBB00078DBB00078DBB00078DBB00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
            object SpeedButton2: TSpeedButton
              Left = 744
              Top = 3
              Width = 30
              Height = 22
              Action = NuevaOSocial
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000875
                0D0008750D0008750D0008750D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000E80AA000E80AA000E80AA000E80AA000E80AA000E80AA00FF00FF000875
                0D0013AA220010A61D0008750D00FF00FF00FF00FF00FF00FF00FF00FF00078D
                BB0049D5EE0023D7FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA000875
                0D001AB12D0013AA220008750D00FF00FF00FF00FF00FF00FF00078DBB008CFB
                FE0059EAFE0023D7FE0036D8FD006FE6FF0008750D0008750D0008750D000875
                0D0025BD3E001CB4310008750D0008750D0008750D0008750D00078DBB008CFB
                FE0059EAFE0023D7FE0036D8FD006FE6FF0008750D003CD4620035CE590030C9
                52002CC3490026BE410025BD3E001AB12D0017AF2A0008750D00078DBB008CFB
                FE0059EAFE0023D7FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D1
                5E0035CE59002CC349002AC1470025BD3E0020B8360008750D00078DBB00B3FC
                FE00B6F6FF00C6F5FF00E3FAFF00E9F9FD0008750D0008750D0008750D000875
                0D003FD868003CD4620008750D0008750D0008750D0008750D00078DBB00BAEE
                F60030BCDD0011A7D200129FCB0020A1CA0035A7CD002692BF0092CEE4000875
                0D0045DD710041DA6D0008750D00FF00FF00FF00FF00FF00FF00078DBB004AC5
                DD0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E3000682B6000875
                0D004DE67F004DE67F0008750D00FF00FF00FF00FF00FF00FF00078DBB008CFB
                FE0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000875
                0D0008750D0008750D0008750D00FF00FF00FF00FF00FF00FF00078DBB008CFB
                FE0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7F
                A900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB008CFB
                FE0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80
                AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB0091FC
                FE0082F8FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80
                AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB00FCFF
                FF00F4FFFF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80
                AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C92
                C000F4FFFF00E3FAFF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00078DBB00078DBB00078DBB00078DBB00078DBB00078DBB00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
            object Label112: TLabel
              Left = 13
              Top = 299
              Width = 95
              Height = 13
              Caption = 'Codigo Ref NubCeo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 13
              Top = 33
              Width = 196
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DIRECCION_POSTAL'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 229
              Top = 33
              Width = 196
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CALLE_1'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 437
              Top = 33
              Width = 196
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CALLE_2'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object dbcTCredito: TDBLookupComboBox
              Left = 13
              Top = 74
              Width = 223
              Height = 21
              DataField = 'ID_TARJETACREDITO'
              DataSource = DSBase
              KeyField = 'Id_TC'
              ListField = 'DESCRIPCION'
              ListSource = DatosClientes.DSTCredito
              TabOrder = 3
              OnKeyDown = dbcTCreditoKeyDown
            end
            object dbcBanco: TDBLookupComboBox
              Left = 13
              Top = 117
              Width = 223
              Height = 21
              DataField = 'ID_BANCO'
              DataSource = DSBase
              KeyField = 'ID_BANCO'
              ListField = 'NOMBRE'
              ListSource = DatosClientes.DSBancos
              TabOrder = 4
              OnKeyDown = dbcBancoKeyDown
            end
            object DBEdit4: TDBEdit
              Left = 253
              Top = 74
              Width = 196
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NRO_TARJETA_C'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit5: TDBEdit
              Left = 253
              Top = 117
              Width = 196
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NRO_CTA_BCO'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit6: TDBEdit
              Left = 463
              Top = 74
              Width = 42
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NRO_SEG_TC'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object JvDBDateEdit4: TJvDBDateEdit
              Left = 530
              Top = 74
              Width = 103
              Height = 21
              DataField = 'VENCIMIENTO_TC'
              DataSource = DSBase
              ShowNullDate = False
              TabOrder = 8
            end
            object dbgRipsa: TJvDBGrid
              Left = 614
              Top = 224
              Width = 196
              Height = 102
              TabStop = False
              DataSource = DatosClientes.DSCodRipsa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlue
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              OnCheckIfBooleanField = dbgCoeficientesCheckIfBooleanField
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGO_RIPSA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Codigo'
                  Width = 158
                  Visible = True
                end>
            end
            object DBNavigator1: TDBNavigator
              Left = 614
              Top = 330
              Width = 192
              Height = 25
              DataSource = DatosClientes.DSCodRipsa
              VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost]
              TabOrder = 10
            end
            object DBEdit7: TDBEdit
              Left = 13
              Top = 167
              Width = 389
              Height = 21
              CharCase = ecUpperCase
              DataField = 'OBSERVACIONES1'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit9: TDBEdit
              Left = 13
              Top = 194
              Width = 389
              Height = 21
              CharCase = ecUpperCase
              DataField = 'OBSERVACIONES2'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
            end
            object rgRes3668: TGroupBox
              Left = 549
              Top = 101
              Width = 261
              Height = 92
              Caption = 'Res.3886 F8001'
              Color = clSkyBlue
              ParentBackground = False
              ParentColor = False
              TabOrder = 13
              object Label63: TLabel
                Left = 16
                Top = 47
                Width = 31
                Height = 13
                Caption = 'Desde'
              end
              object Label64: TLabel
                Left = 128
                Top = 45
                Width = 28
                Height = 13
                Caption = 'Hasta'
              end
              object Label65: TLabel
                Left = 154
                Top = 12
                Width = 92
                Height = 13
                Caption = 'Valido solo para R.I'
              end
              object dbPresentoF8001: TDBCheckBox
                Left = 16
                Top = 24
                Width = 97
                Height = 17
                Caption = 'Presento F 8001'
                DataField = 'PRESENTO_F8001'
                DataSource = DSBase
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object JvDBDateEdit2: TJvDBDateEdit
                Left = 11
                Top = 66
                Width = 90
                Height = 21
                DataField = 'DESDE_F8001'
                DataSource = DSBase
                CheckOnExit = True
                DefaultToday = True
                ShowNullDate = False
                TabOrder = 1
              end
              object JvDBDateEdit3: TJvDBDateEdit
                Left = 130
                Top = 66
                Width = 90
                Height = 21
                DataField = 'HASTA_F8001'
                DataSource = DSBase
                CheckOnExit = True
                DefaultToday = True
                ShowNullDate = False
                TabOrder = 2
              end
            end
            object DBCheckBox1: TDBCheckBox
              Left = 659
              Top = 24
              Width = 151
              Height = 40
              BiDiMode = bdLeftToRight
              Caption = 'Imprimir Saldo C.Cte en Factura (Si esta Configurado)'
              Color = clBtnFace
              DataField = 'IMPRIME_SALDOFACTURA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentColor = False
              ParentFont = False
              TabOrder = 14
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              WordWrap = True
              OnClick = chbPercibeIBClick
            end
            object GroupBox5: TGroupBox
              Left = 13
              Top = 222
              Width = 435
              Height = 67
              Caption = 'Direccion Postal Discriminada'
              Color = clSkyBlue
              ParentBackground = False
              ParentColor = False
              TabOrder = 15
              object Label106: TLabel
                Left = 10
                Top = 16
                Width = 71
                Height = 13
                Caption = 'Direccion Calle'
              end
              object Label115: TLabel
                Left = 198
                Top = 16
                Width = 37
                Height = 13
                Caption = 'Numero'
              end
              object Label114: TLabel
                Left = 289
                Top = 16
                Width = 67
                Height = 13
                Caption = 'Departamento'
              end
              object Label113: TLabel
                Left = 392
                Top = 16
                Width = 20
                Height = 13
                Caption = 'Piso'
              end
              object DBEdit13: TDBEdit
                Left = 10
                Top = 35
                Width = 182
                Height = 21
                CharCase = ecUpperCase
                DataField = 'DIRECCION_CALLE'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit21: TDBEdit
                Left = 198
                Top = 35
                Width = 84
                Height = 21
                CharCase = ecUpperCase
                DataField = 'DIRECCION_NUMERO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit19: TDBEdit
                Left = 288
                Top = 35
                Width = 78
                Height = 21
                CharCase = ecUpperCase
                DataField = 'DIRECCION_DEPTO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit20: TDBEdit
                Left = 372
                Top = 35
                Width = 47
                Height = 21
                CharCase = ecUpperCase
                DataField = 'DIRECCION_PISO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
            end
            object JvDBGrid1: TJvDBGrid
              Left = 13
              Top = 318
              Width = 368
              Height = 64
              TabStop = False
              DataSource = DatosClientes.DSNubCeo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlue
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              OnCheckIfBooleanField = dbgCoeficientesCheckIfBooleanField
              Columns = <
                item
                  Expanded = False
                  FieldName = 'REF_COMERCIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Refer.'
                  Width = 117
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOMBRECUENTA'
                  Title.Alignment = taCenter
                  Width = 218
                  Visible = True
                end>
            end
            object DBNavigator2: TDBNavigator
              Left = 169
              Top = 297
              Width = 152
              Height = 18
              DataSource = DatosClientes.DSNubCeo
              VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost]
              TabOrder = 17
            end
          end
          object SubPagContrato: TTabSheet
            Caption = 'Contrato de Servicio'
            ImageIndex = 5
            object Label52: TLabel
              Left = 505
              Top = 5
              Width = 60
              Height = 13
              Caption = 'Nro Contrato'
              FocusControl = edNumero
            end
            object Label53: TLabel
              Left = 3
              Top = 36
              Width = 62
              Height = 13
              Caption = 'Tipo Servicio'
            end
            object Label54: TLabel
              Left = 3
              Top = 60
              Width = 73
              Height = 13
              Caption = 'Fecha Solicitud'
              FocusControl = edFSolicitud
            end
            object Label55: TLabel
              Left = 3
              Top = 101
              Width = 83
              Height = 13
              Caption = 'Fecha instalacion'
              FocusControl = edFechaInstalacion
            end
            object Label56: TLabel
              Left = 3
              Top = 143
              Width = 81
              Height = 13
              Caption = 'Inicio de Servicio'
              FocusControl = edFechaInicio
            end
            object Label57: TLabel
              Left = 130
              Top = 60
              Width = 80
              Height = 13
              Caption = 'Lugar instalacion'
              FocusControl = edLugar
            end
            object Label58: TLabel
              Left = 520
              Top = 60
              Width = 56
              Height = 13
              Caption = 'Costo inicial'
              FocusControl = edCosto
            end
            object Label59: TLabel
              Left = 3
              Top = 234
              Width = 71
              Height = 13
              Caption = 'Observaciones'
              FocusControl = MNotas
            end
            object Label60: TLabel
              Left = 3
              Top = 5
              Width = 33
              Height = 13
              Caption = 'Codigo'
            end
            object cxDBTextEdit1: TDBText
              Left = 42
              Top = 5
              Width = 71
              Height = 13
              AutoSize = True
              Color = clInactiveCaptionText
              DataField = 'CODIGO'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object DBText4: TDBText
              Left = 111
              Top = 5
              Width = 42
              Height = 13
              AutoSize = True
              Color = clInactiveCaptionText
              DataField = 'NOMBRE'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label51: TLabel
              Left = 130
              Top = 103
              Width = 122
              Height = 13
              Caption = 'Documentos Anexos (pdf)'
              FocusControl = edFechaInstalacion
            end
            object edFSolicitud: TJvDBDateEdit
              Left = 3
              Top = 76
              Width = 121
              Height = 21
              DataField = 'FECHA_SOLICITUD'
              DataSource = DSContrato
              ShowNullDate = False
              TabOrder = 1
            end
            object edFechaInstalacion: TJvDBDateEdit
              Left = 3
              Top = 117
              Width = 121
              Height = 21
              DataField = 'FECHA_INSTALACION'
              DataSource = DSContrato
              ShowNullDate = False
              TabOrder = 2
            end
            object edFechaInicio: TJvDBDateEdit
              Left = 3
              Top = 159
              Width = 121
              Height = 21
              DataField = 'INCIO_SERVICIO'
              DataSource = DSContrato
              ShowNullDate = False
              TabOrder = 3
            end
            object edLugar: TDBEdit
              Left = 130
              Top = 76
              Width = 349
              Height = 21
              DataField = 'LUGAR_INSTALACION'
              DataSource = DSContrato
              TabOrder = 4
            end
            object edCosto: TDBEdit
              Left = 520
              Top = 76
              Width = 121
              Height = 21
              DataField = 'COSTO_INICAL'
              DataSource = DSContrato
              TabOrder = 5
            end
            object MNotas: TDBMemo
              Left = 3
              Top = 253
              Width = 649
              Height = 92
              DataField = 'OBS'
              DataSource = DSContrato
              TabOrder = 6
            end
            object edNumero: TDBEdit
              Left = 505
              Top = 21
              Width = 121
              Height = 21
              DataField = 'NRO_CONTRATO'
              DataSource = DSContrato
              TabOrder = 0
            end
            object BitBtn1: TBitBtn
              Left = 577
              Top = 351
              Width = 75
              Height = 25
              Action = ImprimirContrato
              Caption = 'Imprimir'
              TabOrder = 7
            end
            object dbgAnexos: TJvDBGrid
              Left = 130
              Top = 117
              Width = 497
              Height = 90
              DataSource = DatosClientes.DSClientesAnexos
              TabOrder = 8
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgAnexosDblClick
              OnEditButtonClick = dbgAnexosEditButtonClick
              TitleButtons = True
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              WordWrap = True
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'ARCHIVO'
                  Width = 457
                  Visible = True
                end>
            end
            object dbnContratos: TDBNavigator
              Left = 399
              Top = 213
              Width = 228
              Height = 25
              DataSource = DatosClientes.DSClientesAnexos
              VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
              TabOrder = 9
            end
            object dbcTipoServicio: TDBLookupComboBox
              Left = 71
              Top = 33
              Width = 210
              Height = 21
              DataField = 'TIPO_SERVICIO'
              DataSource = DSContrato
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'ID'
              ListField = 'DETALLE'
              ListSource = DatosClientes.DSTipoServicio
              ParentFont = False
              TabOrder = 10
              OnKeyDown = dbcTipoServicioKeyDown
            end
          end
          object SubPagCupones: TTabSheet
            Caption = 'Servcio Abono Por Cupon'
            ImageIndex = 6
            object Label36: TLabel
              Left = 14
              Top = 7
              Width = 80
              Height = 13
              Caption = 'Grupo Abonados'
            end
            object DBText3: TDBText
              Left = 93
              Top = 26
              Width = 253
              Height = 17
              DataField = 'DETALLE'
              DataSource = DatosClientes.DSGrupoAbonos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label61: TLabel
              Left = 0
              Top = 202
              Width = 210
              Height = 13
              Caption = 'Condiciones de Acuerdo Abonos con Cupon'
            end
            object GroupBox2: TGroupBox
              Left = 432
              Top = 7
              Width = 210
              Height = 74
              Caption = 'Para Abonos por Cupon'
              TabOrder = 0
              object chEceptuadoCorte: TDBCheckBox
                Left = 16
                Top = 20
                Width = 194
                Height = 17
                BiDiMode = bdLeftToRight
                Caption = 'Corte de Servicio por Falta de Pago'
                Color = clBtnFace
                DataField = 'CORTAR_SERVICIO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = chEceptuadoCorteClick
              end
              object chPlanPago: TDBCheckBox
                Left = 16
                Top = 43
                Width = 185
                Height = 17
                BiDiMode = bdLeftToRight
                Caption = 'Con Plan de Pago'
                Color = clBtnFace
                DataField = 'CON_PLANPAGO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentColor = False
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object ceCodigoAbono: TJvDBComboEdit
              Left = 14
              Top = 24
              Width = 70
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'ID_CUPON_GRUPO'
              DataSource = DatosClientes.DSGrupoAbonos
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 16
              TabOrder = 1
              OnButtonClick = BuscaGruposExecute
              OnKeyDown = ceCodigoAbonoKeyDown
              OnKeyPress = ceCodigoAbonoKeyPress
            end
            object dbnAcuerdos: TDBNavigator
              Left = 414
              Top = 333
              Width = 228
              Height = 25
              DataSource = DatosClientes.DSCondAbono
              VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
              TabOrder = 2
            end
            object dbgCondicionesAbono: TJvDBGrid
              Left = 0
              Top = 221
              Width = 657
              Height = 106
              DataSource = DatosClientes.DSCondAbono
              Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 3
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgAnexosDblClick
              OnEditButtonClick = dbgAnexosEditButtonClick
              OnKeyPress = dbgCondicionesAbonoKeyPress
              TitleButtons = True
              AlternateRowColor = clInfoBk
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              WordWrap = True
              OnCheckIfBooleanField = dbgCondicionesAbonoCheckIfBooleanField
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DESDE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 66
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HASTA'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 242
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRECIO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRECIO_2'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 94
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ESTADO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 42
                  Visible = True
                end>
            end
          end
        end
      end
      object Pag2: TTabSheet
        Caption = 'Listados'
        ImageIndex = 1
        object JvArrowButton1: TJvArrowButton
          Left = 702
          Top = 72
          Width = 110
          Height = 25
          DropDown = PopupMenu1
          DropOnButtonClick = True
          Caption = 'Imprimir'
          FillFont.Charset = DEFAULT_CHARSET
          FillFont.Color = clWindowText
          FillFont.Height = -11
          FillFont.Name = 'Tahoma'
          FillFont.Style = []
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
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 11
          Top = 397
          Width = 96
          Height = 13
          DataSource = DatosClientes.DSLstClientes
          Style = lsRecordNo
          Transparent = True
        end
        object spCorreo: TSpeedButton
          Left = 501
          Top = 396
          Width = 141
          Height = 25
          Action = EnviarCorreo
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
            000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
            FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
            FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
            9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
            0000777777777777777733333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object btListar: TBitBtn
          Left = 627
          Top = 72
          Width = 73
          Height = 25
          Action = Listar
          Caption = '&Listar'
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
            030303030303030303030303030303030303030303030303FF03030303030303
            03030303030303030303030003030303030303030303030303FF0303030303F8
            FF03030303030303FF0303030003030303030300030303030303030003030303
            F803FF03030303F803030303030303F803030303030003030303030303030303
            030300030303030303F80303FFFFFFFFFFFFFFFFFFFFF8030303030303030300
            00000000000000000003030303030303030303F8F8F8F8F8F8F8F8F8F8FF0303
            0303030303030300FFFFFFFFFFFFFFFF0003030303030303030303F8FF030303
            03030303F8FF03030303030303030300FFFFFFFFFFFFFFFF0003030303030303
            030303F8FF03030303030303F8FF03030303030303030300FFFFFFFFFFFFFFFF
            0003030303030303030303F8FF03030303030303F8FF03030303030303030300
            FFFFFFFFFFFFFFFF0003030303030303030303F8FF03030303030303F8FF0303
            FFFF030303030300FFFFFFFFFFFFFFFF0003030000030303FFFF03F8FF030303
            03030303F8FF03F8F803030000030300FFFFFFFFFFFFFFFF00030303030303F8
            F80303F8FF03030303030303F8FF03030303030303030300FFFFFFFFFFFFFFFF
            0003030303030303030303F8FF0303030303FFFFF8FF03030303030303030300
            FFFFFFFFFF0000000003030303030303030303F8FF03030303F8F8F8F8030303
            0303030303030300FFFFFFFFFF00FF000303030303030303030303F8FF030303
            03F8FFF8030303030303030303030300FFFFFFFFFF0000030303030303030303
            030303F8FFFFFFFFFFF8F8030303030303030303030303000000000000000303
            03030303030303030303FFF8F8F8F8F8F8F80303030303FF0303030303000303
            0303030303030303030300030303030303F803030303030303FF03030303F803
            FF0303030003030303030303000303030303030003030303F803030303030303
            F8FF0303030303F8030303030303030303030303000303030303030303030303
            0303030303030303F80303030303030303030303030303030303030303030303
            0303030303030303030303030303030303030303030303030303}
          NumGlyphs = 2
          TabOrder = 0
        end
        object rgEstados: TRadioGroup
          Left = 677
          Top = 0
          Width = 137
          Height = 72
          Caption = 'Estados'
          ItemIndex = 0
          Items.Strings = (
            'Todos'
            'Activos'
            'Inactivos'
            'Gesti'#243'n Judicial')
          TabOrder = 1
        end
        object dbcSucursal: TJvDBLookupCombo
          Left = 3
          Top = 12
          Width = 197
          Height = 21
          DisplayEmpty = 'Todas Las Sucursales'
          EmptyValue = '-1'
          LookupField = 'CODIGO'
          LookupDisplay = 'DETALLE'
          LookupSource = DatosClientes.DSBuscaSucursales
          TabOrder = 2
        end
        object dbcVendedor: TJvDBLookupCombo
          Left = 3
          Top = 39
          Width = 197
          Height = 21
          DisplayEmpty = 'Todos Los Vendedores'
          EmptyValue = '******'
          LookupField = 'CODIGO'
          LookupDisplay = 'NOMBRE'
          LookupSource = DatosClientes.DSBuscaVendedores
          TabOrder = 3
        end
        object dbcZona: TJvDBLookupCombo
          Left = 3
          Top = 66
          Width = 197
          Height = 21
          DisplayEmpty = 'Todas Las Zonas'
          EmptyValue = '-1'
          LookupField = 'ID_ZONA'
          LookupDisplay = 'DETALLE'
          LookupSource = DatosClientes.DSBuscaZonas
          TabOrder = 4
        end
        object btExcel: TBitBtn
          Left = 669
          Top = 396
          Width = 104
          Height = 24
          Caption = 'Exportar a XLS'
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
          TabOrder = 5
          OnClick = btExcelClick
        end
        object dbcCategorias: TJvDBLookupCombo
          Left = 206
          Top = 12
          Width = 188
          Height = 21
          DropDownWidth = 400
          DisplayEmpty = 'Todas las Categorias'
          EmptyValue = '-1'
          LookupField = 'ID'
          LookupDisplay = 'DETALLE'
          LookupSource = DatosClientes.DSBuscaCategorias
          TabOrder = 6
          OnKeyDown = dblCategoriaKeyDown
        end
        object dbcServicio: TJvDBLookupCombo
          Left = 206
          Top = 39
          Width = 188
          Height = 21
          DropDownWidth = 400
          DisplayEmpty = 'Todas las Tipos de Servicios'
          EmptyValue = '-1'
          LookupField = 'ID'
          LookupDisplay = 'DETALLE'
          LookupSource = DatosClientes.DSTipoServicio
          TabOrder = 7
        end
        object dbcCobrador: TJvDBLookupCombo
          Left = 206
          Top = 66
          Width = 188
          Height = 21
          DisplayEmpty = 'Todos Los Cobradores'
          EmptyValue = '******'
          LookupField = 'CODIGO'
          LookupDisplay = 'NOMBRE'
          LookupSource = DatosClientes.DSBuscaCobrador
          TabOrder = 8
        end
        object dbcLstPrestadores: TJvDBLookupCombo
          Left = 403
          Top = 12
          Width = 202
          Height = 21
          DropDownWidth = 300
          DisplayAllFields = True
          DisplayEmpty = 'Todos los Prestadores'
          EmptyValue = '-1'
          LookupField = 'ID'
          LookupDisplay = 'NOMBRE'
          LookupSource = DatosClientes.DSLstPrestadores
          TabOrder = 9
        end
        object dbcGrupoAbonos: TJvDBLookupCombo
          Left = 403
          Top = 39
          Width = 202
          Height = 21
          DropDownWidth = 300
          DisplayAllFields = True
          DisplayEmpty = 'Todos los Grp Abonos'
          EmptyValue = '-1'
          LookupField = 'ID'
          LookupDisplay = 'DETALLE'
          LookupSource = DatosClientes.DSLstGruposAbonos
          TabOrder = 10
        end
        object pnListado: TPanel
          Left = 3
          Top = 108
          Width = 814
          Height = 284
          Caption = 'pnListado'
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 11
          object DBAdvGrid1: TDBAdvGrid
            Left = 6
            Top = 6
            Width = 802
            Height = 272
            Align = alClient
            ColCount = 2
            DrawingStyle = gdsClassic
            FixedColor = clWhite
            RowCount = 5
            FixedRows = 1
            TabOrder = 1
            Visible = False
            OnGetFormat = DBAdvGrid1GetFormat
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = 4474440
            ActiveCellFont.Height = -12
            ActiveCellFont.Name = 'Segoe UI'
            ActiveCellFont.Style = [fsBold]
            ActiveCellColor = 11565130
            ActiveCellColorTo = 11565130
            AutoFilterUpdate = False
            BorderColor = 11250603
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
            ControlLook.DropDownHeader.Font.Name = 'Segoe UI'
            ControlLook.DropDownHeader.Font.Style = []
            ControlLook.DropDownHeader.Visible = True
            ControlLook.DropDownHeader.Buttons = <>
            ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
            ControlLook.DropDownFooter.Font.Color = clWindowText
            ControlLook.DropDownFooter.Font.Height = -11
            ControlLook.DropDownFooter.Font.Name = 'Segoe UI'
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
            FilterDropDown.Font.Height = -12
            FilterDropDown.Font.Name = 'Segoe UI'
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
            FixedColWidth = 20
            FixedRowHeight = 22
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Segoe UI'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glCustom
            PrintSettings.DateFormat = 'dd/mm/yyyy'
            PrintSettings.Font.Charset = DEFAULT_CHARSET
            PrintSettings.Font.Color = clWindowText
            PrintSettings.Font.Height = -12
            PrintSettings.Font.Name = 'Segoe UI'
            PrintSettings.Font.Style = []
            PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
            PrintSettings.FixedFont.Color = clWindowText
            PrintSettings.FixedFont.Height = -12
            PrintSettings.FixedFont.Name = 'Segoe UI'
            PrintSettings.FixedFont.Style = []
            PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
            PrintSettings.HeaderFont.Color = clWindowText
            PrintSettings.HeaderFont.Height = -12
            PrintSettings.HeaderFont.Name = 'Segoe UI'
            PrintSettings.HeaderFont.Style = []
            PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
            PrintSettings.FooterFont.Color = clWindowText
            PrintSettings.FooterFont.Height = -12
            PrintSettings.FooterFont.Name = 'Segoe UI'
            PrintSettings.FooterFont.Style = []
            PrintSettings.PageNumSep = '/'
            SearchFooter.ColorTo = clNone
            SearchFooter.FindNextCaption = 'Find &next'
            SearchFooter.FindPrevCaption = 'Find &previous'
            SearchFooter.Font.Charset = DEFAULT_CHARSET
            SearchFooter.Font.Color = clWindowText
            SearchFooter.Font.Height = -12
            SearchFooter.Font.Name = 'Segoe UI'
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
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = []
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
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
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = []
                PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                PrintFont.Charset = DEFAULT_CHARSET
                PrintFont.Color = clWindowText
                PrintFont.Height = -11
                PrintFont.Name = 'MS Sans Serif'
                PrintFont.Style = []
                Width = 79
              end>
            DataSource = DatosClientes.DSLstClientes
            PageMode = False
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
            ColWidths = (
              20
              79)
            RowHeights = (
              22
              22
              22
              22
              22)
          end
          object dbgClientes: TDBGrid
            Left = 6
            Top = 6
            Width = 802
            Height = 272
            Align = alClient
            DataSource = DatosClientes.DSLstClientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = dbgClientesDblClick
            OnTitleClick = dbgClientesTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMBRE'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAZON_SOCIAL'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DIRECCION_COMERCIAL'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONO_COMERCIAL_1'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONO_COMERCIAL_2'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRO_DE_CUIT'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENDEDOR'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CORREOELECTRONICO'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTACTO'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONO_CONTACTO'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACIONES'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPOSTAL'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOCALIDAD'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRAVENDEDOR'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRASUCURSAL'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRAZONA'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRAINSCRIPCION'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRACOBRADOR'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEDISCADO'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CATEGORIA'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRATIPOSERVICIO'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONO_CELULAR'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LISTAPRECIOS'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRODOCUMENTO'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPODOCUMENTO'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRAPRESTADOR'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACIONES1'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACIONES2'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CON_MONITOREO'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CON_HOSTING'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CON_GPRS'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TARJETA_CLIENTE'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRACOMPCTACTA'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRAGRUPOABONADO'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRATC'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMEROTARJETA'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMMEROSEGURIDADTC'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CUENTA_OPERATIVA'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MUESTRALISTAPRECIOS'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENCIMIENTOTC'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FECHAULTIMACOMPRA'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end>
          end
        end
      end
      object pag3: TTabSheet
        Caption = 'Garantes'
        ImageIndex = 2
        object dbgGarantes: TDBGrid
          Left = 0
          Top = 145
          Width = 830
          Height = 230
          Align = alTop
          DataSource = DSGarantes
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgGarantesDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Title.Color = 16776176
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Color = 16776176
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 288
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIRECCION'
              Title.Alignment = taCenter
              Title.Color = 16776176
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 415
              Visible = True
            end>
        end
        object dbnGarantes: TDBNavigator
          Left = 526
          Top = 383
          Width = 228
          Height = 25
          DataSource = DSGarantes
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
          TabOrder = 1
        end
        object pnGarante: TPanel
          Left = 0
          Top = 0
          Width = 830
          Height = 145
          Align = alTop
          TabOrder = 2
          object Label79: TLabel
            Left = 16
            Top = 16
            Width = 33
            Height = 13
            Caption = 'Codigo'
            FocusControl = edCod
          end
          object Label80: TLabel
            Left = 93
            Top = 16
            Width = 37
            Height = 13
            Caption = 'Nombre'
            FocusControl = edNombre
          end
          object Label81: TLabel
            Left = 388
            Top = 16
            Width = 45
            Height = 13
            Caption = 'Direccion'
            FocusControl = edDire
          end
          object Label82: TLabel
            Left = 93
            Top = 53
            Width = 46
            Height = 13
            Caption = 'Localidad'
            FocusControl = edLocalidad
          end
          object Label83: TLabel
            Left = 388
            Top = 53
            Width = 51
            Height = 13
            Caption = 'Cod.Postal'
            FocusControl = edPostal
          end
          object Label84: TLabel
            Left = 515
            Top = 53
            Width = 42
            Height = 13
            Caption = 'Telefono'
            FocusControl = edTel1
          end
          object Label85: TLabel
            Left = 645
            Top = 53
            Width = 42
            Height = 13
            Caption = 'Telefono'
            FocusControl = edTel2
          end
          object Label86: TLabel
            Left = 515
            Top = 96
            Width = 41
            Height = 13
            Caption = 'Te.Movil'
            FocusControl = edMovil
          end
          object Label87: TLabel
            Left = 93
            Top = 96
            Width = 87
            Height = 13
            Caption = 'Correo Electronico'
            FocusControl = edCorreo
          end
          object edCod: TDBEdit
            Left = 16
            Top = 32
            Width = 71
            Height = 21
            DataField = 'ID'
            DataSource = DSGarantes
            TabOrder = 0
          end
          object edNombre: TDBEdit
            Left = 93
            Top = 32
            Width = 284
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOMBRE'
            DataSource = DSGarantes
            TabOrder = 1
          end
          object edDire: TDBEdit
            Left = 388
            Top = 32
            Width = 373
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DIRECCION'
            DataSource = DSGarantes
            TabOrder = 2
          end
          object edLocalidad: TDBEdit
            Left = 93
            Top = 69
            Width = 284
            Height = 21
            CharCase = ecUpperCase
            DataField = 'LOCALIDAD'
            DataSource = DSGarantes
            TabOrder = 3
          end
          object edPostal: TDBEdit
            Left = 388
            Top = 69
            Width = 121
            Height = 21
            DataField = 'CPOSTAL'
            DataSource = DSGarantes
            TabOrder = 4
          end
          object edTel1: TDBEdit
            Left = 515
            Top = 69
            Width = 121
            Height = 21
            DataField = 'TELEFONO1'
            DataSource = DSGarantes
            TabOrder = 5
          end
          object edTel2: TDBEdit
            Left = 645
            Top = 69
            Width = 121
            Height = 21
            DataField = 'TELEFONO2'
            DataSource = DSGarantes
            TabOrder = 6
          end
          object edMovil: TDBEdit
            Left = 515
            Top = 112
            Width = 121
            Height = 21
            DataField = 'CELULAR'
            DataSource = DSGarantes
            TabOrder = 7
          end
          object edCorreo: TDBEdit
            Left = 93
            Top = 112
            Width = 310
            Height = 21
            DataField = 'EMAIL'
            DataSource = DSGarantes
            TabOrder = 8
          end
          object DBCheckBox7: TDBCheckBox
            Left = 669
            Top = 9
            Width = 97
            Height = 17
            Caption = 'Por defecto'
            DataField = 'POR_DEFECTO'
            DataSource = DSGarantes
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object pag4: TTabSheet
        Caption = 'Ctrol.Morosidad'
        ImageIndex = 3
        object spSelect: TSpeedButton
          Left = 13
          Top = 378
          Width = 23
          Height = 22
          Hint = 'Seleccionar Todos'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000000000000000
            0000000000000101010002020200030303000404040005050500070707000909
            09000A0A0A000B0B0B000C0C0C000D0D0D0019130D0025190D00311F0D003C24
            0D004E2D0C005F350B006E3C0A007A4209008A4908009A510700A8570500B25B
            0400BA5F0300BF610300C3630200C6650200C9660200CA680500CC6B0900CE70
            0F00D1741500D47A1D00D7812600DB893100E0913C00E2964300E4984700E59A
            4A00E4984700E2964500E0924000DE8E3C00DC8B3800D7853300D37E2D00CD76
            2700C1661D00B7581300AF4E0B00AC4A0900AB480800AB480800AB490800A947
            0900A7450900A5430A00A2400A009F3E0B009E3C0B009D3B0C009C3B0C009B3B
            0C009B3A0C009A390C0096380C0090350B0086320A007C2E0A00722B09006526
            08005E2307005E230700602407006125080065260800682708006D290900732B
            0A00782E0B007F310D00853410008C371500903B1E007B3C3E00643D62004F3D
            8300413D9A00343EAE00293EBF00203ECF00193ED900143EE200103EE9000C3E
            EF00093FF400083EF600073EF700063EF800063EF900063EF900063EF900073E
            F900073FF800083FF700093FF6000A40F5000B41F3000D41F1000F42EE001244
            EB001546E7001A48E2001F4BDB00264ED4002F52CA003958BF00465FB1004C62
            AC005265A6005869A0005F6D9A00677193006F768D00777A8600808080008181
            8100828282008383830084848400858585008686860087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
            C100C2C2C200C3C3C300C4C4C400C8C5C100CCC7BF00D0C8BE00D3C9BD00D5CA
            BC00DACBB800DDCCB600DFCDB500E2CDB400E2C6B900E8AAC100F179D000F84D
            DE00FC33E600FE24EC00FE18F200FE0CF800FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00E9E91EE9E9E9
            4040404040E9E9E9E9E9E9E91E1E1E1F40CD292540E9E9E9E9E9E9E91EE9E9E9
            4340424240E9E9E9E9E9E9E91EE9E9E9E9E9E9E9E9E9E9E9E9E9E9E91EE9E9E9
            4040404040E9E9E9E9E9E9E91E1E1E1E40CD292540E9E9E9E9E9E9E91EE9E9E9
            4340424240E9E9E9E9E9E9E91EE9E9E9E9E9E9E9E9E9E9E9E9E9E9E91EE9E9E9
            4040404040E9E9E9E9E9E9E91E1E1E1E40CD292540E9E9E9E9E9E9E91EE9E9E9
            4340424240E9E9E9E9E94040404040E9E9E9E9E9E902020202E940CD292540E9
            E9E9E9E9E902E96602E94340424240E9E9E9E9E9E90266E966E9E9E9E9E9E9E9
            E9E9E9E9E90202020266E9E9E9E9E9E9E9E9E9E9E9E9E9E9E966}
          ParentShowHint = False
          ShowHint = True
          OnClick = spSelectClick
        end
        object spunselect: TSpeedButton
          Left = 42
          Top = 378
          Width = 23
          Height = 22
          Hint = 'Deseleccionar Todos'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF892602FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF8A27039C34028A2703FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2703AD4101AB3E018A27
            03FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF8A27038E2903B849009F35018A2703FF00FFFF00FF892602892602
            8926028926028926028926028926028A27038A2703FF00FF8A27038E2903B849
            009830028A2703FF00FF892602D8721BC65B0CB64902B44300B54500B64500B6
            46009C3402892602FF00FF8A2703932E02B849008E2903FF00FF892602FFA637
            E27B1ED86C10892602892602892602892602892602FF00FFFF00FFFF00FF8A27
            03A63B01A63B018A2703892602FFAA39E27B1EDE791EC1590F872302FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF902B02B64500892703892602FFAA39
            A03B0A8A2803F6932AAC460C872402FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF892603C45100892603892602FFAB3A8926028623019D3809FA982EC25B1287
            2402FF00FFFF00FFFF00FFFF00FF8A2703932D02BC4B00892603892602FFAB3A
            892602FF00FF8824029E3809EB8928D16C198E2803892502FF00FF8A26038926
            03B14300A63B018A2703892602FFAC3A892602FF00FFFF00FF8925028F2A03D5
            701FEA8623AB43099A3403972F02B14300B645008E2903FF00FF882402FB9C33
            892602FF00FFFF00FFFF00FF892602882402A5400CCB6516CB600FB246039A33
            028926038A2703FF00FFFF00FF892502FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF8926028925028926028926038A2703FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = spunselectClick
        end
        object Label88: TLabel
          Left = 322
          Top = 384
          Width = 91
          Height = 13
          Caption = 'Fecha Menor/Igual'
        end
        object dbgMoroso: TJvDBGrid
          Left = 3
          Top = 24
          Width = 766
          Height = 345
          DataSource = DatosClientes.DSCtrMorosos
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgMorosoColEnter
          TitleButtons = True
          OnTitleBtnClick = dbgMorosoTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          OnCheckIfBooleanField = dbgMorosoCheckIfBooleanField
          Columns = <
            item
              Expanded = False
              FieldName = 'CLIENTE'
              Title.Alignment = taCenter
              Title.Color = clBlue
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Color = clBlue
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 262
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIRECCION_COMERCIAL'
              Title.Alignment = taCenter
              Title.Color = clBlue
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 269
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM'
              Title.Alignment = taCenter
              Title.Color = clBlue
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOROSO'
              Title.Alignment = taCenter
              Title.Caption = 'V'
              Title.Color = clGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 32
              Visible = True
            end>
        end
        object edFecha: TJvDateEdit
          Left = 419
          Top = 381
          Width = 102
          Height = 21
          DefaultToday = True
          ShowNullDate = False
          TabOrder = 1
        end
        object Consultar: TBitBtn
          Left = 694
          Top = 375
          Width = 75
          Height = 25
          Caption = 'Consultar'
          TabOrder = 2
          OnClick = ConsultarClick
        end
        object btExcelMorosos: TBitBtn
          Left = 570
          Top = 375
          Width = 75
          Height = 25
          Caption = 'Generar XLS'
          TabOrder = 3
          OnClick = btExcelMorososClick
        end
      end
      object pag5: TTabSheet
        Caption = 'O.de Trabajo'
        ImageIndex = 4
        object BitBtn2: TBitBtn
          Left = 706
          Top = 391
          Width = 70
          Height = 29
          Hint = 'Buscar Registro'
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
          TabOrder = 0
          OnClick = BitBtn2Click
        end
        object DBGrid1: TDBGrid
          Left = 3
          Top = 16
          Width = 793
          Height = 353
          DataSource = DatosClientes.DSOt
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
        end
      end
      object pagFacModelo: TTabSheet
        Caption = 'Articulos Factura Modelo'
        ImageIndex = 5
        object DBGrid2: TDBGrid
          Left = 12
          Top = 19
          Width = 564
          Height = 345
          DataSource = DatosClientes.DSFacModeloDetalle
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRAARTICULO'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 206
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Unitario'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Cantidad'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end>
        end
      end
      object pagWspro: TTabSheet
        Caption = 'WisPro'
        ImageIndex = 6
        object pcWispro: TAdvPageControl
          Left = 0
          Top = 0
          Width = 830
          Height = 449
          ActivePage = tsDatos
          ActiveFont.Charset = DEFAULT_CHARSET
          ActiveFont.Color = clWindowText
          ActiveFont.Height = -11
          ActiveFont.Name = 'Tahoma'
          ActiveFont.Style = []
          Align = alClient
          DoubleBuffered = True
          TabBackGroundColor = clBtnFace
          TabMargin.RightMargin = 0
          TabOverlap = 0
          Version = '2.1.3.1'
          PersistPagesState.Location = plRegistry
          PersistPagesState.Enabled = False
          TabOrder = 0
          object tsDatos: TAdvTabSheet
            Caption = 'Cliente Wispro'
            Color = clMenuHighlight
            ColorTo = clNone
            TabColor = clBtnFace
            TabColorTo = clNone
            object Label97: TLabel
              Left = 3
              Top = 40
              Width = 72
              Height = 13
              Caption = 'Codigo Gestion'
              FocusControl = edCustom_ID
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label98: TLabel
              Left = 3
              Top = 80
              Width = 37
              Height = 13
              Caption = 'Nombre'
              FocusControl = edName
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label99: TLabel
              Left = 3
              Top = 120
              Width = 28
              Height = 13
              Caption = 'e-Mail'
              FocusControl = edMail
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label100: TLabel
              Left = 3
              Top = 0
              Width = 44
              Height = 13
              Caption = 'id Wispro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label101: TLabel
              Left = 3
              Top = 160
              Width = 45
              Height = 13
              Caption = 'Direccion'
              FocusControl = edAdress
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label102: TLabel
              Left = 3
              Top = 203
              Width = 46
              Height = 13
              Caption = 'Password'
              FocusControl = edPassword
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label103: TLabel
              Left = 466
              Top = 40
              Width = 99
              Height = 13
              Caption = 'Descripcion Contrato'
              FocusControl = edDetails
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label104: TLabel
              Left = 466
              Top = 77
              Width = 33
              Height = 13
              Caption = 'Estado'
              FocusControl = edState
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label107: TLabel
              Left = 466
              Top = 120
              Width = 61
              Height = 13
              Caption = 'Plan Nombre'
              FocusControl = cxDBTextEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label108: TLabel
              Left = 466
              Top = 157
              Width = 56
              Height = 13
              Caption = 'Down/kbps'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label109: TLabel
              Left = 596
              Top = 157
              Width = 42
              Height = 13
              Caption = 'Up/kbps'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label110: TLabel
              Left = 596
              Top = 200
              Width = 102
              Height = 13
              Caption = 'Frecuencia en Meses'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label111: TLabel
              Left = 466
              Top = 200
              Width = 77
              Height = 13
              Caption = 'Cuenta Contrato'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Button2: TButton
              Left = 689
              Top = 362
              Width = 111
              Height = 25
              Action = ConsultaWPro
              TabOrder = 5
            end
            object edCustom_ID: TDBEdit
              Left = 3
              Top = 56
              Width = 126
              Height = 21
              DataField = 'custom_id'
              DataSource = DSClienteRest
              TabOrder = 0
            end
            object edName: TDBEdit
              Left = 3
              Top = 96
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              DataField = 'name'
              DataSource = DSClienteRest
              TabOrder = 1
            end
            object edMail: TDBEdit
              Left = 3
              Top = 136
              Width = 214
              Height = 21
              DataField = 'email'
              DataSource = DSClienteRest
              TabOrder = 2
            end
            object edAdress: TDBEdit
              Left = 3
              Top = 176
              Width = 334
              Height = 21
              CharCase = ecUpperCase
              DataField = 'address'
              DataSource = DSClienteRest
              TabOrder = 3
            end
            object edPassword: TDBEdit
              Left = 3
              Top = 216
              Width = 143
              Height = 21
              DataField = 'password'
              DataSource = DSClienteRest
              TabOrder = 4
            end
            object edDetails: TDBEdit
              Left = 466
              Top = 56
              Width = 193
              Height = 21
              DataField = 'details'
              DataSource = DSContratoRest
              TabOrder = 6
            end
            object edState: TDBEdit
              Left = 466
              Top = 96
              Width = 106
              Height = 21
              CharCase = ecUpperCase
              DataField = 'state'
              DataSource = DSContratoRest
              TabOrder = 7
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 466
              Top = 136
              DataBinding.DataField = 'name'
              DataBinding.DataSource = DSPlan
              TabOrder = 8
              Width = 305
            end
            object edId: TDBEdit
              Left = 3
              Top = 16
              Width = 318
              Height = 21
              Color = clInfoBk
              DataField = 'id'
              DataSource = DSClienteRest
              Enabled = False
              TabOrder = 9
            end
            object DBEdit14: TDBEdit
              Left = 466
              Top = 176
              Width = 78
              Height = 21
              DataField = 'ceil_down_kbps'
              DataSource = DSPlan
              TabOrder = 10
            end
            object DBEdit15: TDBEdit
              Left = 596
              Top = 176
              Width = 61
              Height = 21
              DataField = 'ceil_up_kbps'
              DataSource = DSPlan
              TabOrder = 11
            end
            object DBEdit16: TDBEdit
              Left = 466
              Top = 216
              Width = 106
              Height = 21
              DataField = 'contracts_count'
              DataSource = DSPlan
              TabOrder = 12
            end
            object DBEdit17: TDBEdit
              Left = 596
              Top = 216
              Width = 102
              Height = 21
              DataField = 'frequency_in_months'
              DataSource = DSPlan
              TabOrder = 13
            end
          end
          object tsFacturas: TAdvTabSheet
            Caption = 'Facturas'
            Color = clBtnFace
            ColorTo = clNone
            TabColor = clBtnFace
            TabColorTo = clNone
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 822
              Height = 25
              Align = alTop
              Caption = 'Facturas de Abonos'
              Color = clMenuHighlight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
            object cxGrid1: TcxGrid
              Left = 0
              Top = 25
              Width = 822
              Height = 396
              Align = alClient
              TabOrder = 1
              object cxGrid1DBTableView1: TcxGridDBTableView
                OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
                DataController.DataSource = DSFacturas
                OptionsSelection.CellSelect = False
                OptionsView.GroupByBox = False
                object cxGrid1DBTableView1kind_invoice: TcxGridDBColumn
                  DataBinding.FieldName = 'kind_invoice'
                  HeaderAlignmentHorz = taCenter
                  Width = 66
                end
                object cxGrid1DBTableView1invoicing_firm_sale_point: TcxGridDBColumn
                  DataBinding.FieldName = 'invoicing_firm_sale_point'
                  HeaderAlignmentHorz = taCenter
                  Width = 58
                end
                object cxGrid1DBTableView1invoice_number: TcxGridDBColumn
                  DataBinding.FieldName = 'invoice_number'
                  HeaderAlignmentHorz = taCenter
                  Width = 73
                end
                object cxGrid1DBTableView1created_at: TcxGridDBColumn
                  DataBinding.FieldName = 'created_at'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.AssignedValues.DisplayFormat = True
                  HeaderAlignmentHorz = taCenter
                  Width = 142
                end
                object cxGrid1DBTableView1from: TcxGridDBColumn
                  DataBinding.FieldName = 'from'
                  PropertiesClassName = 'TcxDateEditProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 76
                end
                object cxGrid1DBTableView1to: TcxGridDBColumn
                  DataBinding.FieldName = 'to'
                  PropertiesClassName = 'TcxDateEditProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 66
                end
                object cxGrid1DBTableView1first_due_date: TcxGridDBColumn
                  DataBinding.FieldName = 'first_due_date'
                  PropertiesClassName = 'TcxDateEditProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object cxGrid1DBTableView1second_due_date: TcxGridDBColumn
                  DataBinding.FieldName = 'second_due_date'
                  PropertiesClassName = 'TcxDateEditProperties'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object cxGrid1DBTableView1state: TcxGridDBColumn
                  DataBinding.FieldName = 'state'
                  HeaderAlignmentHorz = taCenter
                  Width = 83
                end
                object cxGrid1DBTableView1net_amount: TcxGridDBColumn
                  DataBinding.FieldName = 'net_amount'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object cxGrid1DBTableView1tax_amount: TcxGridDBColumn
                  DataBinding.FieldName = 'tax_amount'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  HeaderAlignmentHorz = taCenter
                  Width = 81
                end
                object cxGrid1DBTableView1amount: TcxGridDBColumn
                  DataBinding.FieldName = 'amount'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object cxGrid1DBTableView1discount_amount: TcxGridDBColumn
                  DataBinding.FieldName = 'discount_amount'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object cxGrid1DBTableView1balance: TcxGridDBColumn
                  DataBinding.FieldName = 'balance'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object cxGrid1DBTableView1concept: TcxGridDBColumn
                  DataBinding.FieldName = 'concept'
                  HeaderAlignmentHorz = taCenter
                  Width = 133
                end
                object cxGrid1DBTableView1client_name: TcxGridDBColumn
                  DataBinding.FieldName = 'client_name'
                  HeaderAlignmentHorz = taCenter
                  Width = 212
                end
                object cxGrid1DBTableView1client_address: TcxGridDBColumn
                  DataBinding.FieldName = 'client_address'
                  HeaderAlignmentHorz = taCenter
                  Width = 194
                end
                object cxGrid1DBTableView1invoicing_firm_zip_code: TcxGridDBColumn
                  DataBinding.FieldName = 'invoicing_firm_zip_code'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object cxGrid1DBTableView1client_vat_condition: TcxGridDBColumn
                  DataBinding.FieldName = 'client_vat_condition'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object cxGrid1DBTableView1client_taxpayer_identification_number: TcxGridDBColumn
                  DataBinding.FieldName = 'client_taxpayer_identification_number'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
                object cxGrid1DBTableView1client_national_identification_number: TcxGridDBColumn
                  DataBinding.FieldName = 'client_national_identification_number'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
          end
          object tsListado: TAdvTabSheet
            Caption = 'Listado'
            Color = clBtnFace
            ColorTo = clNone
            TabColor = clBtnFace
            TabColorTo = clNone
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 822
              Height = 389
              Align = alTop
              DataSource = DSClienteRest
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = DBGrid3DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'custom_id'
                  Title.Alignment = taCenter
                  Title.Caption = 'Codigo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'name'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nombre'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 332
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'details'
                  Title.Alignment = taCenter
                  Title.Caption = 'Detalle'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 276
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'email'
                  Title.Alignment = taCenter
                  Title.Caption = 'E-Mail'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 207
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'seller_id'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cod.Vendedor'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 144
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'id'
                  Title.Alignment = taCenter
                  Title.Caption = 'Id'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 170
                  Visible = True
                end>
            end
            object Button1: TButton
              Left = 536
              Top = 395
              Width = 97
              Height = 25
              Action = ListarWPro
              TabOrder = 1
            end
            object edTotalPages: TEdit
              Left = 664
              Top = 399
              Width = 41
              Height = 21
              Enabled = False
              TabOrder = 2
              Text = '100'
            end
            object SpinButton1: TSpinButton
              Left = 796
              Top = 395
              Width = 19
              Height = 25
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
              FocusControl = edPagina
              TabOrder = 3
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
            end
            object edPagina: TEdit
              Left = 719
              Top = 398
              Width = 74
              Height = 21
              TabOrder = 4
              Text = '1'
            end
            object DBAdvSearchEdit1: TDBAdvSearchEdit
              Left = 3
              Top = 395
              Width = 374
              Height = 21
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
                  ControlFont = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                end>
              DropDownHeader.Color = clWhite
              DropDownHeader.ColorTo = clNone
              DropDownHeader.Font.Charset = DEFAULT_CHARSET
              DropDownHeader.Font.Color = 6184542
              DropDownHeader.Font.Height = -11
              DropDownHeader.Font.Name = 'Tahoma'
              DropDownHeader.Font.Style = []
              DropDownHeader.Visible = True
              DropDownHeader.BorderColor = 11250603
              DropDownHeader.BorderWidth = 0
              DropDownHeader.Buttons = <>
              DropDownFooter.Color = clWhite
              DropDownFooter.ColorTo = clNone
              DropDownFooter.Font.Charset = DEFAULT_CHARSET
              DropDownFooter.Font.Color = 6184542
              DropDownFooter.Font.Height = -11
              DropDownFooter.Font.Name = 'Tahoma'
              DropDownFooter.Font.Style = []
              DropDownFooter.Visible = True
              DropDownFooter.BorderColor = 11250603
              DropDownFooter.BorderWidth = 0
              DropDownFooter.Buttons = <>
              DropDownShadow = True
              EmptyText = 'Buscar ....'
              FilterCondition.AllColumns = True
              FilterCondition.AutoSelect = True
              FilterCondition.Column = 1
              FocusFontColor = clBlack
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
              TabOrder = 5
              Text = ''
              Version = '1.1.6.0'
              OnSelect = DBAdvSearchEdit1Select
              DropDownColor = clBlack
              DataSource = DSClienteRest
            end
          end
        end
      end
    end
    object tbMenu: TToolBar
      Left = 0
      Top = 0
      Width = 838
      Height = 20
      ButtonHeight = 21
      ButtonWidth = 52
      Caption = 'tbMenu'
      DrawingStyle = dsGradient
      Menu = MainMenu1
      ShowCaptions = True
      TabOrder = 1
    end
  end
  inherited ToolBar1: TToolBar
    Top = 497
    Width = 838
    ExplicitTop = 497
    ExplicitWidth = 838
    inherited btConfirma: TBitBtn
      DoubleBuffered = True
    end
    inherited btNuevo: TBitBtn
      DoubleBuffered = True
    end
    inherited btCancelar: TBitBtn
      DoubleBuffered = True
    end
    inherited btModificar: TBitBtn
      DoubleBuffered = True
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
      TabOrder = 7
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 12
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btAgendar: TBitBtn
      Left = 569
      Top = 0
      Width = 79
      Height = 29
      Action = Agendar
      Caption = 'Agendar'
      Enabled = False
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C0000E000600000001F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A100851510428A29C208200000001F7C
        1F7C1F7C1F7C1F7C1F7C000063000815CE391042524ACE398C31482102096000
        00001F7C1F7C0000630008158C318C31524ABC73FE7B7A6B9452CE391042CA29
        42096000000042088C318C31104235463967FE7BFE7B7A6B3967FE7B175F1042
        10420821000000001042F75EF75E3546732DBC52FE5ABC35FE7BFE7BFE7BFE7B
        175F08210000200060006B2DF75EF75EB114732DFE1C0F00692D672DFE7BB452
        A51400001F7C0000A10CE01460006B2D3546B114BC73EF3DB37BE069600C0000
        1F7C1F7C1F7C1F7C21002015600D2001A0006B2D3967B452A21C0D7BE069600C
        1F7C1F7C1F7C1F7C0000E1006005600D60016001600000001F7CA21C0D7BE069
        600C1F7C1F7C1F7C1F7C210060056001A001E001600100001F7C1F7CA21C0D7B
        E069600C1F7C1F7C1F7C0000E104A001E001E001E001A0001F7C1F7C1F7CA21C
        0D7BE069600C1F7C1F7C1F7C6000E001E001E001E001A00100001F7C1F7C1F7C
        A21C0D7BE03C1F7C1F7C1F7C1F7C0000E000E00120022002A0001F7C1F7C1F7C
        1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C0000E0006002A00100001F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000600200001F7C1F7C
        1F7C1F7C1F7C}
      TabOrder = 6
    end
    object spIncidencia: TSpeedButton
      Left = 648
      Top = 0
      Width = 24
      Height = 29
      Action = VerIncidencias
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        000000000000000000000000000000000000000000000000000000000000FF00
        FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00
        FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
        00000000000000000000000000000000000000000000FF00FF0080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000FF0000000000FF00FF0080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF0080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
        FF00FFFFFF00FFFFFF000000FF00FFFFFF0000000000FF00FF0080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
        FF000000FF000000FF00FFFFFF00FFFFFF0000000000FF00FF0080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF000000
        FF000000FF000000FF00FFFFFF00FFFFFF0000000000FF00FF00808080008080
        80008080800080808000808080008080800080808000FFFFFF000000FF000000
        FF00FFFFFF00FFFFFF000000FF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF000000FF00FF00FF00FF00FF00FF00FF00808080000000FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000FF0000000000FF00FF00FF00FF00FF00
        FF000000FF00FF00FF000000FF00FF00FF0080808000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000FF000000FF000000FF0080808000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008080800080808000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FF00FF00FF008080800080808000808080008080
        8000808080008080800080808000FF00FF00FF00FF00FF00FF00}
    end
    object btOTrabajo: TButton
      Left = 672
      Top = 0
      Width = 74
      Height = 29
      Caption = 'O.Trabajo'
      TabOrder = 8
      OnClick = btOTrabajoClick
    end
    object spCC: TSpeedButton
      Left = 746
      Top = 0
      Width = 29
      Height = 29
      Action = VerCC
    end
    object btRipsa: TBitBtn
      Left = 775
      Top = 0
      Width = 26
      Height = 29
      Action = BuscadorRipsa
      TabOrder = 9
    end
  end
  inherited Panel1: TPanel
    Top = 527
    Width = 838
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 527
    ExplicitWidth = 838
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 749
      Panels = <
        item
          Width = 320
        end
        item
          Width = 50
        end>
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 749
    end
  end
  inherited ActionList1: TActionList
    Left = 292
    Top = 91
    object BuscarCondVenta: TAction [7]
      Caption = 'BuscarCondVenta'
      OnExecute = BuscarCondVentaExecute
    end
    object Imprimir: TAction [8]
      Caption = '&Imprimir Listado'
      OnExecute = ImprimirExecute
    end
    object Listar: TAction [9]
      Caption = '&Listar'
      OnExecute = ListarExecute
    end
    object BuscaLocalidad: TAction [10]
      Caption = 'BuscaLocalidad'
      OnExecute = BuscaLocalidadExecute
    end
    object Agendar: TAction [11]
      Caption = 'Agendar'
      OnExecute = AgendarExecute
    end
    object BuscaVendedor: TAction [12]
      Caption = 'BuscaVendedor'
      OnExecute = BuscaVendedorExecute
    end
    object BuscaCobradores: TAction
      Caption = 'BuscaCobradores'
      OnExecute = BuscaCobradoresExecute
    end
    object ImprimirFicha: TAction
      Caption = 'Imprimir Ficha'
      OnExecute = ImprimirFichaExecute
    end
    object BuscaGrupos: TAction
      Caption = 'BuscaGrupos'
      OnExecute = BuscaGruposExecute
    end
    object CambiarCodigo: TAction
      Caption = 'CambiarCodigo'
      ShortCut = 16462
      OnExecute = CambiarCodigoExecute
    end
    object GeoPosicionar: TAction
      OnExecute = GeoPosicionarExecute
    end
    object BuscarCtaContable: TAction
      Caption = 'BuscarCtaContable'
    end
    object VerIncidencias: TAction
      Hint = 'Ver Incidecnias de Cta.Cte.'
      ImageIndex = 10
      OnExecute = VerIncidenciasExecute
    end
    object ImprimirContrato: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirContratoExecute
    end
    object FormatearCuit: TAction
      Caption = 'Formatear Cuit'
      OnExecute = FormatearCuitExecute
    end
    object VerCC: TAction
      Caption = 'C.C'
      Hint = 'Ver la Cta Corriente'
      OnExecute = VerCCExecute
    end
    object EnviarCorreo: TAction
      Caption = 'Enviar Correo Mailing'
      OnExecute = EnviarCorreoExecute
    end
    object NuevaOSocial: TAction
      Hint = 'Nueva O.Social'
      ImageIndex = 1
    end
    object ModificaOSocial: TAction
      ImageIndex = 2
    end
    object BuscadorRipsa: TAction
      Hint = 'Busca por Codigo Ripsa'
      ImageIndex = 10
      OnExecute = BuscadorRipsaExecute
    end
    object ConsultaWPro: TAction
      Caption = 'Consulta WPro'
      OnExecute = ConsultaWProExecute
    end
    object ListarWPro: TAction
      Caption = 'Listar WPro'
      OnExecute = ListarWProExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosClientes.CDSClientes
    Left = 189
    Top = 84
  end
  inherited ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 402
    Top = 92
    Bitmap = {
      494C01010C001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      000000000000034805FF045A08FF056B0BFF056B0BFF045D09FF034B05FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6969FF6B6969FF00000000000000006B6969FF6B6969FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001000006724E108DC38E2EE7D09A
      36F3CF9832F3CF962DF3CE9528F3CD9325F3CD9120F3CC8F1BF3CC8D17F3CB8A
      12F3CA880EF3BF7F08EA795002990201000B000000000000000000000000045F
      08FF045F08FF079112FF08B017FF08B319FF08B318FF08B118FF069613FF0467
      0BFF04670BFF0000000000000000000000000000000000000000000000006B69
      69FFAAA7A7FFA19F9FFF6B6969FF6B6969FF6B6969FFE5E3E3FF6B6969FF6B69
      69FF6B6969FF000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
      FFFF00000000000000000000000000000000714E0F8CE8B963FEEEC16EFEECBE
      67FEEBBB5FFEEAB757FEE8B44FFEE7B047FEE6AD3FFEE5AA37FEE3A62FFEE2A3
      27FEE19F1FFEDF9C18FEDC970FFE7F5301A10000000000000000096914FF097E
      14FF0AB61BFF08B919FF07B417FF06B215FF08B318FF08B418FF08B819FF08B9
      19FF06830FFF034C05FF000000000000000000000000000000006B6969FFDAD9
      D9FFA19F9FFFA19F9FFFA19F9FFF363535FF343434FF6B6C6CFFBFBFBFFFE1E2
      E2FFB7B6B6FF6B6969FF6B6969FF6B6969FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
      000000000000000000000000000000000000C28C2BE7EBBD66FEF4DCAEFEF6E1
      B9FEF1CF8FFEEBBC61FEEAB757FEE8B44FFEE7B047FEE6AD3FFEE5AA37FEE3A6
      2FFEE2A327FEE19F1FFEDF9C18FECD8909F8000000000A6914FF0E8521FF15BD
      33FF10B726FF0AB21BFF06B115FF07B116FF08B218FF08B218FF08B218FF08B4
      18FF08BA19FF06840FFF05660BFF00000000000000006B6969FFD4D3D3FFCACA
      CAFF8E8C8CFF8E8C8CFF8E8C8CFF3B3A3AFF090809FF060606FF0A0A0AFF0606
      06FF797979FFBBBBBBFF6B6969FF00000000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
      FFFF0000FFFF000000000000000000000000CF9732F3EABA5FFEF6E4C2FEEBB9
      5BFFFFFFFFFFF9EEDAFEF1CF8EFEEAB757FEE8B44FFEE7B047FEE6AD3FFEE5AA
      37FEE3A62FFEE2A327FEE19F1FFED69110FE000000000A6914FF1FBE48FF1ABD
      3FFF13B72FFF09B21EFF27BC35FFDFF5E1FFEEFAEFFF62CE6CFF08B218FF08B2
      18FF08B318FF08BA19FF05660BFF000000006B6969FFCACACAFFCACACAFF8E8C
      8CFFD7D4D4FFCECBCBFFBFBCBCFFB1AFAFFFA3A0A0FF888686FF5D5A5BFF0606
      06FF080808FF070707FF6B6969FF757272FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
      000000000000000000000000000000000000CE952DF3E9B657FEF1D296FEFFFF
      FFFFF2D49DFEECBD63FFFCFAF5FEF1CF8EFEEAB757FEE8B44FFEE7B047FEE6AD
      3FFEE5AA37FEE3A62FFEE2A327FED69315FE07710FFF1A9A39FF29C65AFF1CBB
      44FF0DB424FF0AB31AFF10B420FF9ADFA0FFFFFFFFFFF7FDF8FF59CB64FF08B2
      18FF08B218FF08B819FF079412FF035C08FF6B6969FFCACACAFF8E8C8CFFEFEE
      EEFFFFFEFEFFFBFAFAFFE3E0E1FFDEDEDEFFDEDDDDFFCFCECEFFBDBCBCFFADAB
      ABFF8B8989FF575555FF797777FF747272FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000CD9528F3E8B34FFEEBBD67FEFAEE
      D8FFEBBC63FEF0CD8AFFF7E6C7FEFAF0DEFEF1CF8FFEEAB757FEE9B44FFEE7B0
      47FEE6AD3FFEE5AA37FEE3A62FFED7961BFE07710FFF29B65AFF2BC564FF21BD
      4CFF0EB421FF09B219FF0BB31BFF09B218FF8DDB95FFFDFEFDFFF6FCF7FF57CB
      62FF08B218FF08B519FF07AB16FF035C08FF6B6969FF8E8C8CFFFFFFFFFFFEFC
      FCFFFAFAFAFFD5D4D5FF989193FFA09899FFB2ABACFFC4C0C1FFD7D7D7FFD8D8
      D8FFC7C6C6FFB7B6B6FF918F8FFF6B6868FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000FFFF000000FF00000000CD9325F3E6B047FEE8B34FFEF1D4
      9DFEFFFFFFFFF7E6C5FEEDC16FFEEEC270FEFAF0DEFEF1CF8FFEEAB757FEE8B4
      4FFEE7B047FEE6AD3FFEE5AA37FED89820FE0E821BFF36C26BFF32C76BFFCDF1
      DAFFC9EFD3FFC7EED0FFC8EFD2FFC5EED0FFC7EECFFFF8FDF9FFFFFFFFFFF2FB
      F3FF6ED278FF07B418FF08B318FF04640AFF000000006B6969FF6B6969FFEDEB
      EBFFB1A6A7FF796E71FF8A8388FF969295FF969091FF9D9798FF9A9395FF9E98
      99FFBBBABAFFD1D1D1FFC2C2C2FF6B6969FF808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF00000000CD9020F3E5AD40FEE6B047FEE8B3
      4FFEF1D49CFEF9EED8FEEBBD66FEEDC06EFEEEC270FEFAF0DEFEF1CF8FFEEAB7
      57FEE8B44FFEE7B047FEE6AD3FFED99A25FE128D22FF57CC83FF41C976FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFFFFFFFFFFFFF
      FFFFBCEAC1FF09B419FF08B318FF056C0CFF0000000000000000000000006B69
      69FFBB897EFFA7876CFF8B6E63FF7C665FFF6E6164FF787278FF8F8B8EFFA9A3
      A4FFCBCACAFFC1C1C1FF6B6969FF00000000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFF000000FF00000000CC8F1CF3E4A938FEE5AD40FEE6B0
      47FEE8B34FFEF1D39BFEF9EED8FEEBBD66FEEDC06EFEEEC270FEFAF0DEFEF1CF
      90FEEAB757FEE8B44FFEE7B047FEDA9D2BFE0E911CFF6ED293FF5ED38DFF6CD4
      95FF71D699FF70D698FF71D699FF63D28CFF92DFA8FFFBFEFBFFFFFFFFFFACE5
      B8FF2DBF4BFF10B82AFF07B118FF046009FF0000000000000000000000000000
      0000BD8281FFFFE3B4FFFFD39FFFE9B281FFC99972FFBA916BFFBD8281FF807C
      7DFF6B6969FF6B6969FF0000000000000000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF0000FFFF0000FFFF0000
      FFFFFFFFFFFFFFFFFFFF000000FF00000000CB8D17F3E3A631FEE4A938FEE5AD
      40FEE6B048FEE8B34FFEF1D39AFEF9EED8FEEBBD66FEEDC06EFEEEC270FEFAF0
      DEFEF1D090FEEAB757FEE8B44FFEDA9F30FE0E911CFF66CC83FF9BE5BAFF37C6
      6FFF2FC368FF37C56EFF37C56EFF6FD697FFE8F8EEFFFFFFFFFF9FE2B1FF1FBD
      47FF19B93DFF0FBA28FF07A316FF046009FF0000000000000000000000000000
      0000BD8281FFFFE0B8FFFFD3A7FFFFD09DFFFFCE90FFFFC688FFBD8281FF0000
      000000000000000000000000000000000000808080FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080FF808080FFFFFFFFFF0000FFFF0000FFFF0000
      FFFFFFFFFFFFFFFFFFFF000000FF00000000CB8A13F3E1A329FEE3A631FEE4A9
      38FEE5AD40FEE7B048FEE8B34FFEF1D399FEF9EED8FEEBBD66FEEDC06EFEEEC2
      70FEFBF3E6FEF1D091FEEAB757FEDCA136FE0000000024AE38FFBCEDD2FF82DB
      A4FF27C062FF2EC266FF52CD82FFF7FDF9FFFFFFFFFF9CE2B2FF21BC4AFF1CBA
      40FF17B735FF13C02FFF098516FF00000000000000000000000000000000C086
      83FFFFE7CFFFFFE0C0FFFFD9B2FFFFD3A5FFFFD099FFBD8281FF000000000000
      000000000000000000000000000000000000808080FF808080FF808080FF8080
      80FF808080FF808080FF808080FFFFFFFFFF0000FFFF0000FFFFFFFFFFFFFFFF
      FFFF0000FFFFFFFFFFFF000000FF00000000CA880FF3E09F21FEE1A329FEE3A6
      31FEE4A938FEE5AD40FEE6B048FEE8B34FFEF1D298FEF9EED9FEEBBD66FEF1D2
      96FEF0CD8AFFFCFAF5FEF0CD8BFEDCA33BFE0000000024AE38FF70D28CFFD2F4
      E1FF80DAA3FF35C46CFF38C56EFFBCECCEFFABE6C2FF2CC262FF23BE55FF22BC
      4CFF1EC145FF15AE33FF098516FF00000000000000000000000000000000BD82
      81FFFEEBD8FFFFE6CCFFFFDEBDFFFFD8B1FFFED3A4FFBD8281FF000000000000
      00000000000000000000000000000000000000000000000000000000FFFF0000
      00000000000000000000808080FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0000FFFF000000FF00000000C9870BF3DF9C19FEE09F21FEE1A3
      29FEE3A631FEE4A938FEE5AD40FEE6B047FEE8B34FFEF1D298FEFAF2E2FEF0CD
      8AFFF5DEB1FFF3D8A5FEF1D092FEDEA640FE000000000000000024AE38FF84D8
      9FFFDBF7EAFFAFE8C6FF6AD493FF51CC81FF43C977FF48CA7AFF47CB77FF38CB
      69FF20B648FF0E7B1EFF00000000000000000000000000000000BD8281FFFFFF
      F2FFFFFFF2FFFFEBD8FFFFE5CAFFFFE1BDFFF3C7A7FFBD8281FF000000000000
      00000000000000000000000000000000000000000000000000000000FFFF0000
      00000000FFFF00000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FF000000FF00000000BF7F06EADD9912FEDF9C19FEE09F
      21FEE1A329FEE3A631FEE4A938FEE5AD40FEE6B047FEE8B34FFEF1D298FEFBF7
      EEFEF2D7A3FEF4DCAEFEEEC16EFED7A13CFA00000000000000000000000024AE
      38FF24AE38FFADE8C5FFCCF2DEFFBAEDD1FFA6E7C2FF91E2B3FF63D492FF2EB1
      56FF2EB156FF0000000000000000000000000000000000000000BD8281FFBD82
      81FFBD8281FFFBEFE2FFFBE3CFFFFBDDC2FFBD8281FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF0000FFFF0000FFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF808080FF808080FF0000000000000000794F0299DA940AFEDE9912FEDF9C
      19FEE09F21FEE1A329FEE3A631FEE4A938FEE5AD40FEE6B047FEE8B34FFEEFCD
      8BFEF0CE8EFEEBBD66FEEBBE6AFE8D6218AD0000000000000000000000000000
      00000000000031B74DFF24AE38FF24AE38FF24AE38FF24AE38FF23A341FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD8281FFBD8281FFBD8281FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFF00000000808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF0000000000000000000000000201000B7F5201A1CC8806F8D48F
      0CFED59111FED69317FED7961BFED89821FED89A26FEDA9D2BFEDA9F30FEDBA1
      36FEDCA33BFED59E37FA8C6216AD030201120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000069FFF0212A9FF0317AEFF0318AEFF0212A9FF0007A0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C2B04FF6A2407FF511D14FF541E12FF6C2506FF7D2C04FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000511D14FF6A2407FF7C2B04FF7D2C04FF6C2506FF541E12FF0000
      0000000000000000000000000000000000000000000000000000006500FF0065
      00FFB59A9BFFB59A9BFFB59A9BFFB59A9BFFB59A9BFFB59A9BFFB59A9BFF0065
      00FF006500FF0000000000000000000000000000000000000000000000000003
      9DFF031BB1FF062FC0FF0633C4FF0634C5FF0634C5FF0633C3FF0630C1FF031E
      B3FF00059EFF0000000000000000000000000000000000000000000000008931
      03FF542016FFBF5B14FFE19854FFEFBD8AFFF0BF8CFFE29D5AFFC26117FF531E
      15FF903402FF0000000000000000000000000000000000000000000000005420
      16FF893103FFBF5B14FFE19854FFEFBD8AFFF0BF8CFFE29D5AFFC26117FF9034
      02FF531E15FF00000000000000000000000000000000006500FF009900FF0099
      00FFE5DEDFFF006500FF006500FFE4E7E7FFE0E3E6FFD9DFE0FFCCC9CCFF0065
      00FF027C02FF006500FF000000000000000000000000000000000008A1FF042A
      C3FF0634C7FF0632C2FF0631C2FF0631C2FF0631C2FF0631C2FF0632C3FF0634
      C4FF052CBEFF010BA4FF000000000000000000000000000000006B280DFFAF46
      03FFEBB178FFFFFEF8FFFEF8F4FFF2DAC4FFF2D9C2FFFCF6F0FFFFFFFCFFEEBA
      87FFB64D06FF5F2210FF000000000000000000000000000000006B280DFFAF46
      03FFEBB178FFFFFEF8FFFEF8F4FFF2DAC4FFF2D9C2FFFCF6F0FFFFFFFCFFEEBA
      87FFB64D06FF5F2210FF000000000000000000000000006500FF009900FF0099
      00FFE9E2E2FF006500FF006500FFE2E1E3FFE2E6E8FFDDE2E4FFCFCCCFFF0065
      00FF027C02FF006500FF00000000000000000000000000039BFF042ACAFF0535
      D8FF0330CDFF0026C4FF022DC1FF0631C2FF0631C2FF032FC1FF0026BFFF032E
      C1FF0634C4FF062DBEFF00059EFF0000000000000000722C0CFFB04501FFF4D0
      ABFFFFFFFEFFD48845FFBD4D03FFBA4600FFBA4500FFC05206FFD48441FFFCF8
      F3FFF8DDBDFFB64C04FF903401FF0000000000000000722C0CFFB04501FFF4D0
      ABFFFFFEFEFFD78C4DFFC05308FFBA4500FFBA4500FFBD4E03FFD07D38FFFCF8
      F4FFF8DDBDFFB64C04FF531E15FF0000000000000000006500FF009900FF0099
      00FFECE4E4FF006500FF006500FFDFDDDFFFE1E6E8FFE0E5E7FFD3D0D2FF0065
      00FF027C02FF006500FF0000000000000000000000000219BAFF0436E7FF0230
      DDFF113CD8FF6380E0FF173FCBFF002BC1FF012CC0FF0E37C4FF6480D9FF1A42
      C7FF042EC1FF0634C5FF041EB3FF00000000000000009A3700FFE6AB71FFFFFF
      FFFFCC7227FFC9671FFFCE7429FFBB4700FFBC4A00FFB84200FFB84100FFCA6B
      1EFFFCF8F4FFEFBC88FF531E15FF00000000000000009A3700FFE6AB71FFFFFF
      FFFFCF752CFFB84000FFBA4200FFBC4900FFBB4600FFC66214FFCE7430FFC96A
      1EFFFCF8F4FFEFBC88FF903401FF0000000000000000006500FF009900FF0099
      00FFEFE6E6FFEDE5E5FFE5DEDFFFE0DDDFFFDFE0E2FFE0E1E3FFD6D0D2FF0065
      00FF027C02FF006500FF000000000000000000039EFF032FE4FF0335F1FF0029
      E4FF4F6FE9FFFFFFFFFFB7C4F1FF0C35CAFF032CC3FFA2B2E8FFFFFFFFFF6884
      DAFF0025BEFF0632C3FF0630C1FF0007A0FFA94302FFC05B10FFFFFCFAFFE1A3
      69FFBF4700FFEECBA9FFF0D5BAFFBD4900FFB84100FFCA6B1FFFE9BD93FFBA45
      00FFD48842FFFFFFFFFFC15F15FF7A2B03FF893305FFC05B10FFFFFCFAFFE1A3
      69FFC04B00FFFFFFFFFFD38037FFBC4600FFB84100FFDC995DFFFFFFFFFFB842
      00FFD48742FFFFFFFFFFC15F15FF541E12FF00000000006500FF009900FF0099
      00FF009900FF009900FF009900FF009900FF009900FF009900FF009900FF0099
      00FF009900FF006500FF0000000000000000010EAFFF0235FAFF0234F8FF0131
      EEFF0934E8FF8CA2F2FFFFFFFFFFB4C2F1FFA9B8EDFFFFFFFFFFA7B7E9FF1239
      C4FF042EC1FF0631C2FF0633C4FF0212AAFF9A3A01FFDD9553FFFFFFFFFFD375
      27FFCC5F0DFFEFCBA9FFF0D3B4FFC25000FFD58640FFFAF2E9FFF7E7D9FFBC4A
      00FFBF5002FFFCF8F3FFE29D59FF6C2506FF9A3A01FFDD9553FFFFFFFFFFD375
      27FFCC5F0CFFFFFFFFFFFFFFFFFFDC9553FFBC4400FFDA9657FFFFFFFFFFBC4A
      00FFBF5002FFFCF8F3FFE29D59FF6C2506FF00000000006500FF009900FFB1D0
      B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0
      B1FF009900FF006500FF00000000000000000518BCFF1646FEFF0839FCFF0334
      F8FF0030F0FF002AE8FF91A5F4FFFFFFFFFFFFFFFFFFABBAEFFF052EC5FF012C
      C0FF0631C2FF0631C2FF0635C5FF0318AEFF893305FFEBBB8AFFFBF0E7FFD879
      2AFFD77321FFF3D1B0FFF2D1B4FFE6AC75FFFFFFFFFFFFFFFFFFF3DEC7FFBD4C
      00FFBA4400FFF2DAC2FFEFC08EFF541E12FFA94302FFEBBB8AFFFBF0E7FFD879
      2AFFD77321FFFFFFFFFFFFFFFFFFFFFFFFFFE5AF7AFFE0A167FFFFFFFFFFBD4C
      00FFBA4400FFF2DAC2FFEFC08EFF7C2B03FF00000000006500FF009900FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FF009900FF006500FF00000000000000000A1CBEFF4067FEFF1B48FCFF0234
      FBFF0030F9FF0430F2FFA4B5F7FFFFFFFFFFFFFFFFFFB9C6F2FF0C35D0FF002B
      C6FF0631C2FF0631C2FF0635C5FF0317ADFFAD4401FFEEBF90FFFCF4EBFFE28A
      3DFFE18434FFF6D8B8FFF3D7BAFFE5A364FFFCF3EBFFFFFFFFFFF3DEC9FFBD4C
      00FFBA4500FFF3DEC7FFEFBD8AFF511E15FFB04905FFEEBF90FFFCF4EBFFE28A
      3DFFE18434FFFFFFFFFFFFFFFFFFFFFFFFFFEDC59EFFE5AA74FFFFFFFFFFBD4C
      00FFBA4500FFF3DEC7FFEFBD8AFF7A2B03FF00000000006500FF009900FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FF009900FF006500FF00000000000000000512B4FF5A7BFCFF476BFDFF0032
      FBFF103BFBFFA1B4FEFFFFFFFFFFA4B6F8FF92A7F5FFFFFFFFFFB6C4F2FF1940
      D3FF032EC8FF0631C4FF0633C3FF0111A9FFB04804FFE9AA6DFFFFFFFFFFEDA4
      61FFEA9546FFF8DEC2FFF7DEC6FFD97320FFDC883EFFF7E3D1FFF7EADCFFBC4A
      00FFC05304FFFEFBF8FFE09751FF6A2307FFB04804FFE9AA6DFFFFFFFFFFEDA4
      61FFEA9345FFFFFFFFFFFFFFFFFFEDBA88FFD06612FFE3A66CFFFFFFFFFFBC4A
      00FFC05304FFFEFBF8FFE09751FF6A2307FF00000000006500FF009900FFF9F9
      F9FFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFF9F9
      F9FF009900FF006500FF00000000000000000002A0FF4969F3FF8FA6FFFF1E45
      FBFF4B6EFCFFFFFFFFFFA7B8FEFF0632F6FF0029EDFF8CA2F6FFFFFFFFFF617E
      E7FF0027D0FF0633CCFF062FC3FF00059FFFB04905FFDD893EFFFFFCF8FFFAD7
      B4FFF4A358FFFCE6D0FFF8E3CEFFE18434FFD7711FFFD37426FFE3AC77FFBB46
      00FFD99353FFFFFFFEFFBD590FFF7A2B03FFAD4401FFDD893EFFFFFCF8FFFAD7
      B4FFF4A55AFFFFFFFFFFF0BB87FFDE812FFFD56D1CFFE7AF79FFFFFFFFFFBA43
      00FFD99352FFFFFFFEFFBD590FFF511E15FF00000000006500FF009900FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FF009900FF006500FF000000000000000000000000192ECBFF99AFFFFF8BA2
      FEFF204CFBFF4C70FCFF0D3CFBFF002FFBFF0030F7FF0535F1FF4B6DF1FF0F3B
      E3FF0331DBFF0535D7FF031BB5FF0000000000000000C96417FFF8CEA5FFFFFF
      FFFFFED0A3FFF8BA7EFFEFAD6FFFE2883AFFD97829FFCE6411FFC04B00FFD079
      30FFFFFFFFFFEAAF72FF4F1E17FF0000000000000000C96417FFF8CEA5FFFFFF
      FFFFFED1A6FFF6A962FFEB9647FFE2893BFFD87625FFD77A2DFFD1772CFFD079
      31FFFFFFFFFFEAAF72FF893002FF0000000000000000006500FF009900FFF9F9
      F9FFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFF9F9
      F9FF009900FF006500FF0000000000000000000000000003A0FF405DECFFB8C7
      FFFF9CAFFDFF395BFCFF0939FBFF0234FBFF0234FBFF0032F9FF042EF2FF0534
      EBFF0436E9FF042BCDFF00039CFF0000000000000000B24600FFE0873AFFFEE5
      CBFFFFFFFFFFFAD3ACFFEDA15BFFE28B3EFFD97A2CFFD47729FFE1A46AFFFFFF
      FFFFF3CCA4FFAC4301FF893002FF0000000000000000B24600FFE0873AFFFEE5
      CBFFFFFFFFFFFAD5B1FFEDA562FFE28B3EFFD97A2CFFD37425FFDE9D61FFFFFF
      FFFFF3CCA4FFAC4301FF4F1E17FF0000000000000000006500FF009900FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FF009900FF006500FF000000000000000000000000000000000208A5FF415F
      ECFFA9BBFFFFBDCAFFFF8EA5FEFF6383FDFF4F72FCFF496DFDFF3860FDFF1343
      F9FF032BD7FF0008A2FF00000000000000000000000000000000B64B03FFDE87
      3AFFF8CEA3FFFFFAF3FFFFFFFFFFFEF6EEFFFCF3EAFFFFFFFFFFFEF7EEFFE6A5
      69FFAC4302FF592113FF00000000000000000000000000000000B64B03FFDE87
      3AFFF8CEA3FFFFFAF3FFFFFFFFFFFEF6EEFFFCF3EAFFFFFFFFFFFEF7EEFFE6A5
      69FFAC4302FF592113FF00000000000000000000000000000000006500FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FF006500FF0000000000000000000000000000000000000000000000000003
      A0FF1D31CDFF5775F6FF859EFEFF8BA3FFFF7894FEFF5275FCFF2249F0FF041D
      C5FF00039CFF000000000000000000000000000000000000000000000000AF44
      00FFC56317FFDC883FFFE9A76BFFEEBB89FFEBB581FFDC914CFFBD580EFF5C22
      14FF903301FF000000000000000000000000000000000000000000000000AF44
      00FFC56317FFDC883FFFE9A76BFFEEBB89FFEBB581FFDC914CFFBD580EFF9033
      01FF5C2214FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000003A0FF0816B6FF0F21C3FF0C1EC2FF0210B4FF00049FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A34002FFA54406FFA64507FF9E3F05FF8B3404FF742C0BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A34002FFA54406FFA64507FF9E3F05FF8B3404FF742C0BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006C7B94FF6E7B88FF0000000000000000000000000000
      0000000000000000000000000000000000000000000007740CFF07740CFF0774
      0CFF07740CFF0000000000000000000000000000000000000000000000000000
      00000000000000000000993200FF993200FF993200FF993200FF993200FF9932
      00FF993200FF993200FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C7EA9FF0D80
      AAFF0C7EA9FF0D80AAFF0D80AAFF0F81ABFF0000000000000000000000000000
      000000000000778295FF1E89E0FF58A9DCFF00000000000000000D80AAFF0D80
      AAFF0D80AAFF0D80AAFF0D80AAFF0D80AAFF0000000007740CFF12AA21FF0FA6
      1CFF07740CFF00000000000000000000000000000000000000000D80AAFF0D80
      AAFF0D80AAFF0D80AAFF993200FFFDFEFEFFFDFEFEFFFDFEFEFF8EA4FDFFB8C6
      FDFFFDFEFEFF993200FF00000000000000000000000000000000000000000C80
      AAFF0C80AAFF0C80AAFF0C80AAFF0C80AAFF0C80AAFF00000000000000000000
      00000000000000000000000000000000000000000000038CB9FF47D5EEFF21D7
      FCFF34D8FDFF6EE6FFFF8DE6FAFF43BADDFF0D80AAFF00000000000000000000
      0000778295FF1F87DEFF4DB7FFFF56AEF4FF00000000068DBBFF48D5EEFF22D7
      FEFF35D8FDFF6EE6FFFF8DE7FAFF43BADDFF0D80AAFF07740CFF19B12CFF12AA
      21FF07740CFF00000000000000000000000000000000068DBBFF48D5EEFF22D7
      FEFF35D9FEFF6EE6FFFF993200FFFDFEFEFFFDFEFEFF7D98FCFF0234FBFF5879
      FCFFFDFEFEFF993200FF00000000000000000000000000000000068DBBFF48D5
      EEFF22D6FDFF35D9FEFF6EE6FFFF8DE7FAFF43BADDFF0C80AAFF000000000000
      000000000000000000000000000000000000038CB9FF8CFAFDFF57E9FDFF21D7
      FCFF34D8FDFF6FE6FFFF8DE6FAFF49BFE0FF0E9DCEFF1080A7FF000000008B86
      97FF1E7DCEFF4DB7FFFF56AEF4FF00000000068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D8FDFF6EE6FFFF07740CFF07740CFF07740CFF07740CFF24BD3DFF1BB4
      30FF07740CFF07740CFF07740CFF07740CFF068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D9FEFF6EE6FFFF993200FFD6DEFEFF4267FCFF0234FBFF4267FCFF0234
      FBFFD9E0FEFF993200FF000000000000000000000000068DBBFF8CFBFEFF58EA
      FEFF22D6FDFF34D3F7FF00009AFF00009AFF00009AFF00009AFF00009AFF0000
      9AFF00009AFF00009AFF0000000000000000078EBCFF8CFAFDFF57E9FDFF21D7
      FCFF34D8FDFF74D3E9FFB19794FFC2A69AFFC6AEA0FFAE877BFF8C6A6BFF5F92
      BDFF4DB7FFFF4DB7FFFF0000000000000000068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D8FDFF6EE6FFFF07740CFF3BD461FF34CE58FF2FC951FF2BC348FF25BE
      40FF24BD3DFF19B12CFF16AF29FF07740CFF068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D9FEFF6EE6FFFF993200FF5173FCFF1341FBFFBCC9FDFFEFF2FEFF1946
      FBFF4E71FCFF973203FF000000000000000000000000068DBBFF8CFBFEFF58EA
      FEFF22D6FDFF34D3F7FF00009AFF3D6DFFFF275AFFFF1147FFFF0135FFFF0028
      F9FF001CECFF00009AFF0000000000000000078EBCFF8CFAFDFF57E9FDFF23D8
      FDFF45C6E4FFAB9395FFECDDCCFFFEFED6FFFFFFE4FFF7F2D9FFCFB7A1FFAD85
      80FF4DB7FFFF000000000000000000000000068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D8FDFF6EE6FFFF07740CFF40DA6CFF40DA6CFF37D15DFF34CE58FF2BC3
      48FF29C146FF24BD3DFF1FB835FF07740CFF068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D9FEFF6EE6FFFF993200FFE4EAFEFFD9E0FEFFFDFEFEFFFDFEFEFF98AC
      FDFF0234FBFF633358FF000000000000000000000000068DBBFF8CFBFEFF58EA
      FEFF22D6FDFF34D4F8FF00009AFF4373FFFF3163FFFF1A4FFFFF073BFFFF0028
      F9FF0021F1FF00009AFF0000000000000000038CB9FFB4FFFFFFB6F6FFFFC6F5
      FFFFB5A09FFFE8DDD6FFFFFFF4FFFEFED6FFFFFEDDFFFEFED6FFFFF2BAFFCAA0
      8CFF00000000000000000000000000000000068DBBFFB3FCFEFFB6F6FFFFC6F5
      FFFFE3FAFFFFE9F9FDFF07740CFF07740CFF07740CFF07740CFF3ED867FF3BD4
      61FF07740CFF07740CFF07740CFF07740CFF068DBBFFB3FCFEFFB6F6FFFFC6F5
      FFFFE3FAFFFFEBFBFFFF993200FFFDFEFEFFFDFEFEFFFDFEFEFFFDFEFEFFFDFE
      FEFF5173FCFF0234FBFF000000000000000000000000068DBBFFB3FCFEFFB6F6
      FFFFC6F5FFFFE1F8FDFF00009AFF00009AFF00009AFF00009AFF00009AFF0000
      9AFF00009AFF00009AFF0000000000000000038CB9FFB8EDF6FF2FBCDCFF10A7
      D1FF9C9190FFFFFFE4FFFFFEDDFFFEFED6FFFFFEDDFFFCF5CDFFF8D098FFECD1
      ACFFAD8580FF000000000000000000000000068DBBFFBAEEF6FF2FBCDDFF10A7
      D2FF119FCBFF1FA1CAFF34A7CDFF2592BFFF92CEE4FF07740CFF44DD70FF40DA
      6CFF07740CFF000000000000000000000000068DBBFFBAEEF6FF2FBCDDFF10A7
      D2FF119FCBFF1FA2CBFF993200FF993200FF993200FF993200FF993200FF9932
      00FF8F3210FF2134C8FF0234FBFF0000000000000000068DBBFFBAEEF6FF2FBC
      DDFF10A7D2FF119ECAFF1FA2CBFF34A7CDFF2592BFFF92CEE4FF0C80AAFF0000
      000000000000000000000000000000000000078EBCFF4AC6DCFF57E9FDFF21D7
      FCFFA49E99FFFFFEDDFFFFFEDDFFFFFEDDFFFFFEDDFFF6DAABFFF3BE80FFF5DE
      B5FFAD8580FF000000000000000000000000068DBBFF49C5DDFF58EAFEFF22D7
      FEFF35D8FDFF6EE6FFFF8DE7FAFF48C1E3FF0582B6FF07740CFF4CE67EFF4CE6
      7EFF07740CFF000000000000000000000000068DBBFF49C5DDFF58EAFEFF22D7
      FEFF35D9FEFF6EE6FFFF8DE7FAFF48C1E3FF0582B6FF0D80AAFF000000000000
      000000000000000000000234FBFF0234FBFF00000000068DBBFF49C5DDFF58EA
      FEFF22D6FDFF35D9FEFF6EE6FFFF8DE7FAFF48C1E3FF0582B6FF0C80AAFF0000
      000000000000000000000000000000000000038CB9FF8CFAFDFF57E9FDFF23D8
      FDFF969594FFFAF6D6FFFFFEDDFFFAF6D6FFF9E1B1FFF5CB9AFFFEEAB9FFE4CC
      A9FFAD8580FF000000000000000000000000068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D8FDFF6EE6FFFF8DE7FAFF48C1E3FF079CCEFF07740CFF07740CFF0774
      0CFF07740CFF000000000000000000000000068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D9FEFF6EE6FFFF8DE7FAFF48C1E3FF079DCFFF0D80AAFF000000000000
      00000000000000000000000000000234FBFF00000000068DBBFF8CFBFEFF58EA
      FEFF22D6FDFF35D9FEFF6EE6FFFF8DE7FAFF48C1E3FF079DCFFF0C80AAFF0000
      000000000000000000000000000000000000038CB9FF8CFAFDFF57E9FDFF23D8
      FDFF5DA8BEFFD3BBA2FFFFF7C6FFF8D098FFF4C88EFFFEF7E0FFF9F6F2FFAD85
      80FF00000000000000000000000000000000068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D8FDFF6EE6FFFF8DE7FAFF48C1E3FF079CCEFF0D7EA9FF000000000000
      000000000000000000000000000000000000068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D9FEFF6EE6FFFF8DE7FAFF48C1E3FF079DCFFF0D80AAFF000000000000
      00000000000000000000000000000000000000000000068DBBFF8CFBFEFF58EA
      FEFF22D6FDFF35D9FEFF6EE6FFFF8DE7FAFF48C1E3FF079DCFFF0C80AAFF0000
      000000000000000000000000000000000000038CB9FF8CFAFDFF57E9FDFF23D8
      FDFF38D7FBFF8AA5ADFFCDAC93FFECD1ACFFF5E1B6FFDAC5B7FFAD8580FFAD85
      80FF00000000000000000000000000000000068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D8FDFF6EE6FFFF8DE7FAFF48C1E3FF079CCEFF0D80AAFF000000000000
      000000000000000000000000000000000000068DBBFF8CFBFEFF58EAFEFF22D7
      FEFF35D9FEFF6EE6FFFF8DE7FAFF48C1E3FF079DCFFF0D80AAFF000000000000
      00000000000000000000000000000000000000000000068DBBFF8CFBFEFF58EA
      FEFF22D6FDFF35D9FEFF6EE6FFFF8DE7FAFF48C1E3FF079DCFFF0C80AAFF0000
      000000000000000000000000000000000000078EBCFF8CFAFDFF81F8FEFF70F9
      FEFF7AFFFFFF97FCFDFFA1C6C8FF8F989BFF868388FF876F6FFF000000000000
      000000000000000000000000000000000000068DBBFF91FCFEFF82F8FFFF6EF8
      FFFF79FEFFFF91FCFEFFA0FCFEFF62DAF5FF0CA2D4FF0D80AAFF000000000000
      000000000000000000000000000000000000068DBBFF91FCFEFF82F8FFFF6EF8
      FFFF79FEFFFF91FCFEFFA0FCFEFF62DAF5FF0CA2D4FF0D80AAFF000000000000
      00000000000000000000000000000000000000000000068DBBFF91FCFEFF82F8
      FFFF6EF8FFFF79FEFFFF91FCFEFFA0FCFEFF62DAF5FF0CA2D4FF0C80AAFF0000
      000000000000000000000000000000000000038CB9FFFBFFFFFFF5FFFEFFD2FF
      FFFFB4FFFFFFADFFFEFFADFFFEFFADFFFEFF70F9FEFF0D80AAFF000000000000
      000000000000000000000000000000000000068DBBFFFCFFFFFFF4FFFFFFD3FF
      FFFFB3FCFEFFB3FCFEFFADFFFFFFADFFFFFF6EF8FFFF0D80AAFF000000000000
      000000000000000000000000000000000000068DBBFFFDFEFEFFF4FFFFFFD3FF
      FFFFB3FCFEFFB3FCFEFFADFFFFFFADFFFFFF6EF8FFFF0D80AAFF000000000000
      00000000000000000000000000000000000000000000068DBBFFFCFFFFFFF4FF
      FFFFD3FFFFFFB3FCFEFFB3FCFEFFADFFFFFFADFFFFFF6EF8FFFF0C80AAFF0000
      000000000000000000000000000000000000000000000991C1FFF5FFFEFFE3FE
      FFFFC6FEFFFFADFFFEFFA7FFFFFF9BFBFDFF1185B0FF00000000000000000000
      000000000000000000000000000000000000000000000B92C0FFF4FFFFFFE3FA
      FFFFC7FFFFFFADFFFFFFA0FCFEFF9BFBFCFF1285AFFF00000000000000000000
      000000000000000000000000000000000000000000000B92C0FFF4FFFFFFE3FA
      FFFFC7FFFFFFADFFFFFFA0FCFEFF9BFBFCFF1285AFFF00000000000000000000
      00000000000000000000000000000000000000000000000000000B92C0FFF4FF
      FFFFE1F8FDFFC7FFFFFFADFFFFFFA0FCFEFF9BFBFCFF1285AFFF000000000000
      0000000000000000000000000000000000000000000000000000078EBCFF078E
      BCFF038CB9FF078EBCFF078EBCFF078EBCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000068DBBFF068D
      BBFF068DBBFF068DBBFF068DBBFF068DBBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000068DBBFF068D
      BBFF068DBBFF068DBBFF068DBBFF068DBBFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000068D
      BBFF068DBBFF068DBBFF068DBBFF068DBBFF068DBBFF00000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 664
    Top = 368
  end
  inherited QUltimoCodigo: TSQLQuery
    Params = <
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
    SQL.Strings = (
      'select Max(c.Codigo) as Codigo from Clientes c'
      'where c.sucursal = :sucursal or :sucursal = -1')
    Left = 24
    Top = 552
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 792
    Top = 304
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 296
    Top = 120
  end
  inherited QBrowse2: TFDQuery
    Left = 40
    Top = 504
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 104
    Top = 552
  end
  object frDBDSClientes: TfrxDBDataset
    UserName = 'frDBDSClientes'
    CloseDataSource = True
    DataSource = DatosClientes.DSLstClientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 568
    Top = 528
    FieldDefs = <
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'RAZON_SOCIAL'
        FieldAlias = 'RAZON_SOCIAL'
      end
      item
        FieldName = 'DIRECCION_COMERCIAL'
        FieldAlias = 'DIRECCION_COMERCIAL'
      end
      item
        FieldName = 'TELEFONO_COMERCIAL_1'
        FieldAlias = 'TELEFONO_COMERCIAL_1'
      end
      item
        FieldName = 'TELEFONO_COMERCIAL_2'
        FieldAlias = 'TELEFONO_COMERCIAL_2'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'NRO_DE_CUIT'
        FieldAlias = 'NRO_DE_CUIT'
      end
      item
        FieldName = 'ZONA'
        FieldAlias = 'ZONA'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
      end
      item
        FieldName = 'CORREOELECTRONICO'
        FieldAlias = 'CORREOELECTRONICO'
      end
      item
        FieldName = 'CONTACTO'
        FieldAlias = 'CONTACTO'
      end
      item
        FieldName = 'TELEFONO_CONTACTO'
        FieldAlias = 'TELEFONO_CONTACTO'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldAlias = 'MUESTRAVENDEDOR'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'MUESTRAZONA'
        FieldAlias = 'MUESTRAZONA'
      end
      item
        FieldName = 'MUESTRAINSCRIPCION'
        FieldAlias = 'MUESTRAINSCRIPCION'
      end
      item
        FieldName = 'MUESTRACOBRADOR'
        FieldAlias = 'MUESTRACOBRADOR'
      end
      item
        FieldName = 'TELEDISCADO'
        FieldAlias = 'TELEDISCADO'
      end
      item
        FieldName = 'CATEGORIA'
        FieldAlias = 'CATEGORIA'
      end
      item
        FieldName = 'MUESTRATIPOSERVICIO'
        FieldAlias = 'MUESTRATIPOSERVICIO'
      end
      item
        FieldName = 'TELEFONO_CELULAR'
        FieldAlias = 'TELEFONO_CELULAR'
      end
      item
        FieldName = 'LISTAPRECIOS'
        FieldAlias = 'LISTAPRECIOS'
      end
      item
        FieldName = 'NRODOCUMENTO'
        FieldAlias = 'NRODOCUMENTO'
      end
      item
        FieldName = 'TIPODOCUMENTO'
        FieldAlias = 'TIPODOCUMENTO'
      end
      item
        FieldName = 'MUESTRAPRESTADOR'
        FieldAlias = 'MUESTRAPRESTADOR'
      end
      item
        FieldName = 'OBSERVACIONES1'
        FieldAlias = 'OBSERVACIONES1'
      end
      item
        FieldName = 'OBSERVACIONES2'
        FieldAlias = 'OBSERVACIONES2'
      end
      item
        FieldName = 'CON_MONITOREO'
        FieldAlias = 'CON_MONITOREO'
      end
      item
        FieldName = 'CON_HOSTING'
        FieldAlias = 'CON_HOSTING'
      end
      item
        FieldName = 'CON_GPRS'
        FieldAlias = 'CON_GPRS'
      end
      item
        FieldName = 'TARJETA_CLIENTE'
        FieldAlias = 'TARJETA_CLIENTE'
      end
      item
        FieldName = 'MUESTRACOMPCTACTA'
        FieldAlias = 'MUESTRACOMPCTACTA'
      end
      item
        FieldName = 'MUESTRAGRUPOABONADO'
        FieldAlias = 'MUESTRAGRUPOABONADO'
      end
      item
        FieldName = 'MUESTRATC'
        FieldAlias = 'MUESTRATC'
      end
      item
        FieldName = 'NUMEROTARJETA'
        FieldAlias = 'NUMEROTARJETA'
      end
      item
        FieldName = 'NUMMEROSEGURIDADTC'
        FieldAlias = 'NUMMEROSEGURIDADTC'
      end
      item
        FieldName = 'VENCIMIENTOTC'
        FieldAlias = 'VENCIMIENTOTC'
      end
      item
        FieldName = 'FECHAULTIMACOMPRA'
        FieldAlias = 'FECHAULTIMACOMPRA'
      end
      item
        FieldName = 'CUENTA_OPERATIVA'
        FieldAlias = 'CUENTA_OPERATIVA'
      end
      item
        FieldName = 'MUESTRALISTAPRECIOS'
        FieldAlias = 'MUESTRALISTAPRECIOS'
      end>
  end
  object frClientes: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.367368518510000000
    ReportOptions.LastChange = 39638.367368518510000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 476
    Top = 432
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
  object PopupMenu1: TPopupMenu
    Left = 143
    Top = 138
    object Imprimir1: TMenuItem
      Action = Imprimir
    end
    object ImprimirFicha1: TMenuItem
      Action = ImprimirFicha
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FormatearCuit1: TMenuItem
      Action = FormatearCuit
    end
  end
  object frDBConVentas: TfrxDBDataset
    UserName = 'frDBConVentas'
    CloseDataSource = True
    DataSet = DatosClientes.CDSLstCondVenta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 240
    Top = 560
    FieldDefs = <
      item
        FieldName = 'CODIGOCLIENTE'
        FieldAlias = 'CODIGOCLIENTE'
      end
      item
        FieldName = 'CODIGOPAGO'
        FieldAlias = 'CODIGOPAGO'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'POR_DEFECTO'
        FieldAlias = 'POR_DEFECTO'
      end
      item
        FieldName = 'MUESTRATIPOPAGO'
        FieldAlias = 'MUESTRATIPOPAGO'
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
    Left = 696
    Top = 320
  end
  object dlgSave1: TSaveDialog
    Title = 'Clientes'
    Left = 641
    Top = 306
  end
  object DataToXLS1: TDataToXLS
    DataSet = DatosClientes.CDSLstClientes
    Columns = <
      item
        DataField = 'CODIGO'
        Title = 'Codigo'
      end
      item
        DataField = 'NOMBRE'
        Title = 'Nombre'
      end
      item
        DataField = 'RAZON_SOCIAL'
        Title = 'Razon Social'
      end
      item
        DataField = 'DIRECCION_COMERCIAL'
        Title = 'Direccion'
      end
      item
        DataField = 'TELEFONO_COMERCIAL_1'
        Title = 'Telefono 1'
      end
      item
        DataField = 'TELEFONO_COMERCIAL_2'
        Title = 'Telefono 2'
      end
      item
        DataField = 'SUCURSAL'
        Title = 'SUCURSAL'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'NRO_DE_CUIT'
        Title = 'Nro.Cuit'
      end
      item
        DataField = 'ZONA'
        Title = 'Id Zona'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'VENDEDOR'
        Title = 'Cod.Vendedor'
      end
      item
        DataField = 'CORREOELECTRONICO'
        Title = 'e mail'
      end
      item
        DataField = 'CONTACTO'
        Title = 'Contacto'
      end
      item
        DataField = 'TELEFONO_CONTACTO'
        Title = 'Contacto Te'
      end
      item
        DataField = 'OBSERVACIONES'
        Title = 'Obs.'
      end
      item
        DataField = 'CPOSTAL'
        Title = 'C.Postal'
      end
      item
        DataField = 'LOCALIDAD'
        Title = 'Localidad'
      end
      item
        DataField = 'MUESTRAVENDEDOR'
        Title = 'Nom.Vendedor'
      end
      item
        DataField = 'MUESTRASUCURSAL'
        Title = 'Sucursal'
      end
      item
        DataField = 'MUESTRAZONA'
        Title = 'Zona'
      end
      item
        DataField = 'MUESTRAINSCRIPCION'
        Title = 'Cond.IVA'
      end
      item
        DataField = 'MUESTRACOBRADOR'
        Title = 'Nom.Cobrador'
      end
      item
        DataField = 'TELEDISCADO'
        Title = 'Telediscado'
      end
      item
        DataField = 'CATEGORIA'
        Title = 'Categoria'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'MUESTRATIPOSERVICIO'
        Title = 'Tipo Servicio'
      end
      item
        DataField = 'TELEFONO_CELULAR'
        Title = 'Te.Celular'
      end
      item
        DataField = 'LISTAPRECIOS'
        Title = 'Lista'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'NRODOCUMENTO'
        Title = 'Nro Documento'
      end
      item
        DataField = 'TIPODOCUMENTO'
        Title = 'Tipo Doc'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'MUESTRAPRESTADOR'
        Title = 'Prestador'
      end
      item
        DataField = 'OBSERVACIONES1'
        Title = 'Observaciones 1'
      end
      item
        DataField = 'OBSERVACIONES2'
        Title = 'Observaciones 2'
      end
      item
        DataField = 'CON_MONITOREO'
        Title = 'Con Monitoreo'
      end
      item
        DataField = 'CON_HOSTING'
        Title = 'Con Hosting'
      end
      item
        DataField = 'CON_GPRS'
        Title = 'Con Gprs'
      end
      item
        DataField = 'TARJETA_CLIENTE'
        Title = 'Tarjeta Cliente'
      end
      item
        DataField = 'MUESTRACOMPCTACTA'
        Title = 'Comprob.Cta.Cte'
      end
      item
        DataField = 'MUESTRAGRUPOABONADO'
        Title = 'Grupo Abono'
      end
      item
        DataField = 'MUESTRATC'
        Title = 'Tarjeta de Cre.'
      end
      item
        DataField = 'NUMEROTARJETA'
        Title = 'Nro de Tarjeta'
      end
      item
        DataField = 'NUMMEROSEGURIDADTC'
        Title = 'Cod.Segurirdad'
      end
      item
        DataField = 'VENCIMIENTOTC'
        Title = 'Vto. T.C'
      end
      item
        DataField = 'FECHAULTIMACOMPRA'
        Title = 'Ult.Compra'
      end
      item
        DataField = 'CUENTA_OPERATIVA'
        Title = 'Cta.Operativa'
      end
      item
        DataField = 'MUESTRALISTAPRECIOS'
        Title = 'Lst de Prcecios'
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
    Left = 441
    Top = 574
  end
  object DSContrato: TDataSource
    DataSet = DatosClientes.CDSContrato
    Left = 216
    Top = 288
  end
  object frDbContrato: TfrxDBDataset
    UserName = 'frDbContrato'
    CloseDataSource = False
    DataSource = DSContrato
    BCDToCurrency = False
    DataSetOptions = []
    Left = 656
    Top = 520
    FieldDefs = <
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'NRO_CONTRATO'
        FieldAlias = 'NRO_CONTRATO'
      end
      item
        FieldName = 'TIPO_SERVICIO'
        FieldAlias = 'TIPO_SERVICIO'
      end
      item
        FieldName = 'FECHA_SOLICITUD'
        FieldAlias = 'FECHA_SOLICITUD'
      end
      item
        FieldName = 'FECHA_INSTALACION'
        FieldAlias = 'FECHA_INSTALACION'
      end
      item
        FieldName = 'INCIO_SERVICIO'
        FieldAlias = 'INCIO_SERVICIO'
      end
      item
        FieldName = 'LUGAR_INSTALACION'
        FieldAlias = 'LUGAR_INSTALACION'
      end
      item
        FieldName = 'COSTO_INICAL'
        FieldAlias = 'COSTO_INICAL'
      end
      item
        FieldName = 'OBS'
        FieldAlias = 'OBS'
      end>
  end
  object frDBClienteFicha: TfrxDBDataset
    UserName = 'frDBClienteFicha'
    CloseDataSource = False
    DataSet = DatosClientes.CDSClientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 360
    Top = 528
    FieldDefs = <
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'NRO_DE_CUIT'
        FieldAlias = 'NRO_DE_CUIT'
      end
      item
        FieldName = 'ID_COD_POSTAL'
        FieldAlias = 'ID_COD_POSTAL'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
      end
      item
        FieldName = 'COBRADOR'
        FieldAlias = 'COBRADOR'
      end
      item
        FieldName = 'RAZON_SOCIAL'
        FieldAlias = 'RAZON_SOCIAL'
      end
      item
        FieldName = 'DIRECCION_PARTICULAR'
        FieldAlias = 'DIRECCION_PARTICULAR'
      end
      item
        FieldName = 'DIRECCION_COMERCIAL'
        FieldAlias = 'DIRECCION_COMERCIAL'
      end
      item
        FieldName = 'TELEFONO_PARTICULAR'
        FieldAlias = 'TELEFONO_PARTICULAR'
      end
      item
        FieldName = 'TELEFONO_COMERCIAL_1'
        FieldAlias = 'TELEFONO_COMERCIAL_1'
      end
      item
        FieldName = 'TELEFONO_COMERCIAL_2'
        FieldAlias = 'TELEFONO_COMERCIAL_2'
      end
      item
        FieldName = 'TELEFONO_CELULAR'
        FieldAlias = 'TELEFONO_CELULAR'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'CONDICION_IVA'
        FieldAlias = 'CONDICION_IVA'
      end
      item
        FieldName = 'EMITE_REMITO'
        FieldAlias = 'EMITE_REMITO'
      end
      item
        FieldName = 'EMITE_FACTURA'
        FieldAlias = 'EMITE_FACTURA'
      end
      item
        FieldName = 'ACTIVO'
        FieldAlias = 'ACTIVO'
      end
      item
        FieldName = 'LIMITE_CREDITO'
        FieldAlias = 'LIMITE_CREDITO'
      end
      item
        FieldName = 'SALDOINICIAL'
        FieldAlias = 'SALDOINICIAL'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'FECHAULTIMACOMPRA'
        FieldAlias = 'FECHAULTIMACOMPRA'
      end
      item
        FieldName = 'FECHAALTA'
        FieldAlias = 'FECHAALTA'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'ZONA'
        FieldAlias = 'ZONA'
      end
      item
        FieldName = 'ULTIMOPAGO'
        FieldAlias = 'ULTIMOPAGO'
      end
      item
        FieldName = 'LISTAPRECIOS'
        FieldAlias = 'LISTAPRECIOS'
      end
      item
        FieldName = 'FECHANACIMIENTO'
        FieldAlias = 'FECHANACIMIENTO'
      end
      item
        FieldName = 'TIPODOCUMENTO'
        FieldAlias = 'TIPODOCUMENTO'
      end
      item
        FieldName = 'NRODOCUMENTO'
        FieldAlias = 'NRODOCUMENTO'
      end
      item
        FieldName = 'CORREOELECTRONICO'
        FieldAlias = 'CORREOELECTRONICO'
      end
      item
        FieldName = 'ID_FACTURAPORDEFECTO'
        FieldAlias = 'ID_FACTURAPORDEFECTO'
      end
      item
        FieldName = 'ID_FACTURACONTADOPORDEFECTO'
        FieldAlias = 'ID_FACTURACONTADOPORDEFECTO'
      end
      item
        FieldName = 'ID_NOTADEBITOPORDEFECTO'
        FieldAlias = 'ID_NOTADEBITOPORDEFECTO'
      end
      item
        FieldName = 'ID_NOTACREDITOPORDEFECTO'
        FieldAlias = 'ID_NOTACREDITOPORDEFECTO'
      end
      item
        FieldName = 'ID_TIKETPORDEFECTO'
        FieldAlias = 'ID_TIKETPORDEFECTO'
      end
      item
        FieldName = 'PERCIBIR_IB'
        FieldAlias = 'PERCIBIR_IB'
      end
      item
        FieldName = 'INSCRIPTO_MULTICONVENIO'
        FieldAlias = 'INSCRIPTO_MULTICONVENIO'
      end
      item
        FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
        FieldAlias = 'FECHA_VENCIMI_DDJJ_MULTI'
      end
      item
        FieldName = 'CONTACTO'
        FieldAlias = 'CONTACTO'
      end
      item
        FieldName = 'TELEFONO_CONTACTO'
        FieldAlias = 'TELEFONO_CONTACTO'
      end
      item
        FieldName = 'CATEGORIA'
        FieldAlias = 'CATEGORIA'
      end
      item
        FieldName = 'LONGITUD'
        FieldAlias = 'LONGITUD'
      end
      item
        FieldName = 'LATITUD'
        FieldAlias = 'LATITUD'
      end
      item
        FieldName = 'DIRECCION_CALLE'
        FieldAlias = 'DIRECCION_CALLE'
      end
      item
        FieldName = 'DIRECCION_NUMERO'
        FieldAlias = 'DIRECCION_NUMERO'
      end
      item
        FieldName = 'DIRECCION_PISO'
        FieldAlias = 'DIRECCION_PISO'
      end
      item
        FieldName = 'DIRECCION_DEPTO'
        FieldAlias = 'DIRECCION_DEPTO'
      end
      item
        FieldName = 'DEUDAMAYOR30'
        FieldAlias = 'DEUDAMAYOR30'
      end
      item
        FieldName = 'MUESTRATELEDISCADO'
        FieldAlias = 'MUESTRATELEDISCADO'
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldAlias = 'MUESTRAVENDEDOR'
      end
      item
        FieldName = 'MUESTRACOBRADOR'
        FieldAlias = 'MUESTRACOBRADOR'
      end
      item
        FieldName = 'TIPOABONO'
        FieldAlias = 'TIPOABONO'
      end
      item
        FieldName = 'FECHA_INCIO_FC_ABONO'
        FieldAlias = 'FECHA_INCIO_FC_ABONO'
      end
      item
        FieldName = 'MES_ABONOANUAL'
        FieldAlias = 'MES_ABONOANUAL'
      end
      item
        FieldName = 'FRANQUICIA'
        FieldAlias = 'FRANQUICIA'
      end
      item
        FieldName = 'DIAS_MAYOR_30'
        FieldAlias = 'DIAS_MAYOR_30'
      end
      item
        FieldName = 'ID_DEPOSITO_FRANQUICIA'
        FieldAlias = 'ID_DEPOSITO_FRANQUICIA'
      end
      item
        FieldName = 'ID_TRANSPORTE'
        FieldAlias = 'ID_TRANSPORTE'
      end
      item
        FieldName = 'IMPRIME_SALDOFACTURA'
        FieldAlias = 'IMPRIME_SALDOFACTURA'
      end
      item
        FieldName = 'CORTAR_SERVICIO'
        FieldAlias = 'CORTAR_SERVICIO'
      end
      item
        FieldName = 'CON_PLANPAGO'
        FieldAlias = 'CON_PLANPAGO'
      end
      item
        FieldName = 'DIRECCION_POSTAL'
        FieldAlias = 'DIRECCION_POSTAL'
      end
      item
        FieldName = 'CALLE_1'
        FieldAlias = 'CALLE_1'
      end
      item
        FieldName = 'CALLE_2'
        FieldAlias = 'CALLE_2'
      end
      item
        FieldName = 'VENDER_DE_CTDO'
        FieldAlias = 'VENDER_DE_CTDO'
      end
      item
        FieldName = 'CORREOELECTRONICO_2'
        FieldAlias = 'CORREOELECTRONICO_2'
      end
      item
        FieldName = 'PRESENTO_F8001'
        FieldAlias = 'PRESENTO_F8001'
      end
      item
        FieldName = 'DESDE_F8001'
        FieldAlias = 'DESDE_F8001'
      end
      item
        FieldName = 'HASTA_F8001'
        FieldAlias = 'HASTA_F8001'
      end
      item
        FieldName = 'ID_TARJETACREDITO'
        FieldAlias = 'ID_TARJETACREDITO'
      end
      item
        FieldName = 'NRO_TARJETA_C'
        FieldAlias = 'NRO_TARJETA_C'
      end
      item
        FieldName = 'NRO_SEG_TC'
        FieldAlias = 'NRO_SEG_TC'
      end
      item
        FieldName = 'ID_BANCO'
        FieldAlias = 'ID_BANCO'
      end
      item
        FieldName = 'NRO_CTA_BCO'
        FieldAlias = 'NRO_CTA_BCO'
      end
      item
        FieldName = 'CODIGO_COORPORATIVO'
        FieldAlias = 'CODIGO_COORPORATIVO'
      end
      item
        FieldName = 'MUESTRACTACOORPORATIVA'
        FieldAlias = 'MUESTRACTACOORPORATIVA'
      end
      item
        FieldName = 'CUENTA_OPERATIVA'
        FieldAlias = 'CUENTA_OPERATIVA'
      end
      item
        FieldName = 'TARJETA_CLIENTE'
        FieldAlias = 'TARJETA_CLIENTE'
      end
      item
        FieldName = 'VENCIMIENTO_TC'
        FieldAlias = 'VENCIMIENTO_TC'
      end
      item
        FieldName = 'FOTO'
        FieldAlias = 'FOTO'
      end
      item
        FieldName = 'CON_MONITOREO'
        FieldAlias = 'CON_MONITOREO'
      end
      item
        FieldName = 'CON_GPRS'
        FieldAlias = 'CON_GPRS'
      end
      item
        FieldName = 'CON_HOSTING'
        FieldAlias = 'CON_HOSTING'
      end
      item
        FieldName = 'COMUNITARIO'
        FieldAlias = 'COMUNITARIO'
      end
      item
        FieldName = 'ID_PRESTADOR'
        FieldAlias = 'ID_PRESTADOR'
      end
      item
        FieldName = 'ID_RECIBOPORDEFECTO'
        FieldAlias = 'ID_RECIBOPORDEFECTO'
      end
      item
        FieldName = 'NOMBRE_COMPLETO'
        FieldAlias = 'NOMBRE_COMPLETO'
      end
      item
        FieldName = 'MES_ADICIONAL'
        FieldAlias = 'MES_ADICIONAL'
      end
      item
        FieldName = 'MES_SEMESTRAL'
        FieldAlias = 'MES_SEMESTRAL'
      end
      item
        FieldName = 'MOROSO'
        FieldAlias = 'MOROSO'
      end
      item
        FieldName = 'PLANTILLA_CIVA'
        FieldAlias = 'PLANTILLA_CIVA'
      end
      item
        FieldName = 'OBSERVACIONES1'
        FieldAlias = 'OBSERVACIONES1'
      end
      item
        FieldName = 'OBSERVACIONES2'
        FieldAlias = 'OBSERVACIONES2'
      end
      item
        FieldName = 'AVISO'
        FieldAlias = 'AVISO'
      end
      item
        FieldName = 'RUBRO'
        FieldAlias = 'RUBRO'
      end
      item
        FieldName = 'MUESTRAIDGARANTE'
        FieldAlias = 'MUESTRAIDGARANTE'
      end
      item
        FieldName = 'ID_PLANTILLA'
        FieldAlias = 'ID_PLANTILLA'
      end
      item
        FieldName = 'ENVIAR_CPTE_MAIL'
        FieldAlias = 'ENVIAR_CPTE_MAIL'
      end
      item
        FieldName = 'NRO_IP'
        FieldAlias = 'NRO_IP'
      end
      item
        FieldName = 'CHEQUES'
        FieldAlias = 'CHEQUES'
      end
      item
        FieldName = 'ID_ADMINISTRACION'
        FieldAlias = 'ID_ADMINISTRACION'
      end>
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.pdf'
    Filter = 'Acrobat File|*.pdf'
    Title = 'Archivos Pdf'
    Left = 240
    Top = 528
  end
  object DSGarantes: TDataSource
    AutoEdit = False
    DataSet = DatosClientes.CDSClientesGarantes
    Left = 760
    Top = 568
  end
  object DataToXLS2: TDataToXLS
    DataSet = DatosClientes.CDSCtrMorosos
    Columns = <
      item
        DataField = 'CLIENTE'
        Title = 'Codigo'
      end
      item
        DataField = 'NOMBRE'
        Title = 'Nombre'
      end
      item
        DataField = 'DIRECCION_COMERCIAL'
        Title = 'Direccion'
      end
      item
        DataField = 'SUM'
        Title = 'Saldo'
        Alignment = taRightJustify
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
    Left = 745
    Top = 518
  end
  object ComBuscadorVendedor: TComBuscador
    Data = DatosClientes.CDSBuscaVendedor
    Campo = 'CODIGO'
    Titulo = 'Vendedores'
    rOk = False
    Left = 308
    Top = 96
  end
  object ComBuscadorCobradores: TComBuscador
    Data = DatosClientes.CDSBuscaCobrador
    Campo = 'CODIGO'
    Titulo = 'Cobradores'
    rOk = False
    Left = 344
    Top = 90
  end
  object ComBuscadorLocalidades: TComBuscador
    Data = DatosClientes.CDSBuscaCPostal
    Campo = 'ID_POSTAL'
    Titulo = 'Localidades'
    rOk = False
    Left = 328
    Top = 162
  end
  object ComBuscadorConVenta: TComBuscador
    Data = DatosClientes.CDSBuscaFPago
    Campo = 'CODIGO'
    Titulo = 'Condiciones de Pago'
    rOk = False
    Left = 360
    Top = 90
  end
  object ComBuscadorGrupos: TComBuscador
    Data = DatosClientes.CDSBuscaGrupoAbonos
    Campo = 'ID'
    Titulo = 'Grupos de Abonados'
    rOk = False
    Left = 232
    Top = 98
  end
  object DSObraSocial: TDataSource
    Left = 776
    Top = 376
  end
  object FDMTCliente: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 768
    Top = 56
    object FDMTClienteid: TStringField
      FieldName = 'id'
      Size = 255
    end
    object FDMTClientepublic_id: TStringField
      FieldName = 'public_id'
      Size = 255
    end
    object FDMTClientecustom_id: TStringField
      FieldName = 'custom_id'
      Size = 255
    end
    object FDMTClientename: TStringField
      FieldName = 'name'
      Size = 255
    end
    object FDMTClienteemail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object FDMTClientepassword: TStringField
      FieldName = 'password'
      Size = 255
    end
    object FDMTClienteaddress: TStringField
      FieldName = 'address'
      Size = 255
    end
    object FDMTClientephone: TStringField
      FieldName = 'phone'
      Size = 255
    end
    object FDMTClientephone_mobile: TStringField
      FieldName = 'phone_mobile'
      Size = 255
    end
    object FDMTClientephone_mobile_verified: TStringField
      FieldName = 'phone_mobile_verified'
      Size = 255
    end
    object FDMTClientenational_identification_number: TStringField
      FieldName = 'national_identification_number'
      Size = 255
    end
    object FDMTClientecity: TStringField
      FieldName = 'city'
      Size = 255
    end
    object FDMTClientestate: TStringField
      FieldName = 'state'
      Size = 255
    end
    object FDMTClientedetails: TStringField
      FieldName = 'details'
      Size = 255
    end
    object FDMTClientecollector_id: TStringField
      FieldName = 'collector_id'
      Size = 255
    end
    object FDMTClienteseller_id: TStringField
      FieldName = 'seller_id'
      Size = 255
    end
    object FDMTClienteneighborhood_id: TStringField
      FieldName = 'neighborhood_id'
      Size = 255
    end
    object FDMTClientecreated_at: TStringField
      FieldName = 'created_at'
      Size = 255
    end
    object FDMTClienteupdated_at: TStringField
      FieldName = 'updated_at'
      Size = 255
    end
  end
  object DSClienteRest: TDataSource
    DataSet = FDMTCliente
    Left = 740
    Top = 280
  end
  object RESTCliente: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    BaseURL = 'https://www.cloud.wispro.co/api/v1/clients'
    Params = <>
    SynchronizedEvents = False
    Left = 576
    Top = 64
  end
  object RESTRequestCliente: TRESTRequest
    Client = RESTCliente
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Value = 'ac268ab1-6924-4b53-92b1-7ec37dd27fbb'
      end
      item
        Name = 'per_page'
        Value = '1000'
      end
      item
        Name = 'custom_id_eq'
      end
      item
        Name = 'page'
      end>
    Response = RESTResponseCliente
    SynchronizedEvents = False
    Left = 568
    Top = 96
  end
  object RESTResponseCliente: TRESTResponse
    RootElement = 'data'
    Left = 704
    Top = 88
  end
  object RESTResponseDSACliente: TRESTResponseDataSetAdapter
    Dataset = FDMTCliente
    FieldDefs = <>
    Response = RESTResponseCliente
    Left = 720
    Top = 88
  end
  object RESTClientContrato: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    BaseURL = 'https://www.cloud.wispro.co/api/v1/contracts'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 368
    Top = 112
  end
  object RESTRequestContrato: TRESTRequest
    Client = RESTClientContrato
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Value = 'ac268ab1-6924-4b53-92b1-7ec37dd27fbb'
      end
      item
        Name = 'client_id_eq'
      end>
    Response = RESTResponseContrato
    SynchronizedEvents = False
    Left = 480
    Top = 104
  end
  object RESTResponseContrato: TRESTResponse
    RootElement = 'data'
    Left = 512
    Top = 208
  end
  object TRESTResponseDSAContrato: TRESTResponseDataSetAdapter
    Dataset = FDMTContrato
    FieldDefs = <>
    Response = RESTResponseContrato
    Left = 760
    Top = 200
  end
  object FDMTContrato: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 752
    Top = 176
    object FDMTContratoid: TStringField
      FieldName = 'id'
      Size = 255
    end
    object FDMTContratopublic_id: TStringField
      FieldName = 'public_id'
      Size = 255
    end
    object FDMTContratoplan_id: TStringField
      FieldName = 'plan_id'
      Size = 255
    end
    object FDMTContratoclient_id: TStringField
      FieldName = 'client_id'
      Size = 255
    end
    object FDMTContratoserver_configuration_id: TStringField
      FieldName = 'server_configuration_id'
      Size = 255
    end
    object FDMTContratostate: TStringField
      Alignment = taCenter
      FieldName = 'state'
      OnGetText = FDMTContratostateGetText
      Size = 255
    end
    object FDMTContratostart_date: TStringField
      FieldName = 'start_date'
      Size = 255
    end
    object FDMTContratoip: TStringField
      FieldName = 'ip'
      Size = 255
    end
    object FDMTContratonetmask: TStringField
      FieldName = 'netmask'
      Size = 255
    end
    object FDMTContratomac_address: TStringField
      FieldName = 'mac_address'
      Size = 255
    end
    object FDMTContratocoverage_id: TStringField
      FieldName = 'coverage_id'
      Size = 255
    end
    object FDMTContratonode_id: TStringField
      FieldName = 'node_id'
      Size = 255
    end
    object FDMTContratonode_name: TStringField
      FieldName = 'node_name'
      Size = 255
    end
    object FDMTContratocpe_port: TStringField
      FieldName = 'cpe_port'
      Size = 255
    end
    object FDMTContratocpe_protocol: TStringField
      FieldName = 'cpe_protocol'
      Size = 255
    end
    object FDMTContratoceil_dfl_percent: TStringField
      FieldName = 'ceil_dfl_percent'
      Size = 255
    end
    object FDMTContratopppoe_enabled: TStringField
      FieldName = 'pppoe_enabled'
      Size = 255
    end
    object FDMTContratopppoe_username: TStringField
      FieldName = 'pppoe_username'
      Size = 255
    end
    object FDMTContratopppoe_password: TStringField
      FieldName = 'pppoe_password'
      Size = 255
    end
    object FDMTContratoppp_profile: TStringField
      FieldName = 'ppp_profile'
      Size = 255
    end
    object FDMTContratodhcp_enabled: TStringField
      FieldName = 'dhcp_enabled'
      Size = 255
    end
    object FDMTContratodhcp_server: TStringField
      FieldName = 'dhcp_server'
      Size = 255
    end
    object FDMTContratodhcp_mac_defined_by_service: TStringField
      FieldName = 'dhcp_mac_defined_by_service'
      Size = 255
    end
    object FDMTContratodhcp_mac_address: TStringField
      FieldName = 'dhcp_mac_address'
      Size = 255
    end
    object FDMTContratocable_modem_enabled: TStringField
      FieldName = 'cable_modem_enabled'
      Size = 255
    end
    object FDMTContratocable_modem_ip: TStringField
      FieldName = 'cable_modem_ip'
      Size = 255
    end
    object FDMTContratocable_modem_mac_address: TStringField
      FieldName = 'cable_modem_mac_address'
      Size = 255
    end
    object FDMTContratocable_modem_gateway: TStringField
      FieldName = 'cable_modem_gateway'
      Size = 255
    end
    object FDMTContratolatitude: TStringField
      FieldName = 'latitude'
      Size = 255
    end
    object FDMTContratolongitude: TStringField
      FieldName = 'longitude'
      Size = 255
    end
    object FDMTContratoaddress_street: TStringField
      FieldName = 'address_street'
      Size = 255
    end
    object FDMTContratoaddress_number: TStringField
      FieldName = 'address_number'
      Size = 255
    end
    object FDMTContratoaddress_city: TStringField
      FieldName = 'address_city'
      Size = 255
    end
    object FDMTContratoaddress_state: TStringField
      FieldName = 'address_state'
      Size = 255
    end
    object FDMTContratoaddress_country: TStringField
      FieldName = 'address_country'
      Size = 255
    end
    object FDMTContratoaddress_additional_data: TStringField
      FieldName = 'address_additional_data'
      Size = 255
    end
    object FDMTContratodetails: TStringField
      FieldName = 'details'
      Size = 255
    end
    object FDMTContratocreated_at: TStringField
      FieldName = 'created_at'
      Size = 255
    end
    object FDMTContratoupdated_at: TStringField
      FieldName = 'updated_at'
      Size = 255
    end
  end
  object DSContratoRest: TDataSource
    DataSet = FDMTContrato
    Left = 240
    Top = 232
  end
  object RESTClientPlan: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://www.cloud.wispro.co/api/v1/plans/5b1d27a6-9f6b-40a7-b9f4' +
      '-58580346b39f'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 448
    Top = 320
  end
  object RESTRequestPlan: TRESTRequest
    Client = RESTClientPlan
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Value = 'ac268ab1-6924-4b53-92b1-7ec37dd27fbb'
      end>
    Response = RESTResponsePlan
    SynchronizedEvents = False
    Left = 760
    Top = 112
  end
  object RESTResponsePlan: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'data'
    Left = 440
    Top = 80
  end
  object RESTResponseDSAPlan: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMTPlan
    FieldDefs = <>
    Response = RESTResponsePlan
    Left = 544
    Top = 96
  end
  object FDMTPlan: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'public_id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cir'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ceil_down_kbps'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ceil_up_kbps'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'price'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'frequency_in_months'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'contracts_count'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'created_at'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'updated_at'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 632
    Top = 240
    object FDMTPlanid: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object FDMTPlanname: TWideStringField
      FieldName = 'name'
      Size = 255
    end
    object FDMTPlanpublic_id: TWideStringField
      FieldName = 'public_id'
      Size = 255
    end
    object FDMTPlancir: TWideStringField
      FieldName = 'cir'
      Size = 255
    end
    object FDMTPlanceil_down_kbps: TWideStringField
      FieldName = 'ceil_down_kbps'
      Size = 255
    end
    object FDMTPlanceil_up_kbps: TWideStringField
      FieldName = 'ceil_up_kbps'
      Size = 255
    end
    object FDMTPlanprice: TWideStringField
      FieldName = 'price'
      Size = 255
    end
    object FDMTPlanfrequency_in_months: TWideStringField
      FieldName = 'frequency_in_months'
      Size = 255
    end
    object FDMTPlancontracts_count: TWideStringField
      FieldName = 'contracts_count'
      Size = 255
    end
    object FDMTPlancreated_at: TWideStringField
      FieldName = 'created_at'
      Size = 255
    end
    object FDMTPlanupdated_at: TWideStringField
      FieldName = 'updated_at'
      Size = 255
    end
  end
  object DSPlan: TDataSource
    DataSet = FDMTPlan
    Left = 440
    Top = 400
  end
  object MainMenu1: TMainMenu
    Left = 432
    Top = 528
    object Opciones1: TMenuItem
      Caption = 'Opciones'
      object BuscarCodigoFreeAlta1: TMenuItem
        Caption = 'Buscar Codigo Free Alta'
        OnClick = BuscarCodigoFreeAlta1Click
      end
    end
  end
  object RESTClientFacturas: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://www.cloud.wispro.co/api/v1/invoicing/invoices'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 88
    Top = 288
  end
  object RESTRequestFacturas: TRESTRequest
    Client = RESTClientFacturas
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Value = 'ac268ab1-6924-4b53-92b1-7ec37dd27fbb'
      end
      item
        Name = 'client_custom_id_eq'
      end>
    Response = RESTResponseFacturas
    SynchronizedEvents = False
    Left = 40
    Top = 256
  end
  object RESTResponseFacturas: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'data'
    Left = 128
    Top = 272
  end
  object RESTResponseDSAFacturas: TRESTResponseDataSetAdapter
    Dataset = mtFacturas
    FieldDefs = <>
    Response = RESTResponseFacturas
    Left = 240
    Top = 240
  end
  object mtFacturas: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 192
    Top = 216
    object mtFacturasid: TWideStringField
      DisplayLabel = 'Id Fc'
      FieldName = 'id'
      Size = 255
    end
    object mtFacturascontract_id: TWideStringField
      DisplayLabel = 'Id Contrato'
      FieldName = 'contract_id'
      Size = 255
    end
    object mtFacturasinvoicing_firm_id: TWideStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'invoicing_firm_id'
      Size = 255
    end
    object mtFacturaskind_invoice: TWideStringField
      DisplayLabel = 'Tp.Cpbte'
      FieldName = 'kind_invoice'
      OnGetText = mtFacturaskind_invoiceGetText
      Size = 255
    end
    object mtFacturasinvoice_number: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      FieldName = 'invoice_number'
      OnGetText = mtFacturasinvoice_numberGetText
      Size = 255
    end
    object mtFacturasfrom: TWideStringField
      DisplayLabel = 'Desde'
      FieldName = 'from'
      Size = 255
    end
    object mtFacturasto: TWideStringField
      DisplayLabel = 'Hasta'
      FieldName = 'to'
      Size = 255
    end
    object mtFacturasissued_at: TWideStringField
      DisplayLabel = 'Fecha Emision'
      FieldName = 'issued_at'
      Size = 255
    end
    object mtFacturascreated_at: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Fecha '
      FieldName = 'created_at'
      Size = 255
    end
    object mtFacturasupdated_at: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'F.Modif.'
      FieldName = 'updated_at'
      Size = 255
    end
    object mtFacturasfirst_due_date: TWideStringField
      Alignment = taCenter
      DisplayLabel = '1er.Vto'
      FieldName = 'first_due_date'
      Size = 255
    end
    object mtFacturassecond_due_date: TWideStringField
      Alignment = taCenter
      DisplayLabel = '2do.Vto'
      FieldName = 'second_due_date'
      Size = 255
    end
    object mtFacturasstate: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Estado'
      FieldName = 'state'
      OnGetText = mtFacturasstateGetText
      Size = 255
    end
    object mtFacturasamount: TWideStringField
      DisplayLabel = 'Importe'
      FieldName = 'amount'
      Size = 255
    end
    object mtFacturasgross_amount: TWideStringField
      FieldName = 'gross_amount'
      Size = 255
    end
    object mtFacturastax_amount: TWideStringField
      DisplayLabel = 'IVA'
      FieldName = 'tax_amount'
      Size = 255
    end
    object mtFacturasdiscount_amount: TWideStringField
      DisplayLabel = 'Dscto.'
      FieldName = 'discount_amount'
      Size = 255
    end
    object mtFacturasnet_amount: TWideStringField
      DisplayLabel = 'Neto'
      FieldName = 'net_amount'
      Size = 255
    end
    object mtFacturasbalance: TWideStringField
      DisplayLabel = 'Saldo'
      FieldName = 'balance'
      Size = 255
    end
    object mtFacturasconcept: TWideStringField
      DisplayLabel = 'Concepto'
      FieldName = 'concept'
      Size = 255
    end
    object mtFacturaselectronic_enabled: TWideStringField
      Alignment = taCenter
      FieldName = 'electronic_enabled'
      Size = 255
    end
    object mtFacturasinvoicing_firm_start_activities_date: TWideStringField
      FieldName = 'invoicing_firm_start_activities_date'
      Size = 255
    end
    object mtFacturasinvoicing_firm_email: TWideStringField
      DisplayLabel = 'e-Mail'
      FieldName = 'invoicing_firm_email'
      Size = 255
    end
    object mtFacturasinvoicing_firm_phone: TWideStringField
      FieldName = 'invoicing_firm_phone'
      Size = 255
    end
    object mtFacturasinvoicing_firm_address: TWideStringField
      DisplayLabel = 'Direccion'
      FieldName = 'invoicing_firm_address'
      Size = 255
    end
    object mtFacturasinvoicing_firm_zip_code: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Cod.Postal'
      FieldName = 'invoicing_firm_zip_code'
      Size = 255
    end
    object mtFacturasinvoicing_firm_sale_point: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Punto Vta.'
      FieldName = 'invoicing_firm_sale_point'
      OnGetText = mtFacturasinvoicing_firm_sale_pointGetText
      Size = 255
    end
    object mtFacturasinvoicing_firm_gross_income: TWideStringField
      FieldName = 'invoicing_firm_gross_income'
      Size = 255
    end
    object mtFacturasinvoicing_firm_company_name: TWideStringField
      DisplayLabel = 'Razon Social Cliente'
      FieldName = 'invoicing_firm_company_name'
      Size = 255
    end
    object mtFacturasinvoicing_firm_vat_condition: TWideStringField
      DisplayLabel = 'Cond.IVA'
      FieldName = 'invoicing_firm_vat_condition'
      Size = 255
    end
    object mtFacturasinvoicing_firm_principal_activity: TWideStringField
      FieldName = 'invoicing_firm_principal_activity'
      Size = 255
    end
    object mtFacturasinvoicing_firm_taxpayer_identification_number: TWideStringField
      DisplayLabel = 'Cuit/Doc.'
      FieldName = 'invoicing_firm_taxpayer_identification_number'
      Size = 255
    end
    object mtFacturasclient_name: TWideStringField
      DisplayLabel = 'Cliente Nombre'
      FieldName = 'client_name'
      Size = 255
    end
    object mtFacturasclient_phone: TWideStringField
      DisplayLabel = 'Cliente TE'
      FieldName = 'client_phone'
      Size = 255
    end
    object mtFacturasclient_address: TWideStringField
      DisplayLabel = 'Cliente Direccion'
      FieldName = 'client_address'
      Size = 255
    end
    object mtFacturasclient_vat_condition: TWideStringField
      DisplayLabel = 'Condicion IVA'
      FieldName = 'client_vat_condition'
      Size = 255
    end
    object mtFacturasclient_taxpayer_identification_number: TWideStringField
      DisplayLabel = 'Cuit/DOc'
      FieldName = 'client_taxpayer_identification_number'
      Size = 255
    end
    object mtFacturasclient_national_identification_number: TWideStringField
      DisplayLabel = 'DNI'
      FieldName = 'client_national_identification_number'
      Size = 255
    end
    object mtFacturasitems: TWideStringField
      FieldName = 'items'
      Size = 255
    end
    object mtFacturaspayment_links: TWideStringField
      FieldName = 'payment_links'
      Size = 255
    end
  end
  object DSFacturas: TDataSource
    DataSet = mtFacturas
    Left = 264
    Top = 292
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = DBAdvGrid1
    Options.ExportOverwrite = omWarn
    Options.ExportOverwriteMessage = 'Sobre escribe Archivo ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    OnExportColumnFormat = AdvGridExcelIO1ExportColumnFormat
    Left = 264
    Top = 158
  end
end

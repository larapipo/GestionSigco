inherited FormProveedor_2: TFormProveedor_2
  Left = 227
  Top = 263
  Caption = 'Datos de Proveedores'
  ClientHeight = 596
  ClientWidth = 756
  StyleElements = [seFont, seClient, seBorder]
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnMouseMove = FormMouseMove
  ExplicitWidth = 774
  ExplicitHeight = 637
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 756
    Height = 406
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 756
    ExplicitHeight = 406
    object pcGeneral: TPageControl
      Left = 0
      Top = 0
      Width = 756
      Height = 406
      ActivePage = Pagina1
      Align = alClient
      TabOrder = 0
      object Pagina1: TTabSheet
        Caption = 'Datos de Proveedores'
        object pcDatos: TPageControl
          Left = 0
          Top = 0
          Width = 748
          Height = 378
          ActivePage = Pag1
          Align = alClient
          TabOrder = 0
          object Pag1: TTabSheet
            Caption = 'Datos Principales'
            object Bevel5: TBevel
              Left = 287
              Top = 134
              Width = 70
              Height = 19
            end
            object Label1: TLabel
              Left = 6
              Top = 2
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = dbeCodigo
            end
            object Label2: TLabel
              Left = 103
              Top = 2
              Width = 37
              Height = 13
              Caption = 'Nombre'
              FocusControl = dbeNombre
            end
            object Label3: TLabel
              Left = 103
              Top = 41
              Width = 63
              Height = 13
              Caption = 'Raz'#243'n Social'
              FocusControl = dbeRaznSocial
            end
            object Label4: TLabel
              Left = 217
              Top = 165
              Width = 64
              Height = 13
              Caption = 'N'#186' de Cuenta'
              FocusControl = dbeNdeCuenta
            end
            object Label5: TLabel
              Left = 10
              Top = 119
              Width = 97
              Height = 13
              Caption = 'Codigo de Localidad'
            end
            object Label6: TLabel
              Left = 103
              Top = 81
              Width = 45
              Height = 13
              Caption = 'Direcci'#243'n'
              FocusControl = dbeDireccion
            end
            object Bevel2: TBevel
              Left = 64
              Top = 134
              Width = 218
              Height = 19
            end
            object dbtLocalidad: TDBText
              Left = 66
              Top = 136
              Width = 215
              Height = 14
              DataField = 'Localidad'
              DataSource = DSBase
            end
            object dbtCPostal: TDBText
              Left = 288
              Top = 136
              Width = 65
              Height = 12
              DataField = 'Cod_Postal'
              DataSource = DSBase
            end
            object Label7: TLabel
              Left = 384
              Top = 101
              Width = 112
              Height = 13
              Caption = 'Condiciones de Compra'
            end
            object RxLabel1: TJvLabel
              Left = 6
              Top = 165
              Width = 87
              Height = 14
              Caption = 'Fecha Ult.Compra'
              ShadowColor = clWhite
              ShadowSize = 1
              ShadowPos = spLeftBottom
              Transparent = True
            end
            object RxLabel2: TJvLabel
              Left = 6
              Top = 189
              Width = 68
              Height = 14
              Caption = 'Fecha de Alta'
              ShadowColor = clWhite
              ShadowSize = 1
              ShadowPos = spLeftBottom
              Transparent = True
            end
            object Label29: TLabel
              Left = 576
              Top = 22
              Width = 113
              Height = 26
              Caption = 'Solo Para el Caso de '#13#10'Las compras en Cta.Cte'
            end
            object Label37: TLabel
              Left = 384
              Top = 213
              Width = 150
              Height = 13
              Caption = 'Marcas Asociadas al Proveedor'
            end
            object dbeCodigo: TDBEdit
              Left = 6
              Top = 19
              Width = 63
              Height = 21
              Hint = 'C'#243'digo del Proveedor'#13#10'Valores: 000001 - 999999'
              DataField = 'Codigo'
              DataSource = DSBase
              TabOrder = 0
              OnExit = dbeCodigoExit
            end
            object dbeNombre: TDBEdit
              Left = 103
              Top = 19
              Width = 253
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Nombre'
              DataSource = DSBase
              TabOrder = 1
            end
            object dbeRaznSocial: TDBEdit
              Left = 103
              Top = 58
              Width = 253
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Razon_Social'
              DataSource = DSBase
              TabOrder = 2
            end
            object dbeNdeCuenta: TDBEdit
              Left = 216
              Top = 186
              Width = 93
              Height = 21
              DataField = 'N_de_Cuenta'
              DataSource = DSBase
              TabOrder = 9
              OnExit = dbeNdeCuentaExit
            end
            object dbeDireccion: TDBEdit
              Left = 103
              Top = 96
              Width = 253
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Direccion'
              DataSource = DSBase
              TabOrder = 3
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 3
              Top = 223
              Width = 280
              Height = 42
              Caption = 'Tipo de Proveedor'
              Columns = 3
              DataField = 'Tipo_Proveedor'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Items.Strings = (
                'Mercader'#237'as'
                'Gastos/Servi.'
                'Ambos')
              ParentFont = False
              TabOrder = 6
              Values.Strings = (
                'M'
                'G'
                'A')
            end
            object dbchActivo: TDBCheckBox
              Left = 574
              Top = 60
              Width = 97
              Height = 17
              Hint = 'Determina si el proveedor Opera en estos momentos'
              TabStop = False
              Alignment = taLeftJustify
              Caption = 'Activo'
              DataField = 'Activo'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object GroupBox1: TGroupBox
              Left = 391
              Top = 10
              Width = 165
              Height = 87
              Caption = 'Tel'#233'fonos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              object Bevel1: TBevel
                Left = 8
                Top = 24
                Width = 50
                Height = 20
              end
              object dbtTelediscado: TDBText
                Left = 10
                Top = 27
                Width = 47
                Height = 15
                DataField = 'Telediscado'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object dbeTelefono2: TDBEdit
                Left = 59
                Top = 50
                Width = 94
                Height = 21
                DataField = 'Telefono_2'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object dbeTelefono1: TDBEdit
                Left = 59
                Top = 23
                Width = 94
                Height = 21
                DataField = 'Telefono_1'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object dbgCondCompra: TDBGrid
              Left = 384
              Top = 120
              Width = 287
              Height = 87
              Color = clWhite
              DataSource = DatosProveedores.DSCondCompra
              FixedColor = clTeal
              GradientEndColor = clGradientActiveCaption
              GradientStartColor = clGradientInactiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -10
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clMenuText
              TitleFont.Height = -10
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnColEnter = dbgCondCompraColEnter
              OnEditButtonClick = dbgCondCompraEditButtonClick
              OnKeyDown = dbgCondCompraKeyDown
              OnKeyPress = dbgCondCompraKeyPress
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'CODIGOPAGO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cod'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 47
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Detalle'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 136
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCUENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Dscto.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 68
                  Visible = True
                end>
            end
            object RxDBIdPostal: TJvDBComboEdit
              Left = 8
              Top = 134
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
              TabOrder = 4
              OnButtonClick = BuscarCPostalExecute
            end
            object dbdateUltimaCompra: TJvDBDateEdit
              Left = 102
              Top = 163
              Width = 97
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              DataField = 'FechaUltimaCompra'
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
              PopupColor = clAqua
              ShowNullDate = False
              TabOrder = 8
            end
            object dbDateAlta: TJvDBDateEdit
              Left = 102
              Top = 186
              Width = 97
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              DataField = 'FechaAlta'
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
              TabOrder = 7
            end
            inline FrameCtaContable1: TFrameCtaContable
              Left = 2
              Top = 289
              Width = 361
              Height = 58
              AutoSize = True
              Color = clBtnFace
              Padding.Left = 3
              Padding.Top = 3
              Padding.Bottom = 3
              ParentBackground = False
              ParentColor = False
              TabOrder = 12
              ExplicitLeft = 2
              ExplicitTop = 289
              inherited pnBase: TPanel
                Color = clCornflowerblue
                StyleElements = [seFont, seClient, seBorder]
                inherited dbtNombre: TDBText
                  Left = 76
                  Top = 21
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitLeft = 76
                  ExplicitTop = 21
                end
                inherited Label1: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited ceCodigo: TJvDBComboEdit
                  Height = 21
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitHeight = 21
                end
              end
            end
            object DBCheckBox2: TDBCheckBox
              Left = 576
              Top = 3
              Width = 133
              Height = 17
              Hint = 'Determina si el proveedor Opera en estos momentos'
              TabStop = False
              Alignment = taLeftJustify
              Caption = 'Requiere O.de Compra'
              DataField = 'CON_OCOMPRA'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbgMarcasProveedor: TDBGrid
              Left = 384
              Top = 232
              Width = 353
              Height = 115
              DataSource = DatosProveedores.DSMarcaProveedor
              TabOrder = 14
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnColEnter = dbgMarcasProveedorColEnter
              OnEditButtonClick = BuscarMarcasExecute
              OnKeyPress = dbgMarcasProveedorKeyPress
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'MARKA'
                  Width = 73
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'DESCRIPCION_MARCA'
                  Width = 237
                  Visible = True
                end>
            end
          end
          object Pag2: TTabSheet
            Caption = 'Datos impositivos'
            ImageIndex = 1
            object Label9: TLabel
              Left = 5
              Top = 2
              Width = 67
              Height = 13
              Caption = 'Condicion IVA'
            end
            object Label10: TLabel
              Left = 140
              Top = 2
              Width = 55
              Height = 13
              Caption = 'N'#186' de CUIT'
              FocusControl = dbeNCuit
            end
            object Label15: TLabel
              Left = 190
              Top = 50
              Width = 89
              Height = 13
              Caption = 'Percepci'#243'n de IVA'
            end
            object Label16: TLabel
              Left = 189
              Top = 90
              Width = 136
              Height = 13
              Caption = 'Percepcion I.B 1'#186' Juridicci'#243'n'
            end
            object Label13: TLabel
              Left = 3
              Top = 266
              Width = 71
              Height = 13
              Caption = 'Observaciones'
            end
            object Bevel3: TBevel
              Left = 248
              Top = 66
              Width = 197
              Height = 20
            end
            object Bevel4: TBevel
              Left = 248
              Top = 106
              Width = 197
              Height = 20
            end
            object dbtPercepIva: TDBText
              Left = 249
              Top = 68
              Width = 184
              Height = 17
              DataField = 'DesPerIva'
              DataSource = DSBase
            end
            object dbtPercepIB: TDBText
              Left = 251
              Top = 108
              Width = 182
              Height = 17
              DataField = 'DesPerIB'
              DataSource = DSBase
            end
            object Label14: TLabel
              Left = 505
              Top = 2
              Width = 32
              Height = 13
              Caption = 'Rubro '
            end
            object Label17: TLabel
              Left = 506
              Top = 42
              Width = 95
              Height = 13
              Caption = 'Factura por Defecto'
            end
            object Label18: TLabel
              Left = 236
              Top = 2
              Width = 103
              Height = 13
              Caption = 'N'#186' de Ingresos Brutos'
              FocusControl = dbeNroIIBB
            end
            object Label19: TLabel
              Left = 3
              Top = 220
              Width = 86
              Height = 13
              Caption = 'Correo electronico'
            end
            object Label25: TLabel
              Left = 189
              Top = 129
              Width = 136
              Height = 13
              Caption = 'Percepcion I.B 2'#186' Juridicci'#243'n'
            end
            object Bevel6: TBevel
              Left = 248
              Top = 145
              Width = 197
              Height = 20
            end
            object DBText1: TDBText
              Left = 251
              Top = 147
              Width = 182
              Height = 17
              DataField = 'DESPERIB2'
              DataSource = DSBase
            end
            object Label30: TLabel
              Left = 506
              Top = 80
              Width = 120
              Height = 13
              Caption = 'Factura Ctdo.por Defecto'
            end
            object Label34: TLabel
              Left = 439
              Top = 165
              Width = 31
              Height = 13
              Caption = '% Ret.'
            end
            object Label36: TLabel
              Left = 504
              Top = 264
              Width = 58
              Height = 13
              Caption = 'N'#186' de C.B.U'
              FocusControl = DBEdit3
            end
            object dbeNCuit: TDBEdit
              Left = 132
              Top = 19
              Width = 90
              Height = 21
              DataField = 'N_de_CUIT'
              DataSource = DSBase
              TabOrder = 1
            end
            object GroupBox2: TGroupBox
              Left = 4
              Top = 43
              Width = 173
              Height = 118
              Caption = 'Impuestos que Percive'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object dbchRetieneIVA: TDBCheckBox
                Left = 18
                Top = 21
                Width = 149
                Height = 17
                TabStop = False
                Caption = 'Agente de Percep. IVA'
                Color = clBtnFace
                DataField = 'RETIENE_IVA'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = dbchRetieneIVAClick
              end
              object dbchRetieneIB: TDBCheckBox
                Left = 18
                Top = 43
                Width = 145
                Height = 16
                TabStop = False
                Caption = 'Percibe Ingresos Brts.'
                Color = clScrollBar
                DataField = 'Retiene_IB'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = dbchRetieneIBClick
              end
              object dbchRetieneGanancia: TDBCheckBox
                Left = 18
                Top = 64
                Width = 115
                Height = 17
                TabStop = False
                Caption = 'Retiene Ganancias'
                Color = clBtnFace
                DataField = 'Retiene_Ganancias'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object dbchTasaServicio: TDBCheckBox
                Left = 18
                Top = 86
                Width = 126
                Height = 17
                TabStop = False
                Caption = 'Tasa de Iva Servicios'
                Color = clBtnFace
                DataField = 'IVA_Servicios'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object DBMemo1: TDBMemo
              Left = 3
              Top = 282
              Width = 471
              Height = 65
              Align = alCustom
              DataField = 'Observaciones'
              DataSource = DSBase
              ScrollBars = ssVertical
              TabOrder = 9
            end
            object dbcInscripcion: TDBLookupComboBox
              Left = 5
              Top = 19
              Width = 121
              Height = 21
              DataField = 'CONDICION_IVA'
              DataSource = DSBase
              KeyField = 'CODIGO'
              ListField = 'DETALLE'
              ListSource = DatosProveedores.DSBuscaInscripcion
              TabOrder = 0
            end
            object dbcRubros: TDBLookupComboBox
              Left = 504
              Top = 16
              Width = 233
              Height = 21
              DataField = 'RUBRO'
              DataSource = DSBase
              KeyField = 'ID'
              ListField = 'DETALLE'
              ListSource = DatosProveedores.DSBuscaRubrosProv
              TabOrder = 6
              OnKeyDown = dbcRubrosKeyDown
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 504
              Top = 56
              Width = 233
              Height = 21
              DataField = 'ID_FACTURAPORDEFECTO'
              DataSource = DSBase
              DropDownWidth = 300
              KeyField = 'ID_COMPROBANTE'
              ListField = 'denominacion;TIPO_COMPROB;clase_comprob;letra;muestrasucursal'
              ListSource = DatosProveedores.DSListaComprobantes
              TabOrder = 7
              OnKeyDown = DBLookupComboBox1KeyDown
            end
            object GroupBox3: TGroupBox
              Left = 504
              Top = 117
              Width = 221
              Height = 134
              Caption = 'Impuesto a Aplicar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
              object chExentoRetencioGanancia: TDBCheckBox
                Left = 14
                Top = 16
                Width = 137
                Height = 17
                BiDiMode = bdLeftToRight
                Caption = 'Exento Ret.Ganacia'
                Color = clBtnFace
                DataField = 'EXENTO_GANACIA'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = chExentoRetencioGananciaClick
              end
              object dbcRetencionesGanancias: TDBLookupComboBox
                Left = 14
                Top = 37
                Width = 195
                Height = 21
                BiDiMode = bdLeftToRight
                DataField = 'CODIGO_REGIMEN_RET_GANACIA'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'CODIGO'
                ListField = 'CONCEPTO'
                ListSource = DatosProveedores.DSTasaRetGanancia
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 1
                OnKeyDown = dbcRetencionesGananciasKeyDown
              end
              object chExentoRetencioIIBB: TDBCheckBox
                Left = 14
                Top = 64
                Width = 137
                Height = 17
                BiDiMode = bdLeftToRight
                Caption = 'Exento Ret.Ing.Brutos'
                Color = clBtnFace
                DataField = 'EXENTO_RETENCION_IB'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentColor = False
                ParentFont = False
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = chExentoRetencioIIBBClick
              end
              object dbcRetencionIIBB: TDBLookupComboBox
                Left = 14
                Top = 84
                Width = 195
                Height = 21
                BiDiMode = bdLeftToRight
                DataField = 'ID_TASA_RETENCION_IB'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'ID'
                ListField = 'DETALLE'
                ListSource = DatosProveedores.DSBuscaTasaRetIIBB
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 3
                OnKeyDown = dbcRetencionIIBBKeyDown
              end
              object DBCheckBox1: TDBCheckBox
                Left = 14
                Top = 111
                Width = 137
                Height = 17
                BiDiMode = bdLeftToRight
                Caption = 'En Convenio Multilateral'
                Color = clBtnFace
                DataField = 'CONV_MULTI'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentColor = False
                ParentFont = False
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object dbeNroIIBB: TDBEdit
              Left = 228
              Top = 19
              Width = 149
              Height = 21
              DataField = 'NRO_IIBB'
              DataSource = DSBase
              TabOrder = 2
            end
            object dbeCorreo: TDBEdit
              Left = 3
              Top = 239
              Width = 350
              Height = 21
              DataField = 'CORREO'
              DataSource = DSBase
              TabOrder = 10
            end
            object RxDBPercepcionIva: TJvDBComboEdit
              Left = 190
              Top = 66
              Width = 49
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'Id_Perc_Iva'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 16
              TabOrder = 4
              OnButtonClick = BuscarPercepIvaExecute
              OnKeyDown = RxDBPercepcionIvaKeyDown
            end
            object cePercepcionIIBB: TJvDBComboEdit
              Left = 190
              Top = 106
              Width = 49
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'Id_Perc_IBB'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 16
              TabOrder = 5
              OnButtonClick = BuscarPercepIBExecute
              OnKeyDown = cePercepcionIIBBKeyDown
            end
            object cePercepcionIIBB_2: TJvDBComboEdit
              Left = 190
              Top = 145
              Width = 49
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'ID_PERC_IBB_2'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 16
              TabOrder = 11
              OnButtonClick = BuscarPercepIBExecute
              OnKeyDown = cePercepcionIIBB_2KeyDown
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 504
              Top = 94
              Width = 233
              Height = 21
              DataField = 'ID_FACTURACTDODEFECTO'
              DataSource = DSBase
              DropDownWidth = 300
              KeyField = 'ID_COMPROBANTE'
              ListField = 'denominacion;TIPO_COMPROB;clase_comprob;letra;muestrasucursal'
              ListSource = DatosProveedores.DSListaCompCtdo
              TabOrder = 12
              OnKeyDown = DBLookupComboBox2KeyDown
            end
            object dbchRetcioinIVA: TDBCheckBox
              Left = 3
              Top = 164
              Width = 83
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = 'Retener IVA'
              Color = clBtnFace
              DataField = 'RETENCION_IVA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentBiDiMode = False
              ParentColor = False
              ParentFont = False
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = dbchRetcioinIVAClick
            end
            object edTasaRet: TDBEdit
              Left = 439
              Top = 184
              Width = 59
              Height = 21
              DataField = 'PORCENTAJE_RET_IVA'
              DataSource = DSBase
              Enabled = False
              TabOrder = 14
            end
            object chOrden: TCheckBox
              Left = 356
              Top = 205
              Width = 77
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Orden x Cod.'
              TabOrder = 15
              OnClick = chOrdenClick
            end
            object dbcRegimenRet: TJvDBLookupCombo
              Left = 3
              Top = 184
              Width = 430
              Height = 21
              DropDownCount = 15
              DropDownWidth = 700
              DisplayAllFields = True
              DataField = 'CODIGO_RET_IVA'
              DataSource = DSBase
              LookupField = 'CODIGO'
              LookupDisplay = 'codigo;DETALLE'
              LookupSource = DSRegimenIva
              TabOrder = 16
            end
            object DBEdit3: TDBEdit
              Left = 504
              Top = 282
              Width = 169
              Height = 21
              DataField = 'CBU'
              DataSource = DSBase
              TabOrder = 17
            end
          end
          object Pag3: TTabSheet
            Caption = 'Representante'
            ImageIndex = 2
            object Label8: TLabel
              Left = 6
              Top = 27
              Width = 40
              Height = 13
              Caption = 'Nombre:'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label11: TLabel
              Left = 6
              Top = 53
              Width = 48
              Height = 13
              Caption = 'Direccion:'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label12: TLabel
              Left = 462
              Top = 27
              Width = 50
              Height = 13
              Caption = 'Tel'#233'fonos:'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label28: TLabel
              Left = 3
              Top = 161
              Width = 284
              Height = 39
              Caption = 
                'Si el Proveedor es de Servicios, Configura la Cta de gastos '#13#10'pa' +
                'ra el Informe Gral de Vtas. queden excluidos de las sumas'#13#10'de la' +
                's compras de mercaderias.'
            end
            object dbeNombreRepresentante: TDBEdit
              Left = 60
              Top = 25
              Width = 392
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Nombre_Representante'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object debDireccionRepresentante: TDBEdit
              Left = 60
              Top = 49
              Width = 392
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DIRECCION_REPRESENTANTE'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object debTelefonoRepresentante: TDBEdit
              Left = 516
              Top = 24
              Width = 107
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Telefono_Representante'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object Panel2: TPanel
              Left = 3
              Top = 206
              Width = 331
              Height = 113
              BevelOuter = bvNone
              Color = clCornflowerblue
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              ParentBackground = False
              TabOrder = 3
              object Label27: TLabel
                Left = 20
                Top = 17
                Width = 80
                Height = 13
                Caption = 'Rubro de Gastos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 20
                Top = 57
                Width = 85
                Height = 13
                Caption = 'Cuentas de Gasto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lcRubros: TJvDBLookupCombo
                Left = 20
                Top = 33
                Width = 201
                Height = 21
                DataField = 'RUBRO_GASTO'
                DataSource = DSBase
                DisplayEmpty = 'Sin Rubro Asociado'
                EmptyValue = '***'
                LookupField = 'CODIGO'
                LookupDisplay = 'DETALLE'
                LookupSource = DatosProveedores.DSRubros
                TabOrder = 0
                OnClick = lcRubrosClick
                OnKeyDown = lcRubrosKeyDown
              end
              object lcCuentas: TJvDBLookupCombo
                Left = 20
                Top = 73
                Width = 293
                Height = 21
                DataField = 'SUB_RUB_GASTOS'
                DataSource = DSBase
                DisplayEmpty = 'Sin Cta Asociada'
                EmptyValue = '******'
                LookupField = 'CODIGO'
                LookupDisplay = 'DETALLE'
                LookupSource = DatosProveedores.DSCuentas
                TabOrder = 1
                OnEnter = lcCuentasEnter
                OnKeyDown = lcCuentasKeyDown
              end
            end
            object AdvGroupBox1: TAdvGroupBox
              Left = 3
              Top = 81
              Width = 395
              Height = 74
              BorderColor = 12895944
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWindowText
              CaptionFont.Height = -11
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = []
              Transparent = False
              Caption = 'Autorizado a Retirar Pagos'
              Color = clCornflowerblue
              ParentBackground = False
              ParentColor = False
              ParentCtl3D = True
              TabOrder = 4
              object Label31: TLabel
                Left = 10
                Top = 16
                Width = 37
                Height = 13
                Caption = 'Nombre'
              end
              object Label32: TLabel
                Left = 204
                Top = 16
                Width = 38
                Height = 13
                Caption = 'Tip.Doc'
              end
              object Label33: TLabel
                Left = 281
                Top = 16
                Width = 75
                Height = 13
                Caption = 'Nro.Documento'
              end
              object DBEdit1: TDBEdit
                Left = 9
                Top = 33
                Width = 183
                Height = 21
                CharCase = ecUpperCase
                DataField = 'AUTORIZADO_NOMBRE'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBComboBox1: TDBComboBox
                Left = 207
                Top = 33
                Width = 61
                Height = 21
                DataField = 'AUTORIZADO_TIPODOC'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Items.Strings = (
                  'DNI'
                  'CUI'
                  'LC'
                  'LE'
                  'PAS')
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit2: TDBEdit
                Left = 277
                Top = 33
                Width = 92
                Height = 21
                CharCase = ecUpperCase
                DataField = 'AUTORIZADO_NRODOC'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
            end
          end
          object Pag4: TTabSheet
            Caption = 'Historial Operaciones'
            ImageIndex = 3
            object Label20: TLabel
              Left = 3
              Top = 13
              Width = 95
              Height = 13
              Caption = 'Compras Mensuales'
            end
            object Label21: TLabel
              Left = 245
              Top = 21
              Width = 146
              Height = 13
              Caption = 'Detalle de Compras Mensuales'
            end
            object Label22: TLabel
              Left = 465
              Top = -1
              Width = 31
              Height = 13
              Caption = 'Desde'
            end
            object Label23: TLabel
              Left = 576
              Top = -1
              Width = 28
              Height = 13
              Caption = 'Hasta'
            end
            object lbTotal: TLabel
              Left = 184
              Top = 306
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Caption = '0.00'
            end
            object Label24: TLabel
              Left = 72
              Top = 306
              Width = 72
              Height = 13
              Caption = 'Total de Comp.'
            end
            object dbgCompras: TJvDBGrid
              Left = 3
              Top = 40
              Width = 226
              Height = 297
              DataSource = DatosProveedores.DSCompras
              DrawingStyle = gdsGradient
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ANIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'A'#241'o'
                  Width = 36
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MES'
                  Title.Alignment = taCenter
                  Title.Caption = 'Mes'
                  Width = 31
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Importe'
                  Width = 88
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CAL_INCIDENCIA'
                  Title.Alignment = taCenter
                  Title.Caption = '%'
                  Width = 47
                  Visible = True
                end>
            end
            object dbgDetalles: TJvDBGrid
              Left = 235
              Top = 40
              Width = 469
              Height = 121
              DataSource = DatosProveedores.DSDetalleCompras
              DefaultDrawing = False
              DrawingStyle = gdsGradient
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = dbgDetallesDrawColumnCell
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
                  Title.Caption = 'Cod.'
                  Title.Color = clBackground
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 59
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Detalle'
                  Title.Color = clBackground
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 149
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CAL_CANTIDAD'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cant.'
                  Title.Color = clBackground
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CAL_PROMEDIO'
                  Title.Alignment = taCenter
                  Title.Caption = '$ Prome.'
                  Title.Color = clBackground
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CAL_TOTAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Total'
                  Title.Color = clBackground
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CAL_INCIDENCIA'
                  Title.Alignment = taCenter
                  Title.Caption = '%'
                  Title.Color = clNavy
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 41
                  Visible = True
                end>
            end
            object UpDown1: TUpDown
              Left = 687
              Top = 13
              Width = 16
              Height = 20
              Hint = 'Cambia el Per'#237'odo'
              Max = 10000
              ParentShowHint = False
              Position = 100
              ShowHint = True
              TabOrder = 4
              OnClick = UpDown1Click
            end
            object BitBtn2: TBitBtn
              Left = 622
              Top = 322
              Width = 81
              Height = 25
              Action = TraerCompras
              Caption = 'Traer Compras'
              TabOrder = 5
            end
            object dbgTotales: TJvDBGrid
              Left = 235
              Top = 167
              Width = 469
              Height = 149
              DataSource = DatosProveedores.DSDetallesTotales
              DrawingStyle = gdsGradient
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 6
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
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
                  Title.Caption = 'Cod.'
                  Title.Color = clMoneyGreen
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 59
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Detalle'
                  Title.Color = clMoneyGreen
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 149
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CAL_CANT'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cant.'
                  Title.Color = clMoneyGreen
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CAL_PROMEDIO'
                  Title.Alignment = taCenter
                  Title.Caption = '$ Prome.'
                  Title.Color = clMoneyGreen
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CAL_TOTAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Total'
                  Title.Color = clMoneyGreen
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CAL_INCIDENCIA'
                  Title.Alignment = taCenter
                  Title.Caption = '%'
                  Title.Color = clMoneyGreen
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 41
                  Visible = True
                end>
            end
            object desde: TJvDateEdit
              Left = 465
              Top = 13
              Width = 105
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
            object hasta: TJvDateEdit
              Left = 576
              Top = 13
              Width = 105
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
            end
          end
        end
      end
      object Pagina2: TTabSheet
        Caption = 'Listados de Proveedores'
        ImageIndex = 1
        object rgEstado: TRadioGroup
          Left = 483
          Top = 0
          Width = 185
          Height = 38
          Caption = 'Estado del Proveedor'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Activos'
            'Incativos')
          TabOrder = 0
          OnClick = ListarExecute
        end
        object dbcRubros_2: TDBLookupComboBox
          Left = 112
          Top = 14
          Width = 225
          Height = 21
          Enabled = False
          KeyField = 'ID'
          ListField = 'DETALLE'
          ListSource = DatosProveedores.DSBuscaRubrosProv
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnClick = dbcRubros_2Click
          OnKeyDown = dbcRubrosKeyDown
        end
        object chRubros: TCheckBox
          Left = 8
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Filtrar por Rubros'
          TabOrder = 2
          OnClick = chRubrosClick
        end
        object btExcel: TBitBtn
          Left = 3
          Top = 319
          Width = 109
          Height = 29
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
          TabOrder = 3
          OnClick = btExcelClick
        end
        object dbgListaProveedores: TJvDBGrid
          Left = 3
          Top = 44
          Width = 742
          Height = 270
          DataSource = DatosProveedores.DSLstProveedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = dbgListaProveedoresDblClick
          TitleButtons = True
          OnTitleBtnClick = dbgListaProveedoresTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          WordWrap = True
        end
        object BitBtn1: TBitBtn
          Left = 563
          Top = 320
          Width = 75
          Height = 27
          Action = Listar
          Caption = '&Listar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            0000001C1F1C383F38383F38383F38383F38383F38FF00FFFF00FFFF00FF0000
            002F2F2F707F70707F70FF00FF0000000000A700006C383F38383F38383F3838
            3F38383F38FF00FF0000005F5F5FCFCFCF5F5F5F383F38FF00FFFF00FF000037
            0000DF0000A3000024FF00FFFF00FFFF00FF0000005F5F5FCFCFCFE0E0E0A8A8
            A85F5F5FFF00FFFF00FF0000000000A74C4FEF0000CB00006C0000000000005F
            5F5FCBCBCBDBDBDBE0E0E0A8A8A8E0E0E05F5F5FFF00FFFF00FF0000373434E7
            7C87FF0000A70000A3000024CFCFCFE0E0E0707070707070E0E0E0A8A8A8A8A8
            A85F5F5FFF00FFFF00FF181B3F606FFF4C4F7F0000000000CB00006C70707070
            7070E0E0E0707070E0E0E0E0E0E0A8A8A85F5F5FFF00FFFF00FFFF00FF000000
            00000000000000006F0000A338385C707070707070E0E0E0E0E0E0A8A8A8E0E0
            E05F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF0000007F7F7F0000CB00006CA8
            A8A8707070707070E0E0E0A8A8A8A8A8A85F5F5FFF00FFFF00FFFF00FFFF00FF
            FF00FF000000EFEFEF00006F3434BF181B3FE0E0E0E0E0E0E0E0E0EFEFEFDFDF
            DF5F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEF3838387C87FF34
            3B5BA8A8A8EFEFEFDFDFDFCFCFCFA8A8A85F5F5FFF00FFFF00FFFF00FFFF00FF
            FF00FF000000EFEFEF707070707070EFEFEFDFDFDFCFCFCFE0E0E0A8A8A8E0E0
            E05F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEFEFEFEFDFDFDFCF
            CFCF707070707070E0E0E0EFEFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FF
            FF00FF000000DFDFDFCFCFCF707070707070E0E0E0EFEFEF7F7F7F000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEF707070E0E0E0EF
            EFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000EFEFEFEFEFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF000000FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 5
        end
        object btImprimir: TBitBtn
          Left = 644
          Top = 320
          Width = 78
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
          TabOrder = 6
        end
      end
      object Pagina3: TTabSheet
        Caption = 'Articulos'
        ImageIndex = 2
        object dbstArticulos: TJvDBStatusLabel
          Left = 3
          Top = 362
          Width = 68
          Height = 13
          DataSource = DatosProveedores.DSArticulosProveedor
          Style = lsRecordNo
          Transparent = True
        end
        object DBText2: TDBText
          Left = 8
          Top = 8
          Width = 49
          Height = 17
          DataField = 'CODIGO'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 63
          Top = 8
          Width = 210
          Height = 17
          DataField = 'RAZON_SOCIAL'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object img1: TImage
          Left = 287
          Top = 7
          Width = 21
          Height = 22
          Picture.Data = {
            07544269746D6170F6060000424DF60600000000000036000000280000001800
            0000180000000100180000000000C0060000120B0000120B0000000000000000
            0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFABA7A68C8888C09596FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFACA8A786868A2A669A4B7B
            A0C09494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9D9D
            5492C22E99FF1B7CCB557A97C19595FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF3DADFF57C1FF4DB1FF3196FA197CC9537997C19495FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF41ABFF5DBFFE4DAFFF3196FA197BC85A
            7A97C29594FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42ABFE5CC0
            FE4DAFFF3096FA197AC8587A96C19494FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF42ACFE5CC0FE4DAFFF2E94FA187AC75F7C97BB9396FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF44ADFE5CBFFE4DB0FF2D94F81979C6
            437397FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46AEFE5C
            BFFE4CB0FF3F97ED577B94FF00FFFF00FFFF00FFAE837EAE837EAE837EAE837E
            AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF46AFFE66C5FFA3CCF1BEB3AB867170A9807AAE837EE5D8BDFF
            FFE2FFFFE2FFFFE0EEDFC6AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCBFB8C69E8ED8BD
            A3FFFFDDFFFFDDFFFFDBFFFFDAFFFFDBFFFFDDFFFFE9DEC9B7AE837EFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            AE857FDEC0A5FFF3C1FCF1C8FFFFDAFFFFD9FFFFDAFFFFE0FFFFE4FFFFEFFFFF
            FFDDCAC8AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFAE837EFFEFB9F5D4A5FBF0C6FFFFDBFFFFDAFFFFDDFFFFEB
            FFFFF5FFFFFBFFFFFDFFFFFEAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAE837EECD5B4F8D6A2F2C997FCEDC4FFFFDBFF
            FFDAFFFFE0FFFFF0FFFFFEFFFFFDFFFFF5FFFFEBE1D3B8AE837EFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFF3BFF4CB95F0C1
            8EF9E5BAFEFDD7FFFFDCFFFFDFFFFFECFFFFF8FFFFF8FFFFECFFFFE0FFFFE3AE
            837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837E
            FFF4C0F3C994EEB884F5D5A5FDF3CBFFFFDCFFFFDDFFFFE2FFFFE8FFFFE9FFFF
            E2FFFFDDFFFFE3AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFAE837EFFF5C3F6D19CEEB27DF1C593F7E0B3FDF7D0FFFFDCFFFFDD
            FFFFDDFFFFDDFFFFDBFFFFDAFFFFE1AE837EFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFAE837EECD5B4FDE6B2F3C996F2C792F3D09CF8
            E3B5FCF5CDFFFFDAFFFFDCFFFFDBFFFFDBFFFFDCE2D3B8AE837EFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFFED0FCF0
            D6F8E0BEF4CF9DF3CD9AF6D8AAFBEABFFDF4CBFCF7CFFEF8D1FFFFDEAE837EFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            AE837EE0CAB2FFFFFFFEF9F2F8E1BEF1C48DEEBA85F1C491F4D1A1F8DEB0FFF7
            C6DDC7AEAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFAE837ED9C6C0FFFFFFFFF7D7F8DAA6F4CB95F5CD99
            F9D9A6FFF1BBDEC2A9AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EAE837EE8D5B4FF
            F9C5FFF5C0FFF5C2EED8B7AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFAE837EAE837EAE837EAE837EAE837EFF00FFFF00FFFF00FFFF00FFFF
            00FF}
          Proportional = True
          Stretch = True
          Transparent = True
        end
        object lb1: TLabel
          Left = 550
          Top = 318
          Width = 52
          Height = 13
          Caption = 'Utl.Compra'
          FocusControl = dbeULTIMA_COMPRA
        end
        object Label35: TLabel
          Left = 3
          Top = 318
          Width = 92
          Height = 13
          Caption = 'Tabla:ProveeStock'
        end
        object dbgArticulos: TJvDBGrid
          Left = 0
          Top = 64
          Width = 721
          Height = 248
          DataSource = DatosProveedores.DSArticulosProveedor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColEnter = dbgArticulosColEnter
          OnDrawColumnCell = dbgArticulosDrawColumnCell
          OnDblClick = MarcarDefectoExecute
          OnEditButtonClick = BuscarArticuloExecute
          OnKeyPress = dbgArticulosKeyPress
          TitleButtons = True
          OnTitleBtnClick = dbgArticulosTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO_STK'
              Title.Alignment = taCenter
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_STK'
              Title.Alignment = taCenter
              Width = 321
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTO_NETO'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_FACTURACION'
              Title.Alignment = taCenter
              Title.Caption = 'Cod.Prov'
              Width = 104
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Width = 87
              Visible = True
            end>
        end
        object BitBtn4: TBitBtn
          Left = 637
          Top = 348
          Width = 75
          Height = 27
          Action = ListarArticulos
          Caption = 'Listar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            0000001C1F1C383F38383F38383F38383F38383F38FF00FFFF00FFFF00FF0000
            002F2F2F707F70707F70FF00FF0000000000A700006C383F38383F38383F3838
            3F38383F38FF00FF0000005F5F5FCFCFCF5F5F5F383F38FF00FFFF00FF000037
            0000DF0000A3000024FF00FFFF00FFFF00FF0000005F5F5FCFCFCFE0E0E0A8A8
            A85F5F5FFF00FFFF00FF0000000000A74C4FEF0000CB00006C0000000000005F
            5F5FCBCBCBDBDBDBE0E0E0A8A8A8E0E0E05F5F5FFF00FFFF00FF0000373434E7
            7C87FF0000A70000A3000024CFCFCFE0E0E0707070707070E0E0E0A8A8A8A8A8
            A85F5F5FFF00FFFF00FF181B3F606FFF4C4F7F0000000000CB00006C70707070
            7070E0E0E0707070E0E0E0E0E0E0A8A8A85F5F5FFF00FFFF00FFFF00FF000000
            00000000000000006F0000A338385C707070707070E0E0E0E0E0E0A8A8A8E0E0
            E05F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF0000007F7F7F0000CB00006CA8
            A8A8707070707070E0E0E0A8A8A8A8A8A85F5F5FFF00FFFF00FFFF00FFFF00FF
            FF00FF000000EFEFEF00006F3434BF181B3FE0E0E0E0E0E0E0E0E0EFEFEFDFDF
            DF5F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEF3838387C87FF34
            3B5BA8A8A8EFEFEFDFDFDFCFCFCFA8A8A85F5F5FFF00FFFF00FFFF00FFFF00FF
            FF00FF000000EFEFEF707070707070EFEFEFDFDFDFCFCFCFE0E0E0A8A8A8E0E0
            E05F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEFEFEFEFDFDFDFCF
            CFCF707070707070E0E0E0EFEFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FF
            FF00FF000000DFDFDFCFCFCF707070707070E0E0E0EFEFEF7F7F7F000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEF707070E0E0E0EF
            EFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000EFEFEFEFEFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF000000FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 1
        end
        object dbcSubRubro: TJvDBLookupCombo
          Left = 483
          Top = 37
          Width = 229
          Height = 21
          DisplayEmpty = 'Todos los Sub Rubros'
          EmptyValue = '*****'
          LookupField = 'CODIGO_SUBRUBRO'
          LookupDisplay = 'DETALLE_SUBRUBRO'
          LookupSource = DatosProveedores.DSBuscaSubRubro
          TabOrder = 2
          OnClick = ListarArticulosExecute
        end
        object dbcRubro: TJvDBLookupCombo
          Left = 229
          Top = 37
          Width = 248
          Height = 21
          DisplayEmpty = 'Todos los Rubros'
          EmptyValue = '***'
          LookupField = 'CODIGO_RUBRO'
          LookupDisplay = 'DETALLE_RUBRO'
          LookupSource = DatosProveedores.DSBuscaRubro
          TabOrder = 3
          OnClick = dbcRubroClick
        end
        object dbcMarca: TJvDBLookupCombo
          Left = 0
          Top = 37
          Width = 223
          Height = 21
          DisplayEmpty = 'Todas las Marcas'
          EmptyValue = '****'
          LookupField = 'MARCA_STK'
          LookupDisplay = 'DESCRIPCION_MARCA'
          LookupSource = DatosProveedores.DSBuscaMarca
          TabOrder = 4
          OnClick = ListarArticulosExecute
        end
        object BitBtn5: TBitBtn
          Left = 553
          Top = 348
          Width = 78
          Height = 27
          Action = ImprimirArticulos
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
          TabOrder = 5
        end
        object DBNavigator1: TDBNavigator
          Left = 307
          Top = 350
          Width = 240
          Height = 25
          DataSource = DatosProveedores.DSArticulosProveedor
          TabOrder = 6
        end
        object dbeULTIMA_COMPRA: TDBEdit
          Left = 608
          Top = 316
          Width = 103
          Height = 21
          DataField = 'ULTIMA_COMPRA'
          DataSource = DatosProveedores.DSArticulosProveedor
          Enabled = False
          TabOrder = 8
        end
        object dbsArticulo: TJvDBFindEdit
          Left = 314
          Top = 8
          Width = 361
          Height = 19
          Flat = True
          ParentFlat = False
          TabOrder = 7
          Text = ''
          DataField = 'DETALLE_STK'
          DataSource = DatosProveedores.DSArticulosProveedor
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        ImageIndex = 3
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 406
    Width = 756
    ButtonHeight = 27
    ExplicitTop = 406
    ExplicitWidth = 756
    inherited btConfirma: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited btNuevo: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited btCancelar: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited btModificar: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited Pr: TSpeedButton
      Height = 27
      ExplicitHeight = 27
    end
    inherited btBuscar: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited Ne: TSpeedButton
      Height = 27
      ExplicitHeight = 27
    end
    inherited btBorrar: TBitBtn
      Height = 27
      DoubleBuffered = True
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
      Width = 7
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimirFicha: TBitBtn
      Left = 564
      Top = 0
      Width = 78
      Height = 27
      Action = ImprimirFicha
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
    end
    object SpeedButton1: TSpeedButton
      Left = 642
      Top = 0
      Width = 22
      Height = 27
      Action = ActualizaCuitFc
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
        59008E5D59008E5D59008E5D59008E5D59008E5D5900FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E5D5900FFF2DD00FFF0DD00FFF2DC00FFF2DD00FFF2
        DC00FFF0DC00FFF2DD00FFF2DD00FFF0DD008E5D5900FF00FF00FF00FF000274
        AC000274AC000274AC008E5D5900FFF4E500D5812700D5812700D5812700D581
        2700FFF6E600FFF6E500FFF6E600FFF6E6008E5D5900FF00FF000274AC0048BC
        F6000274AC008CD8FA008E5D5900FFF8F000FFFAF000FFF8EF00FFF8EF00FFFA
        EF00FFF8EF00FFFAEF00FFFAF000FFFAF0008E5D5900FF00FF000274AC004FC4
        F7000274AC0092DDFB008E5D5900FFFCFA00FFFCF800FFFCF800FFFCF800FFFC
        F800FFFCF8001F81FF001F81FF00FFFEF8008E5D5900FF00FF000274AC0057CA
        F8000274AC0099E3FB008E5D5900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008E5D5900FF00FF000274AC005ED1
        FA000274AC00A1E9FC008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
        59008E5D59008E5D59008E5D59008E5D59008E5D5900FF00FF000274AC0069DC
        FA000274AC00A7EFFC0074E5FB0074E5FB0077E5FA007EE6FA0086E7F8008EEA
        F70096EAF6009EEBF40083C9E000A9EEF3000274AC00FF00FF000274AC0074E5
        FB000274AC00FEFEFE00B8F4FE00B8F4FE00B8F4FE00B8F4FE00B8F4FE00B8F4
        FE00B8F4FE00B8F4FE0083C9E000D4F7FA000274AC00FF00FF000274AC007AEB
        FE000274AC000274AC000274AC000274AC000274AC000274AC000274AC000274
        AC000274AC000274AC000274AC000274AC000274AC00FF00FF000274AC0082F2
        FC0082F2FC0082F2FC0082F2FC0082F2FC0082F2FC0082F2FC0082F2FC0082F2
        FC0082F2FC0082F2FC000274AC00FF00FF00FF00FF00FF00FF000274AC00FEFE
        FE0089F8FE0089F8FE0089F8FE0089F8FE0089F8FE0089F8FE0089F8FE0089F8
        FE0089F8FE0089F8FE000274AC00FF00FF00FF00FF00FF00FF00FF00FF000274
        AC00FEFEFE0089F8FE0089F8FE0089F8FE000274AC000274AC000274AC000274
        AC000274AC000274AC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000274AC000274AC000274AC000274AC00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  inherited Panel1: TPanel
    Top = 436
    Width = 756
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 436
    ExplicitWidth = 756
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 667
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 667
    end
  end
  inherited ActionList1: TActionList
    Left = 504
    Top = 8
    object BuscarCPostal: TAction
      Caption = 'BuscarCPostal'
      OnExecute = BuscarCPostalExecute
    end
    object BuscarPercepIB: TAction
      Caption = 'BuscarPercepIB'
      OnExecute = BuscarPercepIBExecute
    end
    object BuscarPercepIva: TAction
      Caption = 'BuscarPercepIva'
      OnExecute = BuscarPercepIvaExecute
    end
    object BuscarCondCompra: TAction
      Caption = 'BuscarCondCompra'
      OnExecute = BuscarCondCompraExecute
    end
    object Listar: TAction
      Caption = '&Listar'
      OnExecute = ListarExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object TraerCompras: TAction
      Caption = 'Traer Compras'
      OnExecute = TraerComprasExecute
    end
    object ListarArticulos: TAction
      Caption = 'Listar'
      OnExecute = ListarArticulosExecute
    end
    object ImprimirArticulos: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirArticulosExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object MarcarDefecto: TAction
      Caption = 'MarcarDefecto'
      OnExecute = MarcarDefectoExecute
    end
    object ImprimirFicha: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirFichaExecute
    end
    object ActualizaCuitFc: TAction
      Hint = 'Actualiza Cuit en las facturas del Proveedor'
      ImageIndex = 10
      OnExecute = ActualizaCuitFcExecute
    end
    object SincronizaAListaPreciosProveedor: TAction
      Caption = 'Sincroniza A Lista Precios Proveedor'
      OnExecute = SincronizaAListaPreciosProveedorExecute
    end
    object BuscarMarcas: TAction
      Caption = 'BuscarMarcas'
      OnExecute = BuscarMarcasExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosProveedores.CDSProveedor
    Left = 240
    Top = 104
  end
  inherited ImageList1: TImageList
    Left = 296
    Top = 96
    Bitmap = {
      494C01010B00DC00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      00008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
      59008E5D59008E5D59008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      00008E5D5900FFF2DD00FFF0DD00FFF2DC00FFF2DD00FFF2DC00FFF0DC00FFF2
      DD00FFF2DD00FFF0DD008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A0000000000000000000274AC000274AC000274
      AC008E5D5900FFF4E500D5812700D5812700D5812700D5812700FFF6E600FFF6
      E500FFF6E600FFF6E6008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000274AC0048BCF6000274AC008CD8
      FA008E5D5900FFF8F000FFFAF000FFF8EF00FFF8EF00FFFAEF00FFF8EF00FFFA
      EF00FFFAF000FFFAF0008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000274AC004FC4F7000274AC0092DD
      FB008E5D5900FFFCFA00FFFCF800FFFCF800FFFCF800FFFCF800FFFCF8001F81
      FF001F81FF00FFFEF8008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000274AC0057CAF8000274AC0099E3
      FB008E5D5900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000274AC005ED1FA000274AC00A1E9
      FC008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D59008E5D
      59008E5D59008E5D59008E5D5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000274AC0069DCFA000274AC00A7EF
      FC0074E5FB0074E5FB0077E5FA007EE6FA0086E7F8008EEAF70096EAF6009EEB
      F40083C9E000A9EEF3000274AC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000274AC0074E5FB000274AC00FEFE
      FE00B8F4FE00B8F4FE00B8F4FE00B8F4FE00B8F4FE00B8F4FE00B8F4FE00B8F4
      FE0083C9E000D4F7FA000274AC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000274AC007AEBFE000274AC000274
      AC000274AC000274AC000274AC000274AC000274AC000274AC000274AC000274
      AC000274AC000274AC000274AC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000274AC0082F2FC0082F2FC0082F2
      FC0082F2FC0082F2FC0082F2FC0082F2FC0082F2FC0082F2FC0082F2FC0082F2
      FC000274AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      0000000000000000000000000000000000000274AC00FEFEFE0089F8FE0089F8
      FE0089F8FE0089F8FE0089F8FE0089F8FE0089F8FE0089F8FE0089F8FE0089F8
      FE000274AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      000000000000000000000000000000000000000000000274AC00FEFEFE0089F8
      FE0089F8FE0089F8FE000274AC000274AC000274AC000274AC000274AC000274
      AC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      00000000000000000000000000000000000000000000000000000274AC000274
      AC000274AC000274AC0000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00F81FF33FFFFF0000E007E007F0010000
      C003C000F0010000800180018001000080010000000100000000000000010000
      000000000001000000008000000100000000E001000100000000F00300010000
      0000F01F000100008001E03F000700008001E03F00070000C003C03F800F0000
      E007C07FC3FF0000F81FF8FFFFFF0000FFFFF81FF81FF81FC007E007E007E007
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
    Left = 536
    Top = 456
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 56
    Top = 520
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 416
    Top = 392
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 664
    Top = 128
  end
  inherited QBrowse2: TFDQuery
    Left = 168
    Top = 424
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select Max(Codigo) as Codigo from poveedor'
      '')
    Left = 104
    Top = 464
  end
  object frProveedore: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.733145613430000000
    ReportOptions.LastChange = 39638.733145613430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 484
    Top = 512
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBDSProveedore: TfrxDBDataset
    UserName = 'frDBDSProveedore'
    CloseDataSource = False
    DataSet = DatosProveedores.CDSLstProveedores
    BCDToCurrency = False
    DataSetOptions = []
    Left = 684
    Top = 448
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
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'MUESTRAINSCRIPCION'
        FieldAlias = 'MUESTRAINSCRIPCION'
      end
      item
        FieldName = 'N_DE_CUIT'
        FieldAlias = 'N_DE_CUIT'
      end
      item
        FieldName = 'COD_POSTAL'
        FieldAlias = 'COD_POSTAL'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'TELEFONO_1'
        FieldAlias = 'TELEFONO_1'
      end
      item
        FieldName = 'TELEFONO_2'
        FieldAlias = 'TELEFONO_2'
      end
      item
        FieldName = 'MUESTRARUBRO'
        FieldAlias = 'MUESTRARUBRO'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'CORREO'
        FieldAlias = 'CORREO'
      end>
  end
  object ImageList2: TImageList
    Left = 389
    Top = 9
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC3F000000000000E00F000000000000
      C007000000000000800300000000000080010000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000100000000000000010000000000008001000000000000C003000000000000
      E007000000000000F01F00000000000000000000000000000000000000000000
      000000000000}
  end
  object DataToXLS1: TDataToXLS
    DataSet = DatosProveedores.CDSLstProveedores
    Columns = <>
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
    Left = 675
    Top = 515
  end
  object dlgSave1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'PercepIIBB'
    Title = 'Archivo de Retenciones'
    Left = 391
    Top = 116
  end
  object frDBArticulos: TfrxDBDataset
    UserName = 'frDBArticulos'
    CloseDataSource = False
    DataSet = DatosProveedores.CDSArticulosProveedor
    BCDToCurrency = False
    DataSetOptions = []
    Left = 564
    Top = 512
    FieldDefs = <
      item
        FieldName = 'ID_PROVEESTOCK'
        FieldAlias = 'ID_PROVEESTOCK'
      end
      item
        FieldName = 'CODIGO_STK'
        FieldAlias = 'CODIGO_STK'
      end
      item
        FieldName = 'CODIGO_FACTURACION'
        FieldAlias = 'CODIGO_FACTURACION'
      end
      item
        FieldName = 'CODIGO_INTERNO'
        FieldAlias = 'CODIGO_INTERNO'
      end
      item
        FieldName = 'CODIGO_REFERENCIA'
        FieldAlias = 'CODIGO_REFERENCIA'
      end
      item
        FieldName = 'ULTIMA_COMPRA'
        FieldAlias = 'ULTIMA_COMPRA'
      end
      item
        FieldName = 'PORDEFECTO'
        FieldAlias = 'PORDEFECTO'
      end
      item
        FieldName = 'CODIGO_PROVEEDOR'
        FieldAlias = 'CODIGO_PROVEEDOR'
      end
      item
        FieldName = 'COSTO_NETO'
        FieldAlias = 'COSTO_NETO'
      end
      item
        FieldName = 'MARCA_STK'
        FieldAlias = 'MARCA_STK'
      end
      item
        FieldName = 'DETALLE_STK'
        FieldAlias = 'DETALLE_STK'
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
        FieldName = 'RAZON_SOCIAL'
        FieldAlias = 'RAZON_SOCIAL'
      end
      item
        FieldName = 'PRESENTACION_UNIDAD'
        FieldAlias = 'PRESENTACION_UNIDAD'
      end
      item
        FieldName = 'PRESENTACION_CANTIDAD'
        FieldAlias = 'PRESENTACION_CANTIDAD'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'DESCRIPCION_MARCA'
        FieldAlias = 'DESCRIPCION_MARCA'
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
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end>
  end
  object frDBProveedor: TfrxDBDataset
    UserName = 'frDBProveedor'
    CloseDataSource = False
    DataSet = DatosProveedores.CDSProveedor
    BCDToCurrency = False
    DataSetOptions = []
    Left = 516
    Top = 200
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
        FieldName = 'N_DE_CUENTA'
        FieldAlias = 'N_DE_CUENTA'
      end
      item
        FieldName = 'ID_COD_POSTAL'
        FieldAlias = 'ID_COD_POSTAL'
      end
      item
        FieldName = 'COD_POSTAL'
        FieldAlias = 'COD_POSTAL'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'TELEFONO_1'
        FieldAlias = 'TELEFONO_1'
      end
      item
        FieldName = 'TELEFONO_2'
        FieldAlias = 'TELEFONO_2'
      end
      item
        FieldName = 'CONDICION_IVA'
        FieldAlias = 'CONDICION_IVA'
      end
      item
        FieldName = 'N_DE_CUIT'
        FieldAlias = 'N_DE_CUIT'
      end
      item
        FieldName = 'ACTIVO'
        FieldAlias = 'ACTIVO'
      end
      item
        FieldName = 'RETIENE_IVA'
        FieldAlias = 'RETIENE_IVA'
      end
      item
        FieldName = 'RETIENE_IB'
        FieldAlias = 'RETIENE_IB'
      end
      item
        FieldName = 'RETIENE_GANANCIAS'
        FieldAlias = 'RETIENE_GANANCIAS'
      end
      item
        FieldName = 'IVA_SERVICIOS'
        FieldAlias = 'IVA_SERVICIOS'
      end
      item
        FieldName = 'PRECIOS_CON_IVA'
        FieldAlias = 'PRECIOS_CON_IVA'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'NOMBRE_REPRESENTANTE'
        FieldAlias = 'NOMBRE_REPRESENTANTE'
      end
      item
        FieldName = 'DIRECCION_REPRESENTANTE'
        FieldAlias = 'DIRECCION_REPRESENTANTE'
      end
      item
        FieldName = 'TELEFONO_REPRESENTANTE'
        FieldAlias = 'TELEFONO_REPRESENTANTE'
      end
      item
        FieldName = 'TIPO_PROVEEDOR'
        FieldAlias = 'TIPO_PROVEEDOR'
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
        FieldName = 'SALDO_INICIAL'
        FieldAlias = 'SALDO_INICIAL'
      end
      item
        FieldName = 'ID_PERC_IVA'
        FieldAlias = 'ID_PERC_IVA'
      end
      item
        FieldName = 'ID_PERC_IBB'
        FieldAlias = 'ID_PERC_IBB'
      end
      item
        FieldName = 'ID_PERC_IBB_2'
        FieldAlias = 'ID_PERC_IBB_2'
      end
      item
        FieldName = 'RUBRO'
        FieldAlias = 'RUBRO'
      end
      item
        FieldName = 'ID_FACTURAPORDEFECTO'
        FieldAlias = 'ID_FACTURAPORDEFECTO'
      end
      item
        FieldName = 'EXENTO_GANACIA'
        FieldAlias = 'EXENTO_GANACIA'
      end
      item
        FieldName = 'CODIGO_REGIMEN_RET_GANACIA'
        FieldAlias = 'CODIGO_REGIMEN_RET_GANACIA'
      end
      item
        FieldName = 'EXENTO_RETENCION_IB'
        FieldAlias = 'EXENTO_RETENCION_IB'
      end
      item
        FieldName = 'ID_TASA_RETENCION_IB'
        FieldAlias = 'ID_TASA_RETENCION_IB'
      end
      item
        FieldName = 'NRO_IIBB'
        FieldAlias = 'NRO_IIBB'
      end
      item
        FieldName = 'CORREO'
        FieldAlias = 'CORREO'
      end
      item
        FieldName = 'CONV_MULTI'
        FieldAlias = 'CONV_MULTI'
      end
      item
        FieldName = 'MONEDA_PRECIOS'
        FieldAlias = 'MONEDA_PRECIOS'
      end
      item
        FieldName = 'TELEDISCADO'
        FieldAlias = 'TELEDISCADO'
      end
      item
        FieldName = 'DESPERIVA'
        FieldAlias = 'DESPERIVA'
      end
      item
        FieldName = 'DESPERIB'
        FieldAlias = 'DESPERIB'
      end
      item
        FieldName = 'DESPERIB2'
        FieldAlias = 'DESPERIB2'
      end
      item
        FieldName = 'MUESTRADETALLERETIIBB'
        FieldAlias = 'MUESTRADETALLERETIIBB'
      end
      item
        FieldName = 'MUESTRATASARETIIBB'
        FieldAlias = 'MUESTRATASARETIIBB'
      end
      item
        FieldName = 'MUESTRAMINIMPONIRETIIBB'
        FieldAlias = 'MUESTRAMINIMPONIRETIIBB'
      end
      item
        FieldName = 'RUBRO_GASTO'
        FieldAlias = 'RUBRO_GASTO'
      end
      item
        FieldName = 'SUB_RUB_GASTOS'
        FieldAlias = 'SUB_RUB_GASTOS'
      end
      item
        FieldName = 'CON_OCOMPRA'
        FieldAlias = 'CON_OCOMPRA'
      end
      item
        FieldName = 'ID_FACTURACTDODEFECTO'
        FieldAlias = 'ID_FACTURACTDODEFECTO'
      end
      item
        FieldName = 'ID_PERC_IBB_3'
        FieldAlias = 'ID_PERC_IBB_3'
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
        FieldName = 'RETENCION_IVA'
        FieldAlias = 'RETENCION_IVA'
      end
      item
        FieldName = 'CODIGO_RET_IVA'
        FieldAlias = 'CODIGO_RET_IVA'
      end
      item
        FieldName = 'PORCENTAJE_RET_IVA'
        FieldAlias = 'PORCENTAJE_RET_IVA'
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
    Left = 216
    Top = 520
  end
  object ComBuscadorPercIVA: TComBuscador
    Data = DatosProveedores.CDSBuscaPercepIVA
    Campo = 'CODIGO'
    Titulo = 'Percecpiones IVA'
    rOk = False
    Left = 336
    Top = 192
  end
  object ComBuscadorPercIIBB: TComBuscador
    Data = DatosProveedores.CDSBuscaPercepIB
    Campo = 'CODIGO'
    Titulo = 'Perc.IIBB'
    rOk = False
    Left = 264
    Top = 274
  end
  object ComBuscadorLocalidad: TComBuscador
    Data = DatosProveedores.CDSBuscaCPostal
    Campo = 'ID_POSTAL'
    Titulo = 'Localidades'
    rOk = False
    Left = 264
    Top = 328
  end
  object ComBuscadorFPago: TComBuscador
    Data = DatosProveedores.CDSBuscaFPago
    Campo = 'CODIGO'
    Titulo = 'Forma de Pago'
    rOk = False
    Left = 664
    Top = 184
  end
  object DSRegimenIva: TDataSource
    DataSet = DatosProveedores.CDSBuscaRegimen
    Left = 328
    Top = 512
  end
  object PopupMenu1: TPopupMenu
    Left = 636
    Top = 232
    object SincronizaAListaPreciosProveedor1: TMenuItem
      Action = SincronizaAListaPreciosProveedor
    end
  end
  object ComBuscadorMarcas: TComBuscador
    Data = DatosProveedores.CDSBuscaMarca
    Campo = 'MARCA_STK'
    Titulo = 'Marcas'
    rOk = False
    Left = 288
    Top = 168
  end
  object PopupMenuClipBoard: TPopupMenu
    Left = 408
    Top = 472
    object CopiarPortaPapeles1: TMenuItem
      Caption = 'Copiar Porta Papeles'
      OnClick = CopiarPortaPapeles1Click
    end
  end
end

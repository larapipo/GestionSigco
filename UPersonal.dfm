inherited FormPersonal: TFormPersonal
  Left = 503
  Top = 84
  Caption = 'Personal de la Empresa'
  ClientHeight = 764
  ClientWidth = 704
  StyleElements = [seFont, seClient, seBorder]
  ExplicitTop = -106
  ExplicitWidth = 722
  ExplicitHeight = 805
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 704
    Height = 513
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 704
    ExplicitHeight = 513
    object pcEmpleados: TJvPageControl
      Left = 0
      Top = 0
      Width = 704
      Height = 507
      ActivePage = pag1
      Align = alTop
      HotTrack = True
      MultiLine = True
      Style = tsButtons
      TabOrder = 0
      ParentColor = False
      Color = clGradientInactiveCaption
      object pag1: TTabSheet
        Caption = 'Datos'
        object pnDatos: TPanel
          Left = 0
          Top = 0
          Width = 696
          Height = 476
          Align = alClient
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 33
            Height = 13
            Caption = 'Codigo'
            FocusControl = dbeCodigo
          end
          object Label2: TLabel
            Left = 80
            Top = 8
            Width = 37
            Height = 13
            Caption = 'Nombre'
            FocusControl = dbeNombre
          end
          object Label4: TLabel
            Left = 8
            Top = 48
            Width = 42
            Height = 13
            Caption = 'Domicilio'
            FocusControl = dbeDomicilio
          end
          object Label5: TLabel
            Left = 8
            Top = 88
            Width = 46
            Height = 13
            Caption = 'Localidad'
            FocusControl = dbeLocalidad
          end
          object Label7: TLabel
            Left = 344
            Top = 48
            Width = 47
            Height = 13
            Caption = 'Telefonos'
            FocusControl = dbeTel1
          end
          object Label8: TLabel
            Left = 344
            Top = 125
            Width = 55
            Height = 13
            Caption = 'Estado Civil'
          end
          object Label9: TLabel
            Left = 8
            Top = 128
            Width = 28
            Height = 13
            Caption = 'Cargo'
          end
          object Label11: TLabel
            Left = 8
            Top = 168
            Width = 45
            Height = 13
            Caption = 'Categoria'
          end
          object Label13: TLabel
            Left = 344
            Top = 168
            Width = 35
            Height = 13
            Caption = 'Ingreso'
          end
          object Label14: TLabel
            Left = 488
            Top = 125
            Width = 53
            Height = 13
            Caption = 'Nacimiento'
          end
          object Label3: TLabel
            Left = 23
            Top = 324
            Width = 109
            Height = 13
            Caption = 'Comisi'#243'n Sobre Ventas'
            FocusControl = dbeComision
          end
          object Label6: TLabel
            Left = 7
            Top = 208
            Width = 52
            Height = 13
            Caption = 'Valor/Hora'
            FocusControl = dbeValorHora
          end
          object Label10: TLabel
            Left = 20
            Top = 426
            Width = 87
            Height = 13
            Caption = 'Correo Electr'#243'nico'
            FocusControl = dbeCorreo
          end
          object Label12: TLabel
            Left = 384
            Top = 8
            Width = 105
            Height = 13
            Caption = 'Politica de Comisiones'
          end
          object Label15: TLabel
            Left = 87
            Top = 208
            Width = 90
            Height = 13
            Caption = 'Modo Contrataci'#243'n'
          end
          object Label16: TLabel
            Left = 302
            Top = 211
            Width = 119
            Height = 13
            Caption = 'Comisiones por Cobranza'
            FocusControl = dbeComision
          end
          object Label17: TLabel
            Left = 9
            Top = 343
            Width = 122
            Height = 13
            Caption = 'Sucursal/Centro de Costo'
          end
          object Label18: TLabel
            Left = 344
            Top = 88
            Width = 24
            Height = 13
            Caption = 'CUIL'
          end
          object Label19: TLabel
            Left = 448
            Top = 88
            Width = 60
            Height = 13
            Caption = 'Codigo Reloj'
          end
          object Label20: TLabel
            Left = 557
            Top = 88
            Width = 52
            Height = 13
            Caption = 'Nro.Legajo'
          end
          object Label21: TLabel
            Left = 488
            Top = 168
            Width = 159
            Height = 13
            Caption = 'Deposito para Pedidos (Sis.Axum)'
          end
          object Label22: TLabel
            Left = 9
            Top = 383
            Width = 85
            Height = 13
            Caption = 'Sector de Trabajo'
          end
          object dbeCodigo: TDBEdit
            Left = 8
            Top = 24
            Width = 64
            Height = 21
            TabStop = False
            Color = clWhite
            DataField = 'CODIGO'
            DataSource = DSBase
            TabOrder = 0
            OnExit = dbeCodigoExit
          end
          object dbeNombre: TDBEdit
            Left = 80
            Top = 24
            Width = 289
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOMBRE'
            DataSource = DSBase
            TabOrder = 1
          end
          object dbeDomicilio: TDBEdit
            Left = 8
            Top = 64
            Width = 304
            Height = 21
            DataField = 'DOMICILIO'
            DataSource = DSBase
            TabOrder = 2
          end
          object dbeLocalidad: TDBEdit
            Left = 80
            Top = 104
            Width = 184
            Height = 21
            Color = clInfoBk
            DataField = 'MUESTRALOCALIDAD'
            DataSource = DSBase
            Enabled = False
            TabOrder = 3
          end
          object dbeTel2: TDBEdit
            Left = 448
            Top = 64
            Width = 94
            Height = 21
            DataField = 'TELEFONO_2'
            DataSource = DSBase
            TabOrder = 4
          end
          object dbeTel1: TDBEdit
            Left = 344
            Top = 64
            Width = 94
            Height = 21
            DataField = 'TELEFONO_1'
            DataSource = DSBase
            TabOrder = 5
          end
          object dbeMuestraCargo: TDBEdit
            Left = 80
            Top = 144
            Width = 184
            Height = 21
            Color = clInfoBk
            DataField = 'MUESTRACARGO'
            DataSource = DSBase
            Enabled = False
            TabOrder = 6
          end
          object dbeMuestraCategoria: TDBEdit
            Left = 80
            Top = 184
            Width = 184
            Height = 21
            Color = clInfoBk
            DataField = 'MUESTRACATEGORIA'
            DataSource = DSBase
            Enabled = False
            TabOrder = 7
          end
          object dbeComision: TDBEdit
            Left = 138
            Top = 321
            Width = 64
            Height = 21
            DataField = 'COMISION'
            DataSource = DSBase
            TabOrder = 14
          end
          object dbeValorHora: TDBEdit
            Left = 7
            Top = 224
            Width = 64
            Height = 21
            DataField = 'VALORHORA'
            DataSource = DSBase
            TabOrder = 15
          end
          object DBCheckBox1: TDBCheckBox
            Left = 7
            Top = 249
            Width = 209
            Height = 17
            Hint = 
              'Sirve para filtrar a los que autorizan las Ordenes de Compra '#13#10'c' +
              'uando tiene que elegirse en la opci'#243'n mencionada'
            Caption = 'Autoriza Orden de Compra'
            DataField = 'AUTORIZAOC'
            DataSource = DSBase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 266
            Width = 185
            Height = 17
            Hint = 'Son los que pueden hacer Notas de Pedido '
            Caption = 'Pertenece a grupo de Compras'
            DataField = 'SECTORDECOMPRA'
            DataSource = DSBase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbeCorreo: TDBEdit
            Left = 9
            Top = 445
            Width = 548
            Height = 21
            DataField = 'CORREO'
            DataSource = DSBase
            TabOrder = 18
          end
          object dblPoliticaComision: TDBLookupComboBox
            Left = 384
            Top = 24
            Width = 208
            Height = 21
            DataField = 'POLITICACOMISION'
            DataSource = DSBase
            KeyField = 'ID'
            ListField = 'NOMBRE'
            ListSource = DSPoliticaComision
            TabOrder = 19
          end
          object DBCheckBox3: TDBCheckBox
            Left = 7
            Top = 283
            Width = 185
            Height = 17
            Hint = 'Vendedores'
            Caption = 'Es Vendedor'
            DataField = 'VENDEDOR'
            DataSource = DSBase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 20
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbgComprobantes: TDBGrid
            Left = 302
            Top = 230
            Width = 318
            Height = 98
            Ctl3D = True
            DataSource = DSComprobantes
            FixedColor = clMoneyGreen
            ParentCtl3D = False
            TabOrder = 21
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyPress = dbgComprobantesKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'MuestraComprobante'
                Title.Alignment = taCenter
                Title.Caption = 'Comprobante de Cobro'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 162
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PORCENTAJE'
                Title.Alignment = taCenter
                Title.Caption = '% Comisi'#243'n'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 116
                Visible = True
              end>
          end
          object DBCheckBox4: TDBCheckBox
            Left = 7
            Top = 301
            Width = 110
            Height = 17
            Hint = 'Cobradores'
            Caption = 'Es Cobrador'
            DataField = 'COBRADOR'
            DataSource = DSBase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 22
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 80
            Top = 224
            Width = 141
            Height = 21
            DataField = 'MODODEPENDENCIA'
            DataSource = DSBase
            Items.Strings = (
              'Estable'
              'Temporario'
              'Eventual')
            TabOrder = 23
            UpdateFieldImmediatelly = True
            Values.Strings = (
              'F'
              'E'
              'T')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object DBCheckBox5: TDBCheckBox
            Left = 616
            Top = 24
            Width = 76
            Height = 17
            Hint = 'Cobradores'
            Caption = 'Activo'
            DataField = 'ACTIVO'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 24
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object RxCCategoria: TJvDBComboEdit
            Left = 8
            Top = 184
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            ClickKey = 16397
            DataField = 'CATEGORIA'
            DataSource = DSBase
            Glyph.Data = {
              4E000000424D4E000000000000003E000000280000000A000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FFC000003300000033000000FFC00000}
            ButtonWidth = 16
            TabOrder = 8
            OnButtonClick = BuscarCategoriaExecute
          end
          object RxCCargo: TJvDBComboEdit
            Left = 8
            Top = 144
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            ClickKey = 16397
            DataField = 'CARGO'
            DataSource = DSBase
            Glyph.Data = {
              4E000000424D4E000000000000003E000000280000000A000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FFC000003300000033000000FFC00000}
            ButtonWidth = 16
            TabOrder = 9
            OnButtonClick = BuscarCargoExecute
          end
          object RxCCPostal: TJvDBComboEdit
            Left = 8
            Top = 104
            Width = 65
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            ClickKey = 16397
            DataField = 'LOCALIDAD'
            DataSource = DSBase
            Glyph.Data = {
              4E000000424D4E000000000000003E000000280000000A000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FFC000003300000033000000FFC00000}
            ButtonWidth = 16
            TabOrder = 13
            OnButtonClick = BuscarLocalidadesExecute
          end
          object dbdIngreso: TJvDBDateEdit
            Left = 344
            Top = 184
            Width = 121
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataField = 'FECHA_INGRESO'
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
            PopupColor = clBtnFace
            ShowNullDate = False
            TabOrder = 11
          end
          object dbdNacimiento: TJvDBDateEdit
            Left = 488
            Top = 141
            Width = 121
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            DataField = 'FECHA_NACIMIENTO'
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
            PopupColor = clBtnFace
            ShowNullDate = False
            TabOrder = 12
          end
          object dbcSucursal: TDBLookupComboBox
            Left = 9
            Top = 359
            Width = 193
            Height = 21
            DataField = 'SUCURSAL'
            DataSource = DSBase
            KeyField = 'CODIGO'
            ListField = 'DETALLE'
            ListSource = DSSucursal
            TabOrder = 25
          end
          inline FrameCtaContable1: TFrameCtaContable
            Left = 231
            Top = 337
            Width = 361
            Height = 58
            AutoSize = True
            Color = clBtnFace
            Padding.Left = 3
            Padding.Top = 3
            Padding.Bottom = 3
            ParentBackground = False
            ParentColor = False
            TabOrder = 26
            ExplicitLeft = 231
            ExplicitTop = 337
            inherited pnBase: TPanel
              StyleElements = [seFont, seClient, seBorder]
              inherited dbtNombre: TDBText
                StyleElements = [seFont, seClient, seBorder]
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
          object dbeCuil: TDBEdit
            Left = 344
            Top = 104
            Width = 94
            Height = 21
            DataField = 'CUIL'
            DataSource = DSBase
            TabOrder = 27
          end
          object DBComboBox1: TDBComboBox
            Left = 344
            Top = 141
            Width = 121
            Height = 21
            DataField = 'ESTADO_CIVIL'
            DataSource = DSBase
            Items.Strings = (
              'No Informado'#9'X'
              'Casado'#9'C'
              'Soltero'#9'S'
              'Separado'#9'P'
              'Viudo'#9'V'
              'Concubino'#9'O')
            TabOrder = 10
          end
          object DBEdit1: TDBEdit
            Left = 448
            Top = 104
            Width = 94
            Height = 21
            DataField = 'CODIGO_RELOJ'
            DataSource = DSBase
            TabOrder = 28
          end
          object DBEdit2: TDBEdit
            Left = 555
            Top = 104
            Width = 94
            Height = 21
            DataField = 'LEGAJO'
            DataSource = DSBase
            TabOrder = 29
          end
          object chbAfiliado: TDBCheckBox
            Left = 557
            Top = 65
            Width = 124
            Height = 17
            Hint = 'Cobradores'
            Caption = 'Es Afiliado al Sindicato'
            DataField = 'AFILIADO'
            DataSource = DSBase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 30
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 488
            Top = 184
            Width = 193
            Height = 21
            DataField = 'DEPOSITO'
            DataSource = DSBase
            DropDownRows = 12
            KeyField = 'ID'
            ListField = 'NOMBRE'
            ListSource = DSDepositos
            TabOrder = 31
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 9
            Top = 399
            Width = 193
            Height = 21
            DataField = 'SECTOR_PRODUCCION'
            DataSource = DSBase
            DropDownRows = 12
            KeyField = 'ID'
            ListField = 'DETALLE'
            ListSource = DSSector
            TabOrder = 32
          end
        end
      end
      object pag2: TTabSheet
        Caption = 'Novedades'
        ImageIndex = 1
      end
      object pag3: TTabSheet
        Caption = 'Listado'
        ImageIndex = 2
        object dbgListado: TJvDBGrid
          Left = 0
          Top = 0
          Width = 696
          Height = 401
          Align = alTop
          DataSource = DSListado
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleButtons = True
          OnTitleBtnClick = dbgListadoTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
        end
        object btImprimir: TBitBtn
          Left = 622
          Top = 416
          Width = 71
          Height = 29
          Action = Imprimir
          Caption = 'Imprimir'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF006C6A6A006C6A6A00FF00FF00FF00FF006C6A6A006C6A
            6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF006C6A6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3
            E3006C6A6A006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF006C6A6A00DAD9D900A19F9F00A19F9F00A19F9F0037363600353535006C6D
            6D00BFBFBF00E1E2E200B7B6B6006C6A6A006C6A6A006C6A6A00FF00FF006C6A
            6A00D4D3D300CACACA008E8C8C008E8C8C008E8C8C003C3B3B000A090A000707
            07000B0B0B00070707007A7A7A00BBBBBB006C6A6A00FF00FF006C6A6A00CACA
            CA00CACACA008E8C8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A0008886
            86005E5B5C000707070009090900080808006C6A6A00767373006C6A6A00CACA
            CA008E8C8C00EFEEEE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCE
            CE00BDBCBC00ADABAB008B898900585656007A787800757373006C6A6A008E8C
            8C00FFFFFF00FEFCFC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0
            C100D7D7D700D8D8D800C7C6C600B7B6B600918F8F006C696900FF00FF006C6A
            6A006C6A6A00EDEBEB00B1A6A7007A6F72008A83880096929500969091009D97
            98009A9395009E989900BBBABA00D1D1D100C2C2C2006C6A6A00FF00FF00FF00
            FF00FF00FF006C6A6A00BB897F00A7876D008B6F64007D6760006F6265007973
            79008F8B8E00A9A3A400CBCACA00C1C1C1006C6A6A00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BD828100FFE3B400FFD39F00E9B28100C9997300BA91
            6C00BD828100807D7E006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC6
            8800BD828100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00C0868300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD82
            8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BD828100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD82
            8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00BD828100FFFFF200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD82
            8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00BD828100BD828100BD828100FBEFE200FBE3CF00FBDDC200BD828100FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00BD828100BD828100BD828100FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 1
        end
        object btListar: TBitBtn
          Left = 541
          Top = 416
          Width = 75
          Height = 28
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
          TabOrder = 2
          OnClick = btListarClick
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Listado Agrupado por Suc'
        ImageIndex = 3
        object dbgListadoSuc: TJvDBGrid
          Left = 3
          Top = 3
          Width = 582
          Height = 382
          DataSource = DSListadoPorSuc
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleButtons = True
          OnTitleBtnClick = dbgListadoTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
        end
        object btListarPorSucursal: TBitBtn
          Left = 401
          Top = 391
          Width = 75
          Height = 28
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
          TabOrder = 1
          OnClick = btListarPorSucursalClick
        end
        object btImprimirAgrupado: TBitBtn
          Left = 482
          Top = 391
          Width = 71
          Height = 29
          Action = Imprimir
          Caption = 'Imprimir'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF006C6A6A006C6A6A00FF00FF00FF00FF006C6A6A006C6A
            6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF006C6A6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3
            E3006C6A6A006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF006C6A6A00DAD9D900A19F9F00A19F9F00A19F9F0037363600353535006C6D
            6D00BFBFBF00E1E2E200B7B6B6006C6A6A006C6A6A006C6A6A00FF00FF006C6A
            6A00D4D3D300CACACA008E8C8C008E8C8C008E8C8C003C3B3B000A090A000707
            07000B0B0B00070707007A7A7A00BBBBBB006C6A6A00FF00FF006C6A6A00CACA
            CA00CACACA008E8C8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A0008886
            86005E5B5C000707070009090900080808006C6A6A00767373006C6A6A00CACA
            CA008E8C8C00EFEEEE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCE
            CE00BDBCBC00ADABAB008B898900585656007A787800757373006C6A6A008E8C
            8C00FFFFFF00FEFCFC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0
            C100D7D7D700D8D8D800C7C6C600B7B6B600918F8F006C696900FF00FF006C6A
            6A006C6A6A00EDEBEB00B1A6A7007A6F72008A83880096929500969091009D97
            98009A9395009E989900BBBABA00D1D1D100C2C2C2006C6A6A00FF00FF00FF00
            FF00FF00FF006C6A6A00BB897F00A7876D008B6F64007D6760006F6265007973
            79008F8B8E00A9A3A400CBCACA00C1C1C1006C6A6A00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BD828100FFE3B400FFD39F00E9B28100C9997300BA91
            6C00BD828100807D7E006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC6
            8800BD828100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00C0868300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD82
            8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BD828100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD82
            8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00BD828100FFFFF200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD82
            8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00BD828100BD828100BD828100FBEFE200FBE3CF00FBDDC200BD828100FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00BD828100BD828100BD828100FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 2
        end
        object chActivos: TCheckBox
          Left = 403
          Top = 425
          Width = 134
          Height = 17
          Caption = 'Listar Solo los Activos'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = chActivosClick
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 513
    Width = 704
    ExplicitTop = 513
    ExplicitWidth = 704
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
    end
  end
  inherited Panel1: TPanel
    Top = 543
    Width = 704
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 543
    ExplicitWidth = 704
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 615
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 615
    end
  end
  inherited ActionList1: TActionList
    Left = 624
    Top = 65528
    object BuscarCargo: TAction
      Caption = 'BuscarCargo'
      OnExecute = BuscarCargoExecute
    end
    object BuscarLocalidades: TAction
      Caption = 'BuscarLocalidades'
      OnExecute = BuscarLocalidadesExecute
    end
    object BuscarCategoria: TAction
      Caption = 'BuscarCategoria'
      OnExecute = BuscarCategoriaExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSPersonal
    Left = 216
    Top = 240
  end
  inherited ImageList1: TImageList
    Left = 272
    Top = 32
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
    Left = 600
    Top = 480
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 696
  end
  inherited ComBuscadorBase: TComBuscador
    Data = CDSBuscaPersonal
    Campo = 'codigo'
    Titulo = 'Personal'
    Left = 632
    Top = 320
  end
  inherited QBrowse2: TFDQuery
    Left = 16
    Top = 576
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(codigo) from personal'
      '')
    Left = 96
    Top = 704
  end
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 112
  end
  object DSPoliticaComision: TDataSource
    DataSet = CDSPoliticaComision
    Left = 216
    Top = 424
  end
  object DSRecibos: TDataSource
    DataSet = CDSRecibos
    Left = 272
    Top = 544
  end
  object CDSComrobantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPComprobantes'
    OnNewRecord = CDSComrobantesNewRecord
    Left = 216
    Top = 592
    object CDSComrobantesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSComrobantesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSComrobantesMuestraComprobante: TStringField
      FieldKind = fkLookup
      FieldName = 'MuestraComprobante'
      LookupDataSet = CDSRecibos
      LookupKeyFields = 'ID_COMPROBANTE'
      LookupResultField = 'DENOMINACION'
      KeyFields = 'ID_CPBTE'
      Lookup = True
    end
    object CDSComrobantesPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      DisplayFormat = '0.00'
    end
  end
  object DSPComprobantes: TDataSetProvider
    DataSet = QComprobantes
    Options = []
    Left = 152
    Top = 592
  end
  object DSComprobantes: TDataSource
    DataSet = CDSComrobantes
    Left = 272
    Top = 600
  end
  object CDSBuscaPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPersonal'
    Left = 496
    Top = 552
    object CDSBuscaPersonalNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 60
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaPersonalCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPBuscaPersonal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPersonal
    Options = []
    Left = 432
    Top = 552
  end
  object DSPBuscaLocalidad: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCPostal
    Options = []
    Left = 432
    Top = 504
  end
  object CDSBuscaLocalidad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaLocalidad'
    Left = 496
    Top = 504
    object CDSBuscaLocalidadDETALLE_POSTAL: TStringField
      DisplayLabel = 'Localidad'
      DisplayWidth = 25
      FieldName = 'DETALLE_POSTAL'
      Size = 25
    end
    object CDSBuscaLocalidadCODIGO_POSTAL: TStringField
      DisplayLabel = 'C.Postal'
      DisplayWidth = 8
      FieldName = 'CODIGO_POSTAL'
      Size = 8
    end
    object CDSBuscaLocalidadID_POSTAL: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_POSTAL'
      Required = True
    end
  end
  object DSPBuscaCategoria: TDataSetProvider
    DataSet = QBuscadorCategoria
    Options = []
    Left = 280
    Top = 216
  end
  object CDSBuscaCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCategoria'
    Left = 304
    Top = 176
    object CDSBuscaCategoriaDETALLE: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 30
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object CDSBuscaCategoriaID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPBuscaCargo: TDataSetProvider
    DataSet = QBuscadorCargo
    Left = 400
    Top = 376
  end
  object CDSBuscaCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCargo'
    Left = 480
    Top = 376
    object CDSBuscaCargoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 30
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object CDSBuscaCargoID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object CDSPersonal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPersonal'
    OnNewRecord = CDSPersonalNewRecord
    Left = 256
    Top = 96
    object CDSPersonalCARGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CARGO'
      Origin = 'CARGO'
      OnSetText = CDSPersonalCARGOSetText
    end
    object CDSPersonalCATEGORIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      OnSetText = CDSPersonalCATEGORIASetText
    end
    object CDSPersonalCTACONTABLE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CTACONTABLE'
      Origin = 'CTACONTABLE'
    end
    object CDSPersonalDOMICILIO: TStringField
      DisplayWidth = 50
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 50
    end
    object CDSPersonalESTADO_CIVIL: TStringField
      DisplayWidth = 1
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      Size = 1
    end
    object CDSPersonalNOMBRE: TStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalTELEFONO_2: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 15
    end
    object CDSPersonalMUESTRACARGO: TStringField
      DisplayWidth = 30
      FieldName = 'MUESTRACARGO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object CDSPersonalMUESTRACATEGORIA: TStringField
      DisplayWidth = 30
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object CDSPersonalTELEFONO_1: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 15
    end
    object CDSPersonalLOCALIDAD: TIntegerField
      DisplayWidth = 10
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      OnSetText = CDSPersonalLOCALIDADSetText
    end
    object CDSPersonalMUESTRALOCALIDAD: TStringField
      DisplayWidth = 25
      FieldName = 'MUESTRALOCALIDAD'
      Origin = 'DETALLE_POSTAL'
      ProviderFlags = []
      Size = 25
    end
    object CDSPersonalMUESTRACPOSTAL: TStringField
      DisplayWidth = 8
      FieldName = 'MUESTRACPOSTAL'
      Origin = 'CODIGO_POSTAL'
      ProviderFlags = []
      Size = 8
    end
    object CDSPersonalCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnSetText = CDSPersonalCODIGOSetText
      Size = 6
    end
    object CDSPersonalAUTORIZAOC: TStringField
      DisplayWidth = 3
      FieldName = 'AUTORIZAOC'
      Origin = 'AUTORIZAOC'
      Size = 1
    end
    object CDSPersonalSECTORDECOMPRA: TStringField
      DisplayWidth = 3
      FieldName = 'SECTORDECOMPRA'
      Origin = 'SECTORDECOMPRA'
      Size = 1
    end
    object CDSPersonalCORREO: TStringField
      DisplayWidth = 100
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 100
    end
    object CDSPersonalPOLITICACOMISION: TIntegerField
      DisplayWidth = 10
      FieldName = 'POLITICACOMISION'
      Origin = 'POLITICACOMISION'
    end
    object CDSPersonalMODODEPENDENCIA: TStringField
      DisplayWidth = 1
      FieldName = 'MODODEPENDENCIA'
      Origin = 'MODODEPENDENCIA'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalVENDEDOR: TStringField
      DisplayWidth = 1
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalCOBRADOR: TStringField
      DisplayWidth = 1
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalACTIVO: TStringField
      DisplayWidth = 1
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalFECHA_INGRESO: TSQLTimeStampField
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object CDSPersonalFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
    object CDSPersonalSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSPersonalCUIL: TStringField
      FieldName = 'CUIL'
      Origin = 'CUIL'
      EditMask = '00-00000000-0;1'
      Size = 13
    end
    object CDSPersonalVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
      DisplayFormat = '0.00'
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Origin = 'COMISION'
      DisplayFormat = '0.00'
    end
    object CDSPersonalCODIGO_RELOJ: TStringField
      FieldName = 'CODIGO_RELOJ'
      Size = 10
    end
    object CDSPersonalLEGAJO: TStringField
      FieldName = 'LEGAJO'
      Size = 15
    end
    object CDSPersonalAFILIADO: TStringField
      FieldName = 'AFILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPersonalDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSPersonalMUESTRADEPOSITO: TIntegerField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
    end
    object CDSPersonalSECTOR_PRODUCCION: TIntegerField
      FieldName = 'SECTOR_PRODUCCION'
      Required = True
    end
  end
  object DSPListado: TDataSetProvider
    DataSet = QListado
    Options = []
    Left = 152
    Top = 640
  end
  object CDSListado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListado'
    OnNewRecord = CDSPersonalNewRecord
    Left = 216
    Top = 640
    object CDSListadoCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSListadoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 38
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSListadoCARGO: TIntegerField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Visible = False
    end
    object CDSListadoCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Visible = False
    end
    object CDSListadoCTACONTABLE: TIntegerField
      FieldName = 'CTACONTABLE'
      Origin = 'CTACONTABLE'
      Visible = False
    end
    object CDSListadoDOMICILIO: TStringField
      DisplayLabel = 'Domicilio'
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 50
    end
    object CDSListadoESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSListadoAUTORIZAOC: TStringField
      FieldName = 'AUTORIZAOC'
      Origin = 'AUTORIZAOC'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSListadoSECTORDECOMPRA: TStringField
      FieldName = 'SECTORDECOMPRA'
      Origin = 'SECTORDECOMPRA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSListadoFECHA_INGRESO: TSQLTimeStampField
      DisplayLabel = 'Fecha de Ingreso'
      DisplayWidth = 20
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object CDSListadoFECHA_NACIMIENTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Nacimiento'
      DisplayWidth = 18
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
    object CDSListadoLOCALIDAD: TIntegerField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object CDSListadoTELEFONO_1: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 15
    end
    object CDSListadoMODODEPENDENCIA: TStringField
      FieldName = 'MODODEPENDENCIA'
      Origin = 'MODODEPENDENCIA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSListadoTELEFONO_2: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 15
    end
    object CDSListadoMUESTRACARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'MUESTRACARGO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object CDSListadoMUESTRACATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object CDSListadoMUESTRALOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'MUESTRALOCALIDAD'
      Origin = 'DETALLE_POSTAL'
      ProviderFlags = []
      Size = 25
    end
    object CDSListadoCORREO: TStringField
      DisplayLabel = 'Correo'
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 100
    end
    object CDSListadoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSListadoCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSListadoMUESTRACPOSTAL: TStringField
      DisplayLabel = 'C.Postal'
      FieldName = 'MUESTRACPOSTAL'
      Origin = 'CODIGO_POSTAL'
      ProviderFlags = []
      Size = 8
    end
    object CDSListadoPOLITICACOMISION: TIntegerField
      FieldName = 'POLITICACOMISION'
      Origin = 'POLITICACOMISION'
      Visible = False
    end
    object CDSListadoACTIVO: TStringField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListadoVALORHORA: TFloatField
      DisplayLabel = 'Valor Hora'
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object CDSListadoCOMISION: TFloatField
      DisplayLabel = 'Comsion'
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
    end
    object CDSListadoCODIGO_RELOJ: TStringField
      DisplayLabel = 'Codigo Reloj'
      FieldName = 'CODIGO_RELOJ'
      Size = 10
    end
  end
  object DSListado: TDataSource
    DataSet = CDSListado
    Left = 272
    Top = 640
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40644.062633425930000000
    ReportOptions.LastChange = 40644.062633425930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 340
    Top = 267
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frPersonal: TfrxDBDataset
    UserName = 'frPersonal'
    CloseDataSource = False
    DataSet = CDSListado
    BCDToCurrency = False
    DataSetOptions = []
    Left = 396
    Top = 267
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
        FieldName = 'CARGO'
        FieldAlias = 'CARGO'
      end
      item
        FieldName = 'CATEGORIA'
        FieldAlias = 'CATEGORIA'
      end
      item
        FieldName = 'CTACONTABLE'
        FieldAlias = 'CTACONTABLE'
      end
      item
        FieldName = 'DOMICILIO'
        FieldAlias = 'DOMICILIO'
      end
      item
        FieldName = 'ESTADO_CIVIL'
        FieldAlias = 'ESTADO_CIVIL'
      end
      item
        FieldName = 'AUTORIZAOC'
        FieldAlias = 'AUTORIZAOC'
      end
      item
        FieldName = 'SECTORDECOMPRA'
        FieldAlias = 'SECTORDECOMPRA'
      end
      item
        FieldName = 'FECHA_INGRESO'
        FieldAlias = 'FECHA_INGRESO'
      end
      item
        FieldName = 'FECHA_NACIMIENTO'
        FieldAlias = 'FECHA_NACIMIENTO'
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
        FieldName = 'MODODEPENDENCIA'
        FieldAlias = 'MODODEPENDENCIA'
      end
      item
        FieldName = 'TELEFONO_2'
        FieldAlias = 'TELEFONO_2'
      end
      item
        FieldName = 'MUESTRACARGO'
        FieldAlias = 'MUESTRACARGO'
      end
      item
        FieldName = 'MUESTRACATEGORIA'
        FieldAlias = 'MUESTRACATEGORIA'
      end
      item
        FieldName = 'MUESTRALOCALIDAD'
        FieldAlias = 'MUESTRALOCALIDAD'
      end
      item
        FieldName = 'VALORHORA'
        FieldAlias = 'VALORHORA'
      end
      item
        FieldName = 'CORREO'
        FieldAlias = 'CORREO'
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
        FieldName = 'MUESTRACPOSTAL'
        FieldAlias = 'MUESTRACPOSTAL'
      end
      item
        FieldName = 'COMISION'
        FieldAlias = 'COMISION'
      end
      item
        FieldName = 'POLITICACOMISION'
        FieldAlias = 'POLITICACOMISION'
      end
      item
        FieldName = 'ACTIVO'
        FieldAlias = 'ACTIVO'
      end>
  end
  object CDSPoliticaComision: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPoliticaComision'
    Left = 162
    Top = 424
    object CDSPoliticaComisionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPoliticaComisionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object DSPPoliticaComision: TDataSetProvider
    DataSet = QPoliticaCom
    Options = []
    Left = 114
    Top = 424
  end
  object DSPRecibos: TDataSetProvider
    DataSet = QRec
    Options = []
    Left = 146
    Top = 544
  end
  object CDSRecibos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRecibos'
    Left = 210
    Top = 544
    object CDSRecibosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRecibosCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSRecibosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSRecibosMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSRecibosDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 496
    Top = 600
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
    Left = 432
    Top = 600
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 557
    Top = 598
  end
  object DSPListadoPorSuc: TDataSetProvider
    DataSet = QListadoPorSuc
    Options = []
    Left = 432
    Top = 656
  end
  object CDSListadoPorSuc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'activo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'activo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListadoPorSuc'
    OnNewRecord = CDSPersonalNewRecord
    Left = 496
    Top = 656
    object StringField1: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object StringField2: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 38
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Visible = False
    end
    object IntegerField2: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Visible = False
    end
    object IntegerField3: TIntegerField
      FieldName = 'CTACONTABLE'
      Origin = 'CTACONTABLE'
      Visible = False
    end
    object StringField3: TStringField
      DisplayLabel = 'Domicilio'
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'AUTORIZAOC'
      Origin = 'AUTORIZAOC'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'SECTORDECOMPRA'
      Origin = 'SECTORDECOMPRA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTimeStampField1: TSQLTimeStampField
      DisplayLabel = 'Fecha de Ingreso'
      DisplayWidth = 20
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      DisplayLabel = 'Fecha Nacimiento'
      DisplayWidth = 18
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object StringField7: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 15
    end
    object StringField8: TStringField
      FieldName = 'MODODEPENDENCIA'
      Origin = 'MODODEPENDENCIA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField9: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 15
    end
    object StringField10: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'MUESTRACARGO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object StringField11: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object StringField12: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'MUESTRALOCALIDAD'
      Origin = 'DETALLE_POSTAL'
      ProviderFlags = []
      Size = 25
    end
    object StringField13: TStringField
      DisplayLabel = 'Correo'
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 100
    end
    object StringField14: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField15: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField16: TStringField
      DisplayLabel = 'C.Postal'
      FieldName = 'MUESTRACPOSTAL'
      Origin = 'CODIGO_POSTAL'
      ProviderFlags = []
      Size = 8
    end
    object IntegerField5: TIntegerField
      FieldName = 'POLITICACOMISION'
      Origin = 'POLITICACOMISION'
      Visible = False
    end
    object StringField17: TStringField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListadoPorSucSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSListadoPorSucMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSListadoPorSucVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object CDSListadoPorSucCOMISION: TFloatField
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
    end
  end
  object DSListadoPorSuc: TDataSource
    DataSet = CDSListadoPorSuc
    Left = 560
    Top = 656
  end
  object frPersonalAgrupado: TfrxDBDataset
    UserName = 'frPersonalAgrupado'
    CloseDataSource = False
    DataSet = CDSListadoPorSuc
    BCDToCurrency = False
    DataSetOptions = []
    Left = 404
    Top = 323
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
        FieldName = 'CARGO'
        FieldAlias = 'CARGO'
      end
      item
        FieldName = 'CATEGORIA'
        FieldAlias = 'CATEGORIA'
      end
      item
        FieldName = 'CTACONTABLE'
        FieldAlias = 'CTACONTABLE'
      end
      item
        FieldName = 'DOMICILIO'
        FieldAlias = 'DOMICILIO'
      end
      item
        FieldName = 'ESTADO_CIVIL'
        FieldAlias = 'ESTADO_CIVIL'
      end
      item
        FieldName = 'AUTORIZAOC'
        FieldAlias = 'AUTORIZAOC'
      end
      item
        FieldName = 'SECTORDECOMPRA'
        FieldAlias = 'SECTORDECOMPRA'
      end
      item
        FieldName = 'FECHA_INGRESO'
        FieldAlias = 'FECHA_INGRESO'
      end
      item
        FieldName = 'FECHA_NACIMIENTO'
        FieldAlias = 'FECHA_NACIMIENTO'
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
        FieldName = 'MODODEPENDENCIA'
        FieldAlias = 'MODODEPENDENCIA'
      end
      item
        FieldName = 'TELEFONO_2'
        FieldAlias = 'TELEFONO_2'
      end
      item
        FieldName = 'MUESTRACARGO'
        FieldAlias = 'MUESTRACARGO'
      end
      item
        FieldName = 'MUESTRACATEGORIA'
        FieldAlias = 'MUESTRACATEGORIA'
      end
      item
        FieldName = 'MUESTRALOCALIDAD'
        FieldAlias = 'MUESTRALOCALIDAD'
      end
      item
        FieldName = 'VALORHORA'
        FieldAlias = 'VALORHORA'
      end
      item
        FieldName = 'CORREO'
        FieldAlias = 'CORREO'
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
        FieldName = 'MUESTRACPOSTAL'
        FieldAlias = 'MUESTRACPOSTAL'
      end
      item
        FieldName = 'COMISION'
        FieldAlias = 'COMISION'
      end
      item
        FieldName = 'POLITICACOMISION'
        FieldAlias = 'POLITICACOMISION'
      end
      item
        FieldName = 'ACTIVO'
        FieldAlias = 'ACTIVO'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end>
  end
  object ComBuscadorLocalidades: TComBuscador
    Data = CDSBuscaLocalidad
    Campo = 'id_postal'
    Titulo = 'Localidades'
    rOk = False
    Left = 492
    Top = 235
  end
  object ComBuscadorCategorias: TComBuscador
    Data = CDSBuscaCategoria
    Campo = 'id'
    Titulo = 'Categorias'
    rOk = False
    Left = 492
    Top = 283
  end
  object ComBuscadorCargos: TComBuscador
    Data = CDSBuscaCargo
    Campo = 'id'
    Titulo = 'Cargos'
    rOk = False
    Left = 492
    Top = 331
  end
  object QPoliticaCom: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comisionescab')
    Left = 120
    Top = 272
  end
  object QCategoria: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_categoria where id = :id')
    Left = 228
    Top = 307
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCategoriaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCategoriaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QCategoriaSUELDO_BASICO: TFloatField
      FieldName = 'SUELDO_BASICO'
      Origin = 'SUELDO_BASICO'
      Required = True
    end
    object QCategoriaVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object QCategoriaTIPO_LIQUIDACION: TSmallintField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      Required = True
    end
  end
  object QBuscadorCategoria: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Personal_categoria')
    Left = 148
    Top = 171
  end
  object QListadoPorSuc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.cargo,p.categoria,p.ctacontable,p.domicilio,p.estado_ci' +
        'vil,p.autorizaoc,p.sectordecompra,'
      
        '       p.fecha_ingreso,p.fecha_nacimiento,p.codigo,p.localidad,p' +
        '.nombre,p.telefono_1,p.mododependencia,'
      
        '       p.telefono_2,c.detalle as MuestraCargo, ct.detalle as Mue' +
        'straCategoria,'
      
        '       cp.Detalle_Postal as MuestraLocalidad,p.ValorHora,p.corre' +
        'o,p.vendedor,p.cobrador,'
      
        '       cp.codigo_postal as MuestraCPostal,p.comision,p.politicac' +
        'omision,p.activo,p.sucursal,s.detalle as MuestraSucursal from pe' +
        'rsonal p'
      'left join cargo c on c.id=p.cargo'
      'left join personal_categoria ct on ct.id=p.categoria'
      'left join c_postal cp on cp.id_Postal=p.localidad'
      'left join sucursal s on s.codigo=p.sucursal'
      'where (p.activo = :activo ) or ( :activo = '#39'*'#39' )'
      'order by p.sucursal,p.categoria,p.nombre')
    Left = 352
    Top = 656
    ParamData = <
      item
        Position = 1
        Name = 'activo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'activo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QCargo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cargo where id=:id')
    Left = 172
    Top = 291
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCargoDETALLE: TStringField
      DisplayLabel = 'Detalle Cargo'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QCargoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QBuscadorCargo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cargo ')
    Left = 308
    Top = 291
  end
  object QListado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.cargo,p.categoria,p.ctacontable,p.domicilio,p.estado_ci' +
        'vil,p.autorizaoc,p.sectordecompra,'
      
        '       p.fecha_ingreso,p.fecha_nacimiento,p.codigo,p.localidad,p' +
        '.nombre,p.telefono_1,p.mododependencia,'
      
        '       p.telefono_2,c.detalle as MuestraCargo, ct.detalle as Mue' +
        'straCategoria,'
      
        '       cp.Detalle_Postal as MuestraLocalidad,p.ValorHora,p.corre' +
        'o,p.vendedor,p.cobrador,'
      
        '       cp.codigo_postal as MuestraCPostal,p.comision,p.politicac' +
        'omision,p.activo,p.codigo_reloj from personal p'
      'left join cargo c on c.id=p.cargo'
      'left join personal_categoria ct on ct.id=p.categoria'
      'left join c_postal cp on cp.id_Postal=p.localidad')
    Left = 88
    Top = 640
  end
  object QComprobantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from personal_cpbte p where p.codigo=:codigo')
    Left = 80
    Top = 584
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QControlMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select count(*) from adelantos_sueldo a where a.codigo=:Codigo')
    Left = 344
    Top = 592
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QRec: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_comprobante,c.clase_comprob,c.sucursal,s.detalle as ' +
        'MuestraSucursal, c.denominacion from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'where c.tipo_comprob='#39'RC'#39' and c.compra_venta='#39'V'#39)
    Left = 88
    Top = 515
  end
  object QLocalidades: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id_Postal,Codigo_Postal,Detalle_Postal,Telediscado from c' +
        '_postal'
      'where id_postal=:id')
    Left = 344
    Top = 504
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QLocalidadesID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLocalidadesCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
      Origin = 'CODIGO_POSTAL'
      Required = True
      Size = 8
    end
    object QLocalidadesDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Origin = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
    object QLocalidadesTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      Size = 6
    end
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from depositos d ')
    Left = 356
    Top = 712
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Options = []
    Left = 420
    Top = 712
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 492
    Top = 712
    object CDSDepositosID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSDepositosNOMBRE: TStringField
      DisplayLabel = 'Deposito'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
  end
  object DSDepositos: TDataSource
    DataSet = CDSDepositos
    Left = 540
    Top = 712
  end
  object QSector: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ordenproduccion_sector')
    Left = 376
    Top = 432
  end
  object DSSector: TDataSource
    DataSet = QSector
    Left = 460
    Top = 435
  end
end

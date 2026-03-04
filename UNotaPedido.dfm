inherited FormNotaPedido: TFormNotaPedido
  Left = 334
  Top = 134
  Caption = 'Notas de Pedido'
  ClientHeight = 714
  ClientWidth = 912
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 930
  ExplicitHeight = 755
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 912
    Height = 661
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 912
    ExplicitHeight = 661
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 912
      Height = 97
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvNone
      TabOrder = 0
      object DBText1: TDBText
        Left = 488
        Top = 26
        Width = 17
        Height = 17
        DataField = 'LETRA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtMuestraComprobante: TDBText
        Left = 344
        Top = 27
        Width = 137
        Height = 21
        DataField = 'MUESTRACOMPROBANTE'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbModo: TLabel
        Left = 754
        Top = 19
        Width = 54
        Height = 24
        Alignment = taRightJustify
        Caption = 'Modo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel1: TJvLabel
        Left = 11
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Fecha'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel3: TJvLabel
        Left = 512
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Nro.Cpbte'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 298
        Top = 8
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel2: TJvLabel
        Left = 106
        Top = 8
        Width = 43
        Height = 13
        Caption = 'Sucursal'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel7: TJvLabel
        Left = 198
        Top = 53
        Width = 51
        Height = 13
        Caption = 'Solicitante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel4: TJvLabel
        Left = 9
        Top = 50
        Width = 96
        Height = 13
        Caption = 'Dep'#243'sito Solicitante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel1: TJvLabel
        Left = 488
        Top = 53
        Width = 88
        Height = 13
        Caption = 'Pedido a Sucursal'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText2: TDBText
        Left = 814
        Top = 8
        Width = 87
        Height = 17
        Alignment = taRightJustify
        DataField = 'ID'
        DataSource = DSBase
      end
      object dbePrefijo: TDBEdit
        Left = 512
        Top = 24
        Width = 41
        Height = 21
        TabStop = False
        DataField = 'SUC'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object dbeNum: TDBEdit
        Left = 559
        Top = 24
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'NUMERO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbeSucursal: TDBEdit
        Left = 146
        Top = 24
        Width = 146
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object dbeMuestraVendedor: TDBEdit
        Left = 268
        Top = 69
        Width = 214
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASOLICITANTE'
        DataSource = DSBase
        Enabled = False
        TabOrder = 9
      end
      object dbeDeposito: TDBEdit
        Left = 50
        Top = 69
        Width = 135
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraDeposito'
        DataSource = DSBase
        Enabled = False
        TabOrder = 7
      end
      object dbeFecha: TJvDBDateEdit
        Left = 8
        Top = 24
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA'
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
        ButtonWidth = 16
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
      end
      object RxCSucursal: TJvDBComboEdit
        Left = 104
        Top = 24
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'SUCURSAL'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 1
        OnButtonClick = BuscarSucursalExecute
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 296
        Top = 25
        Width = 42
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'ID_TIPOCOMPROBANTE'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 3
        OnButtonClick = BuscarTipoCpbteExecute
      end
      object rxcVendedor: TJvDBComboEdit
        Left = 199
        Top = 69
        Width = 65
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'SOLICITANTE'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 8
        OnButtonClick = BuscarSolicitanteExecute
        OnKeyDown = rxcVendedorKeyDown
      end
      object RxCDeposito: TJvDBComboEdit
        Left = 9
        Top = 69
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Deposito'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 6
        OnButtonClick = BuscarDepositoExecute
      end
      object cbSucursal: TJvDBLookupCombo
        Left = 488
        Top = 69
        Width = 249
        Height = 21
        DropDownCount = 12
        DataField = 'A_SUCURSAL'
        DataSource = DSBase
        EmptyValue = #39#39
        EmptyItemColor = clInactiveCaption
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursales
        TabOrder = 10
      end
    end
    object pcDetalles: TPageControl
      Left = 0
      Top = 97
      Width = 912
      Height = 564
      ActivePage = Pag1
      Align = alClient
      TabOrder = 1
      TabPosition = tpBottom
      OnEnter = pcDetallesEnter
      object Pag1: TTabSheet
        Caption = 'Pedido'
        DesignSize = (
          904
          538)
        object lbEstado: TLabel
          Left = 3
          Top = 381
          Width = 72
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'lbEstado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 375
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 812
          Top = 382
          Width = 96
          Height = 13
          DataSource = DSNPDet
          Style = lsRecordNo
          Anchors = [akLeft, akBottom]
          Transparent = True
          ExplicitTop = 376
        end
        object DBGrillaDetalle: TDBGrid
          Left = 0
          Top = 0
          Width = 904
          Height = 375
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSNPDet
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = DBGrillaDetalleColEnter
          OnDblClick = DBGrillaDetalleDblClick
          OnEditButtonClick = DBGrillaDetalleEditButtonClick
          OnEnter = DBGrillaDetalleEnter
          OnKeyPress = DBGrillaDetalleKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 136
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 349
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'UNIDADES'
              Title.Alignment = taCenter
              Title.Caption = 'Unid.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD_PEDIDA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 84
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
              Width = 79
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MINIMO'
              Title.Alignment = taCenter
              Title.Caption = 'St.Min.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 56
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MEDIO'
              Title.Alignment = taCenter
              Title.Caption = 'St.Max.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 53
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'ACTUAL'
              Title.Alignment = taCenter
              Title.Caption = 'St.Actual'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 66
              Visible = True
            end>
        end
        object chbPedidoPorDeposito: TCheckBox
          Left = 12
          Top = 407
          Width = 169
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Genera Pedido Automatico'
          TabOrder = 1
          OnClick = chbPedidoPorDepositoClick
        end
        object pnGeneraPedido: TPanel
          Left = 216
          Top = 398
          Width = 681
          Height = 129
          Anchors = [akLeft, akBottom]
          Color = clSkyBlue
          Enabled = False
          ParentBackground = False
          TabOrder = 2
          Visible = False
          object Label1: TLabel
            Left = 358
            Top = 43
            Width = 29
            Height = 13
            Caption = 'Rubro'
          end
          object Label2: TLabel
            Left = 358
            Top = 70
            Width = 51
            Height = 13
            Caption = 'Sub Rubro'
          end
          object Label3: TLabel
            Left = 358
            Top = 16
            Width = 35
            Height = 13
            Caption = 'Marcas'
          end
          object btGenerar: TBitBtn
            Left = 13
            Top = 8
            Width = 91
            Height = 25
            Action = GeneraPedido
            Caption = 'Generar Pedido'
            TabOrder = 0
          end
          object rgNIvel: TRadioGroup
            Left = 172
            Top = 1
            Width = 194
            Height = 89
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            ItemIndex = 0
            Items.Strings = (
              'Para llegar al minimo'
              'Para llegar al Maximo'
              'Sin Topes'
              'Para llegar al minimo x Proveedor')
            ShowFrame = False
            TabOrder = 1
            OnClick = rgNIvelClick
          end
          object rxcbRubro: TJvDBLookupCombo
            Left = 415
            Top = 40
            Width = 258
            Height = 21
            DisplayEmpty = 'Todos los Rubros'
            EmptyValue = '***'
            LookupField = 'CODIGO_RUBRO'
            LookupDisplay = 'DETALLE_RUBRO'
            LookupSource = DSRubro
            TabOrder = 2
            OnClick = rxcbRubroClick
          end
          object rxcbSubRubro: TJvDBLookupCombo
            Left = 415
            Top = 67
            Width = 258
            Height = 21
            DisplayEmpty = 'Todos los Subrubros'
            EmptyValue = '*****'
            LookupField = 'CODIGO_SUBRUBRO'
            LookupDisplay = 'DETALLE_SUBRUBRO'
            LookupSource = DSSubRubro
            TabOrder = 3
          end
          object dbcMarcas: TJvDBLookupCombo
            Left = 415
            Top = 13
            Width = 258
            Height = 21
            DisplayEmpty = 'Todas las Marcas'
            EmptyValue = '****'
            LookupField = 'MARCA_STK'
            LookupDisplay = 'DESCRIPCION_MARCA'
            LookupSource = DSMarca
            TabOrder = 4
          end
          object pnProveedor: TPanel
            Left = 7
            Top = 88
            Width = 684
            Height = 41
            BevelOuter = bvNone
            Color = clSkyBlue
            ParentBackground = False
            TabOrder = 5
            Visible = False
            object Label4: TLabel
              Left = 6
              Top = -2
              Width = 49
              Height = 13
              Caption = 'Proveedor'
            end
            object ceProveedor: TJvComboEdit
              Left = 6
              Top = 11
              Width = 73
              Height = 21
              ButtonWidth = 16
              ClickKey = 16397
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              MaxLength = 6
              TabOrder = 0
              Text = ''
              OnButtonClick = ceProveedorButtonClick
            end
            object edNombreProveedor: TEdit
              Left = 85
              Top = 11
              Width = 257
              Height = 21
              Color = clInfoBk
              Enabled = False
              TabOrder = 1
            end
          end
        end
      end
      object Pag2: TTabSheet
        Caption = 'Detalles '
        ImageIndex = 1
        DesignSize = (
          904
          538)
        object JvDBStatusLabel2: TJvDBStatusLabel
          Left = 3
          Top = 503
          Width = 96
          Height = 13
          DataSource = DSNPDetMem
          Anchors = [akLeft, akBottom]
          Transparent = True
          ExplicitTop = 501
        end
        object dbgPedidoDetallado: TDBGrid
          Left = 0
          Top = 0
          Width = 904
          Height = 497
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSNPDetMem
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = DBGrillaDetalleColEnter
          OnEditButtonClick = DBGrillaDetalleEditButtonClick
          OnEnter = DBGrillaDetalleEnter
          OnKeyPress = DBGrillaDetalleKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 350
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'UNIDADES'
              Title.Alignment = taCenter
              Title.Caption = 'Unid.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Autorizado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MINIMO'
              Title.Alignment = taCenter
              Title.Caption = 'St.Min.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 63
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MEDIO'
              Title.Alignment = taCenter
              Title.Caption = 'St.Max.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 59
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'ACTUAL'
              Title.Alignment = taCenter
              Title.Caption = 'St.Actual'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 67
              Visible = True
            end>
        end
        object BitBtn3: TBitBtn
          Left = 693
          Top = 503
          Width = 75
          Height = 25
          Action = GenerarPedidoDetallado
          Anchors = [akLeft, akBottom]
          Caption = 'Refresh'
          Glyph.Data = {
            BE060000424DBE06000000000000360400002800000024000000120000000100
            0800000000008802000000000000000000000001000000000000000000000000
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
            0404040404040303030303030303030303FFF8F8F8F8F8F803FF030303030302
            0403030402020202020204040303030303F8F8FF03F8030303030303F8F8FF03
            030303020204040202020202020202020403030303F8FFF8F80303FFFFFFFFFF
            0303F8FF030303020202020202FAFAFAFAFA02020204030303F8FF030303FFF8
            F8F8F8F8FF0303F8FF03030202020202FA0303030303FA020202040303F8FF03
            03FFF80303030303F8FF0303F8FF03020202020203030303030303FA02020403
            03F8FF0303F803030303030303F8FF03F8FF03020202020202030303030303FA
            0404040303F8FFFFFFFFF8FF0303030303F8F8F8F80303FAFAFAFAFAFAFA0303
            030303030303030303F8F8F8F8F8F8F803030303030303030303030303030303
            030303030303030303030303030303030303030303030303FFFFFFFFFFFF0303
            030303030303030303030404040404040303FFFFFFFF030303030303F8F8F8F8
            F8F803FA040404030303030303FA02020202020403F8F8F8F8FF0303030303F8
            FF03030303F803FA02020403030303030303FA020202020403F8FF03F8FF0303
            03030303F803030303F80303FA0202040303030303040402020202040303F803
            03F8FFFFFFFFFFF8F803030303F80303FA020202040404040402020202020204
            0303F8FF0303F8F8F8F8F8030303FFFF03F8030303FA02020202020202020202
            FAFA0204030303F8FFFF030303030303FFFFF8F8FFF803030303FAFA02020202
            0202FAFA0303FA0303030303F8F8FFFFFFFFFFFFF8F80303F803030303030303
            FAFAFAFAFAFA030303030303030303030303F8F8F8F8F8F80303030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            0303}
          NumGlyphs = 2
          TabOrder = 1
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 661
    Width = 912
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 661
    ExplicitWidth = 912
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
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 15
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 572
      Top = 0
      Width = 75
      Height = 28
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
    object btn1: TToolButton
      Left = 647
      Top = 0
      Width = 8
      Caption = 'btn1'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object abOpciones: TJvArrowButton
      Left = 655
      Top = 0
      Width = 50
      Height = 28
      DropDown = pm2
      DropOnButtonClick = True
      Flat = True
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFFFFFFF333333333000000000033333333337777777777F3333
        333330FEFEFEFE033333333337F3FFFFFF7F3333333330E444444F0333333333
        37F77777737F333333333099999999033333333337F33333337F33333333309F
        FFFFF9033333333337F33333337F333333333099999999033333333337F3FFFF
        FF7F3333333330E444444F033333333337F77777737F3333333330FEFEFEFE03
        3333333337F3FFF3FF7F3333333330E444E000033333333337F7773777733333
        333330FEFEF0F0333333333337F33337F7333333333330EFEFE0033333333333
        37FFFFF7733333FFFF333000000033333000033337777777333337777F333333
        3333333330EA0333333333333333F7F37FFF33333333333000AE000333333333
        33377733777F333333333330EAEAEA03333333333337FFF33F7F333333333330
        00AE000333333333333777F3777333333333333330EA033333333333333337FF
        7F33333333333333300003333333333333333777733333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      SplittedButton = False
    end
    object btnBtAnular: TSpeedButton
      Left = 705
      Top = 0
      Width = 25
      Height = 28
      Hint = 'Anular Comprobante'
      Action = Anular
      BiDiMode = bdLeftToRight
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555FFFFFFFFFF5F5557777777777505555777777777757F55555555555555
        055555555555FF5575F555555550055030555555555775F7F7F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        305555577F555557F7F5550E0BFBFB003055557575F55577F7F550EEE0BFB0B0
        305557FF575F5757F7F5000EEE0BFBF03055777FF575FFF7F7F50000EEE00000
        30557777FF577777F7F500000E05555BB05577777F75555777F5500000555550
        3055577777555557F7F555000555555999555577755555577755}
      NumGlyphs = 2
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
    end
  end
  inherited Panel1: TPanel
    Top = 691
    Width = 912
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    OnDblClick = Panel1DblClick
    ExplicitTop = 691
    ExplicitWidth = 912
    inherited sbEstado: TStatusBar
      Width = 823
      Panels = <
        item
          Width = 320
        end
        item
          Bevel = pbRaised
          Width = 120
        end
        item
          Width = 60
        end>
      OnClick = sbEstadoClick
      OnDblClick = sbEstadoDblClick
      OnMouseMove = sbEstadoMouseMove
      ExplicitWidth = 823
    end
    object pbProceso: TJvProgressBar
      Left = 617
      Top = 4
      Width = 159
      Height = 17
      TabOrder = 1
    end
  end
  inherited ActionList1: TActionList
    Left = 728
    Top = 128
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarSolicitante: TAction
      Caption = 'BuscarSolicitante'
      OnExecute = BuscarSolicitanteExecute
    end
    object GeneraPedido: TAction
      Caption = 'Generar Pedido'
      OnExecute = GeneraPedidoExecute
    end
    object GenerarPedidoDetallado: TAction
      Caption = 'GenerarPedidoDetallado'
      OnExecute = GenerarPedidoDetalladoExecute
    end
    object MarcarNP: TAction
      Caption = 'Marcar NP'
      ShortCut = 16461
      OnExecute = MarcarNPExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object GenerarNotaTransferencia: TAction
      Caption = 'Generar Nota de Transferencia'
      Hint = 'Generar Nota de Transferecia'
      ShortCut = 16468
      OnExecute = GenerarNotaTransferenciaExecute
    end
    object Anular: TAction
      ShortCut = 16449
      OnExecute = AnularExecute
    end
    object HacerOCompra: TAction
      Caption = 'Hacer O.Compra'
    end
    object RestaurarNP: TAction
      Caption = 'Restaurar Nota de Pedido sin Nota Asociada'
      OnExecute = RestaurarNPExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSNPCab
    Left = 423
    Top = 32
  end
  inherited ImageList1: TImageList
    Left = 320
    Top = 0
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
    Left = 656
    Top = 352
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 82
    Top = 388
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 776
    Top = 344
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 568
    Top = 272
  end
  object DSPStock: TDataSetProvider [10]
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 74
    Top = 113
  end
  object DSPNPCab: TDataSetProvider [11]
    DataSet = QNPCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 81
    Top = 163
  end
  object DSNPDet: TDataSource [12]
    DataSet = CDSNPDet
    Left = 199
    Top = 217
  end
  object DSPNPDet: TDataSetProvider [13]
    DataSet = QNPDet
    Options = []
    Left = 80
    Top = 216
  end
  object ibgNPCab: TIBGenerator [14]
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NOTAPEDIDOCAB'
    SystemGenerators = False
    Left = 248
    Top = 154
  end
  object ibgNPDet: TIBGenerator [15]
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_NOTAPEDIDODET'
    SystemGenerators = False
    Left = 256
    Top = 216
  end
  object DSPSucursal: TDataSetProvider [16]
    DataSet = DMMain_2.QSucursal
    Options = [poAllowCommandText]
    Left = 13
    Top = 459
  end
  object frDSNPCab: TfrxDBDataset [17]
    UserName = 'frDSNPCab'
    CloseDataSource = False
    DataSet = CDSNPCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 818
    Top = 420
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
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
        FieldName = 'LETRA'
        FieldAlias = 'LETRA'
      end
      item
        FieldName = 'SUC'
        FieldAlias = 'SUC'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'SOLICITANTE'
        FieldAlias = 'SOLICITANTE'
      end
      item
        FieldName = 'PEDIDO'
        FieldAlias = 'PEDIDO'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'NOTATRANS_ID'
        FieldAlias = 'NOTATRANS_ID'
      end
      item
        FieldName = 'NOTATRANS_NRO'
        FieldAlias = 'NOTATRANS_NRO'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
      end
      item
        FieldName = 'A_SUCURSAL'
        FieldAlias = 'A_SUCURSAL'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'MUESTRADEPOSITO'
        FieldAlias = 'MUESTRADEPOSITO'
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRASOLICITANTE'
        FieldAlias = 'MUESTRASOLICITANTE'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end>
  end
  object frDSNPDet: TfrxDBDataset [18]
    UserName = 'frDSNPDet'
    CloseDataSource = False
    DataSet = CDSNPDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 762
    Top = 404
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'CANTIDAD_PEDIDA'
        FieldAlias = 'CANTIDAD_PEDIDA'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'FECHA_PEDIDO'
        FieldAlias = 'FECHA_PEDIDO'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'SOLICITANTE'
        FieldAlias = 'SOLICITANTE'
      end
      item
        FieldName = 'PEDIDO'
        FieldAlias = 'PEDIDO'
      end
      item
        FieldName = 'PROVEEDOR'
        FieldAlias = 'PROVEEDOR'
      end
      item
        FieldName = 'ID_ORDENCOMPRA'
        FieldAlias = 'ID_ORDENCOMPRA'
      end
      item
        FieldName = 'MINIMO'
        FieldAlias = 'MINIMO'
      end
      item
        FieldName = 'ACTUAL'
        FieldAlias = 'ACTUAL'
      end
      item
        FieldName = 'MEDIO'
        FieldAlias = 'MEDIO'
      end
      item
        FieldName = 'PRECIO'
        FieldAlias = 'PRECIO'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'ID_MONEDA'
        FieldAlias = 'ID_MONEDA'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'CODIGO_ALTERNATIVO'
        FieldAlias = 'CODIGO_ALTERNATIVO'
      end>
  end
  object frPedido: TfrxReport [19]
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.813459560190000000
    ReportOptions.LastChange = 39638.813459560190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 509
    Top = 445
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object DSNPDetMem: TDataSource [20]
    DataSet = CDSNPDetMem
    Left = 544
    Top = 344
  end
  object CDSNPDetMem: TClientDataSet [21]
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPNPDetMem'
    Left = 464
    Top = 344
    object CDSNPDetMemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSNPDetMemID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Required = True
    end
    object CDSNPDetMemCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSNPDetMemDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSNPDetMemCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetMemUNIDADES: TStringField
      FieldName = 'UNIDADES'
      Size = 3
    end
    object CDSNPDetMemACTUAL: TFloatField
      FieldName = 'ACTUAL'
    end
    object CDSNPDetMemMINIMO: TFloatField
      FieldName = 'MINIMO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetMemMEDIO: TFloatField
      FieldName = 'MEDIO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetMemPEDIDO: TStringField
      FieldName = 'PEDIDO'
      FixedChar = True
      Size = 1
    end
    object CDSNPDetMemESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPNPDetMem: TDataSetProvider [22]
    DataSet = QNPDetMem
    Options = []
    Left = 384
    Top = 344
  end
  object frDBDetMem: TfrxDBDataset [23]
    UserName = 'frDBDetMem'
    CloseDataSource = False
    DataSet = CDSNPDetMem
    BCDToCurrency = False
    DataSetOptions = []
    Left = 426
    Top = 468
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
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'ACTUAL'
        FieldAlias = 'ACTUAL'
      end
      item
        FieldName = 'MINIMO'
        FieldAlias = 'MINIMO'
      end
      item
        FieldName = 'PEDIDO'
        FieldAlias = 'PEDIDO'
      end
      item
        FieldName = 'MEDIO'
        FieldAlias = 'MEDIO'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end>
  end
  object DSNPDetMem2: TDataSource [24]
    DataSet = CDSNPDetMem2
    Left = 536
    Top = 400
  end
  object CDSNPDetMem2: TClientDataSet [25]
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPNPDetMem2'
    Left = 456
    Top = 401
    object CDSNPDetMem2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSNPDetMem2ID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Required = True
    end
    object CDSNPDetMem2CODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSNPDetMem2DETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSNPDetMem2CANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object CDSNPDetMem2UNIDADES: TStringField
      FieldName = 'UNIDADES'
      Size = 3
    end
  end
  object DSPNPDetMem2: TDataSetProvider [26]
    DataSet = QNPDetMem2
    Options = []
    Left = 384
    Top = 408
  end
  object frDSNPDetMem2: TfrxDBDataset [27]
    UserName = 'frDSNPDetMem2'
    CloseDataSource = False
    DataSet = CDSNPDetMem2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 576
    Top = 448
  end
  object pm2: TPopupMenu [28]
    Left = 726
    Top = 351
    object GenerarNotaTransferencia1: TMenuItem
      Action = GenerarNotaTransferencia
    end
  end
  object CDSBuscaDeposito: TClientDataSet [29]
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 696
    Top = 440
    object CDSBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaDepositoID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
  end
  object DSPBuscaDeposito: TDataSetProvider [30]
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 640
    Top = 448
  end
  inherited QBrowse2: TFDQuery
    Left = 136
    Top = 344
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 208
    Top = 344
  end
  inherited ImageListDos: TImageList
    Left = 224
    Top = 88
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 616
    Top = 592
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 704
    Top = 592
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Left = 664
    Top = 16
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
    Left = 712
    Top = 16
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPStock'
    Left = 152
    Top = 120
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 300
    end
    object CDSStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 25
    end
    object CDSStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object CDSStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Origin = 'TASA_IVA'
      Required = True
    end
    object CDSStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
      Origin = 'SOBRETASA_IVA'
    end
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object CDSStockCOSTO_IVA: TFloatField
      FieldName = 'COSTO_IVA'
      Origin = 'COSTO_IVA'
      Required = True
    end
    object CDSStockCOSTO_FINAL: TFloatField
      FieldName = 'COSTO_FINAL'
      Origin = 'COSTO_FINAL'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
    end
    object CDSStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Origin = 'COSTO_TOTAL_STK'
      Required = True
    end
    object CDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Origin = 'FIJACION_PRECIO_IVA'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_FINAL: TFloatField
      FieldName = 'FIJACION_PRECIO_FINAL'
      Origin = 'FIJACION_PRECIO_FINAL'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Origin = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object CDSStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object CDSStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
    end
    object CDSStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Origin = 'CON_IMP_INT'
      Size = 1
    end
    object CDSStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
      Origin = 'IMPUESTO_INTERNOS'
    end
    object CDSStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Origin = 'TASA_IB'
      Required = True
    end
    object CDSStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      Origin = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object CDSStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Origin = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Origin = 'PRODUCCIONDIRECTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Origin = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      Required = True
    end
    object CDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Origin = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Origin = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Origin = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object CDSStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
      Origin = 'ID_TABLAPRECIOS'
    end
    object CDSStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
      Origin = 'ID_TABLAPRECIOSDETALLE'
    end
    object CDSStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
      Origin = 'CODIGO_PRECIO'
    end
    object CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Origin = 'COSTO_GRAVADO_SOMBRA'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Origin = 'COSTO_EXENTO_SOMBRA'
      Required = True
    end
    object CDSStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Origin = 'COSTO_GRAVADO_P'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Origin = 'COSTO_EXENTO_P'
      Required = True
    end
    object CDSStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Origin = 'COSTO_TOTAL_P'
      Required = True
    end
    object CDSStockPOSICION: TStringField
      FieldName = 'POSICION'
      Origin = 'POSICION'
      Size = 10
    end
    object CDSStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object CDSStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Origin = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Origin = 'EDITADETALLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      Size = 250
    end
    object CDSStockCOMANDA: TStringField
      FieldName = 'COMANDA'
      Origin = 'COMANDA'
      FixedChar = True
      Size = 1
    end
    object CDSStockPORCENTAJE_SOBRECOSTO: TFloatField
      FieldName = 'PORCENTAJE_SOBRECOSTO'
      Origin = 'PORCENTAJE_SOBRECOSTO'
    end
    object CDSStockRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Origin = 'RUBRO_GASTO'
      Required = True
      Size = 3
    end
    object CDSStockRUBRO_CTA_GASTO: TStringField
      FieldName = 'RUBRO_CTA_GASTO'
      Origin = 'RUBRO_CTA_GASTO'
      Required = True
      Size = 6
    end
    object CDSStockPUBLICAR_WEB: TStringField
      FieldName = 'PUBLICAR_WEB'
      Origin = 'PUBLICAR_WEB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockGTIA_MESES: TIntegerField
      FieldName = 'GTIA_MESES'
      Origin = 'GTIA_MESES'
      Required = True
    end
    object CDSStockGARANTIAOFICIAL: TStringField
      FieldName = 'GARANTIAOFICIAL'
      Origin = 'GARANTIAOFICIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockADICIONAL_SOBRECOSTO: TFloatField
      FieldName = 'ADICIONAL_SOBRECOSTO'
      Origin = 'ADICIONAL_SOBRECOSTO'
      Required = True
    end
    object CDSStockIMPRIMIR_LSTPRECIOS: TStringField
      FieldName = 'IMPRIMIR_LSTPRECIOS'
      Origin = 'IMPRIMIR_LSTPRECIOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockIVA_MODIFICADO: TStringField
      FieldName = 'IVA_MODIFICADO'
      Origin = 'IVA_MODIFICADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockSIGLAS: TStringField
      FieldName = 'SIGLAS'
      Origin = 'SIGLAS'
      Size = 2
    end
    object CDSStockPRESENTACION_2_CANT: TFloatField
      FieldName = 'PRESENTACION_2_CANT'
      Origin = 'PRESENTACION_2_CANT'
      Required = True
    end
    object CDSStockTASA_MANUFACTURA: TStringField
      FieldName = 'TASA_MANUFACTURA'
      Origin = 'TASA_MANUFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPLU: TStringField
      FieldName = 'PLU'
      Origin = 'PLU'
      Size = 5
    end
    object CDSStockACOPIABLE: TStringField
      FieldName = 'ACOPIABLE'
      Origin = 'ACOPIABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockCIKO_TIPO: TIntegerField
      FieldName = 'CIKO_TIPO'
      Origin = 'CIKO_TIPO'
      Required = True
    end
    object CDSStockTIPOADICIONAL: TStringField
      FieldName = 'TIPOADICIONAL'
      Origin = 'TIPOADICIONAL'
      Size = 10
    end
    object CDSStockLARGO_1: TFloatField
      FieldName = 'LARGO_1'
      Origin = 'LARGO_1'
      Required = True
    end
    object CDSStockLARGO_2: TFloatField
      FieldName = 'LARGO_2'
      Origin = 'LARGO_2'
      Required = True
    end
    object CDSStockLARGO_3: TFloatField
      FieldName = 'LARGO_3'
      Origin = 'LARGO_3'
      Required = True
    end
    object CDSStockROTURA_1: TFloatField
      FieldName = 'ROTURA_1'
      Origin = 'ROTURA_1'
      Required = True
    end
    object CDSStockROTURA_2: TFloatField
      FieldName = 'ROTURA_2'
      Origin = 'ROTURA_2'
      Required = True
    end
    object CDSStockCIMA: TFloatField
      FieldName = 'CIMA'
      Origin = 'CIMA'
      Required = True
    end
    object CDSStockBASE: TFloatField
      FieldName = 'BASE'
      Origin = 'BASE'
      Required = True
    end
    object CDSStockVOLUMEN: TFloatField
      FieldName = 'VOLUMEN'
      Origin = 'VOLUMEN'
      Required = True
    end
    object CDSStockPESO_CALCULADO: TFloatField
      FieldName = 'PESO_CALCULADO'
      Origin = 'PESO_CALCULADO'
      Required = True
    end
    object CDSStockPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'PESO'
      Required = True
    end
    object CDSStockDIAMETRO_OLLA: TFloatField
      FieldName = 'DIAMETRO_OLLA'
      Origin = 'DIAMETRO_OLLA'
      Required = True
    end
    object CDSStockALTO_ACC: TFloatField
      FieldName = 'ALTO_ACC'
      Origin = 'ALTO_ACC'
      Required = True
    end
    object CDSStockMODO_IVA: TStringField
      FieldName = 'MODO_IVA'
      Origin = 'MODO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSStockMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object CDSStockMUESTRATASA: TStringField
      FieldName = 'MUESTRATASA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSStockMUESTRATASAPORCENTAJE: TFloatField
      FieldName = 'MUESTRATASAPORCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSStockMUESTRATASAIB: TFloatField
      FieldName = 'MUESTRATASAIB'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 40
    end
    object CDSStockMUESTRATABLAPRECIO1: TFloatField
      FieldName = 'MUESTRATABLAPRECIO1'
      Origin = 'PRECIO1'
      ProviderFlags = []
    end
    object CDSStockMUESTRATABLAPRECIO2: TFloatField
      FieldName = 'MUESTRATABLAPRECIO2'
      Origin = 'PRECIO1'
      ProviderFlags = []
    end
    object CDSStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
    object CDSStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
      Origin = 'FECHA_ALTA'
    end
    object CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
      Origin = 'FECHA_ACT_SOMBRA'
    end
    object CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
      Origin = 'FECHA_ULTIMAVTA'
    end
    object CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Origin = 'FECHA_ULTIMA_COMPRA'
    end
    object CDSStockMUESTRACTAGASTO: TStringField
      FieldName = 'MUESTRACTAGASTO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object CDSStockMUESTRARUBROGASTO: TStringField
      FieldName = 'MUESTRARUBROGASTO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
  end
  object CDSNPCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNPCab'
    OnNewRecord = CDSNPCabNewRecord
    Left = 144
    Top = 160
    object CDSNPCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNPCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSNPCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSNPCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSNPCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSNPCabLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSNPCabSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      OnSetText = CDSNPCabSUCSetText
      FixedChar = True
      Size = 4
    end
    object CDSNPCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      OnSetText = CDSNPCabNUMEROSetText
      Size = 8
    end
    object CDSNPCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      OnSetText = CDSNPCabSUCURSALSetText
    end
    object CDSNPCabSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      OnSetText = CDSNPCabSOLICITANTESetText
      Size = 6
    end
    object CDSNPCabPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSNPCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      OnSetText = CDSNPCabDEPOSITOSetText
    end
    object CDSNPCabNOTATRANS_ID: TIntegerField
      FieldName = 'NOTATRANS_ID'
      Origin = 'NOTATRANS_ID'
    end
    object CDSNPCabNOTATRANS_NRO: TStringField
      FieldName = 'NOTATRANS_NRO'
      Origin = 'NOTATRANS_NRO'
      Size = 13
    end
    object CDSNPCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSNPCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSNPCabA_SUCURSAL: TIntegerField
      FieldName = 'A_SUCURSAL'
      Origin = 'A_SUCURSAL'
    end
    object CDSNPCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSNPCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSNPCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSNPCabID_TIPOCOMPROBANTESetText
    end
    object CDSNPCabMUESTRASOLICITANTE: TStringField
      FieldName = 'MUESTRASOLICITANTE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSNPCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
  end
  object CDSNPDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cab'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPNPDet'
    AfterInsert = CDSNPDetAfterInsert
    BeforePost = CDSNPDetBeforePost
    AfterPost = CDSNPDetAfterPost
    AfterDelete = CDSNPDetAfterDelete
    OnNewRecord = CDSNPDetNewRecord
    Left = 144
    Top = 216
    object CDSNPDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNPDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNPDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      OnGetText = CDSNPDetCODIGOGetText
      OnSetText = CDSNPDetCODIGOSetText
      Size = 8
    end
    object CDSNPDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSNPDetUNIDADES: TStringField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Size = 3
    end
    object CDSNPDetCANTIDAD_PEDIDA: TFloatField
      DisplayLabel = 'Cant.Pedida'
      FieldName = 'CANTIDAD_PEDIDA'
      Origin = 'CANTIDAD_PEDIDA'
      OnSetText = CDSNPDetCANTIDAD_PEDIDASetText
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetFECHA_PEDIDO: TSQLTimeStampField
      FieldName = 'FECHA_PEDIDO'
      Origin = 'FECHA_PEDIDO'
    end
    object CDSNPDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSNPDetSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 6
    end
    object CDSNPDetPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      FixedChar = True
      Size = 1
    end
    object CDSNPDetPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object CDSNPDetID_ORDENCOMPRA: TIntegerField
      FieldName = 'ID_ORDENCOMPRA'
      Origin = 'ID_ORDENCOMPRA'
    end
    object CDSNPDetMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetACTUAL: TFloatField
      FieldName = 'ACTUAL'
      Origin = 'ACTUAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSNPDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object CDSNPDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSNPDetCODIGO_ALTERNATIVO: TStringField
      FieldName = 'CODIGO_ALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      OnSetText = CDSNPDetCODIGOSetText
    end
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSucursal'
    Left = 84
    Top = 443
    object CDSSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
    object CDSSucursalDIRECCION: TStringField
      DisplayWidth = 20
      FieldName = 'DIRECCION'
    end
    object CDSSucursalLOCALIDAD: TStringField
      DisplayWidth = 20
      FieldName = 'LOCALIDAD'
    end
    object CDSSucursalTELEFONO1: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSSucursalTELEFONO2: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object CDSSucursalRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Precision = 15
      Size = 3
    end
  end
  object CDSBuscaSolicitante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSolicitante'
    Left = 704
    Top = 544
    object CDSBuscaSolicitanteNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaSolicitanteCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPBuscaSolicitante: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPersonal
    Left = 616
    Top = 544
  end
  object CDSBuscaComprob: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSBuscaComprob'
    Left = 288
    Top = 272
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaComprobLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSBuscaComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
    end
    object CDSBuscaComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object CDSBuscaComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
    end
    object CDSBuscaComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Size = 15
    end
    object CDSBuscaComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Required = True
    end
    object CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Required = True
    end
    object CDSBuscaComprobDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Size = 3
    end
    object CDSBuscaComprobID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
    end
    object CDSBuscaComprobCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
    end
    object CDSBuscaComprobFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSBuscaComprobULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
    end
    object CDSBuscaComprobEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCONTROLADOR_NROREG: TStringField
      FieldName = 'CONTROLADOR_NROREG'
    end
    object CDSBuscaComprobUSAR_CAEA: TStringField
      FieldName = 'USAR_CAEA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCAEA: TStringField
      FieldName = 'CAEA'
      Size = 50
    end
    object CDSBuscaComprobVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_DESDE'
    end
    object CDSBuscaComprobVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_HASTA'
    end
  end
  object DSBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = []
    Left = 200
    Top = 288
  end
  object CDSFaltante: TClientDataSet
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
      end
      item
        DataType = ftString
        Name = 'SubRubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SubRubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFaltante'
    Left = 776
    Top = 216
    object CDSFaltanteCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSFaltanteDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSFaltanteFALTANTE: TFloatField
      FieldName = 'FALTANTE'
      ReadOnly = True
    end
    object CDSFaltanteSUM: TFloatField
      FieldName = 'SUM'
      ReadOnly = True
    end
  end
  object DSPFaltante: TDataSetProvider
    DataSet = QFalt
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 720
    Top = 216
  end
  object DSRubro: TDataSource
    DataSet = CDSRubro
    Left = 416
    Top = 504
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 544
    Top = 512
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Left = 496
    Top = 496
  end
  object DSPMarca: TDataSetProvider
    DataSet = QMarca
    Left = 528
    Top = 600
  end
  object CDSMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMarca'
    Left = 480
    Top = 600
    object CDSMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Required = True
      Size = 4
    end
    object CDSMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object DSMarca: TDataSource
    DataSet = CDSMarca
    Left = 368
    Top = 600
  end
  object DSSubRubro: TDataSource
    DataSet = CDSSubRubro
    Left = 184
    Top = 600
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
    Left = 160
    Top = 568
  end
  object DSPSubRubro: TDataSetProvider
    DataSet = QSubRubro
    Left = 320
    Top = 616
  end
  object DSPDetalleProduccion: TDataSetProvider
    DataSet = QDetalleProducc
    Options = [poAllowCommandText]
    Left = 608
    Top = 144
  end
  object CDSDetalleProduccion: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalleProduccion'
    Left = 696
    Top = 144
    object CDSDetalleProduccionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetalleProduccionCANTIDADBASE: TFloatField
      FieldName = 'CANTIDADBASE'
      Origin = 'CANTIDAD'
    end
    object CDSDetalleProduccionID_1: TIntegerField
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
    end
    object CDSDetalleProduccionID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = []
    end
    object CDSDetalleProduccionCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = []
      Size = 8
    end
    object CDSDetalleProduccionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetalleProduccionCOSTO_STK: TFloatField
      FieldName = 'COSTO_STK'
      Origin = 'COSTO_STK'
      ProviderFlags = []
    end
    object CDSDetalleProduccionCANTIDAD_REAL: TFloatField
      FieldName = 'CANTIDAD_REAL'
      Origin = 'CANTIDAD_REAL'
      ProviderFlags = []
    end
    object CDSDetalleProduccionCANTIDAD_FISICA: TFloatField
      FieldName = 'CANTIDAD_FISICA'
      Origin = 'CANTIDAD_FISICA'
      ProviderFlags = []
    end
    object CDSDetalleProduccionUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object CDSDetalleProduccionULTIMO_COSTO: TSQLTimeStampField
      FieldName = 'ULTIMO_COSTO'
      Origin = 'ULTIMO_COSTO'
      ProviderFlags = []
    end
    object CDSDetalleProduccionCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      ProviderFlags = []
    end
    object CDSDetalleProduccionAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 301
    Top = 108
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object RestaurarNotadePedidosinNotaAsociada1: TMenuItem
      Action = RestaurarNP
    end
  end
  object QSucursales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,detalle from sucursal order by detalle')
    Left = 312
    Top = 504
    object QSucursalesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSucursalesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object DSSucursales: TDataSource
    DataSet = QSucursales
    Left = 360
    Top = 504
  end
  object ComBuscadorSolicitante: TComBuscador
    Data = CDSBuscaSolicitante
    Campo = 'CODIGO'
    Titulo = 'Personal'
    rOk = False
    Left = 301
    Top = 52
  end
  object ComBuscadorDeposito: TComBuscador
    Data = CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 429
    Top = 140
  end
  object ComBuscadorSucursal: TComBuscador
    Data = CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursal'
    rOk = False
    Left = 432
    Top = 192
  end
  object QNPDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select np.*, s.reemplazo_stk as Codigo_alternativo from notapedi' +
        'dodet np'
      'left join stock s on s.codigo_stk=np.codigo'
      'where np.id_cab=:id_cab')
    Left = 28
    Top = 213
    ParamData = <
      item
        Position = 1
        Name = 'id_cab'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNPDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNPDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNPDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QNPDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QNPDetUNIDADES: TStringField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Size = 3
    end
    object QNPDetCANTIDAD_PEDIDA: TFloatField
      FieldName = 'CANTIDAD_PEDIDA'
      Origin = 'CANTIDAD_PEDIDA'
    end
    object QNPDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QNPDetFECHA_PEDIDO: TSQLTimeStampField
      FieldName = 'FECHA_PEDIDO'
      Origin = 'FECHA_PEDIDO'
    end
    object QNPDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QNPDetSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 6
    end
    object QNPDetPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      FixedChar = True
      Size = 1
    end
    object QNPDetPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object QNPDetID_ORDENCOMPRA: TIntegerField
      FieldName = 'ID_ORDENCOMPRA'
      Origin = 'ID_ORDENCOMPRA'
    end
    object QNPDetMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QNPDetACTUAL: TFloatField
      FieldName = 'ACTUAL'
      Origin = 'ACTUAL'
    end
    object QNPDetMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
    end
    object QNPDetPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object QNPDetESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNPDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object QNPDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QNPDetCODIGO_ALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
  end
  object QNPCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select np.*,'
      
        '  cp.denominacion as MuestraComprobante,d.nombre as MuestraDepos' +
        'ito,'
      
        '  cp.id_comprobante as Id_TipoComprobante,pe.nombre as MuestraSo' +
        'licitante,'
      '  s.detalle as MuestraSucursal'
      'from notapedidocab np'
      '  left join personal pe on pe.codigo=np.solicitante'
      '  left join sucursal s on s.codigo=np.sucursal'
      '  left join depositos d on d.id=np.deposito'
      
        '  left join comprobantes cp on cp.clase_comprob=np.ClaseCpbte an' +
        'd'
      '            cp.letra=np.Letra and'
      '            cp.sucursal=np.sucursal and'
      '            cp.tipo_comprob=np.tipocpbte'
      'where np.id=:id'
      ' '
      ' ')
    Left = 20
    Top = 157
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNPCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNPCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QNPCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QNPCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QNPCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QNPCabLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QNPCabSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      FixedChar = True
      Size = 4
    end
    object QNPCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QNPCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QNPCabSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 6
    end
    object QNPCabPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNPCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QNPCabNOTATRANS_ID: TIntegerField
      FieldName = 'NOTATRANS_ID'
      Origin = 'NOTATRANS_ID'
    end
    object QNPCabNOTATRANS_NRO: TStringField
      FieldName = 'NOTATRANS_NRO'
      Origin = 'NOTATRANS_NRO'
      Size = 13
    end
    object QNPCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QNPCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QNPCabA_SUCURSAL: TIntegerField
      FieldName = 'A_SUCURSAL'
      Origin = 'A_SUCURSAL'
    end
    object QNPCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QNPCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object QNPCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QNPCabMUESTRASOLICITANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASOLICITANTE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QNPCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes '
      'where sucursal=:suc and compra_venta='#39'V'#39' and tipo_comprob='#39'NP'#39)
    Left = 136
    Top = 280
    ParamData = <
      item
        Position = 1
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDetalleProducc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id, c.cantidad as cantidadbase,d.* from STOCK_PRODUCCIO' +
        'N_CAB c'
      'left join stock_produccion_det d on d.id_cab=c.id'
      'where c.codigo=:codigo')
    Left = 520
    Top = 145
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QDetalleProduccID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetalleProduccCANTIDADBASE: TFloatField
      FieldName = 'CANTIDADBASE'
      Origin = 'CANTIDAD'
    end
    object QDetalleProduccID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
    end
    object QDetalleProduccID_CAB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = []
    end
    object QDetalleProduccCODIGO_STK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = []
      Size = 8
    end
    object QDetalleProduccDETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object QDetalleProduccCOSTO_STK: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COSTO_STK'
      Origin = 'COSTO_STK'
      ProviderFlags = []
    end
    object QDetalleProduccCANTIDAD_REAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD_REAL'
      Origin = 'CANTIDAD_REAL'
      ProviderFlags = []
    end
    object QDetalleProduccCANTIDAD_FISICA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDAD_FISICA'
      Origin = 'CANTIDAD_FISICA'
      ProviderFlags = []
    end
    object QDetalleProduccUNIDAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object QDetalleProduccULTIMO_COSTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'ULTIMO_COSTO'
      Origin = 'ULTIMO_COSTO'
      ProviderFlags = []
    end
    object QDetalleProduccCOSTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COSTO'
      Origin = 'COSTO'
      ProviderFlags = []
    end
    object QDetalleProduccAFECTA_STOCK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object QStockExistencia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select (ds.fisico) as Fisico ,(ds.minimo) as Minimo,(ds.medio) a' +
        's Medio from depositostk ds'
      'left join depositos d on d.id=ds.codigo_deposito'
      
        'where ds.codigo_Stk=:codigo and d.centraliza_stock='#39'S'#39' and ds.co' +
        'digo_deposito=:codigodeposito')
    Left = 564
    Top = 205
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'CODIGODEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QStockExistenciaFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
    end
    object QStockExistenciaMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QStockExistenciaMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
    end
  end
  object QFalt: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,(sum(dep.fisico/s.contenido_co' +
        'mpra)-sum(dep.minimo/s.contenido_compra)) as Faltante,sum(dep.fi' +
        'sico/s.contenido_compra) from stock s'
      'left join depositostk dep on dep.codigo_stk=s.codigo_stk'
      'left join depositos d on d.id=dep.codigo_deposito'
      'where s.clase_articulo in (2,3) and dep.codigo_Stk=s.codigo_stk'
      'and d.centraliza_stock='#39'S'#39
      'and ( s.rubro_stk = :rubro or :rubro = '#39'***'#39' )'
      'and (s.subrubro_stk = :SubRubro or :subRubro = '#39'*****'#39' )'
      'and ( s.marca_stk = :marca or :marca = '#39'****'#39' )'
      'group by s.codigo_stk,s.detalle_stk'
      'having'
      '(sum(dep.fisico)<sum(dep.minimo))'
      ' ')
    Left = 676
    Top = 213
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'SubRubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'SubRubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Depositos  where'
      'id = :id')
    Left = 696
    Top = 272
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDepositoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  '
      'and sucursal=:suc '
      'and compra_venta='#39'V'#39' '
      'and tipo_comprob='#39'NP'#39)
    Left = 384
    Top = 273
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
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
    object QComprobCONTROLADOR_NROREG: TStringField
      FieldName = 'CONTROLADOR_NROREG'
      Origin = 'CONTROLADOR_NROREG'
    end
    object QComprobUSAR_CAEA: TStringField
      FieldName = 'USAR_CAEA'
      Origin = 'USAR_CAEA'
      FixedChar = True
      Size = 1
    end
    object QComprobCAEA: TStringField
      FieldName = 'CAEA'
      Origin = 'CAEA'
      Size = 50
    end
    object QComprobVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_DESDE'
      Origin = 'VENCIMIENTO_CAEA_DESDE'
    end
    object QComprobVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_HASTA'
      Origin = 'VENCIMIENTO_CAEA_HASTA'
    end
  end
  object QNPDetMem: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id,id_cab,codigo,detalle,cantidad,unidades,actual,minimo,' +
        'medio,pedido,estado from notapedidodet where id_cab=:id')
    Left = 304
    Top = 344
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QNPDetMem2: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id,id_cab,codigo,detalle,cantidad,unidades from notapedid' +
        'odet where id_cab=:id')
    Left = 304
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QSubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_subrubro,s.detalle_subrubro from subrubros s'
      'where (s.codigo_rubro = :rubro )  or ( :rubro = '#39'***'#39' )'
      'order by s.detalle_subrubro')
    Left = 120
    Top = 600
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QMarca: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select marca_stk,descripcion_Marca from marcas'
      'order by descripcion_marca')
    Left = 416
    Top = 592
  end
  object spMarcarNotaPedido: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MARCAR_NOTAPEDIDO'
    Left = 228
    Top = 437
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigo_rubro,detalle_rubro from rubros order by detalle_r' +
        'ubro')
    Left = 464
    Top = 528
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_FD.QProveedores
    Left = 32
    Top = 128
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
    Left = 104
    Top = 120
    object CDSProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSProveedorN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Origin = 'N_DE_CUENTA'
      Size = 14
    end
    object CDSProveedorID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object CDSProveedorCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Origin = 'COD_POSTAL'
      Size = 8
    end
    object CDSProveedorLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSProveedorTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 10
    end
    object CDSProveedorTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 10
    end
    object CDSProveedorCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object CDSProveedorN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Origin = 'N_DE_CUIT'
      Size = 13
    end
    object CDSProveedorACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Size = 1
    end
    object CDSProveedorRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Origin = 'RETIENE_IVA'
      Size = 1
    end
    object CDSProveedorRETIENE_IB: TStringField
      FieldName = 'RETIENE_IB'
      Origin = 'RETIENE_IB'
      Size = 1
    end
    object CDSProveedorRETIENE_GANANCIAS: TStringField
      FieldName = 'RETIENE_GANANCIAS'
      Origin = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object CDSProveedorIVA_SERVICIOS: TStringField
      FieldName = 'IVA_SERVICIOS'
      Origin = 'IVA_SERVICIOS'
      Size = 1
    end
    object CDSProveedorPRECIOS_CON_IVA: TStringField
      FieldName = 'PRECIOS_CON_IVA'
      Origin = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object CDSProveedorOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object CDSProveedorNOMBRE_REPRESENTANTE: TStringField
      FieldName = 'NOMBRE_REPRESENTANTE'
      Origin = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorDIRECCION_REPRESENTANTE: TStringField
      FieldName = 'DIRECCION_REPRESENTANTE'
      Origin = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
      Origin = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object CDSProveedorTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Origin = 'TIPO_PROVEEDOR'
      Required = True
      Size = 1
    end
    object CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object CDSProveedorFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object CDSProveedorID_PERC_IVA: TIntegerField
      FieldName = 'ID_PERC_IVA'
      Origin = 'ID_PERC_IVA'
    end
    object CDSProveedorID_PERC_IBB: TIntegerField
      FieldName = 'ID_PERC_IBB'
      Origin = 'ID_PERC_IBB'
    end
    object CDSProveedorID_PERC_IBB_2: TIntegerField
      FieldName = 'ID_PERC_IBB_2'
      Origin = 'ID_PERC_IBB_2'
    end
    object CDSProveedorRUBRO: TIntegerField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
    end
    object CDSProveedorID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object CDSProveedorEXENTO_GANACIA: TStringField
      FieldName = 'EXENTO_GANACIA'
      Origin = 'EXENTO_GANACIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField
      FieldName = 'CODIGO_REGIMEN_RET_GANACIA'
      Origin = 'CODIGO_REGIMEN_RET_GANACIA'
      Required = True
    end
    object CDSProveedorEXENTO_RETENCION_IB: TStringField
      FieldName = 'EXENTO_RETENCION_IB'
      Origin = 'EXENTO_RETENCION_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorID_TASA_RETENCION_IB: TIntegerField
      FieldName = 'ID_TASA_RETENCION_IB'
      Origin = 'ID_TASA_RETENCION_IB'
      Required = True
    end
    object CDSProveedorNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Origin = 'NRO_IIBB'
      Size = 15
    end
    object CDSProveedorCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 100
    end
    object CDSProveedorCONV_MULTI: TStringField
      FieldName = 'CONV_MULTI'
      Origin = 'CONV_MULTI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorMONEDA_PRECIOS: TIntegerField
      FieldName = 'MONEDA_PRECIOS'
      Origin = 'MONEDA_PRECIOS'
    end
    object CDSProveedorTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object CDSProveedorDESPERIVA: TStringField
      FieldName = 'DESPERIVA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object CDSProveedorDESPERIB: TStringField
      FieldName = 'DESPERIB'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object CDSProveedorDESPERIB2: TStringField
      FieldName = 'DESPERIB2'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object CDSProveedorSALDO_INICIAL: TFloatField
      DisplayLabel = 'Saldo Incial'
      FieldName = 'SALDO_INICIAL'
      Origin = 'SALDO_INICIAL'
    end
    object CDSProveedorMUESTRADETALLERETIIBB: TStringField
      FieldName = 'MUESTRADETALLERETIIBB'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 25
    end
    object CDSProveedorMUESTRATASARETIIBB: TFloatField
      FieldName = 'MUESTRATASARETIIBB'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
      Origin = 'MINIMO_IMPONIBLE'
      ProviderFlags = []
    end
  end
end

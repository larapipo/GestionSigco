inherited FormCompraCtdo_2: TFormCompraCtdo_2
  Left = 374
  Top = 118
  Caption = 'Compras de Contado'
  ClientHeight = 590
  ClientWidth = 895
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 913
  ExplicitHeight = 631
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Top = 23
    Width = 895
    Height = 514
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 23
    ExplicitWidth = 895
    ExplicitHeight = 514
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 895
      Height = 137
      Align = alTop
      TabOrder = 0
      object dbtMuestraComprob: TDBText
        Left = 356
        Top = 21
        Width = 115
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
      object DBText10: TDBText
        Left = 596
        Top = 24
        Width = 22
        Height = 17
        DataField = 'LetraFac'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 372
        Top = 58
        Width = 23
        Height = 22
        Action = AgregarProveedor
        Flat = True
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
        ParentShowHint = False
        ShowHint = True
      end
      object Label9: TLabel
        Left = 499
        Top = 7
        Width = 31
        Height = 13
        Caption = 'N.Op.:'
      end
      object edNumeroOP: TDBText
        Left = 535
        Top = 6
        Width = 75
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        DataField = 'NUMERO_OPERACION'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel58: TJvLabel
        Left = 6
        Top = 7
        Width = 35
        Height = 13
        Caption = 'Fecha '
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel60: TJvLabel
        Left = 625
        Top = 7
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel63: TJvLabel
        Left = 239
        Top = 83
        Width = 85
        Height = 13
        Caption = 'Orden de Compra'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 6
        Top = 44
        Width = 51
        Height = 13
        Caption = 'Proveedor'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel1: TJvLabel
        Left = 7
        Top = 83
        Width = 44
        Height = 13
        Caption = 'Dep'#243'sito'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel9: TJvLabel
        Left = 413
        Top = 43
        Width = 62
        Height = 13
        Caption = 'Fecha Fiscal'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel59: TJvLabel
        Left = 93
        Top = 7
        Width = 97
        Height = 13
        Caption = 'Sucursal de Compra'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel10: TJvLabel
        Left = 296
        Top = 7
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText12: TDBText
        Left = 728
        Top = 1
        Width = 75
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        DataField = 'ID_FC'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 82
        Top = 45
        Width = 111
        Height = 13
        DataField = 'MUESTRAINSCRIPCIONIVA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DBText14: TDBText
        Left = 257
        Top = 43
        Width = 111
        Height = 14
        Alignment = taRightJustify
        DataField = 'CUIT'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object dbeSuc: TDBEdit
        Left = 626
        Top = 20
        Width = 49
        Height = 24
        DataField = 'SucFac'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnExit = dbeSucExit
      end
      object dbeNumero: TDBEdit
        Left = 682
        Top = 20
        Width = 81
        Height = 24
        DataField = 'NumeroFac'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnExit = dbeNumeroExit
      end
      object dbeNombre: TDBEdit
        Left = 80
        Top = 58
        Width = 289
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'RazonSocial'
        DataSource = DSBase
        Enabled = False
        TabOrder = 10
      end
      object dbeOCompra: TDBEdit
        Left = 239
        Top = 99
        Width = 121
        Height = 21
        DataField = 'OrdenCompra'
        DataSource = DSBase
        TabOrder = 8
      end
      object dbeDeposito: TDBEdit
        Left = 80
        Top = 99
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MuestraDeposito'
        DataSource = DSBase
        Enabled = False
        TabOrder = 11
      end
      object dbeSucrusal: TDBEdit
        Left = 142
        Top = 21
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 9
      end
      object RxDBECodigo: TJvDBComboEdit
        Left = 6
        Top = 58
        Width = 65
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Codigo'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 1
        OnButtonClick = BuscarProveedorExecute
        OnKeyDown = RxDBECodigoKeyDown
      end
      object RxDBEDeposito: TJvDBComboEdit
        Left = 7
        Top = 100
        Width = 45
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Deposito'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 4
        OnButtonClick = BuscarDepositoExecute
        OnKeyDown = RxDBEDepositoKeyDown
      end
      object RxDBESucursal: TJvDBComboEdit
        Left = 92
        Top = 21
        Width = 45
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'SucursalCompra'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 2
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxDBESucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 297
        Top = 21
        Width = 50
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
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object dbeFechaCompra: TJvDBDateEdit
        Left = 5
        Top = 21
        Width = 83
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHACOMPRA'
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
        OnExit = dbeFechaCompraExit
      end
      object dbeFechaFiscal: TJvDBDateEdit
        Left = 414
        Top = 58
        Width = 88
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHAFISCAL'
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
        TabOrder = 7
        OnEnter = dbeFechaFiscalEnter
        OnExit = dbeFechaFiscalExit
      end
      object dbgCtroCosto: TDBGrid
        Left = 366
        Top = 86
        Width = 293
        Height = 35
        BorderStyle = bsNone
        DataSource = DSCtroCosto
        GradientEndColor = 14013909
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentColor = True
        ParentFont = False
        TabOrder = 12
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRIPCION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPUTADO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            Width = 70
            Visible = True
          end>
      end
    end
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 137
      Width = 895
      Height = 377
      ActivePage = PagImpuestos
      Align = alClient
      TabOrder = 1
      TabPosition = tpBottom
      OnChange = pcDetalleFacturaChange
      OnEnter = pcDetalleFacturaEnter
      object pagDetalle: TTabSheet
        Caption = 'Detalles'
        DesignSize = (
          887
          351)
        object Label17: TLabel
          Left = 17
          Top = 244
          Width = 99
          Height = 16
          Anchors = [akLeft, akBottom]
          Caption = 'Observaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsItalic]
          ParentFont = False
          ExplicitTop = 266
        end
        object Bevel48: TBevel
          Left = 660
          Top = 298
          Width = 173
          Height = 21
          Anchors = [akLeft, akBottom]
          ExplicitTop = 281
        end
        object dbtTotal: TDBText
          Left = 678
          Top = 300
          Width = 155
          Height = 17
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'TOTAL'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 283
        end
        object lb4: TLabel
          Left = 362
          Top = 247
          Width = 100
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Costo del Articulo en:'
          ExplicitTop = 269
        end
        object dbtMUESTRAMONEDACPBTE1: TDBText
          Left = 485
          Top = 247
          Width = 26
          Height = 17
          Cursor = crHandPoint
          Hint = 'Hacer clik para modificar Valor'
          Alignment = taCenter
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRAMONEDA'
          DataSource = DatosCompraCtdo.DSCompraDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ActualicarCotizacionDetalleExecute
          ExplicitTop = 230
        end
        object dbtMUESTRAMONEDA: TDBText
          Left = 517
          Top = 247
          Width = 52
          Height = 17
          Cursor = crHandPoint
          Hint = 'Hacer clik para modificar Valor'
          Anchors = [akLeft, akBottom]
          DataField = 'COTIZACION'
          DataSource = DatosCompraCtdo.DSCompraDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ActualicarCotizacionDetalleExecute
          ExplicitTop = 230
        end
        object lb1: TLabel
          Left = 311
          Top = 306
          Width = 107
          Height = 26
          Anchors = [akLeft, akBottom]
          Caption = 'Total Unidades'#13#10'Monetarias Ingresadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 328
        end
        object dbtTotal1: TDBText
          Left = 439
          Top = 315
          Width = 68
          Height = 17
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'TOTAL_UNIDADES'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 337
        end
        object dbtMUESTRAMONEDACPBTE2: TDBText
          Left = 623
          Top = 300
          Width = 33
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRASIGNOMONEDACPBTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 322
        end
        object lb3: TLabel
          Left = 529
          Top = 325
          Width = 114
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Valor Total Expreado en'
          ExplicitTop = 347
        end
        object dbtMUESTRAMONEDACPBTE: TDBText
          Left = 665
          Top = 325
          Width = 106
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRAMONEDACPBTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 347
        end
        object RxLabel5: TJvLabel
          Left = 576
          Top = 300
          Width = 39
          Height = 19
          Alignment = taRightJustify
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Anchors = [akLeft, akBottom]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
          ExplicitTop = 322
        end
        object spMenu: TSpeedButton
          Left = 362
          Top = 266
          Width = 23
          Height = 22
          Anchors = [akLeft, akBottom]
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
            310032323200333333003F3E3C004B48450057524E00625C56006C655E00776E
            6500887D7200978A7E00A4968800B0A19100BAAA9900C3B2A000CBB9A600D2BF
            AB00DDCAB800E4D4C300ECDFD000F3E8DC00F8EFE500FBF4EB00FDF7F000FEF9
            F400FEFBF700FEFCF900FEFDFA00FEFDFB00FEFDFB00FEFDFA00FEFCF900FEFB
            F700FEFAF500FEF9F300FEF8F100FEF7EF00FEF6ED00FEF5EB00FEF4E800FEF3
            E500FEF2E300FEF0DF00FEEEDB00FEEDD700FEECD600FEECD500FEEBD300FEEA
            D100FEEAD000FEE8CD00FEE7CB00FEE6C900FEE3C500FDE1C300FCDFC000FCDE
            BE00FBDCBC00FBDBBA00FBDAB800FBD9B600FCD9B400FCD8B300FDD7B000FDD6
            AC00FDD4A800FDD3A600FDD2A500FDD1A400FDD1A300FCD0A200FBCFA100F9CD
            A000F7CB9F00F4C89D00F1C59B00EFC19800ECBE9400EBBC9300EABB9100EABB
            9000EABA8F00EAB98E00E9B98C00E8B88B00E6B58900E4B28700E2B08500DEAE
            8300DBAC8300D6A98300CFA78400C5A38700B99F8900A8998C009B948F009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BFAFBF00C4A4C400C99AC900CD90CD00D187D100D876D800DF60
            DF00EA40EA00F227F200F814F800FC09FC00FD04FD00FE01FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FB05F200F70BE400F310D800F015
            CD00ED19C300E72AAD00E23D9600DF4F8100DC5E7100D9696300D7715700D577
            4D00D37A4700D27B4200D17B3C00D07B3800CF783300CD763000CC742B00CC73
            2600CB712100CA6E1800C96A0D00C9680500C8660200C7650200C7640200C764
            0200C7650200C8660100C9660000CA680000CA680000CA680000D2D2D2D2D2D2
            D2D2D2D2D2D2D2D2D2D2D2D2FEFEFEFEFEFEFEFEFEFEFEFED2D2D2FE58636567
            676C6E7172737670FED2D2FE5C66676D6E70757577787973FED2D2FE59646288
            F1F28B7273777873FED2D2FE57616365E9F47E6E71737771FED2D2FE535D615F
            7DF3896770717371FED2D2FE505B5D5D6AEFE9686D70716EFED2D2FE4D595B5C
            5DE8ED6F676E706BFED2D2FE4D57595B5A86EE7D64696D68FED2D2FE4D545759
            586AED885F676966FED2D2FE4D5255575743EDED7B626764FED2D2FE4D505254
            554289897D5F6560FED2D2FE4D4D4D4D4D4D4D4D51585B55FED2D2D2FEFEFEFE
            FEFEFEFEFEFEFEFED2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2}
          PopupMenu = poMenuOtros
          ExplicitTop = 288
        end
        object dbeObs1: TDBEdit
          Left = 14
          Top = 260
          Width = 313
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'OBSERVACION1'
          DataSource = DSBase
          TabOrder = 1
        end
        object dbeObs2: TDBEdit
          Left = 14
          Top = 283
          Width = 313
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'OBSERVACION2'
          DataSource = DSBase
          TabOrder = 2
        end
        object DBGrillaDetalle: TDBGrid
          Left = 0
          Top = 0
          Width = 887
          Height = 234
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          Ctl3D = False
          DataSource = DatosCompraCtdo.DSCompraDet
          DrawingStyle = gdsClassic
          FixedColor = clFuchsia
          GradientEndColor = 14013909
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
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
          OnKeyDown = DBGrillaDetalleKeyDown
          OnKeyPress = DBGrillaDetalleKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CodigoArticulo'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
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
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 253
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'UNIDAD'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Unid.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'IVA_TASA'
              Title.Caption = 'Iva'
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
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 58
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRAMONEDA'
              Title.Alignment = taCenter
              Title.Caption = '#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADES_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Unidades'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'P.Uni.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dsto.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 51
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'TOTAL'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = '$ Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD_UNIDADES'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 54
              Visible = True
            end
            item
              Color = clBlue
              Expanded = False
              FieldName = 'CANTIDAD_INVENTARIO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = False
            end>
        end
      end
      object PagImpuestos: TTabSheet
        Caption = 'Impuestos'
        ImageIndex = 1
        object Label6: TLabel
          Left = 176
          Top = 98
          Width = 50
          Height = 16
          Caption = 'Dsto %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 176
          Top = 3
          Width = 61
          Height = 16
          Caption = 'Gravado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 176
          Top = 48
          Width = 73
          Height = 16
          Caption = 'Montributo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 176
          Top = 73
          Width = 89
          Height = 16
          Caption = 'Imp.Excluido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 289
          Top = 1
          Width = 149
          Height = 21
        end
        object Bevel6: TBevel
          Left = 164
          Top = 305
          Width = 149
          Height = 21
          Visible = False
        end
        object Bevel22: TBevel
          Left = 289
          Top = 48
          Width = 149
          Height = 21
        end
        object Bevel28: TBevel
          Left = 289
          Top = 71
          Width = 149
          Height = 21
        end
        object DBText1: TDBText
          Left = 295
          Top = 3
          Width = 138
          Height = 17
          Alignment = taRightJustify
          DataField = 'NetoGrav1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 182
          Top = 282
          Width = 138
          Height = 17
          Alignment = taRightJustify
          DataField = 'DstoImporte'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object DBText7: TDBText
          Left = 295
          Top = 50
          Width = 138
          Height = 17
          Alignment = taRightJustify
          DataField = 'NETOMONOTRIBUTO1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 295
          Top = 73
          Width = 138
          Height = 17
          Alignment = taRightJustify
          DataField = 'IMPORTEEXCLUIDO1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 176
          Top = 26
          Width = 48
          Height = 16
          Caption = 'Exento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel32: TBevel
          Left = 289
          Top = 24
          Width = 149
          Height = 21
        end
        object DBText3: TDBText
          Left = 295
          Top = 26
          Width = 138
          Height = 17
          Alignment = taRightJustify
          DataField = 'NetoExen1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbtTotalFinal: TDBText
          Left = 560
          Top = 246
          Width = 199
          Height = 17
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 492
          Top = 246
          Width = 41
          Height = 20
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 444
          Top = 2
          Width = 9
          Height = 213
          Shape = bsLeftLine
        end
        object Bevel3: TBevel
          Left = 289
          Top = 172
          Width = 149
          Height = 21
        end
        object Label3: TLabel
          Left = 177
          Top = 127
          Width = 61
          Height = 16
          Caption = 'Gravado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 177
          Top = 149
          Width = 48
          Height = 16
          Caption = 'Exento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel4: TBevel
          Left = 289
          Top = 128
          Width = 149
          Height = 21
        end
        object Bevel5: TBevel
          Left = 289
          Top = 150
          Width = 149
          Height = 21
        end
        object DBText2: TDBText
          Left = 295
          Top = 130
          Width = 138
          Height = 17
          Alignment = taRightJustify
          DataField = 'NetoGrav2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 295
          Top = 152
          Width = 138
          Height = 17
          Alignment = taRightJustify
          DataField = 'NetoExen2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 295
          Top = 174
          Width = 138
          Height = 17
          Alignment = taRightJustify
          DataField = 'NETOMONOTRIBUTO2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 177
          Top = 172
          Width = 73
          Height = 16
          Caption = 'Monotribu.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel7: TBevel
          Left = 168
          Top = 118
          Width = 273
          Height = 9
          Shape = bsTopLine
        end
        object Label7: TLabel
          Left = 177
          Top = 194
          Width = 89
          Height = 16
          Caption = 'Imp.Excluido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel8: TBevel
          Left = 289
          Top = 194
          Width = 98
          Height = 21
        end
        object DBText9: TDBText
          Left = 295
          Top = 196
          Width = 138
          Height = 17
          Alignment = taRightJustify
          DataField = 'IMPORTEEXCLUIDO2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel2: TJvLabel
          Left = 468
          Top = 73
          Width = 100
          Height = 13
          Caption = 'Percepciones de Iva'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel3: TJvLabel
          Left = 471
          Top = 133
          Width = 90
          Height = 13
          Caption = 'Percepciones IIBB'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel4: TJvLabel
          Left = 471
          Top = -2
          Width = 17
          Height = 13
          Caption = 'Iva'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbgPrecepcionIVA: TDBGrid
          Left = 466
          Top = 88
          Width = 305
          Height = 40
          TabStop = False
          Color = clMenu
          DataSource = DatosCompraCtdo.DSPercepcionIVA
          GradientEndColor = 14013909
          Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgPrecepcionIVAColEnter
          OnKeyDown = dbgPrecepcionIVAKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DETALLE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Color = clMenu
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TASA'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clMenu
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 97
              Visible = True
            end>
        end
        object dbeDscto: TDBEdit
          Left = 228
          Top = 96
          Width = 47
          Height = 21
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 0
        end
        object dbgPercepcionIB: TDBGrid
          Left = 466
          Top = 149
          Width = 305
          Height = 53
          TabStop = False
          Color = clMenu
          DataSource = DatosCompraCtdo.DSPercepcionIB
          GradientEndColor = 14013909
          Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgPercepcionIBColEnter
          Columns = <
            item
              Expanded = False
              FieldName = 'DETALLE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Color = clMenu
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TASA'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clMenu
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 97
              Visible = True
            end>
        end
        object dbgIva: TDBGrid
          Left = 466
          Top = 14
          Width = 386
          Height = 59
          TabStop = False
          Color = clMenu
          DataSource = DatosCompraCtdo.DSImpuestos
          GradientEndColor = 14013909
          Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgIvaColEnter
          OnKeyDown = dbgIvaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DETALLE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Color = clMenu
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TASA'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Color = clMenu
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 97
              Visible = True
            end>
        end
        object DBEdit1: TDBEdit
          Left = 291
          Top = 96
          Width = 145
          Height = 21
          DataField = 'DSTOIMPORTE'
          DataSource = DSBase
          TabOrder = 4
        end
      end
      object PagValores: TTabSheet
        Caption = 'Valores'
        ImageIndex = 2
        object TDBText
          Left = 497
          Top = 227
          Width = 139
          Height = 17
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inline FrameMovValoresEgresos1: TFrameMovValoresEgresos
          Left = 0
          Top = 0
          Width = 887
          Height = 346
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          BiDiMode = bdLeftToRight
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 887
          ExplicitHeight = 346
          inherited lbTotalValores: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited Label25: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited DBText12: TDBText
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited DBText2: TDBText
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited Label41: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited lb1: TLabel
            Left = 6
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 6
          end
          inherited lbResto: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited dbgMovimientos: TDBGrid
            Top = 45
            Height = 149
          end
          inherited pcValores: TPageControl
            Width = 435
            Height = 230
            ActivePage = FrameMovValoresEgresos1.tsEfectivo
            ExplicitWidth = 435
            ExplicitHeight = 230
            inherited tsEfectivo: TTabSheet
              ExplicitWidth = 427
              ExplicitHeight = 202
              inherited DBText4: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText5: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbtID_EFECTIVO: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText21: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeUnidades: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeCotizacion: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeImporte: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
            end
            inherited tsChe3: TTabSheet
              inherited Label8: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label9: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label10: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label11: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label12: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label13: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label14: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label15: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label16: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText3: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label7: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label1: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label45: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText6: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText7: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbtID_EFECTIVO1: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText20: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label48: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEBancoChe3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEEntregadoPorChe3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBENroChe3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEEntregadoAChe3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeunidadesChe3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit12: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeImporteChe3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit22: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBDFechaEmisionChe3: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBDFechaCobroChe3: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBDFechaIngresoChe3: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBDFechaEgresoChe3: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
            end
            inherited tsCheques: TTabSheet
              inherited DBText1: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label2: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label3: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label4: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label5: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label6: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label17: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label18: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label34: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label35: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbNI: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbNF: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText15: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText16: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label42: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText17: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label62: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText36: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label47: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText19: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited pnAnulado: TPanel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbObs: TDBMemo
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeFechaEmision: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeFechaCobro: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEChequera: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBENroChe: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEOrdenDe: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeUnidadesCheque: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEImporteLetras: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeImporteCheque: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
            end
            inherited tsTransf: TTabSheet
              inherited Label19: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label20: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label21: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label22: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label23: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label31: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText8: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText9: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label43: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText22: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeNumero: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeMuestraCta: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeUnidadesTx: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeImporteTx: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeOrigenTx: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited rxdcCtaBco: TJvDBComboEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit1: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
            end
            inherited tsDebito: TTabSheet
              inherited Label24: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label26: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label27: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label28: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label29: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label30: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText10: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText11: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label44: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeNroDebito: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeMuestraCtaDebito: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeUnidadesDebito: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited ImporteDebito: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeOriginadoDebito: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited rcdcIdCtaBcoDebito: TJvDBComboEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit2: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
            end
            inherited tsTarjeta: TTabSheet
              inherited pnTarjeta: TPanel
                StyleElements = [seFont, seClient, seBorder]
                inherited Label32: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label33: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label36: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label37: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label38: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label39: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label40: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBText13: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBText14: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBText18: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label46: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBEdit4: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited dbeUniTC: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBEdit6: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited dbeMuestraTarjeta: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited dbeNumeroCupon: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited dbdFechaCupon: TJvDBDateEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited dbdFechaCompra: TJvDBDateEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited dbcTC: TJvDBComboEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
              end
            end
          end
          inherited edMuestraCaja: TEdit
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited ceCaja: TJvComboEdit
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited DSPChe3: TDataSetProvider
            Left = 102
            Top = 128
          end
          inherited ActionList1: TActionList
            Left = 552
            Top = 40
          end
          inherited DSPTransBco: TDataSetProvider
            Left = 158
            Top = 136
          end
          inherited CDSCajaMov: TClientDataSet
            AfterPost = FrameMovValoresEgresos1CDSCajaMovAfterPost
            AfterDelete = FrameMovValoresEgresos1CDSCajaMovAfterPost
          end
          inherited DSPBuscaFormaPago: TDataSetProvider
            Left = 816
            Top = 320
          end
        end
        object Panel2: TPanel
          Left = 11
          Top = 238
          Width = 238
          Height = 23
          TabOrder = 1
          object DBText11: TDBText
            Left = 82
            Top = 4
            Width = 140
            Height = 11
            Alignment = taRightJustify
            DataField = 'TOTAL'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 0
            Top = 4
            Width = 76
            Height = 13
            Caption = 'Total Compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object PagNroSeires: TTabSheet
        Caption = 'Nro.Series'
        ImageIndex = 3
        DesignSize = (
          887
          351)
        object Label24: TLabel
          Left = 380
          Top = 192
          Width = 87
          Height = 13
          Caption = 'Cant.Comprada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtCantidad: TDBText
          Left = 460
          Top = 192
          Width = 65
          Height = 17
          Alignment = taRightJustify
          DataField = 'Cantidad'
        end
        object Label25: TLabel
          Left = 572
          Top = 192
          Width = 63
          Height = 13
          Caption = 'Ingresados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBStatusLabel2: TJvDBStatusLabel
          Left = 648
          Top = 192
          Width = 85
          Height = 13
          DataSetName = ' '
          DataSource = DatosCompraCtdo.DSCompraSubDetalle
          Style = lsRecordNo
          ShowOptions = doGlyph
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbgDetalleCompra: TDBGrid
          Left = 5
          Top = 2
          Width = 360
          Height = 330
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DatosCompraCtdo.DSCompraDet
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clFuchsia
          GradientEndColor = 14013909
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgDetalleCompraDrawColumnCell
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CodigoArticulo'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
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
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 259
              Visible = True
            end>
        end
        object dbgSeries: TDBGrid
          Left = 375
          Top = 3
          Width = 337
          Height = 182
          Color = clAqua
          DataSource = DatosCompraCtdo.DSCompraSubDetalle
          DrawingStyle = gdsClassic
          FixedColor = clMoneyGreen
          GradientEndColor = 14013909
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyPress = dbgSeriesKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'SERIE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Nro de Serie'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
    end
    object pnMonedaIngreso: TPanel
      Left = 665
      Top = 50
      Width = 128
      Height = 51
      ParentColor = True
      TabOrder = 2
      object lb2: TLabel
        Left = 17
        Top = 4
        Width = 93
        Height = 13
        Cursor = crHandPoint
        Hint = 'Hacer clik para modificar Valor'
        Caption = 'Comprobante en'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = ActualizarCotizacionExecute
      end
      object dbtMUESTRAMONEDACPBTE3: TDBText
        Left = 6
        Top = 23
        Width = 30
        Height = 17
        Cursor = crHandPoint
        Hint = 'Hacer clik para modificar Valor'
        Alignment = taRightJustify
        DataField = 'MUESTRASIGNOMONEDACPBTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = ActualizarCotizacionExecute
      end
      object dbtMUESTRASIGNOMONEDACPBTE: TDBText
        Left = 52
        Top = 23
        Width = 53
        Height = 17
        Cursor = crHandPoint
        Hint = 'Hacer clik para modificar Valor'
        Alignment = taRightJustify
        DataField = 'MONEDA_CPBTE_COTIZACION'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = ActualizarCotizacionExecute
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 537
    Width = 895
    Align = alBottom
    ButtonHeight = 30
    ExplicitTop = 537
    ExplicitWidth = 895
    inherited btConfirma: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Height = 30
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007B2900006B21080052181000521810006B21
        00007B290000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008C31000052211000BD5A1000E79C5200EFBD8C00F7BD8C00E79C
        5A00C66318005218100094310000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006B290800AD420000EFB57B00FFFFFF00FFFFF700F7DEC600F7DEC600FFF7
        F700FFFFFF00EFBD8400B54A000063211000FF00FF00FF00FF00FF00FF007329
        0800B5420000F7D6AD00FFFFFF00D68C4200BD4A0000BD420000BD420000C652
        0000D6844200FFFFF700FFDEBD00B54A000094310000FF00FF00FF00FF009C39
        0000E7AD7300FFFFFF00CE732900CE6B2100CE732900BD4A0000BD4A0000BD42
        0000BD420000CE6B1800FFFFF700EFBD8C0052181000FF00FF00AD420000C65A
        1000FFFFFF00E7A56B00BD4A0000EFCEAD00F7D6BD00BD4A0000BD420000CE6B
        2100EFBD9400BD420000D68C4200FFFFFF00C66310007B2900009C390000DE94
        5200FFFFFF00D6732900CE630800EFCEAD00F7D6B500C6520000D6844200FFF7
        EF00F7E7DE00BD4A0000BD520000FFFFF700E79C5A006B2100008C310000EFBD
        8C00FFF7E700DE7B2900D6732100F7D6B500F7D6B500E7AD7300FFFFFF00FFFF
        FF00F7DEC600BD4A0000BD420000F7DEC600EFC68C0052181000AD420000EFBD
        9400FFF7EF00E78C3900E7843100F7DEBD00F7D6BD00E7A56300FFF7EF00FFFF
        FF00F7DECE00BD4A0000BD420000F7DEC600EFBD8C0052181000B54A0000EFAD
        6B00FFFFFF00EFA56300EF944200FFDEC600F7DEC600DE732100DE8C3900F7E7
        D600F7EFDE00BD4A0000C6520000FFFFFF00E79452006B210800B54A0000DE8C
        3900FFFFFF00FFD6B500F7A55A00FFE7D600FFE7CE00E7843100D6732100D673
        2100E7AD7B00BD420000DE945200FFFFFF00BD5A10007B290000FF00FF00CE63
        1800FFCEA500FFFFFF00FFD6A500FFBD7B00EFAD7300E78C3900DE7B2900CE63
        1000C64A0000D67B3100FFFFFF00EFAD730052181800FF00FF00FF00FF00B542
        0000E7843900FFE7CE00FFFFFF00FFD6AD00EFA55A00E78C3900DE7B2900D67B
        2900E7A56B00FFFFFF00F7CEA500AD4200008C310000FF00FF00FF00FF00FF00
        FF00B54A0000DE843900FFCEA500FFFFF700FFFFFF00FFF7EF00FFF7EF00FFFF
        FF00FFF7EF00E7A56B00AD4200005A211000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD420000C6631800DE8C4200EFA56B00EFBD8C00EFB58400DE94
        4A00BD5A08005A21100094310000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A5420000A5420000A54208009C4200008C31
        000073290800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Height = 30
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00521810006B2108007B2900007B2900006B21
        000052181000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00522110008C310000BD5A1000E79C5200EFBD8C00F7BD8C00E79C
        5A00C66318009431000052181000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006B290800AD420000EFB57B00FFFFFF00FFFFF700F7DEC600F7DEC600FFF7
        F700FFFFFF00EFBD8400B54A000063211000FF00FF00FF00FF00FF00FF007329
        0800B5420000F7D6AD00FFFFFF00D68C4A00C6520800BD420000BD420000BD4A
        0000D67B3900FFFFF700FFDEBD00B54A000052181000FF00FF00FF00FF009C39
        0000E7AD7300FFFFFF00CE732900BD420000BD420000BD4A0000BD420000C663
        1000CE733100CE6B1800FFFFF700EFBD8C0094310000FF00FF008C310000C65A
        1000FFFFFF00E7A56B00C64A0000FFFFFF00D6843900BD420000BD420000DE9C
        5A00FFFFFF00BD420000D6844200FFFFFF00C6631000521810009C390000DE94
        5200FFFFFF00D6732900CE630800FFFFFF00FFFFFF00DE945200BD420000DE94
        5A00FFFFFF00BD4A0000BD520000FFFFF700E79C5A006B210000AD420000EFBD
        8C00FFF7E700DE7B2900D6732100FFFFFF00FFFFFF00FFFFFF00E7AD7B00E7A5
        6B00FFFFFF00BD4A0000BD420000F7DEC600EFC68C007B290000B54A0000EFBD
        9400FFF7EF00E78C3900E7843100FFFFFF00FFFFFF00FFFFFF00EFC69C00E7AD
        7300FFFFFF00BD4A0000BD420000F7DEC600EFBD8C007B290000B54A0000EFAD
        6B00FFFFFF00EFA56300EF944200FFFFFF00FFFFFF00EFBD8C00D6631000E7A5
        6B00FFFFFF00BD4A0000C6520000FFFFFF00E79452006B210800AD420000DE8C
        3900FFFFFF00FFD6B500F7A55A00FFFFFF00F7BD8400DE843100D66B1800E7AD
        7B00FFFFFF00BD420000DE945200FFFFFF00BD5A100052181000FF00FF00CE63
        1800FFCEA500FFFFFF00FFD6A500F7AD6300EF944A00E78C3900DE732100D67B
        2900D67B2900D67B3100FFFFFF00EFAD73008C310000FF00FF00FF00FF00B542
        0000E7843900FFE7CE00FFFFFF00FFD6B500EFA56300E78C3900DE7B2900D673
        2100DE9C6300FFFFFF00F7CEA500AD42000052181800FF00FF00FF00FF00FF00
        FF00B54A0000DE843900FFCEA500FFFFF700FFFFFF00FFF7EF00FFF7EF00FFFF
        FF00FFF7EF00E7A56B00AD4200005A211000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD420000C6631800DE8C4200EFA56B00EFBD8C00EFB58400DE94
        4A00BD5A0800943100005A211000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A5420000A5420000A54208009C4200008C31
        000073290800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Height = 30
      ExplicitHeight = 30
    end
    object btImprimir: TBitBtn
      Left = 557
      Top = 0
      Width = 75
      Height = 30
      Action = Imprimir
      Caption = 'Imprimir'
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
    object SpeedButton1: TSpeedButton
      Left = 632
      Top = 0
      Width = 34
      Height = 30
      Action = DetallesCostos
      ImageIndex = 12
      Images = ImageListDos
      Flat = True
    end
  end
  inherited Panel1: TPanel
    Top = 567
    Width = 895
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 567
    ExplicitWidth = 895
    inherited sbEstado: TStatusBar
      Width = 806
      Panels = <
        item
          Width = 610
        end
        item
          Width = 50
        end>
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 806
    end
  end
  object ToolBar2: TToolBar [3]
    Left = 0
    Top = 0
    Width = 895
    Height = 23
    ButtonHeight = 21
    ButtonWidth = 80
    Caption = 'ToolBar2'
    DrawingStyle = dsGradient
    GradientEndColor = 14013909
    ShowCaptions = True
    TabOrder = 3
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'Otras Opciones'
      DropdownMenu = poMenuOtros
      ImageIndex = 0
      PopupMenu = PopupMenu1
    end
  end
  inherited ActionList1: TActionList
    Left = 488
    Top = 96
    object BuscarProveedor: TAction
      Caption = 'BuscarProveedor'
      OnExecute = BuscarProveedorExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object AgregarProveedor: TAction
      Hint = 'Agregar Proveedor Nuevo'
      OnExecute = AgregarProveedorExecute
    end
    object ActualizarCotizacion: TAction
      Caption = 'ActualizarCotizacion'
      OnExecute = ActualizarCotizacionExecute
    end
    object ActualicarCotizacionDetalle: TAction
      Caption = 'ActualicarCotizacionDetalle'
      OnExecute = ActualicarCotizacionDetalleExecute
    end
    object CambiarNumero: TAction
      Caption = 'Cambiar Numero/Fecha'
      ShortCut = 16462
      OnExecute = CambiarNumeroExecute
    end
    object GravarNumeroOperacion: TAction
      Caption = 'Gravar Numero Operacion'
      ShortCut = 16507
      OnExecute = GravarNumeroOperacionExecute
    end
    object DetallesCostos: TAction
      ShortCut = 16465
      OnExecute = DetallesCostosExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object CambiarFechaFiscal: TAction
      Caption = 'Cambiar Fecha Fiscal'
      ShortCut = 24646
      OnExecute = CambiarFechaFiscalExecute
    end
    object BuscarPorNroReferencia: TAction
      Caption = 'BuscarPorNroReferencia'
      ShortCut = 32781
      OnExecute = BuscarPorNroReferenciaExecute
    end
    object CambiarCodigo: TAction
      Caption = 'Cambiar Codigo de Proveedor'
      OnExecute = CambiarCodigoExecute
    end
    object LibroIva: TAction
      Caption = 'Agregar al Libro de Iva'
      OnExecute = LibroIvaExecute
    end
    object CambiarClaseCpbte: TAction
      Caption = 'Cambiar Clase de Cpbte'
      OnExecute = CambiarClaseCpbteExecute
    end
    object ConvertirCC: TAction
      Caption = 'Convertir a CC'
      OnExecute = ConvertirCCExecute
    end
    object PasaDetallesAStock: TAction
      Caption = 'Pasar Detalles de Art. a Stock'
      OnExecute = PasaDetallesAStockExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosCompraCtdo.CDSCompraCab
    Left = 440
    Top = 56
  end
  inherited ImageList1: TImageList
    Left = 208
    Top = 40
    Bitmap = {
      494C01010C00EC00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000004A0000005A0800006B0800006B0800005A0800004A00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B006B6B6B0000000000000000006B6B6B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000063
      0800006308000894100008B5180008B5180008B5180008B5180000941000006B
      0800006B08000000000000000000000000000000000000000000000000006B6B
      6B00ADA5A500A59C9C006B6B6B006B6B6B006B6B6B00E7E7E7006B6B6B006B6B
      6B006B6B6B000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C000000000000000000000000000000000000000000086B1000087B
      100008B5180008BD180008B5180000B5100008B5180008B5180008BD180008BD
      180000841000004A0000000000000000000000000000000000006B6B6B00DEDE
      DE00A59C9C00A59C9C00A59C9C0031313100313131006B6B6B00BDBDBD00E7E7
      E700B5B5B5006B6B6B006B6B6B006B6B6B000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E00909090007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC680200CC680200CC680200CD6904009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C0000000000000000000000000000000000086B10000884210010BD
      310010B5210008B5180000B5100008B5100008B5180008B5180008B5180008B5
      180008BD1800008410000063080000000000000000006B6B6B00D6D6D600CECE
      CE008C8C8C008C8C8C008C8C8C00393939000808080000000000080808000000
      00007B7B7B00BDBDBD006B6B6B00000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C0000000000000000000000000000000000086B100021BD4A0018BD
      420010B5310008B5180029BD3100DEF7E700EFFFEF0063CE6B0008B5180008B5
      180008B5180008BD180000630800000000006B6B6B00CECECE00CECECE008C8C
      8C00D6D6D600CECECE00BDBDBD00B5ADAD00A5A5A5008C8484005A5A5A000000
      000008080800080808006B6B6B00737373000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008731000189C390029C65A0018BD
      420008B5210008B5180010B521009CDEA500FFFFFF00F7FFFF005ACE630008B5
      180008B5180008BD180008941000005A08006B6B6B00CECECE008C8C8C00EFEF
      EF00FFFFFF00FFFFFF00E7E7E700DEDEDE00DEDEDE00CECECE00BDBDBD00ADAD
      AD008C8C8C005A5252007B7B7B00737373000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C000000000000000000000000000873100029B55A0029C6630021BD
      4A0008B5210008B5180008B5180008B518008CDE9400FFFFFF00F7FFF7005ACE
      630008B5180008B5180008AD1000005A08006B6B6B008C8C8C00FFFFFF00FFFF
      FF00FFFFFF00D6D6D6009C949400A59C9C00B5ADAD00C6C6C600D6D6D600DEDE
      DE00C6C6C600B5B5B500948C8C006B6B6B000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC680200CC680200CC680200CC6802009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C000000000000000000000000000884180031C66B0031C66B00CEF7
      DE00CEEFD600C6EFD600CEEFD600C6EFD600C6EFCE00FFFFFF00FFFFFF00F7FF
      F7006BD67B0008B5180008B5180000630800000000006B6B6B006B6B6B00EFEF
      EF00B5A5A5007B6B73008C848C0094949400949494009C949C009C9494009C9C
      9C00BDBDBD00D6D6D600C6C6C6006B6B6B000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C00000000000000000000000000108C21005ACE840042CE7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDEFC60008B5180008B51800006B08000000000000000000000000006B6B
      6B00BD8C7B00A5846B008C6B63007B6363006B6363007B737B008C8C8C00ADA5
      A500CECECE00C6C6C6006B6B6B00000000000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000089418006BD694005AD68C006BD6
      940073D69C0073D69C0073D69C0063D68C0094DEAD00FFFFFF00FFFFFF00ADE7
      BD0029BD4A0010BD290008B51800006308000000000000000000000000000000
      0000BD848400FFE7B500FFD69C00EFB58400CE9C7300BD946B00BD848400847B
      7B006B6B6B006B6B6B0000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C000000000000000000000000000894180063CE84009CE7BD0039C6
      730031C66B0039C66B0039C66B0073D69400EFFFEF00FFFFFF009CE7B50021BD
      4A0018BD390010BD290008A51000006308000000000000000000000000000000
      0000BD848400FFE7BD00FFD6A500FFD69C00FFCE9400FFC68C00BD8484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC680200CC680200CC680200CC6802009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C000000000000000000000000000000000021AD3900BDEFD60084DE
      A50029C6630029C6630052CE8400F7FFFF00FFFFFF009CE7B50021BD4A0018BD
      420018B5310010C631000884100000000000000000000000000000000000C684
      8400FFE7CE00FFE7C600FFDEB500FFD6A500FFD69C00BD848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C000000000000000000000000000000000021AD390073D68C00D6F7
      E70084DEA50031C66B0039C66B00BDEFCE00ADE7C60029C6630021BD520021BD
      4A0018C6420010AD31000884100000000000000000000000000000000000BD84
      8400FFEFDE00FFE7CE00FFDEBD00FFDEB500FFD6A500BD848400000000000000
      00000000000000000000000000000000000000000000000000007C7C7C007C7C
      7C007C7C7C007C7C7C007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3B0C009C3B
      0C009C3B0C009C3B0C009C3B0C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000021AD390084DE
      9C00DEF7EF00ADEFC6006BD6940052CE840042CE7B004ACE7B004ACE7B0039CE
      6B0021B54A00087B180000000000000000000000000000000000BD848400FFFF
      F700FFFFF700FFEFDE00FFE7CE00FFE7BD00F7C6A500BD848400000000000000
      00000000000000000000000000000000000000000000000000007C7C7C00D2D2
      D200CACACA00ADADAD007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3B0C00F89A
      9400EBA15E00DA842C009C3B0C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000021AD
      390021AD3900ADEFC600CEF7DE00BDEFD600A5E7C60094E7B50063D6940029B5
      520029B552000000000000000000000000000000000000000000BD848400BD84
      8400BD848400FFEFE700FFE7CE00FFDEC600BD84840000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007C7C
      7C007C7C7C007B7B7B007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B3A0C009C3B
      0C009C3A0C009B3A0C009C3B0C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031B54A0021AD390021AD390021AD390021AD390021A542000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD848400BD848400BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C000010AD000018AD000018AD000010AD000008A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B2900006B21080052181000521810006B2100007B2900000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521810006B2108007B2900007B2900006B210000521810000000
      0000000000000000000000000000000000000000000000000000006300000063
      0000B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C000063
      0000006300000000000000000000000000000000000000000000000000000000
      9C000018B5000031C6000031C6000031C6000031C6000031C6000031C6000018
      B50000009C000000000000000000000000000000000000000000000000008C31
      000052211000BD5A1000E79C5200EFBD8C00F7BD8C00E79C5A00C66318005218
      1000943100000000000000000000000000000000000000000000000000005221
      10008C310000BD5A1000E79C5200EFBD8C00F7BD8C00E79C5A00C66318009431
      0000521810000000000000000000000000000000000000630000009C0000009C
      0000E7DEDE000063000000630000E7E7E700E7E7E700DEDEE700CECECE000063
      0000007B000000630000000000000000000000000000000000000008A5000029
      C6000031C6000031C6000031C6000031C6000031C6000031C6000031C6000031
      C6000029BD000008A500000000000000000000000000000000006B290800AD42
      0000EFB57B00FFFFFF00FFFFF700F7DEC600F7DEC600FFF7F700FFFFFF00EFBD
      8400B54A000063211000000000000000000000000000000000006B290800AD42
      0000EFB57B00FFFFFF00FFFFF700F7DEC600F7DEC600FFF7F700FFFFFF00EFBD
      8400B54A00006321100000000000000000000000000000630000009C0000009C
      0000EFE7E7000063000000630000E7E7E700E7E7EF00DEE7E700CECECE000063
      0000007B00000063000000000000000000000000000000009C000029CE000031
      DE000031CE000021C6000029C6000031C6000031C6000031C6000021BD000029
      C6000031C6000029BD0000009C00000000000000000073290800B5420000F7D6
      AD00FFFFFF00D68C4200BD4A0000BD420000BD420000C6520000D6844200FFFF
      F700FFDEBD00B54A000094310000000000000000000073290800B5420000F7D6
      AD00FFFFFF00D68C4A00C6520800BD420000BD420000BD4A0000D67B3900FFFF
      F700FFDEBD00B54A000052181000000000000000000000630000009C0000009C
      0000EFE7E7000063000000630000DEDEDE00E7E7EF00E7E7E700D6D6D6000063
      0000007B0000006300000000000000000000000000000018BD000031E7000031
      DE001039DE006384E7001842CE000029C6000029C6000839C6006384DE001842
      C6000029C6000031C6000018B50000000000000000009C390000E7AD7300FFFF
      FF00CE732900CE6B2100CE732900BD4A0000BD4A0000BD420000BD420000CE6B
      1800FFFFF700EFBD8C005218100000000000000000009C390000E7AD7300FFFF
      FF00CE732900BD420000BD420000BD4A0000BD420000C6631000CE733100CE6B
      1800FFFFF700EFBD8C0094310000000000000000000000630000009C0000009C
      0000EFE7E700EFE7E700E7DEDE00E7DEDE00DEE7E700E7E7E700D6D6D6000063
      0000007B000000630000000000000000000000009C000031E7000031F7000029
      E7005273EF00FFFFFF00B5C6F7000831CE000029C600A5B5EF00FFFFFF006B84
      DE000021BD000031C6000031C6000008A500AD420000C65A1000FFFFFF00E7A5
      6B00BD4A0000EFCEAD00F7D6BD00BD4A0000BD420000CE6B2100EFBD9400BD42
      0000D68C4200FFFFFF00C66310007B2900008C310000C65A1000FFFFFF00E7A5
      6B00C64A0000FFFFFF00D6843900BD420000BD420000DE9C5A00FFFFFF00BD42
      0000D6844200FFFFFF00C6631000521810000000000000630000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000009C0000009C0000009C
      0000009C00000063000000000000000000000008AD000031FF000031FF000031
      EF000831EF008CA5F700FFFFFF00B5C6F700ADBDEF00FFFFFF00A5B5EF001039
      C6000029C6000031C6000031C6000010AD009C390000DE945200FFFFFF00D673
      2900CE630800EFCEAD00F7D6B500C6520000D6844200FFF7EF00F7E7DE00BD4A
      0000BD520000FFFFF700E79C5A006B2100009C390000DE945200FFFFFF00D673
      2900CE630800FFFFFF00FFFFFF00DE945200BD420000DE945A00FFFFFF00BD4A
      0000BD520000FFFFF700E79C5A006B2100000000000000630000009C0000B5D6
      B500B5D6B500B5D6B500B5D6B500B5D6B500B5D6B500B5D6B500B5D6B500B5D6
      B500009C00000063000000000000000000000018BD001042FF000839FF000031
      FF000031F7000029EF0094A5F700FFFFFF00FFFFFF00ADBDEF000029C6000029
      C6000031C6000031C6000031C6000018AD008C310000EFBD8C00FFF7E700DE7B
      2900D6732100F7D6B500F7D6B500E7AD7300FFFFFF00FFFFFF00F7DEC600BD4A
      0000BD420000F7DEC600EFC68C0052181000AD420000EFBD8C00FFF7E700DE7B
      2900D6732100FFFFFF00FFFFFF00FFFFFF00E7AD7B00E7A56B00FFFFFF00BD4A
      0000BD420000F7DEC600EFC68C007B2900000000000000630000009C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00009C00000063000000000000000000000818BD00426BFF00184AFF000031
      FF000031FF000031F700A5B5F700FFFFFF00FFFFFF00BDC6F7000831D6000029
      C6000031C6000031C6000031C6000018AD00AD420000EFBD9400FFF7EF00E78C
      3900E7843100F7DEBD00F7D6BD00E7A56300FFF7EF00FFFFFF00F7DECE00BD4A
      0000BD420000F7DEC600EFBD8C0052181000B54A0000EFBD9400FFF7EF00E78C
      3900E7843100FFFFFF00FFFFFF00FFFFFF00EFC69C00E7AD7300FFFFFF00BD4A
      0000BD420000F7DEC600EFBD8C007B2900000000000000630000009C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00009C00000063000000000000000000000010B5005A7BFF004A6BFF000031
      FF001039FF00A5B5FF00FFFFFF00A5B5FF0094A5F700FFFFFF00B5C6F7001842
      D6000029CE000031C6000031C6000010AD00B54A0000EFAD6B00FFFFFF00EFA5
      6300EF944200FFDEC600F7DEC600DE732100DE8C3900F7E7D600F7EFDE00BD4A
      0000C6520000FFFFFF00E79452006B210800B54A0000EFAD6B00FFFFFF00EFA5
      6300EF944200FFFFFF00FFFFFF00EFBD8C00D6631000E7A56B00FFFFFF00BD4A
      0000C6520000FFFFFF00E79452006B2108000000000000630000009C0000FFFF
      FF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00FFFF
      FF00009C00000063000000000000000000000000A5004A6BF7008CA5FF001842
      FF004A6BFF00FFFFFF00A5BDFF000031F7000029EF008CA5F700FFFFFF00637B
      E7000029D6000031CE000031C60000009C00B54A0000DE8C3900FFFFFF00FFD6
      B500F7A55A00FFE7D600FFE7CE00E7843100D6732100D6732100E7AD7B00BD42
      0000DE945200FFFFFF00BD5A10007B290000AD420000DE8C3900FFFFFF00FFD6
      B500F7A55A00FFFFFF00F7BD8400DE843100D66B1800E7AD7B00FFFFFF00BD42
      0000DE945200FFFFFF00BD5A1000521810000000000000630000009C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00009C0000006300000000000000000000000000001829CE009CADFF008CA5
      FF00214AFF004A73FF000839FF000031FF000031F7000031F7004A6BF7001039
      E7000031DE000031D6000018B5000000000000000000CE631800FFCEA500FFFF
      FF00FFD6A500FFBD7B00EFAD7300E78C3900DE7B2900CE631000C64A0000D67B
      3100FFFFFF00EFAD7300521818000000000000000000CE631800FFCEA500FFFF
      FF00FFD6A500F7AD6300EF944A00E78C3900DE732100D67B2900D67B2900D67B
      3100FFFFFF00EFAD73008C310000000000000000000000630000009C0000FFFF
      FF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00FFFF
      FF00009C0000006300000000000000000000000000000000A500425AEF00BDC6
      FF009CADFF00395AFF000839FF000031FF000031FF000031FF000029F7000031
      EF000031EF000029CE0000009C000000000000000000B5420000E7843900FFE7
      CE00FFFFFF00FFD6AD00EFA55A00E78C3900DE7B2900D67B2900E7A56B00FFFF
      FF00F7CEA500AD4200008C3100000000000000000000B5420000E7843900FFE7
      CE00FFFFFF00FFD6B500EFA56300E78C3900DE7B2900D6732100DE9C6300FFFF
      FF00F7CEA500AD42000052181800000000000000000000630000009C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00009C000000630000000000000000000000000000000000000008A5004263
      EF00ADBDFF00BDCEFF008CA5FF006384FF005273FF004A6BFF003963FF001042
      FF000029D6000008A50000000000000000000000000000000000B54A0000DE84
      3900FFCEA500FFFFF700FFFFFF00FFF7EF00FFF7EF00FFFFFF00FFF7EF00E7A5
      6B00AD4200005A21100000000000000000000000000000000000B54A0000DE84
      3900FFCEA500FFFFF700FFFFFF00FFF7EF00FFF7EF00FFFFFF00FFF7EF00E7A5
      6B00AD4200005A2110000000000000000000000000000000000000630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00006300000000000000000000000000000000000000000000000000000000
      A5001831CE005A73F700849CFF008CA5FF007B94FF005273FF00214AF7000018
      C60000009C00000000000000000000000000000000000000000000000000AD42
      0000C6631800DE8C4200EFA56B00EFBD8C00EFB58400DE944A00BD5A08005A21
      100094310000000000000000000000000000000000000000000000000000AD42
      0000C6631800DE8C4200EFA56B00EFBD8C00EFB58400DE944A00BD5A08009431
      00005A2110000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000A5000810B5001021C6000818C6000010B50000009C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420000A5420000A54208009C4200008C310000732908000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420000A5420000A54208009C4200008C310000732908000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B7B94006B7B8C000000000000000000000000000000
      0000000000000000000000000000000000000000000008730800087308000873
      0800087308000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C31000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087BAD000884
      AD00087BAD000884AD000884AD001084AD000000000000000000000000000000
      0000000000007B849400188CE7005AADDE0000000000000000000884AD000884
      AD000884AD000884AD000884AD000884AD00000000000873080010AD210010A5
      18000873080000000000000000000000000000000000000000000884AD000884
      AD000884AD000884AD009C310000FFFFFF00FFFFFF00FFFFFF008CA5FF00BDC6
      FF00FFFFFF009C31000000000000000000000000000000000000000000000884
      AD000884AD000884AD000884AD000884AD000884AD0000000000000000000000
      00000000000000000000000000000000000000000000008CBD004AD6EF0021D6
      FF0031DEFF006BE7FF008CE7FF0042BDDE000884AD0000000000000000000000
      00007B8494002184DE004AB5FF0052ADF70000000000008CBD004AD6EF0021D6
      FF0031DEFF006BE7FF008CE7FF0042BDDE000884AD000873080018B5290010AD
      21000873080000000000000000000000000000000000008CBD004AD6EF0021D6
      FF0031DEFF006BE7FF009C310000FFFFFF00FFFFFF007B9CFF000031FF005A7B
      FF00FFFFFF009C31000000000000000000000000000000000000008CBD004AD6
      EF0021D6FF0031DEFF006BE7FF008CE7FF0042BDDE000884AD00000000000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF0073E7FF008CE7FF004ABDE700089CCE001084A500000000008C84
      9400187BCE004AB5FF0052ADF70000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF000873080008730800087308000873080021BD390018B5
      310008730800087308000873080008730800008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF009C310000D6DEFF00426BFF000031FF00426BFF000031
      FF00DEE7FF009C310000000000000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031D6F70000009C0000009C0000009C0000009C0000009C000000
      9C0000009C0000009C000000000000000000088CBD008CFFFF005AEFFF0021D6
      FF0031DEFF0073D6EF00B5949400C6A59C00C6ADA500AD847B008C6B6B006394
      BD004AB5FF004AB5FF000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF000873080039D6630031CE5A0031CE520029C64A0021BD
      420021BD390018B5290010AD290008730800008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF009C3100005273FF001042FF00BDCEFF00EFF7FF001842
      FF004A73FF0094310000000000000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031D6F70000009C00396BFF00295AFF00104AFF000031FF000029
      FF000018EF0000009C000000000000000000088CBD008CFFFF005AEFFF0021DE
      FF0042C6E700AD949400EFDECE00FFFFD600FFFFE700F7F7DE00CEB5A500AD84
      84004AB5FF00000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF000873080042DE6B0042DE6B0039D65A0031CE5A0029C6
      4A0029C6420021BD390021BD310008730800008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF009C310000E7EFFF00DEE7FF00FFFFFF00FFFFFF009CAD
      FF000031FF0063315A00000000000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031D6FF0000009C004273FF003163FF001852FF000839FF000029
      FF000021F70000009C000000000000000000008CBD00B5FFFF00B5F7FF00C6F7
      FF00B5A59C00EFDED600FFFFF700FFFFD600FFFFDE00FFFFD600FFF7BD00CEA5
      8C0000000000000000000000000000000000008CBD00B5FFFF00B5F7FF00C6F7
      FF00E7FFFF00EFFFFF000873080008730800087308000873080039DE6B0039D6
      630008730800087308000873080008730800008CBD00B5FFFF00B5F7FF00C6F7
      FF00E7FFFF00EFFFFF009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005273FF000031FF00000000000000000000000000008CBD00B5FFFF00B5F7
      FF00C6F7FF00E7FFFF0000009C0000009C0000009C0000009C0000009C000000
      9C0000009C0000009C000000000000000000008CBD00BDEFF70031BDDE0010A5
      D6009C949400FFFFE700FFFFDE00FFFFD600FFFFDE00FFF7CE00FFD69C00EFD6
      AD00AD848400000000000000000000000000008CBD00BDEFF70031BDDE0010A5
      D600109CCE0021A5CE0031A5CE002194BD0094CEE7000873080042DE730042DE
      6B0008730800000000000000000000000000008CBD00BDEFF70031BDDE0010A5
      D600109CCE0021A5CE009C3100009C3100009C3100009C3100009C3100009C31
      00008C3110002131CE000031FF000000000000000000008CBD00BDEFF70031BD
      DE0010A5D600109CCE0021A5CE0031A5CE002194BD0094CEE7000884AD000000
      000000000000000000000000000000000000088CBD004AC6DE005AEFFF0021D6
      FF00A59C9C00FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7DEAD00F7BD8400F7DE
      B500AD848400000000000000000000000000008CBD004AC6DE005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E7000084B500087308004AE77B004AE7
      7B0008730800000000000000000000000000008CBD004AC6DE005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E7000084B5000884AD00000000000000
      000000000000000000000031FF000031FF0000000000008CBD004AC6DE005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E7000084B5000884AD000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021DE
      FF0094949400FFF7D600FFFFDE00FFF7D600FFE7B500F7CE9C00FFEFBD00E7CE
      AD00AD848400000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE0008730800087308000873
      080008730800000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD00000000000000
      00000000000000000000000000000031FF0000000000008CBD008CFFFF005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021DE
      FF005AADBD00D6BDA500FFF7C600FFD69C00F7CE8C00FFF7E700FFF7F700AD84
      840000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE00087BAD00000000000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD00000000000000
      00000000000000000000000000000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021DE
      FF0039D6FF008CA5AD00CEAD9400EFD6AD00F7E7B500DEC6B500AD848400AD84
      840000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD00000000000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD00000000000000
      00000000000000000000000000000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD000000
      000000000000000000000000000000000000088CBD008CFFFF0084FFFF0073FF
      FF007BFFFF0094FFFF00A5C6CE008C9C9C0084848C0084737300000000000000
      000000000000000000000000000000000000008CBD0094FFFF0084FFFF006BFF
      FF007BFFFF0094FFFF00A5FFFF0063DEF70008A5D6000884AD00000000000000
      000000000000000000000000000000000000008CBD0094FFFF0084FFFF006BFF
      FF007BFFFF0094FFFF00A5FFFF0063DEF70008A5D6000884AD00000000000000
      00000000000000000000000000000000000000000000008CBD0094FFFF0084FF
      FF006BFFFF007BFFFF0094FFFF00A5FFFF0063DEF70008A5D6000884AD000000
      000000000000000000000000000000000000008CBD00FFFFFF00F7FFFF00D6FF
      FF00B5FFFF00ADFFFF00ADFFFF00ADFFFF0073FFFF000884AD00000000000000
      000000000000000000000000000000000000008CBD00FFFFFF00F7FFFF00D6FF
      FF00B5FFFF00B5FFFF00ADFFFF00ADFFFF006BFFFF000884AD00000000000000
      000000000000000000000000000000000000008CBD00FFFFFF00F7FFFF00D6FF
      FF00B5FFFF00B5FFFF00ADFFFF00ADFFFF006BFFFF000884AD00000000000000
      00000000000000000000000000000000000000000000008CBD00FFFFFF00F7FF
      FF00D6FFFF00B5FFFF00B5FFFF00ADFFFF00ADFFFF006BFFFF000884AD000000
      000000000000000000000000000000000000000000000894C600F7FFFF00E7FF
      FF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084B50000000000000000000000
      000000000000000000000000000000000000000000000894C600F7FFFF00E7FF
      FF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084AD0000000000000000000000
      000000000000000000000000000000000000000000000894C600F7FFFF00E7FF
      FF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084AD0000000000000000000000
      00000000000000000000000000000000000000000000000000000894C600F7FF
      FF00E7FFFF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084AD00000000000000
      0000000000000000000000000000000000000000000000000000088CBD00088C
      BD00008CBD00088CBD00088CBD00088CBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008CBD00008C
      BD00008CBD00008CBD00008CBD00008CBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008CBD00008C
      BD00008CBD00008CBD00008CBD00008CBD000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000008C
      BD00008CBD00008CBD00008CBD00008CBD00008CBD0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF33FFFFFFFFFE007E007F707F707
      C003C000F007F00780018001F707F70780010000F7FFF7FF00000000F707F707
      00000000F007F00700008000F707F7070000E001F7FFF7FF0000F003F707F707
      0000F01FF007F0078001E03FF707F7078001E03FC1FFC1FFC003C03FC1FFC1FF
      E007C07FC1FFC1FFF81FF8FFFFFFFFFFFFFFF81FF81FF81FC007E007E007E007
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
    Left = 352
    Top = 328
  end
  inherited QUltimoCodigo: TSQLQuery
    Top = 432
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 424
    Top = 472
  end
  inherited ImageListDos: TImageList
    ColorDepth = cd32Bit
    Bitmap = {
      494C01010D001800040010001000FFFFFFFF2000FFFFFFFFFFFFFFFF424D3600
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
      00008E8E8EFF0000000000000000000000007A7A7AFF7A7A7AFF7A7A7AFF7A7A
      7AFF7A7A7AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF909090FF7A7A7AFFD2D2D2FFCACACAFFADAD
      ADFF7A7A7AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF000000000000000000000000797979FF7A7A7AFF7A7A7AFF7979
      79FF7A7A7AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007A7A7AFF7A7A7AFF7A7A7AFF7A7A
      7AFF7A7A7AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF7A7A7AFFD2D2D2FFCACACAFFADAD
      ADFF7A7A7AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF000000000000000000000000797979FF7A7A7AFF7A7A7AFF7979
      79FF7A7A7AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007A7A7AFF7A7A7AFF7A7A7AFF7A7A
      7AFF7A7A7AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF7A7A7AFFD2D2D2FFCACACAFFADAD
      ADFF7A7A7AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF000000000000000000000000797979FF7A7A7AFF7A7A7AFF7979
      79FF7A7A7AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A7A7AFF7A7A
      7AFF7A7A7AFF7A7A7AFF7A7A7AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A7A7AFFD2D2
      D2FFCACACAFFADADADFF7A7A7AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000797979FF7A7A
      7AFF7A7A7AFF797979FF7A7A7AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000064854FFF749A
      5CFF63854FFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B095FFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000B88053FFFFFEFEFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FF9C8B
      77FF9C8B77FF9C8B77FFA59482FFD7CFBDFF8CA873FF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF5C7948FF000000000000000000000000000000000000
      0000CC6600FF0000000000000000000000009C390AFF9C390AFF9C390AFF9C39
      0AFF9C390AFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A788FFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFD29C71FFFEFDFDFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF759C5DFF759C5DFFA0BB90FF82A5
      6CFF759C5DFF759C5DFF759C5DFF000000000000000000000000000000000000
      0000CC6600FFCC6600FFCC6600FFCD6702FF9C390AFFF89A94FFEBA15CFFDA84
      2AFF9C390AFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C99B77FFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFDAA276FFFCFAF8FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A972FF759C5DFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46AFF759C5DFF759C5DFF64854FFF0000000000000000000000000000
      0000CC6600FF0000000000000000000000009B380AFF9C390AFF9C380AFF9B38
      0AFF9C390AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C69470FFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFDDA476FFFAF6F3FF00000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF789E61FF759C5DFFBACDAEFF8EAD79FFBBCE
      AFFFE6EDE1FF80A369FF759C5DFF71975AFF0000000000000000000000000000
      0000CC6600FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C39067FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFE3AA7EFFF6EFEAFF000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A972FF759C5DFF759C5DFF759C5DFF759C
      5DFFBBCEAFFFE4ECDFFF7DA266FF64854FFF0000000000000000000000000000
      0000CC6600FF0000000000000000000000009C390AFF9C390AFF9C390AFF9C39
      0AFF9C390AFF0000000000000000000000000000000000000000000000000000
      000000000000C28D64FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE6AC80FFF3E9E0FF0000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF759C5DFF759C5DFF759C5DFF759C
      5DFF759C5DFFA2BB91FF779D5FFF000000000000000000000000000000000000
      0000CC6600FFCC6600FFCC6600FFCC6600FF9C390AFFF89A94FFEBA15CFFDA84
      2AFF9C390AFF0000000000000000000000000000000000000000000000000000
      0000C28B63FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFEAB085FFECDE
      D2FF0000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF5C7948FF000000000000000000000000000000000000
      0000CC6600FF0000000000000000000000009B380AFF9C390AFF9C380AFF9B38
      0AFF9C390AFF000000000000000000000000000000000000000000000000E7D1
      C3FFECB387FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFC48E
      64FF0000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA74FF7EA3
      68FF8AAA74FFAAB892FF00000000000000000000000000000000000000000000
      0000CC6600FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEDED4FFE9AF84FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFC28C62FF0000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF00000000000000000000000000000000000000000000
      0000CC6600FF0000000000000000000000009C390AFF9C390AFF9C390AFF9C39
      0AFF9C390AFF0000000000000000000000000000000000000000000000000000
      000000000000F1E8DFFFE6AE82FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFC28C64FF000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000CC6600FFCC6600FFCC6600FFCC6600FF9C390AFFF89A94FFEBA15CFFDA84
      2AFF9C390AFF0000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFEAFFE4AA7CFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFC4906AFF00000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF00000000000000000000000000000000000000000000
      0000CC6600FF0000000000000000000000009B380AFF9C390AFF9C380AFF9B38
      0AFF9C390AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F5F1FFE0A67BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFC4936DFF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FFFFFFFFFFF9F8
      F7FFAB9D8DFF7B7061FF000000000000000000000000000000009C390AFF9C39
      0AFF9C390AFF9C390AFF9C390AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F9FFDAA378FFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFC99B77FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FFF9F8F7FFAD9E
      8FFF837567FF00000000000000000000000000000000000000009C390AFFF89A
      94FFEBA15CFFDA842AFF9C390AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFCFFD7A074FFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFCEA384FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FFAC9D8EFF7E72
      64FF0000000000000000000000000000000000000000000000009B380AFF9C39
      0AFF9C380AFF9B380AFF9C390AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFEFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000D6B69CFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF7D7162FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000075695CFF918170FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C784BFF70955BFF759C5DFF70955BFF5C784BFF000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFA1748BFFA174
      8BFFA1748BFFA1748BFFA1748BFFA1748BFFA1748BFFA1748BFFA1748BFFA174
      8BFFA1748BFFA1748BFFA1748BFF00000000918170FFAD9D8AFF948572FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006586
      53FF7DA26AFFA4C899FFB4D8AEFFBDDFBAFFB4D8AEFFA4C89AFF7CA269FF6485
      51FF000000000000000000000000000000000000000000000000000000009C8B
      77FFFFFFFFFF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF0000000000000000958572FFA79884FF907E
      6CFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006F945BFF9EC1
      93FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FF6F945AFF0000000000000000000000007B6958FF8C7666FF8C7765FF9C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF8C7765FF8C7666FF7C6958FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000958472FFA292
      7EFF8D7C6AFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000668954FF9CC190FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9BBF90FF668753FF00000000000000008F7865FFD4C1B0FFD4C1B0FF9C8B
      77FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FF9C8B77FFD4C1B0FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000009082
      6EFF9F8F7CFF877667FF0000000000000000897968FF9A8976FF9A8976FF8879
      68FF00000000000000000000000000000000000000007CA169FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBCE0B9FF7CA168FF00000000000000008F7865FFD4C1B0FFBBA795FF8F78
      65FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F78
      65FF8F7965FFBBA896FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      00008C7C6AFF9C8B77FF9E8C79FFB09F8AFFE7D5BCFFFCEACEFFFCEACEFFE7D5
      BBFFAD9D89FF897A69FF00000000000000005B7849FFA5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF59764AFF000000008F7865FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      0000000000009E8D79FFCDBAA4FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFC9B7A2FF897A69FF0000000071955AFFB6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF719559FF000000008F7865FFD4C1B0FFD4C1B0FFCBAB
      93FFBA8156FFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFBA81
      56FFCBAC94FFD4C1B0FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      000000000000AF9F89FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88FF00000000739B5CFFBCDFB8FFBDE0BAFF99BE
      8CFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF99BE
      8CFFBDE0BAFFBBDEB8FF749A5BFF000000008F7865FFD4C1B0FFD4C1B0FFBA81
      56FFE3A97BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE2A9
      7BFFB98257FFD4C1B0FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      00008A7B6AFFE7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF887868FF71955AFFB6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF719559FF000000008F7865FFD4C1B0FFD4C1B0FFB579
      4DFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB5794DFFB3E0E6FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      00009A8976FFFBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998975FF5D784BFFA5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5A784BFF000000008E7764FFD3C0AFFFD4C1B0FFB579
      4DFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB5794DFFD4C1B0FFD3C0AFFF8E7764FF00000000A1748BFFF2D5DCFFF2D5
      DCFFE9C0CBFFA48B7DFF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FFA791
      83FFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      00009A8976FFFBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998975FF000000007DA16AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF7BA169FF00000000000000006B5C4DFF8F7764FF8F7865FFB579
      4DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB579
      4DFFB5794DFF8F7865FF8F7764FF6A5B4DFF00000000A1748BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7865FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B77FFF2EBE1FF8F78
      65FFF2D5DCFFEACCD4FFA1748BFF000000000000000000000000000000000000
      0000897B6BFFE7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF877868FF00000000668954FF9EC393FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9EC192FF668753FF00000000000000000000000000000000000000009C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7865FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B77FFF2EBE1FF8F78
      65FFEBCDD5FFA57D8FFF563F4AFF000000000000000000000000000000000000
      000000000000AF9E8AFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88FF0000000000000000000000006F945BFF9EC1
      93FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FF6F945AFF0000000000000000000000000000000000000000000000009C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7865FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FF8F78
      65FFA47B8FFF0000000000000000000000000000000000000000000000000000
      0000000000008C7B69FFCEBCA6FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFCDBBA6FF897A69FF000000000000000000000000000000006586
      53FF7DA26AFFA5CA9CFFB7DAB2FFB8DBB4FFB7DAB2FFA6C99CFF7CA269FF6485
      51FF000000000000000000000000000000000000000000000000000000009C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFA1748BFFA174
      8BFFA1748BFF977D72FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF987C
      73FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000897A69FFB1A08BFFE7D5BCFFF8E6CBFFF8E6CBFFE7D5
      BBFFB19F8AFF897A69FF00000000000000000000000000000000000000000000
      0000000000005C784BFF70945BFF72995CFF70945BFF5C784BFF000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000897B6AFF988975FF988975FF8A79
      68FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFC496
      73FFC49673FFC49673FFC49673FFC49673FFC49673FFC49673FFC49673FFC496
      73FFC49673FFC49673FF00000000000000000000000000000000000000000000
      000000000000353598FF4040BDFF4242C7FF4040BDFF353598FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000454A4AFF404C4EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49673FF00000000000000000000000000000000000000003A3A
      AAFF4E4EC7FF7474E6FF8686F1FF8F8FF7FF8686F1FF7373E6FF4E4EC7FF3B3B
      A8FF000000000000000000000000000000000000000000000000000000002929
      6EFF323282FF0000000000000000000000000000000000000000000000003131
      84FF29296EFF0000000000000000000000000000000040494DFF545452FF65A0
      BDFF4A8AA6FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE3C29DFF000000000000000000000000000000004040BDFF6D6D
      E1FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6D6D
      E0FF4040BCFF0000000000000000000000000000000000000000282866FF6B6B
      D5FF7474DEFF2D2D77FF000000000000000000000000000000002D2D77FF7373
      DFFF6C6CD5FF282866FF0000000000000000000000000000000067A2C3FF6DBC
      DFFF7BCAE2FF62AFC8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF0000000000000000000000003B3BACFF6C6CE0FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6A6AE0FF3B3BABFF000000000000000000000000000000002F2F7DFF7878
      E1FF8F8FF7FF7979E2FF31317EFF0000000000000000323280FF7979E2FF8F8F
      F7FF7575E0FF2F2F7AFF000000000000000000000000000000004D8BA7FF80CD
      E5FFA3EEFFFFA1ECFEFF559BB1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDAB188FFFFE8C2FF0000000000000000000000004D4DC7FF8F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8E8EF7FF4C4CC7FF00000000000000000000000000000000000000003131
      7EFF7878E3FF8F8FF7FF7575DFFF2D2D77FF2D2D77FF7575DFFF8F8FF7FF7878
      E3FF31317EFF00000000000000000000000000000000000000000000000065B1
      CCFFA2EEFFFFA3EEFFFFA1EBFDFF5498AFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB5794DFFDAB188FF0000000000000000343498FF7575E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7373E6FF343497FF000000000000000000000000000000000000
      000030307AFF7676E1FF8F8FF7FF7777E2FF7A7AE3FF8F8FF7FF7676E0FF2F2F
      79FF000000000000000000000000000000000000000000000000000000000000
      00005BA2B7FFA2EEFFFFA3EEFFFFA1EBFDFF5498AFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB5794DFFB5794DFF604029FF000000004141BDFF8888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFB1B1F9FFF6F6FEFFBCBCFAFFF7F7FEFFB1B1F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4040BDFF000000000000000000000000000000000000
      00000000000030307AFF7676E0FF8F8FF7FF8F8FF7FF7676E0FF2F2F79FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005DA3B8FFA2EEFFFFA3EEFFFFA1EBFDFF5498AFFF000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB579
      4DFFB5794DFFB5794DFFB5794DFF604029FF4242C4FF8E8EF6FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FFC3C3FAFFFEFEFFFFC2C2FBFF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8D8DF5FF4141C4FF000000000000000000000000000000000000
      000000000000313184FF7878E1FF8F8FF7FF8F8FF7FF7878E1FF323282FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005DA3B8FFA2EEFFFFA3EEFFFFA1EBFDFF5498AFFF0000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB579
      4DFFB5794DFFB5794DFFB5794DFF000000004141BDFF8888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFA8A8F9FFF6F6FEFFC9C9FBFFF6F6FEFFA8A8F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4040BDFF000000000000000000000000000000000000
      0000323284FF7979E4FF8F8FF7FF7777E2FF7A7AE3FF8F8FF7FF7878E3FF3232
      82FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005DA3B8FFA2EEFFFFA3EEFFFFA1EBFDFF839A
      9AFF000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB5794DFFB5794DFF593C26FF00000000353599FF7575E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7373E6FF353598FF000000000000000000000000000000002F2F
      7EFF7676E0FF8F8FF7FF7979E5FF333381FF343483FF7B7BE7FF8F8FF7FF7676
      E0FF30307CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005CA3BAFFA2EEFFFFA9C2C1FFD2C8
      BAFFA9A69BFF0000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB5794DFFDAB188FF0000000000000000000000004D4DC7FF8F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8F8FF7FF4D4DC6FF0000000000000000000000000000000031317EFF7777
      E1FF8F8FF7FF7979E2FF2F2F7AFF000000000000000032327DFF7979E2FF8F8F
      F7FF7676E2FF31317DFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000869B9EFFDACEC1FFF5E7
      D9FFF4E6D7FFA69D97FF00000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDCB58BFFFFE8C2FF0000000000000000000000003B3BACFF6F6FE2FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6C6CE0FF3B3BABFF000000000000000000000000000000002E2E75FF7575
      DFFF7C7CE7FF333382FF00000000000000000000000000000000343482FF7C7C
      E7FF7575DFFF2E2E75FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3AFA4FFF5E7
      D8FFDACEC2FFA097BAFF4444A7FF000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF000000000000000000000000000000004040BDFF6D6D
      E1FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6D6D
      E0FF4040BCFF0000000000000000000000000000000000000000000000000000
      00002F2F79FF0000000000000000000000000000000000000000000000002F2F
      79FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A69F
      9AFF9F96BFFF8F8FF7FF4E4EB6FF000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE2BF9BFF00000000000000000000000000000000000000003A3A
      AAFF4E4EC7FF7575E8FF8989F4FF8989F4FF8989F4FF7575E8FF4E4EC7FF3B3B
      A8FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004545AAFF5151B7FF00000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49673FF00000000000000000000000000000000000000000000
      000000000000353598FF4040BBFF4141C1FF4040BBFF353598FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFC496
      73FFC49673FFC49673FFC49673FFC49673FFC49673FFC49673FFC49673FFC496
      73FFC49673FFC49673FF0000000000000000}
  end
  object frReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41476.694777256950000000
    ReportOptions.LastChange = 41476.694777256950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 480
    Top = 456
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frPercepIIBB: TfrxDBDataset
    UserName = 'frPercepIIBB'
    CloseDataSource = False
    DataSet = DatosCompraCtdo.CDSPercepcionIVA
    BCDToCurrency = False
    DataSetOptions = []
    Left = 360
    Top = 544
    FieldDefs = <
      item
        FieldName = 'ID_PERCEPCION'
        FieldAlias = 'ID_PERCEPCION'
      end
      item
        FieldName = 'CODIGOREGIMEN'
        FieldAlias = 'CODIGOREGIMEN'
      end
      item
        FieldName = 'CODIGO_PERCEPCION'
        FieldAlias = 'CODIGO_PERCEPCION'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'ID_FCCOMPCAB'
        FieldAlias = 'ID_FCCOMPCAB'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'TASA'
        FieldAlias = 'TASA'
      end>
  end
  object frIva: TfrxDBDataset
    UserName = 'frIva'
    CloseDataSource = False
    DataSet = DatosCompraCtdo.CDSImpuestos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 464
    Top = 504
    FieldDefs = <
      item
        FieldName = 'ID_IMPUESTO'
        FieldAlias = 'ID_IMPUESTO'
      end
      item
        FieldName = 'CODIGO_GRAVAMEN'
        FieldAlias = 'CODIGO_GRAVAMEN'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'ID_FCCOMPCAB'
        FieldAlias = 'ID_FCCOMPCAB'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'TASA'
        FieldAlias = 'TASA'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object frSuDetalle: TfrxDBDataset
    UserName = 'frSuDetalle'
    CloseDataSource = False
    DataSet = DatosCompraCtdo.CDSCompraSubDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 360
    Top = 496
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_DETFAC'
        FieldAlias = 'ID_DETFAC'
      end
      item
        FieldName = 'ID_CABFAC'
        FieldAlias = 'ID_CABFAC'
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
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'SERIE'
        FieldAlias = 'SERIE'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end>
  end
  object frDetalle: TfrxDBDataset
    UserName = 'frDetalle'
    CloseDataSource = False
    DataSet = DatosCompraCtdo.CDSCompraDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 280
    Top = 504
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CABFAC'
        FieldAlias = 'ID_CABFAC'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'CODIGOPROVEEDOR'
        FieldAlias = 'CODIGOPROVEEDOR'
      end
      item
        FieldName = 'CodigoArticulo'
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
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'MODO_GRAVAMEN'
      end
      item
        FieldName = 'TIPOIVA_TASA'
        FieldAlias = 'TIPOIVA_TASA'
      end
      item
        FieldName = 'TIPOIVA_SOBRETASA'
        FieldAlias = 'TIPOIVA_SOBRETASA'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'CON_NRO_SERIE'
        FieldAlias = 'CON_NRO_SERIE'
      end
      item
        FieldName = 'GRAVADO_IB'
        FieldAlias = 'GRAVADO_IB'
      end
      item
        FieldName = 'ID_MONEDA'
        FieldAlias = 'ID_MONEDA'
      end
      item
        FieldName = 'MUESTRAMONEDA'
        FieldAlias = 'MUESTRAMONEDA'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'ID_RECEPCION_CAB'
        FieldAlias = 'ID_RECEPCION_CAB'
      end
      item
        FieldName = 'ID_RECEPCION_DET'
        FieldAlias = 'ID_RECEPCION_DET'
      end
      item
        FieldName = 'NRORECEPCION'
        FieldAlias = 'NRORECEPCION'
      end
      item
        FieldName = 'RENGLON'
        FieldAlias = 'RENGLON'
      end
      item
        FieldName = 'FECHACOMPRA'
        FieldAlias = 'FECHACOMPRA'
      end
      item
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_TASA'
      end
      item
        FieldName = 'IVA_SOBRETASA'
        FieldAlias = 'IVA_SOBRETASA'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'MARGEN'
        FieldAlias = 'MARGEN'
      end
      item
        FieldName = 'COSTO_IMP_INTERNO'
        FieldAlias = 'COSTO_IMP_INTERNO'
      end
      item
        FieldName = 'UNITARIO_IMP_INTERNO'
        FieldAlias = 'UNITARIO_IMP_INTERNO'
      end
      item
        FieldName = 'UNIDADES_IMP_INTERNOS'
        FieldAlias = 'UNIDADES_IMP_INTERNOS'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'UNIDADES_TOTAL'
        FieldAlias = 'UNIDADES_TOTAL'
      end
      item
        FieldName = 'UNIDADES_EXENTO'
        FieldAlias = 'UNIDADES_EXENTO'
      end
      item
        FieldName = 'UNIDADES_GRAVADO'
        FieldAlias = 'UNIDADES_GRAVADO'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'UNITARIO_TOTAL'
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
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'COSTO_TOTAL'
      end
      item
        FieldName = 'COSTO_EXENTO'
        FieldAlias = 'COSTO_EXENTO'
      end
      item
        FieldName = 'COSTO_GRAVADO'
        FieldAlias = 'COSTO_GRAVADO'
      end>
  end
  object frCabecera: TfrxDBDataset
    UserName = 'frCabecera'
    CloseDataSource = False
    DataSet = DatosCompraCtdo.CDSCompraCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 472
    Top = 552
    FieldDefs = <
      item
        FieldName = 'ID_FC'
        FieldAlias = 'ID_FC'
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
        FieldName = 'LETRAFAC'
        FieldAlias = 'LETRAFAC'
      end
      item
        FieldName = 'SUCFAC'
        FieldAlias = 'SUCFAC'
      end
      item
        FieldName = 'NUMEROFAC'
        FieldAlias = 'NUMEROFAC'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
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
        FieldName = 'TIPOIVA'
        FieldAlias = 'TIPOIVA'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'FECHACOMPRA'
        FieldAlias = 'FECHACOMPRA'
      end
      item
        FieldName = 'FECHAVTO'
        FieldAlias = 'FECHAVTO'
      end
      item
        FieldName = 'CONDICIONCOMPRA'
        FieldAlias = 'CONDICIONCOMPRA'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'ORDENCOMPRA'
        FieldAlias = 'ORDENCOMPRA'
      end
      item
        FieldName = 'N_OPERACION2'
        FieldAlias = 'N_OPERACION2'
      end
      item
        FieldName = 'NETOGRAV1'
        FieldAlias = 'NETOGRAV1'
      end
      item
        FieldName = 'DSTO'
        FieldAlias = 'DSTO'
      end
      item
        FieldName = 'DSTOIMPORTE'
        FieldAlias = 'DSTOIMPORTE'
      end
      item
        FieldName = 'NETOGRAV2'
        FieldAlias = 'NETOGRAV2'
      end
      item
        FieldName = 'NETOEXEN1'
        FieldAlias = 'NETOEXEN1'
      end
      item
        FieldName = 'NETOEXEN2'
        FieldAlias = 'NETOEXEN2'
      end
      item
        FieldName = 'IMPORTEEXCLUIDO2'
        FieldAlias = 'IMPORTEEXCLUIDO2'
      end
      item
        FieldName = 'IMPORTEEXCLUIDO1'
        FieldAlias = 'IMPORTEEXCLUIDO1'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'APLICA'
        FieldAlias = 'APLICA'
      end
      item
        FieldName = 'OBSERVACION1'
        FieldAlias = 'OBSERVACION1'
      end
      item
        FieldName = 'OBSERVACION2'
        FieldAlias = 'OBSERVACION2'
      end
      item
        FieldName = 'SUCURSALCOMPRA'
        FieldAlias = 'SUCURSALCOMPRA'
      end
      item
        FieldName = 'ZONA'
        FieldAlias = 'ZONA'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'FECHAFISCAL'
        FieldAlias = 'FECHAFISCAL'
      end
      item
        FieldName = 'NETOMONOTRIBUTO1'
        FieldAlias = 'NETOMONOTRIBUTO1'
      end
      item
        FieldName = 'NETOMONOTRIBUTO2'
        FieldAlias = 'NETOMONOTRIBUTO2'
      end
      item
        FieldName = 'CPBTE_INTERNO'
        FieldAlias = 'CPBTE_INTERNO'
      end
      item
        FieldName = 'INGRESA_A_CTACTE'
        FieldAlias = 'INGRESA_A_CTACTE'
      end
      item
        FieldName = 'INGRESA_LIBRO_IVA'
        FieldAlias = 'INGRESA_LIBRO_IVA'
      end
      item
        FieldName = 'REDUCIDA'
        FieldAlias = 'REDUCIDA'
      end
      item
        FieldName = 'TIPO_PROVEEDOR'
        FieldAlias = 'TIPO_PROVEEDOR'
      end
      item
        FieldName = 'JURIDICCION'
        FieldAlias = 'JURIDICCION'
      end
      item
        FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
        FieldAlias = 'PERCEPCION_IB_BASEIMPONIBLE'
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
        FieldName = 'TOTAL_UNIDADES'
        FieldAlias = 'TOTAL_UNIDADES'
      end
      item
        FieldName = 'MONEDA_CPBTE'
        FieldAlias = 'MONEDA_CPBTE'
      end
      item
        FieldName = 'MONEDA_CPBTE_COTIZACION'
        FieldAlias = 'MONEDA_CPBTE_COTIZACION'
      end
      item
        FieldName = 'MUESTRACONDCOMPRA'
        FieldAlias = 'MUESTRACONDCOMPRA'
      end
      item
        FieldName = 'MUESTRADEPOSITO'
        FieldAlias = 'MUESTRADEPOSITO'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'MUESTRAMONEDACPBTE'
        FieldAlias = 'MUESTRAMONEDACPBTE'
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRASIGNOMONEDACPBTE'
        FieldAlias = 'MUESTRASIGNOMONEDACPBTE'
      end
      item
        FieldName = 'NUMERO_OPERACION'
        FieldAlias = 'NUMERO_OPERACION'
      end>
  end
  object frPercepIVA: TfrxDBDataset
    UserName = 'frPercepIVA'
    CloseDataSource = False
    DataSet = DatosCompraCtdo.CDSPercepcionIVA
    BCDToCurrency = False
    DataSetOptions = []
    Left = 560
    Top = 504
    FieldDefs = <
      item
        FieldName = 'ID_PERCEPCION'
        FieldAlias = 'ID_PERCEPCION'
      end
      item
        FieldName = 'CODIGOREGIMEN'
        FieldAlias = 'CODIGOREGIMEN'
      end
      item
        FieldName = 'CODIGO_PERCEPCION'
        FieldAlias = 'CODIGO_PERCEPCION'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'ID_FCCOMPCAB'
        FieldAlias = 'ID_FCCOMPCAB'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'TASA'
        FieldAlias = 'TASA'
      end>
  end
  object poMenuOtros: TPopupMenu
    Left = 560
    Top = 88
    object CambiarNumero1: TMenuItem
      Action = CambiarNumero
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object GravarNumeroOperacion1: TMenuItem
      Action = GravarNumeroOperacion
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CambiarFechaFiscal1: TMenuItem
      Action = CambiarFechaFiscal
    end
    object CambiarCodigodeProveedor1: TMenuItem
      Action = CambiarCodigo
    end
    object AgregaralLibrodeIva1: TMenuItem
      Action = LibroIva
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CambiarClasedeCpbte1: TMenuItem
      Action = CambiarClaseCpbte
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object ConvertirCC1: TMenuItem
      Action = ConvertirCC
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object RevisionValoresEgresados: TMenuItem
      Caption = 'Revision de Valores'
      OnClick = RevisionValoresEgresadosClick
    end
    object PasarDetallesAStock1: TMenuItem
      Action = PasaDetallesAStock
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 420
    Top = 190
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object VerUnidadesdeStock1: TMenuItem
      Caption = 'Ver Unidades de Stock'
      OnClick = VerUnidadesdeStock1Click
    end
    object VerInventariar: TMenuItem
      Caption = 'Ver Inventariar'
      OnClick = VerInventariarClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object PermitirModifTotal: TMenuItem
      Caption = 'Permitir Modificar Total de Linea'
      OnClick = PermitirModifTotalClick
    end
  end
  object DSCtroCosto: TDataSource
    DataSet = DMMain_FD.CDSAplicPorCtroCosto
    Left = 560
    Top = 48
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosCompraCtdo.CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 148
    Top = 141
  end
  object ComBuscadorDepositos: TComBuscador
    Data = DatosCompraCtdo.CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 260
    Top = 205
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
    Left = 212
    Top = 197
  end
end

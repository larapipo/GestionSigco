inherited FormRemitos: TFormRemitos
  Left = 480
  Top = 77
  Caption = 'Remitos'
  ClientHeight = 627
  ClientWidth = 934
  DragMode = dmAutomatic
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  ExplicitWidth = 952
  ExplicitHeight = 668
  TextHeight = 13
  object JvLabel2: TJvLabel [0]
    Left = 302
    Top = 10
    Width = 104
    Height = 13
    Caption = 'Tipo de Comprobante'
    ShadowSize = 1
    ShadowPos = spLeftTop
    Transparent = True
  end
  inherited pnPrincipal: TPanel
    Width = 934
    Height = 575
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 934
    ExplicitHeight = 575
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 934
      Height = 169
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object DBText66: TDBText
        Left = 407
        Top = 102
        Width = 97
        Height = 17
        DataField = 'FechaVto'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object dbtMuestraComprob: TDBText
        Left = 362
        Top = 26
        Width = 133
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
      object DBText73: TDBText
        Left = 646
        Top = 18
        Width = 96
        Height = 24
        AutoSize = True
        DataField = 'LETRARTO'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 616
        Top = 21
        Width = 26
        Height = 17
        DataField = 'CLASECPBTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 333
        Top = 62
        Width = 23
        Height = 22
        Action = DatosCliente
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
      end
      object dbId: TDBText
        Left = 424
        Top = 8
        Width = 77
        Height = 15
        DataField = 'ID_RTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 77
        Top = 48
        Width = 133
        Height = 16
        DataField = 'MUESTRAIVA'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText12: TDBText
        Left = 206
        Top = 48
        Width = 113
        Height = 16
        DataField = 'CUIT'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel58: TJvLabel
        Left = 9
        Top = 7
        Width = 35
        Height = 13
        Caption = 'Fecha '
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel59: TJvLabel
        Left = 102
        Top = 7
        Width = 89
        Height = 13
        Caption = 'Sucursal de Venta'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel60: TJvLabel
        Left = 666
        Top = 6
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel61: TJvLabel
        Left = 407
        Top = 87
        Width = 69
        Height = 13
        Caption = 'F.Vencimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel62: TJvLabel
        Left = 192
        Top = 124
        Width = 95
        Height = 13
        Caption = 'Condicion de Venta'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel63: TJvLabel
        Left = 362
        Top = 124
        Width = 73
        Height = 13
        Caption = 'Nro de Factura'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel2: TJvLabel
        Left = 7
        Top = 48
        Width = 34
        Height = 13
        Caption = 'Cliente'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel3: TJvLabel
        Left = 7
        Top = 85
        Width = 127
        Height = 13
        Caption = 'Lugar de Recepci'#243'n(LDR)'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel4: TJvLabel
        Left = 7
        Top = 124
        Width = 44
        Height = 13
        Caption = 'Dep'#243'sito'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel1: TJvLabel
        Left = 507
        Top = 2
        Width = 59
        Height = 13
        Caption = 'Nro.Entrega'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        Visible = False
      end
      object RxLabel7: TJvLabel
        Left = 189
        Top = 84
        Width = 48
        Height = 13
        Caption = 'Vendedor'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel8: TJvLabel
        Left = 577
        Top = 124
        Width = 53
        Height = 13
        Caption = 'Transporte'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 314
        Top = 7
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel6: TJvLabel
        Left = 471
        Top = 124
        Width = 55
        Height = 13
        Caption = 'Nro Pedido'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel9: TJvLabel
        Left = 667
        Top = 70
        Width = 47
        Height = 13
        Caption = 'Modif.Stk'
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText16: TDBText
        Left = 721
        Top = 70
        Width = 15
        Height = 13
        Alignment = taRightJustify
        DataField = 'AFECTA_STOCK'
        DataSource = DatosRemitos.DSRtoDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btNuevoCliente: TSpeedButton
        Left = 363
        Top = 62
        Width = 23
        Height = 22
        Action = AgregarCliente
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
      object DBText17: TDBText
        Left = 805
        Top = 125
        Width = 98
        Height = 17
        Cursor = crHandPoint
        Alignment = taCenter
        DataField = 'MUESTRA_UNI_TRANSPORTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = VerNotaPedidoExecute
      end
      object DBText18: TDBText
        Left = 805
        Top = 146
        Width = 98
        Height = 17
        Cursor = crHandPoint
        Alignment = taCenter
        DataField = 'MUESTRADOMINIOUNIDTR'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = VerNotaPedidoExecute
      end
      object lbRtoModificaStock: TLabel
        Left = 778
        Top = 7
        Width = 129
        Height = 13
        Caption = 'Remito Modifica Stock'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object DBText19: TDBText
        Left = 666
        Top = 123
        Width = 98
        Height = 17
        Cursor = crHandPoint
        Alignment = taCenter
        DataField = 'MUESTRACUITRANSPORTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = VerNotaPedidoExecute
      end
      object DBCheckManual: TDBCheckBox
        Left = 665
        Top = 47
        Width = 67
        Height = 17
        TabStop = False
        BiDiMode = bdLeftToRight
        Caption = 'Manual'
        DataField = 'CPTE_MANUAL'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckManualClick
      end
      object dbeSuc: TDBEdit
        Left = 665
        Top = 21
        Width = 45
        Height = 24
        DataField = 'SUCRTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object dbeNumero: TDBEdit
        Left = 714
        Top = 21
        Width = 84
        Height = 24
        DataField = 'NUMERORTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object dbeConVta: TDBEdit
        Left = 235
        Top = 139
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraCondVenta'
        DataSource = DSBase
        Enabled = False
        TabOrder = 13
      end
      object dbeNombre: TDBEdit
        Left = 74
        Top = 63
        Width = 256
        Height = 21
        Color = clInfoBk
        DataField = 'Nombre'
        DataSource = DSBase
        Enabled = False
        TabOrder = 14
      end
      object dbeLdr: TDBEdit
        Left = 48
        Top = 101
        Width = 135
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraLdr'
        DataSource = DSBase
        Enabled = False
        TabOrder = 15
      end
      object dbeSucursal: TDBEdit
        Left = 146
        Top = 24
        Width = 162
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraSucursal'
        DataSource = DSBase
        Enabled = False
        TabOrder = 11
      end
      object dbeDeposito: TDBEdit
        Left = 50
        Top = 139
        Width = 135
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraDeposito'
        DataSource = DSBase
        Enabled = False
        TabOrder = 16
      end
      object dbeEntrega: TDBEdit
        Left = 569
        Top = 2
        Width = 41
        Height = 21
        Hint = 'Enumera le Nro de Entrega'
        DataField = 'NroEntrega'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Visible = False
      end
      object dbeMuestraVendedor: TDBEdit
        Left = 265
        Top = 101
        Width = 130
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRAVENDEDOR'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object RxCCodigo: TJvDBComboEdit
        Left = 7
        Top = 63
        Width = 60
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Codigo'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 14
        TabOrder = 1
        OnButtonClick = BuscarClienteExecute
        OnExit = RxCCodigoExit
        OnKeyDown = RxCCodigoKeyDown
      end
      object RxCLdr: TJvDBComboEdit
        Left = 7
        Top = 101
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'LDR'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 14
        TabOrder = 4
        OnButtonClick = BuscarLdrExecute
        OnKeyDown = RxCLdrKeyDown
      end
      object RxCSucursal: TJvDBComboEdit
        Left = 104
        Top = 24
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'Sucursal'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 14
        TabOrder = 2
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxCSucursalKeyDown
      end
      object RxCDeposito: TJvDBComboEdit
        Left = 7
        Top = 139
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
        ButtonWidth = 14
        TabOrder = 5
        OnButtonClick = BuscarDepositoExecute
        OnKeyDown = RxCDepositoKeyDown
      end
      object RxCConVta: TJvDBComboEdit
        Left = 191
        Top = 139
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'CondicionVta'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 14
        TabOrder = 6
        OnButtonClick = BuscarCondVentaExecute
        OnKeyDown = RxCConVtaKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 314
        Top = 24
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
        ButtonWidth = 14
        TabOrder = 3
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object rxcVendedor: TJvDBComboEdit
        Left = 192
        Top = 101
        Width = 65
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'VENDEDOR'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 14
        ParentFont = False
        TabOrder = 7
        OnButtonClick = BuscarVendedorExecute
        OnKeyDown = rxcVendedorKeyDown
      end
      object dbeFechaVta: TJvDBDateEdit
        Left = 7
        Top = 24
        Width = 92
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHAVTA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
        ButtonWidth = 20
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
      end
    end
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 169
      Width = 934
      Height = 406
      ActivePage = PagDetalles
      Align = alClient
      MultiLine = True
      TabOrder = 1
      TabPosition = tpBottom
      TabStop = False
      OnChange = pcDetalleFacturaChange
      OnEnter = pcDetalleFacturaEnter
      object PagDetalles: TTabSheet
        Caption = 'Detalles'
        DesignSize = (
          926
          380)
        object Bevel8: TBevel
          Left = 590
          Top = 274
          Width = 113
          Height = 22
          Anchors = [akLeft, akBottom]
          ExplicitTop = 326
        end
        object Label17: TLabel
          Left = -1
          Top = 272
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
          ExplicitTop = 324
        end
        object Bevel21: TBevel
          Left = 573
          Top = 352
          Width = 132
          Height = 24
          Anchors = [akLeft, akBottom]
          ExplicitTop = 404
        end
        object DBText60: TDBText
          Left = 573
          Top = 356
          Width = 128
          Height = 16
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'Total'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 408
        end
        object dbtTotal: TDBText
          Left = 599
          Top = 276
          Width = 101
          Height = 20
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'NETOGRAV1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnMouseMove = dbtTotalMouseMove
          ExplicitTop = 328
        end
        object Label1: TLabel
          Left = 511
          Top = 274
          Width = 73
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'SubTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 326
        end
        object Label3: TLabel
          Left = 534
          Top = 300
          Width = 50
          Height = 16
          Anchors = [akLeft, akBottom]
          Caption = 'Dsto %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 352
        end
        object Bevel2: TBevel
          Left = 590
          Top = 316
          Width = 115
          Height = 24
          Anchors = [akLeft, akBottom]
          ExplicitTop = 368
        end
        object DBText10: TDBText
          Left = 590
          Top = 320
          Width = 110
          Height = 16
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'DstoImporte'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 372
        end
        object spMenu: TSpeedButton
          Left = 348
          Top = 263
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
          PopupMenu = PopupMenu1
          ExplicitTop = 315
        end
        object RxLabel5: TJvLabel
          Left = 528
          Top = 352
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
          ExplicitTop = 404
        end
        object Label9: TLabel
          Left = 772
          Top = 292
          Width = 44
          Height = 16
          Anchors = [akLeft, akBottom]
          Caption = 'Bultos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 344
        end
        object JvLabel11: TJvLabel
          Left = 197
          Top = 93
          Width = 48
          Height = 13
          Caption = 'Vendedor'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object lbDragDrop: TLabel
          Left = 814
          Top = 274
          Width = 6
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = '..'
          ExplicitTop = 320
        end
        object Label10: TLabel
          Left = 16
          Top = 354
          Width = 42
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'C.O.T.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 406
        end
        object DBText20: TDBText
          Left = 56
          Top = 354
          Width = 150
          Height = 14
          Anchors = [akLeft, akBottom]
          DataField = 'COT'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 406
        end
        object dbeObservaciones2: TDBEdit
          Left = 3
          Top = 322
          Width = 313
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'Observacion2'
          DataSource = DSBase
          TabOrder = 2
        end
        object dbeObservaciones1: TDBEdit
          Left = 3
          Top = 298
          Width = 313
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'Observacion1'
          DataSource = DSBase
          TabOrder = 1
        end
        object DBGrillaDetalle: TDBGrid
          Left = 0
          Top = 0
          Width = 926
          Height = 248
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DatosRemitos.DSRtoDet
          DrawingStyle = gdsClassic
          FixedColor = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = DBGrillaDetalleColEnter
          OnColExit = DBGrillaDetalleColExit
          OnDrawColumnCell = DBGrillaDetalleDrawColumnCell
          OnDblClick = DBGrillaDetalleDblClick
          OnDragDrop = DBGrillaDetalleDragDrop
          OnDragOver = DBGrillaDetalleDragOver
          OnEditButtonClick = DBGrillaDetalleEditButtonClick
          OnEndDrag = DBGrillaDetalleEndDrag
          OnEnter = DBGrillaDetalleEnter
          OnExit = DBGrillaDetalleExit
          OnKeyDown = DBGrillaDetalleKeyDown
          OnKeyPress = DBGrillaDetalleKeyPress
          OnMouseMove = DBGrillaDetalleMouseMove
          Columns = <
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'RENGLON'
              Title.Alignment = taCenter
              Title.Caption = '#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 25
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 263
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'UNIDAD'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Uni.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 43
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'IVA_TASA'
              Title.Caption = 'Iva'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 27
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Cant.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRASIGNO'
              Title.Alignment = taCenter
              Title.Caption = '#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = '$ Unitario'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dsto.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 46
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
              Title.Font.Color = clYellow
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
              Title.Caption = 'Uni.Stk'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'ID_FACTURA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'F'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 21
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 403
          Top = 272
          Width = 77
          Height = 26
          Anchors = [akLeft, akBottom]
          Enabled = False
          TabOrder = 3
          object DBCheckBox1: TDBCheckBox
            Left = 11
            Top = 3
            Width = 59
            Height = 17
            Caption = 'Impreso'
            DataField = 'Impreso'
            DataSource = DSBase
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object dbeDscto_1: TDBEdit
          Left = 537
          Top = 316
          Width = 47
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 4
        end
        object pnPrecios: TPanel
          Left = 611
          Top = 24
          Width = 228
          Height = 179
          Caption = 'pnPrecios'
          Color = clBlue
          Padding.Left = 3
          Padding.Top = 3
          Padding.Right = 3
          Padding.Bottom = 3
          ParentBackground = False
          TabOrder = 6
          Visible = False
          object dbgPrecios: TJvDBGrid
            Left = 5
            Top = 6
            Width = 218
            Height = 168
            DataSource = DMMain_2.DSPrecioXCant
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                FieldName = 'CANTIDAD'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECIO'
                Title.Alignment = taCenter
                Title.Caption = 'Cant.'
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
                FieldName = 'PRECIO_SINIVA'
                Title.Alignment = taCenter
                Title.Caption = 'Cant.'
                Width = 75
                Visible = True
              end>
          end
        end
        object dbeBultos: TDBEdit
          Left = 749
          Top = 314
          Width = 67
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'CANT_BULTOS'
          DataSource = DSBase
          TabOrder = 7
        end
        object pnLimiteCto: TPanel
          Left = 344
          Top = 304
          Width = 169
          Height = 72
          Anchors = [akLeft, akBottom]
          Color = clRed
          ParentBackground = False
          TabOrder = 8
          Visible = False
          object lbLimite: TLabel
            Left = 7
            Top = 0
            Width = 68
            Height = 13
            Caption = 'Limite Ctdo.'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label5: TLabel
            Left = 8
            Top = 16
            Width = 90
            Height = 13
            Caption = 'Limite Asignado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 8
            Top = 54
            Width = 59
            Height = 13
            Caption = 'Saldo actual'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Lte: TLabel
            Left = 144
            Top = 15
            Width = 19
            Height = 13
            Alignment = taRightJustify
            Caption = 'Lte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Saldo: TLabel
            Left = 135
            Top = 54
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 8
            Top = 35
            Width = 70
            Height = 13
            Caption = 'Saldo en Rtos.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object SaldoRto: TLabel
            Left = 135
            Top = 35
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object dbgExitencias: TDBGrid
          Left = 519
          Top = 263
          Width = 406
          Height = 80
          Anchors = [akLeft, akBottom]
          Color = clWhite
          DataSource = DatosRemitos.DSExistencia
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Visible = False
          Columns = <
            item
              Color = clWindow
              Expanded = False
              FieldName = 'DEPOSITO_NOMBRE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Dep'#243'sito'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Color = clWindow
              Expanded = False
              FieldName = 'FISICO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Real'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 69
              Visible = True
            end
            item
              Color = clWindow
              Expanded = False
              FieldName = 'COMPROMETIDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Comprometido'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'SALDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Existencia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object pnDetalleAdicional: TJvPanel
          Left = 75
          Top = 43
          Width = 535
          Height = 74
          Movable = True
          Color = clGreen
          ParentBackground = False
          TabOrder = 9
          Visible = False
          object JvLabel3: TJvLabel
            Left = 7
            Top = 2
            Width = 39
            Height = 13
            Caption = 'Nro.Ord'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShadowPos = spLeftTop
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object JvLabel4: TJvLabel
            Left = 56
            Top = 2
            Width = 81
            Height = 13
            Caption = 'Detalle Adicional'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShadowPos = spLeftTop
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -11
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object dbeNro: TDBEdit
            Left = 8
            Top = 16
            Width = 42
            Height = 21
            DataField = 'RENGLON'
            DataSource = DatosRemitos.DSRtoDet
            Enabled = False
            TabOrder = 1
          end
          object dbeDetAdicional: TDBMemo
            Left = 56
            Top = 16
            Width = 473
            Height = 49
            DataField = 'DETALLE_ADICIONAL'
            DataSource = DatosRemitos.DSRtoDet
            MaxLength = 300
            TabOrder = 0
            OnKeyPress = dbeDetAdicionalKeyPress
          end
        end
      end
      object PagPieCpbte: TTabSheet
        Caption = 'Impuestos'
        ImageIndex = 1
        object Label6: TLabel
          Left = 424
          Top = 50
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
        object Label14: TLabel
          Left = 424
          Top = 3
          Width = 64
          Height = 16
          Caption = 'SubTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 424
          Top = 97
          Width = 74
          Height = 16
          Caption = 'Total Neto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 424
          Top = 73
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
        object Bevel1: TBevel
          Left = 537
          Top = 1
          Width = 98
          Height = 21
        end
        object Bevel6: TBevel
          Left = 537
          Top = 48
          Width = 98
          Height = 21
        end
        object Bevel22: TBevel
          Left = 537
          Top = 94
          Width = 98
          Height = 21
        end
        object Bevel28: TBevel
          Left = 537
          Top = 71
          Width = 98
          Height = 21
        end
        object DBText1: TDBText
          Left = 543
          Top = 3
          Width = 89
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
          Left = 543
          Top = 50
          Width = 89
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
        end
        object DBText7: TDBText
          Left = 543
          Top = 96
          Width = 89
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
        object DBText6: TDBText
          Left = 542
          Top = 73
          Width = 89
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
        object Label21: TLabel
          Left = 424
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
          Left = 537
          Top = 24
          Width = 98
          Height = 21
        end
        object DBText3: TDBText
          Left = 542
          Top = 26
          Width = 89
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
        object Label4: TLabel
          Left = 449
          Top = 191
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
        object DBText2: TDBText
          Left = 496
          Top = 193
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
        object DBGrillaIva: TDBGrid
          Left = 284
          Top = 117
          Width = 385
          Height = 68
          Color = clMenu
          DataSource = DatosRemitos.DSImpuestos
          Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DETALLE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Color = clMenu
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 119
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TASA'
              ReadOnly = False
              Title.Caption = '%'
              Width = 50
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
          Left = 476
          Top = 48
          Width = 47
          Height = 21
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 1
        end
      end
      object PagLotes: TTabSheet
        Caption = 'Lotes'
        ImageIndex = 2
        DesignSize = (
          926
          380)
        object dbgDetalleLotes: TDBGrid
          Left = 8
          Top = 3
          Width = 474
          Height = 254
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DatosRemitos.DSRtoDet
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clTeal
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgDetalleLotesDrawColumnCell
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
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
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 259
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Cantidad'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object pnLote: TPanel
          Left = 488
          Top = 3
          Width = 263
          Height = 181
          BiDiMode = bdLeftToRight
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object lblJvLabel8: TLabel
            Left = 15
            Top = 25
            Width = 33
            Height = 13
            Caption = 'Id Lote'
            Transparent = True
          end
          object cbLote: TJvDBComboEdit
            Left = 71
            Top = 19
            Width = 62
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            ClickKey = 16397
            DataField = 'ID_LOTE'
            DataSource = DatosRemitos.DSRtoLote
            Glyph.Data = {
              4E000000424D4E000000000000003E0000002800000009000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FF8000002480000024800000FF800000}
            ButtonWidth = 24
            TabOrder = 0
            OnButtonClick = BuscarLoteExecute
          end
          object Panel6: TPanel
            Left = 1
            Top = 52
            Width = 262
            Height = 103
            Caption = 'Panel3'
            Color = clMoneyGreen
            Enabled = False
            ParentBackground = False
            TabOrder = 1
            object lblJvLabel10: TLabel
              Left = 15
              Top = 18
              Width = 49
              Height = 13
              Caption = 'Despacho'
              Transparent = True
            end
            object lblJvLabel11: TLabel
              Left = 15
              Top = 45
              Width = 21
              Height = 13
              Caption = 'Lote'
              Transparent = True
            end
            object lblJvLabel9: TLabel
              Left = 15
              Top = 71
              Width = 42
              Height = 13
              Caption = 'Cantidad'
              Transparent = True
            end
            object dbeDespacho: TDBEdit
              Left = 88
              Top = 14
              Width = 116
              Height = 21
              DataField = 'DESPACHO'
              DataSource = DatosRemitos.DSRtoLote
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object dbeCantidadLote: TDBEdit
              Left = 88
              Top = 41
              Width = 116
              Height = 21
              DataField = 'LOTE'
              DataSource = DatosRemitos.DSRtoLote
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object dbeCant: TDBEdit
              Left = 88
              Top = 68
              Width = 116
              Height = 21
              DataField = 'CANTIDAD'
              DataSource = DatosRemitos.DSRtoLote
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object DBGrid2: TDBGrid
          Left = 488
          Top = 215
          Width = 165
          Height = 120
          DataSource = DatosRemitos.DSRtoTroqueles
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NRO_TROQUEL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 130
              Visible = True
            end>
        end
      end
      object pagTabla: TTabSheet
        Caption = 'Tabla'
        ImageIndex = 3
        DesignSize = (
          926
          380)
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 926
          Height = 65
          Align = alTop
          DataSource = DSBase
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object ValueListEditor1: TValueListEditor
          Left = 3
          Top = 71
          Width = 633
          Height = 263
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 1
          TitleCaptions.Strings = (
            'Campo'
            'Valor')
          ColWidths = (
            284
            343)
        end
        object Button1: TButton
          Left = 538
          Top = 336
          Width = 39
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = '<'
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 597
          Top = 336
          Width = 39
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = '>'
          TabOrder = 3
          OnClick = Button2Click
        end
      end
    end
    object pnCosto: TPanel
      Left = 178
      Top = 555
      Width = 757
      Height = 20
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 2
      object dbtCosto: TDBText
        Left = 397
        Top = 4
        Width = 82
        Height = 15
        DataField = 'Costo_Total'
        DataSource = DatosRemitos.DSRtoDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 364
        Top = 4
        Width = 27
        Height = 13
        Caption = 'Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtDetalle: TDBText
        Left = 7
        Top = 4
        Width = 260
        Height = 15
        DataField = 'Detalle'
        DataSource = DatosRemitos.DSRtoDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 338
        Top = 4
        Width = 13
        Height = 17
        DataField = 'AFECTA_STOCK'
        DataSource = DatosRemitos.DSRtoDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel5: TJvLabel
        Left = 273
        Top = 4
        Width = 59
        Height = 13
        Caption = 'Modif.Stock'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel12: TJvLabel
        Left = 687
        Top = 4
        Width = 43
        Height = 13
        Caption = 'Trazable'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText21: TDBText
        Left = 736
        Top = 4
        Width = 14
        Height = 17
        DataField = 'CONTROLA_TRAZABILIDAD'
        DataSource = DatosRemitos.DSRtoDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnFechaAlquiler: TPanel
      Left = 395
      Top = 89
      Width = 250
      Height = 36
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      object JvLabel7: TJvLabel
        Left = 114
        Top = -2
        Width = 89
        Height = 13
        Caption = 'Fecha Devoluci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
      end
      object btDevolver: TSpeedButton
        Left = 220
        Top = 10
        Width = 25
        Height = 25
        Action = DevolverAlq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00080B081695181231D61B1436DE110C22CB0201033300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000E0A
          1CBC5E45BEFB7D5DFFFF7D5DFFFF7859F5FF231A47E702010333000000030000
          0022000000220000002200000022000000220000002200000022010101513E2E
          7EEF4D399DFF3A2B77FF3A2B77FF503CA4FF7859F4FF110C22CA000000441233
          44EB1D526DE41D526DE41D526DE41D526DE41D526DE41D526DE4102132EC654B
          CFFF7255E9FF5F46C1FF6C51DDFF3B2C78FF6148C5FF1B1437DE000000461130
          3FFC1D516BFF40B6F0FF3595C5FF44C1FFFF44C1FFFF44C1FFFF296B91F85A43
          B8FE553FAEFF100C21FF322566FF251B4BFF7255E9FF181231D9000000462A78
          9FF944C1FFFF44C1FFFF44C1FFFF44C1FFFF44C1FFFF44C1FFFF3EB0E9FF1F1E
          45EA7758F1FF4F3BA1FF7D5DFFFF7D5DFFFF5E45BEFB0B081698000000462A78
          9FF944C1FFFF44C1FFFF44C1FFFF389ACEFC328BBAFC3BA9DFFF2E7DA8FA3181
          B1F61F1E45EA5A43B8FE664CD0FF3E2E7FF00E0A1CBE00000007000000462A78
          9FF944C1FFFF44C1FFFF44C1FFFF1B2B49E9433389F22E2560EC1D193FEF41B9
          F4FF3EB0E9FF286A90F825557AEF07141BC80000000000000000030A0DAB112F
          3FF11B4B64EC1B4B64EC1B4B64EC0C1320F2312464EC312464EC111025F11947
          5FED1B4B64EC1B4B64EC1B4B64EC050E12E40102032C000000000F2B39E53BA7
          DDFF3BA7DDFF3BA7DDFF3BA7DDFF142C40EC6C51DDFF6C51DDFF241E4CED389F
          D2FF3BA7DDFF3BA7DDFF3BA7DDFF2C7EA6FF02070A6A00000000061218EE163D
          51EA163D51EA163D51EA163D51EA09121BF4281E51EA281E51EA0E0D1FF3153A
          4DEB163D51EA163D51EA163D51EA102E3CEF03060865000000000A1C25CC43BF
          FCFF44C1FFFF44C1FFFF44C1FFFF1B2E4DEA7B5CFBFF7D5DFFFF1E284CEA44C0
          FEFF44C1FFFF44C1FFFF44C1FFFF19465DE60000002000000000040A0D773290
          BEFD44C1FFFF44C1FFFF44C1FFFF203E60EA7355EAFF7D5DFFFF1B2A49E844C1
          FFFF44C1FFFF44C1FFFF44C1FFFF0B1F29CE000000000000000000000015163F
          52E344C1FFFF44C1FFFF44C1FFFF245176ED694ED7FF7D5DFFFF192C48E744C1
          FFFF44C1FFFF44C1FFFF3697C8FE050D12850000000000000000000000000A1C
          25CB43BFFCFF44C1FFFF44C1FFFF296890F46047C3FF7D5DFFFF172F48E744C1
          FFFF44C1FFFF44C1FFFF18455BE60000001F000000000000000000000000040B
          0E6F0F2C39E2123444DD123444DD0C222DE8171230E7211944DD070E15EE1234
          44DD123444DD123444DD08161DC7000000000000000000000000}
        ParentFont = False
      end
      object JvLabel10: TJvLabel
        Left = 7
        Top = -2
        Width = 72
        Height = 13
        Caption = 'Fecha Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
      end
      object dbFechaDevol: TJvDBDateEdit
        Left = 114
        Top = 12
        Width = 103
        Height = 21
        MinDate = 43831.000000000000000000
        MaxDate = 73050.000000000000000000
        DataField = 'FECHA_DEVOLUCION_ALQ'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ButtonWidth = 14
        ParentFont = False
        ShowNullDate = False
        TabOrder = 0
      end
      object dbFechaEntrega: TJvDBDateEdit
        Left = 7
        Top = 12
        Width = 101
        Height = 21
        MinDate = 43831.000000000000000000
        MaxDate = 73050.000000000000000000
        DataField = 'FECHA_ENTREGA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ButtonWidth = 14
        ParentFont = False
        ShowNullDate = False
        TabOrder = 1
      end
    end
    object pnTipoRto: TPanel
      Left = 398
      Top = 46
      Width = 112
      Height = 42
      BevelOuter = bvNone
      TabOrder = 4
      object JvLabel8: TJvLabel
        Left = 6
        Top = 3
        Width = 46
        Height = 13
        Caption = 'Tipo Rto.'
        ShadowPos = spLeftTop
        Transparent = True
      end
      object cbDevolucion: TJvDBComboBox
        Left = 6
        Top = 16
        Width = 101
        Height = 22
        Hint = 'Modo de Remito'
        Style = csOwnerDrawVariable
        BevelInner = bvNone
        BevelOuter = bvNone
        DataField = 'DEVOLUCION'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Entrega'
          'Devoluci'#243'n'
          'Alquiler Entrega'
          'Alquiler Devolucion')
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        TabStop = False
        UpdateFieldImmediatelly = True
        Values.Strings = (
          'N'
          'S'
          'A'
          'D')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 575
    Width = 934
    Height = 29
    Align = alBottom
    ExplicitTop = 575
    ExplicitWidth = 934
    ExplicitHeight = 29
    inherited btConfirma: TBitBtn
      Width = 72
      ExplicitWidth = 72
    end
    inherited btNuevo: TBitBtn
      Left = 74
      Width = 76
      ExplicitLeft = 74
      ExplicitWidth = 76
    end
    inherited btCancelar: TBitBtn
      Left = 150
      Width = 76
      ExplicitLeft = 150
      ExplicitWidth = 76
    end
    inherited btModificar: TBitBtn
      Left = 226
      Width = 76
      ExplicitLeft = 226
      ExplicitWidth = 76
    end
    inherited Pr: TSpeedButton
      Width = 12
      ExplicitWidth = 12
    end
    inherited btBuscar: TBitBtn
      Left = 314
      Width = 76
      ExplicitLeft = 314
      ExplicitWidth = 76
    end
    inherited Ne: TSpeedButton
      Left = 390
      Width = 16
      ExplicitLeft = 390
      ExplicitWidth = 16
    end
    inherited btBorrar: TBitBtn
      Left = 406
      Width = 76
      Visible = False
      ExplicitLeft = 406
      ExplicitWidth = 76
    end
    inherited btSalir: TBitBtn
      Width = 72
      TabOrder = 7
      ExplicitWidth = 72
    end
    object ToolButton1: TToolButton
      Left = 554
      Top = 0
      Width = 12
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 566
      Top = 0
      Width = 76
      Height = 29
      Action = Imprimir
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 6
    end
    object ToolButton2: TToolButton
      Left = 642
      Top = 0
      Width = 12
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object BtAnular: TSpeedButton
      Left = 654
      Top = 0
      Width = 20
      Height = 29
      Action = Anular
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
      ShowHint = True
    end
    object spCorreo: TSpeedButton
      Left = 674
      Top = 0
      Width = 28
      Height = 29
      Hint = 'Enviar por Correo'
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
    object spFacturacion: TSpeedButton
      Left = 702
      Top = 0
      Width = 28
      Height = 29
      Hint = 'Facturar'
      Action = Facturar
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        979696ACACACACACACACACACACACACACACACACACACACACACACACACACACAC4C4C
        4C525050595858676767FF00FFFF00FF3737377472726E6E6E6E6E6E6E6E6E6E
        6E6E6E6E6E6E6E6E6E6E6E6E6E6E9999999999999B9A9ABDBCBCFF00FFFF00FF
        4B4A4AA8A6A6A19E9EB5B3B3596958006600596D58B2B0B0AFAEAEA19E9E7170
        70605F5F373737FF00FFFF00FF222222A19E9EC3C3C3DADDDE9DA59D00660000
        A500006100A6B1AACDCDCDB5B3B39E9C9C222222FF00FFFF00FFFF00FF6E6E6E
        B2B0B0D0D0D0EBF3F600660000440000A500006100006600E1E4E5C6C6C6ABA8
        A86E6E6EFF00FFFF00FFFF00FF6E6E6EABA8A8D4D4D4F0FBFF3C583F00260000
        A500008300006600EBF3F6CDCDCDABA8A86E6E6EFF00FFFF00FFFF00FF6E6E6E
        B2B0B0D4D4D4EBF3F600440000A50000A5000061003C583FE6ECEED1D1D1ABA8
        A86E6E6EFF00FFFF00FFFF00FF484848A19E9ECACACAE6ECEE00660000660000
        A100004400006600DDE0E1BCBBBB9E9C9C484848FF00FFFF00FFFF00FF111111
        868585B5B3B3D5D5D5AAB5AE00660000A500006100A5AEA5CACACAABA8A88383
        83111111FF00FFFF00FFFF00FFFF00FF4444449E9C9CB8B6B6C3C2C266776600
        6100678067CACACAAEABAB9B9A9A444444FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF2222226E6E6E9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C717070222222FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3333336E6E6E59
        5959595959333333FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF484848717070979696828181484848FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF111111979696ADAFB09A
        9FA1D8DCDE868585111111FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF6E6E6E868585C2C4C5B1B3B4AFADAD838383484848FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6E6E6E2222226E6E6E44
        44446E6E6E2222226E6E6EFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object spFiscalizar: TSpeedButton
      Left = 730
      Top = 0
      Width = 24
      Height = 29
      Hint = 'Fiscalizacion'
      Action = Fiscalizar
      Flat = True
    end
    object SpeedButton2: TSpeedButton
      Left = 754
      Top = 0
      Width = 24
      Height = 29
      Action = ImpresionRotulo
      Flat = True
      ParentShowHint = False
      ShowHint = True
    end
    object spTroqueles: TSpeedButton
      Left = 778
      Top = 0
      Width = 20
      Height = 29
      Hint = 'Ingresos de Rotulos'
      Action = IngTroquel
      Caption = 'T'
      Flat = True
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton4: TSpeedButton
      Left = 798
      Top = 0
      Width = 24
      Height = 29
      Hint = 'Solicitud de COT'
      Action = PedidoCOT
      Caption = 'C'
      Flat = True
      ParentShowHint = False
      ShowHint = True
    end
    object spPapelera: TSpeedButton
      Left = 822
      Top = 0
      Width = 29
      Height = 29
      Hint = 'Papelera de Reciclaje'
      Action = Papelera
      ImageIndex = 12
      Images = ImageListDos
      Flat = True
    end
    object spPikeo: TSpeedButton
      Left = 851
      Top = 0
      Width = 31
      Height = 29
      Action = Pikeo
      Images = ImageListDos
      Flat = True
    end
    object SpeedButton3: TSpeedButton
      Left = 882
      Top = 0
      Width = 26
      Height = 29
      Action = CambiarTransporte
    end
  end
  inherited Panel1: TPanel
    Top = 604
    Width = 934
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 604
    ExplicitWidth = 934
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    object imBalanza: TImage [1]
      Left = 907
      Top = 1
      Width = 26
      Height = 21
      Hint = 'Balanza Conectada'
      Align = alRight
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
        0000001008060000001FF3FF610000001974455874536F667477617265004164
        6F626520496D616765526561647971C9653C00000019744558745469746C6500
        47617567653B43686172744F7074696F6E733B9B04C3EA000002E24944415478
        5E6D915D685C4518869F73F6ECA6ABB51A2DF91723682E62C42436C1C6D6424A
        085E54414AB1B6172A8A42A5088A123425B6E2450C64134D51A42A959AB6A1D0
        E28DDA92269BC46AD358D42A0412D31F5976FBBB9B4DBA67CF9E99CF1D28BB14
        FAC2C7F3CC3717F3C25873875E1C736C3688801930622186851D460A6EE8E5D4
        44C3AB47363AA9D8E286E62D9B201605D1A0B5212801A58A3BE3C82DD78C9FB2
        D7038E7361617134D637DC8E5078F5168AD4028014EE0437A7C6006D01212000
        18C7F036BF3D42313EE0B167EF147B8626F333056077F79F78AE6720FA45CF67
        D1D33D8313D95D91F1E9EEFED12FBB7A7F7C1EB001AB3B12E5C3C83800ECFE7C
        12C07AFBA3918A5D91B1A37B0FCCC85FB397E546CA15A5B4A1FC993F0FEE9F96
        AEBE13C7DE78EFDB4AC0EAFAF464B1EE3B9FFC5077CFCA7BA36DCD3565AD8F57
        3277294EE26A8A8C9B65454988AAB2FB79E4A10A7E99B944F4D7F38944FC7CCB
        BEFED7FE03C479A6F3E56049E8EEE18E750F97D556AFE4E46FE7C8290D220806
        100E9710BB92A4A5B18AF08A60F9D19FBC21E005C0B75BD66DDEFA60E5AAA686
        BAD59CFE638EACAF287F6015ED4FD5B3B9B3958D6B1FE37222C18EB73EE0CAF5
        344FD457505B5DBAE9CDF70FBD04D88E10D8BA265F7BF6DF186ED6A7B2FC3EDA
        9AEBC87A8AA54C8EF9850BECFE78809D3B5E4129CDFCC5386B1AAB995D886F03
        BE77D03C595B53CAC499BF51A26978B48665D7E7AB7D07D9FFDD11108FBEDE1E
        DAD636317AEA1C6E36475B533DA2ED464C035F64F55D61878CEB215A709C1022
        70F0F031AAAAF2CDFE394B6B4B23BE12AEDF58C20A4038EC9836A58065FBBE7F
        2DBDEC110C06505A934C2F23223CDBF134677F9F62FBF62D6820B978132D4249
        30C4E29287AF541280D7DF1DF9796AFAA228ADC5249976E55ACA4CA6C0AB7926
        D35931514ACBF1C979D9B6F3C07120E4B8DECD916F46663ABE3E7C06ABF87568
        287E256089A1024320934E0E03CA02028003D8DC39D61D761AF001F53F1BE598
        B18E8A2C5F0000000049454E44AE426082}
      Transparent = True
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 819
      Panels = <
        item
          Width = 380
        end
        item
          Width = 200
        end
        item
          Width = 60
        end>
      OnClick = sbEstadoClick
      OnDblClick = sbEstadoDblClick
      OnMouseMove = sbEstadoMouseMove
      ExplicitWidth = 819
    end
  end
  object gbLista: TGroupBox [4]
    Left = 749
    Top = 57
    Width = 155
    Height = 62
    Caption = 'Lista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object DBText13: TDBText
      Left = 68
      Top = 24
      Width = 18
      Height = 11
      Alignment = taRightJustify
      DataField = 'LISTAPRECIO'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object JvLabel1: TJvLabel
      Left = 96
      Top = 5
      Width = 48
      Height = 13
      Caption = 'Moneda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object dbcLista: TDBLookupComboBox
      Left = 10
      Top = 19
      Width = 55
      Height = 21
      DataField = 'LISTAPRECIO'
      DataSource = DSBase
      DropDownAlign = daRight
      DropDownWidth = 300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'ID;nombre'
      ListSource = DatosRemitos.DSListaPrecios
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = dbcListaClick
      OnKeyDown = dbcListaKeyDown
    end
    object chLista: TCheckBox
      Left = 12
      Top = 43
      Width = 133
      Height = 17
      Hint = 
        'Si se activa esta Opcion se guardara como lista por defecto la s' +
        'eleccionada'#13#10'y se omitira la lista  por defecto en facturacion.'#13 +
        #10'Si la opcion esta activa se grava la actual seleccioanda, '#13#10'de ' +
        'lo contrario se vacia la opcion'
      Alignment = taLeftJustify
      Caption = 'Guarda Lst.Pr x Def.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object dbcMoneda: TJvDBLookupCombo
      Left = 96
      Top = 19
      Width = 50
      Height = 23
      DropDownAlign = daCenter
      DropDownWidth = 50
      DataSource = DatosRemitos.DSRtoCab
      DisplayEmpty = '----'
      EmptyValue = '-1'
      EmptyItemColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LookupField = 'ID'
      LookupDisplay = 'SIGNO'
      LookupSource = DatosRemitos.DSMoneda
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = dbcMonedaClick
    end
  end
  object btTareas: TBitBtn [5]
    Left = 674
    Top = 94
    Width = 69
    Height = 23
    Action = Tareas
    Caption = 'Tareas'
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      080000000000000100000000000000000000000100000001000089370000983D
      0000A2410000AA440000AF460000B4480000B74A0000BA4B0100BB4D0200BE51
      0600C0560A00C45B0F00C8611600CD691C00D1712500D77A2E00DA7F3300DC82
      3600DD843700DC823600DA803400D77C3100D3772E00D0732A00CC6D2600C767
      2100C15F1B00BA561500AF490C00A23B04009D3603009A330200993202009832
      020096310300942F0300912D03008E2B03008A28040086250400852504008424
      04008424040083240400802204007A210400721E0300631A0300561703004011
      02002F0D010020080100150601001C07010022090100290B0100310D0100380F
      0200401102004B1403005A1803006C1E040073200500792206007F2609007C27
      0C0077291000732C14006E2E1A0068322100623628005E392D005B3C3100593E
      350057413A0055443E0052474300504A48004E4E4E004F4F4F00505050005151
      5100525252005353530054545400555555005656560057575700585858005959
      59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
      6100626262006363630064646400656565006666660067676700686868006969
      69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
      7100727272007373730074747400757575007676760077777700787878007979
      79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
      8100828282008383830084848400858585008686860087878700888888008989
      89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
      9100929292009393930094949400959595009696960097979700989898009999
      99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
      A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
      A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
      B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800BDB9
      B500C2BAB200C6BBB000C9BDAE00CCBDAC00D1BEA800D5BFA600D7C0A500DBC1
      A200D9C1A600D8C2A800D6C3AD00D2C4B300D9A9BE00E47CCE00EE51DF00F728
      EE00FB0CFB00FE03FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00EF00FD00D201F900B802F600A102
      F4008E03F1007D04EF006D04ED005F05EC005305EA004705E9003C06E8003306
      E7002A06E6002006E4001707E3000E07E2000B07E2000C07E200DDDD08DDDDDD
      2A2A2A2A2ADDDDDDDDDDDDDD080808082AC1120D2ADDDDDDDDDDDDDD08DDDDDD
      2B2A292B2ADDDDDDDDDDDDDD08DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD08DDDDDD
      2A2A2A2A2ADDDDDDDDDDDDDD080808082AC1120D2ADDDDDDDDDDDDDD08DDDDDD
      2B2A292B2ADDDDDDDDDDDDDD08DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD08DDDDDD
      2A2A2A2A2ADDDDDDDDDDDDDD080808082AC1120D2ADDDDDDDDDDDDDD08DDDDDD
      2B2A292B2ADDDDDDDDDD2A2A2A2A2ADDDDDDDDDDDD34343434DD2AC1120D2ADD
      DDDDDDDDDD34DDFE34DD2B2A292B2ADDDDDDDDDDDD34FEDDFEDDDDDDDDDDDDDD
      DDDDDDDDDD34343434FEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFE}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnMouseMove = btTareasMouseMove
  end
  object pnFactura: TPanel [6]
    Left = 359
    Top = 139
    Width = 108
    Height = 21
    TabOrder = 5
    object DBText8: TDBText
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 100
      Height = 13
      Cursor = crHandPoint
      Align = alClient
      Alignment = taCenter
      AutoSize = True
      DataField = 'NROFACT'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = VerFacturaExecute
      ExplicitWidth = 42
    end
  end
  object chPreview: TCheckBox [7]
    Left = 715
    Top = 529
    Width = 120
    Height = 18
    Anchors = [akLeft, akBottom]
    Caption = 'Preview Impresion'
    TabOrder = 6
  end
  object Panel3: TPanel [8]
    Left = 820
    Top = 26
    Width = 78
    Height = 29
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 7
    object lbEstadoIVA: TJvLabel
      Left = 15
      Top = 3
      Width = 48
      Height = 26
      Cursor = crHandPoint
      Alignment = taCenter
      Caption = 'Importes  C/IVA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
      WordWrap = True
      OnClick = lbEstadoIVAClick
      HotTrack = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = [fsBold]
    end
  end
  object pnColumnas: TPanel [9]
    Left = 677
    Top = 190
    Width = 227
    Height = 237
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'pnColumnas'
    Color = clDarkcyan
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object chklstColumnas: TCheckListBox
      Left = 6
      Top = 6
      Width = 215
      Height = 184
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      ItemHeight = 17
      TabOrder = 0
    end
    object btnSalirColumna: TButton
      Left = 138
      Top = 199
      Width = 75
      Height = 22
      Hint = 'Nuevo Registro'
      Caption = 'Salir'
      TabOrder = 1
      OnClick = btnSalirColumnaClick
    end
  end
  object dbcTransporte: TDBLookupComboBox [10]
    Left = 575
    Top = 139
    Width = 192
    Height = 21
    DataField = 'ID_TRANSPORTE'
    DataSource = DSBase
    DropDownRows = 15
    DropDownWidth = 200
    KeyField = 'ID'
    ListField = 'NOMBRE'
    ListSource = DatosRemitos.DSTransporte
    TabOrder = 9
    OnClick = dbcTransporteClick
    OnEnter = dbcTransporteEnter
    OnKeyDown = dbcTransporteKeyDown
  end
  object btAnexosTr: TBitBtn [11]
    Left = 773
    Top = 138
    Width = 26
    Height = 23
    Hint = 'Configuracion de Chofer, unidad y Anexo'
    Action = AnexosTR
    Glyph.Data = {
      06020000424D0602000000000000760000002800000028000000140000000100
      0400000000009001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333333333333333333333333333FFFFFFFFFFFFFF
      FFFF300000000000000000033777777777777777777F30FFFFFFFFFFFFFFFF03
      37F333F333333333337F30FFF0FFFFFFFFFFFF0337F337FF33333333337F30FF
      000FFFFFFFFFFF0337F3777FF3333333337F30F00F00FFFFFFFFFF0337F77377
      FF333333337F30FFFFF00FFFFFFFFF0337F333377FF33333337F30FFFFFF00FF
      FFFFFF0337F333F377333333337F30FFF0FFFFFFFFFFFF0337F337FF33333333
      337F30FF000FFFFFFFFFFF0337F3777FF3333333337F30F00F00FFFFFFFFFF03
      37F77377FF333333337F30FFFFF00FFFFFFFFF0337F333377FF33333337F30FF
      FFFF00FFFFFFFF0337F3333377333333337F30FFFFFFFFFFFFFFFF0337FFFFFF
      FFFFFFFFFF7F300000000000000000033777777777777777777F3080CCCCCCCC
      CC08080337F777777777777F7F7F300000000000000000033777777777777777
      7773333333333333333333333333333333333333333333333333333333333333
      33333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
  end
  object Panel4: TPanel [12]
    Left = 468
    Top = 140
    Width = 103
    Height = 20
    TabOrder = 11
    object DBText15: TDBText
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 95
      Height = 12
      Cursor = crHandPoint
      Align = alClient
      Alignment = taCenter
      DataField = 'MUESTRANOTAPEDIDO'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = VerNotaPedidoExecute
      ExplicitLeft = 0
      ExplicitTop = 2
      ExplicitWidth = 98
      ExplicitHeight = 17
    end
  end
  object pnRefFactura: TPanel [13]
    Left = 128
    Top = 436
    Width = 219
    Height = 19
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 12
    object DBText9: TDBText
      Left = 31
      Top = 2
      Width = 98
      Height = 16
      Cursor = crHandPoint
      Alignment = taCenter
      DataField = 'MUESTRAFACTURA'
      DataSource = DatosRemitos.DSRtoDet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = VerFacturaXDetalleExecute
    end
  end
  object chOrdenarDetalle: TCheckBox [14]
    Left = 222
    Top = 521
    Width = 103
    Height = 16
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Ordenar Detalle'
    TabOrder = 13
    OnClick = chOrdenarDetalleClick
  end
  inherited ActionList1: TActionList
    Left = 568
    Top = 40
    object BuscarCliente: TAction [6]
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BuscarLdr: TAction [7]
      Caption = 'BuscarLdr'
      OnExecute = BuscarLdrExecute
    end
    object BuscarSucursal: TAction [8]
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarDeposito: TAction [9]
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarCondVenta: TAction [10]
      Caption = 'BuscarCondVenta'
      OnExecute = BuscarCondVentaExecute
    end
    object BuscarTipoCpbte: TAction [11]
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarArticulo: TAction [12]
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object Imprimir: TAction [13]
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarVendedor: TAction
      Caption = 'BuscarVendedor'
      OnExecute = BuscarVendedorExecute
    end
    object Anular: TAction
      Hint = 'Anular comprobante'
      OnExecute = AnularExecute
    end
    object DatosCliente: TAction
      OnExecute = DatosClienteExecute
    end
    object Recalcular: TAction
      Caption = 'Recalcular'
      OnExecute = RecalcularExecute
    end
    object EnviarCorreo: TAction
      OnExecute = EnviarCorreoExecute
    end
    object Tareas: TAction
      Caption = 'Tareas'
      OnExecute = TareasExecute
    end
    object DesmarcarImpreso: TAction
      Caption = 'Desmarcar Impreso'
      ShortCut = 49232
      OnExecute = DesmarcarImpresoExecute
    end
    object Facturar: TAction
      OnExecute = FacturarExecute
    end
    object CambiarNro: TAction
      Caption = 'Cambiar Nro'
      ShortCut = 16462
      OnExecute = CambiarNroExecute
    end
    object RestaurarNV: TAction
      Caption = 'RestaurarNV'
      ShortCut = 32846
      OnExecute = RestaurarNVExecute
    end
    object VerFactura: TAction
      Caption = 'VerFactura'
      OnExecute = VerFacturaExecute
    end
    object RestaurarPres: TAction
      Caption = 'RestaurarPres'
      OnExecute = RestaurarPresExecute
    end
    object RestaurarNP: TAction
      Caption = 'RestaurarNP'
      OnExecute = RestaurarNPExecute
    end
    object LimpiarRtosSinFc: TAction
      Caption = 'Limpiar el campo Id_Fac de los Rtos SinFc'
      OnExecute = LimpiarRtosSinFcExecute
    end
    object MarcarEntrgado: TAction
      Caption = 'Marcar como Entrgado y Facturado'
      Hint = 'Marca como Facturado el Rto'
      ShortCut = 49221
      OnExecute = MarcarEntrgadoExecute
    end
    object RecuperaRto: TAction
      Caption = 'Recupera Rto. para facturar'
      OnExecute = RecuperaRtoExecute
    end
    object CopiarDetalle: TAction
      Caption = 'Copiar Detalle en Archivo Temporal'
      OnExecute = CopiarDetalleExecute
    end
    object PegarDetalle: TAction
      Caption = 'Pegar Detalle desde Archivo Temporal'
      OnExecute = PegarDetalleExecute
    end
    object BusqedarPorReferencia: TAction
      Caption = 'Busqueda Por Referencia'
      ShortCut = 32781
      OnExecute = BusqedarPorReferenciaExecute
    end
    object MarcarNoFacturable: TAction
      Caption = 'Marcar No Facturable'
      ShortCut = 49222
      OnExecute = MarcarNoFacturableExecute
    end
    object Fiscalizar: TAction
      Caption = 'F'
      Enabled = False
      Visible = False
      OnExecute = FiscalizarExecute
    end
    object ImpresionRotulo: TAction
      Caption = 'R'
      Hint = 'Impresion de Rotulo para Transporte'
      OnExecute = ImpresionRotuloExecute
    end
    object RecalcuoPrecios: TAction
      Caption = 'Recalcular Precios '
      OnExecute = RecalcuoPreciosExecute
    end
    object ImportarDesdeXLS: TAction
      Caption = 'Importar Desde Excel'
      OnExecute = ImportarDesdeXLSExecute
    end
    object BuscarPorObservacion: TAction
      Caption = 'BuscarPorObservacion'
      ShortCut = 8205
      OnExecute = BuscarPorObservacionExecute
    end
    object IngTroquel: TAction
      OnExecute = IngTroquelExecute
    end
    object AnexosTR: TAction
      OnExecute = AnexosTRExecute
    end
    object LeerPeso: TAction
      Caption = 'LeerPeso'
      OnExecute = LeerPesoExecute
    end
    object ConectarBalanza: TAction
      Caption = 'ConectarBalanza'
      OnExecute = ConectarBalanzaExecute
    end
    object GenerarMovStock: TAction
      Caption = 'GenerarMovStock'
      ShortCut = 49235
      OnExecute = GenerarMovStockExecute
    end
    object VerNotaPedido: TAction
      Caption = 'VerNotaPedido'
      OnExecute = VerNotaPedidoExecute
    end
    object DevolverAlq: TAction
      OnExecute = DevolverAlqExecute
    end
    object VerFacturaXDetalle: TAction
      Caption = 'VerFacturaXDetalle'
      OnExecute = VerFacturaXDetalleExecute
    end
    object AgregarCliente: TAction
      OnExecute = AgregarClienteExecute
    end
    object PedidoCOT: TAction
      Caption = 'Pedido COT'
      OnExecute = PedidoCOTExecute
    end
    object Pasar_A_Papelera: TAction
      Caption = 'Pasar_A_Papelera'
      OnExecute = Pasar_A_PapeleraExecute
    end
    object Papelera: TAction
      ImageIndex = 11
      OnExecute = PapeleraExecute
    end
    object BuscarLote: TAction
      Caption = 'BuscarLote'
      OnExecute = BuscarLoteExecute
    end
    object Pikeo: TAction
      Hint = 'Registro de Pikeo '
      ImageIndex = 13
      OnExecute = PikeoExecute
    end
    object CambiarTransporte: TAction
      Hint = 'Seleccionar Transporte'
      ImageIndex = 14
      OnExecute = CambiarTransporteExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosRemitos.CDSRtoCab
    OnDataChange = DSBaseDataChange
    Left = 184
    Top = 408
  end
  inherited ImageList1: TImageList
    Left = 408
    Top = 184
    Bitmap = {
      494C01010C002400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C5C5C50079716C007163580077665900746255006A5B4E00776F6800C5C4
      C400000000000000000000000000000000000000000000000000000000000000
      0000C5C5C50079716C007162580077665900746255006B5B4E00776F6800C5C4
      C400000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000009997
      95008F7F7200AC988B00A48E8000A08A7B009E8778009981720091796A00715D
      5000999795000000000000000000000000000000000000000000000000009997
      95008F7F7200AC988B00A48E8000A08A7B009E8778009B837400957C6D00715C
      50009997950000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000008171
      6600AE998C009D8677009A8677009683750092807200907A6D008B756900957A
      6B00655344000000000000000000000000000000000000000000000000008172
      6600AD998C009E8778009F8979009E8778009B8576009880700099817100947A
      6A0065544500000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000D3D2D2009C8E
      8200A6968B00A7978C00A7968B00A49185009E8A7C0097827300958173009881
      7200715C4C00D3D2D20000000000000000000000000000000000D3D2D2009D8D
      8200A89487009F8879009F8879009E8778009B857600978070009E8778009A83
      7300715B4C00D3D2D2000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000AAA9A800AD9E
      9400BBAEA500B2A19600AC9B8E00A8948700A18E80009B8576009E887A009681
      740079635400A9A8A80000000000000000000000000000000000AAA9A800AC9E
      9300C3B4AA00A08A7B009D8778009D8777009B857500967D6E009C8576009E88
      790079625400A9A8A8000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A78780075737300000000000000000097969400BAAC
      A200C5B7AE00B4A59A00B4A29600AD9A8D00A59083009D877700A28D7E00927D
      7100836A5A00989695000000000000000000000000000000000097969500BAAC
      A300CBBDB300BEADA100AF9C8F00A5908200A0897A0099827200A18B7D00A28D
      800082685900989695000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C69690000000000000000008E8B8800C7B9
      B000CABCB200AFA09500B5A498009B8A7D00A08C7E009D877800A18B7D009380
      7200886F5F008C898600000000000000000000000000000000008F8C8900C7B9
      B000CABBB200BFAEA200B7A49800AF9B8F00A79284009E887800A28C7E00A28C
      8000886F60008D8A870000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A0000000000000000007B756F00D0C3
      BA00CABCB200AB9C9200A5958A00A8968A0097867900998374009D8779009884
      77008970610079726C00000000000000000000000000000000007B756F00D0C3
      BA00C9BAB000BEADA100B7A59900B09D9000A89386009D887800A08A7B00A18C
      7E008E74660079726C000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000746C6500D7CB
      C300C1B4AB00AC9D9400AD9E9400B0A19800B2A499009C8C8200A8968B00A491
      8500876F610070675F0000000000000000000000000000000000746C6500D6CA
      C200CCBEB500BAAAA000B19F9300AC9A8E00AA978B00A7948700AD9A8F00AA97
      8B0093796A0070675F0000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A000000000000000000000000000000000072675D00C0B2
      AB00AEA49E00CFCCCB00E6E7E700F2F3F300F3F4F400F0EFEF00AAA7A5009788
      7E00917C700066594E000000000000000000000000000000000072675E00C8BA
      B000BEB0A500D3CAC100DBD2CA00D3C7BD00CCBCB100C2AEA200B29A8D00A68F
      8100A08B7C0065584E0000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      000000000000000000000000000000000000000000000000000070625500B2AC
      A800EEEFF000F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F7F700AA9C
      9600A88C7C00665649000000000000000000000000000000000070625500D4CD
      C300EFEFE900E5E0D900E5DED800D2C5BC00CBBBB100C4B0A500BEA69A00B89C
      9000A68B7B006656490000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      000000000000000000000000000000000000000000000000000074625500DFDE
      D900D8D8D800FEFEFE00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FAFAFA00EEEF
      EF00A7968E00726054000000000000000000000000000000000073625500EEEF
      E800EEECE700E9E5DF00ECE6E200D2C5BC00CBBBB100C4B0A500BEA69A00B79B
      8F00B29688007260540000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000000000006B605700D5CE
      C500D7D6D400E1E1E100FFFFFF00FFFFFF00FDFDFD00F9F9F900F5F5F500EFEF
      EF00A59F9B006C615900000000000000000000000000000000006B615700D3CC
      C400EFEEE900EAE6E100ECE7E300D2C5BC00CBBBB100C4B0A500BCA49800BBA1
      9500BBA99F006C6259000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000DCDCDC00695E
      5400B5AAA000C6C2BE00EFEFEF00FEFEFE00F9F9F900F4F4F400EAEBEB009089
      8300695D5400DADADA0000000000000000000000000000000000DCDCDC00695D
      5400B3A89E00E6E0DB00EDE7E300DBD1C900D6C8C000D3C3BA00CFC0B700AB9C
      9100695D5300DADADA00000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F9C9C0070665D00746B6400CFCFCF00E8E8E800E3E3E30076706C009D9B
      9A00000000000000000000000000000000000000000000000000000000000000
      00009E9C9A006E645C00716357007E6F63007E6F6300716358006E635A009D9A
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A4A4009F9F9F0099999900000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF33FF00FF00FE007E007E007E007
      C003C000E007E00780018001C003C00380010000C003C00300000000C003C003
      00000000C003C00300008000C003C0030000E001C003C0030000F003C003C003
      0000F01FC003C0038001E03FC003C0038001E03FC003C003C003C03FC003C003
      E007C07FF00FF00FF81FF8FFFE3FFFFFFFFFF81FF81FF81FC007E007E007E007
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
    Top = 208
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 576
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 392
    Top = 248
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 296
    Top = 272
  end
  inherited ImageListDos: TImageList
    Left = 152
    Top = 80
    Bitmap = {
      494C01010F001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC5C5C50079716C007162580077665900746255006B5B4E00776F6800C5C4
      C400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF9997
      95008F7F7200AC988B00A48E8000A08A7B009E8778009B837400957C6D00715C
      500099979500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D4007C76
      7100D4D2D200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000002C251F4D8773
      62EE877360ED2A231E4B000000000000000000000000000000002C251F4D8773
      62EE877360ED2A231E4B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF8172
      6600AD998C009E8778009F8979009E8778009B8576009880700099817100947A
      6A0065544500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E1006660
      5A00635C5600B7B3B100DFDEDD00B8B6B300B8B5B200E3E2E100FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000887262EEC4B0
      9FFFC3AF9EFF877261EC00000000000000000000000000000000887262EEC4B0
      9FFFC3AF9EFF877261EC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFD3D2D2009D8D
      8200A89487009F8879009F8879009E8778009B857600978070009E8778009A83
      7300715B4C00D3D2D200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C5
      C100635C5500635C5500635C5500635C5500635C5500635C5500ABA7A300FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC49674FFC49674FF967E6AFFC3AF
      9EFFC2AE9CFF967E6BFFC49674FFC49674FFB57A4EFFB57A4EFF957C67FFC3AF
      9EFFC2AE9CFF957C68FFB57A4EFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFAAA9A800AC9E
      9300C3B4AA00A08A7B009D8778009D8777009B857500967D6E009C8576009E88
      790079625400A9A8A800FFFFFFFFFFFFFFFFD9D8D500B5B1AE00D9D8D500FFFF
      FFFF97918D00635C5500A7A4A000FFFFFFFFFFFFFFFFA7A4A000635C5500BDB9
      B600FFFFFFFFD9D8D500B5B1AE00D9D8D500C49674FFFFE8C2FFDEC7A6FF9B85
      71FF9C8671FFDEC8A8FFFFE8C2FFFFE8C2FFB57A4EFFF0B78BFFD3A480FF9A81
      6DFF9B826CFFD3A581FFF0B78BFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF97969500BAAC
      A300CBBDB300BEADA100AF9C8F00A5908200A0897A0099827200A18B7D00A28D
      80008268590098969500FFFFFFFFFFFFFFFFB0ADA900645D5600B0ADA900FFFF
      FFFF7D7670008D868200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8581007B75
      6F00FFFFFFFFB0ADA900645D5600B0ADA900C49674FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFB57A4EFFF0B78BFFF0B78BFFF0B7
      8BFFF0B78BFFF0B78BFFFDF4EDFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF8F8C8900C7B9
      B000CABBB200BFAEA200B7A49800AF9B8F00A79284009E887800A28C7E00A28C
      8000886F60008D8A8700FFFFFFFFFFFFFFFFB0ADA900645D5600B0ADA900FFFF
      FFFF655F5900B0ADA900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACA9A5006660
      5900FFFFFFFFAFACA800645D5600B0ADA900FFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFB57A4EFFF0B78BFFF0B78BFFF0B7
      8BFFF0B78BFFF0B78BFFF0B78BFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF7B756F00D0C3
      BA00C9BAB000BEADA100B7A59900B09D9000A89386009D887800A08A7B00A18C
      7E008E74660079726C00FFFFFFFFFFFFFFFFB0ADA900645D5600B0ADA900FFFF
      FFFF78746E008F8A8500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8783007973
      6D00FFFFFFFFACA9A600635C5500B0ADA900C49674FFC49674FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFB57A4EFFF0B78BFFF0B78BFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF746C6500D6CA
      C200CCBEB500BAAAA000B19F9300AC9A8E00AA978B00A7948700AD9A8F00AA97
      8B0093796A0070675F00FFFFFFFFFFFFFFFFB0ADA900645D5600B0ADA900FFFF
      FFFFBFBDB900645D5600AEAAA700FFFFFFFFFFFFFFFFADA8A500635C5500B7B4
      B100FFFFFFFFACA9A500635C5500AFACA800FFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFB57A4EFFF0B78BFFF0B78BFFB57A
      4EFFFFE8C2FFFFE8C2FFE6C49BFFB88053FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF72675E00C8BA
      B000BEB0A500D3CAC100DBD2CA00D3C7BD00CCBCB100C2AEA200B29A8D00A68F
      8100A08B7C0065584E00FFFFFFFFFFFFFFFFB0ADA900645D5600B0ADA900B7B4
      B100E7E6E500A8A4A100625B5500625B5500625B5500625B5500A8A4A000E7E7
      E700B8B5B200ACA9A500635C5500ACA9A600C49674FFC49674FFC49674FFC496
      74FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFB57A4EFFF0B78BFFF0B78BFFB57A
      4EFFFFE8C2FFFEE6C0FFBE875CFF704C319F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF70625500D4CD
      C300EFEFE900E5E0D900E5DED800D2C5BC00CBBBB100C4B0A500BEA69A00B89C
      9000A68B7B0066564900FFFFFFFFFFFFFFFFB0ADA900645D5600B0ADA900B0AD
      A900B0ACA900FFFFFFFFE1E0DF00B7B5B100B8B6B200E2E0DF00FFFFFFFF7771
      6900ACA9A600ACA9A500635C5500ACA9A500FFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFB57A4EFFF0B78BFFF0B78BFFB57A
      4EFFFFE8C2FFDFB890FFB68054FC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF73625500EEEF
      E800EEECE700E9E5DF00ECE6E200D2C5BC00CBBBB100C4B0A500BEA69A00B79B
      8F00B296880072605400FFFFFFFFFFFFFFFFB0ADA900645D5600B0ADA900B0AD
      A900B0ADA900B0ACA900BDBAB800D4D2D000A9A6A10087817C00FFFFFFFF645D
      5600AFACA800ACA9A600635C5500ACA9A500C49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FFFFE8C2FFFFE8C2FFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57B4EFF4D35206D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF6B615700D3CC
      C400EFEEE900EAE6E100ECE7E300D2C5BC00CBBBB100C4B0A500BCA49800BBA1
      9500BBA99F006C625900FFFFFFFFFFFFFFFFB0ADA900645D5600B0ADA900B0AD
      A900B0ADA900B0ADA900B0ADA900B0ADA900645D5600645D5600FFFFFFFF645D
      5600B0ADA900AFACA800635C5500ACA9A500FFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFC49674FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFDCDCDC00695D
      5400B3A89E00E6E0DB00EDE7E300DBD1C900D6C8C000D3C3BA00CFC0B700AB9C
      9100695D5300DADADA00FFFFFFFFFFFFFFFFAFACA800645D5600B0ADA900B0AD
      A900B0ADA900B0ADA900B0ADA900B0ADA900645D5600645D5600FFFFFFFF645D
      5600B0ADA900B0ADA900635C5500ACA9A600C49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FFC49674FFC49674FFC49674FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9E9C9A006E645C00716357007E6F63007E6F6300716358006E635A009D9A
      9900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACA9A600635C5500B0ADA900B0AD
      A900B0ADA900B0ADA900B0ADA900B0ADA900645D5600645D5600FFFFFFFF645D
      5600B0ADA900B0ADA900645D5600AFACA8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000658550DB759A
      5DFD648550DA000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC5C5C50079716C007163580077665900746255006A5B4E00776F6800C5C4
      C400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FFA59482FFD7CFBDFF8CA874FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C800000000FFFFFFFFFFFFFFFFFFFFFFFF9997
      95008F7F7200AC988B00A48E8000A08A7B009E8778009981720091796A00715D
      500099979500FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFFA0BB90FF82A5
      6DFF769C5EFF769C5EFF769C5EFF00000000FFFFFFFFFFFFFFFFFFFFFFFF8171
      6600AE998C009D8677009A8677009683750092807200907A6D008B756900957A
      6B0065534400FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46BFF769C5EFF769C5EFF658550DBFFFFFFFFFFFFFFFFD3D2D2009C8E
      8200A6968B00A7978C00A7968B00A49185009E8A7C0097827300958173009881
      7200715C4C00D3D2D200FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFBACDAEFF8EAD7AFFBBCE
      AFFFE6EDE1FF80A36AFF769C5EFF72975BF8FFFFFFFFFFFFFFFFAAA9A800AD9E
      9400BBAEA500B2A19600AC9B8E00A8948700A18E80009B8576009E887A009681
      740079635400A9A8A800FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFF769C
      5EFFBBCEAFFFE4ECDFFF7EA267FF658550DBFFFFFFFFFFFFFFFF97969400BAAC
      A200C5B7AE00B4A59A00B4A29600AD9A8D00A59083009D877700A28D7E00927D
      7100836A5A0098969500FFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFFA2BB91FF789D60FF00000000FFFFFFFFFFFFFFFF8E8B8800C7B9
      B000CABCB200AFA09500B5A498009B8A7D00A08C7E009D877800A18B7D009380
      7200886F5F008C898600FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C800000000FFFFFFFFFFFFFFFF7B756F00D0C3
      BA00CABCB200AB9C9200A5958A00A8968A0097867900998374009D8779009884
      77008970610079726C00FFFFFFFFFFFFFFFF000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF0000000000000000FFFFFFFFFFFFFFFF746C6500D7CB
      C300C1B4AB00AC9D9400AD9E9400B0A19800B2A499009C8C8200A8968B00A491
      8500876F610070675F00FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF0000000000000000FFFFFFFFFFFFFFFF72675D00C0B2
      AB00AEA49E00CFCCCB00E6E7E700F2F3F300F3F4F400F0EFEF00AAA7A5009788
      7E00917C700066594E00FFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF0000000000000000FFFFFFFFFFFFFFFF70625500B2AC
      A800EEEFF000F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F7F700AA9C
      9600A88C7C0066564900FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF0000000000000000FFFFFFFFFFFFFFFF74625500DFDE
      D900D8D8D800FEFEFE00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FAFAFA00EEEF
      EF00A7968E0072605400FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C70000000000000000FFFFFFFFFFFFFFFF6B605700D5CE
      C500D7D6D400E1E1E100FFFFFF00FFFFFF00FDFDFD00F9F9F900F5F5F500EFEF
      EF00A59F9B006C615900FFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D1000000000000000000000000FFFFFFFFFFFFFFFFDCDCDC00695E
      5400B5AAA000C6C2BE00EFEFEF00FEFEFE00F9F9F900F4F4F400EAEBEB009089
      8300695D5400DADADA00FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C800000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9F9C9C0070665D00746B6400CFCFCF00E8E8E800E3E3E30076706C009D9B
      9A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF7E7263CA0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A4009F9F9F0099999900FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000766A5DC0918171EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005D794CC071955CF0769C5EFF71955CF05D794CC0000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFA1758BFFA175
      8BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA175
      8BFFA1758BFFA1758BFFA1758BFF00000000918171EBAD9D8AFD948573EF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006686
      54D77EA26BF3A4C899FFB4D8AEFFBDDFBAFFB4D8AEFFA4C89AFF7DA26AF36585
      52D5000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF0000000000000000958573F2A79884FD907F
      6DE7000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000070945CF09EC1
      93FCBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FB70945BF00000000000000000000000007C6A59DA8C7767F28C7866F19C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF8C7866F18C7767F27D6A59D900000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000958473EFA292
      7FFD8D7D6BE10000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000678955DB9CC190FDBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9BBF90FC678754D900000000000000008F7966FFD4C1B0FFD4C1B0FF9C8B
      78FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FF9C8B78FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000009082
      6FEA9F8F7DFD877768D90000000000000000897A69D89A8977FB9A8977FB887A
      69D700000000000000000000000000000000000000007DA16AF3BDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBCE0B9FF7DA169F300000000000000008F7966FFD4C1B0FFBBA795FF8F79
      66FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F79
      66FF8F7A66FFBBA896FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00008C7D6BE19C8B78FF9E8C7AF9B09F8AF3E7D5BCFFFCEACEFFFCEACEFFE7D5
      BBFFAD9D89F2897B6AD900000000000000005C794AC1A5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5A774BBE000000008F7966FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      0000000000009E8D7AFBCDBAA4FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFC9B7A2FC897B6ADA0000000072955BF1B6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF72955AEF000000008F7966FFD4C1B0FFD4C1B0FFCBAB
      93FFBA8157FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFBA81
      57FFCBAC94FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      000000000000AF9F89F6FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88F400000000749B5DFCBCDFB8FFBDE0BAFF99BE
      8CFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF99BE
      8CFFBDE0BAFFBBDEB8FF759A5CFB000000008F7966FFD4C1B0FFD4C1B0FFBA81
      57FFE3A97CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE2A9
      7CFFB98258FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00008A7C6BD9E7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF887969D672955BF1B6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF72955AEF000000008F7966FFD4C1B0FFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFB3E0E6FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00009A8977F9FBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998976F85E794CC2A5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5B794CC0000000008E7865FED3C0AFFFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFD4C1B0FFD3C0AFFF8E7865FE00000000A1758BFFF2D5DCFFF2D5
      DCFFE9C0CBFFA48B7EFF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FFA791
      83FFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00009A8977F9FBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998976F8000000007EA16BF3BDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF7CA16AF300000000000000006C5D4EBE8F7865FE8F7966FFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFF8F7966FF8F7865FE6B5C4EBC00000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FFF2EBE1FF8F79
      66FFF2D5DCFFEACCD4FFA1758BFF000000000000000000000000000000000000
      0000897C6CD9E7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF877969D600000000678955DB9EC393FDBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9EC192FC678754D900000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FFF2EBE1FF8F79
      66FFEBCDD5FFA57E8FF457404B86000000000000000000000000000000000000
      000000000000AF9E8AF5FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88F400000000000000000000000070945CF09EC1
      93FCBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FB70945BF00000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FF8F79
      66FFA47C8FF60000000000000000000000000000000000000000000000000000
      0000000000008C7C6ADDCEBCA6FCFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFCDBBA6FC897B6ADA000000000000000000000000000000006686
      54D77EA26BF3A5CA9CFFB7DAB2FFB8DBB4FFB7DAB2FFA6C99CFF7DA26AF36585
      52D5000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFA1758BFFA175
      8BFFA1758BFF977E73FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF987D
      74FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000897B6ADAB1A08BF4E7D5BCFFF8E6CBFFF8E6CBFFE7D5
      BBFFB19F8AF4897B6AD900000000000000000000000000000000000000000000
      0000000000005D794CC071945CED73995DF671945CED5D794CC0000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000897C6BD9988976F5988976F58A7A
      69D8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFC496
      74FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FF00000000000000000000000000000000000000000000
      000000000000363698C04141BDF04343C7FF4141BDF0363698C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000464B4BED414D4FD40000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49674FF00000000000000000000000000000000000000003B3B
      AAD74F4FC7F37575E6FF8686F1FF8F8FF7FF8686F1FF7474E6FF4F4FC7F33C3C
      A8D5000000000000000000000000000000000000000000000000000000002A2A
      6F89333382A10000000000000000000000000000000000000000000000003232
      84A22A2A6F8900000000000000000000000000000000414A4ED2555553FF66A0
      BDF74B8AA6E60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE3C29DFF000000000000000000000000000000004141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6E6E
      E0FB4141BCF00000000000000000000000000000000000000000292967806C6C
      D5ED7575DEF12E2E7895000000000000000000000000000000002E2E78957474
      DFF26D6DD5EC292967800000000000000000000000000000000068A2C3F46EBC
      DFFF7CCAE2FF63AFC8FA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF0000000000000000000000003C3CACDB6D6DE0FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6B6BE0FC3C3CABD90000000000000000000000000000000030307E9A7979
      E1F58F8FF7FF7A7AE2F532327F9C00000000000000003333809D7A7AE2F58F8F
      F7FF7676E0F430307B98000000000000000000000000000000004E8BA7E580CD
      E5FFA3EEFFFFA1ECFEFF569BB1D9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDAB188FFFFE8C2FF0000000000000000000000004E4EC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8E8EF7FF4D4DC7F300000000000000000000000000000000000000003232
      7F9C7979E3F78F8FF7FF7676DFF22E2E78952E2E78957676DFF28F8FF7FF7979
      E3F732327F9C00000000000000000000000000000000000000000000000066B1
      CCF9A2EEFFFFA3EEFFFFA1EBFDFF5598AFD70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFDAB188FF0000000000000000353598C17676E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7474E6FF353597BE000000000000000000000000000000000000
      000031317B977777E1F48F8FF7FF7878E2F67B7BE3F68F8FF7FF7777E0F43030
      7A96000000000000000000000000000000000000000000000000000000000000
      00005CA2B7DBA2EEFFFFA3EEFFFFA1EBFDFF5598AFD700000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFB57A4EFF61412A88000000004242BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFB1B1F9FFF6F6FEFFBCBCFAFFF7F7FEFFB1B1F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF000000000000000000000000000000000000
      00000000000031317B977777E0F48F8FF7FF8F8FF7FF7777E0F430307A960000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF5598AFD7000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFF61412A884343C4FC8E8EF6FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FFC3C3FAFFFEFEFFFFC2C2FBFF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8D8DF5FF4242C4FB000000000000000000000000000000000000
      000000000000323284A27979E1F58F8FF7FF8F8FF7FF7979E1F5333382A10000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF5598AFD70000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFF000000004242BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFA8A8F9FFF6F6FEFFC9C9FBFFF6F6FEFFA8A8F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF000000000000000000000000000000000000
      0000333384A37A7AE4F78F8FF7FF7878E2F67B7BE3F68F8FF7FF7979E3F73333
      82A1000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF839A
      9AED000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFB57A4EFF5A3D278000000000363699C27676E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7474E6FF363698C0000000000000000000000000000000003030
      7F9C7777E0F48F8FF7FF7A7AE5F83434819C353583A07C7CE7F98F8FF7FF7777
      E0F431317D9B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005DA3BADDA2EEFFFFA9C2C1FFD2C8
      BAFFA9A69BF90000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFDAB188FF0000000000000000000000004E4EC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8F8FF7FF4E4EC6F30000000000000000000000000000000032327F9C7878
      E1F68F8FF7FF7A7AE2F530307B98000000000000000033337E997A7AE2F58F8F
      F7FF7777E2F632327E9A00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000869B9EEFDACEC1FFF5E7
      D9FFF4E6D7FFA69D97FD00000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDCB58BFFFFE8C2FF0000000000000000000000003C3CACDB7070E2FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6D6DE0FC3C3CABD9000000000000000000000000000000002F2F76917676
      DFF37D7DE7F83434829E000000000000000000000000000000003535829F7D7D
      E7F87676DFF32F2F769100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3AFA4FBF5E7
      D8FFDACEC2FFA097BAFF4545A7CA000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF000000000000000000000000000000004141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6E6E
      E0FB4141BCF00000000000000000000000000000000000000000000000000000
      000030307A960000000000000000000000000000000000000000000000003030
      7A96000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A69F
      9AFC9F96BFFF8F8FF7FF4F4FB6D6000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE2BF9BFF00000000000000000000000000000000000000003B3B
      AAD74F4FC7F37676E8FF8989F4FF8989F4FF8989F4FF7676E8FF4F4FC7F33C3C
      A8D5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004646AACB5252B7D600000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49674FF00000000000000000000000000000000000000000000
      000000000000363698C04141BBED4242C1F64141BBED363698C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFC496
      74FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FF0000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000FFFF000000000000E7E70000
      00000000C3C30000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000000000003000000000000007F000000000000007F0000
      00000000FFFF000000000000FFFF0000FFEFFFFFFFC70000FFCFF3FFC0010000
      FF8FF1FFC0010000FF0FF0FFC0000000FE0FF07FC0000000FC0FF03FC0000000
      F80FF01FC0010000F00FF00FC0010000E00FF00FC0030000F00FF01FC0030000
      F80FF03FC0030000FC0FF07FC0030000FE0FF0FFC0030000FF0FF1FFC0070000
      FF8FF3FFC00F0000FFCFF7FFC01F0000FFFFE007FFFF3FFFF83FE00780011FFF
      E00FE00780018FFFC00700008001C7FF800300008001E30F800300008001F003
      000100008001F801000100008001F801000100008001F000000100008001F000
      000100008001F000800300008001F0008003E0078001F801C007E0078007F801
      E00FE007800FFC03F83FE007FFFFFF0FFFFFFFFFFFFFC003F83FFFFF9FFFC003
      E00FE7E787FFC003C007C3C3C3FFC0038003C183C1FFC0038003E007E0FFC003
      0001F00FF07FC0010001F81FF83FC0000001F81FFC1FC0010001F00FFE0FC001
      0001E007FF07C0038003C183FF83C0038003C3C3FFC1C003C007F7EFFFE1C003
      E00FFFFFFFF3C003F83FFFFFFFFFC00300000000000000000000000000000000
      000000000000}
  end
  object frRemitos: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.363455219910000000
    ReportOptions.LastChange = 39638.363455219910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPrintReport = frRemitosPrintReport
    Left = 400
    Top = 448
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 296.862308276425900000
      PaperSize = 9
      Frame.Typ = []
      MirrorMode = []
      FontStyle = []
    end
  end
  object frxDbCabecera: TfrxDBDataset
    UserName = 'frxDbCabecera'
    CloseDataSource = False
    DataSet = DatosRemitos.CDSRtoCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 400
    Top = 504
    FieldDefs = <
      item
        FieldName = 'ID_RTO'
        FieldAlias = 'ID_RTO'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
        FieldType = fftString
      end
      item
        FieldName = 'LETRARTO'
        FieldAlias = 'LETRARTO'
        FieldType = fftString
      end
      item
        FieldName = 'SUCRTO'
        FieldAlias = 'SUCRTO'
        FieldType = fftString
      end
      item
        FieldName = 'NUMERORTO'
        FieldAlias = 'NUMERORTO'
        FieldType = fftString
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
        FieldType = fftString
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'TIPOIVA'
        FieldAlias = 'TIPOIVA'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'LISTAPRECIO'
        FieldAlias = 'LISTAPRECIO'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'FECHAVTO'
        FieldAlias = 'FECHAVTO'
      end
      item
        FieldName = 'CONDICIONVTA'
        FieldAlias = 'CONDICIONVTA'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
        FieldType = fftString
      end
      item
        FieldName = 'NROFACT'
        FieldAlias = 'NROFACT'
        FieldType = fftString
        Size = 13
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
        FieldName = 'NETOGRAV2'
        FieldAlias = 'NETOGRAV2'
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
        FieldName = 'NETOEXEN1'
        FieldAlias = 'NETOEXEN1'
      end
      item
        FieldName = 'NETOEXEN2'
        FieldAlias = 'NETOEXEN2'
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
        FieldName = 'IMPRESO'
        FieldAlias = 'IMPRESO'
        FieldType = fftString
      end
      item
        FieldName = 'OBSERVACION1'
        FieldAlias = 'OBSERVACION1'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'OBSERVACION2'
        FieldAlias = 'OBSERVACION2'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'CPTE_MANUAL'
        FieldAlias = 'CPTE_MANUAL'
        FieldType = fftString
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
        FieldName = 'LDR'
        FieldAlias = 'LDR'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'Deposito'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
        FieldType = fftString
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
        FieldType = fftString
      end
      item
        FieldName = 'NROENTREGA'
        FieldAlias = 'NROENTREGA'
      end
      item
        FieldName = 'INGRESA_A_CTACTE'
        FieldAlias = 'INGRESA_A_CTACTE'
        FieldType = fftString
      end
      item
        FieldName = 'INGRESA_LIBRO_IVA'
        FieldAlias = 'INGRESA_LIBRO_IVA'
        FieldType = fftString
      end
      item
        FieldName = 'IDFACTURA'
        FieldAlias = 'IDFACTURA'
      end
      item
        FieldName = 'COMISIONVENDEDOR'
        FieldAlias = 'COMISIONVENDEDOR'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
        FieldType = fftString
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'NOTAPEDIDO_ID'
        FieldAlias = 'NOTAPEDIDO_ID'
      end
      item
        FieldName = 'NOTAPEDIDO_NROCPBTE'
        FieldAlias = 'NOTAPEDIDO_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'ID_TRANSPORTE'
        FieldAlias = 'ID_TRANSPORTE'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'TAREAS'
        FieldAlias = 'TAREAS'
        FieldType = fftString
      end
      item
        FieldName = 'PRESUPUESTO_ID'
        FieldAlias = 'PRESUPUESTO_ID'
      end
      item
        FieldName = 'PRESUPUESTO_NROCPBTE'
        FieldAlias = 'PRESUPUESTO_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'NOTAVTA_ID'
        FieldAlias = 'NOTAVTA_ID'
      end
      item
        FieldName = 'NOTAVTA_NROCPBTE'
        FieldAlias = 'NOTAVTA_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'MUESTRACONDVENTA'
        FieldAlias = 'MUESTRACONDVENTA'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'MUESTRADEPOSITO'
        FieldAlias = 'MUESTRADEPOSITO'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'MUESTRALDR'
        FieldAlias = 'MUESTRALDR'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'MUESTRAIVA'
        FieldAlias = 'MUESTRAIVA'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldAlias = 'MUESTRAVENDEDOR'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'CON_GTIA_EXTENDIDA'
        FieldAlias = 'CON_GTIA_EXTENDIDA'
        FieldType = fftString
      end
      item
        FieldName = 'POLIZA'
        FieldAlias = 'POLIZA'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'MUESTRATELEFONO1'
        FieldAlias = 'MUESTRATELEFONO1'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRATELEFONO2'
        FieldAlias = 'MUESTRATELEFONO2'
        FieldType = fftString
      end
      item
        FieldName = 'CANT_BULTOS'
        FieldAlias = 'CANT_BULTOS'
      end
      item
        FieldName = 'MUESTRALDIRECCIONLDR'
        FieldAlias = 'MUESTRALDIRECCIONLDR'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'MUESTRACUITRANSPORTE'
        FieldAlias = 'MUESTRACUITRANSPORTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'MUESTRACONDIVATRANSPORTE'
        FieldAlias = 'MUESTRACONDIVATRANSPORTE'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'REMITO_ELECTRONICO'
        FieldAlias = 'REMITO_ELECTRONICO'
        FieldType = fftString
      end
      item
        FieldName = 'CAE'
        FieldAlias = 'CAE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'CAE_VENCIMIENTO'
        FieldAlias = 'CAE_VENCIMIENTO'
      end
      item
        FieldName = 'MUESTRACODIGOAFIP'
        FieldAlias = 'MUESTRACODIGOAFIP'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAOBSCLIENTE1'
        FieldAlias = 'MUESTRAOBSCLIENTE1'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'MUESTRAOBSCLIENTE2'
        FieldAlias = 'MUESTRAOBSCLIENTE2'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'DEVOLUCION'
        FieldAlias = 'DEVOLUCION'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRADIRTRANSPORTE'
        FieldAlias = 'MUESTRADIRTRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRATETRANSPORTE'
        FieldAlias = 'MUESTRATETRANSPORTE'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'MUESTRALOCALITRANSPORTE'
        FieldAlias = 'MUESTRALOCALITRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'ID_CHOFER'
        FieldAlias = 'ID_CHOFER'
      end
      item
        FieldName = 'MUESTRACHOFER'
        FieldAlias = 'MUESTRACHOFER'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'TRASNPORTE_UNIDAD'
        FieldAlias = 'TRASNPORTE_UNIDAD'
      end
      item
        FieldName = 'TRASNPORTE_ADICIONAL'
        FieldAlias = 'TRASNPORTE_ADICIONAL'
      end
      item
        FieldName = 'MUESTRANOMBRETRANSPORTE'
        FieldAlias = 'MUESTRANOMBRETRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRACPOSTALLDR'
        FieldAlias = 'MUESTRACPOSTALLDR'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRALOCALIDADLDR'
        FieldAlias = 'MUESTRALOCALIDADLDR'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'MUESTRATELE'
        FieldAlias = 'MUESTRATELE'
        FieldType = fftString
      end
      item
        FieldName = 'PEDIDO_ID'
        FieldAlias = 'PEDIDO_ID'
      end
      item
        FieldName = 'MUESTRA_UNI_TRANSPORTE'
        FieldAlias = 'MUESTRA_UNI_TRANSPORTE'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRA_AUX_TRANSPORTE'
        FieldAlias = 'MUESTRA_AUX_TRANSPORTE'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'ID_TRANSFERENCIA'
        FieldAlias = 'ID_TRANSFERENCIA'
      end
      item
        FieldName = 'MUESTRANOTAPEDIDO'
        FieldAlias = 'MUESTRANOTAPEDIDO'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'MUESTRA_ID_NOTAPEDIDO'
        FieldAlias = 'MUESTRA_ID_NOTAPEDIDO'
      end
      item
        FieldName = 'FECHA_DEVOLUCION_ALQ'
        FieldAlias = 'FECHA_DEVOLUCION_ALQ'
      end
      item
        FieldName = 'RENGLONES'
        FieldAlias = 'RENGLONES'
      end
      item
        FieldName = 'DIASALQ'
        FieldAlias = 'DIASALQ'
      end
      item
        FieldName = 'FECHA_ENTREGA'
        FieldAlias = 'FECHA_ENTREGA'
      end
      item
        FieldName = 'MUESTRAPROVINCIA'
        FieldAlias = 'MUESTRAPROVINCIA'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'LETRACOT'
        FieldAlias = 'LETRACOT'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRADOMINIOUNIDTR'
        FieldAlias = 'MUESTRADOMINIOUNIDTR'
        FieldType = fftString
        Size = 12
      end
      item
        FieldName = 'COT'
        FieldAlias = 'COT'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRADIRECCION_CALLE'
        FieldAlias = 'MUESTRADIRECCION_CALLE'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'MUESTRADIRECCION_NRO'
        FieldAlias = 'MUESTRADIRECCION_NRO'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRADIRECCION_PISO'
        FieldAlias = 'MUESTRADIRECCION_PISO'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRADIRECCION_DEPTO'
        FieldAlias = 'MUESTRADIRECCION_DEPTO'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRANOMBREUSUARIOREAL'
        FieldAlias = 'MUESTRANOMBREUSUARIOREAL'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'REMITO_IMPRENTA'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'REMITO_FECHA_RANGO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'REMITO_DIRECCION'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'REMITO_CAI'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'REMITO_VENCIMIENTO_CAI'
        FieldType = fftString
        Size = 20
      end>
  end
  object frxDBDetalle: TfrxDBDataset
    UserName = 'frxDBDetalle'
    CloseDataSource = False
    DataSource = DatosRemitos.DSRtoDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 472
    Top = 504
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'Id'
      end
      item
        FieldName = 'ID_CABRTO'
        FieldAlias = 'ID_CABRTO'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TipoCpbte'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NroCpbte'
      end
      item
        FieldName = 'RENGLON'
        FieldAlias = 'Renglon'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CodigoArticulo'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'Detalle'
      end
      item
        FieldName = 'DETALLE_ADICIONAL'
        FieldAlias = 'DETALLE_ADICIONAL'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'Unidad'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'Cantidad'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DesglozaIVA'
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'Modo_Gravamen'
      end
      item
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_Tasa'
      end
      item
        FieldName = 'TIPOIVA_TASA'
        FieldAlias = 'TipoIva_Tasa'
      end
      item
        FieldName = 'IVA_SOBRETASA'
        FieldAlias = 'IVA_SobreTasa'
      end
      item
        FieldName = 'TIPOIVA_SOBRETASA'
        FieldAlias = 'TipoIva_SobreTasa'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'Descuento'
      end
      item
        FieldName = 'TOTAL_GRAVADO'
        FieldAlias = 'TOTAL_GRAVADO'
      end
      item
        FieldName = 'TOTAL_EXENTO'
        FieldAlias = 'TOTAL_EXENTO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'Total'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'Deposito'
      end
      item
        FieldName = 'MARGEN'
        FieldAlias = 'Margen'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'Afecta_Stock'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'Calcula_SobreTasa'
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
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'LOTE'
        FieldAlias = 'LOTE'
      end
      item
        FieldName = 'OBSERVACION'
        FieldAlias = 'OBSERVACION'
      end
      item
        FieldName = 'NOTAVENTA_ID'
        FieldAlias = 'NOTAVENTA_ID'
      end
      item
        FieldName = 'NOTAVENTA_ID_DET'
        FieldAlias = 'NOTAVENTA_ID_DET'
      end
      item
        FieldName = 'NRO'
        FieldAlias = 'NRO'
      end
      item
        FieldName = 'COSTO_GRAVADO'
        FieldAlias = 'Costo_Gravado'
      end
      item
        FieldName = 'COSTO_EXENTO'
        FieldAlias = 'Costo_Exento'
      end
      item
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'Costo_Total'
      end
      item
        FieldName = 'UNITARIO_GRAVADO'
        FieldAlias = 'Unitario_Gravado'
      end
      item
        FieldName = 'IVA_UNITARIO'
        FieldAlias = 'IVA_UNITARIO'
      end
      item
        FieldName = 'UNITARIO_EXENTO'
        FieldAlias = 'Unitario_Exento'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'Unitario_Total'
      end
      item
        FieldName = 'IVA_TOTAL'
        FieldAlias = 'IVA_TOTAL'
      end
      item
        FieldName = 'MUESTRAMONEDA'
        FieldAlias = 'MUESTRAMONEDA'
      end
      item
        FieldName = 'MUESTRASIGNO'
        FieldAlias = 'MUESTRASIGNO'
      end
      item
        FieldName = 'MUESTRACONTENIDO'
        FieldAlias = 'MUESTRACONTENIDO'
      end
      item
        FieldName = 'MUESTRAPRESENTACION'
        FieldAlias = 'MUESTRAPRESENTACION'
      end
      item
        FieldName = 'CODIGOBARRA'
        FieldAlias = 'CODIGOBARRA'
      end
      item
        FieldName = 'MUESTRACODALTERNATIVO'
        FieldAlias = 'MUESTRACODALTERNATIVO'
      end
      item
        FieldName = 'PRECIO_EDITABLE'
        FieldAlias = 'PRECIO_EDITABLE'
      end
      item
        FieldName = 'CANT_FACTURA'
        FieldAlias = 'CANT_FACTURA'
      end
      item
        FieldName = 'PRESENTACION_CANT'
        FieldAlias = 'PRESENTACION_CANT'
      end
      item
        FieldName = 'CANTIDAD_UNIDADES'
        FieldAlias = 'CANTIDAD_UNIDADES'
      end
      item
        FieldName = 'ID_MERCA_ACOPIO_DET'
        FieldAlias = 'ID_MERCA_ACOPIO_DET'
      end
      item
        FieldName = 'MUESTRARUBRO'
        FieldAlias = 'MUESTRARUBRO'
      end
      item
        FieldName = 'MUESTRADETALLERUBRO'
        FieldAlias = 'MUESTRADETALLERUBRO'
      end
      item
        FieldName = 'MUESTRASUBRUB'
        FieldAlias = 'MUESTRASUBRUB'
      end
      item
        FieldName = 'MUESTRADETALLESUBRUB'
        FieldAlias = 'MUESTRADETALLESUBRUB'
      end
      item
        FieldName = 'PRESENTACION_UNIDAD'
        FieldAlias = 'PRESENTACION_UNIDAD'
      end>
  end
  object frxDBImpuestos: TfrxDBDataset
    UserName = 'frxDBImpuestos'
    CloseDataSource = False
    DataSource = DatosRemitos.DSImpuestos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 464
    Top = 456
    FieldDefs = <
      item
        FieldName = 'ID_IMPUESTO'
        FieldAlias = 'ID_IMPUESTO'
      end
      item
        FieldName = 'ID_RTOCAB'
        FieldAlias = 'ID_RTOCAB'
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
    Left = 440
    Top = 384
  end
  object PopupMenu1: TPopupMenu
    Left = 476
    Top = 293
    object CambiarNro1: TMenuItem
      Action = CambiarNro
    end
    object DesmarcarImpreso1: TMenuItem
      Action = DesmarcarImpreso
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LimpiarelcampoIdFacdelosRtosSinFc1: TMenuItem
      Action = LimpiarRtosSinFc
      Caption = 'Limpiar el campo Id_Fac de los Rtos Sin.Facturar'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MarcarEntrgado1: TMenuItem
      Action = MarcarEntrgado
    end
    object MarcarNoFacturable1: TMenuItem
      Action = MarcarNoFacturable
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object BusquedaPorReferencia1: TMenuItem
      Action = BusqedarPorReferencia
    end
    object RecuperaRto1: TMenuItem
      Action = RecuperaRto
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object RecuperaRtoparafacturar1: TMenuItem
      Action = RecalcuoPrecios
    end
    object GenerarMovStock1: TMenuItem
      Action = GenerarMovStock
      Caption = 'Generar Mov Stock'
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object OrdenarArticulosImpresionPorSubRubros1: TMenuItem
      Caption = 'Ordenar Articulos Impresion Por Sub Rubros '
      OnClick = OrdenarArticulosImpresionPorSubRubros1Click
    end
    object OrdenarArticulosImpresionPorLote: TMenuItem
      Caption = 'Ordenar Articulos Impresion Por Lote/Reng'
      OnClick = OrdenarArticulosImpresionPorLoteClick
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object DevolverAlquiler: TMenuItem
      Action = DevolverAlq
      Caption = 'Devolver Alquiler'
    end
  end
  object jvAlerta: TJvDesktopAlert
    Options = [daoCanClick]
    Location.Position = dapActiveFormCenter
    Location.Top = 412
    Location.Left = 146
    Location.Width = 0
    Location.Height = 150
    StyleOptions.StartInterval = 5
    StyleOptions.StartSteps = 5
    StyleOptions.DisplayDuration = 5000
    HeaderText = 'Estado de Cliente'
    MessageText = 'Cliente Con Credito Exedido en el tiempo permitido ....'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Segoe UI'
    HeaderFont.Style = [fsBold]
    ShowHint = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    Buttons = <>
    Left = 16
    Top = 408
  end
  object PopupMenu2: TPopupMenu
    Left = 332
    Top = 357
    object CopiarDetalle1: TMenuItem
      Action = CopiarDetalle
    end
    object PegarDetalle1: TMenuItem
      Action = PegarDetalle
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object CopiarPortaPaplesWindows1: TMenuItem
      Caption = 'Copiar a Porta Papeles de Windows'
      OnClick = CopiarPortaPaplesWindows1Click
    end
    object Columnas1: TMenuItem
      Caption = 'Columnas a Copiar al Porta Papeles'
      OnClick = Columnas1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object ImportarDesdeExcel1: TMenuItem
      Action = ImportarDesdeXLS
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object ExpresarUnidadesenEnteros1: TMenuItem
      Caption = 'Expresar Unidades Stock en Enteros'
      OnClick = ExpresarUnidadesenEnteros1Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object MostrarTasaIva1: TMenuItem
      Caption = 'Mostrar Tasa Iva'
      Checked = True
      OnClick = MostrarTasaIva1Click
    end
    object MostrarSignoMoneda1: TMenuItem
      Caption = 'Mostrar Signo Moneda'
      Checked = True
      OnClick = MostrarSignoMoneda1Click
    end
    object MostrarPrecioUnitario1: TMenuItem
      Caption = 'Mostrar Precio Unitario'
      Checked = True
      OnClick = MostrarPrecioUnitario1Click
    end
    object MostrarDescuento1: TMenuItem
      Caption = 'Mostrar Descuento'
      Checked = True
      OnClick = MostrarDescuento1Click
    end
    object MostrarTotal1: TMenuItem
      Caption = 'Mostrar Total'
      Checked = True
      OnClick = MostrarTotal1Click
    end
    object MostrarUnidadesdeStokc1: TMenuItem
      Caption = 'Mostrar Unidades de Stock'
      Checked = True
      OnClick = MostrarUnidadesdeStokc1Click
    end
    object MostrarFacturaAsociadad1: TMenuItem
      Caption = 'Mostrar Factura Asociadad'
      Checked = True
      OnClick = MostrarFacturaAsociadad1Click
    end
  end
  object frEmpresa: TfrxDBDataset
    UserName = 'frEmpresa'
    CloseDataSource = False
    DataSet = DatosRemitos.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 280
    Top = 496
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
      end
      item
        FieldName = 'ID_CPOSTAL'
        FieldAlias = 'ID_CPOSTAL'
      end
      item
        FieldName = 'FECHA_INICIO_ACTI'
        FieldAlias = 'FECHA_INICIO_ACTI'
      end
      item
        FieldName = 'CODIGO_COT'
        FieldAlias = 'CODIGO_COT'
      end
      item
        FieldName = 'COD_ACTIVIDAD'
        FieldAlias = 'COD_ACTIVIDAD'
      end
      item
        FieldName = 'DIRECCION_NRO'
        FieldAlias = 'DIRECCION_NRO'
      end>
  end
  object dskAviso: TJvDesktopAlert
    HelpContext = 872
    Colors.WindowFrom = clWhite
    Colors.WindowTo = clMoneyGreen
    Location.Position = dapActiveFormCenter
    Location.Top = 90
    Location.Left = 0
    Location.Width = 300
    Location.Height = 80
    Location.AlwaysResetPosition = False
    StyleOptions.DisplayDuration = 90000
    HeaderText = 'Aviso'
    MessageText = 'Aviso'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ShowHint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Buttons = <>
    Image.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777F7F
      FFFFFFFFFFFFFFFFFFFFF777777777FFFFFFFFFFFFFFFFFFFFFF778887777FFF
      FFFFFFFFFFFFFFFFFFFF7877FFFFFFFFFF777FFFFFFFFFFFFF77877FFFF78788
      7F77FFFFFFFFFFFFFFF777FFFF77777777F7FFFFFFFFFFFFFF7787FFF7877777
      7877FFFFFFFFFFF7788887FFF88788888877FFFFFFFFFF78884887FFF8787788
      7F7FFFFFFFFFFF8777848877F8887877777FFFFFFFFFFF8F7788888878788777
      77FFFFFFFFFFFF7F778447888847777777FFFFFFFFFFFFF77788888787788777
      7FFFFFFFFFFFFFFF77FFF77778877777FFFFFFFFFFFFFFFFFFFFF7788877777F
      FFFFFFFFFFFFFFFFFFFFF48887777FFFFFFFFFFFFFFFFFFFFFFF888777FFFFFF
      FFFFFFFFFFFFFFFFF78887777FFFFFFFFFFFFFFFFFFFFF78888777FFFFFFFFFF
      FFFFFFFFFFF8888888777FFFFFFFFFFFFFFFFFFFFFF88848777FFFFFFFFFFFFF
      FFFFFFFFFFF8888777FFFFFFFFFFFFFFFFFFFFFFFF87777FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000}
    Left = 32
    Top = 336
  end
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Se' +
      'ttings\usuario\Mis documentos\Padron Embargos.xls;Extended Prope' +
      'rties=Excel 8.0;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 96
    Top = 418
  end
  object ADODSDetalelleXLS: TADODataSet
    Connection = ADOConnection
    CursorType = ctStatic
    CommandText = 'Hoja1$'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 138
    Top = 487
  end
  object OpenDialog: TOpenDialog
    Left = 256
    Top = 423
  end
  object ComBuscadorLdr: TComBuscador
    Data = DatosRemitos.CDSBuscaLdr
    Campo = 'codigo_ldr'
    Titulo = 'Lugar de Recepcion'
    rOk = False
    Left = 560
    Top = 504
  end
  object ComBuscadorConVta: TComBuscador
    Data = DatosRemitos.CDSBuscaCondVenta
    Campo = 'CodigoPago'
    Titulo = 'Condicion de Venta'
    rOk = False
    Left = 624
    Top = 400
  end
  object ComBuscadorSuc: TComBuscador
    Data = DatosRemitos.CDSBuscaSucursal
    Campo = 'codigo'
    Titulo = 'Sucursal'
    rOk = False
    Left = 848
    Top = 488
  end
  object ComBuscadorVendedor: TComBuscador
    Data = DatosRemitos.CDSBuscaVendedor
    Campo = 'codigo'
    Titulo = 'Vendedores'
    rOk = False
    Left = 696
    Top = 456
  end
  object ComBuscadorDeposito: TComBuscador
    Data = DatosRemitos.CDSBuscaDeposito
    Campo = 'id'
    Titulo = 'Depositos'
    rOk = False
    Left = 592
    Top = 488
  end
  object frxDBTroqueles: TfrxDBDataset
    UserName = 'frxDBTroqueles'
    CloseDataSource = False
    DataSource = DatosRemitos.DSRtoTroqueles
    BCDToCurrency = False
    DataSetOptions = []
    Left = 232
    Top = 360
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_RTO'
        FieldAlias = 'ID_RTO'
      end
      item
        FieldName = 'ID_TROQUEL'
        FieldAlias = 'ID_TROQUEL'
      end
      item
        FieldName = 'NRO_TROQUEL'
        FieldAlias = 'NRO_TROQUEL'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end>
  end
  object frxDBSucursal: TfrxDBDataset
    UserName = 'frxDBSucursal'
    CloseDataSource = False
    DataSet = DatosRemitos.CDSSucursal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 524
    Top = 421
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
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end>
  end
  object ComBuscadorLote: TComBuscador
    Data = DatosRemitos.CDSBuscaLotes
    Campo = 'id'
    Titulo = 'Lotes de Mercaderia'
    rOk = False
    Left = 244
    Top = 233
  end
end

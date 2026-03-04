inherited FormTicketVta: TFormTicketVta
  Left = 434
  Top = 133
  Caption = 'Ticke Vta Contado'
  ClientHeight = 639
  ClientWidth = 762
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  ExplicitWidth = 780
  ExplicitHeight = 680
  DesignSize = (
    762
    639)
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Top = 23
    Width = 762
    Height = 563
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 23
    ExplicitWidth = 762
    ExplicitHeight = 563
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 762
      Height = 121
      Align = alTop
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      object DBText1: TDBText
        Left = 495
        Top = 43
        Width = 84
        Height = 24
        Alignment = taCenter
        AutoSize = True
        DataField = 'LETRAFAC'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtMuestraComprobante: TDBText
        Left = 335
        Top = 19
        Width = 128
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
      object DBText3: TDBText
        Left = 465
        Top = 45
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
      object spClienteModif: TSpeedButton
        Left = 362
        Top = 55
        Width = 23
        Height = 22
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
        ParentShowHint = False
        ShowHint = True
        OnClick = spClienteModifClick
      end
      object dbtCLASECPBTE: TDBText
        Left = 636
        Top = 77
        Width = 26
        Height = 17
        DataField = 'LISTAPRECIO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 636
        Top = 5
        Width = 59
        Height = 13
        DataField = 'NRO_Z'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 77
        Top = 40
        Width = 114
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
      object DBText7: TDBText
        Left = 199
        Top = 40
        Width = 133
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
      object DBText9: TDBText
        Left = 496
        Top = 4
        Width = 83
        Height = 17
        Alignment = taRightJustify
        DataField = 'ID_FC'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText12: TDBText
        Left = 349
        Top = 5
        Width = 58
        Height = 14
        DataField = 'MUESTRACODIGOAFIP'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 40
        Top = 2
        Width = 58
        Height = 14
        DataField = 'FECHA_FISCAL'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel1: TLabel
        Left = 6
        Top = 2
        Width = 33
        Height = 13
        Caption = 'Fecha '
        Transparent = True
      end
      object RxLabel5: TLabel
        Left = 100
        Top = 3
        Width = 87
        Height = 13
        Caption = 'Sucursal de Venta'
        Transparent = True
      end
      object RxLabel7: TLabel
        Left = 577
        Top = 14
        Width = 113
        Height = 24
        Caption = 'Nro.de Ticket'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RxLabel8: TLabel
        Left = 6
        Top = 40
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Transparent = True
      end
      object RxLabel2: TLabel
        Left = 8
        Top = 78
        Width = 46
        Height = 13
        Caption = 'Vendedor'
        Transparent = True
      end
      object RxLabel3: TLabel
        Left = 580
        Top = 77
        Width = 48
        Height = 13
        Caption = 'Lista Nro.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object JvLabel1: TLabel
        Left = 601
        Top = 5
        Width = 27
        Height = 13
        Caption = 'Nro.Z'
        Transparent = True
      end
      object JvLabel2: TLabel
        Left = 300
        Top = 78
        Width = 42
        Height = 13
        Caption = 'Deposito'
        Transparent = True
      end
      object RxLabel11: TLabel
        Left = 289
        Top = 3
        Width = 52
        Height = 13
        Caption = 'Tipo.Cpbte'
        Transparent = True
      end
      object btNuevoCliente: TSpeedButton
        Left = 391
        Top = 55
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
      object dbeSuc: TDBEdit
        Left = 523
        Top = 40
        Width = 57
        Height = 32
        TabStop = False
        DataField = 'SucFac'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbeNumero: TDBEdit
        Left = 584
        Top = 40
        Width = 108
        Height = 32
        TabStop = False
        DataField = 'NumeroFac'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object dbeNombre: TDBEdit
        Left = 72
        Top = 55
        Width = 286
        Height = 21
        Color = clInfoBk
        DataField = 'Nombre'
        DataSource = DSBase
        Enabled = False
        TabOrder = 8
      end
      object dbeMuestraSucursal: TDBEdit
        Left = 138
        Top = 17
        Width = 146
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraSucursal'
        DataSource = DSBase
        Enabled = False
        TabOrder = 7
      end
      object dbeMuestraVendedor: TDBEdit
        Left = 72
        Top = 92
        Width = 217
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRAVENDEDOR'
        DataSource = DSBase
        Enabled = False
        TabOrder = 9
      end
      object dbeFechaVta: TJvDBDateEdit
        Left = 7
        Top = 17
        Width = 87
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHAVTA'
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
        OnExit = dbeFechaVtaExit
      end
      object RxCSucursal: TJvDBComboEdit
        Left = 96
        Top = 17
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        ClickKey = 16397
        DataField = 'Sucursal'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 16
        TabOrder = 2
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxCSucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 291
        Top = 17
        Width = 42
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        ClickKey = 16397
        DataField = 'ID_TIPOCOMPROBANTE'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 16
        TabOrder = 3
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object rxcVendedor: TJvDBComboEdit
        Left = 5
        Top = 92
        Width = 65
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'VENDEDOR'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 19
        TabOrder = 4
        OnButtonClick = BuscadorVendedorExecute
        OnKeyDown = rxcVendedorKeyDown
      end
      object RxCCodigo: TJvDBComboEdit
        Left = 5
        Top = 56
        Width = 65
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        ClickKey = 16397
        DataField = 'Codigo'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 14
        TabOrder = 1
        OnButtonClick = BuscarClienteExecute
        OnKeyDown = RxDBComboEdit1KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 300
        Top = 92
        Width = 217
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRADEPOSITO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 10
      end
    end
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 121
      Width = 762
      Height = 442
      ActivePage = PagDetalles
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      TabOrder = 1
      TabPosition = tpBottom
      TabStop = False
      OnChange = pcDetalleFacturaChange
      OnEnter = pcDetalleFacturaEnter
      object PagDetalles: TTabSheet
        Caption = '&Detalles'
        DesignSize = (
          754
          416)
        object Label4: TLabel
          Left = 380
          Top = 298
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
          ExplicitTop = 294
        end
        object spMenu: TSpeedButton
          Left = 275
          Top = 292
          Width = 23
          Height = 19
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
          ExplicitTop = 288
        end
        object DBText5: TDBText
          Left = 196
          Top = 390
          Width = 58
          Height = 20
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRASIGNOMONEDACPBTE'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 386
        end
        object DBText6: TDBText
          Left = 260
          Top = 390
          Width = 58
          Height = 20
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'MONEDA_CPBTE_COTIZACION'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 386
        end
        object DBText8: TDBText
          Left = 43
          Top = 390
          Width = 106
          Height = 20
          Anchors = [akLeft, akBottom]
          DataField = 'NRORTO'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 386
        end
        object Label1: TLabel
          Left = 4
          Top = 390
          Width = 33
          Height = 16
          Anchors = [akLeft, akBottom]
          Caption = 'Rto.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 386
        end
        object spProduccion: TSpeedButton
          Left = 668
          Top = 298
          Width = 25
          Height = 26
          Action = EditarProduccion
          Anchors = [akLeft, akBottom]
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
          ExplicitTop = 294
        end
        object DBText14: TDBText
          Left = 52
          Top = 291
          Width = 117
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'VUELTO'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 287
        end
        object shPP: TShape
          Left = 304
          Top = 292
          Width = 23
          Height = 10
          Anchors = [akLeft, akBottom]
          Brush.Color = clGreen
          Shape = stCircle
          Visible = False
          ExplicitTop = 288
        end
        object JvLabel3: TLabel
          Left = 3
          Top = 310
          Width = 71
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Observaciones'
          Transparent = True
          ExplicitTop = 306
        end
        object JvLabel4: TLabel
          Left = 3
          Top = 288
          Width = 41
          Height = 16
          Anchors = [akLeft, akBottom]
          Caption = 'Vuelto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          ExplicitTop = 284
        end
        object Label2: TLabel
          Left = 357
          Top = 299
          Width = 18
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = '(F4)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 295
        end
        object pnTotal: TPanel
          Left = 382
          Top = 344
          Width = 357
          Height = 44
          Anchors = [akLeft, akRight, akBottom]
          Color = clBlue
          ParentBackground = False
          TabOrder = 6
          DesignSize = (
            357
            44)
          object Label7: TLabel
            Left = 9
            Top = 8
            Width = 56
            Height = 29
            Anchors = [akLeft, akBottom]
            Caption = 'Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clAqua
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbtTotal: TDBText
            Left = 96
            Top = 8
            Width = 195
            Height = 26
            Alignment = taRightJustify
            Anchors = [akLeft, akBottom]
            Color = clTeal
            DataField = 'Total'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object DBGrillaDetalle: TDBGrid
          Left = 0
          Top = 0
          Width = 754
          Height = 286
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DatosVentasTicket.DSVentaDet
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clBlue
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = DBGrillaDetalleColEnter
          OnDrawColumnCell = DBGrillaDetalleDrawColumnCell
          OnDblClick = DBGrillaDetalleDblClick
          OnEditButtonClick = DBGrillaDetalleEditButtonClick
          OnEnter = DBGrillaDetalleEnter
          OnExit = DBGrillaDetalleExit
          OnKeyDown = DBGrillaDetalleKeyDown
          OnKeyPress = DBGrillaDetalleKeyPress
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
              Width = 28
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
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
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 252
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 63
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
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 101
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 4
          Top = 354
          Width = 97
          Height = 24
          Anchors = [akLeft, akBottom]
          Enabled = False
          TabOrder = 1
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 4
            Width = 73
            Height = 17
            Caption = 'Impreso'
            DataField = 'Impreso'
            DataSource = DSBase
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object dbeDscto: TDBEdit
          Left = 436
          Top = 296
          Width = 47
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 541
          Top = 296
          Width = 93
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          DataField = 'DSTOIMPORTE'
          DataSource = DSBase
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 3
          Top = 326
          Width = 262
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          Color = clWhite
          DataField = 'OBSERVACION1'
          DataSource = DSBase
          TabOrder = 4
        end
        object pnIva: TPanel
          Left = 287
          Top = 323
          Width = 406
          Height = 19
          Anchors = [akLeft, akBottom]
          TabOrder = 5
          object Label6: TLabel
            Left = 152
            Top = 2
            Width = 25
            Height = 13
            Caption = 'IVA:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbIva: TLabel
            Left = 212
            Top = 2
            Width = 21
            Height = 13
            Caption = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 269
            Top = 2
            Width = 33
            Height = 13
            Caption = 'IIBB.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText11: TDBText
            Left = 342
            Top = 1
            Width = 58
            Height = 19
            Alignment = taRightJustify
            DataField = 'PERCEPCION_IB_IMPORTE'
            DataSource = DSBase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText17: TDBText
            Left = 307
            Top = 0
            Width = 28
            Height = 19
            Alignment = taRightJustify
            DataField = 'PERCEPCION_IB_TASA'
            DataSource = DSBase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object pnPercep: TPanel
            Left = 1
            Top = 1
            Width = 130
            Height = 17
            Align = alLeft
            TabOrder = 0
            object Label20: TLabel
              Left = 4
              Top = 2
              Width = 55
              Height = 13
              Caption = 'Perc.IVA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbPercepcionIVA: TLabel
              Left = 102
              Top = 1
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
      object PagValores: TTabSheet
        Caption = '&Valores'
        ImageIndex = 1
        DesignSize = (
          754
          416)
        inline FrameMovValoresIngreso1: TFrameMovValoresIngreso
          Left = 4
          Top = 4
          Width = 788
          Height = 256
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdLeftToRight
          DoubleBuffered = False
          Color = clBtnFace
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitWidth = 788
          ExplicitHeight = 256
          inherited lbTotalValores: TLabel
            Left = 203
            Top = 221
            Height = 13
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 203
            ExplicitTop = 221
            ExplicitHeight = 13
          end
          inherited Label25: TLabel
            Left = 4
            Top = 221
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 4
            ExplicitTop = 221
          end
          inherited DBText12: TDBText
            Left = 179
            Top = 0
            Font.Name = 'Arial'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 179
            ExplicitTop = 0
          end
          inherited Label46: TLabel
            Left = 40
            Top = 0
            Width = 20
            Height = 13
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 40
            ExplicitTop = 0
            ExplicitWidth = 20
            ExplicitHeight = 13
          end
          inherited DBText13: TDBText
            Left = 66
            Top = 0
            Font.Name = 'Arial'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 66
            ExplicitTop = 0
          end
          inherited Label51: TLabel
            Left = 4
            Top = 240
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 4
            ExplicitTop = 240
          end
          inherited lbResto: TLabel
            Left = 203
            Top = 240
            Height = 13
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 203
            ExplicitTop = 240
            ExplicitHeight = 13
          end
          inherited RxLabel4: TJvLabel
            Left = 7
            Top = 0
            ExplicitLeft = 7
            ExplicitTop = 0
          end
          inherited lbAvisoChe3: TLabel
            Left = 283
            Top = 243
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 283
            ExplicitTop = 243
          end
          inherited dbgMovimientos: TDBGrid
            Left = 1
            Top = 45
            Width = 270
            Height = 137
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'ID_FPAGO'
                Title.Alignment = taCenter
                Title.Caption = 'Id.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 33
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'MUESTRAFORMAPAGO'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Detalle'
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
                FieldName = 'UNIDADES'
                Title.Alignment = taCenter
                Title.Caption = 'Uni.'
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
                FieldName = 'DEBE'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Importe'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end>
          end
          inherited pcValores: TPageControl
            Left = 271
            Width = 430
            Height = 235
            ExplicitLeft = 271
            ExplicitWidth = 430
            ExplicitHeight = 235
            inherited tsEfectivo: TTabSheet
              ExplicitTop = 24
              ExplicitHeight = 206
              inherited dbt1: TDBText
                Left = 454
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 454
              end
              inherited RxLabel1: TJvLabel
                Width = 47
                Height = 13
                ExplicitWidth = 47
                ExplicitHeight = 13
              end
              inherited RxLabel2: TJvLabel
                Width = 51
                Height = 13
                ExplicitWidth = 51
                ExplicitHeight = 13
              end
              inherited RxLabel3: TJvLabel
                Width = 37
                Height = 13
                ExplicitWidth = 37
                ExplicitHeight = 13
              end
              inherited DBText14: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText15: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label60: TLabel
                Left = 337
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 337
              end
              inherited DBText38: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeUnidades: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeCotizacion: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeImporte: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
            end
            inherited tsChe3: TTabSheet
              ExplicitTop = 24
              ExplicitWidth = 422
              ExplicitHeight = 207
              inherited Label8: TLabel
                Width = 31
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 31
                ExplicitHeight = 13
              end
              inherited Label9: TLabel
                Left = 305
                Width = 20
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 305
                ExplicitWidth = 20
                ExplicitHeight = 13
              end
              inherited Label10: TLabel
                Width = 48
                Height = 26
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 48
                ExplicitHeight = 26
              end
              inherited Label11: TLabel
                Width = 48
                Height = 26
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 48
                ExplicitHeight = 26
              end
              inherited Label12: TLabel
                Width = 48
                Height = 26
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 48
                ExplicitHeight = 26
              end
              inherited Label13: TLabel
                Width = 48
                Height = 26
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 48
                ExplicitHeight = 26
              end
              inherited Label14: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label15: TLabel
                Left = 318
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 318
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
                Left = 302
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 302
              end
              inherited Label45: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label47: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label48: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbtID_Che3: TDBText
                Left = 336
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 336
              end
              inherited DBText16: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText17: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label53: TLabel
                Width = 21
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 21
                ExplicitHeight = 13
              end
              inherited Label54: TLabel
                Width = 40
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 40
                ExplicitHeight = 13
              end
              inherited Label55: TLabel
                Left = 386
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 386
              end
              inherited DBEdit4: TDBEdit
                Left = 353
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 353
              end
              inherited DBEBancoChe3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEEntregadoPorChe3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBENroChe3: TDBEdit
                Left = 329
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 329
              end
              inherited DBEEntregadoAChe3: TDBEdit
                Top = 99
                StyleElements = [seFont, seClient, seBorder]
                ExplicitTop = 99
              end
              inherited dbeunidadesChe3: TDBEdit
                Left = 337
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 337
              end
              inherited DBEFirmante: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeImporteChe3: TDBEdit
                Left = 339
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 339
              end
              inherited DBECuit: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit1: TDBEdit
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
            inherited tsTCredito: TTabSheet
              ExplicitTop = 24
              ExplicitHeight = 206
              inherited Panel2: TPanel
                Width = 528
                Height = 260
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 528
                ExplicitHeight = 260
                inherited Bevel1: TBevel
                  Width = 526
                  Height = 258
                  ExplicitWidth = 526
                  ExplicitHeight = 258
                end
                inherited Label19: TLabel
                  Width = 30
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 30
                  ExplicitHeight = 13
                end
                inherited Label20: TLabel
                  Width = 84
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 84
                  ExplicitHeight = 13
                end
                inherited Label21: TLabel
                  Width = 29
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 29
                  ExplicitHeight = 13
                end
                inherited Label22: TLabel
                  Width = 55
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 55
                  ExplicitHeight = 13
                end
                inherited Label23: TLabel
                  Width = 33
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 33
                  ExplicitHeight = 13
                end
                inherited DBText4: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label26: TLabel
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitHeight = 13
                end
                inherited Label27: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label29: TLabel
                  Width = 45
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 45
                  ExplicitHeight = 13
                end
                inherited Label34: TLabel
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitHeight = 13
                end
                inherited Label35: TLabel
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBTCoef: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label41: TLabel
                  Width = 53
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 53
                  ExplicitHeight = 13
                end
                inherited Label42: TLabel
                  Width = 55
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 55
                  ExplicitHeight = 13
                end
                inherited DBTValorCuota: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label43: TLabel
                  Width = 79
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 79
                  ExplicitHeight = 13
                end
                inherited DBTRecargo: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited Label44: TLabel
                  Width = 66
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 66
                  ExplicitHeight = 13
                end
                inherited Label49: TLabel
                  Width = 21
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 21
                  ExplicitHeight = 13
                end
                inherited Label50: TLabel
                  Width = 40
                  Height = 13
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 40
                  ExplicitHeight = 13
                end
                inherited dbtID_EFECTIVO1: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBText22: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBText23: TDBText
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited cbTCredito: TJvDBComboEdit
                  Height = 21
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitHeight = 21
                end
                inherited DBETc_Cuotas: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBETc_Titular: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBETc_Documento: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited dbeimporteTc: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited dbeUnidadesTc: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBEUnidadesNeto: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBEdit3: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBEdit22: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBEdit5: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBEdit6: TDBEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited DBTcFecha: TJvDBDateEdit
                  StyleElements = [seFont, seClient, seBorder]
                end
              end
            end
            inherited tsTransf: TTabSheet
              ExplicitTop = 24
              ExplicitHeight = 206
              inherited Label2: TLabel
                Width = 37
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 37
                ExplicitHeight = 13
              end
              inherited Label3: TLabel
                Width = 61
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 61
                ExplicitHeight = 13
              end
              inherited Label5: TLabel
                Width = 45
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 45
                ExplicitHeight = 13
              end
              inherited Label6: TLabel
                Width = 35
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 35
                ExplicitHeight = 13
              end
              inherited Label17: TLabel
                Width = 63
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 63
                ExplicitHeight = 13
              end
              inherited Label31: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbtID_EFECTIVO2: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText18: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText19: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label65: TLabel
                Width = 33
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 33
                ExplicitHeight = 13
              end
              inherited dbeNumero: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeMuestraCta: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeUnidadesTx: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeImporteTx: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeOrigenTx: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited ceCtaBco: TJvDBComboEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited DBEdit7: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
            end
            inherited tsCheques: TTabSheet
              ExplicitTop = 24
              ExplicitHeight = 206
              inherited Label4: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label18: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label24: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label28: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label30: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label32: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbNI: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbNF: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText2: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText1: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText5: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText6: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText7: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText8: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText9: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText10: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText11: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbtID_EFECTIVO3: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText36: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label62: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
            end
            inherited tsDebito: TTabSheet
              ExplicitTop = 24
              ExplicitHeight = 206
              inherited Label33: TLabel
                Width = 37
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 37
                ExplicitHeight = 13
              end
              inherited Label36: TLabel
                Width = 61
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 61
                ExplicitHeight = 13
              end
              inherited Label37: TLabel
                Width = 45
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 45
                ExplicitHeight = 13
              end
              inherited Label38: TLabel
                Width = 35
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 35
                ExplicitHeight = 13
              end
              inherited Label39: TLabel
                Width = 63
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 63
                ExplicitHeight = 13
              end
              inherited Label40: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbtID_EFECTIVO4: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText20: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText21: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeNroDebito: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeMuestraCtaDebito: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeUnidadesDebito: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited ImporteDebito: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeOriginadoDebito: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited rcdcIdCtaBcoDebito: TJvDBComboEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
            end
            inherited tsValoresCompartidos: TTabSheet
              ExplicitTop = 24
              ExplicitHeight = 206
              inherited DBText24: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText25: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText26: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label52: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText27: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText28: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText29: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText30: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText31: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText32: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeUnidadesValoresComp: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited DBEdit2: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
            end
            inherited tsCtaCte: TTabSheet
              ExplicitTop = 24
              ExplicitHeight = 206
              inherited Label56: TLabel
                Width = 32
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 32
                ExplicitHeight = 13
              end
              inherited Label57: TLabel
                Width = 33
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 33
                ExplicitHeight = 13
              end
              inherited Label58: TLabel
                Width = 35
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 35
                ExplicitHeight = 13
              end
              inherited Label59: TLabel
                Width = 81
                Height = 26
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 81
                ExplicitHeight = 26
              end
              inherited Label61: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText33: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText34: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText35: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label63: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label64: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText37: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeDetalleCta: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbeImporteCta: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited dbcAjuste: TJvDBLookupCombo
                Height = 23
                ExplicitHeight = 23
              end
              inherited edNombreCliente: TDBEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited ceCliente: TJvDBComboEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
            end
          end
          inherited edMuestraCaja: TEdit
            Left = 56
            Width = 205
            Height = 21
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 56
            ExplicitWidth = 205
            ExplicitHeight = 21
          end
          inherited ceCaja: TJvComboEdit
            Left = 2
            Height = 21
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 2
            ExplicitHeight = 21
          end
          inherited DSPChe3: TDataSetProvider
            Left = 118
          end
          inherited DSPDebitos: TDataSetProvider
            Left = 104
            Top = 216
          end
          inherited DSDebitos: TDataSource
            Left = 288
            Top = 160
          end
          inherited CDSDebitos: TClientDataSet
            Left = 278
            Top = 168
          end
          inherited CDSCajaMov: TClientDataSet
            AfterPost = FrameMovValoresIngreso1CDSCajaMovAfterPost
            BeforeDelete = FrameMovValoresIngreso1CDSCajaMovBeforeDelete
            AfterDelete = FrameMovValoresIngreso1CDSCajaMovAfterDelete
          end
          inherited QCoeficienteTC: TFDQuery
            Left = 856
            Top = 8
          end
          inherited QCajaCab: TFDQuery
            Left = 456
            Top = 224
          end
          inherited QCompAjuste: TFDQuery
            Top = 48
          end
        end
        object Panel2: TPanel
          Left = 3
          Top = 191
          Width = 255
          Height = 25
          TabOrder = 1
          object DBText10: TDBText
            Left = 102
            Top = 4
            Width = 140
            Height = 17
            Alignment = taRightJustify
            DataField = 'Total'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 7
            Top = 6
            Width = 75
            Height = 13
            Caption = 'Total de Vta.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DBImage1: TDBImage
          Left = 11
          Top = 263
          Width = 138
          Height = 129
          DataField = 'QRIMAGE'
          DataSource = DSBase
          Proportional = True
          TabOrder = 2
        end
      end
      object PagLotes: TTabSheet
        Caption = 'Lotes'
        ImageIndex = 2
        object dbgDetalleLotes: TDBGrid
          Left = 3
          Top = 12
          Width = 474
          Height = 181
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clTeal
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
              Title.Caption = 'Codigp'
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
          Left = 483
          Top = 13
          Width = 208
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
          object JvLabel8: TLabel
            Left = 15
            Top = 25
            Width = 33
            Height = 13
            Caption = 'Id Lote'
            Transparent = True
          end
          object JvDBComboEdit1: TJvDBComboEdit
            Left = 71
            Top = 19
            Width = 62
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            ClickKey = 16397
            DataField = 'ID_LOTE'
            Glyph.Data = {
              4E000000424D4E000000000000003E0000002800000009000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FF8000002480000024800000FF800000}
            ButtonWidth = 19
            TabOrder = 0
            OnButtonClick = BuscarLoteExecute
          end
          object Panel4: TPanel
            Left = 1
            Top = 52
            Width = 262
            Height = 103
            Caption = 'Panel3'
            Color = clMoneyGreen
            Enabled = False
            ParentBackground = False
            TabOrder = 1
            object JvLabel10: TLabel
              Left = 15
              Top = 18
              Width = 49
              Height = 13
              Caption = 'Despacho'
              Transparent = True
            end
            object JvLabel11: TLabel
              Left = 15
              Top = 45
              Width = 21
              Height = 13
              Caption = 'Lote'
              Transparent = True
            end
            object JvLabel9: TLabel
              Left = 15
              Top = 71
              Width = 42
              Height = 13
              Caption = 'Cantidad'
              Transparent = True
            end
            object DBEdit5: TDBEdit
              Left = 81
              Top = 14
              Width = 116
              Height = 21
              DataField = 'DESPACHO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object dbeCantidadLote: TDBEdit
              Left = 81
              Top = 41
              Width = 116
              Height = 21
              DataField = 'LOTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 81
              Top = 68
              Width = 116
              Height = 21
              DataField = 'CANTIDAD'
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
      end
      object pagCtaOrden: TTabSheet
        Caption = 'Por Cta y Orden'
        ImageIndex = 3
        object ceProveedor: TJvDBComboEdit
          Left = 8
          Top = 15
          Width = 60
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          ClickKey = 16397
          DataField = 'PROVEEDOR'
          DataSource = DSBase
          Glyph.Data = {
            4E000000424D4E000000000000003E0000002800000009000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FF8000002480000024800000FF800000}
          ButtonWidth = 19
          TabOrder = 0
          OnButtonClick = ceProveedorButtonClick
        end
        object dbeProveedor: TDBEdit
          Left = 74
          Top = 15
          Width = 286
          Height = 21
          Color = clInfoBk
          DataField = 'MUESTRAPROVEEDOR'
          DataSource = DSBase
          Enabled = False
          TabOrder = 1
        end
        object dbgConsignaciones: TDBGrid
          Left = 3
          Top = 48
          Width = 650
          Height = 273
          FixedColor = clMoneyGreen
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgConsignacionesColEnter
          OnEditButtonClick = BuscarRecepcionDetalleExecute
          OnEnter = dbgConsignacionesEnter
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Color = clInfoBk
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigp'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 271
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Cantidad'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 71
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'ID_MOV_RECEPCION_DET'
              ReadOnly = False
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 44
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRARECEPCIONNRO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 147
              Visible = True
            end>
        end
      end
      object pcConfig: TTabSheet
        Caption = 'Comandas'
        ImageIndex = 4
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 754
          Height = 344
          VertScrollBar.Range = 200
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoScroll = False
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          object grSector1: TGroupBox
            Left = 3
            Top = 0
            Width = 692
            Height = 78
            Caption = 'Sector 1'
            TabOrder = 0
            object Label8: TLabel
              Left = 9
              Top = 23
              Width = 37
              Height = 13
              Caption = 'Nombre'
            end
            object Label9: TLabel
              Left = 175
              Top = 23
              Width = 46
              Height = 13
              Caption = 'Impresora'
            end
            object Label10: TLabel
              Left = 338
              Top = 23
              Width = 48
              Height = 13
              Hint = 
                'C'#243'digos de Subrubros, entre comillas simples, separados por coma' +
                's. Ej: '#39'00001'#39', '#39'01020'#39
              Caption = 'Subrubros'
              ParentShowHint = False
              ShowHint = True
            end
            object cbPrinter1: TComboBox
              Left = 169
              Top = 42
              Width = 151
              Height = 21
              TabOrder = 0
              Text = 'cbPrinter1'
            end
            object eNombre1: TEdit
              Left = 9
              Top = 42
              Width = 145
              Height = 21
              TabOrder = 1
              Text = 'Sector 1'
            end
            object eSubrubros1: TEdit
              Left = 338
              Top = 42
              Width = 271
              Height = 21
              Hint = 
                'C'#243'digos de Subrubros entre comillas simples, separados por comas' +
                '. Ej: '#39'00001'#39', '#39'01020'#39'...'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object chActivo1: TCheckBox
              Left = 624
              Top = 44
              Width = 97
              Height = 17
              Caption = 'Activo'
              TabOrder = 3
            end
          end
          object grSector2: TGroupBox
            Left = 3
            Top = 84
            Width = 692
            Height = 82
            Caption = 'Sector 2'
            TabOrder = 1
            object Label11: TLabel
              Left = 9
              Top = 23
              Width = 37
              Height = 13
              Caption = 'Nombre'
            end
            object Label12: TLabel
              Left = 175
              Top = 23
              Width = 46
              Height = 13
              Caption = 'Impresora'
            end
            object Label13: TLabel
              Left = 338
              Top = 23
              Width = 48
              Height = 13
              Hint = 
                'C'#243'digos de Subrubros, entre comillas simples, separados por coma' +
                's. Ej: '#39'00001'#39', '#39'01020'#39
              Caption = 'Subrubros'
              ParentShowHint = False
              ShowHint = True
            end
            object cbPrinter2: TComboBox
              Left = 169
              Top = 42
              Width = 151
              Height = 21
              TabOrder = 0
              Text = 'cbPrinter2'
            end
            object eNombre2: TEdit
              Left = 9
              Top = 42
              Width = 145
              Height = 21
              TabOrder = 1
              Text = 'Sector 2'
            end
            object eSubrubros2: TEdit
              Left = 338
              Top = 42
              Width = 271
              Height = 21
              Hint = 
                'C'#243'digos de Subrubros entre comillas simples, separados por comas' +
                '. Ej: '#39'00001'#39', '#39'01020'#39'...'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object chActivo2: TCheckBox
              Left = 624
              Top = 44
              Width = 97
              Height = 17
              Caption = 'Activo'
              TabOrder = 3
            end
          end
          object grSector3: TGroupBox
            Left = 3
            Top = 164
            Width = 692
            Height = 74
            Caption = 'Sector 3'
            TabOrder = 2
            object Label14: TLabel
              Left = 9
              Top = 23
              Width = 37
              Height = 13
              Caption = 'Nombre'
            end
            object Label15: TLabel
              Left = 175
              Top = 23
              Width = 46
              Height = 13
              Caption = 'Impresora'
            end
            object Label16: TLabel
              Left = 338
              Top = 23
              Width = 48
              Height = 13
              Hint = 
                'C'#243'digos de Subrubros, entre comillas simples, separados por coma' +
                's. Ej: '#39'00001'#39', '#39'01020'#39
              Caption = 'Subrubros'
              ParentShowHint = False
              ShowHint = True
            end
            object cbPrinter3: TComboBox
              Left = 169
              Top = 42
              Width = 151
              Height = 21
              TabOrder = 0
              Text = 'cbPrinter3'
            end
            object eNombre3: TEdit
              Left = 9
              Top = 42
              Width = 145
              Height = 21
              TabOrder = 1
              Text = 'Sector 3'
            end
            object eSubrubros3: TEdit
              Left = 338
              Top = 42
              Width = 271
              Height = 21
              Hint = 
                'C'#243'digos de Subrubros entre comillas simples, separados por comas' +
                '. Ej: '#39'00001'#39', '#39'01020'#39'...'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object chActivo3: TCheckBox
              Left = 624
              Top = 44
              Width = 97
              Height = 17
              Caption = 'Activo'
              TabOrder = 3
            end
          end
          object grSector4: TGroupBox
            Left = 3
            Top = 244
            Width = 692
            Height = 74
            Caption = 'Sector 4'
            TabOrder = 3
            object Label17: TLabel
              Left = 9
              Top = 23
              Width = 37
              Height = 13
              Caption = 'Nombre'
            end
            object Label18: TLabel
              Left = 175
              Top = 23
              Width = 46
              Height = 13
              Caption = 'Impresora'
            end
            object Label19: TLabel
              Left = 338
              Top = 23
              Width = 48
              Height = 13
              Hint = 
                'C'#243'digos de Subrubros, entre comillas simples, separados por coma' +
                's. Ej: '#39'00001'#39', '#39'01020'#39
              Caption = 'Subrubros'
              ParentShowHint = False
              ShowHint = True
            end
            object cbPrinter4: TComboBox
              Left = 169
              Top = 42
              Width = 151
              Height = 21
              TabOrder = 0
              Text = 'cbPrinter4'
            end
            object eNombre4: TEdit
              Left = 9
              Top = 42
              Width = 145
              Height = 21
              TabOrder = 1
              Text = 'Sector 4'
            end
            object eSubrubros4: TEdit
              Left = 338
              Top = 42
              Width = 271
              Height = 21
              Hint = 
                'C'#243'digos de Subrubros entre comillas simples, separados por comas' +
                '. Ej: '#39'00001'#39', '#39'01020'#39'...'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object chActivo4: TCheckBox
              Left = 624
              Top = 44
              Width = 97
              Height = 17
              Caption = 'Activo'
              TabOrder = 3
            end
          end
        end
      end
      object pagData: TTabSheet
        Caption = 'Data'
        ImageIndex = 5
        object Splitter2: TSplitter
          Left = 0
          Top = 249
          Width = 754
          Height = 7
          Cursor = crVSplit
          Align = alTop
          ExplicitWidth = 712
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 754
          Height = 61
          Align = alTop
          DataSource = DSBase
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOIVA'
              Title.Alignment = taCenter
              Title.Caption = 'Iva'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUIT'
              Title.Alignment = taCenter
              Title.Caption = 'Cui'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHAVTA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOGRAV1'
              Title.Alignment = taCenter
              Title.Caption = 'Neto 1'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOGRAV2'
              Title.Alignment = taCenter
              Title.Caption = 'Neto 2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DSTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dscto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DSTOIMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Dsc.Impo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOEXEN1'
              Title.Alignment = taCenter
              Title.Caption = 'N.Exe 1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETOEXEN2'
              Title.Alignment = taCenter
              Title.Caption = 'N.Exe 2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESGLOZAIVA'
              Title.Alignment = taCenter
              Title.Caption = 'Dz.Iva'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAJA_POR_DEFECTO'
              Title.Alignment = taCenter
              Title.Caption = 'Caja'
              Visible = True
            end>
        end
        object dbgDatos: TDBGrid
          Left = 0
          Top = 61
          Width = 754
          Height = 188
          Align = alTop
          PopupMenu = PopupMenu3
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESGLOZAIVA'
              Title.Alignment = taCenter
              Title.Caption = 'Ds.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MODO_GRAVAMEN'
              Title.Alignment = taCenter
              Title.Caption = 'Mg'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IVA_TASA'
              Title.Alignment = taCenter
              Title.Caption = '%IVA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOIVA_TASA'
              Title.Alignment = taCenter
              Title.Caption = 'Cod.Iva'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_GRAVADO'
              Title.Alignment = taCenter
              Title.Caption = 'Un.Grav'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_EXENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Un.Exe'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IVA_UNITARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Iva Uni'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_EXENTO'
              Title.Alignment = taCenter
              Title.Caption = 'T.Ex.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_GRAVADO'
              Title.Alignment = taCenter
              Title.Caption = 'Total Grav.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IVA_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Iva Tot.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOIB_TASA'
              Title.Alignment = taCenter
              Title.Caption = 'IIBB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRAVADO_IB'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 256
          Width = 754
          Height = 92
          Align = alTop
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_IMPUESTO'
              Title.Alignment = taCenter
              Title.Caption = 'Id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_FCVTACAB'
              Title.Alignment = taCenter
              Title.Caption = 'Id Cab'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_GRAVAMEN'
              Title.Alignment = taCenter
              Title.Caption = 'Cod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Title.Alignment = taCenter
              Title.Caption = 'Neto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TASA'
              Title.Alignment = taCenter
              Title.Caption = '%Iva'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Visible = True
            end>
        end
      end
      object pagConfiguracionFRDb: TTabSheet
        Caption = 'Conf.frDB'
        ImageIndex = 6
        DesignSize = (
          754
          416)
        object sgNombreFR: TStringGrid
          Left = 18
          Top = 3
          Width = 363
          Height = 321
          Anchors = [akLeft, akTop, akBottom]
          ColCount = 2
          RowCount = 20
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goFixedRowDefAlign]
          TabOrder = 0
        end
        object btGuardarArchivo: TButton
          Left = 268
          Top = 329
          Width = 86
          Height = 26
          Anchors = [akLeft, akBottom]
          Caption = 'Guardar Archivo'
          TabOrder = 1
          OnClick = btGuardarArchivoClick
        end
      end
    end
    object pnPrecios: TPanel
      Left = 476
      Top = 159
      Width = 259
      Height = 114
      Caption = 'pnPrecios'
      Color = clBlue
      Padding.Left = 5
      Padding.Top = 10
      Padding.Right = 5
      Padding.Bottom = 10
      ParentBackground = False
      TabOrder = 2
      Visible = False
      object dbgPrecios: TJvDBGrid
        Left = 6
        Top = 11
        Width = 247
        Height = 92
        Align = alClient
        DataSource = DMMain_FD.DSPrecioXCant
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
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO_SINIVA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end>
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 586
    Width = 762
    Align = alBottom
    ButtonHeight = 28
    PopupMenu = PopupMenu1
    ExplicitTop = 586
    ExplicitWidth = 762
    inherited btConfirma: TBitBtn
      Width = 74
      Height = 28
      ExplicitWidth = 74
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Left = 76
      Height = 28
      ExplicitLeft = 76
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Left = 151
      Height = 28
      ExplicitLeft = 151
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Left = 226
      Width = 76
      Height = 28
      ExplicitLeft = 226
      ExplicitWidth = 76
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Width = 14
      Height = 28
      ExplicitWidth = 14
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Left = 316
      Height = 28
      ExplicitLeft = 316
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Left = 391
      Height = 28
      ExplicitLeft = 391
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Left = 406
      Width = 20
      Height = 28
      Visible = False
      ExplicitLeft = 406
      ExplicitWidth = 20
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Left = 426
      Height = 28
      ExplicitLeft = 426
      ExplicitHeight = 28
    end
    object btImprimir: TJvArrowButton
      Left = 501
      Top = 0
      Width = 88
      Height = 28
      Action = Imprimir
      DropDown = PopupMenuImpresion
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
    object ToolButton1: TToolButton
      Left = 589
      Top = 0
      Width = 12
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BtAnular: TSpeedButton
      Left = 601
      Top = 0
      Width = 30
      Height = 28
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
    object spNCredito: TSpeedButton
      Left = 631
      Top = 0
      Width = 30
      Height = 28
      Hint = 'Hacer Nota de Credito'
      Action = HacerNC_2
      Anchors = [akLeft, akTop, akRight]
      ImageIndex = 11
      Images = ImageListDos
      Flat = True
      ParentShowHint = False
      ShowHint = True
    end
    object spFiscalizar: TSpeedButton
      Left = 661
      Top = 0
      Width = 23
      Height = 28
      Action = Fiscalizar
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object spPapelera: TSpeedButton
      Left = 684
      Top = 0
      Width = 29
      Height = 28
      Action = Papelera
      Images = ImageListDos
      Flat = True
    end
    object SpeedButton1: TSpeedButton
      Left = 713
      Top = 0
      Width = 23
      Height = 28
      Hint = 'Cambiar Clase de Comprobante'
      Action = CambiarClase
      Caption = 'Z'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 736
      Top = 0
      Width = 23
      Height = 28
      Action = VerNovedadesDet
    end
  end
  inherited Panel1: TPanel
    Top = 616
    Width = 762
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 616
    ExplicitWidth = 762
    object imBalanza: TImage [1]
      Left = 735
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
      ExplicitLeft = 692
    end
    inherited sbEstado: TStatusBar
      Width = 647
      Panels = <
        item
          Width = 400
        end
        item
          Width = 50
        end>
      PopupMenu = PopupMenu1
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 647
    end
  end
  object chbPreview: TCheckBox [3]
    Left = 568
    Top = 547
    Width = 129
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Previsualiza Ticket'
    TabOrder = 3
  end
  object chbPregunta: TCheckBox [4]
    Left = 380
    Top = 547
    Width = 167
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Pide Confirmacion de Impresion'
    TabOrder = 4
  end
  object ToolBar2: TToolBar [5]
    Left = 0
    Top = 0
    Width = 762
    Height = 23
    ButtonHeight = 0
    ButtonWidth = 0
    Caption = 'ToolBar2'
    DrawingStyle = dsGradient
    Menu = MainMenu1
    ShowCaptions = True
    TabOrder = 5
  end
  object dbchCtayOrden: TDBCheckBox [6]
    Left = 519
    Top = 121
    Width = 111
    Height = 16
    TabStop = False
    Caption = 'Por Cta y Orden'
    Color = clGradientInactiveCaption
    DataField = 'POR_CTA_Y_ORDEN'
    DataSource = DSBase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    WordWrap = True
    OnClick = dbchCtayOrdenClick
  end
  object dbcLista: TDBLookupComboBox [7]
    Left = 636
    Top = 117
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
    ListSource = DatosVentasTicket.DSListaPrecios
    ParentFont = False
    TabOrder = 7
    OnClick = dbcListaClick
    OnKeyDown = dbcListaKeyDown
  end
  object pnNC: TPanel [8]
    Left = 151
    Top = 506
    Width = 230
    Height = 26
    Anchors = [akLeft, akRight, akBottom]
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
    DesignSize = (
      226
      22)
    object DBText15: TDBText
      Left = 6
      Top = 3
      Width = 34
      Height = 21
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
      DataField = 'MUESTRACLASENC'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText16: TDBText
      Left = 46
      Top = 3
      Width = 151
      Height = 18
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
      DataField = 'MUESTRANRONC'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = DBText16Click
    end
  end
  inherited ActionList1: TActionList
    Left = 424
    Top = 88
    inherited Borrar: TAction
      ShortCut = 16430
    end
    inherited Search: TAction
      ShortCut = 0
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscadorVendedor: TAction
      Caption = 'BuscadorVendedor'
      OnExecute = BuscadorVendedorExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object RecalcularTodo: TAction
      Caption = 'Recalcular Todo'
      Hint = 'Hace la suma de los Detalles y los totales'
      ShortCut = 16507
      OnExecute = RecalcularTodoExecute
    end
    object ClonarFc: TAction
      Caption = 'Clonar Comprobante (Convertir)'
      ShortCut = 16496
      OnExecute = ClonarFcExecute
    end
    object CalcularRecargosTC: TAction
      Caption = 'CalcularRecargosTC'
      OnExecute = CalcularRecargosTCExecute
    end
    object CancelarRecargoTC: TAction
      Caption = 'CancelarRecargoTC'
      OnExecute = CancelarRecargoTCExecute
    end
    object Recalcular: TAction
      Caption = 'Recalcular'
      OnExecute = RecalcularExecute
    end
    object Anular: TAction
      OnExecute = AnularExecute
    end
    object CambiarNro: TAction
      Caption = 'Cambiar Nro'
      ShortCut = 16462
      OnExecute = CambiarNroExecute
    end
    object DesmarcarImpresa: TAction
      Caption = 'Desmarcar Impresa'
      ShortCut = 49232
      OnExecute = DesmarcarImpresaExecute
    end
    object exportarXls: TAction
      Caption = 'Exporta Detalle a XLS'
    end
    object TransformarTk: TAction
      Caption = 'Transformar Tk'
      OnExecute = TransformarTkExecute
    end
    object RecalculoSuma00: TAction
      Caption = 'Recalculo Suma00'
      OnExecute = RecalculoSuma00Execute
    end
    object Freezar: TAction
      Caption = 'Freezar Comprobante'
      ShortCut = 16454
      OnExecute = FreezarExecute
    end
    object LeerFacturaFreezada: TAction
      Caption = 'Leer Factura Freezada'
      ShortCut = 16466
      OnExecute = LeerFacturaFreezadaExecute
    end
    object DuplicarCpbte: TAction
      Caption = 'Duplicar Cpbte'
      OnExecute = DuplicarCpbteExecute
    end
    object DesAnular: TAction
      Caption = 'Desanular'
      OnExecute = DesAnularExecute
    end
    object EditarProduccion: TAction
      OnExecute = EditarProduccionExecute
    end
    object CambiarCliente: TAction
      Caption = 'Cambiar Cliente'
      OnExecute = CambiarClienteExecute
    end
    object BuscarLote: TAction
      Caption = 'BuscarLote'
      OnExecute = BuscarLoteExecute
    end
    object RevisionValoresIng: TAction
      Caption = 'Revision de Valores Ingresados'
      OnExecute = RevisionValoresIngExecute
    end
    object Fiscalizar: TAction
      Caption = 'F'
      OnExecute = FiscalizarExecute
    end
    object BuscarPorReferencia: TAction
      Caption = 'BuscarPorReferencia'
      ShortCut = 32781
      OnExecute = BuscarPorReferenciaExecute
    end
    object BorrarCAE: TAction
      Caption = 'Borrar CAE'
      OnExecute = BorrarCAEExecute
    end
    object CambiarCUIT: TAction
      Caption = 'Cambiar CUIT/Docum.'
      ShortCut = 16469
      OnExecute = CambiarCUITExecute
    end
    object BuscaProveedor: TAction
      Caption = 'BuscaProveedor'
      OnExecute = BuscaProveedorExecute
    end
    object BuscarRecepcionDetalle: TAction
      Caption = 'BuscarRecepcionDetalle'
      OnExecute = BuscarRecepcionDetalleExecute
    end
    object ConectarBalanza: TAction
      Caption = 'Conectar Balanza'
      ShortCut = 16450
      OnExecute = ConectarBalanzaExecute
    end
    object LeerPeso: TAction
      Caption = 'Leer Peso'
      ShortCut = 32858
      OnExecute = LeerPesoExecute
    end
    object CambiarClase: TAction
      Caption = 'Cambiar Clase Cpbte.'
      ShortCut = 16474
      OnExecute = CambiarClaseExecute
    end
    object Pasar_a_Papelera: TAction
      Caption = 'Pasar_a_Papelera'
      OnExecute = Pasar_a_PapeleraExecute
    end
    object Papelera: TAction
      ImageIndex = 13
      OnExecute = PapeleraExecute
    end
    object CopiarDetalle: TAction
      Caption = 'Copiar Detalle'
      OnExecute = CopiarDetalleExecute
    end
    object PegarDetalle: TAction
      Caption = 'Pegar Detalle'
      OnExecute = PegarDetalleExecute
    end
    object AplicaLibroIva: TAction
      Caption = 'Aplica o Sacar del Libro de Iva'
      OnExecute = AplicaLibroIvaExecute
    end
    object VerNotaCredito: TAction
      Caption = 'VerNotaCredito'
      OnExecute = VerNotaCreditoExecute
    end
    object HacerNC_2: TAction
      OnExecute = HacerNC_2Execute
    end
    object AgregarCliente: TAction
      OnExecute = AgregarClienteExecute
    end
    object PrintTkCambio: TAction
      Caption = 'Imprimir Tk de Cambios'
      OnExecute = PrintTkCambioExecute
    end
    object IngresarMovCaja: TAction
      Caption = 'Ingresar Mov.de Caja'
      OnExecute = IngresarMovCajaExecute
    end
    object ReHacerQr: TAction
      Caption = 'ReHacer Qr'
      ShortCut = 16465
      OnExecute = ReHacerQrExecute
    end
    object CambiarDeposito: TAction
      Caption = 'Cambiar Deposito'
      OnExecute = CambiarDepositoExecute
    end
    object ModificarDatosCabecera: TAction
      Caption = 'ModificarDatosCabecera'
      ShortCut = 24643
      OnExecute = ModificarDatosCabeceraExecute
    end
    object CalculaIvaDet: TAction
      Caption = 'Calcula Iva Det'
      OnExecute = CalculaIvaDetExecute
    end
    object VerNovedadesDet: TAction
      ImageIndex = 14
      ShortCut = 32881
      OnExecute = VerNovedadesDetExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 536
    Top = 216
  end
  inherited ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 376
    Top = 160
    Bitmap = {
      494C01010E001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000070504FF3D3229FF6A5B4FFF78675AFF756355FF635346FF3B3027FF0806
      05FF000000000000000000000000000000000000000000000000000000000000
      00000806053A3D322AAE6A5A4FF078675AFD756355FD655446F23C3127B00907
      053B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A15
      11FF8F7E73FFAC988BFFA48E80FFA08A7BFF9E8778FF998172FF91796AFF725E
      4FFF1A1511FF0000000000000000000000000000000000000000000000001B16
      1170908073FDAC988BFFA48E80FFA08A7BFF9E8778FF9B8374FF957C6DFF725D
      50FD1B1611700000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF8071
      65FFAE998CFF9D8677FF9A8677FF968375FF928072FF907A6DFF8B7569FF957A
      6BFF645142FF000000FF00000000000000000000000000000000010100088071
      65FAAD998CFF9E8778FF9F8979FF9E8778FF9B8576FF988070FF998171FF947A
      6AFF645243FA0101000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050403FF9C8E
      82FFA6968BFFA7978CFFA7968BFFA49185FF9E8A7CFF978273FF958173FF9881
      72FF715C4CFF060403FF000000000000000000000000000000000605042C9D8D
      82FFA89487FF9F8879FF9F8879FF9E8778FF9B8576FF978070FF9E8778FF9A83
      73FF715B4CFF0705042C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0906FFAD9E
      94FFBBAEA5FFB2A196FFAC9B8EFFA89487FFA18E80FF9B8576FF9E887AFF9681
      74FF796354FF0D0A08FF000000000000000000000000000000000D0A0758AC9E
      93FFC3B4AAFFA08A7BFF9D8778FF9D8777FF9B8575FF967D6EFF9C8576FF9E88
      79FF796254FF0E0B095900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0B08FFBAAC
      A2FFC5B7AEFFB4A59AFFB4A296FFAD9A8DFFA59083FF9D8777FFA28D7EFF927D
      71FF836A5AFF100D0AFF00000000000000000000000000000000100D0A6DBAAC
      A3FFCBBDB3FFBEADA1FFAF9C8FFFA59082FFA0897AFF998272FFA18B7DFFA28D
      80FF826859FF110E0B6D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D1711FFC7B9
      B0FFCABCB2FFAFA095FFB5A498FF9B8A7DFFA08C7EFF9D8778FFA18B7DFF9380
      72FF886F5FFF1E1812FF000000000000000000000000000000001D18127DC7B9
      B0FFCABBB2FFBFAEA2FFB7A498FFAF9B8FFFA79284FF9E8878FFA28C7EFFA28C
      80FF886F60FF1F19138000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000372E24FFD0C3
      BAFFCABCB2FFAB9C92FFA5958AFFA8968AFF978679FF998374FF9D8779FF9884
      77FF897061FF372C23FF00000000000000000000000000000000382E25A7D0C3
      BAFFC9BAB0FFBEADA1FFB7A599FFB09D90FFA89386FF9D8878FFA08A7BFFA18C
      7EFF8E7466FF382D24A900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000473B31FFD7CB
      C3FFC1B4ABFFAC9D94FFAD9E94FFB0A198FFB2A499FF9C8C82FFA8968BFFA491
      85FF876F61FF40342AFF00000000000000000000000000000000473C32BED6CA
      C2FFCCBEB5FFBAAAA0FFB19F93FFAC9A8EFFAA978BFFA79487FFAD9A8FFFAA97
      8BFF93796AFF41352BBE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005E5246FFC0B2
      ABFFAEA49EFFCFCCCBFFE6E7E7FFF2F3F3FFF3F4F4FFF0EFEFFFAAA7A5FF9788
      7EFF917C70FF4E3F32FF000000000000000000000000000000005E5247DDC8BA
      B0FFBEB0A5FFD3CAC1FFDBD2CAFFD3C7BDFFCCBCB1FFC2AEA2FFB29A8DFFA68F
      81FFA08B7CFF4E3F33DB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C5D51FFB2AC
      A8FFEEEFF0FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F7FFAA9C
      96FFA88C7CFF615043FF000000000000000000000000000000006D5E51F6D4CD
      C3FFEFEFE9FFE5E0D9FFE5DED8FFD2C5BCFFCBBBB1FFC4B0A5FFBEA69AFFB89C
      90FFA68B7BFF625143F500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000756355FFDFDE
      D9FFD8D8D8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFEEEF
      EFFFA7968EFF736153FF00000000000000000000000000000000746355FDEEEF
      E8FFEEECE7FFE9E5DFFFECE6E2FFD2C5BCFFCBBBB1FFC4B0A5FFBEA69AFFB79B
      8FFFB29688FF736154FD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000493B30FFD5CE
      C5FFD7D6D4FFE1E1E1FFFFFFFFFFFFFFFFFFFDFDFDFFF9F9F9FFF5F5F5FFEFEF
      EFFFA59F9BFF493B30FF00000000000000000000000000000000493C30CDD3CC
      C4FFEFEEE9FFEAE6E1FFECE7E3FFD2C5BCFFCBBBB1FFC4B0A5FFBCA498FFBBA1
      95FFBBA99FFF483C31CB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010100FF4D40
      34FFB5AAA0FFC6C2BEFFEFEFEFFFFEFEFEFFF9F9F9FFF4F4F4FFEAEBEBFF9089
      83FF4F4035FF010100FF00000000000000000000000000000000020201224E40
      35D6B3A89EFFE6E0DBFFEDE7E3FFDBD1C9FFD6C8C0FFD3C3BAFFCFC0B7FFAB9C
      91FF504236D80202012400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF16100EFF46392EFF6E655EFFCFCFCFFFE8E8E8FFE3E3E3FF564F49FF1611
      0EFF000000FF0000000000000000000000000000000000000000000000000000
      000218120D69473B30C76E5F53F67F7064FD7F7064FD6F6055F8493B30C91813
      0F6B000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF1D1D1DFF9D9D9DFF262626FF000000000000
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
      0000B4B3E0FF6260CAFF1C18BAFF130DC1FF130DC1FF1C18BAFF6260CAFFB4B3
      E0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000045F
      08FF045F08FF079112FF08B017FF08B319FF08B318FF08B118FF069613FF0467
      0BFF04670BFF0000000000000000000000000000000000000000000000006B69
      69FFAAA7A7FFA19F9FFF6B6969FF6B6969FF6B6969FFE5E3E3FF6B6969FF6B69
      69FF6B6969FF0000000000000000000000000000000000000000F4F3FBFF4A47
      BFFF0E0AD8FF130EF7FF1610FFFF1610FFFF1610FFFF1610FFFF130EF7FF0E0A
      D8FF4A47BFFFF4F3FBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000096914FF097E
      14FF0AB61BFF08B919FF07B417FF06B215FF08B318FF08B418FF08B819FF08B9
      19FF06830FFF034C05FF000000000000000000000000000000006B6969FFDAD9
      D9FFA19F9FFFA19F9FFFA19F9FFF363535FF343434FF6B6C6CFFBFBFBFFFE1E2
      E2FFB7B6B6FF6B6969FF6B6969FF6B6969FF00000000F6F6FCFF2623BFFF1412
      F6FF1816FFFF1614F9FF1614F4FF1614F4FF1614F4FF1614F4FF1614F9FF1816
      FFFF1412F6FF2623BFFFF6F6FCFF000000000000000000000000908174FF9081
      74FF000000000000000000000000000000000000000000000000000000000000
      0000908174FF908174FF0000000000000000000000000A6914FF0E8521FF15BD
      33FF10B726FF0AB21BFF06B115FF07B116FF08B218FF08B218FF08B218FF08B4
      18FF08BA19FF06840FFF05660BFF00000000000000006B6969FFD4D3D3FFCACA
      CAFF8E8C8CFF8E8C8CFF8E8C8CFF3B3A3AFF090809FF060606FF0A0A0AFF0606
      06FF797979FFBBBBBBFF6B6969FF00000000000000004C49CDFF181AF6FF1A1D
      FCFF181BF5FF181BF5FF181BF6FF181BF6FF181BF6FF181BF6FF181BF5FF181B
      F5FF1A1DFCFF181AF6FF4C49CDFF000000000000000000000000C2CED5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2CED5FFC2CED5FF0000000000000000000000000A6914FF1FBE48FF1ABD
      3FFF13B72FFF09B21EFF27BC35FFDFF5E1FFEEFAEFFF62CE6CFF08B218FF08B2
      18FF08B318FF08BA19FF05660BFF000000006B6969FFCACACAFFCACACAFF8E8C
      8CFFD7D4D4FFCECBCBFFBFBCBCFFB1AFAFFFA3A0A0FF888686FF5D5A5BFF0606
      06FF080808FF070707FF6B6969FF757272FFB8B6ECFF1315E4FF1C26FFFF1921
      F9FF1A21F9FF1A21F9FF1A21F9FF1A21F9FF1A21F9FF1A21F9FF1A21F9FF1A22
      F9FF1920F9FF1C26FFFF1315E4FFB8B6ECFFBCB0A8FFBCB0A8FFBCB0A8FFBCB0
      A8FFBCB0A8FFBCB0A8FFBCB0A8FFBCB0A8FFBCB0A8FFBCB0A8FFBCB0A8FFBCB0
      A8FFBCB0A8FFBCB0A8FFBCB0A8FF0000000007710FFF1A9A39FF29C65AFF1CBB
      44FF0DB424FF0AB31AFF10B420FF9ADFA0FFFFFFFFFFF7FDF8FF59CB64FF08B2
      18FF08B218FF08B819FF079412FF035C08FF6B6969FFCACACAFF8E8C8CFFEFEE
      EEFFFFFEFEFFFBFAFAFFE3E0E1FFDEDEDEFFDEDDDDFFCFCECEFFBDBCBCFFADAB
      ABFF8B8989FF575555FF797777FF747272FF6663E0FF1C29FEFF1A2AFDFF1A29
      FFFF1A29FFFF1A29FFFF1C2BFFFF1C2BFFFF1C2BFFFF1C2BFFFF1D2BFFFF1D2B
      FFFF1D2BFFFF1E2CFFFF1D28FEFF6865E0FF908174FF908174FF908174FF9081
      74FF908174FF908174FF795C4CFF795C4CFF795C4CFF795C4CFF795C4CFF795C
      4CFF795C4CFF795C4CFF795C4CFF0000000007710FFF29B65AFF2BC564FF21BD
      4CFF0EB421FF09B219FF0BB31BFF09B218FF8DDB95FFFDFEFDFFF6FCF7FF57CB
      62FF08B218FF08B519FF07AB16FF035C08FF6B6969FF8E8C8CFFFFFFFFFFFEFC
      FCFFFAFAFAFFD5D4D5FF989193FFA09899FFB2ABACFFC4C0C1FFD7D7D7FFD8D8
      D8FFC7C6C6FFB7B6B6FF918F8FFF6B6868FF3334E9FF172BEBFF312D10FF2623
      0FFF232010FF211E0EFF1E1D0BFF1D1A0AFF1A1908FF1A1707FF191706FF1715
      06FF171603FF151200FF2033EDFF2627E5FFB3A79EFF908174FF908174FF9081
      74FFD1C8C1FFD1C8C1FFD1C8C1FFBCB0A8FFBCB0A8FFBCB0A8FFBCB0A8FFBCB0
      A8FF795C4CFF795C4CFF795C4CFF000000000E821BFF36C26BFF32C76BFFCDF1
      DAFFC9EFD3FFC7EED0FFC8EFD2FFC5EED0FFC7EECFFFF8FDF9FFFFFFFFFFF2FB
      F3FF6ED278FF07B418FF08B318FF04640AFF000000006B6969FF6B6969FFEDEB
      EBFFB1A6A7FF796E71FF8A8388FF969295FF969091FF9D9798FF9A9395FF9E98
      99FFBBBABAFFD1D1D1FFC2C2C2FF6B6969FF5559F4FF2F48E6FF494538FF3C3A
      36FF3A3838FF363432FF312E2DFF2C2A2AFF282626FF252324FF232121FF201F
      20FF1F1D1DFF1D1807FF263EECFF171AE7FF00000000908174FF908174FF9081
      74FFD1C8C1FFD1C8C1FFD1C8C1FFD1C8C1FFBCB0A8FFBCB0A8FFBCB0A8FFBCB0
      A8FF795C4CFF795C4CFF795C4CFF00000000128D22FF57CC83FF41C976FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFFFFFFFFFFFFF
      FFFFBCEAC1FF09B419FF08B318FF056C0CFF0000000000000000000000006B69
      69FFBB897EFFA7876CFF8B6E63FF7C665FFF6E6164FF787278FF8F8B8EFFA9A3
      A4FFCBCACAFFC1C1C1FF6B6969FF000000005454F6FF6883F4FF756E64FF4240
      3DFF373534FF373534FF343230FF302D2CFF2A2827FF262322FF1E1E1EFF1D1B
      1CFF171616FF1B1507FF223BEBFF1F22E2FF00000000908174FF908174FF9081
      74FFD1C8C1FFD1C8C1FFD1C8C1FFD1C8C1FFBCB0A8FFBCB0A8FFBCB0A8FFBCB0
      A8FF795C4CFF795C4CFF795C4CFF000000000E911CFF6ED293FF5ED38DFF6CD4
      95FF71D699FF70D698FF71D699FF63D28CFF92DFA8FFFBFEFBFFFFFFFFFFACE5
      B8FF2DBF4BFF10B82AFF07B118FF046009FF0000000000000000000000000000
      0000BD8281FFFFE3B4FFFFD39FFFE9B281FFC99972FFBA916BFFBD8281FF807C
      7DFF6B6969FF6B6969FF00000000000000005E5AF7FF657CF4FF9C9988FF8E89
      7DFF7B766BFF646056FF595449FF504B3FFF4E4940FF4A453CFF474239FF4440
      37FF403D30FF423F2FFF5067EBFF5E5AEAFF0000000000000000908174FF9081
      74FF908174FF908174FF908174FF908174FF908174FF795C4CFF795C4CFF795C
      4CFF795C4CFF795C4CFF00000000000000000E911CFF66CC83FF9BE5BAFF37C6
      6FFF2FC368FF37C56EFF37C56EFF6FD697FFE8F8EEFFFFFFFFFF9FE2B1FF1FBD
      47FF19B93DFF0FBA28FF07A316FF046009FF0000000000000000000000000000
      0000BD8281FFFFE0B8FFFFD3A7FFFFD09DFFFFCE90FFFFC688FFBD8281FF0000
      0000000000000000000000000000000000008D85F6FF7086FFFF6183FFFF6584
      FFFF6887FFFF6989FFFF6585FFFF5775FFFF516FFFFF5170FFFF5371FFFF5D7C
      FFFF6987FFFF6A8EFFFF7287F4FF8B83EDFF0000000000000000D1C8C1FFD1C8
      C1FFD1C8C1FFD1C8C1FFD1C8C1FFD1C8C1FFD1C8C1FFBCB0A8FFBCB0A8FFBCB0
      A8FFBCB0A8FFBCB0A8FF00000000000000000000000024AE38FFBCEDD2FF82DB
      A4FF27C062FF2EC266FF52CD82FFF7FDF9FFFFFFFFFF9CE2B2FF21BC4AFF1CBA
      40FF17B735FF13C02FFF098516FF00000000000000000000000000000000C086
      83FFFFE7CFFFFFE0C0FFFFD9B2FFFFD3A5FFFFD099FFBD8281FF000000000000
      000000000000000000000000000000000000C8C5FBFF615FFAFF81A2FFFF607D
      FEFF6683FEFF6884FFFF6886FFFF6B89FFFF6D8AFFFF6D8AFFFF6D8AFFFF6A87
      FFFF617EFFFF84A3FFFF5757DBFFC8C5FBFF0000000000000000000000000000
      0000DDE4E7FF000000000000000000000000000000000000000000000000C2CE
      D5FF000000000000000000000000000000000000000024AE38FF70D28CFFD2F4
      E1FF80DAA3FF35C46CFF38C56EFFBCECCEFFABE6C2FF2CC262FF23BE55FF22BC
      4CFF1EC145FF15AE33FF098516FF00000000000000000000000000000000BD82
      81FFFEEBD8FFFFE6CCFFFFDEBDFFFFD8B1FFFED3A4FFBD8281FF000000000000
      00000000000000000000000000000000000000000000746BF7FF8089FDFF89A8
      FFFF6585FDFF6988FDFF6D8AFDFF6D8AFDFF6D8AFDFF6C8AFDFF6987FCFF6585
      FEFF8CAAFFFF737BE2FF7068ECFF000000000000000000000000000000000000
      0000DDE4E7FF000000000000000000000000000000000000000000000000C2CE
      D5FF00000000000000000000000000000000000000000000000024AE38FF84D8
      9FFFDBF7EAFFAFE8C6FF6AD493FF51CC81FF43C977FF48CA7AFF47CB77FF38CB
      69FF20B648FF0E7B1EFF00000000000000000000000000000000BD8281FFFFFF
      F2FFFFFFF2FFFFEBD8FFFFE5CAFFFFE1BDFFF3C7A7FFBD8281FF000000000000
      00000000000000000000000000000000000000000000F8F8FFFF554AF7FF8289
      FBFFA0BEFFFF83A2FFFF6E91FEFF6F90FDFF6F90FDFF6F91FFFF84A2FFFFA1C0
      FFFF7886E8FF4F45E3FFF8F8FFFF000000000000000000000000D1C8C1FFD1C8
      C1FFD1C8C1FFD1C8C1FFD1C8C1FFD1C8C1FFD1C8C1FFBCB0A8FFBCB0A8FFBCB0
      A8FFBCB0A8FFBCB0A8FF000000000000000000000000000000000000000024AE
      38FF24AE38FFADE8C5FFCCF2DEFFBAEDD1FFA6E7C2FF91E2B3FF63D492FF2EB1
      56FF2EB156FF0000000000000000000000000000000000000000BD8281FFBD82
      81FFBD8281FFFBEFE2FFFBE3CFFFFBDDC2FFBD8281FF00000000000000000000
      0000000000000000000000000000000000000000000000000000F7F6FFFF736C
      F8FF6461F6FF96A5F9FFA4BBFDFFA4BCFFFFA2BCFFFFA3BAFCFF93A4F1FF5E5D
      E6FF7069F0FFF7F6FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031B74DFF24AE38FF24AE38FF24AE38FF24AE38FF23A341FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD8281FFBD8281FFBD8281FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C3FDFF877EF9FF615DF5FF5E5AF2FF5E5AF1FF5F5AF1FF857EF5FFC6C3
      FDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF000000F00F000000000000E00700000000
      0000C003000000000000C003000000000000C003000000000000C00300000000
      0000C003000000000000C003000000000000C003000000000000C00300000000
      0000C003000000000000C003000000000000C003000000000000C00300000000
      0000E007000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    PreventResize = False
    Left = 552
    Top = 312
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 336
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 480
    Top = 312
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 488
  end
  inherited QBrowse2: TFDQuery
    Left = 368
    Top = 392
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 56
    Top = 328
  end
  inherited ImageListDos: TImageList
    ColorDepth = cd32Bit
    Left = 240
    Top = 128
    Bitmap = {
      494C01010F001800040010001000FFFFFFFF2000FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      00000101013A29211CAE63554AF0766558FD736154FD5E4F42F229211AB00201
      013B000000000000000000000000000000000000000000000000000000000000
      00000101013A29211CAE63544AF0766558FD736154FD5F4F42F229211AB00201
      013B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B09
      07708F7F71FDAC988BFFA48E80FFA08A7AFF9E8777FF998171FF917869FF705C
      4FFD0B0907700000000000000000000000000000000000000000000000000B09
      07708F7F71FDAC988BFFA48E80FFA08A7AFF9E8777FF9B8373FF957B6CFF705B
      4FFD0B0907700000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000097F6E
      63FBAE998CFF9D8676FF9A8676FF968374FF928071FF90796CFF8B7468FF9579
      6AFF625041FB0000000900000000000000000000000000000000000000087D6E
      62FAAD998CFF9E8777FF9F8978FF9E8777FF9B8575FF98806FFF998170FF9479
      69FF615041FA00000008000000000000000000000000F7D49CFFF7D49CFFF7D4
      9CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000100002C9C8E
      82FFA6968BFFA7978CFFA7968BFFA49185FF9E8A7BFF978272FF958172FF9881
      71FF705B4BFF0100002C000000000000000000000000000000000100002C9D8D
      82FFA89487FF9F8878FF9F8878FF9E8777FF9B8575FF97806FFF9E8777FF9A83
      72FF705A4BFF0100002C000000000000000000000000F7D49CFFF7D49CFFF7D4
      9CFF000000009C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004030258AD9E
      94FFBBAEA5FFB2A196FFAC9B8EFFA89487FFA18E80FF9B8575FF9E8879FF9681
      73FF786253FF040303590000000000000000000000000000000004030258AC9E
      93FFC3B4AAFFA08A7AFF9D8777FF9D8776FF9B8574FF967C6DFF9C8575FF9E88
      78FF786153FF04030359000000000000000000000000F7D49CFFF7D49CFFF7D4
      9CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000605036DBAAC
      A2FFC5B7AEFFB4A59AFFB4A296FFAD9A8DFFA59083FF9D8776FFA28D7DFF927C
      70FF836959FF0705046D000000000000000000000000000000000605046DBAAC
      A3FFCBBDB3FFBEADA1FFAF9C8FFFA59082FFA08979FF998271FFA18B7CFFA28D
      80FF826758FF0705046D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0B087EC7B9
      B0FFCABCB2FFAFA095FFB5A498FF9B8A7CFFA08C7DFF9D8777FFA18B7CFF9380
      71FF886E5EFF0F0C0981000000000000000000000000000000000E0B087DC7B9
      B0FFCABBB2FFBFAEA2FFB7A498FFAF9B8FFFA79284FF9E8877FFA28C7DFFA28C
      80FF886E5FFF0F0C098000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000241E18A7D0C3
      BAFFCABCB2FFAB9C92FFA5958AFFA8968AFF978678FF998373FF9D8778FF9884
      76FF896F60FF241D17A900000000000000000000000000000000241E18A7D0C3
      BAFFC9BAB0FFBEADA1FFB7A599FFB09D90FFA89386FF9D8877FFA08A7AFFA18C
      7DFF8E7365FF241D17A9000000000000000000000000B5794DFFB5794DFFB579
      4DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000342C25BED7CB
      C3FFC1B4ABFFAC9D94FFAD9E94FFB0A198FFB2A499FF9C8C82FFA8968BFFA491
      85FF876E60FF30271FBE00000000000000000000000000000000342C25BED6CA
      C2FFCCBEB5FFBAAAA0FFB19F93FFAC9A8EFFAA978BFFA79487FFAD9A8FFFAA97
      8BFF937869FF30271FBE000000000000000000000000B5794DFFB5794DFFB579
      4DFF000000009C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000051463CDDC0B2
      ABFFAEA49EFFCFCCCBFFE6E7E7FFF2F3F3FFF3F4F4FFF0EFEFFFAAA7A5FF9788
      7DFF917B6FFF43362BDB0000000000000000000000000000000051463DDDC8BA
      B0FFBEB0A5FFD3CAC1FFDBD2CAFFD3C7BDFFCCBCB1FFC2AEA2FFB29A8DFFA68F
      81FFA08B7BFF42352BDB000000000000000000000000B5794DFFB5794DFFB579
      4DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000685A4DF6B2AC
      A8FFEEEFF0FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F7FFAA9C
      96FFA88C7BFF5D4D40F500000000000000000000000000000000685A4DF6D4CD
      C3FFEFEFE9FFE5E0D9FFE5DED8FFD2C5BCFFCBBBB1FFC4B0A5FFBEA69AFFB89C
      90FFA68B7AFF5D4D40F500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000736154FDDFDE
      D9FFD8D8D8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFEEEF
      EFFFA7968EFF715F53FD00000000000000000000000000000000726154FDEEEF
      E8FFEEECE7FFE9E5DFFFECE6E2FFD2C5BCFFCBBBB1FFC4B0A5FFBEA69AFFB79B
      8FFFB29688FF715F53FD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B3027CED5CE
      C5FFD7D6D4FFE1E1E1FFFFFFFFFFFFFFFFFFFDFDFDFFF9F9F9FFF5F5F5FFEFEF
      EFFFA59F9BFF3A2F27CC000000000000000000000000000000003A3026CDD3CC
      C4FFEFEEE9FFEAE6E1FFECE7E3FFD2C5BCFFCBBBB1FFC4B0A5FFBCA498FFBBA1
      95FFBBA99FFF392F26CB000000000000000000000000B5794DFFB5794DFFB579
      4DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000224136
      2CD6B5AAA0FFC6C2BEFFEFEFEFFFFEFEFEFFF9F9F9FFF4F4F4FFEAEBEBFF9089
      83FF42362DD70000002400000000000000000000000000000000000000224135
      2CD6B3A89EFFE6E0DBFFEDE7E3FFDBD1C9FFD6C8C0FFD3C3BAFFCFC0B7FFAB9C
      91FF43372DD800000024000000000000000000000000B5794DFFB5794DFFB579
      4DFF000000009C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000209060668362C23C4696059F3CFCFCFFFE8E8E8FFE3E3E3FF443E3ACC0907
      066A000000020000000000000000000000000000000000000000000000000000
      000209070569372D25C7695B4FF67D6E62FD7D6E62FD6B5D52F8392E25C90A07
      066B0000000200000000000000000000000000000000B5794DFFB5794DFFB579
      4DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000020B0B0B65979797F512121277000000000000
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
      0000B4B3E0FF615FCAFF1B17BAFF120CC1FF120CC1FF1B17BAFF615FCAFFB4B3
      E0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B095FFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000B88053FFFFFEFEFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FF9C8B
      77FF9C8B77FF9C8B77FFA59482FFD7CFBDFF8CA873FF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF5C7948FF000000000000000000000000F4F3FBFF4946
      BFFF0D09D8FF120DF7FF150FFFFF150FFFFF150FFFFF150FFFFF120DF7FF0D09
      D8FF4946BFFFF4F3FBFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A788FFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFD29C71FFFEFDFDFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF759C5DFF759C5DFFA0BB90FF82A5
      6CFF759C5DFF759C5DFF759C5DFF0000000000000000F6F6FCFF2522BFFF1311
      F6FF1715FFFF1513F9FF1513F4FF1513F4FF1513F4FF1513F4FF1513F9FF1715
      FFFF1311F6FF2522BFFFF6F6FCFF000000000000000000000000000000000000
      000000000000000000000000000000000000C99B77FFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFDAA276FFFCFAF8FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A972FF759C5DFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46AFF759C5DFF759C5DFF64854FFF000000004B48CDFF1719F6FF191C
      FCFF171AF5FF171AF5FF171AF6FF171AF6FF171AF6FF171AF6FF171AF5FF171A
      F5FF191CFCFF1719F6FF4B48CDFF000000000000000000000000000000000000
      0000000000000000000000000000C69470FFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFDDA476FFFAF6F3FF00000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF789E61FF759C5DFFBACDAEFF8EAD79FFBBCE
      AFFFE6EDE1FF80A369FF759C5DFF71975AFFB8B6ECFF1214E4FF1B25FFFF1820
      F9FF1920F9FF1920F9FF1920F9FF1920F9FF1920F9FF1920F9FF1920F9FF1921
      F9FF181FF9FF1B25FFFF1214E4FFB8B6ECFF0000000000000000000000000000
      00000000000000000000C39067FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFE3AA7EFFF6EFEAFF000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A972FF759C5DFF759C5DFF759C5DFF759C
      5DFFBBCEAFFFE4ECDFFF7DA266FF64854FFF6562E0FF1B28FEFF1929FDFF1928
      FFFF1928FFFF1928FFFF1B2AFFFF1B2AFFFF1B2AFFFF1B2AFFFF1C2AFFFF1C2A
      FFFF1C2AFFFF1D2BFFFF1C27FEFF6764E0FF0000000000000000000000000000
      000000000000C28D64FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE6AC80FFF3E9E0FF0000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF759C5DFF759C5DFF759C5DFF759C
      5DFF759C5DFFA2BB91FF779D5FFF000000003233E9FF162AEBFF302C0FFF2522
      0EFF221F0FFF201D0DFF1D1C0AFF1C1909FF191807FF191606FF181605FF1614
      05FF161502FF141100FF1F32EDFF2526E5FF0000000000000000000000000000
      0000C28B63FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFEAB085FFECDE
      D2FF0000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF759C5DFF759C5DFF759C
      5DFF759C5DFF759C5DFF5C7948FF000000005458F4FF2E47E6FF484437FF3B39
      35FF393737FF353331FF302D2CFF2B2929FF272525FF242223FF222020FF1F1E
      1FFF1E1C1CFF1C1706FF253DECFF1619E7FF000000000000000000000000E7D1
      C3FFECB387FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFC48E
      64FF0000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA74FF7EA3
      68FF8AAA74FFAAB892FF00000000000000005353F6FF6783F4FF746D63FF413F
      3CFF363433FF363433FF33312FFF2F2C2BFF292726FF252221FF1D1D1DFF1C1A
      1BFF161515FF1A1406FF213AEBFF1E21E2FF0000000000000000000000000000
      0000EEDED4FFE9AF84FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFC28C62FF0000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF00000000000000005D59F7FF647BF4FF9C9988FF8E89
      7CFF7A756AFF635F55FF585348FF4F4A3EFF4D483FFF49443BFF464138FF433F
      36FF3F3C2FFF413E2EFF4F66EBFF5D59EAFF0000000000000000000000000000
      000000000000F1E8DFFFE6AE82FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFC28C64FF000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000008D85F6FF6F86FFFF6083FFFF6484
      FFFF6787FFFF6889FFFF6485FFFF5674FFFF506EFFFF506FFFFF5270FFFF5C7B
      FFFF6887FFFF698EFFFF7187F4FF8B83EDFF0000000000000000000000000000
      00000000000000000000F7EFEAFFE4AA7CFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFC4906AFF00000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF0000000000000000C8C5FBFF605EFAFF81A2FFFF5F7C
      FEFF6583FEFF6784FFFF6786FFFF6A89FFFF6C8AFFFF6C8AFFFF6C8AFFFF6987
      FFFF607DFFFF84A3FFFF5656DBFFC8C5FBFF0000000000000000000000000000
      0000000000000000000000000000F9F5F1FFE0A67BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFC4936DFF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FFFFFFFFFFF9F8
      F7FFAB9D8DFF7B7061FF000000000000000000000000736AF7FF8089FDFF89A8
      FFFF6485FDFF6888FDFF6C8AFDFF6C8AFDFF6C8AFDFF6B8AFDFF6887FCFF6485
      FEFF8CAAFFFF727AE2FF6F67ECFF000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F9FFDAA378FFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFC99B77FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FFF9F8F7FFAD9E
      8FFF837567FF00000000000000000000000000000000F8F8FFFF5449F7FF8289
      FBFFA0BEFFFF83A2FFFF6D91FEFF6E90FDFF6E90FDFF6E91FFFF84A2FFFFA1C0
      FFFF7786E8FF4E44E3FFF8F8FFFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFCFFD7A074FFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFCEA384FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FFAC9D8EFF7E72
      64FF000000000000000000000000000000000000000000000000F7F6FFFF726B
      F8FF6360F6FF96A5F9FFA4BBFDFFA4BCFFFFA2BCFFFFA3BAFCFF93A4F1FF5D5C
      E6FF6F68F0FFF7F6FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFEFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000D6B69CFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF7D7162FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C3FDFF877DF9FF605CF5FF5D59F2FF5D59F1FF5E59F1FF857DF5FFC6C3
      FDFF000000000000000000000000000000000000000000000000000000000000
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
  object frDBcabecera: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frDBcabecera'
    CloseDataSource = False
    OpenDataSource = False
    DataSource = DSBase
    BCDToCurrency = False
    DataSetOptions = []
    Left = 196
    Top = 191
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
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
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
      end
      item
        FieldName = 'NRORTO'
        FieldAlias = 'NRORTO'
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
        FieldName = 'CPTE_MANUAL'
        FieldAlias = 'CPTE_MANUAL'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'FACTURANRO'
        FieldAlias = 'FACTURANRO'
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
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
      end
      item
        FieldName = 'NROENTREGA'
        FieldAlias = 'NROENTREGA'
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
        FieldName = 'TIPO_REMITO'
        FieldAlias = 'TIPO_REMITO'
      end
      item
        FieldName = 'IDREMITO'
        FieldAlias = 'IDREMITO'
      end
      item
        FieldName = 'REDUCIDA'
        FieldAlias = 'REDUCIDA'
      end
      item
        FieldName = 'COMSIONVENDEDOR'
        FieldAlias = 'COMSIONVENDEDOR'
      end
      item
        FieldName = 'LIQUIDADA'
        FieldAlias = 'LIQUIDADA'
      end
      item
        FieldName = 'FECHA_LIQUIDACION'
        FieldAlias = 'FECHA_LIQUIDACION'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
      end
      item
        FieldName = 'NC_CONTADO'
        FieldAlias = 'NC_CONTADO'
      end
      item
        FieldName = 'CAJA_POR_DEFECTO'
        FieldAlias = 'CAJA_POR_DEFECTO'
      end
      item
        FieldName = 'NRO_Z'
        FieldAlias = 'NRO_Z'
      end
      item
        FieldName = 'VALORES_RECIBIDOS'
        FieldAlias = 'VALORES_RECIBIDOS'
      end
      item
        FieldName = 'PERCEPCION_IB_TASA'
        FieldAlias = 'PERCEPCION_IB_TASA'
      end
      item
        FieldName = 'PERCEPCION_IB_IMPORTE'
        FieldAlias = 'PERCEPCION_IB_IMPORTE'
      end
      item
        FieldName = 'PERCIBE_IB'
        FieldAlias = 'PERCIBE_IB'
      end
      item
        FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
        FieldAlias = 'PERCEPCION_IB_BASEIMPONIBLE'
      end
      item
        FieldName = 'RENGLONES'
        FieldAlias = 'RENGLONES'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'NOTAPEDIDO_ID'
        FieldAlias = 'NOTAPEDIDO_ID'
      end
      item
        FieldName = 'NOTAPEDIDO_NROCPBTE'
        FieldAlias = 'NOTAPEDIDO_NROCPBTE'
      end
      item
        FieldName = 'ID_FC_CLON'
        FieldAlias = 'ID_FC_CLON'
      end
      item
        FieldName = 'PRESUPUESTO_ID'
        FieldAlias = 'PRESUPUESTO_ID'
      end
      item
        FieldName = 'PRESUPUESTO_NROCPBTE'
        FieldAlias = 'PRESUPUESTO_NROCPBTE'
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
        FieldName = 'POR_CTA_Y_ORDEN'
        FieldAlias = 'POR_CTA_Y_ORDEN'
      end
      item
        FieldName = 'PROVEEDOR'
        FieldAlias = 'PROVEEDOR'
      end
      item
        FieldName = 'MUESTRACONDVENTA'
        FieldAlias = 'MUESTRACONDVENTA'
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
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
        FieldName = 'MUESTRALDR'
        FieldAlias = 'MUESTRALDR'
      end
      item
        FieldName = 'MUESTRAIVA'
        FieldAlias = 'MUESTRAIVA'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldAlias = 'MUESTRAVENDEDOR'
      end
      item
        FieldName = 'MUESTRADIRECCIONLDR'
        FieldAlias = 'MUESTRADIRECCIONLDR'
      end
      item
        FieldName = 'MUESTRAPROVEEDOR'
        FieldAlias = 'MUESTRAPROVEEDOR'
      end
      item
        FieldName = 'TIPO_VTA'
        FieldAlias = 'TIPO_VTA'
      end
      item
        FieldName = 'JURIDICION'
        FieldAlias = 'JURIDICION'
      end
      item
        FieldName = 'JURIDICION_LOCALIDAD'
        FieldAlias = 'JURIDICION_LOCALIDAD'
      end
      item
        FieldName = 'CON_GTIA_EXTENDIDA'
        FieldAlias = 'CON_GTIA_EXTENDIDA'
      end
      item
        FieldName = 'ID_RECEPCION_GTIA'
        FieldAlias = 'ID_RECEPCION_GTIA'
      end
      item
        FieldName = 'MESES_DE_GARANTIA'
        FieldAlias = 'MESES_DE_GARANTIA'
      end
      item
        FieldName = 'POLIZA'
        FieldAlias = 'POLIZA'
      end
      item
        FieldName = 'VALOR_ASEGURADO'
        FieldAlias = 'VALOR_ASEGURADO'
      end
      item
        FieldName = 'MUESTRAMONEDACPBTE'
        FieldAlias = 'MUESTRAMONEDACPBTE'
      end
      item
        FieldName = 'MUESTRASIGNOMONEDACPBTE'
        FieldAlias = 'MUESTRASIGNOMONEDACPBTE'
      end
      item
        FieldName = 'ID_NOTA_CAMBIO'
        FieldAlias = 'ID_NOTA_CAMBIO'
      end
      item
        FieldName = 'NUMERO_OPERACION'
        FieldAlias = 'NUMERO_OPERACION'
      end
      item
        FieldName = 'MUESTRAESFRANQUICIA'
        FieldAlias = 'MUESTRAESFRANQUICIA'
      end
      item
        FieldName = 'CAE'
        FieldAlias = 'CAE'
      end
      item
        FieldName = 'CAE_VENCIMIENTO'
        FieldAlias = 'CAE_VENCIMIENTO'
      end
      item
        FieldName = 'FACTURA_ELECTRONICA'
        FieldAlias = 'FACTURA_ELECTRONICA'
      end
      item
        FieldName = 'ABONO_PERIODO'
        FieldAlias = 'ABONO_PERIODO'
      end
      item
        FieldName = 'CANT_BULTOS'
        FieldAlias = 'CANT_BULTOS'
      end
      item
        FieldName = 'CUOTAS_CC'
        FieldAlias = 'CUOTAS_CC'
      end
      item
        FieldName = 'INTERVALO_CUOTA'
        FieldAlias = 'INTERVALO_CUOTA'
      end
      item
        FieldName = 'MUESTRACODIGOAFIP'
        FieldAlias = 'MUESTRACODIGOAFIP'
      end
      item
        FieldName = 'PAGO_A_CTA'
        FieldAlias = 'PAGO_A_CTA'
      end
      item
        FieldName = 'ID_FC_CON_ADEL'
        FieldAlias = 'ID_FC_CON_ADEL'
      end
      item
        FieldName = 'MUESTRAOBSCLIENTE1'
        FieldAlias = 'MUESTRAOBSCLIENTE1'
      end
      item
        FieldName = 'MUESTRAOBSCLIENTE2'
        FieldAlias = 'MUESTRAOBSCLIENTE2'
      end
      item
        FieldName = 'MUESTRAACOPIO'
        FieldAlias = 'MUESTRAACOPIO'
      end
      item
        FieldName = 'CENTRO_COSTO'
        FieldAlias = 'CENTRO_COSTO'
      end
      item
        FieldName = 'ID_PEDIDO_MORPHI'
        FieldAlias = 'ID_PEDIDO_MORPHI'
      end
      item
        FieldName = 'MUESTRANOMBRECOMPLETO'
        FieldAlias = 'MUESTRANOMBRECOMPLETO'
      end
      item
        FieldName = 'SALDO_ACTUAL_CC'
        FieldAlias = 'SALDO_ACTUAL_CC'
      end
      item
        FieldName = 'MUESTRAZONA'
        FieldAlias = 'MUESTRAZONA'
      end
      item
        FieldName = 'NETONOGRAV1'
        FieldAlias = 'NETONOGRAV1'
      end
      item
        FieldName = 'NETONOGRAV2'
        FieldAlias = 'NETONOGRAV2'
      end
      item
        FieldName = 'FECHA_FISCAL'
        FieldAlias = 'FECHA_FISCAL'
      end
      item
        FieldName = 'NRO_INTERNO'
        FieldAlias = 'NRO_INTERNO'
      end
      item
        FieldName = 'FOB_TOTAL'
        FieldAlias = 'FOB_TOTAL'
      end
      item
        FieldName = 'NOTAS'
        FieldAlias = 'NOTAS'
      end
      item
        FieldName = 'MUESTRAUSACHE'
        FieldAlias = 'MUESTRAUSACHE'
      end
      item
        FieldName = 'CBU'
        FieldAlias = 'CBU'
      end
      item
        FieldName = 'ASOCIADO_TIPO'
        FieldAlias = 'ASOCIADO_TIPO'
      end
      item
        FieldName = 'ASOCIADO_PTOVTA'
        FieldAlias = 'ASOCIADO_PTOVTA'
      end
      item
        FieldName = 'ASOCIADO_NRO'
        FieldAlias = 'ASOCIADO_NRO'
      end
      item
        FieldName = 'ASOCIADO_CPTEFCH'
        FieldAlias = 'ASOCIADO_CPTEFCH'
      end
      item
        FieldName = 'INF_X'
        FieldAlias = 'INF_X'
      end
      item
        FieldName = 'VUELTO'
        FieldAlias = 'VUELTO'
      end
      item
        FieldName = 'HONORARIOS'
        FieldAlias = 'HONORARIOS'
      end
      item
        FieldName = 'HONORARIOS_PROCENTAJ'
        FieldAlias = 'HONORARIOS_PROCENTAJ'
      end
      item
        FieldName = 'CON_CAEA'
        FieldAlias = 'CON_CAEA'
      end
      item
        FieldName = 'CAEA_INFORMADO'
        FieldAlias = 'CAEA_INFORMADO'
      end
      item
        FieldName = 'ASOCIADO_ID_CPBTE'
        FieldAlias = 'ASOCIADO_ID_CPBTE'
      end
      item
        FieldName = 'FACTURA_DE_ANTICIPO'
        FieldAlias = 'FACTURA_DE_ANTICIPO'
      end
      item
        FieldName = 'MUESTRANRONC'
        FieldAlias = 'MUESTRANRONC'
      end
      item
        FieldName = 'MUESTRATIPONC'
        FieldAlias = 'MUESTRATIPONC'
      end
      item
        FieldName = 'MUESTRACLASENC'
        FieldAlias = 'MUESTRACLASENC'
      end
      item
        FieldName = 'MUESTRAID_NC'
        FieldAlias = 'MUESTRAID_NC'
      end
      item
        FieldName = 'QRIMAGE'
        FieldAlias = 'QRIMAGE'
      end>
  end
  object frDBDetalles: TfrxDBDataset
    UserName = 'frDBDetalles'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosVentasTicket.CDSVentaDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 259
    Top = 392
    FieldDefs = <
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'GRAVADO_IB'
        FieldAlias = 'GRAVADO_IB'
      end
      item
        FieldName = 'CON_NRO_SERIE'
        FieldAlias = 'CON_NRO_SERIE'
      end
      item
        FieldName = 'CON_CODIGO_BARRA'
        FieldAlias = 'CON_CODIGO_BARRA'
      end
      item
        FieldName = 'TIPOIB_TASA'
        FieldAlias = 'TIPOIB_TASA'
      end
      item
        FieldName = 'ID_MONEDA'
        FieldAlias = 'ID_MONEDA'
      end
      item
        FieldName = 'NRO'
        FieldAlias = 'NRO'
      end
      item
        FieldName = 'LOTE'
        FieldAlias = 'LOTE'
      end
      item
        FieldName = 'PRECIO_EDITABLE'
        FieldAlias = 'PRECIO_EDITABLE'
      end
      item
        FieldName = 'GRUPO_DETALLE'
        FieldAlias = 'GRUPO_DETALLE'
      end
      item
        FieldName = 'MUESTRAGRUPODETALLE'
        FieldAlias = 'MUESTRAGRUPODETALLE'
      end
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
        FieldName = 'CODIGOARTICULO'
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
        FieldName = 'IVA_TOTAL'
        FieldAlias = 'IVA_TOTAL'
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
        FieldName = 'MUESTRAMONEDA'
        FieldAlias = 'MUESTRAMONEDA'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'TOTAL_EXENTO'
        FieldAlias = 'TOTAL_EXENTO'
      end
      item
        FieldName = 'TOTAL_GRAVADO'
        FieldAlias = 'TOTAL_GRAVADO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
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
        FieldName = 'MARGEN'
        FieldAlias = 'MARGEN'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'MUESTRACONTENIDO'
        FieldAlias = 'MUESTRACONTENIDO'
      end
      item
        FieldName = 'IB_TASA'
        FieldAlias = 'IB_TASA'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'RENGLON'
        FieldAlias = 'RENGLON'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
      end
      item
        FieldName = 'MESES_GTIA'
        FieldAlias = 'MESES_GTIA'
      end
      item
        FieldName = 'UNIDADES_GRAVADO'
        FieldAlias = 'UNIDADES_GRAVADO'
      end
      item
        FieldName = 'UNIDADES_EXENTO'
        FieldAlias = 'UNIDADES_EXENTO'
      end
      item
        FieldName = 'UNIDADES_TOTAL'
        FieldAlias = 'UNIDADES_TOTAL'
      end
      item
        FieldName = 'COSTO_GRAVADO'
        FieldAlias = 'COSTO_GRAVADO'
      end
      item
        FieldName = 'COSTO_EXENTO'
        FieldAlias = 'COSTO_EXENTO'
      end
      item
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'COSTO_TOTAL'
      end
      item
        FieldName = 'UNITARIO_GRAVADO'
        FieldAlias = 'UNITARIO_GRAVADO'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'UNITARIO_TOTAL'
      end
      item
        FieldName = 'IVA_UNITARIO'
        FieldAlias = 'IVA_UNITARIO'
      end
      item
        FieldName = 'UNITARIO_EXENTO'
        FieldAlias = 'UNITARIO_EXENTO'
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
        FieldName = 'DE_PRODUCCION'
        FieldAlias = 'DE_PRODUCCION'
      end
      item
        FieldName = 'UNITARIO_TOTAL_OLD'
        FieldAlias = 'UNITARIO_TOTAL_OLD'
      end
      item
        FieldName = 'UNITARIO_IVA_OLD'
        FieldAlias = 'UNITARIO_IVA_OLD'
      end
      item
        FieldName = 'UNI_C_REC'
        FieldAlias = 'UNI_C_REC'
      end
      item
        FieldName = 'MUESTRAGTIAOFICIAL'
        FieldAlias = 'MUESTRAGTIAOFICIAL'
      end
      item
        FieldName = 'CONTROL_TRAZABILIDAD'
        FieldAlias = 'CONTROL_TRAZABILIDAD'
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
        FieldName = 'DETALLE_ADICIONAL'
        FieldAlias = 'DETALLE_ADICIONAL'
      end
      item
        FieldName = 'ACOPIABLE'
        FieldAlias = 'ACOPIABLE'
      end
      item
        FieldName = 'MUESTRAIVAMODIFICADO'
        FieldAlias = 'MUESTRAIVAMODIFICADO'
      end>
  end
  object frDBImpuestos: TfrxDBDataset
    UserName = 'frDBImpuestos'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosVentasTicket.CDSImpuestos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 196
    Top = 239
  end
  object frFactura: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40389.951027372680000000
    ReportOptions.LastChange = 40389.951027372680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPrintReport = frFacturaPrintReport
    Left = 322
    Top = 281
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object PopupMenu1: TPopupMenu
    Left = 420
    Top = 205
    object CambiarCUITDocum1: TMenuItem
      Action = CambiarCUIT
    end
    object CambiarNro1: TMenuItem
      Action = CambiarNro
    end
    object ClonarFc1: TMenuItem
      Action = ClonarFc
    end
    object DesmarcarImpresa1: TMenuItem
      Action = DesmarcarImpresa
    end
    object ransformarTk1: TMenuItem
      Action = TransformarTk
    end
    object DuplicarCpbte1: TMenuItem
      Action = DuplicarCpbte
    end
    object MarcarComoImpresaalDuplicarOpcion1: TMenuItem
      Caption = 'Marcar Como Impresa al Duplicar (Opcion)'
      OnClick = MarcarComoImpresaalDuplicarOpcion1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object HacerNC1: TMenuItem
      Caption = 'Hacer Nc.sobre el Comprobante'
      Hint = 'Hacer Nc. sobre este comprobante'
      ImageIndex = 10
      ShortCut = 49230
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MostrarDesctenDetalle1: TMenuItem
      Caption = 'Mostrar Desct. en  Detalle'
      OnClick = MostrarDesctenDetalle1Click
    end
    object SaltearDetalle: TMenuItem
      Caption = 'Saltear Detalle'
      OnClick = SaltearDetalleClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Recalcular1: TMenuItem
      Action = Recalcular
    end
    object RecalculoSuma001: TMenuItem
      Action = RecalculoSuma00
    end
    object RecalcularTodo1: TMenuItem
      Action = RecalcularTodo
    end
    object CalculaIvaDet1: TMenuItem
      Action = CalculaIvaDet
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object FreezarComprobante1: TMenuItem
      Action = Freezar
    end
    object LeerFacturaFreezada1: TMenuItem
      Action = LeerFacturaFreezada
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object CambiarClase1: TMenuItem
      Action = CambiarClase
    end
    object Borrar2: TMenuItem
      Action = BorrarCAE
    end
    object AplicaLibroIva1: TMenuItem
      Action = AplicaLibroIva
    end
    object Desanular1: TMenuItem
      Action = DesAnular
    end
    object CambiarCliente1: TMenuItem
      Action = CambiarCliente
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object IngresarMovdeCaja1: TMenuItem
      Action = IngresarMovCaja
    end
    object ReHacerQr1: TMenuItem
      Action = ReHacerQr
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 480
    Top = 408
  end
  object DataToXLS1: TDataToXLS
    Columns = <
      item
        DataField = 'CODIGOARTICULO'
        Title = 'codigo'
      end
      item
        DataField = 'CANTIDAD'
        Title = 'cantidad'
        DataType = ctDouble
      end
      item
        DataField = 'UNITARIO_TOTAL'
        Title = 'precio'
        DataType = ctDouble
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
    Left = 680
    Top = 376
  end
  object frDBCajaMov: TfrxDBDataset
    UserName = 'frDBCajaMov'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSCajaMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 140
    Top = 439
    FieldDefs = <
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'FECHA_CAJA'
        FieldAlias = 'FECHA_CAJA'
      end
      item
        FieldName = 'FECHA_OPERACION'
        FieldAlias = 'FECHA_OPERACION'
      end
      item
        FieldName = 'TIPO_OPERACION'
        FieldAlias = 'TIPO_OPERACION'
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
        FieldName = 'ID_COMPROBANTE'
        FieldAlias = 'ID_COMPROBANTE'
      end
      item
        FieldName = 'NRO_COMPROBANTE'
        FieldAlias = 'NRO_COMPROBANTE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'ID_TPAGO'
        FieldAlias = 'ID_TPAGO'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'ID_FPAGOOLD'
        FieldAlias = 'ID_FPAGOOLD'
      end
      item
        FieldName = 'MUESTRAFORMAPAGO'
        FieldAlias = 'MUESTRAFORMAPAGO'
      end
      item
        FieldName = 'MUESTRAIDCTACAJA'
        FieldAlias = 'MUESTRAIDCTACAJA'
      end
      item
        FieldName = 'MUESTRACAJA'
        FieldAlias = 'MUESTRACAJA'
      end
      item
        FieldName = 'MUESTRANROCAJA'
        FieldAlias = 'MUESTRANROCAJA'
      end>
  end
  object frDBEfectivo: TfrxDBDataset
    UserName = 'frDBEfectivo'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSMovEfectivo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 188
    Top = 407
    FieldDefs = <
      item
        FieldName = 'ID_EFECTIVO'
        FieldAlias = 'ID_EFECTIVO'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end>
  end
  object frDBTC: TfrxDBDataset
    UserName = 'frDBTC'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSMovTCredito
    BCDToCurrency = False
    DataSetOptions = []
    Left = 356
    Top = 335
    FieldDefs = <
      item
        FieldName = 'ID_MOV_TC'
        FieldAlias = 'ID_MOV_TC'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'ID_TC'
        FieldAlias = 'ID_TC'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'TITULAR'
        FieldAlias = 'TITULAR'
      end
      item
        FieldName = 'CAN_CUOTAS'
        FieldAlias = 'CAN_CUOTAS'
      end
      item
        FieldName = 'N_DOCU'
        FieldAlias = 'N_DOCU'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'OTROS'
        FieldAlias = 'OTROS'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'UNIDADES_NETO'
        FieldAlias = 'UNIDADES_NETO'
      end
      item
        FieldName = 'IMPORTE_NETO'
        FieldAlias = 'IMPORTE_NETO'
      end
      item
        FieldName = 'COEFICIENTE'
        FieldAlias = 'COEFICIENTE'
      end
      item
        FieldName = 'VALORCUOTA'
        FieldAlias = 'VALORCUOTA'
      end
      item
        FieldName = 'IMPORTE_RECARGO'
        FieldAlias = 'IMPORTE_RECARGO'
      end
      item
        FieldName = 'ID_CUENTA_BANCO'
        FieldAlias = 'ID_CUENTA_BANCO'
      end
      item
        FieldName = 'NRO_CUPON'
        FieldAlias = 'NRO_CUPON'
      end
      item
        FieldName = 'FECHA_ACREDITACION'
        FieldAlias = 'FECHA_ACREDITACION'
      end
      item
        FieldName = 'ACREDITADA'
        FieldAlias = 'ACREDITADA'
      end
      item
        FieldName = 'LOTE'
        FieldAlias = 'LOTE'
      end
      item
        FieldName = 'TERMINAL'
        FieldAlias = 'TERMINAL'
      end
      item
        FieldName = 'MUESTRATC'
        FieldAlias = 'MUESTRATC'
      end>
  end
  object frDBLotes: TfrxDBDataset
    UserName = 'frDBLotes'
    CloseDataSource = False
    DataSet = DatosVentasTicket.CDSVentaLote
    BCDToCurrency = False
    DataSetOptions = []
    Left = 312
    Top = 240
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_DET'
        FieldAlias = 'ID_DET'
      end
      item
        FieldName = 'ID_FC'
        FieldAlias = 'ID_FC'
      end
      item
        FieldName = 'ID_LOTE'
        FieldAlias = 'ID_LOTE'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'LOTE'
        FieldAlias = 'LOTE'
      end
      item
        FieldName = 'DESPACHO'
        FieldAlias = 'DESPACHO'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'FECHAVTO'
        FieldAlias = 'FECHAVTO'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'TIPO_COMPROB'
        FieldAlias = 'TIPO_COMPROB'
      end>
  end
  object frDBChe3: TfrxDBDataset
    UserName = 'frDBChe3'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSChe3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 308
    Top = 375
    FieldDefs = <
      item
        FieldName = 'ID_CHEQUE_TER'
        FieldAlias = 'ID_CHEQUE_TER'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'ID_BANCO'
        FieldAlias = 'ID_BANCO'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'FECHA_EMISION'
        FieldAlias = 'FECHA_EMISION'
      end
      item
        FieldName = 'FECHA_COBRO'
        FieldAlias = 'FECHA_COBRO'
      end
      item
        FieldName = 'FECHA_ENTRADA'
        FieldAlias = 'FECHA_ENTRADA'
      end
      item
        FieldName = 'FECHA_SALIDA'
        FieldAlias = 'FECHA_SALIDA'
      end
      item
        FieldName = 'ORIGEN'
        FieldAlias = 'ORIGEN'
      end
      item
        FieldName = 'DESTINO'
        FieldAlias = 'DESTINO'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'DISPONIBLE'
        FieldAlias = 'DISPONIBLE'
      end
      item
        FieldName = 'FIRMANTE'
        FieldAlias = 'FIRMANTE'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'ID_MOV_CAJA_EGRESOS'
        FieldAlias = 'ID_MOV_CAJA_EGRESOS'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'ID_CUENTA_BCO_DEPOSITADO'
        FieldAlias = 'ID_CUENTA_BCO_DEPOSITADO'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'SALDO_UNIDADES'
        FieldAlias = 'SALDO_UNIDADES'
      end
      item
        FieldName = 'SALDO_IMPORTE'
        FieldAlias = 'SALDO_IMPORTE'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'SUCURSAL_BCO'
        FieldAlias = 'SUCURSAL_BCO'
      end
      item
        FieldName = 'NRO_CTA'
        FieldAlias = 'NRO_CTA'
      end
      item
        FieldName = 'MUESTRABANCO'
        FieldAlias = 'MUESTRABANCO'
      end>
  end
  object frDBTx: TfrxDBDataset
    UserName = 'frDBTx'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSTransBco
    BCDToCurrency = False
    DataSetOptions = []
    Left = 188
    Top = 351
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'ID_CUENTA_BANCO'
        FieldAlias = 'ID_CUENTA_BANCO'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ORIGEN'
        FieldAlias = 'ORIGEN'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'MUESTRACTACAJA'
        FieldAlias = 'MUESTRACTACAJA'
      end>
  end
  object frDBChComp: TfrxDBDataset
    UserName = 'frDBChComp'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSMovValoresComp
    BCDToCurrency = False
    DataSetOptions = []
    Left = 620
    Top = 383
    FieldDefs = <
      item
        FieldName = 'ID_VALOR'
        FieldAlias = 'ID_VALOR'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_CHEQUE'
        FieldAlias = 'ID_CHEQUE'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'ID_CHEQUE_COMPARTIDO'
        FieldAlias = 'ID_CHEQUE_COMPARTIDO'
      end
      item
        FieldName = 'MUESTRAFECHACOBRO'
        FieldAlias = 'MUESTRAFECHACOBRO'
      end
      item
        FieldName = 'MUESTRAFECHAEMISION'
        FieldAlias = 'MUESTRAFECHAEMISION'
      end
      item
        FieldName = 'MUESTRAFECHAENTRADA'
        FieldAlias = 'MUESTRAFECHAENTRADA'
      end
      item
        FieldName = 'MUESTRAFECHASALIDA'
        FieldAlias = 'MUESTRAFECHASALIDA'
      end
      item
        FieldName = 'MUESTRAFIRMANTE'
        FieldAlias = 'MUESTRAFIRMANTE'
      end
      item
        FieldName = 'MUESTRAIMPORTE'
        FieldAlias = 'MUESTRAIMPORTE'
      end
      item
        FieldName = 'MUESTRANROCHE'
        FieldAlias = 'MUESTRANROCHE'
      end>
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosVentasTicket.CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 464
    Top = 24
  end
  object ComBuscadorVendedor: TComBuscador
    Campo = 'CODIGO'
    Titulo = 'Vendedores'
    rOk = False
    Left = 636
    Top = 157
  end
  object PopupMenu2: TPopupMenu
    Left = 612
    Top = 109
    object VerCodigoALternativo1: TMenuItem
      Caption = 'Ver Codigo ALternativo'
      OnClick = VerCodigoALternativo1Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object CopiarDetalle1: TMenuItem
      Action = CopiarDetalle
    end
    object PegarDetalle1: TMenuItem
      Action = PegarDetalle
    end
    object N12: TMenuItem
      Caption = '-'
      Checked = True
    end
    object CopiaralPortaPapelesdeWindows1: TMenuItem
      Caption = 'Copiar al Porta Papeles de Windows'
      OnClick = CopiaralPortaPapelesdeWindows1Click
    end
    object ModificaTotal: TMenuItem
      Caption = 'Modificar Total'
      OnClick = ModificaTotalClick
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object CambiarDeposito1: TMenuItem
      Action = CambiarDeposito
    end
  end
  object MainMenu1: TMainMenu
    Left = 500
    Top = 92
    object Otros1: TMenuItem
      Caption = 'Otros'
      object RevisiondeValoresIngresados1: TMenuItem
        Action = RevisionValoresIng
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ActivarDialogoValores1: TMenuItem
        Caption = 'Activar Dialogo Valores'
        OnClick = ActivarDialogoValores1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object LeerPeso1: TMenuItem
        Action = LeerPeso
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object PasaraPapelera1: TMenuItem
        Action = Pasar_a_Papelera
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object IniciarEnFecha1: TMenuItem
        Caption = 'Iniciar Foco En Fecha'
        OnClick = IniciarEnFecha1Click
      end
    end
  end
  object frDBEmpresa: TfrxDBDataset
    UserName = 'frDBEmpresa'
    CloseDataSource = False
    DataSet = DatosVentasTicket.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 288
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
        FieldName = 'CBU'
        FieldAlias = 'CBU'
      end
      item
        FieldName = 'FECHA_INICIO_ACTI'
        FieldAlias = 'FECHA_INICIO_ACTI'
      end
      item
        FieldName = 'COD_ACTIVIDAD'
        FieldAlias = 'COD_ACTIVIDAD'
      end
      item
        FieldName = 'NOMBRE_AUTORIZADO'
        FieldAlias = 'NOMBRE_AUTORIZADO'
      end
      item
        FieldName = 'ID_CPOSTAL'
        FieldAlias = 'ID_CPOSTAL'
      end
      item
        FieldName = 'NOMBRE_FANTASIA'
        FieldAlias = 'NOMBRE_FANTASIA'
      end
      item
        FieldName = 'CODIGO_COT'
        FieldAlias = 'CODIGO_COT'
      end
      item
        FieldName = 'DIRECCION_NRO'
        FieldAlias = 'DIRECCION_NRO'
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
        FieldName = 'PUNITORIOS'
        FieldAlias = 'PUNITORIOS'
      end
      item
        FieldName = 'NRO_RENSPA'
        FieldAlias = 'NRO_RENSPA'
      end
      item
        FieldName = 'NRO_RUCA'
        FieldAlias = 'NRO_RUCA'
      end
      item
        FieldName = 'CUIT_AUTORIZADO'
        FieldAlias = 'CUIT_AUTORIZADO'
      end>
  end
  object ComBuscadorRecepciones: TComBuscador
    Campo = 'ID'
    Titulo = 'Recepciones'
    rOk = False
    Left = 400
    Top = 352
  end
  object ComBuscadorLote: TComBuscador
    Campo = 'ID'
    Titulo = 'Lotes'
    rOk = False
    Left = 572
    Top = 268
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
    Left = 636
    Top = 268
  end
  object PopupMenuImpresion: TPopupMenu
    Left = 92
    Top = 308
    object ImprimirTkCambio: TMenuItem
      Action = PrintTkCambio
    end
  end
  object frDBSucursal: TfrxDBDataset
    UserName = 'frDBSucursal'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosVentasTicket.CDSSucursal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 99
    Top = 216
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
        FieldName = 'RECARGO'
        FieldAlias = 'RECARGO'
      end
      item
        FieldName = 'APLICA_PERCEPCION_IIBB'
        FieldAlias = 'APLICA_PERCEPCION_IIBB'
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
        FieldName = 'GENERA_XML_COMUN'
        FieldAlias = 'GENERA_XML_COMUN'
      end
      item
        FieldName = 'HOST'
        FieldAlias = 'HOST'
      end
      item
        FieldName = 'CERTIFICADO_ELEC'
        FieldAlias = 'CERTIFICADO_ELEC'
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
  object PopupMenu3: TPopupMenu
    Left = 396
    Top = 268
    object ExportarPortaPapeles1: TMenuItem
      Caption = 'Exportar Porta Papeles'
      OnClick = ExportarPortaPapeles1Click
    end
  end
  object frDBPercepcionIVA: TfrxDBDataset
    UserName = 'frDBPercepcionIVA'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosVentasTicket.CDSPercepcionIVA
    BCDToCurrency = False
    DataSetOptions = []
    Left = 436
    Top = 399
    FieldDefs = <
      item
        FieldName = 'ID_PERCEPCION'
        FieldAlias = 'ID_PERCEPCION'
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
        FieldName = 'ID_FCVTACAB'
        FieldAlias = 'ID_FCVTACAB'
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
      end
      item
        FieldName = 'CODIGOREGIMEN'
        FieldAlias = 'CODIGOREGIMEN'
      end>
  end
  object frDBDetNovedades: TfrxDBDataset
    UserName = 'frDBDetNovedades'
    CloseDataSource = False
    DataSet = DatosVentasTicket.CDSVtaDetNovedades
    BCDToCurrency = False
    DataSetOptions = []
    Left = 292
    Top = 460
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'ID_CABFAC'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'CODIGO'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'PRECIO_OLD'
      end
      item
        FieldName = 'PRECIO'
      end
      item
        FieldName = 'TIPO'
        FieldType = fftString
      end
      item
        FieldName = 'FECHA_HORA'
      end
      item
        FieldName = 'USUARIO'
        FieldType = fftString
        Size = 50
      end>
  end
end

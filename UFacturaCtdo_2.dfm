inherited FormCpbteCtdo_2: TFormCpbteCtdo_2
  Left = 299
  Top = 89
  Caption = 'Ventas de Contado'
  ClientHeight = 637
  ClientWidth = 893
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  ExplicitWidth = 911
  ExplicitHeight = 678
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Top = 22
    Width = 893
    Height = 562
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 22
    ExplicitWidth = 893
    ExplicitHeight = 562
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 893
      Height = 172
      Align = alTop
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 595
        Top = 77
        Width = 75
        Height = 13
        Caption = 'Nro. de Entrega'
      end
      object DBText1: TDBText
        Left = 500
        Top = 17
        Width = 84
        Height = 24
        Alignment = taCenter
        AutoSize = True
        DataField = 'LETRAFAC'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Rounded MT Bold'
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
        Left = 473
        Top = 19
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
        Left = 363
        Top = 54
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
        ParentShowHint = False
        ShowHint = True
      end
      object SpeedButton2: TSpeedButton
        Left = 389
        Top = 55
        Width = 23
        Height = 22
        Action = AgregarCliente
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
      object lbLimiteCredito: TLabel
        Left = 345
        Top = 39
        Width = 12
        Height = 13
        Caption = '00'
      end
      object lbEstado: TLabel
        Left = 74
        Top = 41
        Width = 6
        Height = 13
        Caption = '--'
      end
      object dbtZ: TDBText
        Left = 710
        Top = 24
        Width = 49
        Height = 17
        Alignment = taRightJustify
        DataField = 'NRO_Z'
        DataSource = DSBase
      end
      object NroRec: TDBText
        Left = 420
        Top = 4
        Width = 63
        Height = 11
        DataField = 'ID_FC'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 184
        Top = 40
        Width = 133
        Height = 16
        DataField = 'LOCALIDAD'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel1: TJvLabel
        Left = 6
        Top = 2
        Width = 35
        Height = 13
        Caption = 'Fecha '
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel5: TJvLabel
        Left = 139
        Top = 3
        Width = 89
        Height = 13
        Caption = 'Sucursal de Venta'
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel7: TJvLabel
        Left = 517
        Top = 2
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel8: TJvLabel
        Left = 6
        Top = 40
        Width = 34
        Height = 13
        Caption = 'Cliente'
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel9: TJvLabel
        Left = 6
        Top = 78
        Width = 127
        Height = 13
        Caption = 'Lugar de Recepci'#243'n(LDR)'
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel10: TJvLabel
        Left = 6
        Top = 116
        Width = 44
        Height = 13
        Caption = 'Dep'#243'sito'
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel11: TJvLabel
        Left = 290
        Top = 3
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object lbVdor: TJvLabel
        Left = 201
        Top = 116
        Width = 48
        Height = 13
        Cursor = crHandPoint
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        OnClick = lbVdorClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object RxLabel4: TJvLabel
        Left = 663
        Top = 24
        Width = 29
        Height = 13
        Caption = 'Nro.Z'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object lbJurisdiccion: TJvLabel
        Left = 368
        Top = 78
        Width = 57
        Height = 13
        Caption = 'Jurisdicci'#243'n'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel63: TJvLabel
        Left = 534
        Top = 118
        Width = 90
        Height = 13
        Caption = 'Numero de Remito'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel2: TJvLabel
        Left = 418
        Top = 52
        Width = 128
        Height = 22
        Caption = 'FC.CONTADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -19
        HotTrackFont.Name = 'Arial Rounded MT Bold'
        HotTrackFont.Style = []
      end
      object dbtCotozacionDet: TDBText
        Left = 750
        Top = 135
        Width = 56
        Height = 11
        Alignment = taRightJustify
        DataField = 'COTIZACION'
        DataSource = DatosVentasCtdo.DSVentaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edNumeroOP: TDBText
        Left = 698
        Top = 2
        Width = 57
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
      object Label12: TLabel
        Left = 661
        Top = 2
        Width = 31
        Height = 13
        Caption = 'N.Op.:'
      end
      object DBText20: TDBText
        Left = 139
        Top = 77
        Width = 105
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
      object DBText19: TDBText
        Left = 270
        Top = 77
        Width = 88
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
      object DBText23: TDBText
        Left = 81
        Top = 2
        Width = 48
        Height = 13
        Cursor = crHandPoint
        Hint = 'Fecha Fiscal'
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'FECHA_FISCAL'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = CambiarNroExecute
      end
      object dbtProvincia: TDBText
        Left = 440
        Top = 95
        Width = 138
        Height = 17
        DataField = 'PROVINCIA'
        DataSource = DatosVentasCtdo.DSBuscaLocalidadJuri
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtLocalidad: TDBText
        Left = 368
        Top = 115
        Width = 158
        Height = 17
        DataField = 'LOCALIDAD'
        DataSource = DatosVentasCtdo.DSBuscaLocalidadJuri
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtId_Juridiccion: TDBText
        Left = 440
        Top = 78
        Width = 65
        Height = 17
        DataField = 'JURIDICION'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel
        Left = 7
        Top = 157
        Width = 26
        Height = 13
        Caption = 'Obra:'
        Transparent = True
      end
      object DBText42: TDBText
        Left = 38
        Top = 157
        Width = 515
        Height = 13
        DataField = 'MUESTRAOBRA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBCheckManual: TDBCheckBox
        Left = 562
        Top = 49
        Width = 75
        Height = 17
        TabStop = False
        Caption = 'Manual'
        DataField = 'CPTE_MANUAL'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DBCheckManualClick
      end
      object dbeSuc: TDBEdit
        Left = 516
        Top = 18
        Width = 45
        Height = 24
        DataField = 'SucFac'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object dbeNumero: TDBEdit
        Left = 573
        Top = 18
        Width = 84
        Height = 24
        DataField = 'NumeroFac'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
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
        TabOrder = 11
      end
      object dbeLdr: TDBEdit
        Left = 51
        Top = 92
        Width = 286
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraLdr'
        DataSource = DSBase
        Enabled = False
        TabOrder = 12
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
        TabOrder = 13
      end
      object dbeDeposito: TDBEdit
        Left = 51
        Top = 132
        Width = 135
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraDeposito'
        DataSource = DSBase
        Enabled = False
        TabOrder = 14
      end
      object dbeEntrega: TDBEdit
        Left = 595
        Top = 92
        Width = 49
        Height = 21
        DataField = 'NroEntrega'
        DataSource = DSBase
        TabOrder = 7
      end
      object dbeMuestraVendedor: TDBEdit
        Left = 276
        Top = 132
        Width = 214
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRAVENDEDOR'
        DataSource = DSBase
        Enabled = False
        TabOrder = 15
      end
      object RxCCodigo: TJvDBComboEdit
        Left = 6
        Top = 56
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
        OnKeyDown = RxCCodigoKeyDown
      end
      object RxCLdr: TJvDBComboEdit
        Left = 6
        Top = 92
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
        ButtonWidth = 14
        TabOrder = 2
        OnButtonClick = BuscarSucrusalExecute
        OnKeyDown = RxCSucursalKeyDown
      end
      object RxCDeposito: TJvDBComboEdit
        Left = 6
        Top = 132
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
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 286
        Top = 17
        Width = 48
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
        Left = 201
        Top = 132
        Width = 72
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
        ButtonWidth = 14
        TabOrder = 6
        OnButtonClick = BuscarVendedorExecute
        OnKeyDown = rxcVendedorKeyDown
      end
      object dbeFechaVta: TJvDBDateEdit
        Left = 7
        Top = 17
        Width = 83
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
        ButtonWidth = 14
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
        OnExit = dbeFechaVtaExit
      end
      object dbeRemitos: TDBEdit
        Left = 532
        Top = 132
        Width = 173
        Height = 21
        DataField = 'NRORTO'
        DataSource = DSBase
        TabOrder = 17
      end
      object pnAvisoFUAP: TPanel
        Left = 340
        Top = 3
        Width = 272
        Height = 40
        Caption = 'Ultima fecha de actul:'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 16
        Visible = False
      end
    end
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 172
      Width = 893
      Height = 390
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ActivePage = PagDetalles
      Align = alClient
      MultiLine = True
      TabOrder = 1
      TabPosition = tpBottom
      TabStop = False
      OnChange = pcDetalleFacturaChange
      OnEnter = pcDetalleFacturaEnter
      object PagDetalles: TTabSheet
        Caption = '&Detalles'
        DesignSize = (
          885
          364)
        object Label17: TLabel
          Left = -1
          Top = 210
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
          ExplicitTop = 280
        end
        object Label2: TLabel
          Left = 528
          Top = 244
          Width = 41
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 314
        end
        object Label4: TLabel
          Left = 489
          Top = 216
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
          ExplicitTop = 286
        end
        object spMenu: TSpeedButton
          Left = 282
          Top = 208
          Width = 23
          Height = 21
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
          ExplicitTop = 278
        end
        object JvLabel1: TJvLabel
          Left = 469
          Top = 218
          Width = 20
          Height = 13
          Caption = '(F4)'
          Anchors = [akLeft, akBottom]
          ShadowPos = spLeftTop
          Transparent = True
          ExplicitTop = 288
        end
        object Bevel8: TBevel
          Left = 633
          Top = 244
          Width = 113
          Height = 20
          Anchors = [akLeft, akBottom]
          ExplicitTop = 314
        end
        object dbtTotal: TDBText
          Left = 629
          Top = 244
          Width = 101
          Height = 18
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'Total'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 314
        end
        object DBText13: TDBText
          Left = 5
          Top = 312
          Width = 47
          Height = 12
          Anchors = [akLeft, akBottom]
          DataField = 'MESES_DE_GARANTIA'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 382
        end
        object DBText14: TDBText
          Left = 67
          Top = 312
          Width = 90
          Height = 12
          Anchors = [akLeft, akBottom]
          DataField = 'VALOR_ASEGURADO'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 382
        end
        object DBText15: TDBText
          Left = 585
          Top = 245
          Width = 38
          Height = 17
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRASIGNOMONEDACPBTE'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 315
        end
        object DBText17: TDBText
          Left = 752
          Top = 244
          Width = 45
          Height = 17
          Alignment = taCenter
          Anchors = [akLeft, akBottom]
          DataField = 'MONEDA_CPBTE_COTIZACION'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 314
        end
        object shPP: TShape
          Left = 311
          Top = 209
          Width = 23
          Height = 9
          Anchors = [akLeft, akBottom]
          Brush.Color = clGreen
          Shape = stCircle
          Visible = False
          ExplicitTop = 279
        end
        object spProduccion: TSpeedButton
          Left = 801
          Top = 206
          Width = 25
          Height = 30
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
          ExplicitTop = 276
        end
        object Label7: TLabel
          Left = 104
          Top = 208
          Width = 105
          Height = 15
          Anchors = [akLeft, akBottom]
          Caption = '(Ctr+F10 Agregar Pedido)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 278
        end
        object lbModoCpbte: TLabel
          Left = 504
          Top = 318
          Width = 129
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Visualiza Modo Iva Incluido'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
          ExplicitTop = 353
        end
        object DBEdit1: TDBEdit
          Left = 633
          Top = 218
          Width = 112
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          DataField = 'DSTOIMPORTE'
          DataSource = DSBase
          TabOrder = 10
        end
        object dbeObservaciones2: TDBEdit
          Left = 3
          Top = 254
          Width = 313
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'Observacion2'
          DataSource = DSBase
          TabOrder = 2
        end
        object dbeObservaciones1: TDBEdit
          Left = 4
          Top = 230
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
          Width = 885
          Height = 202
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          Ctl3D = False
          DataSource = DatosVentasCtdo.DSVentaDet
          DefaultDrawing = False
          DrawingStyle = gdsGradient
          FixedColor = clBlue
          GradientEndColor = clBlue
          GradientStartColor = clBlue
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          PopupMenu = pmMenu
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = DBGrillaDetalleColEnter
          OnDrawColumnCell = DBGrillaDetalleDrawColumnCell
          OnDblClick = DBGrillaDetalleDblClick
          OnDragDrop = DBGrillaDetalleDragDrop
          OnDragOver = DBGrillaDetalleDragOver
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
              ReadOnly = True
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
              Width = 90
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
              Width = 275
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'UNIDAD'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
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
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 31
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
              Width = 58
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
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Dsto.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
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
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD_UNIDADES'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 320
          Top = 280
          Width = 97
          Height = 25
          Anchors = [akLeft, akBottom]
          Enabled = False
          TabOrder = 3
          object DBCheckBox2: TDBCheckBox
            Left = 3
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
        object dbeDscto_1: TDBEdit
          Left = 541
          Top = 215
          Width = 47
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 4
        end
        object Button1: TButton
          Left = 5
          Top = 277
          Width = 121
          Height = 25
          Action = CalcularRecargosTC
          Anchors = [akLeft, akBottom]
          TabOrder = 6
          Visible = False
        end
        object Button2: TButton
          Left = 132
          Top = 277
          Width = 121
          Height = 25
          Action = CancelarRecargoTC
          Anchors = [akLeft, akBottom]
          TabOrder = 7
          Visible = False
        end
        object gbPrecioTabla: TGroupBox
          Left = 276
          Top = 67
          Width = 141
          Height = 95
          Caption = 'Precio Vta.'
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Padding.Left = 5
          Padding.Top = 8
          Padding.Right = 5
          Padding.Bottom = 5
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 8
          Visible = False
          object lsPrecios: TListBox
            Left = 7
            Top = 23
            Width = 127
            Height = 65
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
            OnClick = lsPreciosClick
            OnKeyPress = lsPreciosKeyPress
          end
        end
        object pnPrecios: TPanel
          Left = 590
          Top = 23
          Width = 236
          Height = 114
          Caption = 'pnPrecios'
          Color = clBlue
          Padding.Left = 5
          Padding.Top = 10
          Padding.Right = 5
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 9
          Visible = False
          object dbgPrecios: TJvDBGrid
            Left = 6
            Top = 11
            Width = 224
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
                Width = 55
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
        object dbgExitencias: TDBGrid
          Left = 423
          Top = 213
          Width = 399
          Height = 115
          Anchors = [akLeft, akBottom]
          Color = clGradientInactiveCaption
          DataSource = DatosVentasCtdo.DSExistencia
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
          OnDrawColumnCell = dbgExitenciasDrawColumnCell
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
              Width = 93
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
              Width = 91
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
              Width = 112
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
              Width = 74
              Visible = True
            end>
        end
      end
      object PagPieCpbte: TTabSheet
        Caption = 'Impu&estos'
        ImageIndex = 1
        object bvPercepcion: TBevel
          Left = 693
          Top = 224
          Width = 97
          Height = 21
        end
        object Label6: TLabel
          Left = 288
          Top = 82
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
          Left = 288
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
          Left = 578
          Top = 4
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
          Left = 578
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
        object Bevel1: TBevel
          Left = 401
          Top = 1
          Width = 98
          Height = 21
        end
        object Bevel6: TBevel
          Left = 401
          Top = 80
          Width = 98
          Height = 21
        end
        object Bevel22: TBevel
          Left = 691
          Top = 24
          Width = 98
          Height = 21
        end
        object Bevel28: TBevel
          Left = 691
          Top = 1
          Width = 98
          Height = 21
        end
        object DBText4: TDBText
          Left = 407
          Top = 3
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NETOGRAV1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 407
          Top = 82
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
          Left = 697
          Top = 26
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NETOEXEN2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 696
          Top = 3
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NETOGRAV2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 288
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
          Left = 401
          Top = 24
          Width = 98
          Height = 21
        end
        object DBText8: TDBText
          Left = 406
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
        object DBText9: TDBText
          Left = 692
          Top = 259
          Width = 99
          Height = 21
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
        object Label3: TLabel
          Left = 568
          Top = 257
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
        object dbtImporte_IB: TDBText
          Left = 709
          Top = 226
          Width = 79
          Height = 17
          Alignment = taRightJustify
          DataField = 'PERCEPCION_IB_IMPORTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbtTasa_IB: TDBText
          Left = 641
          Top = 225
          Width = 47
          Height = 17
          Alignment = taRightJustify
          DataField = 'PERCEPCION_IB_TASA'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbPercep: TLabel
          Left = 553
          Top = 225
          Width = 83
          Height = 16
          Caption = 'Percep.IIBB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 324
          Top = 248
          Width = 72
          Height = 13
          Caption = 'Base Imponible'
        end
        object DBText12: TDBText
          Left = 444
          Top = 248
          Width = 65
          Height = 17
          DataField = 'PERCEPCION_IB_BASEIMPONIBLE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText16: TDBText
          Left = 632
          Top = 259
          Width = 38
          Height = 17
          Alignment = taRightJustify
          DataField = 'MUESTRASIGNOMONEDACPBTE'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 692
          Top = 47
          Width = 98
          Height = 21
        end
        object DBText21: TDBText
          Left = 698
          Top = 51
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NETONOGRAV2'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 578
          Top = 48
          Width = 90
          Height = 16
          Caption = 'Net.No Garv.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel3: TBevel
          Left = 401
          Top = 48
          Width = 98
          Height = 21
        end
        object DBText22: TDBText
          Left = 407
          Top = 50
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'NETONOGRAV1'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 288
          Top = 48
          Width = 90
          Height = 16
          Caption = 'Net.No Garv.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrillaIva: TDBGrid
          Left = 428
          Top = 107
          Width = 388
          Height = 57
          Color = clMenu
          DataSource = DatosVentasCtdo.DSImpuestos
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
              Width = 61
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
          Left = 340
          Top = 80
          Width = 47
          Height = 21
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 1
        end
        object gbValores: TGroupBox
          Left = 8
          Top = 0
          Width = 209
          Height = 65
          Caption = 'Valores Recibidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object DBEdit2: TDBEdit
            Left = 72
            Top = 22
            Width = 121
            Height = 21
            DataField = 'VALORES_RECIBIDOS'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object dbcPercibeIIBB: TDBCheckBox
          Left = 324
          Top = 225
          Width = 161
          Height = 17
          Caption = 'Percibir Ingresos Brutos'
          DataField = 'PERCIBE_IB'
          DataSource = DSBase
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = dbcPercibeIIBBClick
        end
        object DBImage1: TDBImage
          Left = 10
          Top = 82
          Width = 151
          Height = 135
          DataField = 'QRIMAGE'
          DataSource = DSBase
          TabOrder = 4
        end
        object dbgPercecpionesIVA: TDBGrid
          Left = 428
          Top = 170
          Width = 387
          Height = 49
          Color = clMenu
          DataSource = DatosVentasCtdo.DSPercepcionIVA
          Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 5
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
              Width = 61
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
      end
      object PagValores: TTabSheet
        Caption = '&Valores'
        ImageIndex = 2
        inline FrameMovValoresIngreso1: TFrameMovValoresIngreso
          Left = 0
          Top = 0
          Width = 885
          Height = 328
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          BiDiMode = bdLeftToRight
          Color = clBtnFace
          ParentBiDiMode = False
          ParentColor = False
          TabOrder = 0
          ExplicitWidth = 885
          ExplicitHeight = 328
          inherited lbTotalValores: TLabel
            Left = 158
            Top = 238
            Height = 13
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 158
            ExplicitTop = 238
            ExplicitHeight = 13
          end
          inherited Label25: TLabel
            Left = 3
            Top = 238
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 3
            ExplicitTop = 238
          end
          inherited DBText12: TDBText
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited Label46: TLabel
            Width = 20
            Height = 13
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 20
            ExplicitHeight = 13
          end
          inherited DBText13: TDBText
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited Label51: TLabel
            Left = 3
            Top = 253
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 3
            ExplicitTop = 253
          end
          inherited lbResto: TLabel
            Left = 158
            Top = 253
            Height = 13
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 158
            ExplicitTop = 253
            ExplicitHeight = 13
          end
          inherited lbAvisoChe3: TLabel
            Left = 311
            Top = 243
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 311
            ExplicitTop = 243
          end
          inherited dbgMovimientos: TDBGrid
            Height = 155
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
          end
          inherited pcValores: TPageControl
            Left = 329
            Width = 472
            ExplicitLeft = 329
            ExplicitWidth = 472
            inherited tsEfectivo: TTabSheet
              ExplicitTop = 24
              ExplicitHeight = 206
              inherited dbt1: TDBText
                StyleElements = [seFont, seClient, seBorder]
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
                StyleElements = [seFont, seClient, seBorder]
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
              ExplicitWidth = 464
              ExplicitHeight = 206
              inherited Label8: TLabel
                Width = 31
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 31
                ExplicitHeight = 13
              end
              inherited Label9: TLabel
                Width = 20
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
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
              inherited Label47: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label48: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbtID_Che3: TDBText
                StyleElements = [seFont, seClient, seBorder]
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
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit4: TDBEdit
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
              inherited DBEFirmante: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeImporteChe3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
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
                Width = 554
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 554
                inherited Bevel1: TBevel
                  Width = 552
                  ExplicitWidth = 552
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
                inherited BitBtn6: TBitBtn
                  OnClick = FrameMovValoresIngreso1BitBtn6Click
                end
                inherited cbTCredito: TJvDBComboEdit
                  Height = 21
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitHeight = 21
                end
                inherited DBETc_Cuotas: TDBEdit
                  Top = 39
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitTop = 39
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
                Height = 29
                ExplicitHeight = 29
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
            Height = 21
            StyleElements = [seFont, seClient, seBorder]
            ExplicitHeight = 21
          end
          inherited ceCaja: TJvComboEdit
            Height = 21
            StyleElements = [seFont, seClient, seBorder]
            ExplicitHeight = 21
          end
          inherited ActionList1: TActionList
            Top = 41
          end
          inherited CDSCajaMov: TClientDataSet
            AfterPost = FrameMovValoresIngreso1CDSCajaMovAfterPost
            BeforeDelete = FrameMovValoresIngreso1CDSCajaMovBeforeDelete
            AfterDelete = FrameMovValoresIngreso1CDSCajaMovAfterDelete
          end
          inherited CDSBuscaBanco: TClientDataSet
            Left = 600
            Top = 120
          end
          inherited DSPBuscaBanco: TDataSetProvider
            Left = 752
            Top = 232
          end
          inherited CDSBuscaTCredito: TClientDataSet
            Top = 248
          end
          inherited DSPBuscaTCredito: TDataSetProvider
            Top = 248
          end
          inherited CDSBuscaCajaCab: TClientDataSet
            Left = 680
            Top = 136
          end
          inherited DSPBuscaCajaCab: TDataSetProvider
            Left = 752
            Top = 168
          end
          inherited CDSCompAjuste: TClientDataSet
            Left = 744
            Top = 48
          end
          inherited DSCompAjuste: TDataSource
            Left = 832
            Top = 88
          end
          inherited DSPCompAjuste: TDataSetProvider
            Left = 712
            Top = 96
          end
          inherited ComBuscadorCaja: TComBuscador
            Left = 569
            Top = 228
          end
          inherited QCoeficienteTC: TFDQuery
            Left = 680
            Top = 56
          end
          inherited QCajaCab: TFDQuery
            Left = 440
            Top = 208
          end
          inherited QCompAjuste: TFDQuery
            Left = 640
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 208
          Width = 227
          Height = 25
          TabOrder = 1
          object DBText10: TDBText
            Left = 77
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
      end
      object pagSeries: TTabSheet
        Caption = 'Nro.Series'
        ImageIndex = 3
        DesignSize = (
          885
          364)
        object Label24: TLabel
          Left = 368
          Top = 280
          Width = 87
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Cant.Comprada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 350
        end
        object dbtCantidad: TDBText
          Left = 448
          Top = 280
          Width = 65
          Height = 16
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'Cantidad'
          ExplicitTop = 350
        end
        object Label25: TLabel
          Left = 552
          Top = 280
          Width = 63
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Ingresados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 350
        end
        object Label11: TLabel
          Left = 5
          Top = 167
          Width = 82
          Height = 13
          Caption = 'Con Codigo Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 5
          Top = 183
          Width = 83
          Height = 13
          Caption = 'Con Codigo Barra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 5
          Top = 199
          Width = 122
          Height = 13
          Caption = 'Sin Control de Serie o C.B'
        end
        object DBStatusLabel2: TJvDBStatusLabel
          Left = 635
          Top = 280
          Width = 85
          Height = 13
          DataSetName = ' '
          DataSource = DatosVentasCtdo.DSVtaSubDetalle
          Style = lsRecordNo
          ShowOptions = doGlyph
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          ShadowPos = spLeftTop
          Transparent = True
          ExplicitTop = 344
        end
        object dbgDetalleVta: TDBGrid
          Left = 1
          Top = 2
          Width = 360
          Height = 299
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DatosVentasCtdo.DSVentaDet
          DefaultDrawing = False
          FixedColor = clFuchsia
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgDetalleVtaDrawColumnCell
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigp'
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
          Left = 364
          Top = 3
          Width = 337
          Height = 270
          Anchors = [akLeft, akTop, akBottom]
          Color = clAqua
          DataSource = DatosVentasCtdo.DSVtaSubDetalle
          FixedColor = clMoneyGreen
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = BuscarSerieExecute
          OnKeyPress = dbgSeriesKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'SERIE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Codigo Barra/Nro.de Serie'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
      object pagPorCtaOrden: TTabSheet
        Caption = 'Por Cta.Orden'
        ImageIndex = 4
        DesignSize = (
          885
          364)
        object dbgConsignaciones: TDBGrid
          Left = 12
          Top = 48
          Width = 650
          Height = 240
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DatosVentasCtdo.DSVtaDetConsig
          FixedColor = clMoneyGreen
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgConsignacionesColEnter
          OnEditButtonClick = BuscaRecepcionDetalleExecute
          OnEnter = dbgConsignacionesEnter
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Color = clInfoBk
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Codio'
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
              Title.Caption = 'Detalle'
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
        object dbeProveedor: TDBEdit
          Left = 77
          Top = 21
          Width = 286
          Height = 21
          Color = clInfoBk
          DataField = 'MUESTRAPROVEEDOR'
          DataSource = DSBase
          Enabled = False
          TabOrder = 1
        end
        object ceProveedor: TJvDBComboEdit
          Left = 11
          Top = 21
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
          TabOrder = 2
          OnButtonClick = BuscarProveedorExecute
        end
      end
      object tsLote: TTabSheet
        Caption = 'Lote'
        ImageIndex = 5
        DesignSize = (
          885
          364)
        object dbgDetalleLotes: TDBGrid
          Left = 3
          Top = 5
          Width = 474
          Height = 292
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DatosVentasCtdo.DSVentaDet
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
          Left = 488
          Top = 12
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
          object JvLabel8: TJvLabel
            Left = 15
            Top = 25
            Width = 35
            Height = 13
            Caption = 'Id Lote'
            ShadowPos = spLeftTop
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
            DataSource = DatosVentasCtdo.DSVentaLote
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
            object JvLabel10: TJvLabel
              Left = 15
              Top = 18
              Width = 51
              Height = 13
              Caption = 'Despacho'
              ShadowSize = 1
              ShadowPos = spLeftTop
              Transparent = True
            end
            object JvLabel11: TJvLabel
              Left = 15
              Top = 45
              Width = 23
              Height = 13
              Caption = 'Lote'
              ShadowSize = 1
              ShadowPos = spLeftTop
              Transparent = True
            end
            object JvLabel9: TJvLabel
              Left = 15
              Top = 71
              Width = 44
              Height = 13
              Caption = 'Cantidad'
              ShadowSize = 1
              ShadowPos = spLeftTop
              Transparent = True
            end
            object DBEdit5: TDBEdit
              Left = 88
              Top = 14
              Width = 116
              Height = 21
              DataField = 'DESPACHO'
              DataSource = DatosVentasCtdo.DSVentaLote
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
              DataSource = DatosVentasCtdo.DSVentaLote
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 88
              Top = 68
              Width = 116
              Height = 21
              DataField = 'CANTIDAD'
              DataSource = DatosVentasCtdo.DSVentaLote
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
      object pagTablas: TTabSheet
        Caption = 'Tablas'
        ImageIndex = 6
        object DBGrid1: TDBGrid
          Left = 13
          Top = 0
          Width = 369
          Height = 361
          DataSource = DSBase
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object DBGrid2: TDBGrid
          Left = 420
          Top = 0
          Width = 421
          Height = 335
          DataSource = DatosVentasCtdo.DSVentaDet
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
    object pnCosto: TPanel
      Left = 384
      Top = 544
      Width = 419
      Height = 23
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 2
      DesignSize = (
        419
        23)
      object dbtCosto: TDBText
        Left = 353
        Top = 3
        Width = 62
        Height = 15
        DataField = 'COSTO_TOTAL'
        DataSource = DatosVentasCtdo.DSVentaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 305
        Top = 3
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
        Left = 5
        Top = 2
        Width = 260
        Height = 15
        Anchors = [akLeft, akBottom]
        DataField = 'Detalle'
        DataSource = DatosVentas.DSVentaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object chPreview: TCheckBox
      Left = 795
      Top = 510
      Width = 44
      Height = 18
      Anchors = [akLeft, akBottom]
      Caption = 'View'
      TabOrder = 3
      WordWrap = True
    end
  end
  inherited ToolBar1: TToolBar
    Top = 584
    Width = 893
    Height = 31
    Align = alBottom
    OnDblClick = ToolBar1DblClick
    ExplicitTop = 584
    ExplicitWidth = 893
    ExplicitHeight = 31
    inherited btConfirma: TBitBtn
      Width = 73
      ExplicitWidth = 73
    end
    inherited btNuevo: TBitBtn
      Left = 75
      ExplicitLeft = 75
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
      Width = 13
      ExplicitWidth = 13
    end
    inherited btBuscar: TBitBtn
      Left = 315
      ExplicitLeft = 315
    end
    inherited Ne: TSpeedButton
      Left = 390
      Width = 16
      ExplicitLeft = 390
      ExplicitWidth = 16
    end
    inherited btBorrar: TBitBtn
      Left = 406
      Width = 11
      Visible = False
      ExplicitLeft = 406
      ExplicitWidth = 11
    end
    inherited btSalir: TBitBtn
      Left = 417
      TabOrder = 7
      ExplicitLeft = 417
    end
    object btBuscarPresupuestos: TBitBtn
      Left = 492
      Top = 0
      Width = 65
      Height = 29
      Action = BuscarPresupuesto
      Caption = '&Presup.'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FF0000003F33337F66667F7272726666664C4C3B3B3B3B3B3B3B3B3BFF00
        FFFF00FFFF00FFFF00FFFF00FF000000664C4CFFCCCCFFCCCCFFCCCCFFE5E5E5
        CCCCCC9999CC99999972725044447777771D1D1DFF00FFFF00FF000000997272
        CC9999FFCCCCBF99997F66667F7272726666664C4CCC9999CC9999CC99995044
        447777771D1D1DFF00FF664C4CCC9999664C4C7F7F7FBFBFBFFFFFFFFFFFFFFF
        FFFFFFFFFF7F7F7F726666997272CC99993B3B3B595959FF00FF664C4C726666
        FFFFFF7F7F7F7F4C4C7F4C4C7F4C4C7F4C4C7F4C4C7F7F7FBFBFBFBFBFBF9972
        723B3B3B7777771D1D1D3F3F3FFFFFFF665959FF9999FF9999FF9999FF9999FF
        B2B2FFCCCCFF9999BF7272BFBFBFBFBFBF3B3B3B7777773B3B3B7F7F7F7F7F7F
        D89999CC7F7FE59999FF9999FF9999FF9999FF9999E5BFBFCC7F7F724C4CFFFF
        FF3B3B3B777777FF00FF7F7F7FBFBFBF997272D89999F2CCCCE59999CC7F7FCC
        7F7FCC7F7FD88C8CCE9A9A726666FFFFFF3B3B3B1D1D1DFF00FF000000BFBFBF
        BFBFBF664C4C997272CC9999CC9999CC9999CC9999997272726666FFFFFF3F3F
        3FFF00FFFF00FFFF00FFFF00FF0000007F7F7FFFFFFFBFBFBF7F7F7F7F7F7F7F
        7F7F7F7F7FBFBFBFBFBFBF6666665959591D1D1DFF00FFFF00FFFF00FFFF00FF
        FF00FF0000003F3F3F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6FAFAFAFC0C0C05656
        565959591D1D1DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0000006F6F6F6F6F6F0404040000005959591D1D1DFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000002E2E2E3333
        33040404000000595959FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0000002E2E2E333333040404000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
        002E2E2E333333040404FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000}
      TabOrder = 8
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 15
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 572
      Top = 0
      Width = 73
      Height = 29
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
      TabOrder = 6
    end
    object ToolButton2: TToolButton
      Left = 645
      Top = 0
      Width = 15
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object BtAnular: TSpeedButton
      Left = 660
      Top = 0
      Width = 21
      Height = 29
      Hint = 'Anular'
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
    object spRto: TSpeedButton
      Left = 681
      Top = 0
      Width = 27
      Height = 29
      Hint = 'Generar Rtos'
      Action = GenerarRemito
      Flat = True
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000008000000080
        0000008000000080000000800000008000000080000000800000008000000080
        000000800000007F0000007D0000007B00000178010001730100026D02000463
        040007550700094809000C3C0C000F330F00102E10001329130015241500171F
        17001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004E4E4E005A5A5A0066666600717171007B7B7B00858585008E8E
        8E0096969600AAA8A600C2BDB800D6D0C800E6DED600F2EBE400F8F3EC00FBF6
        F100FDF9F400FEFAF600FEFBF700FEFBF800FEFCF900FEFCF900FEFBF800FEFB
        F800FEFBF600FEFAF500FEFAF500FEFAF400FEF9F300FEF7F000FEF6ED00FEF5
        EB00FEF4EA00FEF4E800FEF3E700FEF3E500FEF1E300FEF1E200FEF0E000FEEF
        DF00FEEEDC00FEEDD800FEEBD500FEEAD300FEE9D000FEE8CF00FEE8CE00FEE7
        CD00FEE7CC00FEE6CB00FEE6CA00FEE4C700FEE3C600FEE2C400FEE1C200FEE0
        C000FEDFBE00FEDEBB00FEDCB700FED9B300FED8B100FED7AE00FED6AC00FED5
        AA00FED4A900FED4A800FED3A600FED3A600FDD2A400FDD1A300FDD1A100FDD1
        A200FDD1A200FCD1A300FCD2A400FBD2A600F8D2A800F5D1AA00F0CFAB00E8CB
        AB00DEC5A900CFBBA500BAAE9F00ACA49B00A29E99009D9A9800989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
        A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
        A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600BBABBB00C0A1C000C597
        C500CA8DCA00CE84CE00D574D500DD5EDD00E93FE900F127F100F813F800FB09
        FB00FD04FD00FE01FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE01FE00FE02FE00FE03
        FE00FE04FD00FD06FC00FD08FA00F70FEC00EF17D700E423BB00D6339500C549
        5E00BD5A2D00BD631300C1660900C4670400C6670100C8680000C8680000C968
        0000C9680000C9680000C9680000C9680000C9680000C9680000C9680000C968
        0000C9680000C9680000C9680000C9680000C9680000C9680000D1D1D1D1D1D1
        D1D1D1D1D1D1D1D1D1D1D1D1F7F7F7F7F7F7F7F7F7F7F7F7D1D1D1F76E74787B
        7D7E818488888888F7D1D1F76C6F74787B7C7E8184888888F7D1D1F76A0A0A0A
        0A0A0A0A0A0A0A88F7D1D1F7666A6C6E74787B7C7E818488F7D1D1F7630A0A0A
        0A0A0A0A0A0A0A84F7D1D1F75F6367696C6E74787B7C7E81F7D1D1F75D0A0A0A
        0A0A0A0A0A0A0A7EF7D1D1F7595D5F63676A6C6E74787B7CF7D1D1F7560A0A0A
        0A0A0A0A0A0A0A7BF7D1D1F75757545D5F6367696C6E7478F7D1D1F7570A0A0A
        0A0A0A0A0A0A0A74F7D1D1F757575756545D5F6367696C6EF7D1D1D1F7F7F7F7
        F7F7F7F7F7F7F7F7D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1}
    end
    object spCorreo: TSpeedButton
      Left = 708
      Top = 0
      Width = 24
      Height = 29
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
    object spAcopiar: TSpeedButton
      Left = 732
      Top = 0
      Width = 24
      Height = 29
      Action = Acopiar
      Flat = True
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C00231D1B002A1E1A00301E1900361F18003C20
        1700412016004921140051211200572110005C210F0061210D0065210C006920
        0A006E20090072200700771F05007B1F04007E1F04007F1E0300811E0200811E
        0200811E0200811E0100811F0200801F0200801F02007F2002007E2002007B21
        02007623020070250200672802005D2C02005030010044340100343A01002140
        0100144500000E46000009480000074800000549000003490000034A0000024A
        0000024A0000024A0000014A0000024A0000024A0000044A0000064A0000094A
        0000115105001F570900315C0C00475E0E005A5F0F006C5F0E007F5C0C009358
        0900A1520500B04B0000B44B0000B84B0000BA4B0000BB4B0000BC4B0000BC4B
        0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4C
        0000BC4C0000BC4C0000BC4C0000BC4C0100BB4C0200BA4D0300B94D0500B74E
        0800B5500B00B2511000AE541700AA561E00A45A28009F5E310099623D009268
        4B008D6C57008A705E008773650084776D00817B76007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
        A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
        A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
        B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
        C100C5C4C300CAC8C500CECBC700D2CEC900D5D1CB00DBD5CE00E2DBD300E9E2
        D800F1E9E000F6EFE500FAF3E900FCF5EC00FDF7EE00FEF8F000FEF8F100FEF9
        F200FEF8F000FEF7ED00FEF4E900FEF3E500FEF1E300FEF0E000FEEFDF00FEEE
        DC00FEECD900FEEBD500FEEAD300FEE9D100FEE8CF00FEE6CD00FEE5CA00FEE4
        C700FEE3C500FEE0C600FEDBC600FED3C800FEC4CC00FEB3D000FE95D600FE79
        DC00FE53E600FE32F000FE18F700FE02FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F66C6C6C6C6C6C6CF6F6F6F6F6F6F6F6F6D1D3D7DDE2E3
        6CF6F6F6F6F6F6F6F6F6D1D1D5DADFE36CF6F6F6F6F6F6F6F6F6D1D1D3D7DCE2
        6CF6F6F6F6F6F6F6F6F63333333333336CF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F64CF66C3333333333F6F6F6F6F6F6F64C4CF66CD3D7DDE2E3F6F6F6F6F6F6
        4C7B4CF66CD1D5DADFE3F6F6F6F6F6F6F64C4CF66CD1D3D7DCE2F6F6F6F6F6F6
        F6F64CF66C33333333333333333333336CF6F6F6F6F6F6F6F6F6D1D3D7DDE2E3
        6CF6F6F6F6F6F6F6F6F6D1D1D5DADFE36CF6F6F6F6F6F6F6F6F6D1D1D3D7DCE2
        6CF6F6F6F6F6F6F6F6F66C6C6C6C6C6C6CF6F6F6F6F6F6F6F6F6}
    end
    object spFiscalizar: TSpeedButton
      Left = 756
      Top = 0
      Width = 24
      Height = 29
      Action = Fiscalizar
      Caption = 'F'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object spNCredito: TSpeedButton
      Left = 780
      Top = 0
      Width = 28
      Height = 29
      Action = HacerNC
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00B4B3E0006361CA001D19BA00140EC100140EC1001D19
        BA006361CA00B4B3E000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F4F3FB004B48BF000F0BD800140FF7001711FF001711FF001711FF001711
        FF00140FF7000F0BD8004B48BF00F4F3FB00FF00FF00FF00FF00FF00FF00F6F6
        FC002724BF001513F6001917FF001715F9001715F4001715F4001715F4001715
        F4001715F9001917FF001513F6002724BF00F6F6FC00FF00FF00FF00FF004D4A
        CD00191BF6001B1EFC00191CF500191CF500191CF600191CF600191CF600191C
        F600191CF500191CF5001B1EFC00191BF6004D4ACD00FF00FF00B8B6EC001416
        E4001D27FF001A22F9001B22F9001B22F9001B22F9001B22F9001B22F9001B22
        F9001B22F9001B23F9001A21F9001D27FF001416E400B8B6EC006764E0001D2A
        FE001B2BFD001B2AFF001B2AFF001B2AFF001D2CFF001D2CFF001D2CFF001D2C
        FF001E2CFF001E2CFF001E2CFF001F2DFF001E29FE006966E0003435E900182C
        EB00322E11002724100024211100221F0F001F1E0C001E1B0B001B1A09001B18
        08001A1807001816070018170400161300002134ED002728E500565AF4003049
        E6004A4639003D3B37003B39390037353300322F2E002D2B2B00292727002624
        25002422220021202100201E1E001E190800273FEC00181BE7005555F6006983
        F400766F650043413E00383635003836350035333100312E2D002B2928002724
        23001F1F1F001E1C1D00181717001C160800233CEB002023E2005F5BF700667D
        F4009C9988008E897E007C776C00656157005A554A00514C40004F4A41004B46
        3D0048433A0045413800413E3100434030005168EB005F5BEA008D85F6007186
        FF006283FF006684FF006987FF006A89FF006685FF005876FF005270FF005271
        FF005472FF005E7DFF006A87FF006B8EFF007387F4008B83ED00C8C5FB006260
        FA0081A2FF00617EFE006783FE006984FF006986FF006C89FF006E8AFF006E8A
        FF006E8AFF006B87FF00627FFF0084A3FF005858DB00C8C5FB00FF00FF00756C
        F7008089FD0089A8FF006685FD006A88FD006E8AFD006E8AFD006E8AFD006D8A
        FD006A87FC006685FE008CAAFF00747CE2007169EC00FF00FF00FF00FF00F8F8
        FF00564BF7008289FB00A0BEFF0083A2FF006F91FE007090FD007090FD007091
        FF0084A2FF00A1C0FF007986E8005046E300F8F8FF00FF00FF00FF00FF00FF00
        FF00F7F6FF00746DF8006562F60096A5F900A4BBFD00A4BCFF00A2BCFF00A3BA
        FC0093A4F1005F5EE600716AF000F7F6FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00C7C3FD00877FF900625EF5005F5BF2005F5BF100605B
        F100857FF500C6C3FD00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton3: TSpeedButton
      Left = 808
      Top = 0
      Width = 28
      Height = 29
      Hint = 'Papelera'
      Action = Papelera
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00CD06CA3A8E327BAE795A5EF07A675CFD776357FD7254
        53F28B3176B0CD07C93BFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AA16A070928075FDAC988BFFA48E80FFA08A7BFF9E8778FF9B83
        74FF957C6DFF745D52FDAA16A070FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F801F70885716AFAAD998CFF9E8778FF9F8979FF9E8778FF9B8576FF9880
        70FF998171FF947A6AFF695248FAF801F708FF00FF00FF00FF00FF00FF00FF00
        FF00D905D72C9D8D82FFA89487FF9F8879FF9F8879FF9E8778FF9B8576FF9780
        70FF9E8778FF9A8373FF715B4CFFDA05D72CFF00FF00FF00FF00FF00FF00FF00
        FF00B40AAE58AC9E93FFC3B4AAFFA08A7BFF9D8778FF9D8777FF9B8575FF967D
        6EFF9C8576FF9E8879FF796254FFB40BAF59FF00FF00FF00FF00FF00FF00FF00
        FF00A20D9C6DBAACA3FFCBBDB3FFBEADA1FFAF9C8FFFA59082FFA0897AFF9982
        72FFA18B7DFFA28D80FF826859FFA30E9D6DFF00FF00FF00FF00FF00FF00FF00
        FF009F18947DC7B9B0FFCABBB2FFBFAEA2FFB7A498FFAF9B8FFFA79284FF9E88
        78FFA28C7EFFA28C80FF886F60FF9E199280FF00FF00FF00FF00FF00FF00FF00
        FF00902E7DA7D0C3BAFFC9BAB0FFBEADA1FFB7A599FFB09D90FFA89386FF9D88
        78FFA08A7BFFA18C7EFF8E7466FF8E2D7AA9FF00FF00FF00FF00FF00FF00FF00
        FF00883C73BED6CAC2FFCCBEB5FFBAAAA0FFB19F93FFAC9A8EFFAA978BFFA794
        87FFAD9A8FFFAA978BFF93796AFF82356CBEFF00FF00FF00FF00FF00FF00FF00
        FF00805269DDC8BAB0FFBEB0A5FFD3CAC1FFDBD2CAFFD3C7BDFFCCBCB1FFC2AE
        A2FFB29A8DFFA68F81FFA08B7CFF723F57DBFF00FF00FF00FF00FF00FF00FF00
        FF00765E5AF6D4CDC3FFEFEFE9FFE5E0D9FFE5DED8FFD2C5BCFFCBBBB1FFC4B0
        A5FFBEA69AFFB89C90FFA68B7BFF6C514DF5FF00FF00FF00FF00FF00FF00FF00
        FF00766357FDEEEFE8FFEEECE7FFE9E5DFFFECE6E2FFD2C5BCFFCBBBB1FFC4B0
        A5FFBEA69AFFB79B8FFFB29688FF756156FDFF00FF00FF00FF00FF00FF00FF00
        FF007B3C62CDD3CCC4FFEFEEE9FFEAE6E1FFECE7E3FFD2C5BCFFCBBBB1FFC4B0
        A5FFBCA498FFBBA195FFBBA99FFF7C3C65CBFF00FF00FF00FF00FF00FF00FF00
        FF00DF02DE2277405ED6B3A89EFFE6E0DBFFEDE7E3FFDBD1C9FFD6C8C0FFD3C3
        BAFFCFC0B7FFAB9C91FF77425DD8DD02DC24FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FD00FD02AE12A3697F3B68C7775F5CF6817066FD817066FD7660
        5CF87F3B66C9AC13A36BFD00FD02FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object SpeedButton4: TSpeedButton
      Left = 836
      Top = 0
      Width = 24
      Height = 29
      Action = GenerarNotaPedido
      Caption = 'NP'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object spNovedadesDetalle: TSpeedButton
      Left = 860
      Top = 0
      Width = 24
      Height = 29
      Action = VerNovedadesDet
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited Panel1: TPanel
    Top = 615
    Width = 893
    Height = 22
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 615
    ExplicitWidth = 893
    ExplicitHeight = 22
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 20
    end
    object imBalanza: TImage [1]
      Left = 866
      Top = 1
      Width = 26
      Height = 20
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
      ExplicitLeft = 820
      ExplicitHeight = 21
    end
    inherited sbEstado: TStatusBar
      Width = 778
      Height = 20
      Panels = <
        item
          Width = 400
        end
        item
          Width = 150
        end
        item
          Width = 50
        end>
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 778
      ExplicitHeight = 20
    end
  end
  object gbLista: TGroupBox [3]
    Left = 680
    Top = 37
    Width = 165
    Height = 76
    Caption = 'Lista'
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object DBText2: TDBText
      Left = 70
      Top = 20
      Width = 25
      Height = 11
      DataField = 'LISTAPRECIO'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText32: TDBText
      Left = 42
      Top = 0
      Width = 81
      Height = 11
      DataField = 'NOMBRE'
      DataSource = DatosVentasCtdo.DSListaPrecios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbcLista: TDBLookupComboBox
      Left = 9
      Top = 17
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
      ListSource = DatosVentasCtdo.DSListaPrecios
      ParentFont = False
      TabOrder = 0
      OnClick = dbcListaClick
      OnKeyDown = dbcListaKeyDown
    end
    object DBCheckBox1: TDBCheckBox
      Left = 6
      Top = 39
      Width = 57
      Height = 37
      Hint = 'Determian el tipo de Facturacion de Mercadreis o Servicios'
      TabStop = False
      Caption = 'Fc.de Servic.'
      DataField = 'TIPO_VTA'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'M'
      WordWrap = True
    end
  end
  object dbchCtayOrden: TDBCheckBox [4]
    Left = 756
    Top = 82
    Width = 89
    Height = 23
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
    TabOrder = 4
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    WordWrap = True
    OnClick = dbchCtayOrdenClick
  end
  object dbcJuri: TDBLookupComboBox [5]
    Left = 366
    Top = 114
    Width = 64
    Height = 21
    DataField = 'JURIDICION_LOCALIDAD'
    DataSource = DSBase
    DropDownWidth = 400
    KeyField = 'ID'
    ListField = 'ID;ID_JURIDICION;LOCALIDAD;PROVINCIA'
    ListSource = DatosVentasCtdo.DSBuscaLocalidadJuri
    TabOrder = 5
    OnClick = dbcJuriClick
  end
  object pnAcopio: TPanel [6]
    Left = 707
    Top = 528
    Width = 82
    Height = 32
    Hint = 'Comprobante de Acopio'
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    object dbtAcopio: TDBText
      Left = 16
      Top = 14
      Width = 60
      Height = 15
      Cursor = crHandPoint
      Alignment = taCenter
      DataField = 'MUESTRAACOPIO'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = dbtAcopioClick
    end
    object JvLabel12: TJvLabel
      Left = 39
      Top = 2
      Width = 35
      Height = 13
      Caption = 'Acopio'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
  end
  object pnCtroCosto: TPanel [7]
    Left = 703
    Top = 119
    Width = 73
    Height = 18
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 7
    object dbtCtroCosto: TDBText
      Left = 40
      Top = 1
      Width = 61
      Height = 13
      Cursor = crHandPoint
      Hint = 'Cento de Costo'
      AutoSize = True
      DataField = 'CENTRO_COSTO'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object lbCtroCosto: TJvLabel
      Left = 5
      Top = 1
      Width = 39
      Height = 13
      Cursor = crHandPoint
      Caption = 'C.Cost.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
      OnClick = lbCtroCostoClick
      OnMouseMove = lbCtroCostoMouseMove
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      HotTrackOptions.FrameVisible = True
    end
  end
  object ToolBar2: TToolBar [8]
    Left = 0
    Top = 0
    Width = 893
    Height = 22
    ButtonHeight = 21
    ButtonWidth = 82
    Caption = 'ToolBar2'
    DrawingStyle = dsGradient
    Menu = MainMenu1
    ShowCaptions = True
    TabOrder = 8
  end
  object pnNC: TPanel [9]
    Left = 167
    Top = 540
    Width = 198
    Height = 19
    Anchors = [akLeft, akRight, akBottom]
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
    TabOrder = 9
    DesignSize = (
      198
      19)
    object DBText24: TDBText
      Left = 9
      Top = 0
      Width = 27
      Height = 21
      Cursor = crHandPoint
      Alignment = taCenter
      Anchors = [akLeft, akBottom]
      DataField = 'MUESTRATIPONC'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitTop = -1
    end
    object DBText25: TDBText
      Left = 42
      Top = 1
      Width = 88
      Height = 18
      Cursor = crHandPoint
      Anchors = [akLeft, akBottom]
      DataField = 'MUESTRANRONC'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = DBText25Click
      ExplicitTop = 0
    end
  end
  inherited ActionList1: TActionList
    Left = 584
    Top = 176
    inherited Borrar: TAction
      ShortCut = 16430
    end
    object BuscarSucrusal: TAction
      Caption = 'BuscarSucrusal'
      OnExecute = BuscarSucrusalExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BuscarLdr: TAction
      Caption = 'BuscarLdr'
      OnExecute = BuscarLdrExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object Anular: TAction
      OnExecute = AnularExecute
    end
    object BuscarVendedor: TAction
      Caption = 'BuscarVendedor'
      OnExecute = BuscarVendedorExecute
    end
    object DatosCliente: TAction
      Hint = 'Modificar Datos de Cliente en el  Encabezado'
      OnExecute = DatosClienteExecute
    end
    object DesmarcarImpresa: TAction
      Caption = 'Desmarcar Impresa'
      ShortCut = 49232
      OnExecute = DesmarcarImpresaExecute
    end
    object BuscarPresupuesto: TAction
      Caption = '&Presupuesto'
      OnExecute = BuscarPresupuestoExecute
    end
    object Recalcular: TAction
      Caption = 'Recalcular (Por Lista de Precio)'
      ShortCut = 49234
      OnExecute = RecalcularExecute
    end
    object AgregarCliente: TAction
      Hint = 'Agregar Cliente Nuevo'
      OnExecute = AgregarClienteExecute
    end
    object BuscarSerie: TAction
      Caption = 'BuscarSerie'
      OnExecute = BuscarSerieExecute
    end
    object ReCalcularTodo: TAction
      Caption = 'Re Calcular Todo'
      ShortCut = 49275
      OnExecute = ReCalcularTodoExecute
    end
    object CalcularRecargosTC: TAction
      Caption = 'Calcular Recargos TC'
      OnExecute = CalcularRecargosTCExecute
    end
    object CancelarRecargoTC: TAction
      Caption = 'Cancelar Recargo TC'
      OnExecute = CancelarRecargoTCExecute
    end
    object ExportarXML: TAction
      Caption = 'Exportar XML'
      ShortCut = 49221
      OnExecute = ExportarXMLExecute
    end
    object PegarDetalle: TAction
      Caption = 'Pegar Detalle'
      Hint = 'Pega el detalle'
      ShortCut = 49238
      OnExecute = PegarDetalleExecute
    end
    object CopiarDetalle: TAction
      Caption = 'Copiar Detalle'
      Hint = 'Copiar detalle'
      ShortCut = 49219
      OnExecute = CopiarDetalleExecute
    end
    object ClonarFc: TAction
      Caption = 'Clonar Fc'
      Hint = 'Clonacion'
      ShortCut = 16496
      OnExecute = ClonarFcExecute
    end
    object EnviarCorreo: TAction
      Hint = 'Envia Correo'
      OnExecute = EnviarCorreoExecute
    end
    object TransferirXML: TAction
      Caption = 'Transferir XML'
      Hint = 'Exportar para transferecnias'
      ShortCut = 49240
      OnExecute = TransferirXMLExecute
    end
    object CambiarNro: TAction
      Caption = 'Cambiar Nro'
      ShortCut = 16462
      OnExecute = CambiarNroExecute
    end
    object TransofrmarFc: TAction
      Caption = 'Transofrmar Fc'
      ShortCut = 16468
      OnExecute = TransofrmarFcExecute
    end
    object BuscarProveedor: TAction
      Caption = 'BuscarProveedor'
      OnExecute = BuscarProveedorExecute
    end
    object BuscaRecepcionDetalle: TAction
      Caption = 'BuscaRecepcionDetalle'
      OnExecute = BuscaRecepcionDetalleExecute
    end
    object CambioDeposito: TAction
      Caption = 'Cambio Deposito'
      ShortCut = 16452
      OnExecute = CambioDepositoExecute
    end
    object CalcularIvaDet: TAction
      Caption = 'Calcular el Iva en detalle'
      ShortCut = 16457
      OnExecute = CalcularIvaDetExecute
    end
    object DuplicarComprobante: TAction
      Caption = 'Duplicar Comprobante'
      ShortCut = 49220
      OnExecute = DuplicarComprobanteExecute
    end
    object RecalculoSuma00: TAction
      Caption = 'Recalculo Suma (para dos Deimales 0.00)'
      OnExecute = RecalculoSuma00Execute
    end
    object Acopiar: TAction
      Hint = 'Generar Acopio de Mercaderia'
      OnExecute = AcopiarExecute
    end
    object Freezar: TAction
      Caption = 'Freezar'
      ShortCut = 16454
      OnExecute = FreezarExecute
    end
    object LeerFacturasFreezadas: TAction
      Caption = 'Leer Facturas Freezadas'
      ShortCut = 16466
      OnExecute = LeerFacturasFreezadasExecute
    end
    object HacerNC: TAction
      Hint = 'Hacer Nc. sobre este comprobante'
      ImageIndex = 10
      ShortCut = 49230
      OnExecute = HacerNCExecute
    end
    object GravarNumeroOperacion: TAction
      Caption = 'GravarNumeroOperacion'
      ShortCut = 16507
      OnExecute = GravarNumeroOperacionExecute
    end
    object VerOperacionesRelacionadas: TAction
      Caption = 'VerOperaciones'
      ShortCut = 49231
      OnExecute = VerOperacionesRelacionadasExecute
    end
    object BuscarPorReferencia: TAction
      Caption = 'Buscar Por Referencia'
      ShortCut = 32781
      OnExecute = BuscarPorReferenciaExecute
    end
    object CambiarCliente: TAction
      Caption = 'Cambiar Cliente'
      OnExecute = CambiarClienteExecute
    end
    object CambiarModoDiscIVA: TAction
      Caption = 'Cambiar Modo Disc.IVA'
      ShortCut = 49225
      OnExecute = CambiarModoDiscIVAExecute
    end
    object Fiscalizar: TAction
      Caption = 'Fiscalizar'
      Hint = 'Fiscalizaci'#243'n de Comprbante'
      ShortCut = 49222
      OnExecute = FiscalizarExecute
    end
    object CambiarCuit: TAction
      Caption = 'Cambiar Cuit/Doc'
      ShortCut = 16469
      OnExecute = CambiarCuitExecute
    end
    object BuscarPorObs: TAction
      Caption = 'BuscarPorObs'
      ShortCut = 8205
      OnExecute = BuscarPorObsExecute
    end
    object EditarProduccion: TAction
      OnExecute = EditarProduccionExecute
    end
    object GenerarOrdenProduccion: TAction
      Caption = 'Generar Orden de Produccion'
      OnExecute = GenerarOrdenProduccionExecute
    end
    object VerOrdenProduccion: TAction
      Caption = 'Ver Orden de Produccion Asociada'
      OnExecute = VerOrdenProduccionExecute
    end
    object LibroIVA: TAction
      Caption = 'Agregar o Sacar del libro de Iva'
      ShortCut = 24649
      OnExecute = LibroIVAExecute
    end
    object CambiarClase: TAction
      Caption = 'Cambiar Clase Cpbte'
      ShortCut = 16474
      OnExecute = CambiarClaseExecute
    end
    object BuscarLote: TAction
      Caption = 'BuscarLote'
      OnExecute = BuscarLoteExecute
    end
    object BorrarCae: TAction
      Caption = 'Borrar CAE'
      OnExecute = BorrarCAEExecute
    end
    object NoLiquidar: TAction
      Caption = 'Liquidar o no, Comision'
      OnExecute = NoLiquidarExecute
    end
    object VerHojaCarga: TAction
      Caption = 'Ver Hoja de Carga'
      ShortCut = 16456
      OnExecute = VerHojaCargaExecute
    end
    object RevisionValoresIng: TAction
      Caption = 'Revision de Valores Ingresados'
      OnExecute = RevisionValoresIngExecute
    end
    object RecuperarRemitos: TAction
      Caption = 'Recuperar Remitos'
      OnExecute = RecuperarRemitosExecute
    end
    object LeerPeso: TAction
      Caption = 'LeerPeso'
      OnExecute = LeerPesoExecute
    end
    object ConectarBalanza: TAction
      Caption = 'ConectarBalanza'
      OnExecute = ConectarBalanzaExecute
    end
    object Pasar_A_Papelera: TAction
      Caption = 'Pasar_A_Papelera'
      OnExecute = Pasar_A_PapeleraExecute
    end
    object Papelera: TAction
      ImageIndex = 12
      OnExecute = PapeleraExecute
    end
    object GenerarRemito: TAction
      OnExecute = GenerarRemitoExecute
    end
    object VerNC: TAction
      OnExecute = VerNCExecute
    end
    object Desanular: TAction
      Caption = 'Desanular'
      OnExecute = DesanularExecute
    end
    object RehacerQr: TAction
      Caption = 'Rehacer Qr'
      ShortCut = 16465
      OnExecute = RehacerQrExecute
    end
    object ImportarExcel: TAction
      Caption = 'Importar desde Excel(Compras)'
      OnExecute = ImportarExcelExecute
    end
    object ActualizaCostoFcVta: TAction
      Caption = 'Actualiza Costo en Factura'
      ShortCut = 32851
      OnExecute = ActualizaCostoFcVtaExecute
    end
    object BorrarDeTemporal: TAction
      Caption = 'BorrarDeTemporal'
      OnExecute = BorrarDeTemporalExecute
    end
    object EnviarTemporal: TAction
      Caption = 'EnviarTemporal'
      OnExecute = EnviarTemporalExecute
    end
    object GenerarNotaPedido: TAction
      Caption = 'Generar Nota de Pedido'
      OnExecute = GenerarNotaPedidoExecute
    end
    object AsignarObra: TAction
      Caption = 'AsignarObra'
      OnExecute = AsignarObraExecute
    end
    object ModificarDatosCabecera: TAction
      Caption = 'Modificar Datos Cabecera'
      ShortCut = 24643
      OnExecute = ModificarDatosCabeceraExecute
    end
    object VerNovedadesDet: TAction
      ImageIndex = 11
      ShortCut = 32881
      OnExecute = VerNovedadesDetExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosVentasCtdo.CDSVentaCab
    Left = 440
    Top = 64
  end
  inherited ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 176
    Top = 136
    Bitmap = {
      494C01010D001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      00000806053A3D322AAE6A5A4FF078675AFD756355FD655446F23C3127B00907
      053B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B16
      1170908073FDAC988BFFA48E80FFA08A7BFF9E8778FF9B8374FF957C6DFF725D
      50FD1B1611700000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010100088071
      65FAAD998CFF9E8778FF9F8979FF9E8778FF9B8576FF988070FF998171FF947A
      6AFF645243FA0101000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000605042C9D8D
      82FFA89487FF9F8879FF9F8879FF9E8778FF9B8576FF978070FF9E8778FF9A83
      73FF715B4CFF0705042C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0A0758AC9E
      93FFC3B4AAFFA08A7BFF9D8778FF9D8777FF9B8575FF967D6EFF9C8576FF9E88
      79FF796254FF0E0B095900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100D0A6DBAAC
      A3FFCBBDB3FFBEADA1FFAF9C8FFFA59082FFA0897AFF998272FFA18B7DFFA28D
      80FF826859FF110E0B6D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D18127DC7B9
      B0FFCABBB2FFBFAEA2FFB7A498FFAF9B8FFFA79284FF9E8878FFA28C7EFFA28C
      80FF886F60FF1F19138000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000382E25A7D0C3
      BAFFC9BAB0FFBEADA1FFB7A599FFB09D90FFA89386FF9D8878FFA08A7BFFA18C
      7EFF8E7466FF382D24A900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000473C32BED6CA
      C2FFCCBEB5FFBAAAA0FFB19F93FFAC9A8EFFAA978BFFA79487FFAD9A8FFFAA97
      8BFF93796AFF41352BBE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005E5247DDC8BA
      B0FFBEB0A5FFD3CAC1FFDBD2CAFFD3C7BDFFCCBCB1FFC2AEA2FFB29A8DFFA68F
      81FFA08B7CFF4E3F33DB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006D5E51F6D4CD
      C3FFEFEFE9FFE5E0D9FFE5DED8FFD2C5BCFFCBBBB1FFC4B0A5FFBEA69AFFB89C
      90FFA68B7BFF625143F500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000746355FDEEEF
      E8FFEEECE7FFE9E5DFFFECE6E2FFD2C5BCFFCBBBB1FFC4B0A5FFBEA69AFFB79B
      8FFFB29688FF736154FD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000493C30CDD3CC
      C4FFEFEEE9FFEAE6E1FFECE7E3FFD2C5BCFFCBBBB1FFC4B0A5FFBCA498FFBBA1
      95FFBBA99FFF483C31CB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020201224E40
      35D6B3A89EFFE6E0DBFFEDE7E3FFDBD1C9FFD6C8C0FFD3C3BAFFCFC0B7FFAB9C
      91FF504236D80202012400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000218120D69473B30C76E5F53F67F7064FD7F7064FD6F6055F8493B30C91813
      0F6B000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000B4B3E0FF6260CAFF1C18BAFF130DC1FF130DC1FF1C18BAFF6260CAFFB4B3
      E0FF000000000000000000000000000000000000000000000000000000000000
      00000806053A3D322AAE6A5B4FF078675AFD756355FD645446F23C3127B00907
      053B00000000000000000000000000000000000000000000000000000000045F
      08FF045F08FF079112FF08B017FF08B319FF08B318FF08B118FF069613FF0467
      0BFF04670BFF0000000000000000000000000000000000000000000000006B69
      69FFAAA7A7FFA19F9FFF6B6969FF6B6969FF6B6969FFE5E3E3FF6B6969FF6B69
      69FF6B6969FF0000000000000000000000000000000000000000F4F3FBFF4A47
      BFFF0E0AD8FF130EF7FF1610FFFF1610FFFF1610FFFF1610FFFF130EF7FF0E0A
      D8FF4A47BFFFF4F3FBFF00000000000000000000000000000000000000001B16
      1170908073FDAC988BFFA48E80FFA08A7BFF9E8778FF998172FF91796AFF725E
      50FD1B1611700000000000000000000000000000000000000000096914FF097E
      14FF0AB61BFF08B919FF07B417FF06B215FF08B318FF08B418FF08B819FF08B9
      19FF06830FFF034C05FF000000000000000000000000000000006B6969FFDAD9
      D9FFA19F9FFFA19F9FFFA19F9FFF363535FF343434FF6B6C6CFFBFBFBFFFE1E2
      E2FFB7B6B6FF6B6969FF6B6969FF6B6969FF00000000F6F6FCFF2623BFFF1412
      F6FF1816FFFF1614F9FF1614F4FF1614F4FF1614F4FF1614F4FF1614F9FF1816
      FFFF1412F6FF2623BFFFF6F6FCFF000000000000000000000000010100098171
      65FBAE998CFF9D8677FF9A8677FF968375FF928072FF907A6DFF8B7569FF957A
      6BFF645243FB010100090000000000000000000000000A6914FF0E8521FF15BD
      33FF10B726FF0AB21BFF06B115FF07B116FF08B218FF08B218FF08B218FF08B4
      18FF08BA19FF06840FFF05660BFF00000000000000006B6969FFD4D3D3FFCACA
      CAFF8E8C8CFF8E8C8CFF8E8C8CFF3B3A3AFF090809FF060606FF0A0A0AFF0606
      06FF797979FFBBBBBBFF6B6969FF00000000000000004C49CDFF181AF6FF1A1D
      FCFF181BF5FF181BF5FF181BF6FF181BF6FF181BF6FF181BF6FF181BF5FF181B
      F5FF1A1DFCFF181AF6FF4C49CDFF0000000000000000000000000605042C9C8E
      82FFA6968BFFA7978CFFA7968BFFA49185FF9E8A7CFF978273FF958173FF9881
      72FF715C4CFF0705042C0000000000000000000000000A6914FF1FBE48FF1ABD
      3FFF13B72FFF09B21EFF27BC35FFDFF5E1FFEEFAEFFF62CE6CFF08B218FF08B2
      18FF08B318FF08BA19FF05660BFF000000006B6969FFCACACAFFCACACAFF8E8C
      8CFFD7D4D4FFCECBCBFFBFBCBCFFB1AFAFFFA3A0A0FF888686FF5D5A5BFF0606
      06FF080808FF070707FF6B6969FF757272FFB8B6ECFF1315E4FF1C26FFFF1921
      F9FF1A21F9FF1A21F9FF1A21F9FF1A21F9FF1A21F9FF1A21F9FF1A21F9FF1A22
      F9FF1920F9FF1C26FFFF1315E4FFB8B6ECFF00000000000000000D0A0758AD9E
      94FFBBAEA5FFB2A196FFAC9B8EFFA89487FFA18E80FF9B8576FF9E887AFF9681
      74FF796354FF0E0B0959000000000000000007710FFF1A9A39FF29C65AFF1CBB
      44FF0DB424FF0AB31AFF10B420FF9ADFA0FFFFFFFFFFF7FDF8FF59CB64FF08B2
      18FF08B218FF08B819FF079412FF035C08FF6B6969FFCACACAFF8E8C8CFFEFEE
      EEFFFFFEFEFFFBFAFAFFE3E0E1FFDEDEDEFFDEDDDDFFCFCECEFFBDBCBCFFADAB
      ABFF8B8989FF575555FF797777FF747272FF6663E0FF1C29FEFF1A2AFDFF1A29
      FFFF1A29FFFF1A29FFFF1C2BFFFF1C2BFFFF1C2BFFFF1C2BFFFF1D2BFFFF1D2B
      FFFF1D2BFFFF1E2CFFFF1D28FEFF6865E0FF0000000000000000100C096DBAAC
      A2FFC5B7AEFFB4A59AFFB4A296FFAD9A8DFFA59083FF9D8777FFA28D7EFF927D
      71FF836A5AFF110E0B6D000000000000000007710FFF29B65AFF2BC564FF21BD
      4CFF0EB421FF09B219FF0BB31BFF09B218FF8DDB95FFFDFEFDFFF6FCF7FF57CB
      62FF08B218FF08B519FF07AB16FF035C08FF6B6969FF8E8C8CFFFFFFFFFFFEFC
      FCFFFAFAFAFFD5D4D5FF989193FFA09899FFB2ABACFFC4C0C1FFD7D7D7FFD8D8
      D8FFC7C6C6FFB7B6B6FF918F8FFF6B6868FF3334E9FF172BEBFF312D10FF2623
      0FFF232010FF211E0EFF1E1D0BFF1D1A0AFF1A1908FF1A1707FF191706FF1715
      06FF171603FF151200FF2033EDFF2627E5FF00000000000000001E18127EC7B9
      B0FFCABCB2FFAFA095FFB5A498FF9B8A7DFFA08C7EFF9D8778FFA18B7DFF9380
      72FF886F5FFF1F19138100000000000000000E821BFF36C26BFF32C76BFFCDF1
      DAFFC9EFD3FFC7EED0FFC8EFD2FFC5EED0FFC7EECFFFF8FDF9FFFFFFFFFFF2FB
      F3FF6ED278FF07B418FF08B318FF04640AFF000000006B6969FF6B6969FFEDEB
      EBFFB1A6A7FF796E71FF8A8388FF969295FF969091FF9D9798FF9A9395FF9E98
      99FFBBBABAFFD1D1D1FFC2C2C2FF6B6969FF5559F4FF2F48E6FF494538FF3C3A
      36FF3A3838FF363432FF312E2DFF2C2A2AFF282626FF252324FF232121FF201F
      20FF1F1D1DFF1D1807FF263EECFF171AE7FF0000000000000000382E25A7D0C3
      BAFFCABCB2FFAB9C92FFA5958AFFA8968AFF978679FF998374FF9D8779FF9884
      77FF897061FF382D24A90000000000000000128D22FF57CC83FF41C976FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFFFFFFFFFFFFF
      FFFFBCEAC1FF09B419FF08B318FF056C0CFF0000000000000000000000006B69
      69FFBB897EFFA7876CFF8B6E63FF7C665FFF6E6164FF787278FF8F8B8EFFA9A3
      A4FFCBCACAFFC1C1C1FF6B6969FF000000005454F6FF6883F4FF756E64FF4240
      3DFF373534FF373534FF343230FF302D2CFF2A2827FF262322FF1E1E1EFF1D1B
      1CFF171616FF1B1507FF223BEBFF1F22E2FF0000000000000000473C32BED7CB
      C3FFC1B4ABFFAC9D94FFAD9E94FFB0A198FFB2A499FF9C8C82FFA8968BFFA491
      85FF876F61FF41352BBE00000000000000000E911CFF6ED293FF5ED38DFF6CD4
      95FF71D699FF70D698FF71D699FF63D28CFF92DFA8FFFBFEFBFFFFFFFFFFACE5
      B8FF2DBF4BFF10B82AFF07B118FF046009FF0000000000000000000000000000
      0000BD8281FFFFE3B4FFFFD39FFFE9B281FFC99972FFBA916BFFBD8281FF807C
      7DFF6B6969FF6B6969FF00000000000000005E5AF7FF657CF4FF9C9988FF8E89
      7DFF7B766BFF646056FF595449FF504B3FFF4E4940FF4A453CFF474239FF4440
      37FF403D30FF423F2FFF5067EBFF5E5AEAFF00000000000000005E5246DDC0B2
      ABFFAEA49EFFCFCCCBFFE6E7E7FFF2F3F3FFF3F4F4FFF0EFEFFFAAA7A5FF9788
      7EFF917C70FF4F4033DB00000000000000000E911CFF66CC83FF9BE5BAFF37C6
      6FFF2FC368FF37C56EFF37C56EFF6FD697FFE8F8EEFFFFFFFFFF9FE2B1FF1FBD
      47FF19B93DFF0FBA28FF07A316FF046009FF0000000000000000000000000000
      0000BD8281FFFFE0B8FFFFD3A7FFFFD09DFFFFCE90FFFFC688FFBD8281FF0000
      0000000000000000000000000000000000008D85F6FF7086FFFF6183FFFF6584
      FFFF6887FFFF6989FFFF6585FFFF5775FFFF516FFFFF5170FFFF5371FFFF5D7C
      FFFF6987FFFF6A8EFFFF7287F4FF8B83EDFF00000000000000006D5E51F6B2AC
      A8FFEEEFF0FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F7FFAA9C
      96FFA88C7CFF625143F500000000000000000000000024AE38FFBCEDD2FF82DB
      A4FF27C062FF2EC266FF52CD82FFF7FDF9FFFFFFFFFF9CE2B2FF21BC4AFF1CBA
      40FF17B735FF13C02FFF098516FF00000000000000000000000000000000C086
      83FFFFE7CFFFFFE0C0FFFFD9B2FFFFD3A5FFFFD099FFBD8281FF000000000000
      000000000000000000000000000000000000C8C5FBFF615FFAFF81A2FFFF607D
      FEFF6683FEFF6884FFFF6886FFFF6B89FFFF6D8AFFFF6D8AFFFF6D8AFFFF6A87
      FFFF617EFFFF84A3FFFF5757DBFFC8C5FBFF0000000000000000756355FDDFDE
      D9FFD8D8D8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFEEEF
      EFFFA7968EFF736154FD00000000000000000000000024AE38FF70D28CFFD2F4
      E1FF80DAA3FF35C46CFF38C56EFFBCECCEFFABE6C2FF2CC262FF23BE55FF22BC
      4CFF1EC145FF15AE33FF098516FF00000000000000000000000000000000BD82
      81FFFEEBD8FFFFE6CCFFFFDEBDFFFFD8B1FFFED3A4FFBD8281FF000000000000
      00000000000000000000000000000000000000000000746BF7FF8089FDFF89A8
      FFFF6585FDFF6988FDFF6D8AFDFF6D8AFDFF6D8AFDFF6C8AFDFF6987FCFF6585
      FEFF8CAAFFFF737BE2FF7068ECFF0000000000000000000000004A3C31CED5CE
      C5FFD7D6D4FFE1E1E1FFFFFFFFFFFFFFFFFFFDFDFDFFF9F9F9FFF5F5F5FFEFEF
      EFFFA59F9BFF4A3C31CC0000000000000000000000000000000024AE38FF84D8
      9FFFDBF7EAFFAFE8C6FF6AD493FF51CC81FF43C977FF48CA7AFF47CB77FF38CB
      69FF20B648FF0E7B1EFF00000000000000000000000000000000BD8281FFFFFF
      F2FFFFFFF2FFFFEBD8FFFFE5CAFFFFE1BDFFF3C7A7FFBD8281FF000000000000
      00000000000000000000000000000000000000000000F8F8FFFF554AF7FF8289
      FBFFA0BEFFFF83A2FFFF6E91FEFF6F90FDFF6F90FDFF6F91FFFF84A2FFFFA1C0
      FFFF7886E8FF4F45E3FFF8F8FFFF000000000000000000000000020201224E41
      35D6B5AAA0FFC6C2BEFFEFEFEFFFFEFEFEFFF9F9F9FFF4F4F4FFEAEBEBFF9089
      83FF4F4136D702020124000000000000000000000000000000000000000024AE
      38FF24AE38FFADE8C5FFCCF2DEFFBAEDD1FFA6E7C2FF91E2B3FF63D492FF2EB1
      56FF2EB156FF0000000000000000000000000000000000000000BD8281FFBD82
      81FFBD8281FFFBEFE2FFFBE3CFFFFBDDC2FFBD8281FF00000000000000000000
      0000000000000000000000000000000000000000000000000000F7F6FFFF736C
      F8FF6461F6FF96A5F9FFA4BBFDFFA4BCFFFFA2BCFFFFA3BAFCFF93A4F1FF5E5D
      E6FF7069F0FFF7F6FFFF00000000000000000000000000000000000000000000
      000217110F68473A2FC46F665EF3CFCFCFFFE8E8E8FFE3E3E3FF564F4ACC1712
      0F6A000000020000000000000000000000000000000000000000000000000000
      00000000000031B74DFF24AE38FF24AE38FF24AE38FF24AE38FF23A341FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD8281FFBD8281FFBD8281FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C3FDFF877EF9FF615DF5FF5E5AF2FF5E5AF1FF5F5AF1FF857EF5FFC6C3
      FDFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000021D1D1D659D9D9DF527272777000000000000
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
      000000000000000000000000FFFFFF00F00F000000000000E007000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      E007000000000000FFFF000000000000000000000000F00F000000000000E007
      000000000000C003000000000000C003000000000000C003000000000000C003
      000000000000C003000000000000C003000000000000C003000000000000C003
      000000000000C003000000000000C003000000000000C003000000000000C003
      000000000000E007000000000000FC3F00000000000000000000000000000000
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
    Left = 440
    Top = 184
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 400
    Top = 248
  end
  inherited QBrowse2: TFDQuery
    Left = 104
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 96
    Top = 312
  end
  inherited ImageListDos: TImageList
    Bitmap = {
      494C01010C001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000658550DB759A
      5DFD648550DA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FFA59482FFD7CFBDFF8CA874FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFFA0BB90FF82A5
      6DFF769C5EFF769C5EFF769C5EFF0000000000000000F7D49CFFF7D49CFFF7D4
      9CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46BFF769C5EFF769C5EFF658550DB00000000F7D49CFFF7D49CFFF7D4
      9CFF000000009C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF000000000000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFBACDAEFF8EAD7AFFBBCE
      AFFFE6EDE1FF80A36AFF769C5EFF72975BF800000000F7D49CFFF7D49CFFF7D4
      9CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFF769C
      5EFFBBCEAFFFE4ECDFFF7EA267FF658550DB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFFA2BB91FF789D60FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C80000000000000000B57A4EFFB57A4EFFB57A
      4EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF000000000000000000000000B57A4EFFB57A4EFFB57A
      4EFF000000009C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF000000000000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF000000000000000000000000B57A4EFFB57A4EFFB57A
      4EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C7000000000000000000000000B57A4EFFB57A4EFFB57A
      4EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D100000000000000000000000000000000B57A4EFFB57A4EFFB57A
      4EFF000000009C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C80000000000000000000000000000000000000000B57A4EFFB57A4EFFB57A
      4EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF7E7263CA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFEFFFFFFFC7FFFFFFCFF3FFC001FFFF
      FF8FF1FFC0018FFFFF0FF0FFC0008801FE0FF07FC0008FFFFC0FF03FC000FFFF
      F80FF01FC001FFFFF00FF00FC0018FFFE00FF00FC0038801F00FF01FC0038FFF
      F80FF03FC003FFFFFC0FF07FC003FFFFFE0FF0FFC0038FFFFF0FF1FFC0078801
      FF8FF3FFC00F8FFFFFCFF7FFC01FFFFFFFFFE007FFFF3FFFF83FE00780011FFF
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
  object frxDBCabecera: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBCabecera'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosVentasCtdo.CDSVentaCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 209
    Top = 397
    FieldDefs = <
      item
        FieldName = 'ID_FC'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'CLASECPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'CODIGO'
        FieldType = fftString
      end
      item
        FieldName = 'NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'LETRAFAC'
        FieldType = fftString
      end
      item
        FieldName = 'SUCFAC'
        FieldType = fftString
      end
      item
        FieldName = 'NUMEROFAC'
        FieldType = fftString
      end
      item
        FieldName = 'NOMBRE'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'DIRECCION'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'CPOSTAL'
        FieldType = fftString
      end
      item
        FieldName = 'LOCALIDAD'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'TIPOIVA'
      end
      item
        FieldName = 'CUIT'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'LISTAPRECIO'
      end
      item
        FieldName = 'FECHAVTA'
      end
      item
        FieldName = 'FECHAVTO'
      end
      item
        FieldName = 'CONDICIONVTA'
      end
      item
        FieldName = 'ANULADO'
        FieldType = fftString
      end
      item
        FieldName = 'NRORTO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'N_OPERACION2'
      end
      item
        FieldName = 'NETOGRAV1'
      end
      item
        FieldName = 'NETOGRAV2'
      end
      item
        FieldName = 'DSTO'
      end
      item
        FieldName = 'DSTOIMPORTE'
      end
      item
        FieldName = 'NETOEXEN1'
      end
      item
        FieldName = 'NETOEXEN2'
      end
      item
        FieldName = 'TOTAL'
      end
      item
        FieldName = 'DEBE'
      end
      item
        FieldName = 'IMPRESO'
        FieldType = fftString
      end
      item
        FieldName = 'OBSERVACION1'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'OBSERVACION2'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'CPTE_MANUAL'
        FieldType = fftString
      end
      item
        FieldName = 'SUCURSAL'
      end
      item
        FieldName = 'FACTURANRO'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'ZONA'
      end
      item
        FieldName = 'LDR'
      end
      item
        FieldName = 'DEPOSITO'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldType = fftString
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldType = fftString
      end
      item
        FieldName = 'NROENTREGA'
      end
      item
        FieldName = 'INGRESA_A_CTACTE'
        FieldType = fftString
      end
      item
        FieldName = 'INGRESA_LIBRO_IVA'
        FieldType = fftString
      end
      item
        FieldName = 'TIPO_REMITO'
        FieldType = fftString
      end
      item
        FieldName = 'IDREMITO'
      end
      item
        FieldName = 'REDUCIDA'
        FieldType = fftString
      end
      item
        FieldName = 'COMSIONVENDEDOR'
      end
      item
        FieldName = 'LIQUIDADA'
        FieldType = fftString
      end
      item
        FieldName = 'FECHA_LIQUIDACION'
      end
      item
        FieldName = 'VENDEDOR'
        FieldType = fftString
      end
      item
        FieldName = 'USUARIO'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'NC_CONTADO'
        FieldType = fftString
      end
      item
        FieldName = 'CAJA_POR_DEFECTO'
      end
      item
        FieldName = 'NRO_Z'
      end
      item
        FieldName = 'VALORES_RECIBIDOS'
      end
      item
        FieldName = 'PERCEPCION_IB_TASA'
      end
      item
        FieldName = 'PERCEPCION_IB_IMPORTE'
      end
      item
        FieldName = 'PERCIBE_IB'
        FieldType = fftString
      end
      item
        FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      end
      item
        FieldName = 'RENGLONES'
      end
      item
        FieldName = 'FECHA_HORA'
      end
      item
        FieldName = 'NOTAPEDIDO_ID'
      end
      item
        FieldName = 'NOTAPEDIDO_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'ID_FC_CLON'
      end
      item
        FieldName = 'PRESUPUESTO_ID'
      end
      item
        FieldName = 'PRESUPUESTO_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'MONEDA_CPBTE'
      end
      item
        FieldName = 'MONEDA_CPBTE_COTIZACION'
      end
      item
        FieldName = 'POR_CTA_Y_ORDEN'
        FieldType = fftString
      end
      item
        FieldName = 'PROVEEDOR'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRACONDVENTA'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRADEPOSITO'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'MUESTRALDR'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'MUESTRAIVA'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'MUESTRADIRECCIONLDR'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'MUESTRAPROVEEDOR'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'TIPO_VTA'
        FieldType = fftString
      end
      item
        FieldName = 'JURIDICION'
      end
      item
        FieldName = 'JURIDICION_LOCALIDAD'
      end
      item
        FieldName = 'CON_GTIA_EXTENDIDA'
        FieldType = fftString
      end
      item
        FieldName = 'ID_RECEPCION_GTIA'
      end
      item
        FieldName = 'MESES_DE_GARANTIA'
      end
      item
        FieldName = 'POLIZA'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'VALOR_ASEGURADO'
      end
      item
        FieldName = 'MUESTRAMONEDACPBTE'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'MUESTRASIGNOMONEDACPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'ID_NOTA_CAMBIO'
      end
      item
        FieldName = 'NUMERO_OPERACION'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAESFRANQUICIA'
        FieldType = fftString
      end
      item
        FieldName = 'CAE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'CAE_VENCIMIENTO'
      end
      item
        FieldName = 'FACTURA_ELECTRONICA'
        FieldType = fftString
      end
      item
        FieldName = 'ABONO_PERIODO'
        FieldType = fftString
      end
      item
        FieldName = 'CANT_BULTOS'
      end
      item
        FieldName = 'CUOTAS_CC'
      end
      item
        FieldName = 'INTERVALO_CUOTA'
      end
      item
        FieldName = 'MUESTRACODIGOAFIP'
        FieldType = fftString
      end
      item
        FieldName = 'PAGO_A_CTA'
      end
      item
        FieldName = 'ID_FC_CON_ADEL'
      end
      item
        FieldName = 'MUESTRAOBSCLIENTE1'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'MUESTRAOBSCLIENTE2'
        FieldType = fftString
        Size = 60
      end
      item
        FieldName = 'MUESTRAACOPIO'
      end
      item
        FieldName = 'CENTRO_COSTO'
      end
      item
        FieldName = 'ID_PEDIDO_MORPHI'
      end
      item
        FieldName = 'MUESTRANOMBRECOMPLETO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'SALDO_ACTUAL_CC'
      end
      item
        FieldName = 'MUESTRAZONA'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'NETONOGRAV1'
      end
      item
        FieldName = 'NETONOGRAV2'
      end
      item
        FieldName = 'FECHA_FISCAL'
      end
      item
        FieldName = 'NRO_INTERNO'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'FOB_TOTAL'
      end
      item
        FieldName = 'NOTAS'
        FieldType = fftString
        Size = 300
      end
      item
        FieldName = 'MUESTRAUSACHE'
        FieldType = fftString
      end
      item
        FieldName = 'CBU'
        FieldType = fftString
        Size = 22
      end
      item
        FieldName = 'ASOCIADO_TIPO'
      end
      item
        FieldName = 'ASOCIADO_PTOVTA'
      end
      item
        FieldName = 'ASOCIADO_NRO'
      end
      item
        FieldName = 'ASOCIADO_CPTEFCH'
        FieldType = fftString
      end
      item
        FieldName = 'INF_X'
        FieldType = fftString
      end
      item
        FieldName = 'VUELTO'
      end
      item
        FieldName = 'HONORARIOS'
      end
      item
        FieldName = 'HONORARIOS_PROCENTAJ'
      end
      item
        FieldName = 'CON_CAEA'
        FieldType = fftString
      end
      item
        FieldName = 'CAEA_INFORMADO'
        FieldType = fftString
      end
      item
        FieldName = 'ASOCIADO_ID_CPBTE'
      end
      item
        FieldName = 'FACTURA_DE_ANTICIPO'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRANRONC'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'MUESTRATIPONC'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRACLASENC'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAID_NC'
      end
      item
        FieldName = 'QRIMAGE'
      end
      item
        FieldName = 'CONDICIONPEDIDO'
      end
      item
        FieldName = 'CODIGO_ACTIVIDAD'
        FieldType = fftString
      end
      item
        FieldName = 'PERCIBE_IVA'
        FieldType = fftString
      end
      item
        FieldName = 'MINIMO_PERCI_IVA'
      end
      item
        FieldName = 'MUESTRANOMBREUSUARIOREAL'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'ID_GARANTE'
      end
      item
        FieldName = 'PRIMER_VTO'
      end
      item
        FieldName = 'ANTICIPO_VTO'
      end
      item
        FieldName = 'ID_PAIS'
      end
      item
        FieldName = 'CUIT_PAIS'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'DOC_ADUANERO'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'FECHA_CARGA'
      end
      item
        FieldName = 'DESTINO_DOCUMENTO'
        FieldType = fftString
      end
      item
        FieldName = 'PERMISO_EMBARQUE'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'INCOTERMS'
        FieldType = fftString
      end
      item
        FieldName = 'TIPO_OPERACION_EXPO'
        FieldType = fftString
      end
      item
        FieldName = 'MEDIO_TRANSPORTE_EXPO'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'ID_ADUANA'
      end
      item
        FieldName = 'REFERENCIA_EXPO'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'CAMBIO_EXPO'
      end
      item
        FieldName = 'ID_TRANSPORTE'
      end
      item
        FieldName = 'ID_DESTINO'
      end
      item
        FieldName = 'DEDUCE_GASTOS'
        FieldType = fftString
      end
      item
        FieldName = 'TRANSPORTE_UNIDAD'
      end
      item
        FieldName = 'TRANSPORTE_ADICIONAL'
      end
      item
        FieldName = 'LOTEAFIP'
        FieldType = fftString
      end
      item
        FieldName = 'ID_CHOFER'
      end
      item
        FieldName = 'ENVIAR_CPTE_MAIL'
        FieldType = fftString
      end
      item
        FieldName = 'KEY_PLANER'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'MUESTRACOORPORATIVO'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAIDABONO'
      end
      item
        FieldName = 'MUESTRANROABONO'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAAUXILIARTR'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRALOCALITRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRATRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRA_UNI_TRANSPORTE'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRANRDOCCHOFER'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'MUESTRACHOFER'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'MUESTRATPDOCCHOFER'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRADOMINIOUNIDADTR'
        FieldType = fftString
        Size = 12
      end
      item
        FieldName = 'MUESTRATETRANSPORTE'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'MUESTRADIRTRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRANOMBRETRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRACONDIVATRANSPORTE'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'MUESTRACUITTRANSPORTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'COT'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRADIRECCION_CALLE'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'MUESTRADIRECCION_NRO'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRADIRECCION_PISO'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRADIRECCION_DEPTO'
        FieldType = fftString
      end
      item
        FieldName = 'LETRACOT'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAAPLICALEY15311'
        FieldType = fftString
      end
      item
        FieldName = 'ID_OBRA'
      end
      item
        FieldName = 'MUESTRAOBRA'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'PROCESADA'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRATELEFONO_1'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRATELEFONO_2'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRATELEFONOMOVIL'
        FieldType = fftString
        Size = 11
      end>
  end
  object frxDBDetalle: TfrxDBDataset
    UserName = 'frxDBDetalle'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosVentasCtdo.CDSVentaDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 233
    Top = 438
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
        FieldAlias = 'Id'
      end
      item
        FieldName = 'ID_CABFAC'
        FieldAlias = 'Id_CabFac'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TipoCpbte'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NroCpbte'
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
        FieldName = 'UNIDAD'
        FieldAlias = 'Unidad'
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
        FieldName = 'TIPOIVA_TASA'
        FieldAlias = 'TipoIva_Tasa'
      end
      item
        FieldName = 'TIPOIVA_SOBRETASA'
        FieldAlias = 'TipoIva_SobreTasa'
      end
      item
        FieldName = 'IVA_TOTAL'
        FieldAlias = 'IVA_TOTAL'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'Deposito'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'Afecta_Stock'
      end
      item
        FieldName = 'MUESTRAMONEDA'
        FieldAlias = 'MUESTRAMONEDA'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'Cantidad'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'Descuento'
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
        FieldAlias = 'Total'
      end
      item
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_Tasa'
      end
      item
        FieldName = 'IVA_SOBRETASA'
        FieldAlias = 'IVA_SobreTasa'
      end
      item
        FieldName = 'MARGEN'
        FieldAlias = 'Margen'
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
        FieldAlias = 'Renglon'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'Calcula_SobreTasa'
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
        FieldName = 'UNITARIO_EXENTO'
        FieldAlias = 'Unitario_Exento'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'Unitario_Total'
      end
      item
        FieldName = 'IVA_UNITARIO'
        FieldAlias = 'IVA_UNITARIO'
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
      end
      item
        FieldName = 'PRESENTACION_UNIDAD'
        FieldAlias = 'PRESENTACION_UNIDAD'
      end
      item
        FieldName = 'MUESTADIFERENCIAENTREGA'
        FieldAlias = 'MUESTADIFERENCIAENTREGA'
      end
      item
        FieldName = 'UNITARIO_NETO_TOTAL'
        FieldAlias = 'UNITARIO_NETO_TOTAL'
      end>
  end
  object frxDBImpuetos: TfrxDBDataset
    UserName = 'frxDBImpuetos'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosVentasCtdo.CDSImpuestos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 354
    Top = 389
    FieldDefs = <
      item
        FieldName = 'ID_IMPUESTO'
        FieldAlias = 'ID_IMPUESTO'
      end
      item
        FieldName = 'ID_FCVTACAB'
        FieldAlias = 'ID_FCVTACAB'
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
  object frDBSubDetalle: TfrxDBDataset
    UserName = 'frDBSubDetalle'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosVentasCtdo.CDSVtaSubDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 323
    Top = 455
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 652
    Top = 535
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 632
    Top = 488
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OnBeforeExport = frxPDFExport1BeforeExport
    EmbeddedFonts = True
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
    Left = 432
    Top = 520
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    DeleteEmptyColumns = True
    Left = 184
    Top = 304
  end
  object PopupMenu1: TPopupMenu
    MenuAnimation = [maBottomToTop]
    Left = 400
    Top = 64
    object CambioDeposito2: TMenuItem
      Action = CambiarCuit
    end
    object VerHojadeCarga1: TMenuItem
      Action = VerHojaCarga
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object CambiarClase1: TMenuItem
      Action = CambiarClase
    end
    object CalcularRecargosTC1: TMenuItem
      Action = CalcularRecargosTC
    end
    object CancelarRecargoTC1: TMenuItem
      Action = CancelarRecargoTC
    end
    object ReCalcularTodo1: TMenuItem
      Action = ReCalcularTodo
    end
    object RecalculoSuma0001: TMenuItem
      Action = RecalculoSuma00
    end
    object Recalcular1: TMenuItem
      Action = Recalcular
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ransferirXML1: TMenuItem
      Action = TransferirXML
    end
    object ExportarXML1: TMenuItem
      Action = ExportarXML
    end
    object BuscarDeposito1: TMenuItem
      Action = CopiarDetalle
    end
    object PegarDetalle1: TMenuItem
      Action = PegarDetalle
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object DesmarcarImpresa1: TMenuItem
      Action = DesmarcarImpresa
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object ClonarFc1: TMenuItem
      Action = ClonarFc
    end
    object CambiarNro1: TMenuItem
      Action = CambiarNro
    end
    object ransofrmarFc1: TMenuItem
      Action = TransofrmarFc
    end
    object CambioDeposito1: TMenuItem
      Action = CambioDeposito
    end
    object GenerarNotaPedido1: TMenuItem
      Action = GenerarNotaPedido
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DuplicarComprobante1: TMenuItem
      Action = DuplicarComprobante
    end
    object MarcarComoImpresaalDuplicar1: TMenuItem
      Caption = 'Marcar Como Impresa al Duplicar (Opcion)'
      OnClick = MarcarComoImpresaalDuplicar1Click
    end
    object N2: TMenuItem
      Action = Desanular
    end
    object CalcularelIvaendetalle1: TMenuItem
      Action = CalcularIvaDet
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object HacerNCSobresestaFactura1: TMenuItem
      Action = HacerNC
      Caption = 'Hacer NC sobre este Comprobante'
    end
    object BuscarPorReferencia1: TMenuItem
      Action = BuscarPorReferencia
    end
    object CambiarCliente1: TMenuItem
      Action = CambiarCliente
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Freezar1: TMenuItem
      Action = Freezar
    end
    object LeerFacturasFreezadas1: TMenuItem
      Action = LeerFacturasFreezadas
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Buscar1: TMenuItem
      Action = CambiarModoDiscIVA
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Fiscalizar1: TMenuItem
      Action = Fiscalizar
    end
    object GenerarOrdendeProduccion1: TMenuItem
      Action = GenerarOrdenProduccion
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object BorrarCAE1: TMenuItem
      Action = BorrarCae
    end
    object AgregaroSacardellibrodeIva1: TMenuItem
      Action = LibroIVA
    end
    object NoLiquidar1: TMenuItem
      Action = NoLiquidar
    end
    object RecuperarRemitos1: TMenuItem
      Action = RecuperarRemitos
    end
    object ModificarDatosCabecera1: TMenuItem
      Action = ModificarDatosCabecera
    end
  end
  object frGtia: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Copies = 2
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.364248761570000000
    ReportOptions.LastChange = 40700.055217175920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPrintReport = frFacturaPrintReport
    Left = 100
    Top = 405
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        RowCount = 0
      end
    end
  end
  object frxDBGtias: TfrxDBDataset
    UserName = 'frxDBGtias'
    CloseDataSource = False
    DataSet = DMBuscadores.QBuscaArticuloGtiaExt
    BCDToCurrency = False
    DataSetOptions = []
    Left = 354
    Top = 435
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DURACION'
        FieldAlias = 'DURACION'
      end
      item
        FieldName = 'POLIZA'
        FieldAlias = 'POLIZA'
      end
      item
        FieldName = 'TASA_COSTO'
        FieldAlias = 'TASA_COSTO'
      end
      item
        FieldName = 'TASA_VTA'
        FieldAlias = 'TASA_VTA'
      end>
  end
  object pmMenu: TPopupMenu
    Left = 172
    Top = 245
    object CopiarDetalle1: TMenuItem
      Action = CopiarDetalle
    end
    object PegarDetalle2: TMenuItem
      Action = PegarDetalle
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object CopiaralPortaPapelesdeWindows1: TMenuItem
      Caption = 'Copiar al Porta Papeles de Windows'
      OnClick = CopiaralPortaPapelesdeWindows1Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object VerOrdendeProduccionAsociada1: TMenuItem
      Action = VerOrdenProduccion
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object VerColumnaUnidades: TMenuItem
      Caption = 'Ver Unidades de Stock'
      OnClick = VerColumnaUnidadesClick
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object ImportardesdeExcel1: TMenuItem
      Action = ImportarExcel
    end
  end
  object frEmpresa: TfrxDBDataset
    UserName = 'frEmpresa'
    CloseDataSource = False
    DataSet = DatosVentasCtdo.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 416
    Top = 448
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
      end>
  end
  object frCajaMov: TfrxDBDataset
    UserName = 'frCajaMov'
    CloseDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSCajaMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 426
    Top = 387
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
  object frChe3: TfrxDBDataset
    UserName = 'frChe3'
    CloseDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSChe3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 482
    Top = 459
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
  object frTCred: TfrxDBDataset
    UserName = 'frTCred'
    CloseDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSMovTCredito
    BCDToCurrency = False
    DataSetOptions = []
    Left = 490
    Top = 387
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
      end
      item
        FieldName = 'SALDO_IMPORTE'
        FieldAlias = 'SALDO_IMPORTE'
      end>
  end
  object MainMenu1: TMainMenu
    Left = 800
    Top = 104
    object MenuImp: TMenuItem
      Caption = 'Modo Impresion'
      object MostrarDlg: TMenuItem
        Caption = 'Mostrar Dialogo de Impresion'
        Checked = True
        OnClick = MostrarDlgClick
      end
      object OmitirControlFondosMaster1: TMenuItem
        Caption = 'Omitir Control Fondos (Master)'
        OnClick = OmitirControlFondosMaster1Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object RevisiondeValores1: TMenuItem
        Action = RevisionValoresIng
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object ImpresionFormatoMail1: TMenuItem
        Caption = 'Impresion Formato Mail'
        OnClick = ImpresionFormatoMail1Click
      end
      object PasarAPapelera1: TMenuItem
        Action = Pasar_A_Papelera
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object ExpresarUnidadesenEnteros1: TMenuItem
        Caption = 'Expresar Unidades Stock en Enteros'
        OnClick = ExpresarUnidadesenEnteros1Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object IniciarFocoFecha1: TMenuItem
        Caption = 'Iniciar Foco en Fecha'
        OnClick = IniciarFocoFecha1Click
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object ActualizaCostoenFactura1: TMenuItem
        Action = ActualizaCostoFcVta
      end
      object UsarUltimoDeposito: TMenuItem
        Caption = 'Usar ultimo Deposito Usado'
        OnClick = UsarUltimoDepositoClick
      end
    end
  end
  object frxDBLotes: TfrxDBDataset
    UserName = 'frxDBLotes'
    CloseDataSource = False
    DataSource = DatosVentasCtdo.DSVentaLote
    BCDToCurrency = False
    DataSetOptions = []
    Left = 296
    Top = 384
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
  object ComBuscadorLDR: TComBuscador
    Data = DatosVentasCtdo.CDSBuscaLdr
    Campo = 'CODIGO_LDR'
    Titulo = 'Lugar de Recepcion'
    rOk = False
    Left = 108
    Top = 133
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosVentasCtdo.CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 144
    Top = 88
  end
  object ComBuscadorDeposito: TComBuscador
    Data = DatosVentasCtdo.CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 208
    Top = 64
  end
  object ComBuscadorVendedor: TComBuscador
    Data = DatosVentasCtdo.CDSBuscaVendedor
    Campo = 'CODIGO'
    Titulo = 'Vendedores'
    rOk = False
    Left = 280
    Top = 56
  end
  object ComBuscadorSerie: TComBuscador
    rOk = False
    Left = 336
    Top = 512
  end
  object ComBuscadorRecepciones: TComBuscador
    Data = DatosVentasCtdo.CDSBuscaRecepDetalle
    Campo = 'ID'
    Titulo = 'Recepciones'
    rOk = False
    Left = 760
    Top = 224
  end
  object ComBuscadorLote: TComBuscador
    Data = DatosVentasCtdo.CDSBuscaLotes
    Campo = 'ID'
    Titulo = 'Lotes'
    rOk = False
    Left = 492
    Top = 333
  end
  object frSucursal: TfrxDBDataset
    UserName = 'frSucursal'
    CloseDataSource = False
    DataSet = DatosVentasCtdo.CDSSucursal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 506
    Top = 531
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
  object dskAviso: TJvDesktopAlert
    HelpContext = 872
    Colors.WindowFrom = clMoneyGreen
    Colors.WindowTo = clTeal
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
    Left = 768
    Top = 440
  end
  object frFactura: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44390.814915034720000000
    ReportOptions.LastChange = 44390.814915034720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPrintReport = frFacturaPrintReport
    OnAfterPrintReport = frFacturaAfterPrintReport
    Left = 220
    Top = 235
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object OpenDialog: TOpenDialog
    Left = 633
    Top = 353
  end
  object frxDBPercepcionesIVA: TfrxDBDataset
    UserName = 'frxDBPercepcionesIVA'
    CloseDataSource = False
    OpenDataSource = False
    DataSet = DatosVentasCtdo.CDSPercepcionIVA
    BCDToCurrency = False
    DataSetOptions = []
    Left = 202
    Top = 541
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
    DataSet = DatosVentasCtdo.CDSVtaDetNovedades
    BCDToCurrency = False
    DataSetOptions = []
    Left = 556
    Top = 461
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

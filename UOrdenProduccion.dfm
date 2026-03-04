inherited FormOrdenProduccion: TFormOrdenProduccion
  Left = 375
  Top = 97
  Caption = 'Orden de Producci'#243'n'
  ClientHeight = 674
  ClientWidth = 1101
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 1119
  ExplicitHeight = 715
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1101
    Height = 621
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1120
    ExplicitHeight = 709
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1101
      Height = 138
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1120
      DesignSize = (
        1101
        138)
      object DBText1: TDBText
        Left = 489
        Top = 26
        Width = 17
        Height = 17
        DataField = 'LETRAOP'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtMuestraComprobante: TDBText
        Left = 345
        Top = 25
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
      object Label1: TLabel
        Left = 325
        Top = 47
        Width = 50
        Height = 13
        Caption = 'Fabricante'
        FocusControl = dbeProductor
      end
      object lbEstado: TLabel
        Left = 153
        Top = 1
        Width = 12
        Height = 22
        Caption = '--'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Arial'
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
        Left = 513
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Nro.Cpbte'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel4: TJvLabel
        Left = 9
        Top = 48
        Width = 33
        Height = 13
        Caption = 'Origen'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel5: TJvLabel
        Left = 9
        Top = 88
        Width = 38
        Height = 13
        Caption = 'Destino'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 299
        Top = 8
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel2: TJvLabel
        Left = 101
        Top = 8
        Width = 43
        Height = 13
        Caption = 'Sucursal'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel8: TJvLabel
        Left = 689
        Top = 8
        Width = 68
        Height = 13
        Caption = 'Plazo Entrega'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel2: TJvLabel
        Left = 325
        Top = 90
        Width = 86
        Height = 13
        Caption = 'Cliente Solicitante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel4: TJvLabel
        Left = 967
        Top = 47
        Width = 117
        Height = 13
        Caption = 'Fecha Inicio Produccion'
        Anchors = [akTop, akRight]
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        ExplicitLeft = 1009
      end
      object JvLabel5: TJvLabel
        Left = 967
        Top = 87
        Width = 82
        Height = 13
        Caption = 'Fecha Finalizada'
        Anchors = [akTop, akRight]
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        ExplicitLeft = 1009
      end
      object JvLabel6: TJvLabel
        Left = 967
        Top = 7
        Width = 128
        Height = 13
        Caption = 'Fecha de Entrega Prevista'
        Anchors = [akTop, akRight]
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        ExplicitLeft = 1009
      end
      object DBText4: TDBText
        Left = 689
        Top = 22
        Width = 65
        Height = 17
        DataField = 'MUESTRAFECHAENTREGA_1'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 771
        Top = 22
        Width = 65
        Height = 17
        DataField = 'MUESTRAFECHAENTREGA_2'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel8: TJvLabel
        Left = 689
        Top = 69
        Width = 59
        Height = 13
        Caption = 'Referencias'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText7: TDBText
        Left = 689
        Top = 83
        Width = 299
        Height = 17
        DataField = 'MUESTRAREFERENCIA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 689
        Top = 52
        Width = 281
        Height = 17
        DataField = 'MUESTRAOBRA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel11: TJvLabel
        Left = 689
        Top = 36
        Width = 25
        Height = 13
        Caption = 'Obra'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText6: TDBText
        Left = 587
        Top = 8
        Width = 65
        Height = 15
        DataField = 'ID'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtSub: TDBText
        Left = 628
        Top = 27
        Width = 37
        Height = 21
        DataField = 'SUB_NRO'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeOrigen: TDBEdit
        Left = 96
        Top = 64
        Width = 209
        Height = 21
        Color = clInfoBk
        DataField = 'NOMBRE_DEPOSITO_ORIGEN'
        DataSource = DSBase
        Enabled = False
        TabOrder = 7
      end
      object dbeDestino: TDBEdit
        Left = 96
        Top = 104
        Width = 209
        Height = 21
        Color = clInfoBk
        DataField = 'NOMBRE_DEPOSITO_DESTINO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 9
      end
      object dbePrefijo: TDBEdit
        Left = 513
        Top = 24
        Width = 41
        Height = 21
        TabStop = False
        DataField = 'SUCOP'
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
        Left = 561
        Top = 24
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'NUMEROOP'
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
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object dbeProductor: TDBEdit
        Left = 325
        Top = 63
        Width = 276
        Height = 21
        DataField = 'PRODUCTOR'
        DataSource = DSBase
        TabOrder = 10
      end
      object RxCOrigen: TJvDBComboEdit
        Left = 9
        Top = 64
        Width = 72
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'DEPOSITO_ORIGEN'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 6
        OnButtonClick = RxCOrigenButtonClick
      end
      object RxCDestino: TJvDBComboEdit
        Left = 9
        Top = 104
        Width = 72
        Height = 21
        ClickKey = 16397
        DataField = 'DEPOSITO_DESTINO'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 8
        OnButtonClick = RxCDestinoButtonClick
      end
      object RxCSucursal: TJvDBComboEdit
        Left = 104
        Top = 24
        Width = 37
        Height = 21
        ClickKey = 16397
        DataField = 'SUCURSAL'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 1
        OnButtonClick = RxCSucursalButtonClick
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 300
        Top = 24
        Width = 42
        Height = 21
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
      object dbeFecha: TJvDBDateEdit
        Left = 10
        Top = 24
        Width = 90
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA_INICIADA'
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
        TabOrder = 0
      end
      object RxCCodigo: TJvDBComboEdit
        Left = 325
        Top = 105
        Width = 60
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'CLIENTE'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 11
        OnButtonClick = BuscarClienteExecute
      end
      object dbeNombre: TDBEdit
        Left = 390
        Top = 105
        Width = 286
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRACLIENTE'
        DataSource = DSBase
        Enabled = False
        TabOrder = 12
      end
      object edFechaInicioProducc: TJvDBDateEdit
        Left = 967
        Top = 64
        Width = 115
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA_INCIO_PROD'
        DataSource = DSBase
        ButtonFlat = True
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
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 13
        DisabledTextColor = clBlack
        ExplicitLeft = 986
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 967
        Top = 104
        Width = 115
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA_FINALIZADA'
        DataSource = DSBase
        ButtonFlat = True
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
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 14
        DisabledTextColor = clBlack
        ExplicitLeft = 986
      end
      object edFechaEntrega: TJvDBDateEdit
        Left = 967
        Top = 24
        Width = 115
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA_ENTREGA_PREV'
        DataSource = DSBase
        ButtonFlat = True
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
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 15
        DisabledTextColor = clBlack
        ExplicitLeft = 986
      end
      object Panel2: TPanel
        Left = 854
        Top = 5
        Width = 97
        Height = 20
        Anchors = [akTop, akRight]
        Enabled = False
        TabOrder = 16
        ExplicitLeft = 873
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 1
          Width = 80
          Height = 17
          Caption = 'Tiene Plano'
          DataField = 'MUESTRATIENEPLANO'
          DataSource = DSBase
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object pnDetalle: TPanel
      Left = 0
      Top = 138
      Width = 1101
      Height = 483
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1120
      ExplicitHeight = 571
      DesignSize = (
        1101
        483)
      object DBText2: TDBText
        Left = 691
        Top = 447
        Width = 89
        Height = 21
        Anchors = [akRight, akBottom]
        DataField = 'ID_FCVTA'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 681
        ExplicitTop = 421
      end
      object JvLabel1: TJvLabel
        Left = 607
        Top = 447
        Width = 78
        Height = 26
        Cursor = crHandPoint
        Caption = 'Fc. de Vta que Genero la orden'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Anchors = [akRight, akBottom]
        ParentFont = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        WordWrap = True
        OnClick = JvLabel1Click
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 597
        ExplicitTop = 421
      end
      object JvLabel3: TJvLabel
        Left = 786
        Top = 447
        Width = 64
        Height = 26
        Cursor = crHandPoint
        Caption = 'Presupuesto Origen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Anchors = [akRight, akBottom]
        ParentFont = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        WordWrap = True
        OnClick = JvLabel3Click
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object DBText3: TDBText
        Left = 874
        Top = 447
        Width = 125
        Height = 13
        Anchors = [akRight, akBottom]
        DataField = 'MUESTRAPRESUPUESTO'
        DataSource = DatosOProduccion.DSOProdDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 836
        ExplicitTop = 514
      end
      object JvLabel9: TJvLabel
        Left = 697
        Top = 89
        Width = 59
        Height = 13
        Caption = 'Referencias'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText8: TDBText
        Left = 697
        Top = 107
        Width = 216
        Height = 17
        DataField = 'MUESTRAREFERENCIA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel10: TJvLabel
        Left = 705
        Top = 97
        Width = 59
        Height = 13
        Caption = 'Referencias'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText9: TDBText
        Left = 705
        Top = 115
        Width = 216
        Height = 17
        DataField = 'MUESTRAREFERENCIA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 713
        Top = 123
        Width = 216
        Height = 17
        DataField = 'MUESTRAREFERENCIA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 11
        Top = 435
        Width = 43
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Contacto'
        ExplicitTop = 565
      end
      object DBText11: TDBText
        Left = 9
        Top = 454
        Width = 176
        Height = 17
        Anchors = [akLeft, akBottom]
        DataField = 'MUESTRANOMBRECONTATO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitTop = 584
      end
      object Label4: TLabel
        Left = 191
        Top = 435
        Width = 132
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Contacto Correo electronico'
        ExplicitTop = 568
      end
      object DBText12: TDBText
        Left = 191
        Top = 454
        Width = 386
        Height = 17
        Anchors = [akLeft, akBottom]
        DataField = 'MUESTRACORREOCONTACTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitTop = 428
      end
      object DBText15: TDBText
        Left = 999
        Top = 447
        Width = 45
        Height = 13
        Anchors = [akRight, akBottom]
        DataField = 'MUESTRASUBNRO'
        DataSource = DatosOProduccion.DSOProdDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 961
        ExplicitTop = 514
      end
      object DBEdit1: TDBEdit
        Left = 11
        Top = 412
        Width = 481
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'OBS1'
        DataSource = DSBase
        TabOrder = 0
        ExplicitTop = 500
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 1099
        Height = 432
        ActivePage = pag1
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        ExplicitWidth = 1118
        ExplicitHeight = 520
        object pag1: TTabSheet
          Caption = 'Detalle Produccion'
          object pcProduccion: TPageControl
            Left = 0
            Top = 0
            Width = 1091
            Height = 404
            ActivePage = TabSheet4
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1110
            ExplicitHeight = 492
            object TabSheet1: TTabSheet
              Caption = 'Productos a Fabricar'
              object pcModoDetalle: TPageControl
                Left = 0
                Top = 0
                Width = 1083
                Height = 376
                ActivePage = pagDetalle
                Align = alClient
                TabOrder = 0
                TabPosition = tpBottom
                object pagDetalle: TTabSheet
                  Caption = 'Detalle'
                  DesignSize = (
                    1075
                    350)
                  object dbgDetalle: TJvDBGrid
                    Left = 0
                    Top = 0
                    Width = 1075
                    Height = 350
                    Align = alClient
                    DataSource = DatosOProduccion.DSOProdDet
                    FixedColor = clAqua
                    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    PopupMenu = pmDetalle
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    OnColEnter = dbgDetalleColEnter
                    OnDrawColumnCell = dbgDetalleDrawColumnCell
                    OnDblClick = dbgDetalleDblClick
                    OnEditButtonClick = dbgDetalleEditButtonClick
                    OnKeyPress = dbgDetalleKeyPress
                    SelectColumnsDialogStrings.Caption = 'Select columns'
                    SelectColumnsDialogStrings.OK = '&OK'
                    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                    EditControls = <>
                    RowsHeight = 17
                    TitleRowHeight = 17
                    OnCheckIfBooleanField = dbgDetalleCheckIfBooleanField
                    Columns = <
                      item
                        ButtonStyle = cbsEllipsis
                        Expanded = False
                        FieldName = 'CODIGO'
                        Title.Alignment = taCenter
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clWindowText
                        Title.Font.Height = -11
                        Title.Font.Name = 'MS Sans Serif'
                        Title.Font.Style = [fsBold]
                        Width = 158
                        Visible = True
                      end
                      item
                        Color = clInfoBk
                        Expanded = False
                        FieldName = 'DETALLE'
                        Title.Alignment = taCenter
                        Title.Caption = 'Detalle'
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clWindowText
                        Title.Font.Height = -11
                        Title.Font.Name = 'MS Sans Serif'
                        Title.Font.Style = [fsBold]
                        Width = 326
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'ESPECIFICACION'
                        Title.Alignment = taCenter
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clBlue
                        Title.Font.Height = -11
                        Title.Font.Name = 'MS Sans Serif'
                        Title.Font.Style = [fsBold]
                        Width = 242
                        Visible = True
                      end
                      item
                        Color = clInfoBk
                        Expanded = False
                        FieldName = 'UNIDAD'
                        Title.Alignment = taCenter
                        Title.Caption = 'Uni.'
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clWindowText
                        Title.Font.Height = -11
                        Title.Font.Name = 'MS Sans Serif'
                        Title.Font.Style = [fsBold]
                        Width = 33
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CANTIDAD'
                        Title.Alignment = taCenter
                        Title.Caption = 'Cant.'
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clWindowText
                        Title.Font.Height = -11
                        Title.Font.Name = 'MS Sans Serif'
                        Title.Font.Style = [fsBold]
                        Width = 72
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'EN_PLANIFICACION'
                        Title.Alignment = taCenter
                        Width = 57
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MUESTRASALDO'
                        Title.Alignment = taCenter
                        Width = 63
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MUESTRAPARTESDIARIO'
                        Title.Alignment = taCenter
                        Width = 88
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'Progreso'
                        Title.Alignment = taCenter
                        Width = 160
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Color = cl3DLight
                        Expanded = False
                        FieldName = 'FECHA_ENTREGA'
                        Title.Alignment = taCenter
                        Title.Font.Charset = DEFAULT_CHARSET
                        Title.Font.Color = clNavy
                        Title.Font.Height = -11
                        Title.Font.Name = 'MS Sans Serif'
                        Title.Font.Style = [fsBold]
                        Width = 110
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'FECHA_INIC_PRODUCC'
                        Title.Alignment = taCenter
                        Width = 118
                        Visible = True
                      end>
                    Delphi2010OptionsMigrated = True
                  end
                  object pnAdicionales: TTMSFNCPanel
                    Left = 358
                    Top = 17
                    Width = 714
                    Height = 330
                    ParentDoubleBuffered = False
                    Anchors = [akTop, akRight, akBottom]
                    DoubleBuffered = True
                    TabOrder = 1
                    Visible = False
                    OnExit = pnAdicionalesExit
                    Sections = <>
                    SectionsAppearance.Font.Charset = DEFAULT_CHARSET
                    SectionsAppearance.Font.Color = clWindowText
                    SectionsAppearance.Font.Height = -12
                    SectionsAppearance.Font.Name = 'Segoe UI'
                    SectionsAppearance.Font.Style = []
                    Header.StretchText = False
                    Header.Text = 'Datos Adicionales'
                    Header.Font.Charset = DEFAULT_CHARSET
                    Header.Font.Color = clWhite
                    Header.Font.Height = -13
                    Header.Font.Name = 'Segoe UI'
                    Header.Font.Style = [fsBold]
                    Header.Fill.Color = clMenuHighlight
                    Header.Fill.ColorTo = clMenuHighlight
                    Header.Buttons = [pbClose]
                    Header.ButtonSpacing = 10.000000000000000000
                    Header.DropDownWidth = 150.000000000000000000
                    Header.DropDownHeight = 150.000000000000000000
                    Footer.Text = 'Footer'
                    Footer.Font.Charset = DEFAULT_CHARSET
                    Footer.Font.Color = 4539717
                    Footer.Font.Height = -13
                    Footer.Font.Name = 'Segoe UI'
                    Footer.Font.Style = []
                    Footer.Fill.Kind = gfkGradient
                    Footer.Fill.Color = 16380654
                    Footer.Fill.ColorTo = 16382457
                    ButtonsAppearance.ButtonAppearance.Transparent = True
                    ButtonsAppearance.ButtonAppearance.NormalFill.Color = 14803425
                    ButtonsAppearance.ButtonAppearance.NormalStroke.Color = clDarkgray
                    ButtonsAppearance.ButtonAppearance.HoverFill.Color = 16511461
                    ButtonsAppearance.ButtonAppearance.HoverStroke.Color = 11632444
                    ButtonsAppearance.ButtonAppearance.FlatStyle = True
                    ButtonsAppearance.CollapseBitmap.Data = {
                      1054544D53464E435356474269746D6170E00000003C7376672077696474683D
                      223234707822206865696768743D2232347078222076696577426F783D223020
                      302032342032342220786D6C6E733D22687474703A2F2F7777772E77332E6F72
                      672F323030302F737667223E0D0A20203C706174682066696C6C3D226E6F6E65
                      22207374726F6B653D2263757272656E74436F6C6F7222207374726F6B652D6C
                      696E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22
                      726F756E6422207374726F6B652D77696474683D22322220643D226D37203134
                      20352D3520352035222F3E0D0A3C2F7376673E0D0A}
                    ButtonsAppearance.ExpandBitmap.Data = {07544269746D617000000000}
                    ButtonsAppearance.CloseBitmap.Data = {
                      1054544D53464E435356474269746D6170EF0000003C7376672077696474683D
                      223234707822206865696768743D2232347078222076696577426F783D223020
                      302032342032342220786D6C6E733D22687474703A2F2F7777772E77332E6F72
                      672F323030302F737667222066696C6C3D226E6F6E65223E3C70617468207374
                      726F6B653D2263757272656E74436F6C6F7222207374726F6B652D6C696E6563
                      61703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E
                      6422207374726F6B652D77696474683D22322220643D224D3132203132203720
                      376D352035203520356D2D352D3520352D356D2D3520352D352035222F3E3C2F
                      7376673E}
                    ButtonsAppearance.CompactBitmap.Data = {
                      1054544D53464E435356474269746D6170D80000003C7376672077696474683D
                      223234707822206865696768743D2232347078222076696577426F783D223020
                      302032342032342220786D6C6E733D22687474703A2F2F7777772E77332E6F72
                      672F323030302F737667223E3C706174682066696C6C3D226E6F6E6522207374
                      726F6B653D2263757272656E74436F6C6F7222207374726F6B652D6C696E6563
                      61703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E
                      6422207374726F6B652D77696474683D22322220643D226D313420372D352035
                      20352035222F3E3C2F7376673E}
                    ButtonsAppearance.StretchBitmap.Data = {
                      1054544D53464E435356474269746D6170D80000003C7376672077696474683D
                      223234707822206865696768743D2232347078222076696577426F783D223020
                      302032342032342220786D6C6E733D22687474703A2F2F7777772E77332E6F72
                      672F323030302F737667223E3C706174682066696C6C3D226E6F6E6522207374
                      726F6B653D2263757272656E74436F6C6F7222207374726F6B652D6C696E6563
                      61703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E
                      6422207374726F6B652D77696474683D22322220643D226D3130203720352035
                      2D352035222F3E3C2F7376673E}
                    ButtonsAppearance.DropDownBitmap.Data = {
                      1054544D53464E435356474269746D6170E00000003C7376672077696474683D
                      223234707822206865696768743D2232347078222076696577426F783D223020
                      302032342032342220786D6C6E733D22687474703A2F2F7777772E77332E6F72
                      672F323030302F737667223E0D0A20203C706174682066696C6C3D226E6F6E65
                      22207374726F6B653D2263757272656E74436F6C6F7222207374726F6B652D6C
                      696E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22
                      726F756E6422207374726F6B652D77696474683D22322220643D226D37203130
                      2035203520352D35222F3E0D0A3C2F7376673E0D0A}
                    object dbgAnexos: TDBGrid
                      Left = 0
                      Top = 28
                      Width = 714
                      Height = 302
                      Align = alClient
                      DataSource = DatosOProduccion.DSOProdDet
                      TabOrder = 1
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = []
                      OnColEnter = dbgAnexosColEnter
                      OnEnter = dbgAnexosEnter
                      OnKeyPress = dbgAnexosKeyPress
                      Columns = <
                        item
                          Color = clInfoBk
                          Expanded = False
                          FieldName = 'DETALLE'
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
                          FieldName = 'P_VOLUMEN'
                          Title.Alignment = taCenter
                          Title.Font.Charset = DEFAULT_CHARSET
                          Title.Font.Color = clWindowText
                          Title.Font.Height = -11
                          Title.Font.Name = 'MS Sans Serif'
                          Title.Font.Style = [fsBold]
                          Width = 92
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'P_PATS'
                          Title.Alignment = taCenter
                          Title.Font.Charset = DEFAULT_CHARSET
                          Title.Font.Color = clWindowText
                          Title.Font.Height = -11
                          Title.Font.Name = 'MS Sans Serif'
                          Title.Font.Style = [fsBold]
                          Width = 95
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'P_TRENZA'
                          Title.Alignment = taCenter
                          Title.Font.Charset = DEFAULT_CHARSET
                          Title.Font.Color = clWindowText
                          Title.Font.Height = -11
                          Title.Font.Name = 'MS Sans Serif'
                          Title.Font.Style = [fsBold]
                          Width = 81
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'P_ARMADURA'
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
                          FieldName = 'P_CANIOS'
                          Title.Alignment = taCenter
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
                object pagAgrupado: TTabSheet
                  Caption = 'Agrupado'
                  ImageIndex = 1
                  object cxGrid1: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1075
                    Height = 350
                    Align = alClient
                    PopupMenu = pmDetalle
                    TabOrder = 0
                    object cxGrid1DBTableView1: TcxGridDBTableView
                      DataController.DataSource = DatosOProduccion.DSOProdDet
                      object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
                        DataBinding.FieldName = 'CODIGO'
                        HeaderAlignmentHorz = taCenter
                        Width = 131
                      end
                      object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
                        DataBinding.FieldName = 'DETALLE'
                        HeaderAlignmentHorz = taCenter
                      end
                      object cxGrid1DBTableView1ESPECIFICACION: TcxGridDBColumn
                        DataBinding.FieldName = 'ESPECIFICACION'
                        HeaderAlignmentHorz = taCenter
                      end
                      object cxGrid1DBTableView1UNIDAD: TcxGridDBColumn
                        DataBinding.FieldName = 'UNIDAD'
                        HeaderAlignmentHorz = taCenter
                        Width = 34
                      end
                      object cxGrid1DBTableView1SUCURSAL: TcxGridDBColumn
                        DataBinding.FieldName = 'SUCURSAL'
                        Visible = False
                        HeaderAlignmentHorz = taCenter
                      end
                      object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
                        DataBinding.FieldName = 'ESTADO'
                        Visible = False
                        HeaderAlignmentHorz = taCenter
                      end
                      object cxGrid1DBTableView1EN_PLANIFICACION: TcxGridDBColumn
                        DataBinding.FieldName = 'EN_PLANIFICACION'
                        PropertiesClassName = 'TcxCheckBoxProperties'
                        Properties.Alignment = taCenter
                        Properties.ValueChecked = 'S'
                        Properties.ValueUnchecked = 'N'
                        HeaderAlignmentHorz = taCenter
                        Width = 53
                      end
                      object cxGrid1DBTableView1MUESTRASIGLAS: TcxGridDBColumn
                        DataBinding.FieldName = 'MUESTRASIGLAS'
                        Visible = False
                        HeaderAlignmentHorz = taCenter
                        Width = 57
                      end
                      object cxGrid1DBTableView1PARTICION: TcxGridDBColumn
                        DataBinding.FieldName = 'PARTICION'
                        Visible = False
                        HeaderAlignmentHorz = taCenter
                        Width = 63
                      end
                      object cxGrid1DBTableView1CODIGOALTERNATIVO: TcxGridDBColumn
                        DataBinding.FieldName = 'CODIGOALTERNATIVO'
                        Visible = False
                        HeaderAlignmentHorz = taCenter
                      end
                      object cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn
                        DataBinding.FieldName = 'CANTIDAD'
                        HeaderAlignmentHorz = taCenter
                      end
                      object cxGrid1DBTableView1MUESTRASALDO: TcxGridDBColumn
                        DataBinding.FieldName = 'MUESTRASALDO'
                        HeaderAlignmentHorz = taCenter
                        Width = 83
                      end
                      object cxGrid1DBTableView1ITEM_DETALLE: TcxGridDBColumn
                        DataBinding.FieldName = 'ITEM_DETALLE'
                        Visible = False
                        GroupIndex = 0
                        HeaderAlignmentHorz = taCenter
                      end
                      object cxGrid1DBTableView1FECHA: TcxGridDBColumn
                        DataBinding.FieldName = 'FECHA'
                        HeaderAlignmentHorz = taCenter
                        Width = 93
                      end
                      object cxGrid1DBTableView1FECHA_ENTREGA: TcxGridDBColumn
                        DataBinding.FieldName = 'FECHA_ENTREGA'
                        HeaderAlignmentHorz = taCenter
                        Width = 110
                      end
                      object cxGrid1DBTableView1FECHA_INIC_PRODUCC: TcxGridDBColumn
                        DataBinding.FieldName = 'FECHA_INIC_PRODUCC'
                        HeaderAlignmentHorz = taCenter
                        Width = 125
                      end
                    end
                    object cxGrid1Level1: TcxGridLevel
                      GridView = cxGrid1DBTableView1
                    end
                  end
                end
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Listados de Consumibles'
              ImageIndex = 1
              object dbgMovimientos: TDBGrid
                Left = 0
                Top = 0
                Width = 1083
                Height = 345
                Align = alClient
                DataSource = DatosOProduccion.DSOProdMov
                FixedColor = clBlue
                Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgMovimientosColEnter
                OnDblClick = dbgMovimientosDblClick
                Columns = <
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'CODIGO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Codigo'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 101
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'DETALLE'
                    Title.Alignment = taCenter
                    Title.Caption = 'Detalle'
                    Title.Color = clSilver
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clGreen
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 382
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'CANTIDAD_UNITARIA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Can x Uni.'
                    Title.Color = clSilver
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clGreen
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 83
                    Visible = True
                  end
                  item
                    Color = clInfoBk
                    Expanded = False
                    FieldName = 'CANTIDAD_ESTIMADA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Can.Est.'
                    Title.Color = clSilver
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clGreen
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 62
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CANTIDAD_REAL'
                    Title.Alignment = taCenter
                    Title.Caption = 'Cant.Real'
                    Title.Color = clSilver
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clGreen
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 81
                    Visible = True
                  end>
              end
              object Panel3: TPanel
                Left = 0
                Top = 345
                Width = 1083
                Height = 31
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                object BitBtn2: TBitBtn
                  Left = 920
                  Top = 2
                  Width = 96
                  Height = 27
                  Action = ImprimirConsumibles
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
                  TabOrder = 0
                end
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'Troqueles'
              ImageIndex = 2
              object dbgTroqueles: TDBGrid
                Left = 0
                Top = 0
                Width = 1083
                Height = 376
                Align = alClient
                DataSource = DatosOProduccion.DSTroqueles
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ID_PRODU_DIARIO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlue
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 111
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FECHA_EGRESO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlue
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 124
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NRO_TROQUEL'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlue
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 134
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CODIGO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlue
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 94
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MUESTRAARTICULO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlue
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 414
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FECHA_EGRESO'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clBlue
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 145
                    Visible = True
                  end>
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'En Construccion'
              ImageIndex = 3
              object cxGrid2: TcxGrid
                Left = 0
                Top = 0
                Width = 1083
                Height = 376
                Align = alClient
                TabOrder = 0
                object cxGrid2DBTableView1: TcxGridDBTableView
                  DataController.DataSource = DatosOProduccion.DSOProdDet
                  object cxGrid2DBTableView1CODIGO: TcxGridDBColumn
                    DataBinding.FieldName = 'CODIGO'
                    HeaderAlignmentHorz = taCenter
                    Width = 147
                  end
                  object cxGrid2DBTableView1DETALLE: TcxGridDBColumn
                    DataBinding.FieldName = 'DETALLE'
                    HeaderAlignmentHorz = taCenter
                  end
                  object cxGrid2DBTableView1UNIDAD: TcxGridDBColumn
                    DataBinding.FieldName = 'UNIDAD'
                    HeaderAlignmentHorz = taCenter
                    Width = 48
                  end
                  object cxGrid2DBTableView1CANTIDAD: TcxGridDBColumn
                    DataBinding.FieldName = 'CANTIDAD'
                    HeaderAlignmentHorz = taCenter
                  end
                  object cxGrid2DBTableView1ESPECIFICACION: TcxGridDBColumn
                    DataBinding.FieldName = 'ESPECIFICACION'
                    HeaderAlignmentHorz = taCenter
                  end
                  object cxGrid2DBTableView1ITEM_DETALLE: TcxGridDBColumn
                    DataBinding.FieldName = 'ITEM_DETALLE'
                    Visible = False
                    GroupIndex = 0
                    HeaderAlignmentHorz = taCenter
                  end
                  object cxGrid2DBTableView1FECHA: TcxGridDBColumn
                    DataBinding.FieldName = 'FECHA'
                    HeaderAlignmentHorz = taCenter
                    Width = 102
                  end
                  object cxGrid2DBTableView1FECHA_ENTREGA: TcxGridDBColumn
                    DataBinding.FieldName = 'FECHA_ENTREGA'
                    HeaderAlignmentHorz = taCenter
                    Width = 128
                  end
                  object cxGrid2DBTableView1FECHA_INIC_PRODUCC: TcxGridDBColumn
                    DataBinding.FieldName = 'FECHA_INIC_PRODUCC'
                    HeaderAlignmentHorz = taCenter
                    Width = 127
                  end
                end
                object cxGrid2Level1: TcxGridLevel
                  GridView = cxGrid2DBTableView1
                end
              end
            end
            object pagPartesDiarios: TTabSheet
              Caption = 'Partes Diarios'
              ImageIndex = 4
              DesignSize = (
                1083
                376)
              object dbgPartesDiarios: TDBGrid
                Left = 28
                Top = 3
                Width = 822
                Height = 347
                Anchors = [akLeft, akTop, akBottom]
                DataSource = DatosOProduccion.DSPartesDiarios
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDblClick = dbgPartesDiariosDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ID'
                    Title.Alignment = taCenter
                    Title.Caption = 'Nro Parte'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 88
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NROCPBTE'
                    Title.Alignment = taCenter
                    Title.Caption = 'Nro.Cpbte'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 89
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FECHA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Fecha'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 92
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ARTICULO_CODIGO'
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
                    FieldName = 'ARTICULO_DESCRIPCION'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NRO_LOTE'
                    Title.Alignment = taCenter
                    Title.Caption = 'Numero Lote'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -11
                    Title.Font.Name = 'MS Sans Serif'
                    Title.Font.Style = [fsBold]
                    Width = 81
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
                    Width = 96
                    Visible = True
                  end>
              end
            end
          end
        end
        object pagNovedades: TTabSheet
          Caption = 'Novedades'
          ImageIndex = 1
          object dbgObs: TDBGrid
            Left = 0
            Top = 0
            Width = 1091
            Height = 404
            Align = alClient
            DataSource = DatosOProduccion.DSOProdObs
            DrawingStyle = gdsClassic
            FixedColor = clFuchsia
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 65
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
                Width = 617
                Visible = True
              end>
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Notas'
          ImageIndex = 2
          object DBRichEdit1: TDBRichEdit
            Left = 0
            Top = 0
            Width = 1091
            Height = 361
            Align = alTop
            DataField = 'NOTAS'
            DataSource = DSBase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 621
    Width = 1101
    Align = alBottom
    ButtonHeight = 28
    OnDblClick = ToolBar1DblClick
    ExplicitTop = 709
    ExplicitWidth = 1120
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
    object BitBtn1: TBitBtn
      Left = 557
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
    object spProduccion: TSpeedButton
      Left = 632
      Top = 0
      Width = 33
      Height = 28
      Action = AProduccion
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0050FF00055555
        555558070F00555555550800FFF8055555550880000F800555555007FFF08800
        055555500FF800BBB0055555500BBBBBBBB05555500000000BB855500BBBBBBB
        B000550BB000000B000F50B00BBBBB0B0B50500BBBBBBB0B0B55550BBBBBB0B0
        B0555550BBBB0B0B055555550000B00055555555550000555555}
    end
    object sbRecepcion: TSpeedButton
      Left = 665
      Top = 0
      Width = 36
      Height = 28
      Action = RecepcionProducto
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333300333
        33333333333773FF333333333330F0033333333333373773FF333333330FFFF0
        03333333337F333773FF3333330FFFFFF003333333733FF33773333330FF00FF
        FF80333337F3773F3337333330FFFF0FFFF03FFFF7FFF3733F3700000000FFFF
        0FF0777777773FF373370000000000FFFFF07FFFFFF377FFF3370CCCCC000000
        FF037777773337773F7300CCC000003300307F77733337F37737000C00000033
        33307F373333F7F333370000007B703333307FFFF337F7F33337099900BBB033
        33307777F37777FF33370999007B700333037777F3373773FF73099900000030
        00337777FFFFF7F7773300000000003333337777777777333333}
      NumGlyphs = 2
    end
    object btImpRtos: TBitBtn
      Left = 701
      Top = 0
      Width = 32
      Height = 28
      Action = ImprimeEtiquetas
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
      TabOrder = 8
    end
    object ToolButton1: TToolButton
      Left = 733
      Top = 0
      Width = 31
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object spIncidencias: TSpeedButton
      Left = 764
      Top = 0
      Width = 33
      Height = 28
      Action = Incidencias
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005757
        570065656500727272007D7D7D00848484008686860087878700878787008787
        8700878787008787870087878700878787008787870087878700878787008787
        8700878787008787870087878700878787008787870087878700878787008787
        8700878787008787870088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        8800888888008888880088888800888888008888880088888800888888008888
        880088888800888888008888880088888800898989008D8D8D00969696009E9E
        9E00A8A8A800B4B4B400C0C0C000C9C9C900CFCFCF00D1D1D100D3D3D300D4D4
        D400D4D4D400D5D5D500D5D5D500D5D5D500D6D6D600D6D6D600D7D7D700D8D8
        D800D8D8D800D8D8D800D9D9D900D9D9D900DADADA00DBDBDB00DBDBDB00DCDC
        DC00DCDCDC00DDDDDD00DDDDDD00DEDEDE00DFDFDF00DFDFDF00E0E0E000E0E0
        E000E1E1E100E2E2E200E2E2E200E3E3E300E3E3E300E4E4E400E5E5E500E5E5
        E500E6E6E600E7E7E700E7E7E700E8E8E800E8E8E800E9E9E900EAEAEA00EAEA
        EA00EBEBEB00ECECEC00ECECEC00EDEDED00EEEEEE00EFEFEF00EFEFEF00F0F0
        F000F1F1F100F2F2F200F3F3F300F4F4F400F5F5F500F5F5F500F6F6F600F7F7
        F700F7F7F700F8F8F800F9F9F900FAFAFA00FAFAFA00FBFBFB00FCFCFC00FCFC
        FC00FDFDFD00FDFCFD00FDFCFD00FDF9FD00FDEFFD00FDDAFD00FDB7FD00FE7E
        FE00FE3CFE00FE15FE00FE05FE00FE01FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FAFAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA9E9E9E9E9E9E9E9E9E9E9E9E
        9E9E9E9E9E9E9E9EFAFAFA9ECECAC9C7C2C2BFBCBAB8B5B1B0AFABABAAAAAAAA
        9EFAFA9ECFCE94949494949494949494949494949494AAAA9EFAFA9ED2D09494
        9494949494949494949494949494ABAA9EFAFA9ED5D2CFCFCACAC5C4C0BFBDBA
        B8B6B5B0B0AFABAA9EFAFA9ED6D594949494949494949494949494949494AFAB
        9EFAFA9ED9D794949494949494949494949494949494B0AF9EFAFA9EDBD9D7D5
        D2D0CECBCAC7C5C2BFBDBAB8B8B5B1B09EFAFA9EDCDB94949494949494949494
        949494949494B5B19EFAFA9EDFDC94949494949494949494949494949494B6B5
        9EFAFA9EE0DFDCDBD9D7D5D4D0CECECAC7C5C2BFBDBCBAB69EFAFA9EE1E09494
        9494949494949494949494949494BCBA9EFAFA9EE4E394949494949494949494
        949494949494BDBC9EFAFA9EE6E4E3E1DFDDDBDAD7D5D4D0CFCECAC7C5C2C0BF
        9EFAFA9EE7E694949494949494949494949494949494C2C09EFAFA9EE9E79494
        9494949494949494949494949494C5C49EFAFA9EEAE9E7E6E4E3E1DFDCDBD9D9
        D6D4D0CFCECAC7C59EFAFA9EEAEA94949494949494949494949494949494CAC9
        9EFAFA9EEAEA94949494949494949494949494949494CECB9EFAFA9EEAEAEAEA
        E9E7E7E4E3E1DFDDDCDAD9D6D5D2D0CE9EFAFA9EEAEAEAEAEAE9E9E6E4E3E1DF
        DDDCDAD7D6D4D2CF9EFAFAFA9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA}
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton2: TToolButton
      Left = 797
      Top = 0
      Width = 37
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object BtAnular: TSpeedButton
      Left = 834
      Top = 0
      Width = 25
      Height = 28
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
    object ToolButton3: TToolButton
      Left = 859
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btBuscarPresupuestos: TBitBtn
      Left = 867
      Top = 0
      Width = 119
      Height = 28
      Action = LeerPresupuesto
      Caption = 'Leer Presupuesto'
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
      TabOrder = 9
    end
    object spRehacerPresupuestos: TSpeedButton
      Left = 986
      Top = 0
      Width = 23
      Height = 28
      Action = GenerarRevision
    end
  end
  inherited Panel1: TPanel
    Top = 651
    Width = 1101
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    OnDblClick = Panel1DblClick
    ExplicitTop = 739
    ExplicitWidth = 1120
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1012
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1031
    end
  end
  object Panel4: TPanel [3]
    Left = 682
    Top = 100
    Width = 146
    Height = 33
    TabOrder = 3
    object JvLabel7: TJvLabel
      Left = 52
      Top = 0
      Width = 54
      Height = 13
      Caption = 'Prev --- Sig'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object DBText14: TDBText
      Left = 6
      Top = 14
      Width = 65
      Height = 17
      Cursor = crHandPoint
      Alignment = taRightJustify
      DataField = 'ID_OP_PREV'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = DBText14Click
    end
    object DBText16: TDBText
      Left = 77
      Top = 14
      Width = 65
      Height = 17
      Cursor = crHandPoint
      Alignment = taRightJustify
      DataField = 'ID_OP_NEXT'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = DBText16Click
    end
  end
  inherited ActionList1: TActionList
    Left = 240
    Top = 248
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarArticuloProduccion: TAction
      Caption = 'BuscarArticuloProduccion'
      OnExecute = BuscarArticuloProduccionExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object AProduccion: TAction
      Hint = 'Envia a Producci'#243'n'
      OnExecute = AProduccionExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      Hint = 'Imprimir Orden'
      OnExecute = ImprimirExecute
    end
    object RecepcionProducto: TAction
      Hint = 'Recepci'#243'n de Productos terminados'
      OnExecute = RecepcionProductoExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object ImprimeEtiquetas: TAction
      OnExecute = ImprimeEtiquetasExecute
    end
    object Incidencias: TAction
      Hint = 'Incidencias'
      OnExecute = IncidenciasExecute
    end
    object Anular: TAction
      Hint = 'Anulacion '
      OnExecute = AnularExecute
    end
    object RearmarProduccion: TAction
      Caption = 'Rearmar a Produccion'
      ShortCut = 49234
      OnExecute = RearmarProduccionExecute
    end
    object CargarLote: TAction
      Caption = 'CargarLote'
      OnExecute = CargarLoteExecute
    end
    object ImprimirConsumibles: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirConsumiblesExecute
    end
    object GenerarParteDiario: TAction
      Caption = 'Generar Parte Diario'
      OnExecute = GenerarParteDiarioExecute
    end
    object LeerPresupuesto: TAction
      Caption = 'Leer Presupuesto'
      OnExecute = LeerPresupuestoExecute
    end
    object PasarIdPresupuestoDet: TAction
      Caption = 'PasarIdPresupuestoDet'
      ShortCut = 16469
      OnExecute = PasarIdPresupuestoDetExecute
    end
    object GenerarRevision: TAction
      Hint = 'Generar Revision'
      ImageIndex = 11
      ShortCut = 16466
      OnExecute = GenerarRevisionExecute
    end
    object HacerRevision: TAction
      Caption = 'Hacer Revision'
      OnExecute = HacerRevisionExecute
    end
    object CambiarCliente: TAction
      Caption = 'Cambiar Cliente'
      ShortCut = 16460
      OnExecute = CambiarClienteExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosOProduccion.CDSOProdCab
    Left = 552
    Top = 80
  end
  inherited ImageList1: TImageList
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
    Left = 336
    Top = 296
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 136
    Top = 512
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 424
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 800
    Top = 272
  end
  inherited QBrowse2: TFDQuery
    Left = 40
    Top = 560
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 152
    Top = 248
  end
  inherited ImageListDos: TImageList
    Left = 272
    Top = 80
    Bitmap = {
      494C01010D001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000705030A5A3C267F9A6842DBB278
      4DFC986641D75438237706030309000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002F29254D958573EE9C8B
      78FF9C8B78FF9C8B78FFA59482FFD8CABAFFB3815AFFBE926EFEECDFD5FEFDFB
      FAFFF0E4DCFFC39B7DF79A6E4DD2050402080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000948572EEDED5C8FFDDD4
      C7FFA39583FFFFFFFFFFFFFFFFFFDABCA5FFCAA181FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFEFEFFC29875FF543823770000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF2EBE1FFF2EB
      E1FF9C8B78FFFFFFFFFFFFFFFFFFBF8D67FFEFE3DAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDED4C5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF2EBE1FF9C8B
      78FF9C8B78FFFFFFFFFFDED5C6FFB77D52FFFBF8F6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDED4C5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF2EBE1FFF2EB
      E1FF9C8B78FFFFFFFFFFFFFFFFFFBF8C66FFEFE3DAFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3EAE3FFE1C9B7FFC39776FFA36F46E70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF2EBE1FF9C8B
      78FF9C8B78FFFFFFFFFFC2B5A5FFBA9577FFB78B67FFFFFFFFFFFFFFFFFFFFFF
      FFFFE1CAB8FFB77E54FFB57A4EFFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF2EBE1FFF2EB
      E1FF9C8B78FFFFFFFFFFFFFFFFFFFCF9F7FFC59673FFCAA080FFEEE0D6FFF9F5
      F1FFF0E3DAFFC99D7CFFB77E53FFB57A4EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF2EBE1FF9C8B
      78FF9C8B78FFFFFFFFFF9C8B78FFAB9B8AFFD6CABAFFDABDA7FFBF8D67FFBA83
      5AFFC08E68FFDABCA5FFD9CBBAFF6B482E970000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF2EBE1FFF2EB
      E1FF9C8B78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA39381FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF2EBE1FF9C8B
      78FF9C8B78FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FFFFFFFFFF9C8B78FF9C8B
      78FF9C8B78FFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FFF2EBE1FFF2EB
      E1FF9C8B78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C8B78FF9C8B78FF9C8B
      78FF9C8B78FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C8B78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000AF9E8DD9AF9E8DD900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFFA0BB90FF82A5
      6DFF769C5EFF769C5EFF769C5EFF000000000000000000000000000000000000
      00009B8B7CC0C5B19DF5CDBEAEF0EADFD3FFEADFD3FFCDBDAEEFC5B19DF59A89
      7CBF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46BFF769C5EFF769C5EFF658550DB00000000817468A0C4B09DF5C8B8
      A8F0E4D9CBFFF0EADFFFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF0EADFFFE5D9
      CBFFC8B8A6F0C5B09DF4817468A0000000000000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFBACDAEFF8EAD7AFFBBCE
      AFFFE6EDE1FF80A36AFF769C5EFF72975BF800000000827468A1C4B09DF5CAB8
      A8F1E5DACCFFF1EADFFFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF1EADFFFE5DA
      CCFFCAB8A8F1C4B09DF5827468A1000000000000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFF769C
      5EFFBBCEAFFFE4ECDFFF7EA267FF658550DB0000000000000000000000000000
      0000958679B7C5B09AF7C5A589F9C08D65FFC08D65FFC5A589F9C5B09AF79386
      77B6000000000000000000000000000000000000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFFA2BB91FF789D60FF000000000000000000000000000000000000
      0000895E3CC0AF764DF6C28B62F6E2A97DFFE2A97DFFC28B62F6AF764DF6895D
      3BBF000000000000000000000000000000000000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C80000000000000000744F32A0AE774BF5B880
      56F0DBA276FFEEB589FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFEEB589FFDBA2
      75FFB88056F0B0764BF4744F32A000000000000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF000000000000000000000000744E33A1AE774BF5B87F
      56F1DCA377FFEEB589FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFEEB589FFDCA3
      77FFB87F56F1AE774BF5744E33A1000000000000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF00000000000000000000000000000000000000000000
      0000865B3CB7AE7A4FF7A3905FF988A065FF88A065FFA3905FF9AE7A4FF7845B
      3BB6000000000000000000000000000000000000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      00005A7649C073985BF681A46EF695BF8CFF95BF8CFF81A46EF673985BF65976
      47BF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF0000000000000000000000004B633CA073965CF5789D
      65F090BA84FF9DC897FF9EC999FF9EC999FF9EC999FF9EC999FF9DC897FF90B9
      85FF789D65F071965BF44B633CA0000000000000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C70000000000000000000000004B633DA173965CF5789C
      66F190BA85FF9DC798FF9EC999FF9EC999FF9EC999FF9EC999FF9DC798FF90BA
      85FF789C66F173965CF54B633DA1000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D10000000000000000000000000000000000000000000000000000
      0000567247B773995DF67FA66FF595BE8BFF94BE8CFF7FA66FF573995DF65772
      46B6000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000648451D5638450D400000000000000000000
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
      000000000000000000000000FFFFFF00FFC7000000000000C001000000000000
      8001000000000000800100000000000080010000000000008000000000000000
      8000000000000000800000000000000080000000000000008001000000000000
      800100000000000080010000000000008001000000000000F001000000000000
      F001000000000000FFFF000000000000FFEFFFFFFFC7FFFFFFCFF3FFC001FE7F
      FF8FF1FFC001F00FFF0FF0FFC0008001FE0FF07FC0008001FC0FF03FC000F00F
      F80FF01FC001F00FF00FF00FC0018001E00FF00FC0038001F00FF01FC003F00F
      F80FF03FC003F00FFC0FF07FC0038001FE0FF0FFC0038001FF0FF1FFC007F00F
      FF8FF3FFC00FFE7FFFCFF7FFC01FFFFFFFFFE007FFFF3FFFF83FE00780011FFF
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
  object frOProd: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.802346273150000000
    ReportOptions.LastChange = 39638.802346273150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 872
    Top = 368
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
  object frDSDetalle: TfrxDBDataset
    UserName = 'frDSDetalle'
    CloseDataSource = False
    DataSet = DatosOProduccion.CDSOProdDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 816
    Top = 440
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_OPCAB'
        FieldAlias = 'ID_OPCAB'
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
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'DEPOSITO_DESTINO'
        FieldAlias = 'DEPOSITO_DESTINO'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
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
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'EN_PLANIFICACION'
        FieldAlias = 'EN_PLANIFICACION'
      end
      item
        FieldName = 'MUESTRACOPIAS'
        FieldAlias = 'MUESTRACOPIAS'
      end
      item
        FieldName = 'MUESTRASIGLAS'
        FieldAlias = 'MUESTRASIGLAS'
      end
      item
        FieldName = 'PARTICION'
        FieldAlias = 'PARTICION'
      end
      item
        FieldName = 'ID_PRESU_DET'
        FieldAlias = 'ID_PRESU_DET'
      end
      item
        FieldName = 'ID_PRESU_CAB'
        FieldAlias = 'ID_PRESU_CAB'
      end
      item
        FieldName = 'CODIGOALTERNATIVO'
        FieldAlias = 'CODIGOALTERNATIVO'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'COSTO'
        FieldAlias = 'COSTO'
      end
      item
        FieldName = 'MUESTRASALDO'
        FieldAlias = 'MUESTRASALDO'
      end
      item
        FieldName = 'ESPECIFICACION'
        FieldAlias = 'ESPECIFICACION'
      end
      item
        FieldName = 'ITEM_DETALLE'
        FieldAlias = 'ITEM_DETALLE'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'FECHA_ENTREGA'
        FieldAlias = 'FECHA_ENTREGA'
      end
      item
        FieldName = 'FECHA_INIC_PRODUCC'
        FieldAlias = 'FECHA_INIC_PRODUCC'
      end
      item
        FieldName = 'CANT_ENTREGADA'
        FieldAlias = 'CANT_ENTREGADA'
      end>
  end
  object frDSMovimientos: TfrxDBDataset
    UserName = 'frDSMovimientos'
    CloseDataSource = False
    DataSet = DatosOProduccion.CDSOProdMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 792
    Top = 368
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_OPDET'
        FieldAlias = 'ID_OPDET'
      end
      item
        FieldName = 'ID_OPCAB'
        FieldAlias = 'ID_OPCAB'
      end
      item
        FieldName = 'FECHA_SALIDA'
        FieldAlias = 'FECHA_SALIDA'
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
        FieldName = 'CANTIDAD_UNITARIA'
        FieldAlias = 'CANTIDAD_UNITARIA'
      end
      item
        FieldName = 'CANTIDAD_ESTIMADA'
        FieldAlias = 'CANTIDAD_ESTIMADA'
      end
      item
        FieldName = 'CANTIDAD_REAL'
        FieldAlias = 'CANTIDAD_REAL'
      end
      item
        FieldName = 'DEPOSITO_ORIGEN'
        FieldAlias = 'DEPOSITO_ORIGEN'
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
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end>
  end
  object frDSObs: TfrxDBDataset
    UserName = 'frDSObs'
    CloseDataSource = False
    DataSource = DatosOProduccion.DSOProdObs
    BCDToCurrency = False
    DataSetOptions = []
    Left = 752
    Top = 440
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_OPCAB'
        FieldAlias = 'ID_OPCAB'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end>
  end
  object frCabecera: TfrxDBDataset
    UserName = 'frCabecera'
    CloseDataSource = False
    DataSet = DatosOProduccion.CDSOProdCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 736
    Top = 280
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'PRODUCTOR'
        FieldAlias = 'PRODUCTOR'
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
        FieldName = 'DEPOSITO_ORIGEN'
        FieldAlias = 'DEPOSITO_ORIGEN'
      end
      item
        FieldName = 'DEPOSITO_DESTINO'
        FieldAlias = 'DEPOSITO_DESTINO'
      end
      item
        FieldName = 'LETRAOP'
        FieldAlias = 'LETRAOP'
      end
      item
        FieldName = 'SUCOP'
        FieldAlias = 'SUCOP'
      end
      item
        FieldName = 'NUMEROOP'
        FieldAlias = 'NUMEROOP'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'NOMBRE_DEPOSITO_ORIGEN'
        FieldAlias = 'NOMBRE_DEPOSITO_ORIGEN'
      end
      item
        FieldName = 'NOMBRE_DEPOSITO_DESTINO'
        FieldAlias = 'NOMBRE_DEPOSITO_DESTINO'
      end
      item
        FieldName = 'OBS1'
        FieldAlias = 'OBS1'
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'ID_FCVTA'
        FieldAlias = 'ID_FCVTA'
      end
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end
      item
        FieldName = 'MUESTRACLIENTE'
        FieldAlias = 'MUESTRACLIENTE'
      end
      item
        FieldName = 'NOTAS'
        FieldAlias = 'NOTAS'
      end
      item
        FieldName = 'ID_PRESUPUESTO'
        FieldAlias = 'ID_PRESUPUESTO'
      end
      item
        FieldName = 'MUESTRANROPRESUP'
        FieldAlias = 'MUESTRANROPRESUP'
      end
      item
        FieldName = 'SUB_NRO'
        FieldAlias = 'SUB_NRO'
      end
      item
        FieldName = 'FECHA_INICIADA'
        FieldAlias = 'FECHA_INICIADA'
      end
      item
        FieldName = 'FECHA_INCIO_PROD'
        FieldAlias = 'FECHA_INCIO_PROD'
      end
      item
        FieldName = 'FECHA_FINALIZADA'
        FieldAlias = 'FECHA_FINALIZADA'
      end
      item
        FieldName = 'FECHA_ENTREGA_PREV'
        FieldAlias = 'FECHA_ENTREGA_PREV'
      end
      item
        FieldName = 'FECHA_INGENIERIA'
        FieldAlias = 'FECHA_INGENIERIA'
      end
      item
        FieldName = 'NRO_ORDEN_COMP'
        FieldAlias = 'NRO_ORDEN_COMP'
      end
      item
        FieldName = 'FECHA_OC'
        FieldAlias = 'FECHA_OC'
      end
      item
        FieldName = 'ID_OBRA'
        FieldAlias = 'ID_OBRA'
      end
      item
        FieldName = 'ID_OBRA_SECTOR'
        FieldAlias = 'ID_OBRA_SECTOR'
      end
      item
        FieldName = 'MUESTRAOBRA'
        FieldAlias = 'MUESTRAOBRA'
      end
      item
        FieldName = 'MUESTRASECTOR'
        FieldAlias = 'MUESTRASECTOR'
      end
      item
        FieldName = 'MUESTRAFECHAENTREGA_2'
        FieldAlias = 'MUESTRAFECHAENTREGA_2'
      end
      item
        FieldName = 'MUESTRAFECHAENTREGA_1'
        FieldAlias = 'MUESTRAFECHAENTREGA_1'
      end
      item
        FieldName = 'MUESTRATIENEPLANO'
        FieldAlias = 'MUESTRATIENEPLANO'
      end
      item
        FieldName = 'MUESTRAREFERENCIA'
        FieldAlias = 'MUESTRAREFERENCIA'
      end
      item
        FieldName = 'MUESTRANOMBRECONTATO'
        FieldAlias = 'MUESTRANOMBRECONTATO'
      end
      item
        FieldName = 'MUESTRATELEFONOCONTACTO'
        FieldAlias = 'MUESTRATELEFONOCONTACTO'
      end
      item
        FieldName = 'MUESTRACORREOCONTACTO'
        FieldAlias = 'MUESTRACORREOCONTACTO'
      end>
  end
  object ComBuscadorSucursal: TComBuscador
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 633
    Top = 267
  end
  object ComBuscadorDepositos: TComBuscador
    Data = QBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 677
    Top = 147
  end
  object ComBuscadorStockProd: TComBuscador
    Data = CDSBuscadorStockPro
    Campo = 'CODIGO'
    Titulo = 'Stock de Produccion'
    rOk = False
    Left = 353
    Top = 435
  end
  object ComBuscadorComprobante: TComBuscador
    Campo = 'ID_COMPROBANTE'
    Titulo = 'Comprobantes'
    rOk = False
    Left = 432
    Top = 88
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
    Left = 904
    Top = 440
  end
  object QBuscaTpFcVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.TipoCpbte from fcvtacab f where f.id_fc = :id')
    Left = 568
    Top = 408
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBuscaTpFcVtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
  end
  object QBuscaDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos order by nombre')
    Left = 936
    Top = 304
    object QBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QBuscaDepositoID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 4
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
      Visible = False
    end
    object QBuscaDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal')
    Left = 497
    Top = 91
    object QBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object pmDetalle: TPopupMenu
    Left = 937
    Top = 243
    object ModoDetalle1: TMenuItem
      Caption = 'Modo Detalle'
      Checked = True
      OnClick = ModoDetalle1Click
    end
    object ModoAgrupado1: TMenuItem
      Caption = 'Modo Agrupado'
      OnClick = ModoAgrupado1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
    object PonerenProduccion1: TMenuItem
      Action = RearmarProduccion
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object GenerarParte1: TMenuItem
      Action = GenerarParteDiario
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object HacerRevision1: TMenuItem
      Action = HacerRevision
    end
    object CambiarCliente1: TMenuItem
      Action = CambiarCliente
    end
  end
  object QBuscadorStockPro_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo,s.detalle,s.id,st.reemplazo_stk as Cod_Alternati' +
        'vo from stock_produccion_cab s'
      'left join  stock st on st.codigo_stk=s.codigo'
      'order by s.detalle')
    Left = 56
    Top = 424
  end
  object DSPBuscadorStockPro: TDataSetProvider
    DataSet = QBuscadorStockPro_
    Left = 165
    Top = 431
  end
  object CDSBuscadorStockPro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscadorStockPro'
    Left = 253
    Top = 431
    object CDSBuscadorStockProCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSBuscadorStockProDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSBuscadorStockProCOD_ALTERNATIVO: TStringField
      DisplayLabel = 'Cod.Alternativp'
      FieldName = 'COD_ALTERNATIVO'
      ReadOnly = True
    end
    object CDSBuscadorStockProID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
  end
  object frDetalleConsumibles: TfrxDBDataset
    UserName = 'frDetalleConsumibles'
    CloseDataSource = False
    DataSource = DatosOProduccion.DSOProdMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 896
    Top = 288
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'ID_CAB'
      end
      item
        FieldName = 'CODIGO_STK'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'UNIDAD'
        FieldType = fftString
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldType = fftString
      end
      item
        FieldName = 'COSTO_STK'
      end
      item
        FieldName = 'CANTIDAD_REAL'
      end
      item
        FieldName = 'CANTIDAD_FISICA'
      end
      item
        FieldName = 'ULTIMO_COSTO'
      end
      item
        FieldName = 'COSTO'
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 397
    Top = 243
  end
end

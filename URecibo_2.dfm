inherited FormRecibo_2: TFormRecibo_2
  Left = 213
  Top = 86
  Caption = 'Recibo de Cobranza'
  ClientHeight = 677
  ClientWidth = 898
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  ExplicitWidth = 916
  ExplicitHeight = 718
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Top = 22
    Width = 898
    Height = 484
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 22
    ExplicitWidth = 898
    ExplicitHeight = 484
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 898
      Height = 132
      Align = alTop
      Color = clGradientInactiveCaption
      ParentBackground = False
      PopupMenu = pmOtrasAcciones
      TabOrder = 0
      object dbtMuestraComprobante: TDBText
        Left = 343
        Top = 25
        Width = 162
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
      object NroRec: TDBText
        Left = 669
        Top = 46
        Width = 63
        Height = 12
        DataField = 'ID_RC'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object spSuma: TSpeedButton
        Left = 752
        Top = 104
        Width = 25
        Height = 22
        Hint = 'Sumar'
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FF00FF00035A
          050006900E00089511000A9915000C9D19000DA01C0010A5210011A6240013AB
          270014AC290017B02E0018B230001BB735001CBA38001FBF3E0020C1400022C4
          430023C5450025C7470027CB4B0028CC4D0029CF52002CD355002DD4580030D9
          5E0034DE65000565930005669500086B9A000268A3000274A9000479AF001479
          AD000788BC00108ABB001F91BF000385C000058BC7000791C5001CAAD3002CA7
          D30031B5D30030B0DA0012CBFE0030C9E90020CDFD003FE3FE0079C0DC0048CF
          F20051D7F60051D8F70054DEFF0055F6FE005FFEFF0074E0F80068F6FF0073FA
          FE0078FBFE007FFEFF0083FAFB0089FBFE0092FFFF009FFBFE0098FFFF00A7E9
          F300A3F3FF00A0FFFF00B6F2FF00B7FFFF00C6FFFF00DAF8FF00DCFFFF00E2F7
          FC00EDFAFC00F0FFFF00FBFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000101010100000000001C1C1C1C1C1C0001030201000000001F2D2C2E34
          37291C010504010000001F392F2C2E32010101010806010101011F392F2C2E32
          0113130D0D09080604011F392F2C2E33011714130E0D0B0908011F3F42444749
          010101011413010101011F4128272223242130011716010000001F2A2F2C2E34
          372B1E011A19010000001F392F2C2E34372B25010101010000001F392F2C2E34
          372B251C0000000000001F392F2C2E34372B251C0000000000001F3A3835363A
          3D31261C0000000000001F4C4B46433F3F3E351C00000000000000204A47453F
          3D3C1D0000000000000000001F1F1F1F1F1F0000000000000000}
        OnClick = spSumaClick
      end
      object RxLabel59: TJvLabel
        Left = 102
        Top = 5
        Width = 89
        Height = 13
        Caption = 'Sucursal de Venta'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel58: TJvLabel
        Left = 13
        Top = 6
        Width = 35
        Height = 13
        Cursor = crHandPoint
        Hint = 'Link de Configuracion de las opciones del recibo.'
        Caption = 'Fecha '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        OnClick = IniciarFocoExecute
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object RxLabel60: TJvLabel
        Left = 613
        Top = 8
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 297
        Top = 6
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel8: TJvLabel
        Left = 826
        Top = 7
        Width = 29
        Height = 13
        Caption = 'Modo'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel7: TJvLabel
        Left = 394
        Top = 46
        Width = 45
        Height = 13
        Caption = 'Cobrador'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel3: TJvLabel
        Left = 508
        Top = 89
        Width = 53
        Height = 13
        Caption = 'Dscto.Imp.'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel4: TJvLabel
        Left = 435
        Top = 89
        Width = 41
        Height = 13
        Caption = 'Dscto.%'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel5: TJvLabel
        Left = 322
        Top = 91
        Width = 63
        Height = 13
        Caption = 'Importe Neto'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object Label3: TLabel
        Left = 720
        Top = 7
        Width = 31
        Height = 13
        Caption = 'N.Op.:'
      end
      object edNumeroOP: TDBText
        Left = 759
        Top = 7
        Width = 58
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
      object DBText3: TDBText
        Left = 721
        Top = 63
        Width = 60
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        DataField = 'NRO_RECIBO_INTERMO'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = GravarNroInternoExecute
      end
      object JvLabel1: TJvLabel
        Left = 738
        Top = 49
        Width = 35
        Height = 13
        Hint = 
          'Numero Interno de Recibo ( por si hay un control de numeros de N' +
          'ros.Propios)'
        Caption = 'Interno'
        ParentShowHint = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        ShowHint = True
        Transparent = True
        OnClick = GravarNroInternoExecute
      end
      object lbGrupo: TLabel
        Left = 244
        Top = 6
        Width = 29
        Height = 13
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 615
        Top = 27
        Width = 22
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        DataField = 'CLASECPBTE'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = GravarNroInternoExecute
      end
      object DBText6: TDBText
        Left = 797
        Top = 63
        Width = 60
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        DataField = 'LOTE_COBRO_TC'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = GravarNroInternoExecute
      end
      object JvLabel2: TJvLabel
        Left = 809
        Top = 49
        Width = 48
        Height = 13
        Hint = 
          'Lote que se genera desde la Cobranza de T.de Credito de los Abon' +
          'os'
        Caption = 'Lote x TC'
        ParentShowHint = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        ShowHint = True
        Transparent = True
        OnClick = GravarNroInternoExecute
      end
      object dbtCotizacion: TDBText
        Left = 846
        Top = 112
        Width = 43
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        DataField = 'COTIZACION'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel3: TJvLabel
        Left = 788
        Top = 85
        Width = 46
        Height = 26
        Hint = 
          'Lote que se genera desde la Cobranza de T.de Credito de los Abon' +
          'os'
        Caption = 'Moneda Alterntiva'
        ParentShowHint = False
        ShadowPos = spLeftTop
        ShowHint = True
        Transparent = True
        WordWrap = True
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 46
        Width = 385
        Height = 43
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object DBText1: TDBText
          Left = 269
          Top = -1
          Width = 97
          Height = 16
          Cursor = crHandPoint
          Alignment = taRightJustify
          DataField = 'CUIT'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = GravarNroInternoExecute
        end
        object DBText2: TDBText
          Left = 83
          Top = -1
          Width = 97
          Height = 16
          Cursor = crHandPoint
          Alignment = taRightJustify
          DataField = 'MUESTRAIVA'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnClick = GravarNroInternoExecute
        end
        object dbeNombre: TDBEdit
          Left = 78
          Top = 14
          Width = 286
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'NOMBRE'
          DataSource = DSBase
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object RxDBECodigo: TJvDBComboEdit
          Left = 7
          Top = 14
          Width = 66
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          ClickKey = 16397
          DataField = 'CODIGO'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E0000002800000009000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FF8000002480000024800000FF800000}
          ButtonWidth = 14
          ParentFont = False
          TabOrder = 0
          OnButtonClick = BuscarClienteExecute
          OnKeyDown = RxDBECodigoKeyDown
        end
      end
      object dbeSuc: TDBEdit
        Left = 666
        Top = 23
        Width = 39
        Height = 24
        DataField = 'SUCRC'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbeNumero: TDBEdit
        Left = 710
        Top = 23
        Width = 75
        Height = 24
        DataField = 'NUMERORC'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object dbeLetra: TDBEdit
        Left = 640
        Top = 23
        Width = 22
        Height = 24
        TabStop = False
        DataField = 'LETRARC'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object dbeSucursal: TDBEdit
        Left = 146
        Top = 23
        Width = 146
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 14
      end
      object BitBtn2: TBitBtn
        Left = 720
        Top = 103
        Width = 26
        Height = 23
        Hint = 'Aplicaci'#243'n autom'#225'tica de los pagos'
        Action = AplicaAuto
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
        TabOrder = 13
      end
      object dbeMuestraVendedor: TDBEdit
        Left = 463
        Top = 60
        Width = 214
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRAVENDEDOR'
        DataSource = DSBase
        Enabled = False
        TabOrder = 9
      end
      object dbchkCPTE_MANUAL: TDBCheckBox
        Left = 535
        Top = 10
        Width = 74
        Height = 17
        Caption = 'Manual'
        DataField = 'CPBTE_MANUAL'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = dbchkCPTE_MANUALClick
      end
      object dbeDscto: TDBEdit
        Left = 496
        Top = 105
        Width = 83
        Height = 21
        TabStop = False
        Color = clWhite
        DataField = 'IMPORTE_DSCTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnEnter = dbeDsctoEnter
      end
      object dbePorcentaje_DSCTO: TDBEdit
        Left = 425
        Top = 105
        Width = 69
        Height = 21
        TabStop = False
        Color = clWhite
        DataField = 'PORCENTAJE_DSCTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnEnter = dbePorcentaje_DSCTOEnter
      end
      object dbtTotalNeto: TDBEdit
        Left = 305
        Top = 105
        Width = 119
        Height = 21
        Color = clWhite
        DataField = 'TOTAL_NETO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnEnter = dbtTotalNetoEnter
        OnExit = dbtTotalNetoExit
      end
      object pnTotal: TPanel
        Left = 579
        Top = 84
        Width = 139
        Height = 45
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        Enabled = False
        ParentBackground = False
        TabOrder = 15
        object RxLabel2: TJvLabel
          Left = 2
          Top = 4
          Width = 64
          Height = 13
          Caption = 'Importe Total'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbeTotal: TDBEdit
          Left = 1
          Top = 21
          Width = 132
          Height = 21
          Color = clInfoBk
          DataField = 'TOTAL'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object RxDBESucursal: TJvDBComboEdit
        Left = 103
        Top = 23
        Width = 40
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        ClickKey = 16397
        DataField = 'SUCURSAL'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 14
        TabOrder = 1
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxDBESucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 293
        Top = 23
        Width = 47
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
        TabOrder = 2
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object rxcVendedor: TJvDBComboEdit
        Left = 394
        Top = 60
        Width = 65
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        ClickKey = 16397
        DataField = 'VENDEDOR'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 14
        TabOrder = 8
        OnButtonClick = BuscarCobradorExecute
        OnKeyDown = rxcVendedorKeyDown
      end
      object dbeFecha: TJvDBDateEdit
        Left = 13
        Top = 23
        Width = 88
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA'
        DataSource = DSBase
        CheckOnExit = True
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
        OnExit = dbeFechaExit
      end
      object pnSaldo: TPanel
        Left = 7
        Top = 91
        Width = 125
        Height = 38
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        Enabled = False
        ParentBackground = False
        TabOrder = 16
        object RxLabel1: TJvLabel
          Left = 6
          Top = 0
          Width = 60
          Height = 13
          Caption = 'Saldo a Cta.'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbeSaldo: TDBEdit
          Left = 6
          Top = 14
          Width = 105
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'SALDO_APLICAR'
          DataSource = DSBase
          ReadOnly = True
          TabOrder = 0
        end
      end
      object chbModo: TCheckBox
        Left = 787
        Top = 22
        Width = 80
        Height = 30
        Caption = 'Suma Pendiente'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 17
        WordWrap = True
        OnClick = chbModoClick
      end
    end
    object pcDetalle: TPageControl
      Left = 0
      Top = 132
      Width = 898
      Height = 349
      ActivePage = Pag2
      Align = alTop
      HotTrack = True
      TabOrder = 1
      TabPosition = tpBottom
      OnChange = pcDetalleChange
      OnEnter = pcDetalleEnter
      object Pag1: TTabSheet
        Caption = '&Aplicaciones'
        object lbObs: TLabel
          Left = 3
          Top = 219
          Width = 99
          Height = 16
          Caption = 'Observaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object lbTotalAplicado: TLabel
          Left = 42
          Top = 168
          Width = 103
          Height = 16
          Caption = 'Total Aplicado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtCuit: TDBText
          Left = 134
          Top = 195
          Width = 125
          Height = 18
          DataField = 'CUIT'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dbtGrupo: TDBText
          Left = 271
          Top = 167
          Width = 38
          Height = 18
          DataField = 'MUESTRAGRUPO'
          DataSource = DatosRecibos.DSMovCCVta
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object dbtMUESTRAIVA: TDBText
          Left = 3
          Top = 195
          Width = 125
          Height = 18
          DataField = 'MUESTRAIVA'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object spBorrarAplicaciones: TSpeedButton
          Left = 3
          Top = 166
          Width = 19
          Height = 23
          Action = BorrarTodasAplicaciones
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FF0732DE0732DEFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FF0732DE
            0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732
            DE0732DEFF00FFFF00FFFF00FF0732DE0732DD0732DE0732DEFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF
            0534ED0732DF0732DE0732DEFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DDFF
            00FF0732DD0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0732DD0633E60633E60633E90732DCFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0633E307
            32E30534EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0732DD0534ED0533E90434EF0434F5FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F40534EF0533EBFF
            00FFFF00FF0434F40335F8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0335FC0534EF0434F8FF00FFFF00FFFF00FFFF00FF0335FC0335FBFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FCFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB
            0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF0335FBFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
        end
        object dbtRecargo: TDBText
          Left = 507
          Top = 269
          Width = 83
          Height = 18
          DataField = 'IMPORTE_RECARGO'
          DataSource = DSBase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 369
          Top = 268
          Width = 117
          Height = 16
          Caption = 'Importe Recargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label54: TLabel
          Left = 4
          Top = 305
          Width = 26
          Height = 13
          Caption = 'Obra:'
          Transparent = True
        end
        object DBText42: TDBText
          Left = 36
          Top = 305
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
        object dbgAplicaciones: TDBGrid
          Left = 1
          Top = 1
          Width = 249
          Height = 161
          Ctl3D = False
          DataSource = DatosRecibos.DSMovAplicaCCVta
          DrawingStyle = gdsClassic
          FixedColor = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = pmAplicaciones
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgAplicacionesColEnter
          OnDblClick = dbgAplicacionesDblClick
          OnDragDrop = dbgAplicacionesDragDrop
          OnDragOver = dbgAplicacionesDragOver
          OnKeyDown = dbgAplicacionesKeyDown
          Columns = <
            item
              Color = 16776176
              Expanded = False
              FieldName = 'APLICA_CLASECPBTE'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 38
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'APLICA_NROCPBTE'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Numero'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 73
              Visible = True
            end>
        end
        object dbeObs1: TDBEdit
          Left = 1
          Top = 241
          Width = 345
          Height = 21
          DataField = 'OBSERVACION1'
          DataSource = DSBase
          TabOrder = 1
        end
        object dbeObs2: TDBEdit
          Left = 1
          Top = 267
          Width = 345
          Height = 21
          DataField = 'OBSERVACION2'
          DataSource = DSBase
          TabOrder = 2
        end
        object dbgMovCC: TDBGrid
          Left = 256
          Top = 0
          Width = 603
          Height = 161
          Ctl3D = False
          DataSource = DatosRecibos.DSMovCCVta
          DefaultDrawing = False
          DragMode = dmAutomatic
          DrawingStyle = gdsClassic
          FixedColor = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = pmMovCC
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgMovCCDrawColumnCell
          OnDblClick = dbgMovCCDblClick
          OnKeyDown = dbgMovCCKeyDown
          OnMouseMove = dbgMovCCMouseMove
          OnTitleClick = dbgMovCCTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 27
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Numero'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHAVTA'
              Title.Alignment = taCenter
              Title.Caption = 'F.de Emisi'#243'n'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHAVTO'
              Title.Alignment = taCenter
              Title.Caption = 'F.Vencimiento'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'DEBE'
              Title.Alignment = taCenter
              Title.Caption = ' $ Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRAMORA'
              Title.Alignment = taCenter
              Title.Caption = '#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRAPUNITORIO'
              Title.Alignment = taCenter
              Title.Caption = 'Punitorio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object dbgMovACta: TJvDBGrid
          Left = 474
          Top = 167
          Width = 383
          Height = 95
          DataSource = DatosRecibos.DSMovACta
          DrawingStyle = gdsClassic
          FixedColor = clBlue
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgMovACtaDblClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tp'
              Title.Color = clNavy
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
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cl'
              Title.Color = clNavy
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Title.Color = clNavy
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Color = clNavy
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Title.Color = clNavy
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 67
              Visible = True
            end>
        end
        object btImputaciones: TBitBtn
          Left = 741
          Top = 268
          Width = 110
          Height = 25
          Action = Imputaciones
          Caption = 'Imputaciones'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000004600000041
            000000380000013601000234020002300200032A03000424040005210500071E
            0700081A0800091609000B110B000D0D0D000E0E0E000F0F0F00101010001111
            1100121212001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            310032323200333333003A34300041342E0047352C00523627005B3623006436
            1F006B361B0071361800773615007F35100085350D008C340800913405009433
            03009533020096330100973301009633010094340100913501008C3701008539
            02007C3C0200753E02006D4102006943020065440100604601005B5108005559
            0D00506011004B65130046691400486B13004F6A110056680D005E630700675D
            00006E5E00007B600000866100009062000099630000A1640000A7650000AF65
            0000B5660000BD660000C3660000C6660000C9660000CA660000CA660000CB66
            0000CB660000CB660100CB660100CB660100CB660100CB660100CB660100CB66
            0100CB660100CB660100CB660100CB650200CA640300CA630400C9610600C95F
            0900C85D0E00C7591300C6561B00C4512600C24D3400BF4A4300BB4A5000B74C
            5F00B1526B00AA5A7800A3657E009B718500907C850087878700888888008989
            89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
            9100929292009393930094949400959595009696960097979700989898009999
            99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
            A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
            A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
            B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
            B900BABABA00BFAFBF00CE88CE00E743E700F618F600FC07FC00FE02FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE0FFD00FE2BFC00FE59FA00FE86F800FEA6
            F700FEBCF600FED0F500FEDFF500FEEAF500FEF3F600FEF7F600FEF9F600FEFA
            F700FEFAF600FEFAF500FEF9F300FEF6EC00FEF4E800FEF2E300FEF0DF00FEEF
            DD00FEEDDA00FEECD700FEEDD800FEEDD900FEEDD800FEEDD800D3D3D3D3D344
            FBFBFB44D3D3D3D3D3D3D3D3D3D3D344FBFBF944D3D3D3D3D3D3D3D3D3D3D344
            F9F7F644D3D3D3D3D3D3D3D3D3D3D344F6F5F444D3D3D3D3D3D3D3D3D3D3D344
            F4F3F144D3D3D3D3D3D3D3D3D3D3D37171717171D3D3D3D3D3D3D3D3D3D3D3D3
            D3D3D3D3D3D3D3D3D3D3D3D3D3D3D30000000000D3D3D3D3D3D3D3D3D3D3D3D3
            008700D3D3D3D3D3D3D37171717171D3D300D3D37171717171D371FBFBFB44D3
            D3D3D3D344FBFBFB71D371FBFBF944D3D3D3D3D344FBFBF971D371F9F7F644D3
            D3D3D3D344F9F7F671D371F6F5F444D3D3D3D3D344F6F5F471D371F4F3F144D3
            D3D3D3D344F4F3F171D371F1F1F144D3D3D3D3D344F1F1F171D3}
          TabOrder = 5
        end
        object pnAplicado: TPanel
          Left = 148
          Top = 164
          Width = 106
          Height = 25
          Enabled = False
          TabOrder = 6
          object ceTotalAplicaciones: TJvCalcEdit
            Left = 5
            Top = 2
            Width = 97
            Height = 21
            DisplayFormat = ',0.00'
            ImageKind = ikCustom
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
          end
        end
      end
      object Pag2: TTabSheet
        Caption = '&Valores'
        ImageIndex = 2
        inline FrameMovValoresIngreso1: TFrameMovValoresIngreso
          Left = 0
          Top = 0
          Width = 890
          Height = 313
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
          ExplicitWidth = 890
          ExplicitHeight = 313
          inherited lbTotalValores: TLabel
            Left = 167
            Top = 246
            Height = 13
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 167
            ExplicitTop = 246
            ExplicitHeight = 13
          end
          inherited Label25: TLabel
            Left = 12
            Top = 246
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 12
            ExplicitTop = 246
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
            Left = 12
            Top = 261
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 12
            ExplicitTop = 261
          end
          inherited lbResto: TLabel
            Left = 167
            Top = 261
            Height = 13
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 167
            ExplicitTop = 261
            ExplicitHeight = 13
          end
          inherited lbAvisoChe3: TLabel
            Left = 242
            Top = 251
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 242
            ExplicitTop = 251
          end
          inherited dbgMovimientos: TDBGrid
            Left = 5
            Height = 183
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            ParentFont = False
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
          end
          inherited pcValores: TPageControl
            Left = 336
            Width = 529
            Height = 245
            ActivePage = FrameMovValoresIngreso1.tsCheques
            ExplicitLeft = 336
            ExplicitWidth = 529
            ExplicitHeight = 245
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
              inherited BitBtn7: TBitBtn
                DoubleBuffered = True
              end
              inherited BitBtn1: TBitBtn
                DoubleBuffered = True
              end
            end
            inherited tsChe3: TTabSheet
              ExplicitTop = 24
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
              inherited BitBtn2: TBitBtn
                DoubleBuffered = True
              end
              inherited BitBtn3: TBitBtn
                DoubleBuffered = True
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
                StyleElements = [seFont, seClient, seBorder]
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
                inherited BitBtn5: TBitBtn
                  DoubleBuffered = True
                end
                inherited BitBtn6: TBitBtn
                  DoubleBuffered = True
                end
                inherited cbTCredito: TJvDBComboEdit
                  Height = 21
                  StyleElements = [seFont, seClient, seBorder]
                  ButtonWidth = 16
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
              inherited BitBtn4: TBitBtn
                DoubleBuffered = True
              end
              inherited BitBtn8: TBitBtn
                DoubleBuffered = True
              end
              inherited ceCtaBco: TJvDBComboEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ButtonWidth = 16
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
              ExplicitWidth = 521
              ExplicitHeight = 217
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
                Left = 164
                Top = 183
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 164
                ExplicitTop = 183
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
              inherited btCancel: TBitBtn
                DoubleBuffered = True
              end
              inherited btPost: TBitBtn
                DoubleBuffered = True
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
              inherited BitBtn9: TBitBtn
                DoubleBuffered = True
              end
              inherited BitBtn10: TBitBtn
                DoubleBuffered = True
              end
              inherited rcdcIdCtaBcoDebito: TJvDBComboEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ButtonWidth = 16
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
              inherited btCancelValores: TBitBtn
                DoubleBuffered = True
              end
              inherited btOkValores: TBitBtn
                DoubleBuffered = True
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
              inherited BitBtn11: TBitBtn
                DoubleBuffered = True
              end
              inherited BitBtn12: TBitBtn
                DoubleBuffered = True
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
          inherited DSPChe3: TDataSetProvider
            Left = 238
            Top = 208
          end
          inherited DSPMovEfectivo: TDataSetProvider
            Left = 134
          end
          inherited IBGId_Che3: TIBGenerator
            Left = 432
          end
          inherited ActionList1: TActionList
            Left = 648
            Top = 40
          end
          inherited DSPTransBco: TDataSetProvider
            Left = 216
            Top = 141
          end
          inherited DSPDebitos: TDataSetProvider
            Left = 186
            Top = 109
          end
          inherited DSDebitos: TDataSource
            Left = 120
            Top = 240
          end
          inherited QDebitos: TFDQuery
            Left = 224
            Top = 240
          end
          inherited CDSDebitos: TClientDataSet
            Left = 294
            Top = 256
          end
          inherited QTransBco: TFDQuery
            Left = 192
          end
          inherited QChe3: TFDQuery
            Left = 196
          end
          inherited QMovEfectivo: TFDQuery
            Left = 204
          end
          inherited CDSCajaMov: TClientDataSet
            AfterPost = FrameMovValoresIngreso1CDSCajaMovAfterPost
            BeforeDelete = FrameMovValoresIngreso1CDSCajaMovBeforeDelete
            AfterDelete = FrameMovValoresIngreso1CDSCajaMovAfterDelete
          end
          inherited DSCajaMov: TDataSource
            Left = 226
            Top = 312
          end
          inherited CDSBuscaBanco: TClientDataSet
            Top = 208
          end
          inherited CDSBuscaCajaCab: TClientDataSet
            Left = 560
            Top = 136
          end
          inherited CDSCompAjuste: TClientDataSet
            Left = 792
            Top = 216
          end
          inherited ComBuscadorCaja: TComBuscador
            Left = 609
            Top = 172
          end
          inherited QCoeficienteTC: TFDQuery
            Left = 816
            Top = 128
          end
          inherited QCajaCab: TFDQuery
            Top = 208
          end
          inherited PopupMenu1: TPopupMenu
            Left = 152
            Top = 176
            inherited ImportarCheques1: TMenuItem
              OnClick = FrameMovValoresIngreso1ImportarCheques1Click
            end
          end
        end
      end
      object Pag3: TTabSheet
        Caption = '&Retenciones'
        ImageIndex = 2
        object Label1: TLabel
          Left = 469
          Top = 248
          Width = 104
          Height = 16
          Caption = 'Total Retenido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ceTotalRetenciones: TJvCalcEdit
          Left = 579
          Top = 246
          Width = 97
          Height = 21
          DisplayFormat = ',0.00'
          Enabled = False
          ImageKind = ikCustom
          ShowButton = False
          TabOrder = 0
          DisabledTextColor = clBlack
          DecimalPlacesAlwaysShown = False
        end
        object dbgRetenciones: TJvDBGrid
          Left = 2
          Top = 16
          Width = 707
          Height = 209
          DataSource = DatosRecibos.DSRetenciones
          DrawingStyle = gdsGradient
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = dbgRetencionesCellClick
          OnKeyPress = dbgRetencionesKeyPress
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          ColumnResize = gcrNone
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Alignment = taLeftJustify
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'ID_RETENCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'JURIDICCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHA_RETENCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 86
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
              Width = 209
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRO_RETENCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 166
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 82
              Visible = True
            end>
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 506
    Width = 898
    Height = 27
    ButtonHeight = 26
    ButtonWidth = 23
    Images = ImageListDos
    ExplicitTop = 506
    ExplicitWidth = 898
    ExplicitHeight = 27
    inherited btConfirma: TBitBtn
      Width = 73
      Height = 26
      DoubleBuffered = True
      ExplicitWidth = 73
      ExplicitHeight = 26
    end
    inherited btNuevo: TBitBtn
      Left = 75
      Height = 26
      DoubleBuffered = True
      ExplicitLeft = 75
      ExplicitHeight = 26
    end
    inherited btCancelar: TBitBtn
      Left = 150
      Width = 73
      Height = 26
      DoubleBuffered = True
      ExplicitLeft = 150
      ExplicitWidth = 73
      ExplicitHeight = 26
    end
    inherited btModificar: TBitBtn
      Left = 223
      Height = 26
      DoubleBuffered = True
      ExplicitLeft = 223
      ExplicitHeight = 26
    end
    inherited Pr: TSpeedButton
      Left = 298
      Width = 14
      Height = 26
      ExplicitLeft = 298
      ExplicitWidth = 14
      ExplicitHeight = 26
    end
    inherited btBuscar: TBitBtn
      Left = 312
      Width = 74
      Height = 26
      DoubleBuffered = True
      ExplicitLeft = 312
      ExplicitWidth = 74
      ExplicitHeight = 26
    end
    inherited Ne: TSpeedButton
      Left = 386
      Width = 16
      Height = 26
      ExplicitLeft = 386
      ExplicitWidth = 16
      ExplicitHeight = 26
    end
    inherited btBorrar: TBitBtn
      Left = 402
      Width = 73
      Height = 26
      DoubleBuffered = True
      ExplicitLeft = 402
      ExplicitWidth = 73
      ExplicitHeight = 26
    end
    inherited btSalir: TBitBtn
      Left = 475
      Height = 26
      DoubleBuffered = True
      TabOrder = 8
      ExplicitLeft = 475
      ExplicitHeight = 26
    end
    object sbRefresh: TSpeedButton
      Left = 550
      Top = 0
      Width = 24
      Height = 26
      Hint = 'Recalcular Saldos'
      Action = Recalcular
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
    end
    object BitBtn1: TBitBtn
      Left = 574
      Top = 0
      Width = 70
      Height = 26
      Action = BuscarPendientes
      Caption = '&Fac.CC'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333333FFFFF
        FFF00000333333333333333777773333333BFBFBFBF0FFF03333333333333337
        FFF73333333FFFFFFF000000333333333333337777773333333BFBFBF0FBFBFB
        333333333FFFF733FFFF3333333F00000FF000003333333377777FF777773333
        333B0FFF0000FFF0333333337FFF7777FFF73333333F00000FF000003333333F
        777773F777773333330BFBFBF0FBFBFB3333337FF333373FFFFF33333010FFFF
        FF00000033333777FF3333777777333330170BFBFBF0FFF0333337777FF33337
        FFF73333301170FFFFF0000033333777778F3337777333330711190BFBFBFBFB
        333377777378F3333333333308819990FFFFFFFF3333733733378F3333333330
        88FF9999033333333337333333FF7333333333088FFFF0003333333333733333
        F777333333333088FFF003333333333337333337733333333333088FFF033333
        333333337F33337333333333333308FFF09333333333333378F3373333333333
        333330FF0933333333333333378F733333333333333333003333333333333333
        33773333333333333333}
      NumGlyphs = 2
      TabOrder = 6
    end
    object btImprimir: TBitBtn
      Left = 644
      Top = 0
      Width = 68
      Height = 26
      Action = Imprimir
      Caption = '&Imprimir'
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
    object spEnviarCorreo: TSpeedButton
      Left = 712
      Top = 0
      Width = 26
      Height = 26
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
    object spBuscaPorInterno: TSpeedButton
      Left = 738
      Top = 0
      Width = 24
      Height = 26
      Hint = 'Buscar Recibo Por Nro.Interno'
      Action = BuscarPorInterno
      Flat = True
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
    end
    object sbVerCtaCte: TSpeedButton
      Left = 762
      Top = 0
      Width = 24
      Height = 26
      Hint = 'Ver Cuenta Corriente'
      Action = VerCtaCte
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
    object ToolButton1: TToolButton
      Left = 786
      Top = 0
      Width = 9
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object spCotizacion: TToolButton
      Left = 795
      Top = 0
      Hint = 'Cotizacion de Moneda'
      Action = Cotizacion
      ImageIndex = 10
    end
    object spRecibosTemporales: TSpeedButton
      Left = 818
      Top = 0
      Width = 30
      Height = 26
      Action = RcTemporales
      ImageIndex = 11
      Images = ImageListDos
      Flat = True
    end
  end
  inherited Panel1: TPanel
    Top = 533
    Width = 898
    StyleElements = [seFont, seClient, seBorder]
    OnDblClick = Panel1DblClick
    ExplicitTop = 533
    ExplicitWidth = 898
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 809
      PopupMenu = pmOtrasAcciones
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 809
    end
  end
  object pnl1: TPanel [3]
    Left = 150
    Top = 127
    Width = 149
    Height = 21
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 3
    OnDblClick = pnl1DblClick
    object dbtNC_NROCOMPROB: TDBText
      Left = 25
      Top = 2
      Width = 114
      Height = 16
      Cursor = crHandPoint
      DataField = 'MUESTRANCREDITO'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = dbtNC_NROCOMPROBClick
    end
    object dbtNc: TDBText
      Left = 1
      Top = 2
      Width = 19
      Height = 17
      DataField = 'NC_TIPOCPBTE'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = dbtNcClick
    end
  end
  object ToolBar2: TToolBar [4]
    Left = 0
    Top = 0
    Width = 898
    Height = 22
    ButtonHeight = 21
    ButtonWidth = 80
    Caption = 'ToolBar2'
    Color = clGradientInactiveCaption
    DrawingStyle = dsGradient
    Menu = MainMenu
    ParentColor = False
    ShowCaptions = True
    TabOrder = 4
  end
  object dblMoneda: TDBLookupComboBox [5]
    Left = 838
    Top = 107
    Width = 52
    Height = 21
    DataField = 'MONEDA_ALTERNATIVA'
    DataSource = DSBase
    KeyField = 'ID'
    ListField = 'SIGNO'
    ListSource = DatosRecibos.DSLstMonedas
    TabOrder = 5
    TabStop = False
    OnClick = dblMonedaClick
  end
  inherited ActionList1: TActionList
    Left = 384
    Top = 56
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarPendientes: TAction
      Caption = 'BuscarPendientes'
      OnExecute = BuscarPendientesExecute
    end
    object BuscarRetencion: TAction
      Caption = 'BuscarRetencion'
      OnExecute = BuscarRetencionExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object Recalcular: TAction
      OnExecute = RecalcularExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object BorrarAplicacion: TAction
      Caption = 'Borrar Aplicacion'
      ShortCut = 49217
      OnExecute = BorrarAplicacionExecute
    end
    object AplicaAuto: TAction
      OnExecute = AplicaAutoExecute
    end
    object EnviarCorreo: TAction
      OnExecute = EnviarCorreoExecute
    end
    object BuscarCobrador: TAction
      Caption = 'BuscarCobrador'
      OnExecute = BuscarCobradorExecute
    end
    object Desaplicar: TAction
      Caption = 'Desaplicar'
      ShortCut = 16452
      OnExecute = DesaplicarExecute
    end
    object CambiarCodigoFecha: TAction
      ShortCut = 49219
      OnExecute = CambiarCodigoFechaExecute
    end
    object Imputaciones: TAction
      Caption = 'Imputaciones'
      OnExecute = ImputacionesExecute
    end
    object TraerSaldoActa: TAction
      Caption = 'TraerSaldoActa'
      OnExecute = TraerSaldoActaExecute
    end
    object IniciarFoco: TAction
      Caption = 'Inicar Foco en'
      OnExecute = IniciarFocoExecute
    end
    object BorrarUnaAplicacion: TAction
      Caption = 'Borrar una Aplicaci'#243'n'
      OnExecute = BorrarUnaAplicacionExecute
    end
    object BorrarTodasAplicaciones: TAction
      Hint = 'Borrar las Aplicaciones'
      OnExecute = BorrarTodasAplicacionesExecute
    end
    object CambiarClaseCpbte: TAction
      Caption = 'CambiarClaseCpbte'
      ShortCut = 16474
      OnExecute = CambiarClaseCpbteExecute
    end
    object RecalculoFrio: TAction
      Caption = 'Recalculo las Aplicaciones (Frio)'
      ShortCut = 49234
      OnExecute = RecalculoFrioExecute
    end
    object GravarNumeroOperacion: TAction
      Caption = 'Gravar Numero de Operacion'
      ShortCut = 16507
      OnExecute = GravarNumeroOperacionExecute
    end
    object GravarNroInterno: TAction
      Caption = 'Gravar Nro Interno'
      ShortCut = 16506
      OnExecute = GravarNroInternoExecute
    end
    object BuscarPorInterno: TAction
      ImageIndex = 0
      OnExecute = BuscarPorInternoExecute
    end
    object BuscarPorReferencia: TAction
      Caption = 'Buscar Por Referencia'
      ShortCut = 32781
      OnExecute = BuscarPorReferenciaExecute
    end
    object IngresarEfectivo: TAction
      Caption = 'Ingresar Efectivo'
      OnExecute = IngresarEfectivoExecute
    end
    object VerComprobante: TAction
      Caption = 'Ver Comprobante'
      OnExecute = VerComprobanteExecute
    end
    object RevisionValoresIngresados: TAction
      Caption = 'Revision de Valores Ingresados'
      OnExecute = RevisionValoresIngresadosExecute
    end
    object VerCtaCte: TAction
      ImageIndex = 11
      OnExecute = VerCtaCteExecute
    end
    object RcTemporales: TAction
      Hint = 'Recibos Temporales App'
      ImageIndex = 10
      OnExecute = RcTemporalesExecute
    end
    object AsignarObra: TAction
      Caption = 'Asignar Obra'
      ShortCut = 16463
      OnExecute = AsignarObraExecute
    end
    object Cotizacion: TAction
      OnExecute = CotizacionExecute
    end
    object ExportarXML: TAction
      Caption = 'ExportarXML'
      OnExecute = ExportarXMLExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosRecibos.CDSRecibo
    Left = 368
    Top = 208
  end
  inherited ImageList1: TImageList
    Left = 680
    Top = 144
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
      0000000000000000000000000000000000000000000020202000606060006060
      6000606060006060600060606000606060006060600060606000606060006060
      6000606060006060600000000000000000000000000000000000C8B36EC8F1E7
      C7F1F1E7C3F1F1E7C4F1F1E7C3F1F1E7C4F1F1E7C4F1F1E7C4F1F1E7C4F1F1E7
      C4F1F2E9C7F2AB9245AB00000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000040404000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFDFDF0000000000000000000000000000000000ECDEB9ECF6E5
      D4FFF1D9C5FFFCF0DFFFEED4BEFFFAEBDAFFFBEDDBFFF6E1CDFFFFF4E3FFF3DD
      C8FFFFF4E5FFCCBA81CC000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000040404000FFFFFF00FF7F
      7F00FF7F7F00FF7F7F00FFFFFF00BFBFFF006060DF00EFEFEF00FFFFFF006F6F
      EF009F9FDF00DFDFDF0000000000000000000000000000000000ECD9ADECE8C4
      A5FFEECFB3FFEAC7A9FFF3D8BDFFEBC8AAFFF7E0C5FFEECCAEFFFDEAD0FFE8C0
      A1FFFFEAD0FFCCB57BCC0000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000040404000FFFFFF00FF7F
      7F00FF7F7F00FF7F7F00FF7F7F00FFFFFF006F6FEF00DFDFDF00DFDFDF006F6F
      EF00DFDFDF00DFDFDF0000000000000000000000000000000000ECD39DECE8BE
      97FFE6BB94FFF0CCA6FFE8BC96FFEFC9A3FFEAC098FFEDC49CFFF5D3ACFFE2AF
      85FFFFE1B9FFCCB070CC0000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000040404000FFFFFF00FF7F
      7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FFFFFF003F3FFF006F6FEF003F3F
      FF00DFDFDF00DFDFDF0000000000000000000000000000000000ECCE90ECFEE1
      B6FFFCDCB1FFFFE1B6FFFBDAAEFFFEDEB2FFFEDDB1FFFCD9ACFFFFDCAFFFFCD6
      A8FFFFD9A9FFCCAC68CC0000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000040404000FFFFFF00FF7F
      7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FFFFFF006F6FEF006F6F
      EF00DFDFDF00DFDFDF0000000000000000000000000000000000ECCF91ECFEE2
      B8FFE0AD80FFFFE6BBFFE4B486FFF9D7ABFFF6D3A6FFE8B789FFFFE1B3FFE0A8
      78FFFFDAABFFCCAD68CC0000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000040404000FFFFFF00FF7F
      7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FFFFFF003F3F
      FF00EFEFEF00DFDFDF0000000000000000000000000000000000ECD294ECEAC1
      95FFDCA77AFFF5D6ABFFD89E70FFF9D8ACFFE3B083FFE7B688FFF0C699FFD99D
      6EFFFFDCADFFCCAE69CC00000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000040404000FFFFFF00FF7F
      7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F
      7F00FFFFFF00DFDFDF0000000000000000000000000000000000ECD195ECFCE2
      B9FFECC599FFFFE6BCFFEDC599FFFBDDB3FFF7D7ACFFF2CA9EFFFEE0B4FFEBBF
      91FFFFDEB0FFCCAE6ACC0000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000040404000FFFFFF00FF7F
      7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F7F00FF7F
      7F00FFFFFF00DFDFDF0000000000000000000000000000000000ECD295ECFEE6
      BDFFE7BC91FFFFE8BFFFEAC095FFFBDEB4FFE4B689FFE8BA8EFFF1CCA0FFE0AB
      7DFFFAD9ABFFCCAF6BCC00000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000040404000FFFFFF007F7F
      7F007F7F7F007F7F7F007F7F7F00FFFFFF00FF7F7F00FF7F7F00FF7F7F00FF7F
      7F00FFFFFF00DFDFDF0000000000000000000000000000000000ECD398ECF6DB
      B2FFD1976AFFFAE5BCFFD59E71FFF3D1A6FFD8A174FFD59C6EFFD29668FFE7BB
      8EFFE7B98AFFCCB06CCC00000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000040404000FFFFFF004040
      7F0000003F007F7F7F003F3F3F00FFFFFF00FF7F7F00FF7F7F00FF7F7F00FF7F
      7F00FFFFFF00DFDFDF0000000000000000000000000000000000ECD69CECE6BF
      96FFCD8F63FFF6DFB8FFC68355FFF5D9B0FFCF9365FFD2976AFFDDAB7FFFCF92
      64FFF0CDA1FFCCB16FCC00000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000000000040404000FFFFFF007F7F
      7F003F3F3F0000FFFF00007F7F00FFFFFF00FF7F7F00FF7F7F00FF7F7F00FF7F
      7F00FFFFFF00DFDFDF0000000000000000000000000000000000ECD7A1ECFBEB
      CAFFF6DFBCFFFFEECDFFF9E4C1FFFEEAC9FFF7E1BEFFF9E3C0FFFFEBC9FFF8DD
      B9FFFFE9C5FFCCB474CC00000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      0000000000000000000000000000000000000000000040404000FFFFFF00BFBF
      BF007F7F7F0000FFFF00007F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF009F9F
      9F007F7F7F006F6F6F0000000000000000000000000000000000ECDDABECC586
      5DFFC5875EFFF4E2C8FFCA9069FFF2DABBFFC38259FFC38157FFFDEEC9FFC583
      4AFFFCE7C2FFC3AC75CA0000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000040404000FFFFFF00BFBF
      BF007F7F7F007F0000003F000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBF
      BF00BFBFBF002020200000000000000000000000000000000000ECDFB0ECBC75
      4DFFCA936EFFDFB99AFFB16033FFEFD6BAFFC3845CFFBF7C54FFF3CF71FFFFE1
      5EFFE9D892F02A15073E000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000040404000FFFFFF00BFBF
      BF00BFBFBF00BFBFBF009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF009090
      9000202020000000000000000000000000000000000000000000ECDFB2ECE9D1
      BAFFDCB69AFFFEF9E9FFE3C2A8FFF9EEDBFFE0BEA3FFE5C7AEFFFCE9AFFFE6D6
      96EC241205360000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000040404000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF004040
      4000000000000000000000000000000000000000000000000000C8B573C8F1E6
      C0F1F1E5BDF1F1E4BBF1F1E4BBF1F1E3BBF1F1E4BDF1F1E4BFF1DBC897E32213
      0430000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000F81FF33F8001C003E007E0078001C003
      C003C0008001C003800180018001C003800100008001C003000000008001C003
      000000008001C003000080008001C0030000E0018001C0030000F0038001C003
      0000F01F8001C0038001E03F8001C0038001E03F8001C003C003C03F8003C003
      E007C07F8007C007F81FF8FF800FC00FFFFFF81FF81FF81FC007E007E007E007
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
    Top = 312
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 605
  end
  inherited ComBuscadorBase: TComBuscador
    Top = 312
  end
  inherited QBrowse2: TFDQuery
    Top = 272
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 96
    Top = 568
  end
  inherited ImageListDos: TImageList
    Left = 472
    Top = 33
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A231D8A4B3E35FB4D4036FF4D40
      36FF4D4036FF4D4036FF4D4036FF4D4036FF4D4036FF4D4036FF4D4036FF4D40
      36FF4D4036FF4D4036FF4B3E35FB29221C880000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF00000000493C33F39C8B78FFEDE3D6FFEDE3
      D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FFEDE3D6FFEDE3D6FF9C8B78FF493C33F20000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF000000002A231D8A9C8B78FFEDE3D6FFEDE3
      D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FFEDE3D6FFEDE3D6FF9C8B78FF29221C880000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF94B989FF97BA8CFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFA8CCA1FF7BA06BFF678B54FF6B8F57FF90B485FFBBDFB7FFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFF8EB383FF749963FF8BAF7EFF81A673FF5C8046FF94B889FFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFBADEB7FFBDE0BAFFBDE0BAFFB8DBB4FF62874DFF85AA78FFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBADEB7FF90B384FF648951FF60844AFFAACEA3FFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFF9C8B
      78FFFFFFFFFFFFFFFFFF9C8B78FF00000000000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFB2D5AEFF6C9058FF5D8248FF82A674FFB1D4ABFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFF88AC7BFF60844AFFB0D3AAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B
      78FFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFF8FB383FF5F834AFF95B98CFF9ABE91FF85AA78FFB4D8AFFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFB9DDB5FF80A471FF61854CFF5B8145FF6B8F57FFB6D9B1FFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFFFFFFFFFFFFFF9C8B
      78FFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF94B989FF97BA8CFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFF769C5EFF00000000000000009C8B78FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9C8B78FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF00000000000000009C8B78FFF1EEEBFFF1EE
      EBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EEEBFFF1EE
      EBFFF1EEEBFFF1EEEBFF9C8B78FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C7D6DE1938374E89383
      74E8938374E8938374E8938374E8938374E8938374E8938374E8938374E89383
      74E8938374E8938374E88C7D6DE1000000000000000000000000000000000000
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
      00000000000000000000000000000000FFEFFFFFFFFF0000FFCFF3FF80010000
      FF8FF1FF80010000FF0FF0FF80018001FE0FF07F80018001FC0FF03F80018001
      F80FF01F80018001F00FF00F80018001E00FF00F80018001F00FF01F80018001
      F80FF03F80018001FC0FF07F80018001FE0FF0FF80018001FF0FF1FF80018001
      FF8FF3FF80018001FFCFF7FFFFFF8001FFFFE007FFFF3FFFF83FE00780011FFF
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
  object frRecibo: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.733703518520000000
    ReportOptions.LastChange = 39638.733703518520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 652
    Top = 287
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBAplicaciones: TfrxDBDataset
    UserName = 'frDBAplicaciones'
    CloseDataSource = False
    DataSource = DatosRecibos.DSMovAplicaCCVta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 259
    Top = 528
  end
  object frDBMovCaja: TfrxDBDataset
    UserName = 'frDBMovCaja'
    CloseDataSource = False
    DataSource = FrameMovValoresIngreso1.DSCajaMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 253
    Top = 638
  end
  object frDBRecibo: TfrxDBDataset
    UserName = 'frDBRecibo'
    CloseDataSource = False
    DataSet = DatosRecibos.CDSRecibo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 572
    Top = 559
    FieldDefs = <
      item
        FieldName = 'ID_RC'
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
        FieldName = 'NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'CODIGO'
        FieldType = fftString
      end
      item
        FieldName = 'LETRARC'
        FieldType = fftString
      end
      item
        FieldName = 'SUCRC'
        FieldType = fftString
      end
      item
        FieldName = 'NUMERORC'
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
        FieldName = 'FECHA'
      end
      item
        FieldName = 'ANULADO'
        FieldType = fftString
      end
      item
        FieldName = 'VENDEDOR'
        FieldType = fftString
      end
      item
        FieldName = 'SALDO_APLICAR'
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
        FieldName = 'SUCURSAL'
      end
      item
        FieldName = 'ZONA'
      end
      item
        FieldName = 'TOTAL_NETO'
      end
      item
        FieldName = 'PORCENTAJE_DSCTO'
      end
      item
        FieldName = 'IMPORTE_DSCTO'
      end
      item
        FieldName = 'TOTAL'
      end
      item
        FieldName = 'USUARIO'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'FECHA_HORA'
      end
      item
        FieldName = 'CPBTE_MANUAL'
        FieldType = fftString
      end
      item
        FieldName = 'NC_ID'
      end
      item
        FieldName = 'NC_TIPOCPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'NC_CLASECPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'NC_NROCOMPROB'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'N_OPERACION2'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'MUESTRACOMPROBANTE'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRAIVA'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'NUMERO_OPERACION'
        FieldType = fftString
      end
      item
        FieldName = 'NRO_RECIBO_INTERMO'
      end
      item
        FieldName = 'ID_REC_CUPON'
      end
      item
        FieldName = 'IMPORTE_RECARGO'
      end
      item
        FieldName = 'LOTE_COBRO_TC'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRANCREDITO'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'MUESTRACHEQUES'
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
        FieldName = 'MONEDA_ALTERNATIVA'
      end
      item
        FieldName = 'COTIZACION'
      end
      item
        FieldName = 'MUESTRASIGNOMONEDA'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTANCIMPORTE'
      end>
  end
  object frDBDRetenciones: TfrxDBDataset
    UserName = 'frDBDRetenciones'
    CloseDataSource = False
    DataSource = DatosRecibos.DSRetenciones
    BCDToCurrency = False
    DataSetOptions = []
    Left = 606
    Top = 455
  end
  object fDBrEmpresa: TfrxDBDataset
    UserName = 'fDBrEmpresa'
    CloseDataSource = False
    DataSet = DatosRecibos.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 404
    Top = 516
    FieldDefs = <
      item
        FieldName = 'Nombre'
        FieldAlias = 'Nombre'
      end
      item
        FieldName = 'Actividad'
        FieldAlias = 'Actividad'
      end
      item
        FieldName = 'Direccion'
        FieldAlias = 'Direccion'
      end
      item
        FieldName = 'Localidad'
        FieldAlias = 'Localidad'
      end
      item
        FieldName = 'Correo'
        FieldAlias = 'Correo'
      end
      item
        FieldName = 'Telefono1'
        FieldAlias = 'Telefono1'
      end
      item
        FieldName = 'Telefono2'
        FieldAlias = 'Telefono2'
      end
      item
        FieldName = 'Logo'
        FieldAlias = 'Logo'
      end
      item
        FieldName = 'Cuit'
        FieldAlias = 'Cuit'
      end
      item
        FieldName = 'PUNITORIOS'
        FieldAlias = 'PUNITORIOS'
      end
      item
        FieldName = 'PROVINCIA'
        FieldAlias = 'PROVINCIA'
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
        FieldName = 'NOMBRE_FANTASIA'
        FieldAlias = 'NOMBRE_FANTASIA'
      end
      item
        FieldName = 'CODIGO_COT'
        FieldAlias = 'CODIGO_COT'
      end>
  end
  object frDBEfectivo: TfrxDBDataset
    UserName = 'frDBEfectivo'
    CloseDataSource = False
    DataSource = FrameMovValoresIngreso1.DSMovEfectivo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 168
    Top = 520
  end
  object frDBChe3: TfrxDBDataset
    UserName = 'frDBChe3'
    CloseDataSource = False
    DataSource = FrameMovValoresIngreso1.DSChe3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 256
    Top = 584
  end
  object frDBTx: TfrxDBDataset
    UserName = 'frDBTx'
    CloseDataSource = False
    DataSource = FrameMovValoresIngreso1.DSTransBco
    BCDToCurrency = False
    DataSetOptions = []
    Left = 168
    Top = 584
  end
  object frDBTC: TfrxDBDataset
    UserName = 'frDBTC'
    CloseDataSource = False
    DataSource = FrameMovValoresIngreso1.DSMovTCredito
    BCDToCurrency = False
    DataSetOptions = []
    Left = 400
    Top = 576
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
    Left = 656
    Top = 600
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
    Left = 696
    Top = 584
  end
  object pmAplicaciones: TPopupMenu
    Left = 192
    Top = 48
    object BorrarAplicacin1: TMenuItem
      Caption = 'Borrar una Aplicaci'#243'n'
      OnClick = BorrarAplicacin1Click
    end
    object BorrarTodas1: TMenuItem
      Caption = 'Borrar Todas'
      Hint = 'Borrar las Aplicaciones'
      OnClick = BorrarTodas1Click
    end
  end
  object pmOtrasAcciones: TPopupMenu
    Left = 756
    Top = 264
    object BorrarunaAplicacin1: TMenuItem
      Action = BorrarUnaAplicacion
    end
    object BorrarTodaslasAplicaciones1: TMenuItem
      Action = BorrarTodasAplicaciones
      Caption = 'Borrar Todas las Aplicaciones'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CambiarClaseCpbte2: TMenuItem
      Action = CambiarClaseCpbte
      Caption = 'Cambiar Clase de Cpbte'
    end
    object CambiarCodigooFecha1: TMenuItem
      Action = CambiarCodigoFecha
      Caption = 'Cambiar - Codigo/Fecha/Nro.Cpbte'
    end
    object InicarFocoen1: TMenuItem
      Action = IniciarFoco
    end
    object RecalculoFrio2: TMenuItem
      Action = RecalculoFrio
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object GravarNumerodeOperacion2: TMenuItem
      Action = GravarNumeroOperacion
    end
    object GravarNroInterno1: TMenuItem
      Action = GravarNroInterno
    end
    object BuscaPorNumeroInterno1: TMenuItem
      Action = BuscarPorInterno
      Caption = 'Busca Por Numero Interno'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object BuscarPorReferencia1: TMenuItem
      Action = BuscarPorReferencia
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object IngresarEfectivo1: TMenuItem
      Action = IngresarEfectivo
    end
    object AsignarObra1: TMenuItem
      Action = AsignarObra
    end
  end
  object pmMovCC: TPopupMenu
    AutoPopup = False
    Left = 276
    Top = 304
    object VerComprobante1: TMenuItem
      Action = VerComprobante
    end
  end
  object MainMenu: TMainMenu
    Left = 796
    Top = 573
    object OtrasOpciones1: TMenuItem
      Caption = 'Otras Opciones'
      object BorrarAplicacion1: TMenuItem
        Action = BorrarUnaAplicacion
      end
      object BorrarTodasAplicaciones1: TMenuItem
        Action = BorrarTodasAplicaciones
        Caption = 'Borrar Todas las Aplicaciones'
      end
      object N5: TMenuItem
        Caption = '-'
        Hint = 'Borrar las Aplicaciones'
        OnClick = BorrarTodasAplicacionesExecute
      end
      object CambiarClaseCpbte1: TMenuItem
        Action = CambiarClaseCpbte
        Caption = 'Cambiar Clase Cpbte'
      end
      object CambiarCodigoFecha1: TMenuItem
        Action = CambiarCodigoFecha
        Caption = 'Cambiar Codigo/Fecha'
      end
      object RevisiondeValoresIngresados2: TMenuItem
        Action = RevisionValoresIngresados
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object VerMonedaAlternartiva: TMenuItem
        Caption = 'Ver en Moneda Alternativa'
        OnClick = VerMonedaAlternartivaClick
      end
    end
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosRecibos.CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 48
    Top = 248
  end
  object comBuscadorRetenciones: TComBuscador
    Data = DatosRecibos.CDSBuscaTRetencion
    Campo = 'ID_RETENCION'
    Titulo = 'Retenciones'
    rOk = False
    Left = 468
    Top = 198
  end
  object comBuscadorCobrador: TComBuscador
    Data = DatosRecibos.CDSBuscaCobrador
    Campo = 'CODIGO'
    Titulo = 'Cobradores'
    rOk = False
    Left = 540
    Top = 246
  end
  object frDBAplicacionNC: TfrxDBDataset
    UserName = 'frDBAplicacionNC'
    CloseDataSource = False
    DataSource = DatosRecibos.DSAplicacionNC
    BCDToCurrency = False
    DataSetOptions = []
    Left = 400
    Top = 632
    FieldDefs = <
      item
        FieldName = 'ID_MOV'
      end
      item
        FieldName = 'APLICA_TIPOCPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'APLICA_CLASECPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'APLICA_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'DETALLE'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'IMPORTE'
      end>
  end
end

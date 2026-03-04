inherited FormOPago_2: TFormOPago_2
  Left = 265
  Top = 93
  Caption = 'Orden de Pago'
  ClientHeight = 670
  ClientWidth = 856
  OnActivate = FormActivate
  ExplicitWidth = 874
  ExplicitHeight = 711
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Top = 22
    Width = 856
    Height = 501
    ExplicitTop = 22
    ExplicitWidth = 856
    ExplicitHeight = 501
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 856
      Height = 136
      Align = alTop
      Color = clGradientInactiveCaption
      ParentBackground = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      object dbtMuestraComprobante: TDBText
        Left = 359
        Top = 25
        Width = 138
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
      object btnSuma: TSpeedButton
        Left = 714
        Top = 105
        Width = 23
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
        OnClick = btnSumaClick
      end
      object RxLabel59: TJvLabel
        Left = 100
        Top = 6
        Width = 89
        Height = 13
        Caption = 'Sucursal de Venta'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel58: TJvLabel
        Left = 9
        Top = 6
        Width = 32
        Height = 13
        Cursor = crHandPoint
        Hint = 'Link de Configuracion de Opciones de la Orden de pago'
        Action = ConfiguraOpago
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
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
      object RxLabel60: TJvLabel
        Left = 567
        Top = 6
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 313
        Top = 9
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel8: TJvLabel
        Left = 768
        Top = 6
        Width = 29
        Height = 13
        Caption = 'Modo'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object lbGrupo: TLabel
        Left = 439
        Top = 41
        Width = 52
        Height = 13
        Caption = 'Grupo Rec'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel1: TJvLabel
        Left = 294
        Top = 89
        Width = 63
        Height = 13
        Caption = 'Importe Neto'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel2: TJvLabel
        Left = 405
        Top = 91
        Width = 41
        Height = 13
        Caption = 'Dscto.%'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel3: TJvLabel
        Left = 478
        Top = 91
        Width = 53
        Height = 13
        Caption = 'Dscto.Imp.'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object edNumeroOP: TDBText
        Left = 701
        Top = 5
        Width = 63
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
        OnClick = dbtNC_NROCOMPROBClick
      end
      object Label26: TLabel
        Left = 673
        Top = 6
        Width = 31
        Height = 13
        Caption = 'N.Op.:'
      end
      object Nro_OP: TDBText
        Left = 566
        Top = 46
        Width = 80
        Height = 16
        Cursor = crHandPoint
        DataField = 'ID_OP'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        OnClick = dbtNC_NROCOMPROBClick
      end
      object dbtCuit: TDBText
        Left = 407
        Top = 60
        Width = 94
        Height = 20
        Cursor = crHandPoint
        Hint = 'Hhacer click para Consulta ReproWeb'
        Alignment = taCenter
        Color = clScrollBar
        DataField = 'CUIT'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = onsuxt2Click
      end
      object DBText2: TDBText
        Left = 526
        Top = 23
        Width = 34
        Height = 21
        DataField = 'CLASECPBTE'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 47
        Width = 385
        Height = 43
        Caption = 'Proveedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object dbeNombre: TDBEdit
          Left = 80
          Top = 14
          Width = 286
          Height = 21
          TabStop = False
          Color = clInfoBk
          DataField = 'RAZONSOCIAL'
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
          ButtonWidth = 19
          ParentFont = False
          TabOrder = 0
          OnButtonClick = BuscarProveedorExecute
          OnKeyDown = RxDBECodigoKeyDown
        end
      end
      object dbeSuc: TDBEdit
        Left = 593
        Top = 21
        Width = 39
        Height = 24
        TabStop = False
        DataField = 'SUCOP'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbeNumero: TDBEdit
        Left = 635
        Top = 21
        Width = 75
        Height = 24
        TabStop = False
        DataField = 'NUMEROOP'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object dbeLetra: TDBEdit
        Left = 565
        Top = 21
        Width = 22
        Height = 24
        TabStop = False
        DataField = 'LETRAOP'
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
        Width = 159
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 7
      end
      object BitBtn1: TBitBtn
        Left = 681
        Top = 105
        Width = 27
        Height = 23
        Hint = 'Aplicacion Autom'#225'tica de Pagos'
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
        TabOrder = 12
      end
      object pnAvisoPadron: TPanel
        Left = 311
        Top = 0
        Width = 245
        Height = 19
        Caption = 'Proveedor en Padron de Rentas'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 13
        Visible = False
      end
      object RxDBESucursal: TJvDBComboEdit
        Left = 104
        Top = 23
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
        ButtonWidth = 19
        TabOrder = 1
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxDBESucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 314
        Top = 23
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
        ButtonWidth = 19
        TabOrder = 2
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object dbtTotalNeto: TDBEdit
        Left = 294
        Top = 108
        Width = 103
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
        TabOrder = 8
      end
      object dbePorcentaje_DSCTO: TDBEdit
        Left = 403
        Top = 108
        Width = 69
        Height = 21
        Color = clWhite
        DataField = 'DESCUENTO_PORCENTAJE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object dbeDscto: TDBEdit
        Left = 479
        Top = 108
        Width = 69
        Height = 21
        Color = clWhite
        DataField = 'DESCUENTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object pnTotal: TPanel
        Left = 562
        Top = 83
        Width = 118
        Height = 50
        BevelKind = bkTile
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 11
        object JvLabel4: TJvLabel
          Left = 2
          Top = 7
          Width = 64
          Height = 13
          Caption = 'Importe Total'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbeTotal: TDBEdit
          Left = 3
          Top = 23
          Width = 105
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
      object pnSaldo: TPanel
        Left = 7
        Top = 93
        Width = 125
        Height = 38
        Enabled = False
        TabOrder = 14
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
          Top = 15
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
      object dbeFecha: TJvDBDateEdit
        Left = 8
        Top = 24
        Width = 93
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
        ButtonWidth = 20
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
        OnExit = dbeFechaExit
      end
      object chbModo: TCheckBox
        Left = 715
        Top = 20
        Width = 93
        Height = 37
        Caption = 'Suma Pendiente'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 15
        WordWrap = True
        OnClick = chbModoClick
      end
    end
    object pcDetalle: TPageControl
      Left = 0
      Top = 136
      Width = 856
      Height = 365
      ActivePage = Pag5
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 1
      TabPosition = tpBottom
      OnChange = pcDetalleChange
      OnEnter = pcDetalleEnter
      object Pag1: TTabSheet
        Caption = '&Aplicaciones'
        object JvGradient4: TJvGradient
          Left = 0
          Top = 0
          Width = 848
          Height = 322
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Style = grVertical
          StartColor = clWhite
          EndColor = clGradientInactiveCaption
          Steps = 10000
        end
        object Label17: TLabel
          Left = 253
          Top = 228
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
        object Label2: TLabel
          Left = 48
          Top = 165
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
        object Label11: TLabel
          Left = 312
          Top = 40
          Width = 134
          Height = 13
          Caption = 'TOTAL_PAGOS_DEL_MES'
        end
        object spBorrarAplicaciones: TSpeedButton
          Left = 15
          Top = 162
          Width = 19
          Height = 25
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
        object Label54: TLabel
          Left = 3
          Top = 299
          Width = 26
          Height = 13
          Caption = 'Obra:'
          Transparent = True
        end
        object DBText42: TDBText
          Left = 35
          Top = 299
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
          Top = 0
          Width = 259
          Height = 162
          Ctl3D = False
          DataSource = DatosOPago.DSMovAplicaCCCompra
          DrawingStyle = gdsClassic
          FixedColor = clMaroon
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
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
              Width = 31
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
              Width = 108
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
              Width = 76
              Visible = True
            end>
        end
        object dbeObs1: TDBEdit
          Left = 3
          Top = 250
          Width = 345
          Height = 21
          DataField = 'OBSERVACION1'
          DataSource = DSBase
          TabOrder = 1
        end
        object dbeObs2: TDBEdit
          Left = 3
          Top = 274
          Width = 345
          Height = 21
          DataField = 'OBSERVACION2'
          DataSource = DSBase
          TabOrder = 2
        end
        object pnAvisoRetencion: TPanel
          Left = 0
          Top = 314
          Width = 848
          Height = 25
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Enabled = False
          ParentBackground = False
          ParentColor = True
          TabOrder = 5
          object Label43: TLabel
            Left = 607
            Top = 7
            Width = 99
            Height = 13
            Hint = 'Totales netos de los pagos actuales'
            Caption = 'T.IVA Acumulado'
            FocusControl = edIvaAcumulado
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object dbchRetieneGanacias: TDBCheckBox
            Left = 7
            Top = 4
            Width = 113
            Height = 17
            Caption = 'Retiene Ganacias'
            DataField = 'RETIENE_GANACIAS'
            DataSource = DSBase
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbchRetGenerada: TDBCheckBox
            Left = 126
            Top = 4
            Width = 137
            Height = 17
            Caption = 'Ret Ganacia Generada'
            DataField = 'RETENCION_GANACIA_GENERADO'
            DataSource = DSBase
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 263
            Top = 4
            Width = 145
            Height = 17
            Caption = 'Retiene Ingresos Brutos'
            DataField = 'RETIENE_IIBB'
            DataSource = DSBase
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 401
            Top = 4
            Width = 90
            Height = 17
            Caption = 'Retiene IVA'
            DataField = 'RETIENE_IVA'
            DataSource = DSBase
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object edIvaAcumulado: TDBEdit
            Left = 748
            Top = 2
            Width = 98
            Height = 21
            Align = alRight
            DataField = 'IVA_ACUMULADO'
            DataSource = DSBase
            TabOrder = 4
          end
        end
        object btImputaciones: TBitBtn
          Left = 669
          Top = 287
          Width = 106
          Height = 21
          Action = VerImputaciones
          Caption = 'Imputaciones'
          Glyph.Data = {
            36010000424D360100000000000076000000280000001E0000000C0000000100
            040000000000C000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777887777
            7777777778877777770077777008777777777777778777777700777700087777
            7777777777877777770077700008888888877777778888888800770000000000
            0087777777777777780070000000000000877777777777777800F00000000000
            008F7777777777777800FF0000000000008F77777777777778007FF00007FFFF
            FF77FF77777FFFFFF70077FF0008777777777FF7778777777700777FF0087777
            777777FF7787777777007777FFF777777777777FFF7777777700}
          NumGlyphs = 2
          TabOrder = 6
        end
        object pcMovimientosCC: TJvPageControl
          Left = 265
          Top = -3
          Width = 539
          Height = 190
          ActivePage = TabSheet1
          HotTrack = True
          MultiLine = True
          TabOrder = 7
          TabPosition = tpBottom
          TabWidth = 110
          ClientBorderWidth = 3
          ParentColor = False
          Color = clGradientInactiveCaption
          object TabSheet1: TTabSheet
            Caption = 'Cpbte.Pendientes'
            object dbgMovCC: TJvDBGrid
              Left = 0
              Top = 0
              Width = 533
              Height = 166
              Align = alClient
              Ctl3D = False
              DataSource = DatosOPago.DSMovCCCompra
              DragMode = dmAutomatic
              DrawingStyle = gdsClassic
              FixedColor = clBackground
              Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnMouseMove = dbgMovCCMouseMove
              OnTitleClick = dbgMovCCTitleClick
              TitleButtons = True
              OnTitleBtnClick = dbgMovCCTitleBtnClick
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              ReduceFlicker = False
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CLASECPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 36
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Numero'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FECHACOMPRA'
                  Title.Alignment = taCenter
                  Title.Caption = 'F.de Emisi'#243'n'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FECHAVTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'F.Venci.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SALDO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 93
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'HABER'
                  Title.Alignment = taCenter
                  Title.Caption = '$ Total'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 94
                  Visible = True
                end>
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Cta.Cte.'
            ImageIndex = 1
            object SpeedButton1: TSpeedButton
              Left = 452
              Top = 0
              Width = 23
              Height = 22
              Action = TraerCtaCte
            end
            object JvDBGrid1: TJvDBGrid
              Left = 0
              Top = 23
              Width = 533
              Height = 143
              Align = alBottom
              DataSource = DatosOPago.DSMovCC
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
                  FieldName = 'FECHACOMPRA'
                  Title.Alignment = taCenter
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
                  FieldName = 'DETALLE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 111
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DEBE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 88
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HABER'
                  Title.Alignment = taCenter
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
                  FieldName = 'SALDOCC'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 88
                  Visible = True
                end>
            end
            object desde: TJvDateEdit
              Left = 216
              Top = 0
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
              ButtonWidth = 26
              PopupColor = clBtnFace
              ShowNullDate = False
              TabOrder = 1
            end
            object hasta: TJvDateEdit
              Left = 325
              Top = 0
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
              ButtonWidth = 26
              PopupColor = clBtnFace
              ShowNullDate = False
              TabOrder = 2
            end
            object UpDown1: TUpDown
              Left = 434
              Top = 0
              Width = 16
              Height = 20
              Hint = 'Cambia el Per'#237'odo'
              Min = -1000000000
              Max = 100000000
              ParentShowHint = False
              Position = 100
              ShowHint = True
              TabOrder = 3
              OnClick = UpDown1Click
            end
          end
        end
        object ceTotalAplicaciones: TJvCalcEdit
          Left = 157
          Top = 165
          Width = 97
          Height = 21
          DisplayFormat = ',0.00'
          Enabled = False
          ImageKind = ikCustom
          ShowButton = False
          TabOrder = 3
          DisabledTextColor = clBlack
          DecimalPlacesAlwaysShown = False
        end
        object dbgMovACta: TJvDBGrid
          Left = 392
          Top = 191
          Width = 383
          Height = 94
          Ctl3D = False
          DataSource = DatosOPago.DSACta
          DrawingStyle = gdsClassic
          FixedColor = clBlue
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          TabOrder = 8
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
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tp'
              Title.Color = clNavy
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 31
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
        object pnAcumulados: TPanel
          Left = 8
          Top = 189
          Width = 244
          Height = 57
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Enabled = False
          ParentBackground = False
          ParentColor = True
          TabOrder = 4
          object Label10: TLabel
            Left = 7
            Top = 7
            Width = 116
            Height = 13
            Hint = 'Totales netos de los pagos actuales'
            Caption = 'T.Neto Aplicaciones'
            FocusControl = dbeNetoAplicaciones
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label12: TLabel
            Left = 7
            Top = 31
            Width = 118
            Height = 13
            Caption = 'T.Netos Acumulados'
            FocusControl = dbeNetosAcumulados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeNetoAplicaciones: TDBEdit
            Left = 131
            Top = 4
            Width = 97
            Height = 21
            DataField = 'TOTAL_NETO_GRAVADO'
            DataSource = DSBase
            TabOrder = 0
          end
          object dbePagosAcumulados: TDBEdit
            Left = 131
            Top = 31
            Width = 97
            Height = 21
            DataField = 'TOTAL_PAGOS_DEL_MES'
            DataSource = DSBase
            TabOrder = 1
          end
        end
      end
      object Pag2: TTabSheet
        Caption = '&Valores'
        ImageIndex = 2
        inline FrameMovValoresEgresos1: TFrameMovValoresEgresos
          Left = 0
          Top = 0
          Width = 848
          Height = 294
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
          ExplicitWidth = 848
          ExplicitHeight = 294
          inherited lbTotalValores: TLabel
            Left = 204
            Top = 242
            Width = 21
            Caption = '0.00'
            ExplicitLeft = 204
            ExplicitTop = 242
            ExplicitWidth = 21
          end
          inherited Label25: TLabel
            Left = 10
            Top = 242
            ExplicitLeft = 10
            ExplicitTop = 242
          end
          inherited lb1: TLabel
            Left = 10
            Top = 263
            ExplicitLeft = 10
            ExplicitTop = 263
          end
          inherited lbResto: TLabel
            Left = 204
            Top = 261
            ExplicitLeft = 204
            ExplicitTop = 261
          end
          inherited spLoteCheques: TSpeedButton
            OnClick = FrameMovValoresEgresos1spLoteChequesClick
          end
          inherited JvDBStatusLabel1: TJvDBStatusLabel
            Left = 10
            Top = 282
            ExplicitLeft = 10
            ExplicitTop = 282
          end
          inherited dbgMovimientos: TDBGrid
            Height = 186
          end
          inherited pcValores: TPageControl
            Height = 230
            ExplicitHeight = 230
            inherited tsEfectivo: TTabSheet
              inherited DBText4: TDBText
                Left = 13
                Top = 182
                ExplicitLeft = 13
                ExplicitTop = 182
              end
              inherited DBText5: TDBText
                Left = 73
                Top = 182
                ExplicitLeft = 73
                ExplicitTop = 182
              end
              inherited btOkEfectivo: TBitBtn
                DoubleBuffered = True
              end
              inherited btCancelarEfectivo: TBitBtn
                DoubleBuffered = True
              end
            end
            inherited tsChe3: TTabSheet
              ExplicitHeight = 202
              inherited BitBtn2: TBitBtn
                DoubleBuffered = True
                OnClick = FrameMovValoresEgresos1BitBtn2Click
              end
              inherited BitBtn3: TBitBtn
                DoubleBuffered = True
              end
              inherited DBDFechaIngresoChe3: TJvDBDateEdit
                Height = 21
                ExplicitHeight = 21
              end
            end
            inherited tsCheques: TTabSheet
              inherited Button1: TButton
                OnClick = FrameMovValoresEgresos1Button1Click
              end
              inherited btCancel: TBitBtn
                DoubleBuffered = True
              end
              inherited btPost: TBitBtn
                DoubleBuffered = True
              end
            end
            inherited tsTransf: TTabSheet
              inherited BitBtn4: TBitBtn
                DoubleBuffered = True
              end
              inherited BitBtn8: TBitBtn
                DoubleBuffered = True
              end
            end
            inherited tsDebito: TTabSheet
              inherited BitBtn5: TBitBtn
                DoubleBuffered = True
              end
              inherited BitBtn6: TBitBtn
                DoubleBuffered = True
              end
            end
            inherited tsTarjeta: TTabSheet
              inherited pnTarjeta: TPanel
                inherited BitBtn9: TBitBtn
                  DoubleBuffered = True
                end
                inherited BitBtn10: TBitBtn
                  DoubleBuffered = True
                end
              end
            end
          end
          inherited DSPChe3: TDataSetProvider
            Left = 110
            Top = 160
          end
          inherited DSPMovEfectivo: TDataSetProvider
            Left = 110
            Top = 208
          end
          inherited ActionList1: TActionList
            Left = 480
            Top = 40
          end
          inherited DSPTransBco: TDataSetProvider
            Left = 203
            Top = 148
          end
          inherited DSCajaMov: TDataSource
            Top = 240
          end
          inherited QCheques: TFDQuery
            ParamData = <
              item
                Position = 1
                Name = 'id'
                DataType = ftInteger
                ParamType = ptInput
              end>
          end
          inherited QCajaMov: TFDQuery
            Top = 240
          end
          inherited CDSCajaMov: TClientDataSet
            AfterPost = FrameMovValoresEgresos1CDSCajaMovAfterPost
            BeforeDelete = FrameMovValoresEgresos1CDSCajaMovBeforeDelete
            AfterDelete = FrameMovValoresEgresos1CDSCajaMovAfterDelete
            Top = 240
          end
          inherited QMovTCCompra: TFDQuery
            ParamData = <
              item
                Position = 1
                Name = 'id'
                DataType = ftInteger
                ParamType = ptInput
              end>
          end
          inherited CDSBuscaBanco: TClientDataSet
            Left = 800
            Top = 184
          end
          inherited DSPBuscaBanco: TDataSetProvider
            Left = 232
            Top = 128
          end
        end
      end
      object Pag4: TTabSheet
        Caption = 'Retenciones Ing.Br.'
        ImageIndex = 3
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 230
          Height = 22
          Caption = 'Retenci'#243'n de Ingresos Brutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object dbtMinimoImponible: TDBText
          Left = 589
          Top = 72
          Width = 128
          Height = 17
          Alignment = taRightJustify
          DataField = 'MINIMO_IMPONIBLE_RET_IIBB'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 577
          Top = 48
          Width = 140
          Height = 20
          Caption = 'Minimo Imponible'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 599
          Top = 96
          Width = 118
          Height = 20
          Caption = 'Tasa Aplicable'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtTasa: TDBText
          Left = 620
          Top = 120
          Width = 97
          Height = 17
          Alignment = taRightJustify
          DataField = 'TASA_RETENCION_IIBB'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 549
          Top = 144
          Width = 168
          Height = 20
          Caption = 'Neto Gravado Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtNeto: TDBText
          Left = 620
          Top = 168
          Width = 97
          Height = 17
          Alignment = taRightJustify
          DataField = 'TOTAL_NETO_GRAVADO'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel7: TJvLabel
          Left = 384
          Top = 2
          Width = 100
          Height = 13
          Caption = 'Nro.de Comprobante'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbgRetIngBr: TDBGrid
          Left = 3
          Top = 49
          Width = 524
          Height = 137
          DataSource = DatosOPago.DSRetIngBrDet
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'TIPOCPBTE_RETENIDO'
              Title.Alignment = taCenter
              Title.Caption = 'Tp.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 32
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'CLASECPBTE_RETENIDO'
              Title.Alignment = taCenter
              Title.Caption = 'Cl.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 34
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
              Width = 132
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Importe Neto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PORCENTAJE'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RETENCION'
              Title.Alignment = taCenter
              Title.Caption = 'Imp.Ret.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 96
              Visible = True
            end>
        end
        object dbeSucRetIB: TDBEdit
          Left = 362
          Top = 15
          Width = 39
          Height = 24
          TabStop = False
          DataField = 'SUC'
          DataSource = DatosOPago.DSRetIngBrCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object dbeNumRetIB: TDBEdit
          Left = 406
          Top = 15
          Width = 75
          Height = 24
          TabStop = False
          DataField = 'NUMERO'
          DataSource = DatosOPago.DSRetIngBrCab
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object dbeLetRetIB: TDBEdit
          Left = 336
          Top = 15
          Width = 22
          Height = 24
          TabStop = False
          DataField = 'LETRA'
          DataSource = DatosOPago.DSRetIngBrCab
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object BtNuevo_IngBru: TBitBtn
          Left = 79
          Top = 227
          Width = 75
          Height = 25
          Caption = '&Agregar'
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
          TabOrder = 4
          OnClick = BtNuevo_IngBruClick
        end
        object btConfrima_IngBr: TBitBtn
          Left = 322
          Top = 227
          Width = 75
          Height = 25
          Action = Confirma_Ret_IngBr
          Caption = '&Confirma'
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
            0303030303030303030303030303030303030303030303030303030303030303
            03030303030303030303030303030303030303030303FF030303030303030303
            03030303030303040403030303030303030303030303030303F8F8FF03030303
            03030303030303030303040202040303030303030303030303030303F80303F8
            FF030303030303030303030303040202020204030303030303030303030303F8
            03030303F8FF0303030303030303030304020202020202040303030303030303
            0303F8030303030303F8FF030303030303030304020202FA0202020204030303
            0303030303F8FF0303F8FF030303F8FF03030303030303020202FA03FA020202
            040303030303030303F8FF03F803F8FF0303F8FF03030303030303FA02FA0303
            03FA0202020403030303030303F8FFF8030303F8FF0303F8FF03030303030303
            FA0303030303FA0202020403030303030303F80303030303F8FF0303F8FF0303
            0303030303030303030303FA0202020403030303030303030303030303F8FF03
            03F8FF03030303030303030303030303FA020202040303030303030303030303
            0303F8FF0303F8FF03030303030303030303030303FA02020204030303030303
            03030303030303F8FF0303F8FF03030303030303030303030303FA0202020403
            030303030303030303030303F8FF0303F8FF03030303030303030303030303FA
            0202040303030303030303030303030303F8FF03F8FF03030303030303030303
            03030303FA0202030303030303030303030303030303F8FFF803030303030303
            030303030303030303FA0303030303030303030303030303030303F803030303
            0303030303030303030303030303030303030303030303030303030303030303
            0303}
          NumGlyphs = 2
          TabOrder = 5
        end
        object BitBtn2: TBitBtn
          Left = 241
          Top = 227
          Width = 75
          Height = 25
          Action = Cancelar_Ret_IngBr
          Caption = 'C&ancelar'
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
            0303030303030303030303030303030303030303030303030303030303030303
            0303F8F80303030303030303030303030303030303FF03030303030303030303
            0303030303F90101F80303030303F9F80303030303030303F8F8FF0303030303
            03FF03030303030303F9010101F8030303F90101F8030303030303F8FF03F8FF
            030303FFF8F8FF030303030303F901010101F803F901010101F80303030303F8
            FF0303F8FF03FFF80303F8FF030303030303F901010101F80101010101F80303
            030303F8FF030303F8FFF803030303F8FF030303030303F90101010101010101
            F803030303030303F8FF030303F803030303FFF80303030303030303F9010101
            010101F8030303030303030303F8FF030303030303FFF8030303030303030303
            030101010101F80303030303030303030303F8FF0303030303F8030303030303
            0303030303F901010101F8030303030303030303030303F8FF030303F8030303
            0303030303030303F90101010101F8030303030303030303030303F803030303
            F8FF030303030303030303F9010101F8010101F803030303030303030303F803
            03030303F8FF0303030303030303F9010101F803F9010101F803030303030303
            03F8030303F8FF0303F8FF03030303030303F90101F8030303F9010101F80303
            03030303F8FF0303F803F8FF0303F8FF03030303030303F9010303030303F901
            0101030303030303F8FFFFF8030303F8FF0303F8FF0303030303030303030303
            030303F901F903030303030303F8F80303030303F8FFFFFFF803030303030303
            03030303030303030303030303030303030303030303030303F8F8F803030303
            0303030303030303030303030303030303030303030303030303030303030303
            0303}
          NumGlyphs = 2
          TabOrder = 6
        end
        object Panel2: TPanel
          Left = 407
          Top = 188
          Width = 121
          Height = 33
          TabOrder = 7
          OnDblClick = Panel2DblClick
          object dbeTotalRetIB: TDBEdit
            Left = 8
            Top = 4
            Width = 105
            Height = 21
            Color = 16776176
            DataField = 'TOTAL'
            DataSource = DatosOPago.DSRetIngBrCab
            Enabled = False
            TabOrder = 0
          end
        end
        object BitBtn3: TBitBtn
          Left = 403
          Top = 227
          Width = 75
          Height = 25
          Action = Imprimir_Ret_IngBr
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
          TabOrder = 8
        end
        object pnConfigReporte: TPanel
          Left = 704
          Top = 216
          Width = 47
          Height = 41
          BevelOuter = bvNone
          TabOrder = 9
          OnDblClick = pnConfigReporteDblClick
        end
        object BitBtn4: TBitBtn
          Left = 160
          Top = 227
          Width = 75
          Height = 25
          Action = Borrar_Ret_IngBr
          Caption = 'Borrar'
          ImageIndex = 3
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000D80AA000D80AA000D80AA000D80AA000D80AA000D80AA00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00078DBB0049D5EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80
            AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
            BB008CFBFE0059EAFE0023D6FD0035D3F70000009A0000009A0000009A000000
            9A0000009A0000009A0000009A0000009A00FF00FF00FF00FF00FF00FF00078D
            BB008CFBFE0059EAFE0023D6FD0035D3F70000009A003E6EFF00285BFF001248
            FF000236FF000029F900001DEC0000009A00FF00FF00FF00FF00FF00FF00078D
            BB008CFBFE0059EAFE0023D6FD0035D4F80000009A004474FF003264FF001B50
            FF00083CFF000029F9000022F10000009A00FF00FF00FF00FF00FF00FF00078D
            BB00B3FCFE00B6F6FF00C6F5FF00E1F8FD0000009A0000009A0000009A000000
            9A0000009A0000009A0000009A0000009A00FF00FF00FF00FF00FF00FF00078D
            BB00BAEEF60030BCDD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CE
            E4000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
            BB004AC5DD0059EAFE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682
            B6000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
            BB008CFBFE0059EAFE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089D
            CF000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
            BB008CFBFE0059EAFE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089D
            CF000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
            BB008CFBFE0059EAFE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089D
            CF000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
            BB0091FCFE0082F8FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2
            D4000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
            BB00FCFFFF00F4FFFF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8
            FF000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000C92C000F4FFFF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385
            AF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00078DBB00078DBB00078DBB00078DBB00078DBB00078DBB00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Spacing = 5
          TabOrder = 10
        end
      end
      object Pag5: TTabSheet
        Caption = 'Ret.Ganancias'
        ImageIndex = 4
        object Label3: TLabel
          Left = 8
          Top = 0
          Width = 122
          Height = 16
          Caption = 'Nro.de Retenci'#243'n'
          FocusControl = dbeNumeroRetencion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 383
          Top = 14
          Width = 76
          Height = 16
          Cursor = crHandPoint
          Alignment = taRightJustify
          DataField = 'ID'
          DataSource = DatosOPago.DSRetGanancia
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnDblClick = DBText1DblClick
        end
        object pnBorrador: TPanel
          Left = 480
          Top = 8
          Width = 244
          Height = 233
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = clGradientActiveCaption
          Enabled = False
          ParentBackground = False
          TabOrder = 0
          object Label13: TLabel
            Left = 7
            Top = 7
            Width = 80
            Height = 13
            Caption = 'T.Neto Actual'
            FocusControl = dbeTotalNeto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 7
            Top = 55
            Width = 116
            Height = 13
            Caption = 'Minimo no Imponible'
            FocusControl = dbeNetosAcumulados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 7
            Top = 31
            Width = 118
            Height = 13
            Caption = 'T.Netos Acumulados'
            FocusControl = dbeNetosAcumulados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 7
            Top = 143
            Width = 105
            Height = 13
            Caption = 'Imps Ant.Retenido'
            FocusControl = dbeNetosAcumulados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 7
            Top = 79
            Width = 66
            Height = 13
            Caption = 'Tasa Ret.%'
            FocusControl = dbeNetosAcumulados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 7
            Top = 114
            Width = 112
            Height = 13
            Caption = 'Impuesto Calculado'
            FocusControl = dbeNetosAcumulados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 7
            Top = 170
            Width = 123
            Height = 16
            Caption = 'Impuesto a Pagar'
            FocusControl = dbeNetosAcumulados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 7
            Top = 199
            Width = 95
            Height = 13
            Caption = 'Impuesto Mimino'
            FocusControl = dbeMinImpuesto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 123
            Top = 137
            Width = 8
            Height = 24
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel1: TBevel
            Left = 102
            Top = 101
            Width = 137
            Height = 14
            Shape = bsTopLine
          end
          object Bevel2: TBevel
            Left = 103
            Top = 164
            Width = 137
            Height = 14
            Shape = bsTopLine
          end
          object dbeTotalNeto: TDBEdit
            Left = 131
            Top = 4
            Width = 108
            Height = 21
            DataField = 'TOTAL_NETO_GRAVADO'
            DataSource = DSBase
            TabOrder = 0
          end
          object dbeNetosAcumulados: TDBEdit
            Left = 131
            Top = 28
            Width = 108
            Height = 21
            DataField = 'TOTAL_PAGOS_DEL_MES'
            DataSource = DSBase
            TabOrder = 1
          end
          object dbeMinNoImponible: TDBEdit
            Left = 131
            Top = 52
            Width = 108
            Height = 21
            DataField = 'MINIMO_NO_IMPONIBLE_GANANCIA'
            DataSource = DSBase
            TabOrder = 2
          end
          object dbeRetDelMes: TDBEdit
            Left = 131
            Top = 140
            Width = 108
            Height = 21
            Hint = 'Impuestos Cobrados anteriormente'
            DataField = 'TOTAL_RETENIDO_MES'
            DataSource = DSBase
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object dbeTasaret: TDBEdit
            Left = 131
            Top = 76
            Width = 108
            Height = 21
            DataField = 'TASA_RETENCION_GANACIA'
            DataSource = DSBase
            TabOrder = 4
          end
          object dbeMinImpuesto: TDBEdit
            Left = 131
            Top = 196
            Width = 108
            Height = 21
            Color = 16776176
            DataField = 'IMPUESTO_MINIMO_GANANCIA'
            DataSource = DSBase
            TabOrder = 7
          end
          object ceImpuestoCalculado: TJvCalcEdit
            Left = 131
            Top = 112
            Width = 108
            Height = 21
            Hint = 'Valor del Impuesto calculado segun los acumulados'
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clInfoBk
            DisplayFormat = ',0.00 ;-,0.00 '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowButton = False
            ShowHint = True
            TabOrder = 5
            DecimalPlacesAlwaysShown = False
          end
          object ceImpuestoAPagar: TJvCalcEdit
            Left = 131
            Top = 168
            Width = 108
            Height = 21
            Hint = 
              'Resultado de restar lo calculado con los pagos anteriore. Si es ' +
              'menor que el minimo no se cobra Retenci'#243'n'
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clBlue
            DisplayFormat = ',0.00 ;-,0.00 '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowButton = False
            ShowHint = True
            TabOrder = 6
            DecimalPlacesAlwaysShown = False
          end
        end
        object pnRetencion: TPanel
          Left = 3
          Top = 44
          Width = 457
          Height = 105
          Color = clGradientInactiveCaption
          Enabled = False
          ParentBackground = False
          TabOrder = 1
          OnExit = pnRetencionExit
          object Label4: TLabel
            Left = 88
            Top = 16
            Width = 46
            Height = 13
            Caption = 'Concpeto'
            FocusControl = dbeConcepto
          end
          object Label5: TLabel
            Left = 280
            Top = 16
            Width = 8
            Height = 13
            Caption = '%'
            FocusControl = dbeTasa
          end
          object Label6: TLabel
            Left = 8
            Top = 56
            Width = 66
            Height = 13
            Caption = 'Min. No Impo.'
            FocusControl = dbeMin_No_Imponible
          end
          object Label7: TLabel
            Left = 334
            Top = 0
            Width = 91
            Height = 26
            Caption = 'Pagos Acumulados'#13#10'o Base de C'#225'lculo'
            FocusControl = dbeAcumulados
          end
          object Label8: TLabel
            Left = 349
            Top = 56
            Width = 89
            Height = 13
            Cursor = crHandPoint
            Caption = 'Impuesto Retenido'
            FocusControl = dbeImpuestoCalculado
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 8
            Top = 16
            Width = 64
            Height = 13
            Caption = 'Cod.Regimen'
            FocusControl = dbeCodigoRetencion
          end
          object dbeConcepto: TDBEdit
            Left = 88
            Top = 32
            Width = 177
            Height = 21
            DataField = 'CONCEPTO'
            DataSource = DatosOPago.DSRetGanancia
            TabOrder = 0
          end
          object dbeTasa: TDBEdit
            Left = 272
            Top = 32
            Width = 64
            Height = 21
            DataField = 'TASA'
            DataSource = DatosOPago.DSRetGanancia
            TabOrder = 1
          end
          object dbeMin_No_Imponible: TDBEdit
            Left = 8
            Top = 72
            Width = 86
            Height = 21
            DataField = 'MINIMO_NO_IMPONIBLE'
            DataSource = DatosOPago.DSRetGanancia
            TabOrder = 2
          end
          object dbeAcumulados: TDBEdit
            Left = 344
            Top = 32
            Width = 105
            Height = 21
            DataField = 'PAGOS_ACUMULADOS'
            DataSource = DatosOPago.DSRetGanancia
            TabOrder = 3
          end
          object dbeImpuestoCalculado: TDBEdit
            Left = 344
            Top = 72
            Width = 105
            Height = 24
            Color = clInfoBk
            DataField = 'IMPUESTO_RETENIDO'
            DataSource = DatosOPago.DSRetGanancia
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object dbeCodigoRetencion: TDBEdit
            Left = 8
            Top = 32
            Width = 64
            Height = 21
            DataField = 'CODIGO_REGIMEN'
            DataSource = DatosOPago.DSRetGanancia
            TabOrder = 5
          end
        end
        object btImprimirRetencion: TBitBtn
          Left = 388
          Top = 242
          Width = 71
          Height = 25
          Action = ImprimirRetencionRanancia
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
          TabOrder = 2
        end
        object dbeNumeroRetencion: TDBEdit
          Left = 8
          Top = 15
          Width = 215
          Height = 28
          CharCase = ecUpperCase
          DataField = 'NUMERO_RETENCION'
          DataSource = DatosOPago.DSRetGanancia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object pnEscala: TPanel
          Left = 8
          Top = 155
          Width = 305
          Height = 116
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 4
          Visible = False
          object Label27: TLabel
            Left = 6
            Top = 0
            Width = 135
            Height = 13
            Caption = 'Calculo Ret. por Escala'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 6
            Top = 19
            Width = 70
            Height = 13
            Caption = 'Valor Desde'
            FocusControl = dbeTotalNeto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 6
            Top = 38
            Width = 67
            Height = 13
            Caption = 'Valor Hasta'
            FocusControl = dbeTotalNeto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 6
            Top = 57
            Width = 50
            Height = 13
            Caption = 'Variac.%'
            FocusControl = dbeTotalNeto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 6
            Top = 77
            Width = 54
            Height = 13
            Caption = 'Valor Fijo'
            FocusControl = dbeTotalNeto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 6
            Top = 95
            Width = 54
            Height = 13
            Caption = 'Exedente'
            FocusControl = dbeTotalNeto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 169
            Top = 19
            Width = 65
            Height = 17
            Alignment = taRightJustify
            DataField = 'GANC_ESCALA_DESDE'
            DataSource = DSBase
          end
          object DBText4: TDBText
            Left = 169
            Top = 38
            Width = 65
            Height = 17
            Alignment = taRightJustify
            DataField = 'GANC_ESCALA_HASTA'
            DataSource = DSBase
          end
          object DBText5: TDBText
            Left = 169
            Top = 57
            Width = 65
            Height = 17
            Alignment = taRightJustify
            DataField = 'GANC_ESCALA_VARIAC'
            DataSource = DSBase
          end
          object DBText6: TDBText
            Left = 169
            Top = 77
            Width = 65
            Height = 17
            Alignment = taRightJustify
            DataField = 'GANC_ESCALA_FIJO'
            DataSource = DSBase
          end
          object DBText7: TDBText
            Left = 169
            Top = 95
            Width = 65
            Height = 17
            Alignment = taRightJustify
            DataField = 'GANC_ESCALA_EXCED'
            DataSource = DSBase
          end
        end
      end
      object Pag6: TTabSheet
        Caption = 'Retenciones IVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        object pnRetIVA: TPanel
          Left = 0
          Top = 0
          Width = 848
          Height = 339
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label33: TLabel
            Left = 8
            Top = 0
            Width = 122
            Height = 16
            Caption = 'Nro.de Retenci'#243'n'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 388
            Top = 14
            Width = 76
            Height = 16
            Cursor = crHandPoint
            Alignment = taRightJustify
            DataField = 'ID'
            DataSource = DatosOPago.DSRetIva
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Panel3: TPanel
            Left = 9
            Top = 66
            Width = 244
            Height = 151
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = clGradientInactiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object Label38: TLabel
              Left = 10
              Top = 15
              Width = 117
              Height = 13
              Caption = 'Porcentaje de Ret.%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 10
              Top = 107
              Width = 123
              Height = 16
              Caption = 'Impuesto a Pagar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Bevel3: TBevel
              Left = 103
              Top = 39
              Width = 137
              Height = 14
              Shape = bsTopLine
            end
            object Label34: TLabel
              Left = 13
              Top = 55
              Width = 87
              Height = 13
              Caption = 'IVA Acumulado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit6: TDBEdit
              Left = 139
              Top = 12
              Width = 97
              Height = 21
              DataField = 'TASA'
              DataSource = DatosOPago.DSRetIva
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 139
              Top = 106
              Width = 97
              Height = 21
              DataField = 'IMPUESTO_RETENIDO'
              DataSource = DatosOPago.DSRetIva
              Enabled = False
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 139
              Top = 52
              Width = 97
              Height = 21
              DataField = 'BASE_IMPONIBLE'
              DataSource = DatosOPago.DSRetIva
              Enabled = False
              TabOrder = 2
            end
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 16
            Width = 177
            Height = 28
            CharCase = ecUpperCase
            DataField = 'NUMERO_RETENCION'
            DataSource = DatosOPago.DSRetIva
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object BitBtn5: TBitBtn
            Left = 36
            Top = 242
            Width = 71
            Height = 25
            Action = ImprimeRetIva
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
            TabOrder = 2
          end
        end
      end
      object pag7: TTabSheet
        Caption = 'Mov Auxi.'
        ImageIndex = 5
        object dbgMov: TDBGrid
          Left = 3
          Top = 16
          Width = 555
          Height = 201
          DataSource = DatosOPago.DSMovAux
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = dbgMovEnter
          OnKeyPress = dbgMovKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clPurple
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRATIPO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clPurple
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 328
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HABER'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clPurple
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object edTotalAux: TJvCalcEdit
          Left = 423
          Top = 240
          Width = 121
          Height = 21
          DisplayFormat = ',0.00'
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 523
    Width = 856
    ButtonHeight = 30
    PopupMenu = PopupMenu1
    ExplicitTop = 523
    ExplicitWidth = 856
    inherited btConfirma: TBitBtn
      Width = 74
      Height = 30
      DoubleBuffered = True
      ExplicitWidth = 74
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Left = 76
      Height = 30
      DoubleBuffered = True
      ExplicitLeft = 76
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Left = 151
      Height = 30
      DoubleBuffered = True
      ExplicitLeft = 151
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Left = 226
      Width = 76
      Height = 30
      DoubleBuffered = True
      ExplicitLeft = 226
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Width = 14
      Height = 30
      ExplicitWidth = 14
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Left = 316
      Height = 30
      DoubleBuffered = True
      ExplicitLeft = 316
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Left = 391
      Height = 30
      ExplicitLeft = 391
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Left = 406
      Width = 76
      Height = 30
      DoubleBuffered = True
      ExplicitLeft = 406
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Width = 74
      Height = 30
      DoubleBuffered = True
      TabOrder = 8
      ExplicitWidth = 74
      ExplicitHeight = 30
    end
    object ToolButton1: TToolButton
      Left = 556
      Top = 0
      Width = 6
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object spRecalcular: TSpeedButton
      Left = 562
      Top = 0
      Width = 24
      Height = 30
      Action = Recalcular
      Flat = True
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
    object ToolButton3: TToolButton
      Left = 586
      Top = 0
      Width = 5
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btPendientes: TBitBtn
      Left = 591
      Top = 0
      Width = 64
      Height = 30
      Action = BuscarPendientes
      Caption = 'Fc.CC'
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
    object ToolButton2: TToolButton
      Left = 655
      Top = 0
      Width = 5
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object BitBtn6: TBitBtn
      Left = 660
      Top = 0
      Width = 71
      Height = 30
      Action = Imprimir
      Caption = 'Imprimir'
      TabOrder = 9
    end
    object spMail: TSpeedButton
      Left = 731
      Top = 0
      Width = 25
      Height = 30
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
    object btImprimir: TBitBtn
      Left = 756
      Top = 0
      Width = 36
      Height = 30
      Hint = 'Imprimir Cheques '
      Action = ImpresionCheques
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
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 553
    Width = 856
    OnClick = Panel1Click
    ExplicitTop = 553
    ExplicitWidth = 856
    inherited sbEstado: TStatusBar
      Width = 767
      PopupMenu = PopupMenu1
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 767
    end
  end
  object pnl1: TPanel [3]
    Left = 138
    Top = 132
    Width = 149
    Height = 21
    ParentBackground = False
    ParentColor = True
    TabOrder = 3
    object dbtNC_NROCOMPROB: TDBText
      Left = 66
      Top = 2
      Width = 75
      Height = 16
      Cursor = crHandPoint
      DataField = 'NC_NUMEROFAC'
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
      Left = 11
      Top = 2
      Width = 19
      Height = 17
      DataField = 'NC_LETRAFAC'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = dbtNC_NROCOMPROBClick
    end
    object dbtSuc: TDBText
      Left = 31
      Top = 2
      Width = 29
      Height = 16
      Cursor = crHandPoint
      DataField = 'NC_SUCFAC'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = dbtNC_NROCOMPROBClick
    end
  end
  object ToolBar2: TToolBar [4]
    Left = 0
    Top = 0
    Width = 856
    Height = 22
    ButtonHeight = 21
    ButtonWidth = 80
    Caption = 'ToolBar2'
    Color = clGradientInactiveCaption
    DrawingStyle = dsGradient
    ParentColor = False
    ShowCaptions = True
    TabOrder = 4
    object ToolButton4: TToolButton
      Left = 0
      Top = 0
      Caption = 'Otras Opciones'
      DropdownMenu = PopupMenu1
      ImageIndex = 0
      PopupMenu = PopupMenu1
    end
  end
  inherited ActionList1: TActionList
    Left = 368
    Top = 336
    object BuscarProveedor: TAction
      Caption = 'BuscarProveedor'
      OnExecute = BuscarProveedorExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarPendientes: TAction
      Caption = 'BuscarPendientes'
      Hint = 'Tratr facturas Pendientes'
      OnExecute = BuscarPendientesExecute
    end
    object BuscarDescuento: TAction
      Caption = 'BuscarDescuento'
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      ImageIndex = 9
      OnExecute = ImprimirExecute
    end
    object Recalcular: TAction
      Hint = 'Calcular Aplicaciones'
      OnExecute = RecalcularExecute
    end
    object Agregar_Ret_IngBr: TAction
      Caption = '&Agregar'
      OnExecute = Agregar_Ret_IngBrExecute
    end
    object Confirma_Ret_IngBr: TAction
      Caption = '&Confirma'
      OnExecute = Confirma_Ret_IngBrExecute
    end
    object Cancelar_Ret_IngBr: TAction
      Caption = 'C&ancelar'
      OnExecute = Cancelar_Ret_IngBrExecute
    end
    object Imprimir_Ret_IngBr: TAction
      Caption = '&Imprimir'
      OnExecute = Imprimir_Ret_IngBrExecute
    end
    object Borrar_Ret_IngBr: TAction
      Caption = 'Borrar'
      ImageIndex = 3
      OnExecute = Borrar_Ret_IngBrExecute
    end
    object BorrarAplicacion: TAction
      Caption = 'Borrar Aplicacion'
      OnExecute = BorrarAplicacionExecute
    end
    object ImprimirRetencionRanancia: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirRetencionRananciaExecute
    end
    object AplicaAuto: TAction
      OnExecute = AplicaAutoExecute
    end
    object Sumar: TAction
      Caption = 'Sumar'
    end
    object ConfiguraOpago: TAction
      Caption = 'ConfiguraOpago'
      OnExecute = ConfiguraOpagoExecute
    end
    object BorrarTodasAplicaciones: TAction
      OnExecute = BorrarTodasAplicacionesExecute
    end
    object VerImputaciones: TAction
      Caption = 'VerImputaciones'
      OnExecute = VerImputacionesExecute
    end
    object TraerCtaCte: TAction
      ImageIndex = 0
      OnExecute = TraerCtaCteExecute
    end
    object GravarNumeroOperacion: TAction
      Caption = 'GravarNumeroOperacion'
      ShortCut = 16507
      OnExecute = GravarNumeroOperacionExecute
    end
    object CambiarCodigo: TAction
      Caption = 'Cambiar Codigo / Nro/Fecha'
      ShortCut = 49219
      OnExecute = CambiarCodigoExecute
    end
    object CambiarClaseCpbte: TAction
      Caption = 'Cambiar Clase de Cpbte'
      ShortCut = 16468
      OnExecute = CambiarClaseCpbteExecute
    end
    object BusquedaPorReferencia: TAction
      Caption = 'BusquedaPorReferencia'
      ShortCut = 32781
      OnExecute = BusquedaPorReferenciaExecute
    end
    object BorrarRetIIBB: TAction
      Caption = 'Borrar Ret IIBB'
      OnExecute = BorrarRetIIBBExecute
    end
    object EnviarCorreo: TAction
      Hint = 'Enviar por Correo la Orden de Pago'
      OnExecute = EnviarCorreoExecute
    end
    object GenerarRetIIBB: TAction
      Caption = 'Generar Ret. IIBB'
      OnExecute = GenerarRetIIBBExecute
    end
    object ActualizarTasaIIBB: TAction
      Caption = 'ActualizarTasaIIBB'
    end
    object ReasignarCuit: TAction
      Caption = 'Reasignar desde la Ficha del Proveedor el Cuit'
      OnExecute = ReasignarCuitExecute
    end
    object CambiarNroRetIIBB: TAction
      Caption = 'Cambiar Nro.Ret.IIBB'
      ShortCut = 24654
      OnExecute = CambiarNroRetIIBBExecute
    end
    object ImprimeRetIva: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimeRetIvaExecute
    end
    object SumarNetosAplicados: TAction
      Caption = 'Sumar Netos Aplicados'
      OnExecute = SumarNetosAplicadosExecute
    end
    object ImpresionCheques: TAction
      AutoCheck = True
      OnExecute = ImpresionChequesExecute
    end
    object RevisionValoresEgresados: TAction
      Caption = 'Revision Valores Egresados'
      OnExecute = RevisionValoresEgresadosExecute
    end
    object CambiaNroOp: TAction
      Caption = 'Cambia Nro Orden Pago'
      ShortCut = 16462
      OnExecute = CambiaNroOpExecute
    end
    object ConsultarReproweb: TAction
      Caption = 'Consultar Reproweb'
      OnExecute = ConsultarReprowebExecute
    end
    object RevisiondeNetosMes: TAction
      Caption = 'Revision de Netos del Mes'
      OnExecute = RevisiondeNetosMesExecute
    end
    object AsignarObra: TAction
      Caption = 'AsignarObra'
      ShortCut = 16463
      OnExecute = AsignarObraExecute
    end
    object QuitarMarcaGanancia: TAction
      Caption = 'Quitar Marca Ganancia'
      OnExecute = QuitarMarcaGananciaExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosOPago.CDSOPago
    Left = 512
    Top = 72
  end
  inherited ImageList1: TImageList
    Left = 394
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
    Left = 712
    Top = 176
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
    Top = 576
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 728
    Top = 80
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 496
    Top = 272
  end
  inherited QBrowse2: TFDQuery
    Left = 56
    Top = 192
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 208
    Top = 80
  end
  object frDBEfectivo: TfrxDBDataset
    UserName = 'frDBEfectivo'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSMovEfectivo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 148
    Top = 407
  end
  object frDBChe3: TfrxDBDataset
    UserName = 'frDBChe3'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSChe3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 260
    Top = 399
  end
  object frDBCheques: TfrxDBDataset
    UserName = 'frDBCheques'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSCheques
    BCDToCurrency = False
    DataSetOptions = []
    Left = 148
    Top = 599
  end
  object frDBMovCaja: TfrxDBDataset
    UserName = 'frDBMovCaja'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSCajaMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 540
    Top = 575
  end
  object frDBAplicaciones: TfrxDBDataset
    UserName = 'frDBAplicaciones'
    CloseDataSource = False
    DataSet = DatosOPago.CDSMovAplicaCCCompra
    BCDToCurrency = False
    DataSetOptions = []
    Left = 372
    Top = 447
    FieldDefs = <
      item
        FieldName = 'ID_MOV'
        FieldAlias = 'ID_MOV'
      end
      item
        FieldName = 'ID_MOVCCCOMPRA'
        FieldAlias = 'ID_MOVCCCOMPRA'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'PROVEEDOR'
        FieldAlias = 'PROVEEDOR'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'NUMEROCPBTE'
        FieldAlias = 'NUMEROCPBTE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'APLICA_ID_CPBTE'
        FieldAlias = 'APLICA_ID_CPBTE'
      end
      item
        FieldName = 'APLICA_TIPOCPBTE'
        FieldAlias = 'APLICA_TIPOCPBTE'
      end
      item
        FieldName = 'APLICA_NROCPBTE'
        FieldAlias = 'APLICA_NROCPBTE'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'APLICA_CLASECPBTE'
        FieldAlias = 'APLICA_CLASECPBTE'
      end
      item
        FieldName = 'MUESTRAFECHACPBTE'
        FieldAlias = 'MUESTRAFECHACPBTE'
      end
      item
        FieldName = 'APLICA_NETO'
        FieldAlias = 'APLICA_NETO'
      end
      item
        FieldName = 'MUESTRATOTALFACTURA'
        FieldAlias = 'MUESTRATOTALFACTURA'
      end>
  end
  object frDBOPago: TfrxDBDataset
    UserName = 'frDBOPago'
    CloseDataSource = False
    DataSet = DatosOPago.CDSOPago
    BCDToCurrency = False
    DataSetOptions = []
    Left = 116
    Top = 511
    FieldDefs = <
      item
        FieldName = 'ID_OP'
        FieldAlias = 'ID_OP'
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
        FieldName = 'NRO_IIBB'
        FieldAlias = 'NRO_IIBB'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'N_OPERACION2'
        FieldAlias = 'N_OPERACION2'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'SALDO_APLICAR'
        FieldAlias = 'SALDO_APLICAR'
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
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
      end
      item
        FieldName = 'NC_ID_FC'
        FieldAlias = 'NC_ID_FC'
      end
      item
        FieldName = 'NC_LETRAFAC'
        FieldAlias = 'NC_LETRAFAC'
      end
      item
        FieldName = 'NC_SUCFAC'
        FieldAlias = 'NC_SUCFAC'
      end
      item
        FieldName = 'NC_NUMEROFAC'
        FieldAlias = 'NC_NUMEROFAC'
      end
      item
        FieldName = 'TASA_PERCEPCIONIVA'
        FieldAlias = 'TASA_PERCEPCIONIVA'
      end
      item
        FieldName = 'TASA_PERCEPCIONIB'
        FieldAlias = 'TASA_PERCEPCIONIB'
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
      end
      item
        FieldName = 'TOTAL_NETO_GRAVADO'
        FieldAlias = 'TOTAL_NETO_GRAVADO'
      end
      item
        FieldName = 'TOTAL_PAGOS_DEL_MES'
        FieldAlias = 'TOTAL_PAGOS_DEL_MES'
      end
      item
        FieldName = 'TOTAL_RETENIDO_MES'
        FieldAlias = 'TOTAL_RETENIDO_MES'
      end
      item
        FieldName = 'TASA_RETENCION_GANACIA'
        FieldAlias = 'TASA_RETENCION_GANACIA'
      end
      item
        FieldName = 'MINIMO_NO_IMPONIBLE_GANANCIA'
        FieldAlias = 'MINIMO_NO_IMPONIBLE_GANANCIA'
      end
      item
        FieldName = 'RETIENE_GANACIAS'
        FieldAlias = 'RETIENE_GANACIAS'
      end
      item
        FieldName = 'RETENCION_GANACIA_GENERADO'
        FieldAlias = 'RETENCION_GANACIA_GENERADO'
      end
      item
        FieldName = 'CODIGO_REGIMENA_GANANCIA'
        FieldAlias = 'CODIGO_REGIMENA_GANANCIA'
      end
      item
        FieldName = 'CONCEPTO_RETENCION_GANACIA'
        FieldAlias = 'CONCEPTO_RETENCION_GANACIA'
      end
      item
        FieldName = 'IMPUESTO_MINIMO_GANANCIA'
        FieldAlias = 'IMPUESTO_MINIMO_GANANCIA'
      end
      item
        FieldName = 'RETIENE_IIBB'
        FieldAlias = 'RETIENE_IIBB'
      end
      item
        FieldName = 'TASA_RETENCION_IIBB'
        FieldAlias = 'TASA_RETENCION_IIBB'
      end
      item
        FieldName = 'MINIMO_IMPONIBLE_RET_IIBB'
        FieldAlias = 'MINIMO_IMPONIBLE_RET_IIBB'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
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
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'SUMAAPLICACIONES_'
        FieldAlias = 'SUMAAPLICACIONES_'
      end
      item
        FieldName = 'DESCUENTO_PORCENTAJE'
        FieldAlias = 'DESCUENTO_PORCENTAJE'
      end
      item
        FieldName = 'TOTAL_NETO'
        FieldAlias = 'TOTAL_NETO'
      end
      item
        FieldName = 'NUMERO_OPERACION'
        FieldAlias = 'NUMERO_OPERACION'
      end
      item
        FieldName = 'MUESTRACORREO'
        FieldAlias = 'MUESTRACORREO'
      end
      item
        FieldName = 'PERMITIR_MODIF_TOTAL'
        FieldAlias = 'PERMITIR_MODIF_TOTAL'
      end
      item
        FieldName = 'RET_GAN_X_ESCALA'
        FieldAlias = 'RET_GAN_X_ESCALA'
      end
      item
        FieldName = 'ID_ESCALA_RET'
        FieldAlias = 'ID_ESCALA_RET'
      end
      item
        FieldName = 'GANC_ESCALA_DESDE'
        FieldAlias = 'GANC_ESCALA_DESDE'
      end
      item
        FieldName = 'GANC_ESCALA_HASTA'
        FieldAlias = 'GANC_ESCALA_HASTA'
      end
      item
        FieldName = 'GANC_ESCALA_VARIAC'
        FieldAlias = 'GANC_ESCALA_VARIAC'
      end
      item
        FieldName = 'GANC_ESCALA_FIJO'
        FieldAlias = 'GANC_ESCALA_FIJO'
      end
      item
        FieldName = 'GANC_ESCALA_EXCED'
        FieldAlias = 'GANC_ESCALA_EXCED'
      end
      item
        FieldName = 'RETIENE_IVA'
        FieldAlias = 'RETIENE_IVA'
      end
      item
        FieldName = 'IVA_ACUMULADO'
        FieldAlias = 'IVA_ACUMULADO'
      end
      item
        FieldName = 'TASA_RET_IVA'
        FieldAlias = 'TASA_RET_IVA'
      end
      item
        FieldName = 'COD_RET_IVA'
        FieldAlias = 'COD_RET_IVA'
      end
      item
        FieldName = 'CONCEPTO_RET_IVA'
        FieldAlias = 'CONCEPTO_RET_IVA'
      end
      item
        FieldName = 'ENTREGADO'
        FieldAlias = 'ENTREGADO'
      end>
  end
  object frOPago: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.121870879590000000
    ReportOptions.LastChange = 40646.381687361110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  Importe:Real;'
      '  CheNro,FechaCobro,Banco:String;'
      '  TotalValores:Real;'
      '  TotalFc:Real;                              '
      ''
      'procedure MasterHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Importe      :=0;'
      '  CheNro       :='#39#39';'
      '  FechaCobro   :='#39#39';'
      '  Banco        :='#39#39';'
      '  TotalValores :=0;                                         '
      'end;'
      ''
      'procedure Band1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  //Efectivo    '
      '  if <frDBMovCaja."ID_TPAGO">=1 Then'
      '    begin'
      '      Importe   :=<frDBEfectivo."IMPORTE">;'
      '      CheNro    :='#39#39';'
      '      FechaCobro:='#39#39';'
      '      Banco     :='#39#39';'
      
        '      TotalValores:=TotalValores+Importe;                       ' +
        '                                                       '
      '    end'
      '  else'
      '    // Cheques                         '
      '    if <frDBMovCaja."ID_TPAGO">=2 Then'
      '      begin'
      '        Importe   :=<frDBCheques."IMPORTE">;  '
      '        CheNro    :=<frDBCheques."NUMERO">;  '
      '        FechaCobro:=<frDBCheques."FECHA_COBRO">;  '
      '        Banco     :=<frDBCheques."MUESTRACHEQUERA">;  '
      
        '        TotalValores:=TotalValores+Importe;                     ' +
        '                                                         '
      '      end'
      '    else'
      
        '    // Cheques de Tercero                                       ' +
        '       '
      '      if <frDBMovCaja."ID_TPAGO">=3 Then'
      '        begin'
      '          Importe   :=<frDBChe3."IMPORTE">;  '
      '          CheNro    :=<frDBChe3."NUMERO">;  '
      '          FechaCobro:=<frDBChe3."FECHA_COBRO">;  '
      '          Banco     :=<frDBChe3."MUESTRABANCO">;  '
      
        '          TotalValores:=TotalValores+Importe;                   ' +
        '                                                           '
      '        end'
      '      else          '
      '     // Transferencias'
      '        if <frDBMovCaja."ID_TPAGO">=5 Then'
      '          begin'
      '            Importe   :=<frDBTransferencias."IMPORTE">;  '
      '            CheNro    :=<frDBTransferencias."NUMERO">;  '
      '            FechaCobro:=<frDBTransferencias."FECHA">;  '
      '            Banco     :=<frDBTransferencias."MUESTRACTACAJA">;  '
      
        '            TotalValores:=TotalValores+Importe;                 ' +
        '                                                             '
      '        end          '
      '      else          '
      '      // Debitos'
      '        if <frDBMovCaja."ID_TPAGO">=6 Then'
      '          begin'
      '            Importe   :=<frDBDebitos."IMPORTE">;  '
      '            CheNro    :=<frDBDebitos."NUMERO">;  '
      '            FechaCobro:=<frDBDebitos."FECHA">;  '
      '            Banco     :=<frDBDebitos."MUESTRACTACAJA">;  '
      
        '            TotalValores:=TotalValores+Importe;                 ' +
        '                                                             '
      '        end;            '
      '        '
      'end;'
      ''
      'procedure MasterHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  TotalFc:=0;                      '
      'end;'
      ''
      'procedure MasterData3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  TotalFc:=TotalFc+<frDBAplicaciones."IMPORTE">;                ' +
        '                      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 460
    Top = 487
    Datasets = <
      item
        DataSet = frDBAplicaciones
        DataSetName = 'frDBAplicaciones'
      end
      item
        DataSet = frDBChe3
        DataSetName = 'frDBChe3'
      end
      item
        DataSet = frDBCheques
        DataSetName = 'frDBCheques'
      end
      item
        DataSet = frDBDebitos
        DataSetName = 'frDBDebitos'
      end
      item
        DataSet = frDBEfectivo
        DataSetName = 'frDBEfectivo'
      end
      item
        DataSet = frDBEmpresa
        DataSetName = 'frDBEmpresa'
      end
      item
        DataSet = frDBMovCaja
        DataSetName = 'frDBMovCaja'
      end
      item
        DataSet = frDBOPago
        DataSetName = 'frDBOPago'
      end
      item
        DataSet = frDBRetencionesGanancia
        DataSetName = 'frDBRetencionesGanancia'
      end
      item
        DataSet = frDBRetIngBrCab
        DataSetName = 'frDBRetIngBrCab'
      end
      item
        DataSet = frDBRetIngBrDet
        DataSetName = 'frDBRetIngBrDet'
      end
      item
        DataSet = frDBTransferencias
        DataSetName = 'frDBTransferencias'
      end
      item
        DataSet = frxDBAplicado
        DataSetName = 'frxDBAplicado'
      end>
    Variables = <
      item
        Name = 'Mascara'
        Value = #39'###,##0.00'#39
      end
      item
        Name = 'importeletra'
        Value = #39'UN MIL PESOS '#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 81.559060000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 2.425170000000000000
          Width = 166.204700000000000000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Orden de Pago')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 578.897650000000000000
          Top = 22.866110000000000000
          Width = 124.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."FECHA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 539.747990000000000000
          Top = 2.425170000000000000
          Width = 178.267780000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."NROCPBTE"]')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 500.000000000000000000
          Top = 2.425170000000000000
          Width = 32.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Nro:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.425170000000000000
          Width = 276.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBEmpresa."Nombre"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 50.425170000000000000
          Width = 276.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBEmpresa."Direccion"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 73.425170000000000000
          Width = 713.236240000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 74.000000000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBOPago
        DataSetName = 'frDBOPago'
        RowCount = 0
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 143.559060000000000000
          Top = 17.039270000000000000
          Width = 300.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'DIRECCION'
          DataSet = frDBOPago
          DataSetName = 'frDBOPago'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."DIRECCION"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 69.039270000000000000
          Width = 714.236240000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 223.559060000000000000
          Top = 37.039270000000000000
          Width = 292.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'LOCALIDAD'
          DataSet = frDBOPago
          DataSetName = 'frDBOPago'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."LOCALIDAD"]')
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 143.559060000000000000
          Top = 37.039270000000000000
          Width = 76.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'CPOSTAL'
          DataSet = frDBOPago
          DataSetName = 'frDBOPago'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."CPOSTAL"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 68.000000000000000000
          Top = 0.818800000000000000
          Width = 64.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'CODIGO'
          DataSet = frDBOPago
          DataSetName = 'frDBOPago'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 143.559060000000000000
          Top = 0.818800000000000000
          Width = 292.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'RAZONSOCIAL'
          DataSet = frDBOPago
          DataSetName = 'frDBOPago'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."RAZONSOCIAL"]')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Top = 0.818800000000000000
          Width = 64.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Pagado a:')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 63.354360000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        ColumnWidth = 342.000000000000000000
        ColumnGap = 36.000000000000000000
        DataSet = frDBOPago
        DataSetName = 'frDBOPago'
        RowCount = 0
        object SubReport1: TfrxSubreport
          AllowVectorExport = True
          Left = 412.220470000000000000
          Top = 2.330550000000000000
          Width = 264.000000000000000000
          Height = 18.000000000000000000
          Page = frOPago.Page2
        end
        object SubReport2: TfrxSubreport
          AllowVectorExport = True
          Left = 5.574830000000000000
          Top = 2.330550000000000000
          Width = 286.267780000000000000
          Height = 18.000000000000000000
          Page = frOPago.Page3
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 242.000000000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 126.000000000000000000
          Top = 133.401360000000000000
          Width = 52.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Recibi'#243)
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 38.000000000000000000
          Top = 107.401360000000000000
          Width = 56.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Firma')
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 210.000000000000000000
          Top = 107.401360000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Aclaraci'#243'n')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 105.401360000000000000
          Width = 128.000000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 190.000000000000000000
          Top = 105.401360000000000000
          Width = 132.000000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 486.000000000000000000
          Top = 131.401360000000000000
          Width = 79.779530000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Confecciono')
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 390.000000000000000000
          Top = 106.401360000000000000
          Width = 56.000000000000000000
          Height = 17.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Firma')
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 562.000000000000000000
          Top = 106.401360000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Aclaraci'#243'n')
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 358.000000000000000000
          Top = 106.401360000000000000
          Width = 128.000000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 542.000000000000000000
          Top = 106.401360000000000000
          Width = 132.000000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 6.000000000000000000
          Top = 191.401360000000000000
          Width = 410.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."OBSERVACION2"]')
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 167.401360000000000000
          Width = 412.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."OBSERVACION1"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 547.779530000000000000
          Top = 6.078540000000000000
          Width = 128.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."TOTAL"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 432.000000000000000000
          Top = 6.078540000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Importe Total')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 8.000000000000000000
          Top = 6.078540000000000000
          Width = 408.000000000000000000
          Height = 58.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Son.:[importeletra]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Top = 2.078540000000000000
          Width = 725.574830000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = []
      MirrorMode = []
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 12.472438500000000000
        Top = 94.488250000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'MasterData3OnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBAplicaciones
        DataSetName = 'frDBAplicaciones'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 10.779530000000000000
          Width = 20.779530000000000000
          Height = 11.220470000000000000
          StretchMode = smMaxHeight
          DataField = 'APLICA_CLASECPBTE'
          DataSet = frDBAplicaciones
          DataSetName = 'frDBAplicaciones'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBAplicaciones."APLICA_CLASECPBTE"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 32.559060000000000000
          Width = 91.559060000000000000
          Height = 11.220470000000000000
          StretchMode = smMaxHeight
          DataField = 'APLICA_NROCPBTE'
          DataSet = frDBAplicaciones
          DataSetName = 'frDBAplicaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBAplicaciones."APLICA_NROCPBTE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 234.031540000000000000
          Width = 60.661410000000000000
          Height = 12.220470000000000000
          StretchMode = smMaxHeight
          DataField = 'IMPORTE'
          DataSet = frDBAplicaciones
          DataSetName = 'frDBAplicaciones'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBAplicaciones."IMPORTE"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 124.338590000000000000
          Width = 48.000000000000000000
          Height = 11.220470000000000000
          StretchMode = smMaxHeight
          DataField = 'MUESTRAFECHACPBTE'
          DataSet = frDBAplicaciones
          DataSetName = 'frDBAplicaciones'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBAplicaciones."MUESTRAFECHACPBTE"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Height = 12.472438500000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 60.661410000000000000
          Height = 12.220470000000000000
          StretchMode = smMaxHeight
          DataField = 'MUESTRATOTALFACTURA'
          DataSet = frDBAplicaciones
          DataSetName = 'frDBAplicaciones'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBAplicaciones."MUESTRATOTALFACTURA"]')
          ParentFont = False
        end
      end
      object MasterHeader1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.000000000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'MasterHeader1OnBeforePrint'
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 22.440940000000000000
          Top = 2.645640000000000000
          Width = 192.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Aplicaci'#243'n del Pago')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Height = 52.157480314960600000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 21.559060000000000000
          Top = 26.645640000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Comprobante')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 234.472480000000000000
          Top = 26.645640000000000000
          Width = 59.779530000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Aplicado')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 26.456710000000000000
          Width = 37.102350000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object MasterFooter1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 36.897650000000000000
        Top = 128.504020000000000000
        Width = 793.701300000000000000
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 216.590600000000000000
          Top = 4.000000000000000000
          Width = 80.881880000000000000
          Height = 12.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TotalFc]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 33.779530000000000000
          Top = 3.000000000000000000
          Width = 96.000000000000000000
          Height = 14.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 3.779527559055120000
          Height = 18.141732280000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 22.677180000000000000
          Width = 80.881880000000000000
          Height = 12.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBOPago."SALDO_APLICAR"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 22.677180000000000000
          Width = 96.000000000000000000
          Height = 14.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Pago a Cta:')
          ParentFont = False
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 229.551330000000000000
          Top = 2.000000000000000000
          Width = 71.811070000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = []
      MirrorMode = []
      object MasterHeader2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 47.763760000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'MasterHeader2OnBeforePrint'
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 8.440940000000000000
          Top = 1.763760000000000000
          Width = 156.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Valores Entregados')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Top = 33.543290000000000000
          Width = 60.000000000000000000
          Height = 14.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'F.de Pago')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 76.000000000000000000
          Top = 33.543290000000000000
          Width = 68.000000000000000000
          Height = 14.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'F.de Cobro')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 268.000000000000000000
          Top = 33.543290000000000000
          Width = 64.000000000000000000
          Height = 14.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Numero')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 344.000000000000000000
          Top = 33.543290000000000000
          Width = 60.000000000000000000
          Height = 14.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 152.000000000000000000
          Top = 33.543290000000000000
          Width = 64.000000000000000000
          Height = 14.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
      end
      object MasterHeader4: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.000000000000000000
        Top = 166.299320000000000000
        Width = 793.701300000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 32.000000000000000000
          Top = 1.448670000000000000
          Width = 120.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Descuentos')
          ParentFont = False
        end
      end
      object Band1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 12.720470000000000000
        Top = 90.708720000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'Band1OnBeforePrint'
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBMovCaja
        DataSetName = 'frDBMovCaja'
        RowCount = 0
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 80.000000000000000000
          Height = 11.220470000000000000
          StretchMode = smMaxHeight
          DataField = 'MUESTRAFORMAPAGO'
          DataSet = frDBMovCaja
          DataSetName = 'frDBMovCaja'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBMovCaja."MUESTRAFORMAPAGO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 332.000000000000000000
          Width = 68.000000000000000000
          Height = 11.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Importe]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 83.779530000000000000
          Width = 64.000000000000000000
          Height = 11.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[FechaCobro]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 259.338590000000000000
          Width = 68.000000000000000000
          Height = 11.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[CheNro]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 151.559060000000000000
          Width = 104.000000000000000000
          Height = 11.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[Banco]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterFooter2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.000000000000000000
        Top = 124.724490000000000000
        Width = 793.701300000000000000
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 303.000000000000000000
          Top = 2.877860000000000000
          Width = 96.000000000000000000
          Height = 14.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[TotalValores]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 40.000000000000000000
          Top = 2.877860000000000000
          Width = 184.000000000000000000
          Height = 14.220470000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            'Total de Valores Ingresados')
          ParentFont = False
        end
      end
      object MasterHeader3: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 21.779530000000000000
        Top = 249.448980000000000000
        Width = 793.701300000000000000
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 32.000000000000000000
          Top = 2.078540000000000000
          Width = 116.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Retenciones')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 10.440940000000000000
        Top = 215.433210000000000000
        Width = 793.701300000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBOPago
        DataSetName = 'frDBOPago'
        RowCount = 0
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 340.157700000000000000
        Width = 793.701300000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Retenciones de Ingresos Brutos')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 793.701300000000000000
        DataSet = frDBRetIngBrCab
        DataSetName = 'frDBRetIngBrCab'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBRetIngBrCab."NROCPBTE"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBRetIngBrCab."TOTAL"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 793.701300000000000000
        DataSet = frDBRetencionesGanancia
        DataSetName = 'frDBRetencionesGanancia'
        RowCount = 0
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530000000000000
          Top = 0.503710000000000000
          Width = 208.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            '[frDBRetencionesGanancia."CONCEPTO"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 275.779530000000000000
          Top = 0.503710000000000000
          Width = 128.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frDBRetencionesGanancia."IMPUESTO_RETENIDO"]')
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 430.866420000000000000
        Width = 793.701300000000000000
        DataSet = frDBOPago
        DataSetName = 'frDBOPago'
        KeepTogether = True
        RowCount = 0
        StartNewPage = True
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pagos a Cta.Anteriores')
          ParentFont = False
        end
      end
      object DetailData4: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 14.118120000000000000
        Top = 502.677490000000000000
        Width = 793.701300000000000000
        DataSet = frDBAplicaciones
        DataSetName = 'frDBAplicaciones'
        RowCount = 0
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Width = 18.897650000000000000
          Height = 11.338590000000000000
          DataField = 'APLICA_CLASECPBTE'
          DataSet = frxDBAplicado
          DataSetName = 'frxDBAplicado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAplicado."APLICA_CLASECPBTE"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 26.236240000000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          DataField = 'APLICA_NROCPBTE'
          DataSet = frxDBAplicado
          DataSetName = 'frxDBAplicado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAplicado."APLICA_NROCPBTE"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'MUESTRATOTALFACTURA'
          DataSet = frDBAplicaciones
          DataSetName = 'frDBAplicaciones'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBAplicaciones."MUESTRATOTALFACTURA"]')
          ParentFont = False
        end
      end
      object SubdetailData2: TfrxSubdetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 11.338590000000000000
        Top = 540.472790000000000000
        Width = 793.701300000000000000
        DataSet = frxDBAplicado
        DataSetName = 'frxDBAplicado'
        RowCount = 0
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DataField = 'TIPOCPBTE'
          DataSet = frxDBAplicado
          DataSetName = 'frxDBAplicado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAplicado."TIPOCPBTE"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DataField = 'NUMEROCPBTE'
          DataSet = frxDBAplicado
          DataSetName = 'frxDBAplicado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAplicado."NUMEROCPBTE"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DataField = 'IMPORTE'
          DataSet = frxDBAplicado
          DataSetName = 'frxDBAplicado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBAplicado."IMPORTE"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 574.488560000000000000
        Width = 793.701300000000000000
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frDBAplicaciones."MUESTRATOTALFACTURA">-SUM(<frxDBAplicado."IM' +
              'PORTE">)]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 124.267780000000000000
          Top = 1.000000000000000000
          Width = 98.267780000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
      end
    end
  end
  object frRentIngBr: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.781779687500000000
    ReportOptions.LastChange = 39638.781779687500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 460
    Top = 535
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBRetIngBrCab: TfrxDBDataset
    UserName = 'frDBRetIngBrCab'
    CloseDataSource = False
    DataSet = DatosOPago.CDSRetIngBrCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 252
    Top = 583
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
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'CODIGOPOSTAL'
        FieldAlias = 'CODIGOPOSTAL'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
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
        FieldName = 'ID_CPBTE_ORIGEN'
        FieldAlias = 'ID_CPBTE_ORIGEN'
      end
      item
        FieldName = 'TIPOCPBTE_ORIGEN'
        FieldAlias = 'TIPOCPBTE_ORIGEN'
      end
      item
        FieldName = 'CLASECPBTE_ORIGEN'
        FieldAlias = 'CLASECPBTE_ORIGEN'
      end
      item
        FieldName = 'NROCPBTE_ORIGEN'
        FieldAlias = 'NROCPBTE_ORIGEN'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'NOMBRE_AGTE_RET'
        FieldAlias = 'NOMBRE_AGTE_RET'
      end
      item
        FieldName = 'DIRECCION_AGTE_RET'
        FieldAlias = 'DIRECCION_AGTE_RET'
      end
      item
        FieldName = 'CUIT_AGTE_RET'
        FieldAlias = 'CUIT_AGTE_RET'
      end
      item
        FieldName = 'CPOSTAL_AGTE_RET'
        FieldAlias = 'CPOSTAL_AGTE_RET'
      end
      item
        FieldName = 'LOCALIDAD_AGTE_RET'
        FieldAlias = 'LOCALIDAD_AGTE_RET'
      end
      item
        FieldName = 'NRO_AGTE_RET'
        FieldAlias = 'NRO_AGTE_RET'
      end
      item
        FieldName = 'NETO_GRAVADO'
        FieldAlias = 'NETO_GRAVADO'
      end
      item
        FieldName = 'TASA_RETENCION'
        FieldAlias = 'TASA_RETENCION'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'NRO_IIBB'
        FieldAlias = 'NRO_IIBB'
      end>
  end
  object frDBRetIngBrDet: TfrxDBDataset
    UserName = 'frDBRetIngBrDet'
    CloseDataSource = False
    DataSet = DatosOPago.CDSRetIngBrDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 260
    Top = 519
  end
  object frDBRetencionesGanancia: TfrxDBDataset
    UserName = 'frDBRetencionesGanancia'
    CloseDataSource = False
    DataSet = DatosOPago.CDSRetGanancia
    BCDToCurrency = False
    DataSetOptions = []
    Left = 108
    Top = 583
  end
  object frRetGanancia: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.781798495370000000
    ReportOptions.LastChange = 39638.781798495370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 564
    Top = 367
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBDebitos: TfrxDBDataset
    UserName = 'frDBDebitos'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSDebitos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 536
    Top = 440
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
  object frDBTransferencias: TfrxDBDataset
    UserName = 'frDBTransferencias'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSTransBco
    BCDToCurrency = False
    DataSetOptions = []
    Left = 256
    Top = 624
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
        FieldName = 'MUESTRACTACAJA'
        FieldAlias = 'MUESTRACTACAJA'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end>
  end
  object frDBEmpresa: TfrxDBDataset
    UserName = 'frDBEmpresa'
    CloseDataSource = False
    DataSet = DatosOPago.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 592
    Top = 408
    FieldDefs = <
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'Nombre'
      end
      item
        FieldName = 'ACTIVIDAD'
        FieldAlias = 'Actividad'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'Direccion'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'Localidad'
      end
      item
        FieldName = 'CORREO'
        FieldAlias = 'Correo'
      end
      item
        FieldName = 'TELEFONO1'
        FieldAlias = 'Telefono1'
      end
      item
        FieldName = 'TELEFONO2'
        FieldAlias = 'Telefono2'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'Cuit'
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
        FieldAlias = 'Logo'
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
        FieldName = 'CODIGO_COT'
        FieldAlias = 'CODIGO_COT'
      end
      item
        FieldName = 'DIRECCION_NRO'
        FieldAlias = 'DIRECCION_NRO'
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
    Left = 720
    Top = 304
  end
  object frxDBAplicado: TfrxDBDataset
    UserName = 'frxDBAplicado'
    CloseDataSource = False
    DataSet = DatosOPago.QAplicado
    BCDToCurrency = False
    DataSetOptions = []
    Left = 409
    Top = 597
    FieldDefs = <
      item
        FieldName = 'ID_MOV'
        FieldAlias = 'ID_MOV'
      end
      item
        FieldName = 'ID_MOVCCCOMPRA'
        FieldAlias = 'ID_MOVCCCOMPRA'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'PROVEEDOR'
        FieldAlias = 'PROVEEDOR'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
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
        FieldName = 'NUMEROCPBTE'
        FieldAlias = 'NUMEROCPBTE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'APLICA_ID_CPBTE'
        FieldAlias = 'APLICA_ID_CPBTE'
      end
      item
        FieldName = 'APLICA_TIPOCPBTE'
        FieldAlias = 'APLICA_TIPOCPBTE'
      end
      item
        FieldName = 'APLICA_CLASECPBTE'
        FieldAlias = 'APLICA_CLASECPBTE'
      end
      item
        FieldName = 'APLICA_NROCPBTE'
        FieldAlias = 'APLICA_NROCPBTE'
      end
      item
        FieldName = 'APLICA_NETO'
        FieldAlias = 'APLICA_NETO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 784
    Top = 200
    object BorrarAplicacion1: TMenuItem
      Action = BorrarAplicacion
    end
    object CambiarClaseCpbte1: TMenuItem
      Action = CambiarClaseCpbte
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CambiarCodigo1: TMenuItem
      Action = CambiarCodigo
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object BorrarRetIIBB1: TMenuItem
      Action = BorrarRetIIBB
    end
    object CambiarNroRetIIBB1: TMenuItem
      Action = CambiarNroRetIIBB
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object GenerarRetIIBB1: TMenuItem
      Action = GenerarRetIIBB
    end
    object ReasignardesdelaFichadelClienteCuit1: TMenuItem
      Action = ReasignarCuit
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object SumarNetosAplicados1: TMenuItem
      Action = SumarNetosAplicados
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object RevisionValoresEgresados1: TMenuItem
      Action = RevisionValoresEgresados
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object CambiaNroOrdenPago2: TMenuItem
      Action = CambiaNroOp
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object RevisiondeNetosdelMes1: TMenuItem
      Action = RevisiondeNetosMes
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object SumarNetosAcumulados1: TMenuItem
      Caption = 'Sumar Netos Acumulados'
      OnClick = SumarNetosAcumulados1Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Agregar1: TMenuItem
      Action = QuitarMarcaGanancia
    end
  end
  object frDBTC: TfrxDBDataset
    UserName = 'frDBTC'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSMovTCCompra
    BCDToCurrency = False
    DataSetOptions = []
    Left = 680
    Top = 469
  end
  object frDBRetIva: TfrxDBDataset
    UserName = 'frDBRetIva'
    CloseDataSource = False
    DataSource = DatosOPago.DSRetIva
    BCDToCurrency = False
    DataSetOptions = []
    Left = 634
    Top = 369
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_OP'
        FieldAlias = 'ID_OP'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'NUMERO_RETENCION'
        FieldAlias = 'NUMERO_RETENCION'
      end
      item
        FieldName = 'CODIGO_PROVEEDOR'
        FieldAlias = 'CODIGO_PROVEEDOR'
      end
      item
        FieldName = 'CODIGO_REGIMEN'
        FieldAlias = 'CODIGO_REGIMEN'
      end
      item
        FieldName = 'CONCEPTO'
        FieldAlias = 'CONCEPTO'
      end
      item
        FieldName = 'TASA'
        FieldAlias = 'TASA'
      end
      item
        FieldName = 'MINIMO_NO_IMPONIBLE'
        FieldAlias = 'MINIMO_NO_IMPONIBLE'
      end
      item
        FieldName = 'IMPUESTO_RETENIDO'
        FieldAlias = 'IMPUESTO_RETENIDO'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'ANULADA'
        FieldAlias = 'ANULADA'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'BASE_IMPONIBLE'
        FieldAlias = 'BASE_IMPONIBLE'
      end>
  end
  object frRetencionIVA: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.781798495370000000
    ReportOptions.LastChange = 39638.781798495370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 788
    Top = 383
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
  object ComBuscadorSucursal: TComBuscador
    Data = DatosOPago.CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursal'
    rOk = False
    Left = 187
    Top = 50
  end
  object frxDBSucursal: TfrxDBDataset
    UserName = 'frDBSucursal'
    CloseDataSource = False
    DataSet = DatosOPago.CDSSucursal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 656
    Top = 592
    FieldDefs = <
      item
        FieldName = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'DIRECCION'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'LOCALIDAD'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'TELEFONO1'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'TELEFONO2'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'RECARGO'
      end
      item
        FieldName = 'APLICA_PERCEPCION_IIBB'
        FieldType = fftString
      end
      item
        FieldName = 'HOST'
        FieldType = fftString
        Size = 250
      end
      item
        FieldName = 'CERTIFICADO_ELEC'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'CUIT'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'COT_CLAVE'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'COT_CUIT'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'APLICA_LEY15311'
        FieldType = fftString
      end>
  end
end

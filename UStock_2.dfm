inherited FormStock_2: TFormStock_2
  Left = 292
  Top = 68
  Caption = 'Planilla Stock'
  ClientHeight = 753
  ClientWidth = 911
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  ExplicitWidth = 929
  ExplicitHeight = 794
  TextHeight = 13
  object Label15: TLabel [0]
    Left = 40
    Top = 312
    Width = 38
    Height = 13
    Caption = 'Label15'
  end
  inherited pnPrincipal: TPanel
    Width = 911
    Height = 521
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 911
    ExplicitHeight = 521
    object pcPrincipal: TPageControl
      Left = 0
      Top = 19
      Width = 911
      Height = 502
      ActivePage = Pag1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HotTrack = True
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      object Pag1: TTabSheet
        Caption = 'Art'#237'culo'
        object pcDatosArticulo: TPageControl
          Left = 0
          Top = 0
          Width = 903
          Height = 474
          ActivePage = SubPag2
          Align = alClient
          TabOrder = 0
          OnChanging = pcDatosArticuloChanging
          object SubPag1: TTabSheet
            Caption = 'Datos Principales'
            PopupMenu = ppmMovimientos
            DesignSize = (
              895
              446)
            object Label10: TLabel
              Left = 3
              Top = -1
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
            end
            object Label11: TLabel
              Left = 74
              Top = -1
              Width = 33
              Height = 13
              Caption = 'Detalle'
              FocusControl = dbeDescripcion
            end
            object Label13: TLabel
              Left = 3
              Top = 122
              Width = 29
              Height = 13
              Caption = 'Rubro'
            end
            object Label16: TLabel
              Left = 3
              Top = 159
              Width = 48
              Height = 13
              Caption = 'SubRubro'
            end
            object Label29: TLabel
              Left = 3
              Top = 81
              Width = 30
              Height = 13
              Caption = 'Marca'
            end
            object Label34: TLabel
              Left = 397
              Top = 35
              Width = 86
              Height = 13
              Caption = 'C'#243'digo Alternativo'
              FocusControl = dbeReemplazo
            end
            object Label9: TLabel
              Left = 403
              Top = 82
              Width = 116
              Height = 26
              Caption = 'Codigos de Proveedores'#13#10'(Listas de Proveedores)'
            end
            object Label17: TLabel
              Left = 303
              Top = 159
              Width = 80
              Height = 13
              Caption = 'Unidad de Venta'
            end
            object Label8: TLabel
              Left = 3
              Top = 262
              Width = 156
              Height = 13
              Caption = 'Existencias y m'#225'rgenes de Venta'
            end
            object Label14: TLabel
              Left = 303
              Top = 82
              Width = 88
              Height = 13
              Caption = 'Unidad de Compra'
            end
            object Label5: TLabel
              Left = 303
              Top = 121
              Width = 48
              Height = 13
              Caption = 'Contenido'
            end
            object Label12: TLabel
              Left = 577
              Top = -1
              Width = 66
              Height = 13
              Caption = 'Codigo Barras'
            end
            object spCodigosProveedores: TSpeedButton
              Left = 525
              Top = 82
              Width = 33
              Height = 31
              Hint = 
                'Muestra el Articulo en las Listas de Precios que estan Cargadas ' +
                'de Proveedores'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                06020000424D0602000000000000760000002800000028000000140000000100
                0400000000009001000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFFFFFF333333333300000000033333333333777777777F33333
                333330F8888880333333333337F3333337F33333333330F88888803333333333
                37F3333337F33333333330F8888880333333333337F3333337F33333333330FF
                FFFFF0333333333337FFFFFFF7F33333333330CCCCCCC0333333333337777777
                77F33333333330000000003333333333377777777733333FFFFF333333333333
                330000033333333333333377777F333333333333330FFF03333333333333337F
                FF7F333333333333300000033333333333333777777333333333333303333333
                33333333FFFF733FFFFF33333330000033000003333333377777FF77777F3333
                3330FFF0000FFF0333333337FFF7777FFF7F3333333000003300000333333337
                77773F7777733333333333330333333333333333333373FFFFFF333333333333
                300000033333333333333777777F333333333333330FFF03333333333333337F
                FF7F333333333333330000033333333333333377777333333333333333333333
                33333333333333333333}
              NumGlyphs = 2
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spCodigosProveedoresClick
            end
            object Label3: TLabel
              Left = 403
              Top = 162
              Width = 92
              Height = 13
              Caption = 'Ultima Modificaci'#243'n'
            end
            object Label28: TLabel
              Left = 500
              Top = 119
              Width = 66
              Height = 13
              Caption = 'Fecha de Alta'
            end
            object Label40: TLabel
              Left = 74
              Top = 35
              Width = 63
              Height = 13
              Caption = 'Det.Adicional'
            end
            object Label44: TLabel
              Left = 403
              Top = 119
              Width = 81
              Height = 13
              Caption = 'Fecha Ultima Vta'
            end
            object lbl1: TLabel
              Left = 791
              Top = 35
              Width = 43
              Height = 13
              Caption = 'Dias Vto.'
            end
            object lbl2: TLabel
              Left = 576
              Top = 35
              Width = 120
              Height = 13
              Caption = 'Presentacion Cant./Unid.'
            end
            object dbtLinkURL: TDBText
              Left = 32
              Top = 399
              Width = 426
              Height = 42
              Cursor = crHandPoint
              Hint = 'Hacer Doble Clik para editar'
              DataField = 'URL'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = dbtLinkURLClick
            end
            object btURL: TSpeedButton
              Left = 3
              Top = 396
              Width = 23
              Height = 22
              Action = BuscaURL
              Flat = True
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000010000FF00FF000047
                000000490000004C00000051010001550100005B0100015F0100035B0500035C
                05000061000002660400006A000006660C00056A0800056E0C00037304000374
                0600007F0000077E0700076F110007701100097516000E7A1A0000453900004C
                3D00004844000051410000445D0000485A00018802000D8219000C871F000B8C
                1A001386220015A533001EB2350020A7370020C13A001AB641002CD34A0032DC
                6400004BC000004DC200004DC4000151C6000452CB000355CC000558D000075C
                D400085CDD000B64D7000C65D400116ED700075CE0000C64E3000D68E200116C
                E500116CE9001573E6001676E5001B7DE7001676E9001F81FF002489E9002083
                FE002184FF00268BFF00288FF8002D96FF00319AFF0000BDFF003EABFF0042B2
                FF0007E9E7000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000002F000000000000000000000000002D342D2B00004A470000
                00000000002B3D462B000000004A4700002B2B2B2D3C442B0000000000000000
                2F303E49483C2B00000000000000001C3643354045412B000000000000000E1F
                1D3E48343A3F2B000000000000051529251A394130382B000000000000092722
                2813183741302B00000000000009271F0E1E0C19322B00000000000000092321
                0C09130A1B0000000000000000150E110C0A0505004A47000000000017240903
                0303030000004A470000000D2611030000000000000000000000050509030000
                0000000000000000000015030000000000000000000000000000}
              ParentShowHint = False
              ShowHint = True
            end
            object Label36: TLabel
              Left = 590
              Top = 117
              Width = 76
              Height = 13
              Caption = 'Fecha Ult.Comp'
            end
            object dbtUltimaVta: TDBText
              Left = 409
              Top = 139
              Width = 75
              Height = 17
              DataField = 'FECHA_ULTIMAVTA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dbtFechaAlta: TDBText
              Left = 501
              Top = 139
              Width = 81
              Height = 17
              DataField = 'FECHA_ALTA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dbtUltimaCompra: TDBText
              Left = 596
              Top = 138
              Width = 77
              Height = 17
              DataField = 'FECHA_ULTIMA_COMPRA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dbtUltimaActualizacion: TDBText
              Left = 409
              Top = 181
              Width = 75
              Height = 17
              DataField = 'FUAP'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label62: TLabel
              Left = 808
              Top = -1
              Width = 71
              Height = 13
              Caption = 'Meses de Gtia.'
              FocusControl = dbeDescripcion
            end
            object Label63: TLabel
              Left = 646
              Top = 74
              Width = 28
              Height = 13
              Caption = 'Siglas'
              FocusControl = dbeReemplazo
            end
            object Label64: TLabel
              Left = 576
              Top = 74
              Width = 47
              Height = 13
              Caption = 'Grupo de '
            end
            object Label59: TLabel
              Left = 801
              Top = 89
              Width = 21
              Height = 13
              Caption = 'PLU'
              FocusControl = dbeReemplazo
            end
            object Label92: TLabel
              Left = 679
              Top = 117
              Width = 89
              Height = 13
              Caption = 'Seccion/Categoria'
              FocusControl = dbeReemplazo
            end
            object spSeccionesPLU: TSpeedButton
              Left = 848
              Top = 133
              Width = 23
              Height = 22
              Action = ABMSeccionesPLU
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
                25D0522C17931209053000000009000000010000000000000000000000000000
                00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
                6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
                0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
                82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
                2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
                59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
                47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
                45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
                6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
                44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
                83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
                47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
                8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
                F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
                A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
                D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
                ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
                3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
                9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
                3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
                6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
                3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
                3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
                5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
                0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
                CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
                00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
                B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
                000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
                60CD6C543F8B16110D2200000003000000010000000000000000}
            end
            object sbReporte: TSpeedButton
              Left = 848
              Top = 420
              Width = 23
              Height = 21
              Anchors = [akLeft, akBottom]
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                5555555555555555555555555555555555555555555555555555555555555555
                555555555555555555555555555555555555555FFFFFFFFFF555550000000000
                55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
                B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
                000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
                555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
                55555575FFF75555555555700007555555555557777555555555555555555555
                5555555555555555555555555555555555555555555555555555}
              NumGlyphs = 2
              OnClick = sbReporteClick
              ExplicitTop = 424
            end
            object Label110: TLabel
              Left = 720
              Top = 35
              Width = 50
              Height = 13
              Caption = 'Tolerancia'
            end
            object JvDBStatusLabel2: TJvDBStatusLabel
              Left = 748
              Top = 395
              Width = 96
              Height = 13
              DataSource = DatosStock.DSDepositoStk
              Captions.Strings = (
                ' ')
              Style = lsRecordNo
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ShadowPos = spLeftTop
              Transparent = True
            end
            object Label113: TLabel
              Left = 793
              Top = 113
              Width = 30
              Height = 13
              Caption = 'PLU 2'
              FocusControl = dbeReemplazo
            end
            object Label114: TLabel
              Left = 397
              Top = -1
              Width = 61
              Height = 13
              Caption = 'Detalle Corto'
              FocusControl = dbeDetalleCorto
            end
            object lbVariaciones: TLabel
              Left = 464
              Top = 393
              Width = 55
              Height = 13
              Cursor = crHandPoint
              Caption = 'Variaciones'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
              OnClick = lbVariacionesClick
            end
            object Label119: TLabel
              Left = 702
              Top = 74
              Width = 65
              Height = 13
              Caption = 'Posicion Gral.'
              FocusControl = dbeReemplazo
            end
            object rgTipoVariable: TDBRadioGroup
              Left = 174
              Top = 244
              Width = 196
              Height = 39
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Columns = 3
              DataField = 'ARTICULO_VARIABLE'
              DataSource = DSBase
              DefaultHeaderFont = False
              Enabled = False
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -12
              HeaderFont.Name = 'MS Sans Serif'
              HeaderFont.Style = []
              Items.Strings = (
                'Simple'
                'Variable'
                'Variante')
              ShowFrame = False
              TabOrder = 46
              Values.Strings = (
                'N'
                'V'
                'T')
              OnClick = rgTipoVariableClick
            end
            object dbeDescripcion: TDBEdit
              Left = 74
              Top = 13
              Width = 317
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Detalle_Stk'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = dbeDescripcionEnter
              OnExit = dbeDescripcionExit
              OnKeyDown = dbeDescripcionKeyDown
            end
            object dbeReemplazo: TDBEdit
              Left = 397
              Top = 50
              Width = 155
              Height = 21
              TabStop = False
              DataField = 'REEMPLAZO_STK'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnExit = dbeReemplazoExit
            end
            object dbeCodigo: TDBEdit
              Left = 3
              Top = 13
              Width = 64
              Height = 21
              DataField = 'Codigo_Stk'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = dbeCodigoEnter
              OnExit = dbeCodigoExit
              OnKeyDown = dbeCodigoKeyDown
            end
            object dbchControlaStock: TDBCheckBox
              Left = 8
              Top = 206
              Width = 97
              Height = 17
              TabStop = False
              Caption = 'Controla Stock'
              DataField = 'CONTROLASTOCK'
              DataSource = DSBase
              TabOrder = 12
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbcUnidad: TDBLookupComboBox
              Left = 303
              Top = 175
              Width = 89
              Height = 21
              DataField = 'UNIDAD'
              DataSource = DSBase
              KeyField = 'Siglas'
              ListField = 'Descripcion'
              ListSource = DatosStock.DSListaUnidad
              TabOrder = 9
              TabStop = False
            end
            object dbeMarca: TDBEdit
              Left = 74
              Top = 96
              Width = 209
              Height = 21
              Color = clInfoBk
              DataField = 'MUESTRAMARCA'
              DataSource = DSBase
              Enabled = False
              TabOrder = 3
            end
            object dbeRubro: TDBEdit
              Left = 74
              Top = 135
              Width = 209
              Height = 21
              Color = clInfoBk
              DataField = 'MUESTRARUBRO'
              DataSource = DSBase
              Enabled = False
              TabOrder = 4
            end
            object dbeSubRubro: TDBEdit
              Left = 74
              Top = 174
              Width = 209
              Height = 21
              Color = clInfoBk
              DataField = 'MUESTRASUBRUBRO'
              DataSource = DSBase
              Enabled = False
              TabOrder = 6
            end
            object dbchActualizaCosto: TDBCheckBox
              Left = 8
              Top = 224
              Width = 169
              Height = 17
              TabStop = False
              Caption = 'Actualiza Costo con la Compra'
              DataField = 'ACTUALIZACOSTO'
              DataSource = DSBase
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbchProduccionDirecta: TDBCheckBox
              Left = 183
              Top = 224
              Width = 129
              Height = 17
              TabStop = False
              Caption = 'De Producci'#243'n Directa'
              DataField = 'PRODUCCIONDIRECTA'
              DataSource = DSBase
              Enabled = False
              TabOrder = 15
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbchDeProduccion: TDBCheckBox
              Left = 183
              Top = 206
              Width = 97
              Height = 17
              TabStop = False
              Caption = 'De Producci'#243'n'
              DataField = 'DEPRODUCCION'
              DataSource = DSBase
              TabOrder = 14
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = dbchDeProduccionClick
            end
            object dbcUnidadesCompra: TDBLookupComboBox
              Left = 303
              Top = 96
              Width = 89
              Height = 21
              DataField = 'UNIDAD_COMPRA'
              DataSource = DSBase
              KeyField = 'Siglas'
              ListField = 'Descripcion'
              ListSource = DatosStock.DSListaUnidad
              TabOrder = 7
              TabStop = False
            end
            object dbcContCompra: TDBEdit
              Left = 303
              Top = 135
              Width = 86
              Height = 21
              TabStop = False
              DataField = 'CONTENIDO_COMPRA'
              DataSource = DSBase
              TabOrder = 8
            end
            object rgUnidadesDepositos: TRadioGroup
              Left = 681
              Top = 158
              Width = 144
              Height = 41
              Caption = 'Existencia en Unidades de'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Venta'
                'Compra')
              TabOrder = 18
              OnClick = rgUnidadesDepositosClick
            end
            object dbchControlSerie: TDBCheckBox
              Left = 379
              Top = 206
              Width = 123
              Height = 17
              TabStop = False
              Caption = 'Controla Nro.Serie'
              DataField = 'CONTROL_SERIE'
              DataSource = DSBase
              TabOrder = 16
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbchUsaCodigoBarra: TDBCheckBox
              Left = 379
              Top = 223
              Width = 123
              Height = 17
              Caption = 'Usa Codigo Barra'
              DataField = 'USA_CODIGOBARRA'
              DataSource = DSBase
              TabOrder = 17
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = dbchUsaCodigoBarraClick
            end
            object dbeDiasVto: TDBEdit
              Left = 791
              Top = 50
              Width = 88
              Height = 21
              Hint = 'Dias de Vencimientos de Produccion'
              TabStop = False
              DataField = 'DIAS_VENCIMIENTO'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              TextHint = 'Dias de Vto'
              OnExit = dbeReemplazoExit
            end
            object dbcPRESENTACION_UNIDAD: TDBLookupComboBox
              Left = 654
              Top = 50
              Width = 60
              Height = 21
              DataField = 'PRESENTACION_UNIDAD'
              DataSource = DSBase
              KeyField = 'Siglas'
              ListField = 'Siglas'
              ListSource = DatosStock.DSListaUnidad
              TabOrder = 21
              TabStop = False
            end
            object dbePRESENTACION_CANTIDAD: TDBEdit
              Left = 576
              Top = 50
              Width = 72
              Height = 21
              TabStop = False
              DataField = 'PRESENTACION_CANTIDAD'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 22
              OnExit = dbeReemplazoExit
            end
            object dbchEditaPrecio: TDBCheckBox
              Left = 379
              Top = 241
              Width = 124
              Height = 17
              Caption = 'Editar Precio en Fc/Rt'
              DataField = 'EDITAPRECIO'
              DataSource = DSBase
              TabOrder = 23
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = dbchUsaCodigoBarraClick
            end
            object dbchEditaDetalle: TDBCheckBox
              Left = 379
              Top = 258
              Width = 124
              Height = 17
              Caption = 'Editar Detalle (Vta)'
              DataField = 'EDITADETALLE'
              DataSource = DSBase
              TabOrder = 24
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = dbchUsaCodigoBarraClick
            end
            object RxDBCMarca: TJvDBComboEdit
              Left = 3
              Top = 96
              Width = 64
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'MARCA_STK'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 24
              TabOrder = 2
              OnButtonClick = BuscarMarcaExecute
              OnKeyDown = RxDBCMarcaKeyDown
            end
            object RxDBCSubRubro: TJvDBComboEdit
              Left = 3
              Top = 174
              Width = 64
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'SUBRUBRO_STK'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 24
              TabOrder = 5
              OnButtonClick = BuscarSubRubro_2Execute
              OnKeyDown = RxDBCSubRubroKeyDown
            end
            object dbcCodigoBarra: TJvDBComboEdit
              Left = 577
              Top = 13
              Width = 221
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataField = 'CODIGOBARRA'
              DataSource = DatosStock.DSCodigoBarra
              Glyph.Data = {
                DA020000424DDA0200000000000036000000280000000D0000000D0000000100
                200000000000A402000000000000000000000000000000000000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
                0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
                F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
              ButtonWidth = 24
              TabOrder = 20
              OnButtonClick = dbcCodigoBarraButtonClick
            end
            object dbchComanda: TDBCheckBox
              Left = 8
              Top = 241
              Width = 169
              Height = 17
              Hint = 
                'Para usar con el modulo de adicion, si genera o no comanda.'#13#10'No ' +
                'es aplicabe, para el caso de no usar el sistema de Adiciones.'
              TabStop = False
              Caption = 'Para el uso de Comanda'
              DataField = 'COMANDA'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 25
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              Visible = False
            end
            inline FrameCtaContable2: TFrameCtaContable
              Left = 501
              Top = 231
              Width = 528
              Height = 88
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              AutoSize = True
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Padding.Left = 5
              Padding.Top = 5
              Padding.Bottom = 5
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 26
              ExplicitLeft = 501
              ExplicitTop = 231
              ExplicitWidth = 528
              ExplicitHeight = 88
              inherited pnBase: TPanel
                Left = 5
                Top = 5
                Width = 523
                Height = 78
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 5
                ExplicitTop = 5
                ExplicitWidth = 523
                ExplicitHeight = 78
                inherited dbtNombre: TDBText
                  Width = 390
                  Height = 14
                  Margins.Left = 5
                  Margins.Top = 5
                  Margins.Right = 5
                  Margins.Bottom = 5
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitWidth = 390
                  ExplicitHeight = 14
                end
                inherited Label1: TLabel
                  Margins.Left = 5
                  Margins.Top = 5
                  Margins.Right = 5
                  Margins.Bottom = 5
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited ceCodigo: TJvDBComboEdit
                  Width = 64
                  Height = 21
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 5
                  Margins.Bottom = 5
                  StyleElements = [seFont, seClient, seBorder]
                  OnButtonClick = FrameCtaContable2ceCodigoButtonClick
                  OnKeyDown = FrameCtaContable2ceCodigoKeyDown
                  OnKeyPress = FrameCtaContable2ceCodigoKeyPress
                  ExplicitWidth = 64
                  ExplicitHeight = 21
                end
              end
            end
            object dbchWeb: TDBCheckBox
              Left = 183
              Top = 241
              Width = 129
              Height = 17
              TabStop = False
              Caption = 'Usar en la Web'
              DataField = 'PUBLICAR_WEB'
              DataSource = DSBase
              TabOrder = 27
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = dbchWebClick
            end
            object spMeses: TJvDBSpinEdit
              Left = 830
              Top = 13
              Width = 48
              Height = 21
              Decimal = 0
              MaxValue = 60.000000000000000000
              TabOrder = 28
              DataField = 'GTIA_MESES'
              DataSource = DSBase
            end
            object dbchGtiaOficial: TDBCheckBox
              Left = 768
              Top = 202
              Width = 99
              Height = 17
              TabStop = False
              Alignment = taLeftJustify
              Caption = 'Garantia Oficial'
              DataField = 'GARANTIAOFICIAL'
              DataSource = DSBase
              TabOrder = 29
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox1: TDBCheckBox
              Left = 518
              Top = 188
              Width = 157
              Height = 16
              TabStop = False
              Caption = 'Imprime en Lista de Precios'
              DataField = 'IMPRIMIR_LSTPRECIOS'
              DataSource = DSBase
              TabOrder = 30
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 518
              Top = 205
              Width = 122
              Height = 16
              TabStop = False
              Caption = 'Control Trazabilidad'
              DataField = 'CONTROL_TRAZABILIDAD'
              DataSource = DSBase
              TabOrder = 31
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbchIvaModificado: TDBCheckBox
              Left = 518
              Top = 171
              Width = 96
              Height = 16
              Hint = 'Verifica el Modo de Iva del Articulo '
              TabStop = False
              Caption = 'IVA Modificado'
              DataField = 'IVA_MODIFICADO'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 32
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbeUnidades: TDBEdit
              Left = 623
              Top = 395
              Width = 119
              Height = 21
              Color = clInfoBk
              DataField = 'UNIDADES'
              DataSource = DatosStock.DSDepositoStk
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 33
            end
            object dbeSiglas: TDBEdit
              Left = 646
              Top = 88
              Width = 50
              Height = 21
              Hint = 'Siglas para las Etiquetas (Simona)'
              TabStop = False
              DataField = 'SIGLAS'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 34
              OnKeyDown = dbeSiglasKeyDown
            end
            object dbeGrupo: TDBEdit
              Left = 576
              Top = 88
              Width = 64
              Height = 21
              Hint = 
                'Este dato es para mostrar en Grupos de como se conforman, Cantid' +
                'ad de Unidades que Forma un Grupo de este Articulo(Simona)'
              TabStop = False
              DataField = 'PRESENTACION_2_CANT'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 35
              OnKeyDown = dbeGrupoKeyDown
            end
            object DBCheckBox3: TDBCheckBox
              Left = 518
              Top = 154
              Width = 125
              Height = 16
              Hint = 
                'Para Indicar si el Articulo es Manufacturado , para los que son ' +
                'importados'
              TabStop = False
              Caption = 'Tasa Manufactura'
              DataField = 'TASA_MANUFACTURA'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 36
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbePLU: TDBEdit
              Left = 825
              Top = 85
              Width = 54
              Height = 21
              Hint = 'Posicion dentro del Almacen'
              TabStop = False
              DataField = 'PLU'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 37
              OnKeyDown = dbePLUKeyDown
            end
            object dbgDepositos: TJvDBGrid
              Left = 1
              Top = 281
              Width = 824
              Height = 112
              TabStop = False
              Align = alCustom
              Ctl3D = False
              DataSource = DatosStock.DSDepositoStk
              DrawingStyle = gdsClassic
              FixedColor = clBlue
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              TabOrder = 19
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnColEnter = dbgDepositosColEnter
              OnEditButtonClick = dbgDepositosEditButtonClick
              OnKeyDown = dbgDepositosKeyDown
              OnKeyPress = dbgDepositosKeyPress
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              OnCheckIfBooleanField = dbgDepositosCheckIfBooleanField
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'CODIGO_DEPOSITO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Id'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 25
                  Visible = True
                end
                item
                  ButtonStyle = cbsNone
                  Color = clAqua
                  Expanded = False
                  FieldName = 'MUESTRADEPOSITO'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Dep'#243'sito'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 144
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'INICIAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Inicial'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 73
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MEDIO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Medio'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MINIMO'
                  Title.Alignment = taCenter
                  Title.Caption = 'M'#237'nimo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Color = clAqua
                  Expanded = False
                  FieldName = 'FISICO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Actual'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 73
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'RECARGO'
                  Title.Alignment = taCenter
                  Title.Caption = '% Recargo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRECIOVENTA'
                  Title.Alignment = taCenter
                  Title.Caption = '$ - Venta'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 78
                  Visible = True
                end
                item
                  Color = clMoneyGreen
                  Expanded = False
                  FieldName = 'SECTOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Sec.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 44
                  Visible = True
                end
                item
                  Color = clMoneyGreen
                  Expanded = False
                  FieldName = 'UBICACION'
                  Title.Alignment = taCenter
                  Title.Caption = 'Ubicacion'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AVISO_MINIMOSTOCK'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Avi.Min'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clAqua
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end>
              Delphi2010OptionsMigrated = True
            end
            object DBCheckBox4: TDBCheckBox
              Left = 660
              Top = 205
              Width = 69
              Height = 16
              Hint = 'Si pasa a Acopio cuando figura enuna factura'
              TabStop = False
              Caption = 'Acopiable'
              DataField = 'ACOPIABLE'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 38
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object dbeDetalleAdicional: TDBEdit
              Left = 74
              Top = 49
              Width = 318
              Height = 33
              AutoSize = False
              CharCase = ecUpperCase
              DataField = 'DETALLE_STK_ADICIONAL'
              DataSource = DSBase
              TabOrder = 39
            end
            object edEtiqueta1: TEdit
              Left = 652
              Top = 420
              Width = 192
              Height = 21
              Anchors = [akLeft, akBottom]
              TabOrder = 40
              Text = 'edEtiqueta1'
            end
            object DBEdit12: TDBEdit
              Left = 3
              Top = 135
              Width = 65
              Height = 21
              Color = clInfoBk
              DataField = 'RUBRO_STK'
              DataSource = DSBase
              Enabled = False
              TabOrder = 41
            end
            object DBEdit13: TDBEdit
              Left = 679
              Top = 133
              Width = 169
              Height = 21
              DataField = 'CATEGORIAS_WEB'
              DataSource = DSBase
              TabOrder = 42
            end
            object DBEdit14: TDBEdit
              Left = 720
              Top = 50
              Width = 56
              Height = 21
              TabStop = False
              DataField = 'PRESENTACION_TOLERANCIA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 43
              OnExit = dbeReemplazoExit
            end
            object dbePlu_2: TDBEdit
              Left = 825
              Top = 109
              Width = 54
              Height = 21
              Hint = 'Posicion dentro del Almacen'
              TabStop = False
              DataField = 'PLU_2'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 44
              OnKeyDown = dbePLUKeyDown
            end
            object dbeDetalleCorto: TDBEdit
              Left = 397
              Top = 13
              Width = 176
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DETALLE_CORTO'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 45
              OnEnter = dbeDescripcionEnter
              OnExit = dbeDescripcionExit
              OnKeyDown = dbeDescripcionKeyDown
            end
            object dbcArticuloVariable: TJvDBComboEdit
              Left = 462
              Top = 420
              Width = 78
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 0
              DataField = 'CODIGO_ART_VARIABLE'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              Images = ImageListDos
              ButtonWidth = 24
              TabOrder = 47
              OnButtonClick = BuscarVariableExecute
              OnDblClick = dbcArticuloVariableDblClick
            end
            object DBImage1: TDBImage
              Left = 11
              Top = 35
              Width = 48
              Height = 47
              BorderStyle = bsNone
              DataField = 'FOTO'
              DataSource = DSBase
              Proportional = True
              Stretch = True
              TabOrder = 48
            end
            object DBEdit16: TDBEdit
              Left = 702
              Top = 88
              Width = 88
              Height = 21
              Hint = 'Posicion Gral'
              TabStop = False
              DataField = 'POSICION'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 49
              TextHint = 'Dias de Vto'
              OnExit = dbeReemplazoExit
            end
          end
          object SubPag2: TTabSheet
            Caption = 'Costos/Impuestos'
            ImageIndex = 1
            object Label30: TLabel
              Left = 3
              Top = 34
              Width = 94
              Height = 13
              Caption = 'Modo de Gravamen'
            end
            object Label38: TLabel
              Left = 3
              Top = 52
              Width = 24
              Height = 13
              Caption = 'Tasa'
            end
            object Label39: TLabel
              Left = 3
              Top = 121
              Width = 55
              Height = 13
              Caption = 'Sobre Tasa'
            end
            object Label4: TLabel
              Left = 536
              Top = 166
              Width = 35
              Height = 13
              Caption = 'Imp.Int.'
            end
            object dbtTasaIva: TDBText
              Left = 99
              Top = 78
              Width = 49
              Height = 17
              DataField = 'MUESTRATASAPORCENTAJE'
              DataSource = DSBase
            end
            object dbtSobreTasa: TDBText
              Left = 95
              Top = 121
              Width = 49
              Height = 17
              DataField = 'MUESTRASOBRETASAPROCENTAJE'
              DataSource = DSBase
            end
            object Label20: TLabel
              Left = 3
              Top = 209
              Width = 178
              Height = 13
              Caption = 'Politica de Precios Segun Lista'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label41: TLabel
              Left = 776
              Top = 121
              Width = 90
              Height = 13
              Caption = 'C.Sombra Gravado'
            end
            object Label42: TLabel
              Left = 784
              Top = 166
              Width = 82
              Height = 13
              Caption = 'C.Sombra Exento'
            end
            object Label43: TLabel
              Left = 753
              Top = 78
              Width = 113
              Height = 13
              Caption = 'F. Modif. Precio Sombra'
            end
            object spVerHistorial: TSpeedButton
              Left = 496
              Top = 183
              Width = 23
              Height = 22
              Hint = 'Historial de Precios Sombra'
              Action = VerPrecioSombra
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FF752E0F6D2C0F66290F6D2C0FFF00FFFF00FF0043B00042AC00389A003D
                9DFF00FFFF00FFFF00FFFF00FF803814803814C45000BD5304B54C0289350348
                25130B5EC7217ADC4C99EB2378E03A82D70148B0003C9AFF00FFFF00FFC76316
                D87623D87623FFFFFFFFFFFFDCA47035506B198CFBFFFFFFE5F2FFFFFFFFFFFF
                FF3B8BE50043B5FF00FFBD5D18E59247E59247FFFFFFD77D31D77D318C430C32
                7DBC2DA3FF1C8BF2FFFFFF0265E60265E6106FE60057D9003A96C96B21F8C28F
                FFFFFFFFFFFFFFFFFFFFFFFFBD9A7B48A3E139AFFF3AA5F7FFFFFFFFFFFF64AC
                F30367E60465EA0041A7CA7632F8C28FFBCEA4FFFFFFE5954EE5954EA367377A
                ADD75ECAFF3AADFFFFFFFF46A1F346A1F31278EB0B70EB004ABBCA7632EDB787
                F8C695FBCEA4FFFFFFD0DCD0AAA58A25472E275E4D1B6574539DC0FFFFFFFFFF
                FF4EA6F60C6EE0014AB6FF00FFCE7D3AF7D4B5FBCEA4A6966C2D491906560301
                6902005C02034C0A0C412D46879968BCFC238CEE0B5EC6FF00FFFF00FFCE7D3A
                C65F17B170352B501C02821001A40DCAF0CEAAE6B0079E0F0D720F043B200D57
                980754BD0754BDFF00FFFF00FFFF00FFFF00FF03480709701A0BB02BFFFFFFFF
                FFFFFFFFFF5BC969009A07015C05012F03FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF004A0518B04916AF412DB84F45C05CB1E6B6FFFFFF019E0903900A012F
                03FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF096B0E31BB6214AF4733BC5DFF
                FFFFFFFFFF20B032019D0A039C0B013502FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF2A9D3850C06E26B859FFFFFFC1EDD380D79727B54306A618037D0A0135
                02FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A9D388AE0AD5ECF89FF
                FFFFFFFFFFFFFFFF0BAD2A034807FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF2A9D383AAB4B75D18FD7F4E295E0B016A03B076A16034807FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0987130F
                871E087B16035606FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentShowHint = False
              ShowHint = True
            end
            object Label45: TLabel
              Left = 3
              Top = 166
              Width = 137
              Height = 13
              Caption = 'Costo Expresado en Moneda'
            end
            object lb1: TLabel
              Left = 168
              Top = 167
              Width = 70
              Height = 13
              Caption = 'Costo T. S/Iva'
            end
            object lb2: TLabel
              Left = 332
              Top = 167
              Width = 73
              Height = 13
              Caption = 'F.P.Total S/Iva'
            end
            object Label52: TLabel
              Left = 250
              Top = 167
              Width = 70
              Height = 13
              Caption = 'Costo T. C/Iva'
            end
            object Label53: TLabel
              Left = 414
              Top = 167
              Width = 73
              Height = 13
              Caption = 'F.P.Total C/Iva'
            end
            object DBText1: TDBText
              Left = 3
              Top = 3
              Width = 75
              Height = 17
              DataField = 'CODIGO_STK'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText2: TDBText
              Left = 84
              Top = 3
              Width = 390
              Height = 29
              DataField = 'DETALLE_STK'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object DBText5: TDBText
              Left = 536
              Top = 104
              Width = 89
              Height = 17
              Alignment = taRightJustify
              DataField = 'COSTO_EXENTO_P'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = FormCompra_2.pmOtros
            end
            object DBText6: TDBText
              Left = 647
              Top = 104
              Width = 89
              Height = 17
              Alignment = taRightJustify
              DataField = 'COSTO_GRAVADO_P'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label54: TLabel
              Left = 526
              Top = 85
              Width = 99
              Height = 13
              Caption = 'C.Pond. No Gravado'
            end
            object Label55: TLabel
              Left = 654
              Top = 85
              Width = 82
              Height = 13
              Caption = 'C.Pond. Gravado'
            end
            object SpeedButton1: TSpeedButton
              Left = 857
              Top = 228
              Width = 23
              Height = 22
              Hint = 'Ver Precios por Cantidades'
              Caption = '<>'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object Label58: TLabel
              Left = 3
              Top = 78
              Width = 24
              Height = 13
              Caption = 'Tasa'
            end
            object lbAvisoPrecio: TLabel
              Left = 3
              Top = 358
              Width = 343
              Height = 13
              Caption = 'Configurado No Cambiar Precio de Vta con Cambio de Costo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
              WordWrap = True
            end
            object Label77: TLabel
              Left = 527
              Top = 3
              Width = 62
              Height = 13
              Caption = 'Modo de IVA'
            end
            object Label93: TLabel
              Left = 552
              Top = 352
              Width = 165
              Height = 13
              Caption = 'En Uso de Articulos de Produccion'
            end
            object Label95: TLabel
              Left = 206
              Top = 209
              Width = 207
              Height = 13
              Caption = '(Color Azul=Modifica Precio de Vta Forzado)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBText7: TDBText
              Left = 656
              Top = 147
              Width = 89
              Height = 17
              Alignment = taRightJustify
              DataField = 'COSTO_EXENTO_P'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = FormCompra_2.pmOtros
            end
            object JvDBStatusLabel1: TJvDBStatusLabel
              Left = 668
              Top = 212
              Width = 96
              Height = 13
              DataSource = DatosStock.DSListaArt
              Style = lsRecordNo
              Alignment = taRightJustify
              Transparent = True
            end
            object Label115: TLabel
              Left = 526
              Top = 43
              Width = 21
              Height = 13
              Caption = 'FOB'
              FocusControl = DBEdit15
            end
            object dbrgClaseArticulo: TDBRadioGroup
              Left = 623
              Top = -1
              Width = 257
              Height = 80
              Caption = 'Clase de Art'#237'culo'
              Columns = 2
              Ctl3D = True
              DataField = 'Clase_Articulo'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Items.Strings = (
                'de Venta'
                'de Compra'
                'de Compra y Venta '
                'de Servicios/Gasto'
                'Financiero'
                'Inactivo'
                'Alquiler')
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              Values.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '0'
                '9')
              OnClick = dbrgClaseArticuloClick
            end
            object dbcTasa: TDBLookupComboBox
              Left = 3
              Top = 94
              Width = 145
              Height = 21
              DataField = 'Tasa_Iva'
              DataSource = DSBase
              KeyField = 'Codigo'
              ListField = 'DESCRIPCION'
              ListSource = DatosStock.DSBuscaIva1
              TabOrder = 0
            end
            object dbcSobreTasa: TDBLookupComboBox
              Left = 3
              Top = 138
              Width = 145
              Height = 21
              DataField = 'SobreTasa_Iva'
              DataSource = DSBase
              KeyField = 'Codigo'
              ListField = 'Descripcion'
              ListSource = DatosStock.DSBuscaIva2
              TabOrder = 1
            end
            object dbeImpuesto: TDBEdit
              Left = 535
              Top = 182
              Width = 90
              Height = 21
              Color = clBtnFace
              DataField = 'IMPUESTO_INTERNOS'
              DataSource = DSBase
              Enabled = False
              TabOrder = 3
            end
            object chbGravadoIB: TDBCheckBox
              Left = 631
              Top = 163
              Width = 126
              Height = 17
              Caption = 'Gravado en I.Brutos'
              DataField = 'GRAVADO_IB'
              DataSource = DSBase
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = chbGravadoIBClick
            end
            object dbcIngBruto: TDBLookupComboBox
              Left = 631
              Top = 182
              Width = 123
              Height = 21
              Color = clBtnFace
              DataField = 'TASA_IB'
              DataSource = DSBase
              Enabled = False
              KeyField = 'CODIGO'
              ListField = 'DESCRIPCION'
              ListSource = DatosStock.DSListaInBruto
              TabOrder = 5
            end
            object gbTablaPrecios: TGroupBox
              Left = 6
              Top = 376
              Width = 530
              Height = 67
              Caption = 'Datos si Se usa Precios Por Tabla de Referencia'
              TabOrder = 7
              object Label21: TLabel
                Left = 8
                Top = 16
                Width = 80
                Height = 13
                Caption = 'Tabla de Precios'
              end
              object Label22: TLabel
                Left = 305
                Top = 16
                Width = 33
                Height = 13
                Caption = 'Codigo'
              end
              object Label23: TLabel
                Left = 361
                Top = 16
                Width = 39
                Height = 13
                Caption = 'Precio 1'
              end
              object Label27: TLabel
                Left = 441
                Top = 16
                Width = 39
                Height = 13
                Caption = 'Precio 2'
              end
              object dbeMuestraTablaPrecio: TDBEdit
                Left = 72
                Top = 32
                Width = 217
                Height = 21
                Color = clInfoBk
                DataField = 'MUESTRATABLAPRECIODETALLE'
                DataSource = DSBase
                Enabled = False
                TabOrder = 1
              end
              object dbeMuestraPrecio2: TDBEdit
                Left = 440
                Top = 32
                Width = 73
                Height = 21
                Color = clInfoBk
                DataField = 'MUESTRATABLAPRECIO2'
                DataSource = DSBase
                Enabled = False
                TabOrder = 4
              end
              object dbeMuestraPrecio1: TDBEdit
                Left = 360
                Top = 32
                Width = 73
                Height = 21
                Color = clInfoBk
                DataField = 'MUESTRATABLAPRECIO1'
                DataSource = DSBase
                Enabled = False
                TabOrder = 3
              end
              object dbcTablaPrecio: TJvDBComboEdit
                Left = 8
                Top = 32
                Width = 57
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                ClickKey = 16397
                DataField = 'ID_TABLAPRECIOS'
                DataSource = DSBase
                Glyph.Data = {
                  4E000000424D4E000000000000003E000000280000000A000000040000000100
                  010000000000100000000000000000000000020000000200000000000000FFFF
                  FF00FFC000003300000033000000FFC00000}
                ButtonWidth = 24
                TabOrder = 0
                OnButtonClick = BuscarTablaPrecioExecute
                OnKeyDown = dbcTablaPrecioKeyDown
              end
              object dbcCodigoPrecio: TJvDBComboEdit
                Left = 304
                Top = 32
                Width = 49
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                ClickKey = 16397
                DataField = 'CODIGO_PRECIO'
                DataSource = DSBase
                Glyph.Data = {
                  4E000000424D4E000000000000003E000000280000000A000000040000000100
                  010000000000100000000000000000000000020000000200000000000000FFFF
                  FF00FFC000003300000033000000FFC00000}
                ButtonWidth = 24
                TabOrder = 2
                OnButtonClick = BuscarTablaPrecioDetalleExecute
                OnKeyDown = dbcCodigoPrecioKeyDown
              end
            end
            object dbeCostoGravadoSombra: TDBEdit
              Left = 776
              Top = 139
              Width = 90
              Height = 21
              DataField = 'COSTO_GRAVADO_SOMBRA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object dbeCostoExentoSombra: TDBEdit
              Left = 776
              Top = 182
              Width = 90
              Height = 21
              DataField = 'COSTO_EXENTO_SOMBRA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object FechaActulizacionPrecioSombra: TJvDBDateEdit
              Left = 760
              Top = 94
              Width = 106
              Height = 21
              DataField = 'FECHA_ACT_SOMBRA'
              DataSource = DSBase
              ButtonWidth = 31
              ShowNullDate = False
              TabOrder = 10
            end
            object dbcMoneda: TDBLookupComboBox
              Left = 3
              Top = 183
              Width = 145
              Height = 21
              DataField = 'MONEDA'
              DataSource = DSBase
              KeyField = 'ID'
              ListField = 'MONEDA'
              ListSource = DatosStock.DSBuscaMoneda
              TabOrder = 11
            end
            object dbcGravamen: TJvDBComboBox
              Left = 3
              Top = 51
              Width = 145
              Height = 21
              DataField = 'MODO_GRAVAMEN'
              DataSource = DSBase
              Items.Strings = (
                'Gravado'
                'Exento'
                'Mixto (Grav.y Exen.)'
                'Gravado con Imp.Internos'
                'Mixto con Impt.Internos'
                'No Gravado')
              TabOrder = 12
              Values.Strings = (
                'G'
                'E'
                'M'
                'I'
                'Y'
                'N')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              OnChange = dbcGravamenChange
            end
            object dbeCostoTotal: TDBEdit
              Left = 168
              Top = 183
              Width = 73
              Height = 21
              Color = clInfoBk
              DataField = 'COSTO_TOTAL_STK'
              DataSource = DSBase
              Enabled = False
              TabOrder = 14
            end
            object dbeCostoConIva: TDBEdit
              Left = 250
              Top = 183
              Width = 76
              Height = 21
              Color = clInfoBk
              DataField = 'MUESTRACOSTOCONIVA'
              DataSource = DSBase
              Enabled = False
              TabOrder = 15
            end
            object dbeFPTotal: TDBEdit
              Left = 332
              Top = 183
              Width = 76
              Height = 21
              Color = clInfoBk
              DataField = 'FIJACION_PRECIO_TOTAL'
              DataSource = DSBase
              Enabled = False
              TabOrder = 13
            end
            object dbeFPrecioConIvaTotal: TDBEdit
              Left = 414
              Top = 183
              Width = 76
              Height = 21
              Color = clInfoBk
              DataField = 'MUESTRAFIJACIONCONIVA'
              DataSource = DSBase
              Enabled = False
              TabOrder = 16
            end
            object dbgListaPrecios: TJvDBGrid
              Left = 3
              Top = 228
              Width = 851
              Height = 124
              DataSource = DatosStock.DSListaArt
              DrawingStyle = gdsGradient
              Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 6
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnColEnter = dbgListaPreciosColEnter
              OnDrawColumnCell = dbgListaPreciosDrawColumnCell
              OnEnter = dbgListaPreciosEnter
              OnKeyDown = dbgListaPreciosKeyDown
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'ID_CAB'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro.'
                  Width = 40
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'MUESTRALISTA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Lista de Precios'
                  Width = 228
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'COSTO_TOTAL'
                  Title.Alignment = taCenter
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'RECARGO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Rec.'
                  Width = 59
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'PRECIO_EXENTO'
                  Title.Alignment = taCenter
                  Width = 86
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'PRECIO_GRAVADO'
                  Title.Alignment = taCenter
                  Width = 76
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'IVA_IMPORTE'
                  Title.Alignment = taCenter
                  Width = 58
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRECIO'
                  Title.Alignment = taCenter
                  Title.Caption = '$ de Vta'
                  Width = 96
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'MUESTRACLONDE'
                  Title.Alignment = taCenter
                  Width = 73
                  Visible = True
                end>
            end
            object DBComboBox1: TDBComboBox
              Left = 526
              Top = 17
              Width = 78
              Height = 21
              DataField = 'MODO_IVA'
              DataSource = DSBase
              Items.Strings = (
                'A'
                'B'
                'C')
              TabOrder = 17
            end
            object dbgProduccion: TDBGrid
              Left = 542
              Top = 364
              Width = 328
              Height = 77
              BorderStyle = bsNone
              DataSource = DatosStock.DSEnArtProduccion
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 18
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgProduccionDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 67
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 160
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CANTIDAD_FISICA'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 65
                  Visible = True
                end>
            end
            object pnCostos: TPanel
              Left = 160
              Top = 29
              Width = 356
              Height = 138
              BevelOuter = bvNone
              ParentBackground = False
              TabOrder = 19
              object Label31: TLabel
                Left = 9
                Top = 6
                Width = 88
                Height = 13
                Caption = 'Costo No Gravado'
                FocusControl = dbeCostoNoGravado
              end
              object Label35: TLabel
                Left = 9
                Top = 49
                Width = 71
                Height = 13
                Caption = 'Costo Gravado'
              end
              object Label37: TLabel
                Left = 9
                Top = 92
                Width = 58
                Height = 13
                Caption = 'Costo c/IVA'
              end
              object Label50: TLabel
                Left = 91
                Top = 49
                Width = 15
                Height = 13
                Caption = 'Iva'
              end
              object Label32: TLabel
                Left = 192
                Top = 6
                Width = 85
                Height = 13
                Caption = 'F.Precio No Grav.'
              end
              object Label33: TLabel
                Left = 192
                Top = 49
                Width = 68
                Height = 13
                Caption = 'F.Precio Grav.'
              end
              object Label49: TLabel
                Left = 192
                Top = 92
                Width = 70
                Height = 13
                Caption = 'F.Precio c/IVA'
              end
              object Label51: TLabel
                Left = 274
                Top = 49
                Width = 15
                Height = 13
                Caption = 'Iva'
              end
              object dbeCostoNoGravado: TDBEdit
                Left = 9
                Top = 22
                Width = 71
                Height = 21
                DataField = 'COSTO_EXENTO_STK'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dbeCostoGravado: TDBEdit
                Left = 9
                Top = 65
                Width = 71
                Height = 21
                DataField = 'COSTO_GRAVADO_STK'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                PopupMenu = pmIVA
                TabOrder = 1
              end
              object dbeCostoFinal: TDBEdit
                Left = 9
                Top = 109
                Width = 71
                Height = 21
                DataField = 'COSTO_FINAL'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                PopupMenu = pmIVA
                TabOrder = 2
              end
              object dbeCostoIva: TDBEdit
                Left = 88
                Top = 65
                Width = 71
                Height = 21
                DataField = 'COSTO_IVA'
                DataSource = DSBase
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                PopupMenu = pmIVA
                TabOrder = 3
              end
              object dbeFPGravado: TDBEdit
                Left = 192
                Top = 65
                Width = 76
                Height = 21
                DataField = 'FIJACION_PRECIO_GRAVADO'
                DataSource = DSBase
                TabOrder = 4
              end
              object dbeFPnoGravado: TDBEdit
                Left = 192
                Top = 22
                Width = 76
                Height = 21
                DataField = 'FIJACION_PRECIO_EXENTO'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object dbeFPrecioConIva: TDBEdit
                Left = 192
                Top = 109
                Width = 76
                Height = 21
                DataField = 'FIJACION_PRECIO_FINAL'
                DataSource = DSBase
                TabOrder = 6
              end
              object dbeIvaFPrecio: TDBEdit
                Left = 274
                Top = 65
                Width = 67
                Height = 21
                DataField = 'FIJACION_PRECIO_IVA'
                DataSource = DSBase
                Enabled = False
                TabOrder = 7
              end
            end
            object chbPerciveIVA: TDBCheckBox
              Left = 522
              Top = 117
              Width = 116
              Height = 43
              Caption = 'Aplica Percep. IVA'#13#10'Res:5329'
              DataField = 'PERCIBE_IVA'
              DataSource = DSBase
              TabOrder = 20
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              WordWrap = True
              OnClick = chbPerciveIVAClick
            end
            object dbcPercepIVA: TDBLookupComboBox
              Left = 641
              Top = 120
              Width = 123
              Height = 21
              Color = clBtnFace
              DataField = 'ID_TASA_PERCEP_IVA'
              DataSource = DSBase
              DropDownRows = 12
              DropDownWidth = 200
              Enabled = False
              KeyField = 'CODIGO'
              ListField = 'DESCRIPCION;TASA'
              ListSource = DatosStock.DSPercepIVA
              TabOrder = 21
            end
            object DBEdit15: TDBEdit
              Left = 526
              Top = 58
              Width = 91
              Height = 21
              DataField = 'FOB'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 22
            end
          end
          object SubPag3: TTabSheet
            Caption = 'Movimiento de Stock'
            ImageIndex = 2
            OnMouseMove = SubPag3MouseMove
            object Label24: TLabel
              Left = 496
              Top = 340
              Width = 31
              Height = 13
              Caption = 'Desde'
            end
            object Label25: TLabel
              Left = 496
              Top = 372
              Width = 28
              Height = 13
              Caption = 'Hasta'
            end
            object Label2: TLabel
              Left = 215
              Top = 398
              Width = 105
              Height = 13
              Caption = '(F3= Ver Movimientos)'
            end
            object lbEntran: TLabel
              Left = 537
              Top = 278
              Width = 31
              Height = 13
              Caption = 'Entran'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbSalen: TLabel
              Left = 642
              Top = 278
              Width = 27
              Height = 13
              Caption = 'Salen'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbUnidades: TLabel
              Left = 812
              Top = 278
              Width = 22
              Height = 13
              Caption = 'Unid'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbSaldo: TLabel
              Left = 714
              Top = 278
              Width = 33
              Height = 13
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dbgMovimientos: TDBGrid
              Left = 0
              Top = 49
              Width = 895
              Height = 223
              Align = alTop
              DataSource = DatosStock.DSMovStock
              FixedColor = clMaroon
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              PopupMenu = ppmMovimientos
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = dbgMovimientosDrawColumnCell
              OnDblClick = dbgMovimientosDblClick
              OnMouseMove = dbgMovimientosMouseMove
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ID'
                  Title.Alignment = taCenter
                  Title.Caption = 'Or.'
                  Title.Color = clBtnFace
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clPurple
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 73
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'FECHA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Fecha'
                  Title.Color = clBtnFace
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clPurple
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 80
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'CLASECPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tc'
                  Title.Color = clBtnFace
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clPurple
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 37
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro.Cpbte.'
                  Title.Color = clBtnFace
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clPurple
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 94
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Detalle'
                  Title.Color = clBtnFace
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clPurple
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 205
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ENTRA'
                  Title.Alignment = taCenter
                  Title.Color = clBtnFace
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clPurple
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SALE'
                  Title.Alignment = taCenter
                  Title.Color = clBtnFace
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clPurple
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 102
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'TIPOOPERACION'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
                  Title.Color = clBtnFace
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clPurple
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 51
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UNIDADES'
                  Title.Alignment = taCenter
                  Title.Color = clBtnFace
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clPurple
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 96
                  Visible = True
                end>
            end
            object rgTipoOp: TRadioGroup
              Left = 7
              Top = 283
              Width = 313
              Height = 109
              BiDiMode = bdLeftToRight
              Caption = 'Tipo Operaci'#243'n'
              Columns = 3
              ItemIndex = 0
              Items.Strings = (
                'Todas'
                'Ventas'
                'Compras'
                'Transferencias'
                'Ajustes'
                'Producci'#243'n'
                'Recepci'#243'n'
                'Rto.Obra'
                'RMA (Saliente)'
                'RMA (Entrante)'
                'Acopio Entrega'
                'Remitos'
                'Remitos C/Mov')
              ParentBiDiMode = False
              TabOrder = 3
              OnClick = rgTipoOpClick
            end
            object btVerMov: TBitBtn
              Left = 3
              Top = 398
              Width = 90
              Height = 25
              Action = TraerMovimientos
              Caption = 'Ver Movim.'
              ImageIndex = 0
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
              TabOrder = 4
            end
            object UpDown1: TUpDown
              Left = 628
              Top = 336
              Width = 16
              Height = 20
              Hint = 'Cambia el Per'#237'odo'
              Min = -32768
              Max = 32767
              ParentShowHint = False
              Position = 100
              ShowHint = True
              TabOrder = 5
              OnClick = UpDown1Click
            end
            object BitBtn1: TBitBtn
              Left = 99
              Top = 398
              Width = 90
              Height = 25
              Action = ImprimirMov
              Caption = 'Impr.Mov'
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
            object rgUnidades: TRadioGroup
              Left = 375
              Top = 313
              Width = 110
              Height = 58
              Caption = 'Ver en Unidades de'
              ItemIndex = 0
              Items.Strings = (
                'Venta'
                'Compra')
              TabOrder = 7
              OnClick = rgUnidadesClick
            end
            object Desde: TJvDateEdit
              Left = 537
              Top = 336
              Width = 90
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
              ButtonWidth = 16
              PopupColor = clBtnFace
              ShowNullDate = False
              TabOrder = 1
              OnAcceptDate = DesdeAcceptDate
            end
            object Hasta: TJvDateEdit
              Left = 537
              Top = 368
              Width = 90
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
              ButtonWidth = 16
              PopupColor = clBtnFace
              ShowNullDate = False
              TabOrder = 2
            end
            object rgPasoFecha: TRadioGroup
              Left = 679
              Top = 318
              Width = 99
              Height = 55
              Caption = 'Paso de la Fecha'
              ItemIndex = 1
              Items.Strings = (
                'Dia por Dia'
                'Mes a Mes')
              TabOrder = 8
            end
            object chbSincronizarFechas: TCheckBox
              Left = 496
              Top = 316
              Width = 126
              Height = 17
              Caption = 'Fechas Sincronizadas'
              TabOrder = 9
            end
            object BitBtn4: TBitBtn
              Left = 738
              Top = 398
              Width = 125
              Height = 25
              Action = SimularArmadoMov
              Caption = 'Simular Mov.Temp'
              ImageIndex = 0
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
              TabOrder = 10
            end
            object chRemitos: TCheckBox
              Left = 375
              Top = 377
              Width = 81
              Height = 17
              Caption = 'Traer Rtos'
              TabOrder = 11
            end
            object pnCabcerarMovim: TPanel
              Left = 0
              Top = 0
              Width = 895
              Height = 49
              Align = alTop
              BevelOuter = bvNone
              Color = clMenuHighlight
              ParentBackground = False
              TabOrder = 12
              object DBText3: TDBText
                Left = 16
                Top = 12
                Width = 65
                Height = 17
                DataField = 'Codigo_Stk'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clYellow
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 7
                Top = 31
                Width = 141
                Height = 13
                Caption = 'Movimientos del Art'#237'culo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText4: TDBText
                Left = 78
                Top = 12
                Width = 465
                Height = 17
                DataField = 'Detalle_Stk'
                DataSource = DSBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clYellow
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 549
                Top = 13
                Width = 62
                Height = 16
                Align = alCustom
                Caption = 'Dep'#243'sitos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RxDBDeposito: TJvDBLookupCombo
                Left = 617
                Top = 10
                Width = 208
                Height = 23
                DropDownCount = 12
                DropDownWidth = 250
                DisplayEmpty = 'Todos'
                LookupField = 'Id'
                LookupDisplay = 'Nombre'
                LookupSource = DatosStock.DSListaDepositos
                TabOrder = 0
                OnChange = RxDBDepositoChange
              end
            end
            object BitBtn8: TBitBtn
              Left = 576
              Top = 398
              Width = 156
              Height = 25
              Action = ReemplazarArticulo
              Caption = 'Reemplazar Con Movimientos'
              TabOrder = 13
            end
          end
          object SubPag4: TTabSheet
            Caption = 'Nros.de Series'
            ImageIndex = 3
            object dbtCodigo_Stk1: TDBText
              Left = 14
              Top = 12
              Width = 65
              Height = 17
              DataField = 'Codigo_Stk'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object dbtDetalle_Stk1: TDBText
              Left = 88
              Top = 12
              Width = 267
              Height = 17
              DataField = 'Detalle_Stk'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBStatusLabel2: TJvDBStatusLabel
              Left = 247
              Top = 222
              Width = 85
              Height = 13
              DataSource = DatosStock.DSSeries
              Captions.Strings = (
                ' ')
              Style = lsRecordNo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ShadowPos = spLeftTop
              Transparent = True
            end
            object dbgSerie: TDBGrid
              Left = 247
              Top = 47
              Width = 337
              Height = 169
              DataSource = DatosStock.DSSeries
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGOSERIE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro.Serie'
                  Visible = True
                end>
            end
            object dbgMovSerie: TDBGrid
              Left = 3
              Top = 273
              Width = 601
              Height = 104
              DataSource = DatosStock.DSMovSeries
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgMovSerieDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'FECHA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Fecha'
                  Width = 69
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TIPOCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tp'
                  Width = 27
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NROCPBTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro.Cpbte'
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MUESTRADEPOSITO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Ubicacion'
                  Width = 118
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Detalle'
                  Width = 261
                  Visible = True
                end>
            end
            object btSeries: TBitBtn
              Left = 280
              Top = 391
              Width = 94
              Height = 25
              Action = TraerSeries
              Caption = 'Ver Series'
              Glyph.Data = {
                06020000424D0602000000000000760000002800000028000000140000000100
                0400000000009001000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFFFFFF333333333300000000033333333333777777777F33333
                333330F8888880333333333337F3333337F33333333330F88888803333333333
                37F3333337F33333333330F8888880333333333337F3333337F33333333330FF
                FFFFF0333333333337FFFFFFF7F33333333330CCCCCCC0333333333337777777
                77F33333333330000000003333333333377777777733333FFFFF333333333333
                330000033333333333333377777F333333333333330FFF03333333333333337F
                FF7F333333333333300000033333333333333777777333333333333303333333
                33333333FFFF733FFFFF33333330000033000003333333377777FF77777F3333
                3330FFF0000FFF0333333337FFF7777FFF7F3333333000003300000333333337
                77773F7777733333333333330333333333333333333373FFFFFF333333333333
                300000033333333333333777777F333333333333330FFF03333333333333337F
                FF7F333333333333330000033333333333333377777333333333333333333333
                33333333333333333333}
              NumGlyphs = 2
              TabOrder = 2
            end
            object GroupBox1: TGroupBox
              Left = 8
              Top = 38
              Width = 233
              Height = 89
              Caption = 'Ingreso por'
              Enabled = False
              TabOrder = 3
              object dbeFecha: TDBEdit
                Left = 8
                Top = 25
                Width = 73
                Height = 21
                Color = clInfoBk
                DataField = 'FECHAINGRESO'
                DataSource = DatosStock.DSSeries
                TabOrder = 0
              end
              object dbeClase: TDBEdit
                Left = 88
                Top = 25
                Width = 25
                Height = 21
                Color = clInfoBk
                DataField = 'CLASECPBTE_INGRESO'
                DataSource = DatosStock.DSSeries
                TabOrder = 1
              end
              object dbeNumero: TDBEdit
                Left = 120
                Top = 25
                Width = 89
                Height = 21
                Color = clInfoBk
                DataField = 'NRO_CPBTE_INGRESO'
                DataSource = DatosStock.DSSeries
                TabOrder = 2
              end
              object dbeProv: TDBEdit
                Left = 8
                Top = 57
                Width = 201
                Height = 21
                Color = clInfoBk
                DataField = 'MUESTRAPROVEEDORFINAL'
                DataSource = DatosStock.DSSeries
                TabOrder = 3
              end
            end
            object GroupBox2: TGroupBox
              Left = 8
              Top = 127
              Width = 233
              Height = 89
              Caption = 'Egreso por'
              Enabled = False
              TabOrder = 4
              object DBEdit1: TDBEdit
                Left = 8
                Top = 25
                Width = 73
                Height = 21
                Color = clInfoBk
                DataField = 'FECHAEGRESO'
                DataSource = DatosStock.DSSeries
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 88
                Top = 25
                Width = 25
                Height = 21
                Color = clInfoBk
                DataField = 'CLASECPBTE_EGRESO'
                DataSource = DatosStock.DSSeries
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 120
                Top = 25
                Width = 89
                Height = 21
                Color = clInfoBk
                DataField = 'NRO_CPBTE_EGRESO'
                DataSource = DatosStock.DSSeries
                TabOrder = 2
              end
              object DBEdit7: TDBEdit
                Left = 8
                Top = 57
                Width = 201
                Height = 21
                Color = clInfoBk
                DataField = 'MUESTRACLIENTE'
                DataSource = DatosStock.DSSeries
                TabOrder = 3
              end
            end
            object rgTipo: TRadioGroup
              Left = 16
              Top = 383
              Width = 258
              Height = 42
              Caption = 'Ver los Movimientos de '
              Columns = 3
              ItemIndex = 2
              Items.Strings = (
                'Todos'
                'Entregados'
                'Disponibles')
              TabOrder = 5
              OnClick = rgTipoClick
            end
            object pnAdicionalSeries: TPanel
              Left = 585
              Top = 47
              Width = 242
              Height = 170
              Color = clMoneyGreen
              ParentBackground = False
              TabOrder = 6
              TabStop = True
              object edAdicional_4: TDBEdit
                Left = 5
                Top = 141
                Width = 235
                Height = 21
                DataField = 'DATOS_ADICIONAL4'
                DataSource = DatosStock.DSSeries
                TabOrder = 3
              end
              object edAdicional_3: TDBEdit
                Left = 5
                Top = 99
                Width = 235
                Height = 21
                DataField = 'DATOS_ADICIONAL3'
                DataSource = DatosStock.DSSeries
                TabOrder = 2
              end
              object edAdicional_2: TDBEdit
                Left = 5
                Top = 57
                Width = 235
                Height = 21
                DataField = 'DATOS_ADICIONAL2'
                DataSource = DatosStock.DSSeries
                TabOrder = 1
              end
              object edAdicional_1: TDBEdit
                Left = 5
                Top = 16
                Width = 235
                Height = 21
                DataField = 'DATOS_ADICIONAL1'
                DataSource = DatosStock.DSSeries
                TabOrder = 0
              end
            end
          end
          object SubPag5: TTabSheet
            Caption = 'Historial del Precios '
            ImageIndex = 4
            object dbtCodigo_Stk2: TDBText
              Left = 14
              Top = 12
              Width = 65
              Height = 17
              DataField = 'Codigo_Stk'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object dbtDetalle_Stk2: TDBText
              Left = 89
              Top = 12
              Width = 267
              Height = 17
              DataField = 'Detalle_Stk'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Panel3: TPanel
              Left = 12
              Top = 310
              Width = 597
              Height = 83
              Enabled = False
              TabOrder = 0
              object Label18: TLabel
                Left = 8
                Top = 4
                Width = 32
                Height = 13
                Caption = 'Motivo'
              end
              object Label19: TLabel
                Left = 6
                Top = 39
                Width = 62
                Height = 13
                Caption = 'Responsable'
              end
              object DBEdit5: TDBEdit
                Left = 6
                Top = 18
                Width = 329
                Height = 21
                DataField = 'MOTIVO'
                DataSource = DatosStock.DSStockHistorial
                TabOrder = 0
              end
              object DBEdit4: TDBEdit
                Left = 7
                Top = 53
                Width = 329
                Height = 21
                DataField = 'USUARIO'
                DataSource = DatosStock.DSStockHistorial
                TabOrder = 1
              end
            end
            object DBGrid1: TDBGrid
              Left = 12
              Top = 37
              Width = 597
              Height = 267
              Color = clWhite
              DataSource = DatosStock.DSStockHistorial
              DrawingStyle = gdsClassic
              FixedColor = clNavy
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              PopupMenu = pmHistorial
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'FECHA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 124
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COSTO_OLD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Costo Viejo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 106
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COSTO_NEW'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Costo Nuevo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 109
                  Visible = True
                end
                item
                  Color = clNavy
                  Expanded = False
                  FieldName = 'FPRECIO_OLD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clLime
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'F.Pre.Viejo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 108
                  Visible = True
                end
                item
                  Color = clNavy
                  Expanded = False
                  FieldName = 'FPRECIO_NEW'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clLime
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'F.Pre.Nuevo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clYellow
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 101
                  Visible = True
                end>
            end
          end
          object SubPag6: TTabSheet
            Caption = 'Historial de Compras'
            ImageIndex = 5
            object Label6: TLabel
              Left = 3
              Top = 22
              Width = 156
              Height = 13
              Caption = 'Ultimas Compras de este Art'#237'culo'
            end
            object Label46: TLabel
              Left = 3
              Top = 322
              Width = 92
              Height = 13
              Caption = 'Codigo Facturaci'#243'n'
              FocusControl = DBEdit6
            end
            object Label47: TLabel
              Left = 219
              Top = 322
              Width = 88
              Height = 13
              Caption = 'Codigo Referencia'
              FocusControl = DBEdit8
            end
            object Label48: TLabel
              Left = 424
              Top = 322
              Width = 69
              Height = 13
              Caption = 'Codigo Interno'
              FocusControl = DBEdit9
            end
            object dbtCodigo_Stk: TDBText
              Left = 14
              Top = 3
              Width = 65
              Height = 17
              DataField = 'Codigo_Stk'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object dbtDetalle_Stk: TDBText
              Left = 85
              Top = 3
              Width = 267
              Height = 17
              DataField = 'Detalle_Stk'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label94: TLabel
              Left = 616
              Top = 413
              Width = 95
              Height = 13
              Caption = 'Tabla: ProveeStock'
            end
            object dbgProveedores: TDBGrid
              Left = 0
              Top = 41
              Width = 661
              Height = 244
              TabStop = False
              DataSource = DatosStock.DSProStock
              DefaultDrawing = False
              DrawingStyle = gdsGradient
              FixedColor = clGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnColEnter = dbgProveedoresColEnter
              OnDrawColumnCell = dbgProveedoresDrawColumnCell
              OnEditButtonClick = dbgProveedoresEditButtonClick
              OnKeyDown = dbgProveedoresKeyDown
              OnKeyPress = dbgProveedoresKeyPress
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'CODIGO_PROVEEDOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cod.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 62
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'MUESTRAPROVEEDOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Proveedor'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 238
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COSTO_BRUTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'C.Bruto'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCUENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Dsto.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COSTO_NETO'
                  Title.Alignment = taCenter
                  Title.Caption = 'C.Neto'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 72
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'ULTIMA_COMPRA'
                  Title.Alignment = taCenter
                  Title.Caption = 'U.Compra'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'RANKING'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 41
                  Visible = True
                end>
            end
            object Panel2: TPanel
              Left = 3
              Top = 374
              Width = 306
              Height = 35
              BevelInner = bvLowered
              BevelOuter = bvNone
              Enabled = False
              TabOrder = 1
              object Label1: TLabel
                Left = 32
                Top = 10
                Width = 68
                Height = 13
                Caption = 'Ultima Factura'
              end
              object dbeNroCpbte: TDBEdit
                Left = 141
                Top = 7
                Width = 150
                Height = 21
                Color = 16776176
                DataField = 'NROCPBTE'
                DataSource = DatosStock.DSProStock
                TabOrder = 0
              end
            end
            object DBEdit6: TDBEdit
              Left = 3
              Top = 338
              Width = 166
              Height = 21
              DataField = 'CODIGO_FACTURACION'
              DataSource = DatosStock.DSProStock
              TabOrder = 2
            end
            object DBEdit8: TDBEdit
              Left = 219
              Top = 338
              Width = 166
              Height = 21
              DataField = 'CODIGO_REFERENCIA'
              DataSource = DatosStock.DSProStock
              TabOrder = 3
            end
            object DBEdit9: TDBEdit
              Left = 424
              Top = 341
              Width = 166
              Height = 21
              DataField = 'CODIGO_INTERNO'
              DataSource = DatosStock.DSProStock
              TabOrder = 4
            end
            object bt1: TBitBtn
              Left = 499
              Top = 291
              Width = 157
              Height = 25
              Action = MarcarProveedorDefecto
              Caption = 'Marcar Prov. por Def.'
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000010000FF00FF00761E
                07007F1E0100491F3F00811E0000111FB8000566950003689A00086B9A000268
                A3000274A9000479AF00011FFA000120FA00092AFA000C2EFA00284BFB002B4D
                FB003557FB003859FB003D5DFB000788BC00108BBC000386C100058BC7000791
                C5001CAAD30031B5D30030B0DA006480FB00758EFC0012CBFE0030C9E90020CE
                FE003FE3FE0048CFF20054DEFF0055F6FE005FFEFF0074E0F80068F6FF0073FA
                FE0078FBFE007FFEFF008097FC00A5B6FC00AABAFC0083FAFB0089FBFE0092FF
                FF009FFBFE0098FFFF00A7E9F300A3F3FF00A0FFFF00B6F2FF00B7FFFF00CAD4
                FE00CED7FE00DCE3FE00C6FFFF00DAF8FF00DCFFFF00EAEEFE00E5FAFF00EDFA
                FC00F0FFFF00F8FAFE00FBFFFF00FEFEFE000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                04040404040404040000000006060606044545451E2D45040000000A201F2124
                0445451D0C14450400000A29221F21240439100C100D390400000A29221F2124
                04140E2E3F0E130400000A29221F2124043B3945452C0C0300000A3235373D40
                044545454545140C00000A341A19151604040404040401050C000A1B221F2124
                271C0907000000000C0C0A29221F2124271C170600000000000C0A29221F2124
                271C17060000000000000A29221F2124271C17060000000000000A2A2825262A
                302318060000000000000A45423C363232312506000000000000000B423D3832
                302F080000000000000000000A0A0A0A0A0A0000000000000000}
              TabOrder = 5
            end
            object BitBtn3: TBitBtn
              Left = 336
              Top = 291
              Width = 157
              Height = 25
              Action = BorrarStockProv
              Caption = 'Borrar Art. del Proveedor'
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000010000FF00FF000000
                9A00001DEC000022F1000029F900002EFC000236FF00083CFF001248FF001B50
                FF00285BFF003264FF003E6EFF004474FF000D80AA000A82AF001385AF000682
                B600078DBB002692BF000C92C000089DCF00129ECA000DA2D40011A7D20020A2
                CB0035A7CD0030BCDD0044BADD0023D6FD0035D3F70035D4F80036D9FE004AC5
                DD0049C1E30049D5EE0063DAF50059EAFE006FE6FF006FF8FF0072F9FE007AFE
                FF0092CEE4008DE7FA0082F8FF008CFBFE0091FCFE0097FEFF009BFBFC00BAEE
                F600A0FCFE00A8FFFF00ADFFFF00B6F6FF00B3FCFE00B4FFFF00C6F5FF00C7FF
                FF00D3FFFF00E1F8FD00E4FFFF00F1FBFD00F4FFFF00FCFFFF00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000E0E0E0E0E0E00000000000000000012231D20
                262B1C0E00000000000000122D251D1E0101010101010101000000122D251D1E
                010C0A0806040201000000122D251D1F010D0B0907040301000000123635383B
                010101010101010100000012311B1816191A132A0E0000000000001221251D20
                262B22110E000000000000122D251D20262B22150E000000000000122D251D20
                262B22150E000000000000122D251D20262B22150E000000000000122E2C2729
                2E3224170E000000000000123F3E3A36363434270E00000000000000143E3B39
                3432301000000000000000000012121212121200000000000000}
              TabOrder = 6
            end
          end
          object tbImagenes: TTabSheet
            Caption = 'Imagenes'
            ImageIndex = 6
            object imgFoto: TImage
              Left = 532
              Top = 15
              Width = 332
              Height = 329
              Proportional = True
              Stretch = True
              Transparent = True
            end
            object Button1: TButton
              Left = 3
              Top = 351
              Width = 86
              Height = 25
              Caption = 'Cargar Imagen'
              TabOrder = 1
              OnClick = Button1Click
            end
            object dbgFotos: TJvDBGrid
              Left = 3
              Top = 15
              Width = 427
              Height = 322
              DataSource = DatosStock.DSStockFotos
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              OnCheckIfBooleanField = dbgFotosCheckIfBooleanField
              Columns = <
                item
                  Expanded = False
                  FieldName = 'FOTO'
                  Title.Caption = 'Imagen en '
                  Width = 364
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'POR_DEFECTO'
                  Title.Caption = 'Def.'
                  Width = 29
                  Visible = True
                end>
            end
          end
          object tsGastos: TTabSheet
            Caption = 'Relacion Articulo - Gasto'
            ImageIndex = 7
            object Label60: TLabel
              Left = 319
              Top = 17
              Width = 80
              Height = 13
              Caption = 'Rubro de Gastos'
            end
            object Label61: TLabel
              Left = 3
              Top = 17
              Width = 85
              Height = 13
              Caption = 'Cuentas de Gasto'
            end
            object Label98: TLabel
              Left = 3
              Top = 77
              Width = 84
              Height = 13
              Caption = 'Descripcion Corta'
            end
            object Label111: TLabel
              Left = 3
              Top = 191
              Width = 86
              Height = 13
              Caption = 'Descripcion Larga'
            end
            inline FrameCtaContable1: TFrameCtaContable
              Left = 331
              Top = 371
              Width = 542
              Height = 70
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              AutoSize = True
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Padding.Left = 5
              Padding.Top = 5
              Padding.Bottom = 5
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              ExplicitLeft = 331
              ExplicitTop = 371
              ExplicitWidth = 542
              ExplicitHeight = 70
              inherited pnBase: TPanel
                Left = 5
                Top = 5
                Width = 537
                Height = 60
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                StyleElements = [seFont, seClient, seBorder]
                ExplicitLeft = 5
                ExplicitTop = 5
                ExplicitWidth = 537
                ExplicitHeight = 60
                inherited dbtNombre: TDBText
                  Left = 91
                  Top = 21
                  Width = 390
                  Height = 18
                  Margins.Left = 5
                  Margins.Top = 5
                  Margins.Right = 5
                  Margins.Bottom = 5
                  DataSource = FrameCtaContable1.DSCtaContableCompra
                  StyleElements = [seFont, seClient, seBorder]
                  ExplicitLeft = 91
                  ExplicitTop = 21
                  ExplicitWidth = 390
                  ExplicitHeight = 18
                end
                inherited Label1: TLabel
                  Margins.Left = 5
                  Margins.Top = 5
                  Margins.Right = 5
                  Margins.Bottom = 5
                  StyleElements = [seFont, seClient, seBorder]
                end
                inherited ceCodigo: TJvDBComboEdit
                  Width = 73
                  Height = 21
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 5
                  Margins.Bottom = 5
                  StyleElements = [seFont, seClient, seBorder]
                  DataSource = FrameCtaContable1.DSCtaContableCompra
                  OnButtonClick = FrameCtaContable1ceCodigoButtonClick
                  OnKeyDown = FrameCtaContable1ceCodigoKeyDown
                  OnKeyPress = FrameCtaContable1ceCodigoKeyPress
                  ExplicitWidth = 73
                  ExplicitHeight = 21
                end
              end
            end
            object JvDBComboEdit1: TJvDBComboEdit
              Left = 3
              Top = 34
              Width = 64
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              ClickKey = 16397
              DataField = 'RUBRO_CTA_GASTO'
              DataSource = DSBase
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              ButtonWidth = 24
              TabOrder = 1
              OnButtonClick = BuscarCtaGastoExecute
              OnKeyDown = RxDBCRubroKeyDown
            end
            object DBEdit10: TDBEdit
              Left = 76
              Top = 34
              Width = 209
              Height = 21
              Color = clInfoBk
              DataField = 'MUESTRACTAGASTO'
              DataSource = DSBase
              Enabled = False
              TabOrder = 2
            end
            object DBEdit11: TDBEdit
              Left = 319
              Top = 34
              Width = 209
              Height = 21
              Color = clInfoBk
              DataField = 'MUESTRARUBROGASTO'
              DataSource = DSBase
              Enabled = False
              TabOrder = 3
            end
            object DBMemo1: TDBMemo
              Left = 3
              Top = 96
              Width = 496
              Height = 89
              DataField = 'DESCRIPCION_CORTA'
              DataSource = DSBase
              TabOrder = 4
            end
            object DBMemo2: TDBMemo
              Left = 3
              Top = 210
              Width = 496
              Height = 95
              DataField = 'DESCRIPCION_LARGA'
              DataSource = DSBase
              TabOrder = 5
            end
          end
          object tsArticulosTrazables: TTabSheet
            Caption = 'Art.Trazables'
            ImageIndex = 8
            object dbgTrazables: TDBGrid
              Left = 0
              Top = 0
              Width = 895
              Height = 385
              Align = alTop
              DataSource = DatosStock.DSTrazables
              DrawingStyle = gdsGradient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgTrazablesDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGO_STK'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 63
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE_STK'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE_RUBRO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 191
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DETALLE_SUBRUBRO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlue
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 201
                  Visible = True
                end>
            end
            object BitBtn5: TBitBtn
              Left = 21
              Top = 391
              Width = 75
              Height = 29
              Action = Buscar
              Caption = '&Buscar'
              TabOrder = 1
              OnClick = BitBtn5Click
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Trazabilidad'
            ImageIndex = 9
            object cxGridLotes: TcxGrid
              Left = 0
              Top = 0
              Width = 895
              Height = 409
              Align = alTop
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'MoneyTwins'
              object cxGridLotesDBTableView1: TcxGridDBTableView
                DataController.DataSource = DatosStock.DSLotes
                DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
                OptionsCustomize.ColumnHorzSizing = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 30
                object cxGridLotesDBTableView1ID: TcxGridDBColumn
                  DataBinding.FieldName = 'ID'
                  Visible = False
                  Options.Editing = False
                end
                object cxGridLotesDBTableView1ID_COMPROBANTE: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_COMPROBANTE'
                  Visible = False
                  Options.Editing = False
                end
                object cxGridLotesDBTableView1CODIGO: TcxGridDBColumn
                  DataBinding.FieldName = 'CODIGO'
                  Visible = False
                  Options.Editing = False
                end
                object cxGridLotesDBTableView1ID_DETALLE_CPBTE: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_DETALLE_CPBTE'
                  Visible = False
                  Options.Editing = False
                end
                object cxGridLotesDBTableView1LOTE: TcxGridDBColumn
                  DataBinding.FieldName = 'LOTE'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 68
                end
                object cxGridLotesDBTableView1DESPACHO: TcxGridDBColumn
                  DataBinding.FieldName = 'DESPACHO'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 168
                end
                object cxGridLotesDBTableView1FECHA_ENTRADA: TcxGridDBColumn
                  DataBinding.FieldName = 'FECHA_ENTRADA'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 110
                end
                object cxGridLotesDBTableView1FECHA_VTO: TcxGridDBColumn
                  DataBinding.FieldName = 'FECHA_VTO'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 116
                end
                object cxGridLotesDBTableView1CANTIDAD: TcxGridDBColumn
                  DataBinding.FieldName = 'CANTIDAD'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridLotesDBTableView1SALDO: TcxGridDBColumn
                  DataBinding.FieldName = 'SALDO'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
              end
              object cxGridLotesTableView1: TcxGridTableView
              end
              object cxGridLotesDBTableView2: TcxGridDBTableView
                OnDblClick = cxGridLotesDBTableView2DblClick
                DataController.DataSource = DatosStock.DSMovLote
                DataController.DetailKeyFieldNames = 'ID_LOTE'
                DataController.KeyFieldNames = 'ID'
                DataController.MasterKeyFieldNames = 'ID'
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    FieldName = 'ENTRA'
                    Column = cxGridLotesDBTableView2ENTRA
                  end
                  item
                    Kind = skSum
                    FieldName = 'SALE'
                    Column = cxGridLotesDBTableView2SALE
                  end>
                OptionsCustomize.ColumnHorzSizing = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object cxGridLotesDBTableView2ID: TcxGridDBColumn
                  DataBinding.FieldName = 'ID'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridLotesDBTableView2ID_LOTE: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_LOTE'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridLotesDBTableView2CODIGO: TcxGridDBColumn
                  DataBinding.FieldName = 'CODIGO'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridLotesDBTableView2FECHA: TcxGridDBColumn
                  DataBinding.FieldName = 'FECHA'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 90
                end
                object cxGridLotesDBTableView2ID_COMPROBANTE: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_COMPROBANTE'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridLotesDBTableView2ID_DETALLE_CPBTE: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_DETALLE_CPBTE'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridLotesDBTableView2TIPO_COMPROBANTE: TcxGridDBColumn
                  DataBinding.FieldName = 'TIPO_COMPROBANTE'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 30
                end
                object cxGridLotesDBTableView2MUESTRANOMBRE: TcxGridDBColumn
                  DataBinding.FieldName = 'MUESTRANOMBRE'
                end
                object cxGridLotesDBTableView2MUESTRANROCPBTE: TcxGridDBColumn
                  DataBinding.FieldName = 'MUESTRANROCPBTE'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridLotesDBTableView2MUESTRAOPERACION: TcxGridDBColumn
                  DataBinding.FieldName = 'MUESTRAOPERACION'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridLotesDBTableView2TIPO: TcxGridDBColumn
                  DataBinding.FieldName = 'TIPO'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
                object cxGridLotesDBTableView2ENTRA: TcxGridDBColumn
                  DataBinding.FieldName = 'ENTRA'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 50
                end
                object cxGridLotesDBTableView2SALE: TcxGridDBColumn
                  DataBinding.FieldName = 'SALE'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 50
                end
                object cxGridLotesDBTableView2DEPOSITO: TcxGridDBColumn
                  DataBinding.FieldName = 'DEPOSITO'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Width = 60
                end
                object cxGridLotesDBTableView2MUESTRADEPOSITO: TcxGridDBColumn
                  DataBinding.FieldName = 'MUESTRADEPOSITO'
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                end
              end
              object cxGridLotesLevel1: TcxGridLevel
                GridView = cxGridLotesDBTableView1
                object cxGridLotesLevel2: TcxGridLevel
                  GridView = cxGridLotesDBTableView2
                end
              end
            end
            object btRefrescarLotes: TBitBtn
              Left = 816
              Top = 418
              Width = 45
              Height = 25
              Margins.Left = 6
              Margins.Top = 6
              Margins.Right = 6
              Margins.Bottom = 6
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000150F091D51392270845D37B7A97747EAA97747EA845D
                37B751392270150F091D00000000000000000000000000000000000000000000
                000000000000291D11397F5A35B0B8824DFFB8824DFFB8824DFFB8824DFFB882
                4DFFB8824DFF3928184F00000000000000000000000000000000000000000000
                0000150F091D7F5A35B0B8824DFF8A613ABF4A341F661610091F1610091F4A34
                1F663E2C1A56000000003827174D000000000000000000000000000000000000
                000051392270B8824DFF8A613ABF21170E2E0000000000000000000000000000
                0000000000003827174DB8824DFF3827174D0000000000000000000000000000
                0000845D37B7B8824DFF4A341F66000000000000000000000000000000000000
                00003827174DB8824DFFB8824DFFB8824DFF3827174D00000000B8824DFFB882
                4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000020302043827
                174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D3827174DB882
                4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000000000000000B882
                4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000003827
                174DB8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
                0000000000004A341F66B8824DFF845D37B70000000000000000000000000000
                0000422E1B5BB8824DFF3827174D000000000000000000000000000000000000
                000021170E2E8A613ABFB8824DFF513922700000000000000000000000000000
                00000C0805103827174D01010001563D24774A341F661610091F1610091F4A34
                1F668A613ABFB8824DFF7F5A35B0150F091D0000000000000000000000000000
                000000000000010100014F38216EB8824DFFB8824DFFB8824DFFB8824DFFB882
                4DFFB8824DFF7F5A35B0291D1139000000000000000000000000000000000000
                00000000000000000000150F091D51392270845D37B7A97747EAA97747EA845D
                37B751392270150F091D00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              TabOrder = 1
              OnClick = btRefrescarLotesClick
            end
            object fncDGLotes: TTMSFNCDataGrid
              Left = 0
              Top = 41
              Width = 882
              Height = 140
              ParentDoubleBuffered = False
              DoubleBuffered = True
              TabOrder = 2
              Visible = False
              ShowAcceleratorChar = False
              Footer.Bar.Buttons = <>
              Header.VisualGrouping.Layout.Font.Charset = DEFAULT_CHARSET
              Header.VisualGrouping.Layout.Font.Color = clWindowText
              Header.VisualGrouping.Layout.Font.Height = -12
              Header.VisualGrouping.Layout.Font.Name = 'Segoe UI'
              Header.VisualGrouping.Layout.Font.Style = []
              Header.Bar.Buttons = <>
              Adapter = fncADAPLote
              CellAppearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FilterMatchLayout.Font.Color = clWindowText
              CellAppearance.FilterMatchLayout.Font.Height = -12
              CellAppearance.FilterMatchLayout.Font.Name = 'Segoe UI'
              CellAppearance.FilterMatchLayout.Font.Style = []
              CellAppearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FilterInverseMatchLayout.Font.Color = clWindowText
              CellAppearance.FilterInverseMatchLayout.Font.Height = -12
              CellAppearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
              CellAppearance.FilterInverseMatchLayout.Font.Style = []
              CellAppearance.BandLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.BandLayout.Font.Color = clWindowText
              CellAppearance.BandLayout.Font.Height = -12
              CellAppearance.BandLayout.Font.Name = 'Segoe UI'
              CellAppearance.BandLayout.Font.Style = []
              CellAppearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FixedLayout.Font.Color = clWindowText
              CellAppearance.FixedLayout.Font.Height = -12
              CellAppearance.FixedLayout.Font.Name = 'Segoe UI'
              CellAppearance.FixedLayout.Font.Style = []
              CellAppearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FixedSelectedLayout.Font.Color = clWindowText
              CellAppearance.FixedSelectedLayout.Font.Height = -12
              CellAppearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              CellAppearance.FixedSelectedLayout.Font.Style = []
              CellAppearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FocusedLayout.Font.Color = clWindowText
              CellAppearance.FocusedLayout.Font.Height = -12
              CellAppearance.FocusedLayout.Font.Name = 'Segoe UI'
              CellAppearance.FocusedLayout.Font.Style = []
              CellAppearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.GroupLayout.Font.Color = clWindowText
              CellAppearance.GroupLayout.Font.Height = -12
              CellAppearance.GroupLayout.Font.Name = 'Segoe UI'
              CellAppearance.GroupLayout.Font.Style = []
              CellAppearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.NormalLayout.Font.Color = clWindowText
              CellAppearance.NormalLayout.Font.Height = -12
              CellAppearance.NormalLayout.Font.Name = 'Segoe UI'
              CellAppearance.NormalLayout.Font.Style = []
              CellAppearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.SelectedLayout.Font.Color = clWindowText
              CellAppearance.SelectedLayout.Font.Height = -12
              CellAppearance.SelectedLayout.Font.Name = 'Segoe UI'
              CellAppearance.SelectedLayout.Font.Style = []
              CellAppearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.SummaryLayout.Font.Color = clWindowText
              CellAppearance.SummaryLayout.Font.Height = -12
              CellAppearance.SummaryLayout.Font.Name = 'Segoe UI'
              CellAppearance.SummaryLayout.Font.Style = []
              ColumnCount = 6
              Columns = <
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.TextAlign = gtaCenter
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clBlue
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Header = 'Lote'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 52.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clBlue
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Header = 'Despacho'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 130.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.TextAlign = gtaCenter
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clBlue
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Header = 'F.de Entrada'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 120.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.TextAlign = gtaCenter
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clBlue
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Header = 'Vencimiento'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 120.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.TextAlign = gtaTrailing
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clBlue
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Header = 'Cantidad'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 110.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.TextAlign = gtaTrailing
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clBlue
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Header = 'Saldo'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 110.000000000000000000
                end>
              DefaultColumnWidth = 74.000000000000000000
              DefaultRowHeight = 20.000000000000000000
              FilterActions = <>
              FilterAppearance.Font.Charset = DEFAULT_CHARSET
              FilterAppearance.Font.Color = clWindowText
              FilterAppearance.Font.Height = -12
              FilterAppearance.Font.Name = 'Segoe UI'
              FilterAppearance.Font.Style = []
              Icons.ExpandIcon.Data = {
                1054544D53464E435356474269746D6170080200003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
                74683D22333222206865696768743D223332222076696577426F783D22302030
                203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
                6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
                3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
                637420636C6173733D22636C732D312220783D22372220793D22313522207769
                6474683D22313822206865696768743D2231222F3E3C72656374200D0A636C61
                73733D22636C732D312220783D2231352220793D2237222077696474683D2231
                22206865696768743D223138222F3E3C7265637420636C6173733D22636C732D
                312220783D223122200D0A793D2231222077696474683D223122206865696768
                743D223330222F3E3C7265637420636C6173733D22636C732D312220783D2231
                2220793D2231222077696474683D22333022200D0A6865696768743D2231222F
                3E3C7265637420636C6173733D22636C732D312220783D2233302220793D2231
                222077696474683D223122206865696768743D223330222F3E3C72656374200D
                0A636C6173733D22636C732D312220783D22312220793D223330222077696474
                683D22333022206865696768743D2231222F3E3C2F673E3C2F7376673E}
              Icons.CollapseIcon.Data = {
                1054544D53464E435356474269746D6170CE0100003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
                74683D22333222206865696768743D223332222076696577426F783D22302030
                203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
                6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
                3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
                637420636C6173733D22636C732D312220783D22372220793D22313522207769
                6474683D22313822206865696768743D2231222F3E3C7265637420636C617373
                3D22636C732D312220783D223122200D0A793D2231222077696474683D223122
                206865696768743D223330222F3E3C7265637420636C6173733D22636C732D31
                2220783D22312220793D2231222077696474683D22333022200D0A6865696768
                743D2231222F3E3C7265637420636C6173733D22636C732D312220783D223330
                2220793D2231222077696474683D223122206865696768743D223330222F3E3C
                72656374200D0A636C6173733D22636C732D312220783D22312220793D223330
                222077696474683D22333022206865696768743D2231222F3E3C2F673E3C2F73
                76673E}
              Icons.FilterIcon.Data = {
                1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2366
                61666166613B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
                65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
                33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
                7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
                747465726E205377617463682032222077696474683D22363822206865696768
                743D22363822207061747465726E556E6974733D227573657253706163654F6E
                557365222076696577426F783D22302030203638203638223E3C726563742063
                6C6173733D22636C732D31222077696474683D22363822206865696768743D22
                3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
                363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
                733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
                6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
                733D22312E3520362031322E352031352031322E352033302E352031382E3520
                33302E352031382E352031352032392E3520362032392E3520312E3520312E35
                20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
                20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
                2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
                56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
              Icons.FilterActiveIcon.Data = {
                1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2334
                36383242343B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
                65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
                33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
                7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
                747465726E205377617463682032222077696474683D22363822206865696768
                743D22363822207061747465726E556E6974733D227573657253706163654F6E
                557365222076696577426F783D22302030203638203638223E3C726563742063
                6C6173733D22636C732D31222077696474683D22363822206865696768743D22
                3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
                363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
                733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
                6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
                733D22312E3520362031322E352031352031322E352033302E352031382E3520
                33302E352031382E352031352032392E3520362032392E3520312E3520312E35
                20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
                20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
                2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
                56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
              Icons.FilterClearIcon.Data = {
                1054544D53464E435356474269746D61709D0400003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
                37346162303B7D2E636C732D337B66696C6C3A236433393464363B7D2E636C73
                2D347B66696C6C3A236661666166613B7D2E636C732D357B66696C6C3A75726C
                28234E65775F5061747465726E5F5377617463685F38293B7D2E636C732D367B
                66696C6C3A75726C28234E65775F5061747465726E5F5377617463685F37293B
                7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174746572
                6E5F5377617463685F382220646174612D6E616D653D224E6577205061747465
                726E205377617463682038222077696474683D22363822206865696768743D22
                363822207061747465726E556E6974733D227573657253706163654F6E557365
                222076696577426F783D22302030203638203638223E3C7265637420636C6173
                733D22636C732D31222077696474683D22363822206865696768743D22363822
                2F3E3C7265637420636C6173733D22636C732D33222077696474683D22363822
                206865696768743D223638222F3E3C2F7061747465726E3E3C7061747465726E
                2069643D224E65775F5061747465726E5F5377617463685F372220646174612D
                6E616D653D224E6577205061747465726E205377617463682037222077696474
                683D22363822206865696768743D22363822207061747465726E556E6974733D
                227573657253706163654F6E557365222076696577426F783D22302030203638
                203638223E3C7265637420636C6173733D22636C732D31222077696474683D22
                363822206865696768743D223638222F3E3C7265637420636C6173733D22636C
                732D32222077696474683D22363822206865696768743D223638222F3E3C2F70
                61747465726E3E3C2F646566733E3C7469746C653E436C6561723C2F7469746C
                653E3C672069643D2249636F6E223E3C7265637420636C6173733D22636C732D
                342220783D22312E38362220793D2231302E3334222077696474683D2232382E
                323822206865696768743D2231312E333122207472616E73666F726D3D227472
                616E736C617465282D362E36332031362920726F74617465282D343529222F3E
                3C706F6C79676F6E20636C6173733D22636C732D352220706F696E74733D2232
                2E37312032322031302032392E32392031352E37392032332E3520382E352031
                362E323120322E3731203232222F3E3C7061746820636C6173733D22636C732D
                362220643D224D31302E37312C33306C32302D32304C32322C312E32392C312E
                32392C32322C31302C33302E37315633314833315633305A4D32322C322E3731
                2C32392E32392C31302C31362E352C32322E37392C392E32312C31352E355A4D
                322E37312C32322C382E352C31362E32316C372E32392C372E32394C31302C32
                392E32395A222F3E3C2F673E3C2F7376673E}
              Icons.FilterTypeIcon.Data = {
                1054544D53464E435356474269746D6170CB0700003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2337
                39373737343B7D2E636C732D337B66696C6C3A236661666166613B7D2E636C73
                2D347B66696C6C3A233361336133383B7D2E636C732D357B66696C6C3A75726C
                28234E65775F5061747465726E5F5377617463685F34293B7D3C2F7374796C65
                3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
                5F342220646174612D6E616D653D224E6577205061747465726E205377617463
                682034222077696474683D22363822206865696768743D223638222070617474
                65726E556E6974733D227573657253706163654F6E557365222076696577426F
                783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
                222077696474683D22363822206865696768743D223638222F3E3C7265637420
                636C6173733D22636C732D32222077696474683D22363822206865696768743D
                223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E5465
                78742D46696C7465723C2F7469746C653E3C672069643D224D61736B223E3C70
                6F6C79676F6E20636C6173733D22636C732D332220706F696E74733D2232352E
                35203920313920322E3520313920392032352E352039222F3E3C706174682063
                6C6173733D22636C732D332220643D224D31382C313056324836563330483231
                5632362E31384C31392E38342C323548385632344831382E38356C2D322D3248
                3856323168385631394838563138683856313648385631354832347631683256
                31305A4D382C396838763148385A6D302C3456313248323476315A222F3E3C70
                6F6C79676F6E20636C6173733D22636C732D342220706F696E74733D22352031
                2035203331203620333120323120333120323120333020362033302036203220
                313820322031382E352032203139203220313920322E352032352E3520392032
                36203920323620392E3520323620313020323620313620323720313620323720
                392E372032372039203139203120352031222F3E3C706F6C79676F6E20636C61
                73733D22636C732D342220706F696E74733D22323620313020323620392E3520
                323620392032352E352039203139203920313920322E3520313920322031382E
                3520322031382032203138203130203236203130222F3E3C7265637420636C61
                73733D22636C732D332220783D22382220793D2239222077696474683D223822
                206865696768743D2231222F3E3C7265637420636C6173733D22636C732D3522
                20783D22382220793D2239222077696474683D223822206865696768743D2231
                222F3E3C7265637420636C6173733D22636C732D332220783D22382220793D22
                3132222077696474683D22313622206865696768743D2231222F3E3C72656374
                20636C6173733D22636C732D352220783D22382220793D223132222077696474
                683D22313622206865696768743D2231222F3E3C706F6C79676F6E20636C6173
                733D22636C732D332220706F696E74733D223820313520382031362031362031
                362032342031362032342031352038203135222F3E3C706F6C79676F6E20636C
                6173733D22636C732D352220706F696E74733D22382031352038203136203136
                2031362032342031362032342031352038203135222F3E3C7265637420636C61
                73733D22636C732D332220783D22382220793D223138222077696474683D2238
                22206865696768743D2231222F3E3C7265637420636C6173733D22636C732D35
                2220783D22382220793D223138222077696474683D223822206865696768743D
                2231222F3E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E
                74733D22382032322031362E38372032322031362032312E3132203136203231
                20382032312038203232222F3E3C706F6C79676F6E20636C6173733D22636C73
                2D352220706F696E74733D22382032322031362E38372032322031362032312E
                313220313620323120382032312038203232222F3E3C706F6C79676F6E20636C
                6173733D22636C732D332220706F696E74733D22382032352031392E38342032
                352031382E383520323420382032342038203235222F3E3C706F6C79676F6E20
                636C6173733D22636C732D352220706F696E74733D22382032352031392E3834
                2032352031382E383520323420382032342038203235222F3E3C2F673E3C6720
                69643D224F7665726C6179223E3C706F6C79676F6E20636C6173733D22636C73
                2D332220706F696E74733D2233312E352031372E352031372E352031372E3520
                31372E352032302E352032322E352032352E35362032322E352033312E352032
                362E352033312E352032362E352032352E35362033312E352032302E35203331
                2E352031372E35222F3E3C7061746820636C6173733D22636C732D342220643D
                224D32372C33324832325632352E37376C2D352D352E30365631374833327633
                2E37316C2D352C352E30365A6D2D342D3168335632352E33366C352D352E3037
                56313848313876322E32396C352C352E30375A222F3E3C2F673E3C2F7376673E}
              Icons.SortAscendingIcon.Data = {
                1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
                37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
                65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
                63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
                3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
                5F372220646174612D6E616D653D224E6577205061747465726E205377617463
                682037222077696474683D22363822206865696768743D223638222070617474
                65726E556E6974733D227573657253706163654F6E557365222076696577426F
                783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
                222077696474683D22363822206865696768743D223638222F3E3C7265637420
                636C6173733D22636C732D32222077696474683D22363822206865696768743D
                223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
                72742D415A3C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
                636C6173733D22636C732D332220643D224D322C32392E36346C372D31305632
                304833563138683976312E34344C352C32392E33365632396837763248325A22
                2F3E3C7061746820636C6173733D22636C732D342220643D224D352E372C3131
                2C342E35322C313548312E39334C362E33332C3148392E35344C31342C313568
                2D322E376C2D312E32342D345A4D392E36342C392E31312C382E35362C352E36
                36632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E
                322E38312D2E342C312E37382D2E36352C322E36314C362E31312C392E31315A
                222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
                3D2232332032352E3132203233203620323220362032322032352E3132203136
                2E34342031392E35362031352E35362032302E34342032322E352032372E3338
                2032392E34342032302E34342032382E35362031392E35362032332032352E31
                32222F3E3C2F673E3C2F7376673E}
              Icons.SortDescendingIcon.Data = {
                1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
                37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
                65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
                63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
                3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
                5F372220646174612D6E616D653D224E6577205061747465726E205377617463
                682037222077696474683D22363822206865696768743D223638222070617474
                65726E556E6974733D227573657253706163654F6E557365222076696577426F
                783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
                222077696474683D22363822206865696768743D223638222F3E3C7265637420
                636C6173733D22636C732D32222077696474683D22363822206865696768743D
                223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
                72742D5A413C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
                636C6173733D22636C732D332220643D224D322C31322E36346C372D31305633
                48335631683956322E34344C352C31322E33365631326837763248325A222F3E
                3C7061746820636C6173733D22636C732D342220643D224D352E372C32372C34
                2E35322C333148312E39336C342E342D313448392E35344C31342C3331682D32
                2E376C2D312E32342D345A6D332E39342D312E39334C382E35362C32312E3636
                632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E32
                2E38312D2E342C312E37382D2E36352C322E36314C362E31312C32352E31315A
                222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
                3D2232332032352E3132203233203620323220362032322032352E3132203136
                2E34342031392E35362031352E35362032302E34342032322E352032372E3338
                2032392E34342032302E34342032382E35362031392E35362032332032352E31
                32222F3E3C2F673E3C2F7376673E}
              Icons.CloseIcon.Data = {
                1054544D53464E435356474269746D6170000700003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2365
                61336634313B7D2E636C732D337B636C69702D706174683A75726C2823636C69
                702D70617468293B7D2E636C732D347B66696C6C3A236661666166613B7D2E63
                6C732D357B636C69702D706174683A75726C2823636C69702D706174682D3229
                3B7D2E636C732D367B66696C6C3A75726C28234E65775F5061747465726E5F53
                77617463685F33293B7D3C2F7374796C653E3C636C6970506174682069643D22
                636C69702D70617468223E3C7265637420636C6173733D22636C732D31222078
                3D222D34352E352220793D222D342E35222077696474683D2233342220686569
                6768743D223334222F3E3C2F636C6970506174683E3C636C6970506174682069
                643D22636C69702D706174682D32223E3C7265637420636C6173733D22636C73
                2D312220783D22322E352220793D22322E35222077696474683D223237222068
                65696768743D223237222F3E3C2F636C6970506174683E3C7061747465726E20
                69643D224E65775F5061747465726E5F5377617463685F332220646174612D6E
                616D653D224E6577205061747465726E20537761746368203322207769647468
                3D22363822206865696768743D22363822207061747465726E556E6974733D22
                7573657253706163654F6E557365222076696577426F783D2230203020363820
                3638223E3C7265637420636C6173733D22636C732D31222077696474683D2236
                3822206865696768743D223638222F3E3C7265637420636C6173733D22636C73
                2D32222077696474683D22363822206865696768743D223638222F3E3C2F7061
                747465726E3E3C2F646566733E3C7469746C653E57696E646F772D436C6F7365
                3C2F7469746C653E3C672069643D2249636F6E223E3C6720636C6173733D2263
                6C732D33223E3C7265637420636C6173733D22636C732D312220783D222D3534
                2220793D222D3439222077696474683D22363822206865696768743D22363822
                2F3E3C7265637420636C6173733D22636C732D342220783D222D35342220793D
                222D3439222077696474683D22363822206865696768743D223638222F3E3C72
                65637420636C6173733D22636C732D312220783D222D35342220793D22313922
                2077696474683D22363822206865696768743D223638222F3E3C726563742063
                6C6173733D22636C732D342220783D222D35342220793D223139222077696474
                683D22363822206865696768743D223638222F3E3C2F673E3C6720636C617373
                3D22636C732D35223E3C7265637420636C6173733D22636C732D312220783D22
                31342220793D222D3439222077696474683D22363822206865696768743D2236
                38222F3E3C7265637420636C6173733D22636C732D342220783D223134222079
                3D222D3439222077696474683D22363822206865696768743D223638222F3E3C
                7265637420636C6173733D22636C732D312220783D2231342220793D22313922
                2077696474683D22363822206865696768743D223638222F3E3C726563742063
                6C6173733D22636C732D342220783D2231342220793D22313922207769647468
                3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
                636C732D312220783D222D35342220793D222D3439222077696474683D223638
                22206865696768743D223638222F3E3C7265637420636C6173733D22636C732D
                342220783D222D35342220793D222D3439222077696474683D22363822206865
                696768743D223638222F3E3C7265637420636C6173733D22636C732D31222078
                3D222D35342220793D223139222077696474683D22363822206865696768743D
                223638222F3E3C7265637420636C6173733D22636C732D342220783D222D3534
                2220793D223139222077696474683D22363822206865696768743D223638222F
                3E3C2F673E3C7061746820636C6173733D22636C732D362220643D224D33302C
                3330483256324833305A4D332C3239483239563348335A222F3E3C706F6C7967
                6F6E20636C6173733D22636C732D362220706F696E74733D2232322E36352032
                332E333520382E363520392E333520392E333520382E36352032332E33352032
                322E36352032322E36352032332E3335222F3E3C706F6C79676F6E20636C6173
                733D22636C732D362220706F696E74733D22392E33352032332E333520382E36
                352032322E36352032322E363520382E36352032332E333520392E333520392E
                33352032332E3335222F3E3C2F673E3C2F7376673E}
              Icons.FirstPageIcon.Data = {
                1054544D53464E435356474269746D6170800300003C3F786D6C207665727369
                6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
                20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
                703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
                4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
                726F756E643D226E65772030203020333220333222206865696768743D223332
                7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
                222076696577426F783D22302030203332203332222077696474683D22333270
                782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
                7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
                3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
                6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F4C656674
                223E3C7061746820643D224D31302E3435362C31366C362E3139362D362E3238
                3563302E3339312D302E3339342C302E3339312D312E3033342C302D312E3432
                38632D302E3339312D302E3339342D312E3032342D302E3339342D312E343134
                2C306C2D362E3839392C362E393939202020632D302E3337352C302E3337392D
                302E3337372C312E3034382C302C312E3432396C362E392C362E39393963302E
                33392C302E3339342C312E3032342C302E3339342C312E3431342C3063302E33
                39312D302E3339342C302E3339312D312E3033342C302D312E3432384C31302E
                3435362C31367A222066696C6C3D2223313231333133222F3E3C706174682064
                3D224D31372E3435362C31366C362E3139362D362E32383563302E3339312D30
                2E3339342C302E3339312D312E3033342C302D312E343238632D302E3339312D
                302E3339342D312E3032342D302E3339342D312E3431342C306C2D362E383939
                2C362E393939202020632D302E3337352C302E3337392D302E3337372C312E30
                34382C302C312E3432396C362E3839392C362E39393963302E3339312C302E33
                39342C312E3032342C302E3339342C312E3431342C3063302E3339312D302E33
                39342C302E3339312D312E3033342C302D312E3432384C31372E3435362C3136
                7A222066696C6C3D2223313231333133222F3E3C2F673E3C672F3E3C672F3E3C
                672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
              Icons.LastPageIcon.Data = {
                1054544D53464E435356474269746D6170A60300003C3F786D6C207665727369
                6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
                20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
                703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
                4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
                726F756E643D226E65772030203020333220333222206865696768743D223332
                7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
                222076696577426F783D22302030203332203332222077696474683D22333270
                782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
                7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
                3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
                6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F52696768
                74223E3C7061746820643D224D32332E3636322C31352E3238366C2D362E392D
                362E393939632D302E33392D302E3339342D312E3032342D302E3339342D312E
                3431342C30632D302E3339312C302E3339342D302E3339312C312E3033342C30
                2C312E3432384C32312E3534342C31362020206C2D362E3139362C362E323835
                632D302E3339312C302E3339342D302E3339312C312E3033342C302C312E3432
                3863302E3339312C302E3339342C312E3032342C302E3339342C312E3431342C
                306C362E3839392D362E3939392020204332342E3033382C31362E3333352C32
                342E3033392C31352E3636362C32332E3636322C31352E3238367A222066696C
                6C3D2223313231333133222F3E3C7061746820643D224D31362E3636322C3135
                2E3238364C392E3736332C382E323837632D302E3339312D302E3339342D312E
                3032342D302E3339342D312E3431342C30632D302E3339312C302E3339342D30
                2E3339312C312E3033342C302C312E3432384C31342E3534342C31362020206C
                2D362E3139362C362E323835632D302E3339312C302E3339342D302E3339312C
                312E3033342C302C312E34323863302E3339312C302E3339342C312E3032342C
                302E3339342C312E3431342C306C362E3839392D362E3939392020204331372E
                3033382C31362E3333352C31372E3033392C31352E3636362C31362E3636322C
                31352E3238367A222066696C6C3D2223313231333133222F3E3C2F673E3C672F
                3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
              Icons.NextPageIcon.Data = {
                1054544D53464E435356474269746D6170B50200003C3F786D6C207665727369
                6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
                20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
                703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
                4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
                726F756E643D226E65772030203020333220333222206865696768743D223332
                7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
                222076696577426F783D22302030203332203332222077696474683D22333270
                782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
                7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
                3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
                6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
                643D224D32312E3639382C31352E3238366C2D392E3030322D382E3939392020
                632D302E3339352D302E3339342D312E3033352D302E3339342D312E3433312C
                30632D302E3339352C302E3339342D302E3339352C312E3033342C302C312E34
                32384C31392E3535332C31366C2D382E3238372C382E323835632D302E333935
                2C302E3339342D302E3339352C312E3033342C302C312E343239202063302E33
                39352C302E3339342C312E3033362C302E3339342C312E3433312C306C392E30
                30322D382E3939394332322E3038382C31362E3332352C32322E3038382C3135
                2E3637352C32312E3639382C31352E3238367A222066696C6C3D222331323133
                3133222066696C6C2D72756C653D226576656E6F6464222069643D2243686576
                726F6E5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E
                3C672F3E3C2F7376673E}
              Icons.PreviousPageIcon.Data = {
                1054544D53464E435356474269746D6170B20200003C3F786D6C207665727369
                6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
                20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
                703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
                4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
                726F756E643D226E65772030203020333220333222206865696768743D223332
                7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
                222076696577426F783D22302030203332203332222077696474683D22333270
                782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
                7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
                3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
                6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
                643D224D31312E3236322C31362E3731346C392E3030322C382E393939202063
                302E3339352C302E3339342C312E3033352C302E3339342C312E3433312C3063
                302E3339352D302E3339342C302E3339352D312E3033342C302D312E3432384C
                31332E3430372C31366C382E3238372D382E32383563302E3339352D302E3339
                342C302E3339352D312E3033342C302D312E3432392020632D302E3339352D30
                2E3339342D312E3033362D302E3339342D312E3433312C306C2D392E3030322C
                382E3939394331302E3837322C31352E3637352C31302E3837322C31362E3332
                352C31312E3236322C31362E3731347A222066696C6C3D222331323133313322
                2066696C6C2D72756C653D226576656E6F6464222069643D2243686576726F6E
                5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F
                3E3C2F7376673E}
              OnGetCellFormatting = fncDGLotesGetCellFormatting
              Options.Mouse.ColumnSizing = True
              Options.Selection.Mode = gsmSingleRow
              RowCount = 1
            end
            object fncADAPLote: TTMSFNCDataGridDatabaseAdapter
              Left = 548
              Top = 415
              Width = 26
              Height = 26
              Visible = True
              AutoCreateColumns = False
              AutoRemoveColumns = False
              Columns = <
                item
                  FieldName = 'LOTE'
                  AutoCreated = True
                end
                item
                  FieldName = 'DESPACHO'
                  AutoCreated = True
                end
                item
                  FieldName = 'FECHA_ENTRADA'
                  AutoCreated = True
                end
                item
                  FieldName = 'FECHA_VTO'
                  AutoCreated = True
                end
                item
                  FieldName = 'CANTIDAD'
                  AutoCreated = True
                end
                item
                  FieldName = 'SALDO'
                  AutoCreated = True
                end>
              DataSource = DatosStock.DSLotes
              DetailControl = TMSFNCDataGrid1
            end
            object TMSFNCDataGrid1: TTMSFNCDataGrid
              Left = 31
              Top = 187
              Width = 830
              Height = 134
              ParentDoubleBuffered = False
              DoubleBuffered = True
              TabOrder = 4
              Visible = False
              ShowAcceleratorChar = False
              Footer.Stroke.Color = 15987699
              Footer.Bar.Fill.Color = 16382457
              Footer.Bar.Stroke.Color = 15987699
              Footer.Bar.Buttons = <>
              Header.VisualGrouping.Layout.Fill.Kind = gfkGradient
              Header.VisualGrouping.Layout.Fill.Color = 16382457
              Header.VisualGrouping.Layout.Fill.ColorTo = 16382457
              Header.VisualGrouping.Layout.Font.Charset = DEFAULT_CHARSET
              Header.VisualGrouping.Layout.Font.Color = clBlack
              Header.VisualGrouping.Layout.Font.Height = -12
              Header.VisualGrouping.Layout.Font.Name = 'Segoe UI'
              Header.VisualGrouping.Layout.Font.Style = []
              Header.VisualGrouping.Layout.Stroke.Color = 15987699
              Header.VisualGrouping.LevelActiveIndicationFill.Color = clWhite
              Header.VisualGrouping.LevelIndicationStroke.Color = 15987699
              Header.VisualGrouping.LevelActiveIndicationStroke.Color = 15987699
              Header.Stroke.Color = 15987699
              Header.Bar.Fill.Color = 16382457
              Header.Bar.Stroke.Color = 15987699
              Header.Bar.Buttons = <>
              Adapter = fncADAPDetalle
              CellAppearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FilterMatchLayout.Font.Color = clWindowText
              CellAppearance.FilterMatchLayout.Font.Height = -12
              CellAppearance.FilterMatchLayout.Font.Name = 'Segoe UI'
              CellAppearance.FilterMatchLayout.Font.Style = []
              CellAppearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FilterInverseMatchLayout.Font.Color = clWindowText
              CellAppearance.FilterInverseMatchLayout.Font.Height = -12
              CellAppearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
              CellAppearance.FilterInverseMatchLayout.Font.Style = []
              CellAppearance.BandLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.BandLayout.Font.Color = clBlack
              CellAppearance.BandLayout.Font.Height = -12
              CellAppearance.BandLayout.Font.Name = 'Segoe UI'
              CellAppearance.BandLayout.Font.Style = []
              CellAppearance.BandLayout.Stroke.Color = 15987699
              CellAppearance.FixedLayout.Fill.ColorTo = 16382457
              CellAppearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FixedLayout.Font.Color = clBlack
              CellAppearance.FixedLayout.Font.Height = -12
              CellAppearance.FixedLayout.Font.Name = 'Segoe UI'
              CellAppearance.FixedLayout.Font.Style = []
              CellAppearance.FixedLayout.Stroke.Color = 15987699
              CellAppearance.FixedSelectedLayout.Fill.ColorTo = 15385233
              CellAppearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FixedSelectedLayout.Font.Color = clBlack
              CellAppearance.FixedSelectedLayout.Font.Height = -12
              CellAppearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
              CellAppearance.FixedSelectedLayout.Font.Style = []
              CellAppearance.FixedSelectedLayout.Stroke.Color = 15987699
              CellAppearance.FocusedLayout.Fill.ColorTo = 15385233
              CellAppearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.FocusedLayout.Font.Color = clBlack
              CellAppearance.FocusedLayout.Font.Height = -12
              CellAppearance.FocusedLayout.Font.Name = 'Segoe UI'
              CellAppearance.FocusedLayout.Font.Style = []
              CellAppearance.FocusedLayout.Stroke.Color = 15987699
              CellAppearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.GroupLayout.Font.Color = clBlack
              CellAppearance.GroupLayout.Font.Height = -12
              CellAppearance.GroupLayout.Font.Name = 'Segoe UI'
              CellAppearance.GroupLayout.Font.Style = []
              CellAppearance.GroupLayout.Stroke.Color = 15987699
              CellAppearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.NormalLayout.Font.Color = clBlack
              CellAppearance.NormalLayout.Font.Height = -12
              CellAppearance.NormalLayout.Font.Name = 'Segoe UI'
              CellAppearance.NormalLayout.Font.Style = []
              CellAppearance.NormalLayout.Stroke.Color = 15987699
              CellAppearance.SelectedLayout.Fill.ColorTo = 15385233
              CellAppearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.SelectedLayout.Font.Color = clBlack
              CellAppearance.SelectedLayout.Font.Height = -12
              CellAppearance.SelectedLayout.Font.Name = 'Segoe UI'
              CellAppearance.SelectedLayout.Font.Style = []
              CellAppearance.SelectedLayout.Stroke.Color = 15987699
              CellAppearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
              CellAppearance.SummaryLayout.Font.Color = clBlack
              CellAppearance.SummaryLayout.Font.Height = -12
              CellAppearance.SummaryLayout.Font.Name = 'Segoe UI'
              CellAppearance.SummaryLayout.Font.Style = []
              CellAppearance.SummaryLayout.Stroke.Color = 15987699
              ColumnCount = 8
              Columns = <
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.Stroke.Color = 15987699
                  Appearance.BandLayout.TextAlign = gtaCenter
                  Appearance.FixedLayout.Fill.ColorTo = 16382457
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clWindowText
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Fill.ColorTo = 15385233
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FixedSelectedLayout.Stroke.Color = 15987699
                  Appearance.FocusedLayout.Fill.ColorTo = 15385233
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.FocusedLayout.Stroke.Color = 15987699
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.GroupLayout.Stroke.Color = 15987699
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.NormalLayout.Stroke.Color = 15987699
                  Appearance.SelectedLayout.Fill.ColorTo = 15385233
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SelectedLayout.Stroke.Color = 15987699
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Appearance.SummaryLayout.Stroke.Color = 15987699
                  Header = 'Fecha'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 90.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.Stroke.Color = 15987699
                  Appearance.BandLayout.TextAlign = gtaCenter
                  Appearance.FixedLayout.Fill.ColorTo = 16382457
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clWindowText
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Fill.ColorTo = 15385233
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FixedSelectedLayout.Stroke.Color = 15987699
                  Appearance.FocusedLayout.Fill.ColorTo = 15385233
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.FocusedLayout.Stroke.Color = 15987699
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.GroupLayout.Stroke.Color = 15987699
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.NormalLayout.Stroke.Color = 15987699
                  Appearance.SelectedLayout.Fill.ColorTo = 15385233
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SelectedLayout.Stroke.Color = 15987699
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Appearance.SummaryLayout.Stroke.Color = 15987699
                  Header = 'Tp.'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 30.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.Fill.ColorTo = 16382457
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clWindowText
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Fill.ColorTo = 15385233
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FixedSelectedLayout.Stroke.Color = 15987699
                  Appearance.FocusedLayout.Fill.ColorTo = 15385233
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.FocusedLayout.Stroke.Color = 15987699
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.GroupLayout.Stroke.Color = 15987699
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.NormalLayout.Stroke.Color = 15987699
                  Appearance.SelectedLayout.Fill.ColorTo = 15385233
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SelectedLayout.Stroke.Color = 15987699
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Appearance.SummaryLayout.Stroke.Color = 15987699
                  Header = 'Nombre'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 150.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.Stroke.Color = 15987699
                  Appearance.BandLayout.TextAlign = gtaCenter
                  Appearance.FixedLayout.Fill.ColorTo = 16382457
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clWindowText
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Fill.ColorTo = 15385233
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FixedSelectedLayout.Stroke.Color = 15987699
                  Appearance.FocusedLayout.Fill.ColorTo = 15385233
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.FocusedLayout.Stroke.Color = 15987699
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.GroupLayout.Stroke.Color = 15987699
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.NormalLayout.Stroke.Color = 15987699
                  Appearance.SelectedLayout.Fill.ColorTo = 15385233
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SelectedLayout.Stroke.Color = 15987699
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Appearance.SummaryLayout.Stroke.Color = 15987699
                  Header = 'Nro.Cpbte'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 120.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.Fill.ColorTo = 16382457
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clWindowText
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Fill.ColorTo = 15385233
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FixedSelectedLayout.Stroke.Color = 15987699
                  Appearance.FocusedLayout.Fill.ColorTo = 15385233
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.FocusedLayout.Stroke.Color = 15987699
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.GroupLayout.Stroke.Color = 15987699
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.NormalLayout.Stroke.Color = 15987699
                  Appearance.SelectedLayout.Fill.ColorTo = 15385233
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SelectedLayout.Stroke.Color = 15987699
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Appearance.SummaryLayout.Stroke.Color = 15987699
                  Header = 'Operacion'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 120.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.Stroke.Color = 15987699
                  Appearance.BandLayout.TextAlign = gtaTrailing
                  Appearance.FixedLayout.Fill.ColorTo = 16382457
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clWindowText
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Fill.ColorTo = 15385233
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FixedSelectedLayout.Stroke.Color = 15987699
                  Appearance.FocusedLayout.Fill.ColorTo = 15385233
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.FocusedLayout.Stroke.Color = 15987699
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.GroupLayout.Stroke.Color = 15987699
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.NormalLayout.Stroke.Color = 15987699
                  Appearance.SelectedLayout.Fill.ColorTo = 15385233
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SelectedLayout.Stroke.Color = 15987699
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Appearance.SummaryLayout.Stroke.Color = 15987699
                  Header = 'Entran'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 80.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.Stroke.Color = 15987699
                  Appearance.BandLayout.TextAlign = gtaTrailing
                  Appearance.FixedLayout.Fill.ColorTo = 16382457
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clWindowText
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Fill.ColorTo = 15385233
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FixedSelectedLayout.Stroke.Color = 15987699
                  Appearance.FocusedLayout.Fill.ColorTo = 15385233
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.FocusedLayout.Stroke.Color = 15987699
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.GroupLayout.Stroke.Color = 15987699
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.NormalLayout.Stroke.Color = 15987699
                  Appearance.SelectedLayout.Fill.ColorTo = 15385233
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SelectedLayout.Stroke.Color = 15987699
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Appearance.SummaryLayout.Stroke.Color = 15987699
                  Header = 'Salen'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 80.000000000000000000
                end
                item
                  Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterMatchLayout.Font.Color = clWindowText
                  Appearance.FilterMatchLayout.Font.Height = -12
                  Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterMatchLayout.Font.Style = []
                  Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
                  Appearance.FilterInverseMatchLayout.Font.Height = -12
                  Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
                  Appearance.FilterInverseMatchLayout.Font.Style = []
                  Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.BandLayout.Font.Color = clWindowText
                  Appearance.BandLayout.Font.Height = -12
                  Appearance.BandLayout.Font.Name = 'Segoe UI'
                  Appearance.BandLayout.Font.Style = []
                  Appearance.BandLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.Fill.ColorTo = 16382457
                  Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedLayout.Font.Color = clWindowText
                  Appearance.FixedLayout.Font.Height = -12
                  Appearance.FixedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedLayout.Font.Style = [fsBold]
                  Appearance.FixedLayout.Stroke.Color = 15987699
                  Appearance.FixedLayout.TextAlign = gtaCenter
                  Appearance.FixedSelectedLayout.Fill.ColorTo = 15385233
                  Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FixedSelectedLayout.Font.Color = clWindowText
                  Appearance.FixedSelectedLayout.Font.Height = -12
                  Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.FixedSelectedLayout.Font.Style = []
                  Appearance.FixedSelectedLayout.Stroke.Color = 15987699
                  Appearance.FocusedLayout.Fill.ColorTo = 15385233
                  Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.FocusedLayout.Font.Color = clWindowText
                  Appearance.FocusedLayout.Font.Height = -12
                  Appearance.FocusedLayout.Font.Name = 'Segoe UI'
                  Appearance.FocusedLayout.Font.Style = []
                  Appearance.FocusedLayout.Stroke.Color = 15987699
                  Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.GroupLayout.Font.Color = clWindowText
                  Appearance.GroupLayout.Font.Height = -12
                  Appearance.GroupLayout.Font.Name = 'Segoe UI'
                  Appearance.GroupLayout.Font.Style = []
                  Appearance.GroupLayout.Stroke.Color = 15987699
                  Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.NormalLayout.Font.Color = clWindowText
                  Appearance.NormalLayout.Font.Height = -12
                  Appearance.NormalLayout.Font.Name = 'Segoe UI'
                  Appearance.NormalLayout.Font.Style = []
                  Appearance.NormalLayout.Stroke.Color = 15987699
                  Appearance.SelectedLayout.Fill.ColorTo = 15385233
                  Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SelectedLayout.Font.Color = clWindowText
                  Appearance.SelectedLayout.Font.Height = -12
                  Appearance.SelectedLayout.Font.Name = 'Segoe UI'
                  Appearance.SelectedLayout.Font.Style = []
                  Appearance.SelectedLayout.Stroke.Color = 15987699
                  Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
                  Appearance.SummaryLayout.Font.Color = clWindowText
                  Appearance.SummaryLayout.Font.Height = -12
                  Appearance.SummaryLayout.Font.Name = 'Segoe UI'
                  Appearance.SummaryLayout.Font.Style = []
                  Appearance.SummaryLayout.Stroke.Color = 15987699
                  Header = 'Deposito'
                  Settings = [gcsAppearance, gcsEditorItems]
                  Width = 100.000000000000000000
                end>
              DefaultColumnWidth = 74.000000000000000000
              DefaultRowHeight = 20.000000000000000000
              FilterActions = <>
              FilterAppearance.Font.Charset = DEFAULT_CHARSET
              FilterAppearance.Font.Color = clBlack
              FilterAppearance.Font.Height = -12
              FilterAppearance.Font.Name = 'Segoe UI'
              FilterAppearance.Font.Style = []
              Icons.ExpandIcon.Data = {
                1054544D53464E435356474269746D6170080200003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
                74683D22333222206865696768743D223332222076696577426F783D22302030
                203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
                6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
                3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
                637420636C6173733D22636C732D312220783D22372220793D22313522207769
                6474683D22313822206865696768743D2231222F3E3C72656374200D0A636C61
                73733D22636C732D312220783D2231352220793D2237222077696474683D2231
                22206865696768743D223138222F3E3C7265637420636C6173733D22636C732D
                312220783D223122200D0A793D2231222077696474683D223122206865696768
                743D223330222F3E3C7265637420636C6173733D22636C732D312220783D2231
                2220793D2231222077696474683D22333022200D0A6865696768743D2231222F
                3E3C7265637420636C6173733D22636C732D312220783D2233302220793D2231
                222077696474683D223122206865696768743D223330222F3E3C72656374200D
                0A636C6173733D22636C732D312220783D22312220793D223330222077696474
                683D22333022206865696768743D2231222F3E3C2F673E3C2F7376673E}
              Icons.CollapseIcon.Data = {
                1054544D53464E435356474269746D6170CE0100003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
                74683D22333222206865696768743D223332222076696577426F783D22302030
                203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
                6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
                3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
                637420636C6173733D22636C732D312220783D22372220793D22313522207769
                6474683D22313822206865696768743D2231222F3E3C7265637420636C617373
                3D22636C732D312220783D223122200D0A793D2231222077696474683D223122
                206865696768743D223330222F3E3C7265637420636C6173733D22636C732D31
                2220783D22312220793D2231222077696474683D22333022200D0A6865696768
                743D2231222F3E3C7265637420636C6173733D22636C732D312220783D223330
                2220793D2231222077696474683D223122206865696768743D223330222F3E3C
                72656374200D0A636C6173733D22636C732D312220783D22312220793D223330
                222077696474683D22333022206865696768743D2231222F3E3C2F673E3C2F73
                76673E}
              Icons.FilterIcon.Data = {
                1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2366
                61666166613B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
                65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
                33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
                7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
                747465726E205377617463682032222077696474683D22363822206865696768
                743D22363822207061747465726E556E6974733D227573657253706163654F6E
                557365222076696577426F783D22302030203638203638223E3C726563742063
                6C6173733D22636C732D31222077696474683D22363822206865696768743D22
                3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
                363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
                733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
                6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
                733D22312E3520362031322E352031352031322E352033302E352031382E3520
                33302E352031382E352031352032392E3520362032392E3520312E3520312E35
                20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
                20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
                2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
                56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
              Icons.FilterActiveIcon.Data = {
                1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2334
                36383242343B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
                65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
                33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
                7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
                747465726E205377617463682032222077696474683D22363822206865696768
                743D22363822207061747465726E556E6974733D227573657253706163654F6E
                557365222076696577426F783D22302030203638203638223E3C726563742063
                6C6173733D22636C732D31222077696474683D22363822206865696768743D22
                3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
                363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
                733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
                6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
                733D22312E3520362031322E352031352031322E352033302E352031382E3520
                33302E352031382E352031352032392E3520362032392E3520312E3520312E35
                20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
                20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
                2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
                56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
              Icons.FilterClearIcon.Data = {
                1054544D53464E435356474269746D61709D0400003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
                37346162303B7D2E636C732D337B66696C6C3A236433393464363B7D2E636C73
                2D347B66696C6C3A236661666166613B7D2E636C732D357B66696C6C3A75726C
                28234E65775F5061747465726E5F5377617463685F38293B7D2E636C732D367B
                66696C6C3A75726C28234E65775F5061747465726E5F5377617463685F37293B
                7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174746572
                6E5F5377617463685F382220646174612D6E616D653D224E6577205061747465
                726E205377617463682038222077696474683D22363822206865696768743D22
                363822207061747465726E556E6974733D227573657253706163654F6E557365
                222076696577426F783D22302030203638203638223E3C7265637420636C6173
                733D22636C732D31222077696474683D22363822206865696768743D22363822
                2F3E3C7265637420636C6173733D22636C732D33222077696474683D22363822
                206865696768743D223638222F3E3C2F7061747465726E3E3C7061747465726E
                2069643D224E65775F5061747465726E5F5377617463685F372220646174612D
                6E616D653D224E6577205061747465726E205377617463682037222077696474
                683D22363822206865696768743D22363822207061747465726E556E6974733D
                227573657253706163654F6E557365222076696577426F783D22302030203638
                203638223E3C7265637420636C6173733D22636C732D31222077696474683D22
                363822206865696768743D223638222F3E3C7265637420636C6173733D22636C
                732D32222077696474683D22363822206865696768743D223638222F3E3C2F70
                61747465726E3E3C2F646566733E3C7469746C653E436C6561723C2F7469746C
                653E3C672069643D2249636F6E223E3C7265637420636C6173733D22636C732D
                342220783D22312E38362220793D2231302E3334222077696474683D2232382E
                323822206865696768743D2231312E333122207472616E73666F726D3D227472
                616E736C617465282D362E36332031362920726F74617465282D343529222F3E
                3C706F6C79676F6E20636C6173733D22636C732D352220706F696E74733D2232
                2E37312032322031302032392E32392031352E37392032332E3520382E352031
                362E323120322E3731203232222F3E3C7061746820636C6173733D22636C732D
                362220643D224D31302E37312C33306C32302D32304C32322C312E32392C312E
                32392C32322C31302C33302E37315633314833315633305A4D32322C322E3731
                2C32392E32392C31302C31362E352C32322E37392C392E32312C31352E355A4D
                322E37312C32322C382E352C31362E32316C372E32392C372E32394C31302C32
                392E32395A222F3E3C2F673E3C2F7376673E}
              Icons.FilterTypeIcon.Data = {
                1054544D53464E435356474269746D6170CB0700003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2337
                39373737343B7D2E636C732D337B66696C6C3A236661666166613B7D2E636C73
                2D347B66696C6C3A233361336133383B7D2E636C732D357B66696C6C3A75726C
                28234E65775F5061747465726E5F5377617463685F34293B7D3C2F7374796C65
                3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
                5F342220646174612D6E616D653D224E6577205061747465726E205377617463
                682034222077696474683D22363822206865696768743D223638222070617474
                65726E556E6974733D227573657253706163654F6E557365222076696577426F
                783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
                222077696474683D22363822206865696768743D223638222F3E3C7265637420
                636C6173733D22636C732D32222077696474683D22363822206865696768743D
                223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E5465
                78742D46696C7465723C2F7469746C653E3C672069643D224D61736B223E3C70
                6F6C79676F6E20636C6173733D22636C732D332220706F696E74733D2232352E
                35203920313920322E3520313920392032352E352039222F3E3C706174682063
                6C6173733D22636C732D332220643D224D31382C313056324836563330483231
                5632362E31384C31392E38342C323548385632344831382E38356C2D322D3248
                3856323168385631394838563138683856313648385631354832347631683256
                31305A4D382C396838763148385A6D302C3456313248323476315A222F3E3C70
                6F6C79676F6E20636C6173733D22636C732D342220706F696E74733D22352031
                2035203331203620333120323120333120323120333020362033302036203220
                313820322031382E352032203139203220313920322E352032352E3520392032
                36203920323620392E3520323620313020323620313620323720313620323720
                392E372032372039203139203120352031222F3E3C706F6C79676F6E20636C61
                73733D22636C732D342220706F696E74733D22323620313020323620392E3520
                323620392032352E352039203139203920313920322E3520313920322031382E
                3520322031382032203138203130203236203130222F3E3C7265637420636C61
                73733D22636C732D332220783D22382220793D2239222077696474683D223822
                206865696768743D2231222F3E3C7265637420636C6173733D22636C732D3522
                20783D22382220793D2239222077696474683D223822206865696768743D2231
                222F3E3C7265637420636C6173733D22636C732D332220783D22382220793D22
                3132222077696474683D22313622206865696768743D2231222F3E3C72656374
                20636C6173733D22636C732D352220783D22382220793D223132222077696474
                683D22313622206865696768743D2231222F3E3C706F6C79676F6E20636C6173
                733D22636C732D332220706F696E74733D223820313520382031362031362031
                362032342031362032342031352038203135222F3E3C706F6C79676F6E20636C
                6173733D22636C732D352220706F696E74733D22382031352038203136203136
                2031362032342031362032342031352038203135222F3E3C7265637420636C61
                73733D22636C732D332220783D22382220793D223138222077696474683D2238
                22206865696768743D2231222F3E3C7265637420636C6173733D22636C732D35
                2220783D22382220793D223138222077696474683D223822206865696768743D
                2231222F3E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E
                74733D22382032322031362E38372032322031362032312E3132203136203231
                20382032312038203232222F3E3C706F6C79676F6E20636C6173733D22636C73
                2D352220706F696E74733D22382032322031362E38372032322031362032312E
                313220313620323120382032312038203232222F3E3C706F6C79676F6E20636C
                6173733D22636C732D332220706F696E74733D22382032352031392E38342032
                352031382E383520323420382032342038203235222F3E3C706F6C79676F6E20
                636C6173733D22636C732D352220706F696E74733D22382032352031392E3834
                2032352031382E383520323420382032342038203235222F3E3C2F673E3C6720
                69643D224F7665726C6179223E3C706F6C79676F6E20636C6173733D22636C73
                2D332220706F696E74733D2233312E352031372E352031372E352031372E3520
                31372E352032302E352032322E352032352E35362032322E352033312E352032
                362E352033312E352032362E352032352E35362033312E352032302E35203331
                2E352031372E35222F3E3C7061746820636C6173733D22636C732D342220643D
                224D32372C33324832325632352E37376C2D352D352E30365631374833327633
                2E37316C2D352C352E30365A6D2D342D3168335632352E33366C352D352E3037
                56313848313876322E32396C352C352E30375A222F3E3C2F673E3C2F7376673E}
              Icons.SortAscendingIcon.Data = {
                1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
                37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
                65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
                63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
                3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
                5F372220646174612D6E616D653D224E6577205061747465726E205377617463
                682037222077696474683D22363822206865696768743D223638222070617474
                65726E556E6974733D227573657253706163654F6E557365222076696577426F
                783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
                222077696474683D22363822206865696768743D223638222F3E3C7265637420
                636C6173733D22636C732D32222077696474683D22363822206865696768743D
                223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
                72742D415A3C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
                636C6173733D22636C732D332220643D224D322C32392E36346C372D31305632
                304833563138683976312E34344C352C32392E33365632396837763248325A22
                2F3E3C7061746820636C6173733D22636C732D342220643D224D352E372C3131
                2C342E35322C313548312E39334C362E33332C3148392E35344C31342C313568
                2D322E376C2D312E32342D345A4D392E36342C392E31312C382E35362C352E36
                36632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E
                322E38312D2E342C312E37382D2E36352C322E36314C362E31312C392E31315A
                222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
                3D2232332032352E3132203233203620323220362032322032352E3132203136
                2E34342031392E35362031352E35362032302E34342032322E352032372E3338
                2032392E34342032302E34342032382E35362031392E35362032332032352E31
                32222F3E3C2F673E3C2F7376673E}
              Icons.SortDescendingIcon.Data = {
                1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
                37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
                65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
                63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
                3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
                5F372220646174612D6E616D653D224E6577205061747465726E205377617463
                682037222077696474683D22363822206865696768743D223638222070617474
                65726E556E6974733D227573657253706163654F6E557365222076696577426F
                783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
                222077696474683D22363822206865696768743D223638222F3E3C7265637420
                636C6173733D22636C732D32222077696474683D22363822206865696768743D
                223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
                72742D5A413C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
                636C6173733D22636C732D332220643D224D322C31322E36346C372D31305633
                48335631683956322E34344C352C31322E33365631326837763248325A222F3E
                3C7061746820636C6173733D22636C732D342220643D224D352E372C32372C34
                2E35322C333148312E39336C342E342D313448392E35344C31342C3331682D32
                2E376C2D312E32342D345A6D332E39342D312E39334C382E35362C32312E3636
                632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E32
                2E38312D2E342C312E37382D2E36352C322E36314C362E31312C32352E31315A
                222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
                3D2232332032352E3132203233203620323220362032322032352E3132203136
                2E34342031392E35362031352E35362032302E34342032322E352032372E3338
                2032392E34342032302E34342032382E35362031392E35362032332032352E31
                32222F3E3C2F673E3C2F7376673E}
              Icons.CloseIcon.Data = {
                1054544D53464E435356474269746D6170000700003C73766720786D6C6E733D
                22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
                6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
                2F786C696E6B222077696474683D22333222206865696768743D223332222076
                696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
                2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2365
                61336634313B7D2E636C732D337B636C69702D706174683A75726C2823636C69
                702D70617468293B7D2E636C732D347B66696C6C3A236661666166613B7D2E63
                6C732D357B636C69702D706174683A75726C2823636C69702D706174682D3229
                3B7D2E636C732D367B66696C6C3A75726C28234E65775F5061747465726E5F53
                77617463685F33293B7D3C2F7374796C653E3C636C6970506174682069643D22
                636C69702D70617468223E3C7265637420636C6173733D22636C732D31222078
                3D222D34352E352220793D222D342E35222077696474683D2233342220686569
                6768743D223334222F3E3C2F636C6970506174683E3C636C6970506174682069
                643D22636C69702D706174682D32223E3C7265637420636C6173733D22636C73
                2D312220783D22322E352220793D22322E35222077696474683D223237222068
                65696768743D223237222F3E3C2F636C6970506174683E3C7061747465726E20
                69643D224E65775F5061747465726E5F5377617463685F332220646174612D6E
                616D653D224E6577205061747465726E20537761746368203322207769647468
                3D22363822206865696768743D22363822207061747465726E556E6974733D22
                7573657253706163654F6E557365222076696577426F783D2230203020363820
                3638223E3C7265637420636C6173733D22636C732D31222077696474683D2236
                3822206865696768743D223638222F3E3C7265637420636C6173733D22636C73
                2D32222077696474683D22363822206865696768743D223638222F3E3C2F7061
                747465726E3E3C2F646566733E3C7469746C653E57696E646F772D436C6F7365
                3C2F7469746C653E3C672069643D2249636F6E223E3C6720636C6173733D2263
                6C732D33223E3C7265637420636C6173733D22636C732D312220783D222D3534
                2220793D222D3439222077696474683D22363822206865696768743D22363822
                2F3E3C7265637420636C6173733D22636C732D342220783D222D35342220793D
                222D3439222077696474683D22363822206865696768743D223638222F3E3C72
                65637420636C6173733D22636C732D312220783D222D35342220793D22313922
                2077696474683D22363822206865696768743D223638222F3E3C726563742063
                6C6173733D22636C732D342220783D222D35342220793D223139222077696474
                683D22363822206865696768743D223638222F3E3C2F673E3C6720636C617373
                3D22636C732D35223E3C7265637420636C6173733D22636C732D312220783D22
                31342220793D222D3439222077696474683D22363822206865696768743D2236
                38222F3E3C7265637420636C6173733D22636C732D342220783D223134222079
                3D222D3439222077696474683D22363822206865696768743D223638222F3E3C
                7265637420636C6173733D22636C732D312220783D2231342220793D22313922
                2077696474683D22363822206865696768743D223638222F3E3C726563742063
                6C6173733D22636C732D342220783D2231342220793D22313922207769647468
                3D22363822206865696768743D223638222F3E3C7265637420636C6173733D22
                636C732D312220783D222D35342220793D222D3439222077696474683D223638
                22206865696768743D223638222F3E3C7265637420636C6173733D22636C732D
                342220783D222D35342220793D222D3439222077696474683D22363822206865
                696768743D223638222F3E3C7265637420636C6173733D22636C732D31222078
                3D222D35342220793D223139222077696474683D22363822206865696768743D
                223638222F3E3C7265637420636C6173733D22636C732D342220783D222D3534
                2220793D223139222077696474683D22363822206865696768743D223638222F
                3E3C2F673E3C7061746820636C6173733D22636C732D362220643D224D33302C
                3330483256324833305A4D332C3239483239563348335A222F3E3C706F6C7967
                6F6E20636C6173733D22636C732D362220706F696E74733D2232322E36352032
                332E333520382E363520392E333520392E333520382E36352032332E33352032
                322E36352032322E36352032332E3335222F3E3C706F6C79676F6E20636C6173
                733D22636C732D362220706F696E74733D22392E33352032332E333520382E36
                352032322E36352032322E363520382E36352032332E333520392E333520392E
                33352032332E3335222F3E3C2F673E3C2F7376673E}
              Icons.FirstPageIcon.Data = {
                1054544D53464E435356474269746D6170800300003C3F786D6C207665727369
                6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
                20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
                703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
                4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
                726F756E643D226E65772030203020333220333222206865696768743D223332
                7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
                222076696577426F783D22302030203332203332222077696474683D22333270
                782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
                7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
                3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
                6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F4C656674
                223E3C7061746820643D224D31302E3435362C31366C362E3139362D362E3238
                3563302E3339312D302E3339342C302E3339312D312E3033342C302D312E3432
                38632D302E3339312D302E3339342D312E3032342D302E3339342D312E343134
                2C306C2D362E3839392C362E393939202020632D302E3337352C302E3337392D
                302E3337372C312E3034382C302C312E3432396C362E392C362E39393963302E
                33392C302E3339342C312E3032342C302E3339342C312E3431342C3063302E33
                39312D302E3339342C302E3339312D312E3033342C302D312E3432384C31302E
                3435362C31367A222066696C6C3D2223313231333133222F3E3C706174682064
                3D224D31372E3435362C31366C362E3139362D362E32383563302E3339312D30
                2E3339342C302E3339312D312E3033342C302D312E343238632D302E3339312D
                302E3339342D312E3032342D302E3339342D312E3431342C306C2D362E383939
                2C362E393939202020632D302E3337352C302E3337392D302E3337372C312E30
                34382C302C312E3432396C362E3839392C362E39393963302E3339312C302E33
                39342C312E3032342C302E3339342C312E3431342C3063302E3339312D302E33
                39342C302E3339312D312E3033342C302D312E3432384C31372E3435362C3136
                7A222066696C6C3D2223313231333133222F3E3C2F673E3C672F3E3C672F3E3C
                672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
              Icons.LastPageIcon.Data = {
                1054544D53464E435356474269746D6170A60300003C3F786D6C207665727369
                6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
                20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
                703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
                4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
                726F756E643D226E65772030203020333220333222206865696768743D223332
                7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
                222076696577426F783D22302030203332203332222077696474683D22333270
                782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
                7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
                3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
                6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F52696768
                74223E3C7061746820643D224D32332E3636322C31352E3238366C2D362E392D
                362E393939632D302E33392D302E3339342D312E3032342D302E3339342D312E
                3431342C30632D302E3339312C302E3339342D302E3339312C312E3033342C30
                2C312E3432384C32312E3534342C31362020206C2D362E3139362C362E323835
                632D302E3339312C302E3339342D302E3339312C312E3033342C302C312E3432
                3863302E3339312C302E3339342C312E3032342C302E3339342C312E3431342C
                306C362E3839392D362E3939392020204332342E3033382C31362E3333352C32
                342E3033392C31352E3636362C32332E3636322C31352E3238367A222066696C
                6C3D2223313231333133222F3E3C7061746820643D224D31362E3636322C3135
                2E3238364C392E3736332C382E323837632D302E3339312D302E3339342D312E
                3032342D302E3339342D312E3431342C30632D302E3339312C302E3339342D30
                2E3339312C312E3033342C302C312E3432384C31342E3534342C31362020206C
                2D362E3139362C362E323835632D302E3339312C302E3339342D302E3339312C
                312E3033342C302C312E34323863302E3339312C302E3339342C312E3032342C
                302E3339342C312E3431342C306C362E3839392D362E3939392020204331372E
                3033382C31362E3333352C31372E3033392C31352E3636362C31362E3636322C
                31352E3238367A222066696C6C3D2223313231333133222F3E3C2F673E3C672F
                3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
              Icons.NextPageIcon.Data = {
                1054544D53464E435356474269746D6170B50200003C3F786D6C207665727369
                6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
                20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
                703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
                4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
                726F756E643D226E65772030203020333220333222206865696768743D223332
                7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
                222076696577426F783D22302030203332203332222077696474683D22333270
                782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
                7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
                3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
                6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
                643D224D32312E3639382C31352E3238366C2D392E3030322D382E3939392020
                632D302E3339352D302E3339342D312E3033352D302E3339342D312E3433312C
                30632D302E3339352C302E3339342D302E3339352C312E3033342C302C312E34
                32384C31392E3535332C31366C2D382E3238372C382E323835632D302E333935
                2C302E3339342D302E3339352C312E3033342C302C312E343239202063302E33
                39352C302E3339342C312E3033362C302E3339342C312E3433312C306C392E30
                30322D382E3939394332322E3038382C31362E3332352C32322E3038382C3135
                2E3637352C32312E3639382C31352E3238367A222066696C6C3D222331323133
                3133222066696C6C2D72756C653D226576656E6F6464222069643D2243686576
                726F6E5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E
                3C672F3E3C2F7376673E}
              Icons.PreviousPageIcon.Data = {
                1054544D53464E435356474269746D6170B20200003C3F786D6C207665727369
                6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
                20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
                703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
                4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
                726F756E643D226E65772030203020333220333222206865696768743D223332
                7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
                222076696577426F783D22302030203332203332222077696474683D22333270
                782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
                7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
                3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
                6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
                643D224D31312E3236322C31362E3731346C392E3030322C382E393939202063
                302E3339352C302E3339342C312E3033352C302E3339342C312E3433312C3063
                302E3339352D302E3339342C302E3339352D312E3033342C302D312E3432384C
                31332E3430372C31366C382E3238372D382E32383563302E3339352D302E3339
                342C302E3339352D312E3033342C302D312E3432392020632D302E3339352D30
                2E3339342D312E3033362D302E3339342D312E3433312C306C2D392E3030322C
                382E3939394331302E3837322C31352E3637352C31302E3837322C31362E3332
                352C31312E3236322C31362E3731347A222066696C6C3D222331323133313322
                2066696C6C2D72756C653D226576656E6F6464222069643D2243686576726F6E
                5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F
                3E3C2F7376673E}
              Options.Mouse.ColumnSizing = True
              Options.Selection.Mode = gsmSingleRow
              RowCount = 1
            end
            object fncADAPDetalle: TTMSFNCDataGridDatabaseAdapter
              Left = 648
              Top = 415
              Width = 26
              Height = 26
              Visible = True
              AutoCreateColumns = False
              AutoRemoveColumns = False
              Columns = <
                item
                  FieldName = 'FECHA'
                  AutoCreated = True
                end
                item
                  FieldName = 'TIPO_COMPROBANTE'
                  AutoCreated = True
                end
                item
                  FieldName = 'MUESTRANOMBRE'
                  AutoCreated = True
                end
                item
                  FieldName = 'MUESTRANROCPBTE'
                  AutoCreated = True
                end
                item
                  FieldName = 'MUESTRAOPERACION'
                  AutoCreated = True
                end
                item
                  FieldName = 'ENTRA'
                  AutoCreated = True
                end
                item
                  FieldName = 'SALE'
                  AutoCreated = True
                end
                item
                  FieldName = 'MUESTRADEPOSITO'
                  AutoCreated = True
                end>
              DataSource = DatosStock.DSMovLote
            end
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Control de Movimientos'
        ImageIndex = 1
        object dbgMov: TJvDBGrid
          Left = 0
          Top = 54
          Width = 903
          Height = 345
          Align = alClient
          DataSource = DSMovimientos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = dbgMovDrawColumnCell
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
        end
        object pnCabeceraControlMov: TPanel
          Left = 0
          Top = 0
          Width = 903
          Height = 54
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          object Label56: TLabel
            Left = 505
            Top = 4
            Width = 31
            Height = 13
            Caption = 'Desde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 635
            Top = 4
            Width = 28
            Height = 13
            Caption = 'Hasta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Desde_2: TJvDateEdit
            Left = 505
            Top = 20
            Width = 121
            Height = 21
            ButtonWidth = 16
            ShowNullDate = False
            TabOrder = 0
          end
          object Hasta_2: TJvDateEdit
            Left = 632
            Top = 20
            Width = 121
            Height = 21
            ButtonWidth = 16
            ShowNullDate = False
            TabOrder = 1
          end
          object UpDown2: TUpDown
            Left = 759
            Top = 20
            Width = 16
            Height = 20
            Hint = 'Cambia el Per'#237'odo'
            Min = -32768
            Max = 32767
            ParentShowHint = False
            Position = 100
            ShowHint = True
            TabOrder = 2
            OnClick = UpDown2Click
          end
          object rgPasoFecha_2: TRadioGroup
            Left = 10
            Top = 2
            Width = 183
            Height = 46
            Caption = 'Paso de la Fecha'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Dia por Dia'
              'Mes a Mes')
            TabOrder = 3
          end
        end
        object pnPieControlMov: TPanel
          Left = 0
          Top = 399
          Width = 903
          Height = 75
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          object rgTipoMov: TRadioGroup
            Left = 24
            Top = 6
            Width = 185
            Height = 57
            Caption = 'Movimientos de'
            ItemIndex = 0
            Items.Strings = (
              'Ventas'
              'Compras')
            TabOrder = 0
          end
          object edEntra: TJvCalcEdit
            Left = 465
            Top = 20
            Width = 105
            Height = 21
            DisplayFormat = ',0.00'
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
          end
          object edSale: TJvCalcEdit
            Left = 584
            Top = 20
            Width = 105
            Height = 21
            DisplayFormat = ',0.00'
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
          end
          object btVerControlMov: TButton
            Left = 807
            Top = 31
            Width = 64
            Height = 25
            Caption = 'Ver'
            TabOrder = 3
            OnClick = btVerControlMovClick
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Art. Series y Trazables'
        ImageIndex = 2
        object dbgArticulosSeriesTrazables: TJvDBGrid
          Left = 0
          Top = 0
          Width = 903
          Height = 415
          Align = alTop
          DataSource = DatosStock.DSArticulosSeriesTrazab
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgArticulosSeriesTrazablesDblClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 338
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTROL_SERIE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTROL_TRAZABILIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end>
        end
        object BitBtn6: TBitBtn
          Left = 3
          Top = 421
          Width = 75
          Height = 29
          Hint = 'Buscar Articulos Series y Trazables'
          Caption = '&Buscar'
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
          TabOrder = 1
          OnClick = BitBtn6Click
        end
      end
      object Adicionales: TTabSheet
        Caption = 'Adicionales Fabrica'
        ImageIndex = 3
        object pcGeneradorArticulos: TPageControl
          Left = 0
          Top = 0
          Width = 903
          Height = 459
          ActivePage = ArticulosFab
          Align = alTop
          TabOrder = 0
          OnChange = pcGeneradorArticulosChange
          object ArticulosFab: TTabSheet
            Caption = 'Articulos'
            object pnAdicionales: TPanel
              Left = 0
              Top = 0
              Width = 895
              Height = 431
              Align = alClient
              Color = clGradientInactiveCaption
              ParentBackground = False
              TabOrder = 0
              object Label68: TLabel
                Left = 6
                Top = 138
                Width = 36
                Height = 13
                Caption = 'Largo 3'
                FocusControl = edLargo3
              end
              object Label69: TLabel
                Left = 162
                Top = 55
                Width = 41
                Height = 13
                Caption = 'Rotura 1'
                FocusControl = edRotura1
              end
              object Label70: TLabel
                Left = 162
                Top = 98
                Width = 41
                Height = 13
                Caption = 'Rotura 2'
                FocusControl = edRotura2
              end
              object Label65: TLabel
                Left = 6
                Top = 7
                Width = 72
                Height = 13
                Caption = 'Clase Producto'
              end
              object Label66: TLabel
                Left = 6
                Top = 55
                Width = 36
                Height = 13
                Caption = 'Largo 1'
                FocusControl = edLargo1
              end
              object Label67: TLabel
                Left = 6
                Top = 98
                Width = 36
                Height = 13
                Caption = 'Largo 2'
                FocusControl = edLargo2
              end
              object Label74: TLabel
                Left = 313
                Top = 250
                Width = 74
                Height = 13
                Caption = 'Peso Verificado'
                FocusControl = edPeso
              end
              object Label75: TLabel
                Left = 6
                Top = 208
                Width = 90
                Height = 13
                AutoSize = False
                Caption = 'Diametro Olla'
                FocusControl = edbOlla
              end
              object Label76: TLabel
                Left = 6
                Top = 250
                Width = 68
                Height = 13
                Caption = 'Alto Accesorio'
                FocusControl = edAltoAccesorio
              end
              object Label71: TLabel
                Left = 317
                Top = 55
                Width = 23
                Height = 13
                Caption = 'Cima'
                FocusControl = edCima
              end
              object Label73: TLabel
                Left = 162
                Top = 211
                Width = 84
                Height = 13
                Caption = 'Volumen en Litros'
                FocusControl = edVolumen
              end
              object Label78: TLabel
                Left = 191
                Top = 7
                Width = 67
                Height = 13
                Caption = 'Tipo Adicional'
              end
              object spAplicarCodigo: TSpeedButton
                Left = 294
                Top = 352
                Width = 31
                Height = 28
                Hint = 'Aplicacion codigo generado'
                Action = AplicarCodigo
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  000000000002000000090000000E0000000F0000000F00000010000000100000
                  0010000000100000000F0000000A000000020000000000000000000000000000
                  0000000000081E5943C0287657FF277355FF267052FF256D50FF256C4EFF246A
                  4BFF226749FF226547FF174733C10000000A0000000000000000000000000000
                  000000000009389C79FF61E1BFFF47D3ADFF44D0A9FF42CEA5FF40CCA2FF3ECA
                  9FFF3CC79CFF38C599FF267052FF0000000A0000000000000000000000000000
                  00000000000430856AC140B28DFF3FAE8AFF3DAB87FF3CA884FF3BA581FF39A2
                  7FFF389E7BFF369B79FF266D54C1000000040000000000000000000000000000
                  000000000000000000010000000200000002000000030B20176D0A1B136F0000
                  0004000000030000000200000002000000000000000000000000000000000000
                  000000000000000000000000000000000003040C092E21664AF41C583FF6030A
                  072F000000030000000000000000000000000000000000000000000000000000
                  00000000000000000000000000010001010C1B4F39CA2FB084FF2CAB7EFF143F
                  2BCD0001010D0000000100000000000000000000000000000000000000000000
                  000000000000000000010000000512352788329C78FF35CA99FF35C999FF298E
                  6AFF0E291D8B0000000600000001000000000000000000000000000000000000
                  00000000000000000003091A1343328968FD42CEA2FF38CC9DFF37CB9CFF3CCB
                  9DFF256F53FD07140E4700000003000000000000000000000000000000000000
                  00000000000102060413297156E24FCCA5FF41D1A4FF3ECFA2FF3CCEA1FF3DCE
                  A0FF3FC198FF1D553DE302050417000000010000000000000000000000000000
                  0000000000031F5641AA65C4A7FF8BE9CFFF86E7CEFF74E4C5FF73E4C5FF66DF
                  BDFF6CDFBEFF5DB69AFF153E2DAE000000040000000000000000000000000000
                  0000000000033FA280FF3FA07FFF3E9F7FFFB8F5E6FF8CEDD6FF8CEDD5FF9BEF
                  DBFF389071FF388F71FF378E6FFF000000040000000000000000000000000000
                  000000000001000000030000000741A585FFC9F9EFFF9EF4E1FF9EF3E0FFADF5
                  E6FF3B9878FF0000000900000004000000010000000000000000000000000000
                  000000000000000000000000000344AC89FFDEFCF7FFDEFCF7FFDEFCF7FFDEFC
                  F7FF3F9E7EFF0000000400000000000000000000000000000000000000000000
                  0000000000000000000000000002308569BF41B48EFF41B48EFF41B48EFF41B4
                  8EFF2E8166B90000000200000000000000000000000000000000000000000000
                  0000000000000000000000000000000000010000000200000002000000020000
                  0002000000020000000000000000000000000000000000000000}
                ParentShowHint = False
                ShowHint = True
              end
              object Label90: TLabel
                Left = 440
                Top = 117
                Width = 106
                Height = 13
                Caption = 'LARGO1 * 0.15+CIMA'
                FocusControl = edBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label91: TLabel
                Left = 162
                Top = 293
                Width = 78
                Height = 13
                Caption = 'VOLUMEN * 2.4'
                FocusControl = edBase
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label120: TLabel
                Left = 23
                Top = 335
                Width = 84
                Height = 13
                Caption = 'Codigo Resultado'
                FocusControl = edVolumen
              end
              object edRotura1: TDBEdit
                Left = 162
                Top = 71
                Width = 121
                Height = 21
                Color = clYellow
                DataField = 'ROTURA_1'
                DataSource = DSBase
                TabOrder = 5
                OnChange = GenerarCodigoExecute
              end
              object edRotura2: TDBEdit
                Left = 162
                Top = 114
                Width = 121
                Height = 21
                DataField = 'ROTURA_2'
                DataSource = DSBase
                TabOrder = 6
              end
              object edCima: TDBEdit
                Left = 311
                Top = 71
                Width = 121
                Height = 21
                Color = clYellow
                DataField = 'CIMA'
                DataSource = DSBase
                TabOrder = 7
                OnChange = GenerarCodigoExecute
              end
              object edLargo1: TDBEdit
                Left = 6
                Top = 71
                Width = 121
                Height = 21
                Color = clYellow
                DataField = 'LARGO_1'
                DataSource = DSBase
                TabOrder = 2
                OnChange = GenerarCodigoExecute
              end
              object edLargo2: TDBEdit
                Left = 6
                Top = 114
                Width = 121
                Height = 21
                Color = clYellow
                DataField = 'LARGO_2'
                DataSource = DSBase
                TabOrder = 3
                OnChange = GenerarCodigoExecute
              end
              object edLargo3: TDBEdit
                Left = 6
                Top = 154
                Width = 121
                Height = 21
                Color = clYellow
                DataField = 'LARGO_3'
                DataSource = DSBase
                TabOrder = 4
                OnChange = GenerarCodigoExecute
              end
              object edbOlla: TDBEdit
                Left = 6
                Top = 224
                Width = 121
                Height = 21
                Color = clYellow
                DataField = 'DIAMETRO_OLLA'
                DataSource = DSBase
                TabOrder = 8
                OnChange = GenerarCodigoExecute
              end
              object edAltoAccesorio: TDBEdit
                Left = 6
                Top = 267
                Width = 121
                Height = 21
                Color = clYellow
                DataField = 'ALTO_ACC'
                DataSource = DSBase
                TabOrder = 9
                OnChange = GenerarCodigoExecute
              end
              object edVolumen: TDBEdit
                Left = 162
                Top = 224
                Width = 121
                Height = 21
                DataField = 'VOLUMEN'
                DataSource = DSBase
                TabOrder = 10
                OnChange = GenerarCodigoExecute
              end
              object edPeso: TDBEdit
                Left = 313
                Top = 266
                Width = 121
                Height = 21
                DataField = 'PESO'
                DataSource = DSBase
                TabOrder = 11
              end
              object dbcClaseProducto: TJvDBComboBox
                Left = 6
                Top = 26
                Width = 180
                Height = 21
                DataField = 'CIKO_TIPO'
                DataSource = DSBase
                Items.Strings = (
                  'Postes'
                  'Accesorios'
                  'Pre Moldeados Varios')
                TabOrder = 0
                Values.Strings = (
                  '0'
                  '1'
                  '2')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
                OnChange = GenerarCodigoExecute
              end
              object dbcTipo: TJvDBLookupCombo
                Left = 192
                Top = 26
                Width = 337
                Height = 23
                DropDownWidth = 250
                DisplayAllFields = True
                DataField = 'TIPOADICIONAL'
                DataSource = DSBase
                DisplayEmpty = 'Sin Tipo'
                EmptyValue = '**********'
                LookupField = 'TIPO'
                LookupDisplay = 'TIPO;DESCRIPCION'
                LookupSource = DatosStock.DSTipoAdicional
                TabOrder = 1
                OnChange = GenerarCodigoExecute
              end
              object chAplicaCodigo: TCheckBox
                Left = 19
                Top = 312
                Width = 138
                Height = 17
                Caption = 'Aplicar Codigo Directo'
                TabOrder = 13
              end
              object edCodigoResultado: TEdit
                Left = 19
                Top = 352
                Width = 276
                Height = 28
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 12
              end
              object pnBase: TPanel
                Left = 309
                Top = 99
                Width = 140
                Height = 50
                BevelOuter = bvNone
                Enabled = False
                TabOrder = 14
                object Label72: TLabel
                  Left = 7
                  Top = 0
                  Width = 74
                  Height = 13
                  Caption = 'Base Calculada'
                  FocusControl = edBase
                end
                object edBase: TDBEdit
                  Left = 4
                  Top = 15
                  Width = 121
                  Height = 21
                  Color = clInfoBk
                  DataField = 'BASE'
                  DataSource = DSBase
                  TabOrder = 0
                end
              end
              object edNombre: TEdit
                Left = 19
                Top = 391
                Width = 613
                Height = 28
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 15
              end
              object pnPesoCalculado: TPanel
                Left = 162
                Top = 251
                Width = 133
                Height = 41
                BevelOuter = bvNone
                Enabled = False
                TabOrder = 16
                object Label89: TLabel
                  Left = 0
                  Top = 0
                  Width = 74
                  Height = 13
                  Caption = 'Peso Calculado'
                  FocusControl = edPeso_calculado
                end
                object edPeso_calculado: TDBEdit
                  Left = 0
                  Top = 15
                  Width = 121
                  Height = 21
                  Color = clInfoBk
                  DataField = 'PESO_CALCULADO'
                  DataSource = DSBase
                  TabOrder = 0
                  OnChange = edPeso_calculadoChange
                end
              end
            end
          end
          object pgGenerador: TTabSheet
            Caption = 'Generador Cod Accesorios'
            ImageIndex = 1
            DesignSize = (
              895
              431)
            object Label79: TLabel
              Left = 16
              Top = 2
              Width = 67
              Height = 13
              Caption = 'Tipo Adicional'
            end
            object Label80: TLabel
              Left = 417
              Top = 2
              Width = 66
              Height = 13
              Caption = 'Rotura Desde'
            end
            object Label81: TLabel
              Left = 563
              Top = 3
              Width = 63
              Height = 13
              Caption = 'Rotura Hasta'
            end
            object Label82: TLabel
              Left = 421
              Top = 44
              Width = 27
              Height = 13
              Caption = 'Largo'
            end
            object Label83: TLabel
              Left = 563
              Top = 44
              Width = 18
              Height = 13
              Caption = 'Alto'
            end
            object Label84: TLabel
              Left = 722
              Top = 44
              Width = 18
              Height = 13
              Caption = 'Olla'
            end
            object Label85: TLabel
              Left = 346
              Top = 311
              Width = 29
              Height = 13
              Anchors = [akLeft, akBottom]
              Caption = 'Rubro'
              ExplicitTop = 300
            end
            object Label86: TLabel
              Left = 3
              Top = 311
              Width = 51
              Height = 13
              Anchors = [akLeft, akBottom]
              Caption = 'Sub Rubro'
              ExplicitTop = 300
            end
            object Label87: TLabel
              Left = 7
              Top = 383
              Width = 111
              Height = 13
              Caption = 'Completa espacios Con'
            end
            object Label88: TLabel
              Left = 16
              Top = 48
              Width = 76
              Height = 13
              Caption = 'Prefijo al Detalle'
            end
            object sgGenerador: TAdvStringGrid
              Left = 0
              Top = 90
              Width = 854
              Height = 215
              ColCount = 9
              DrawingStyle = gdsClassic
              FixedCols = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = clWindowText
              ActiveCellFont.Height = -11
              ActiveCellFont.Name = 'Tahoma'
              ActiveCellFont.Style = [fsBold]
              ColumnHeaders.Strings = (
                'Codigo Alt'
                'Descripcion'
                'Largo'
                'Rotura'
                'Alto'
                'Olla'
                'Codigo'
                'Rubro'
                'Sub Rubro')
              ControlLook.FixedGradientHoverFrom = clGray
              ControlLook.FixedGradientHoverTo = clWhite
              ControlLook.FixedGradientDownFrom = clGray
              ControlLook.FixedGradientDownTo = clSilver
              ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownHeader.Font.Color = clWindowText
              ControlLook.DropDownHeader.Font.Height = -11
              ControlLook.DropDownHeader.Font.Name = 'Tahoma'
              ControlLook.DropDownHeader.Font.Style = []
              ControlLook.DropDownHeader.Visible = True
              ControlLook.DropDownHeader.Buttons = <>
              ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownFooter.Font.Color = clWindowText
              ControlLook.DropDownFooter.Font.Height = -11
              ControlLook.DropDownFooter.Font.Name = 'Tahoma'
              ControlLook.DropDownFooter.Font.Style = []
              ControlLook.DropDownFooter.Visible = True
              ControlLook.DropDownFooter.Buttons = <>
              ControlLook.ToggleSwitch.BackgroundBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.ButtonBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.CaptionFont.Charset = DEFAULT_CHARSET
              ControlLook.ToggleSwitch.CaptionFont.Color = clWindowText
              ControlLook.ToggleSwitch.CaptionFont.Height = -12
              ControlLook.ToggleSwitch.CaptionFont.Name = 'Segoe UI'
              ControlLook.ToggleSwitch.CaptionFont.Style = []
              ControlLook.ToggleSwitch.Shadow = False
              Filter = <>
              FilterDropDown.Font.Charset = DEFAULT_CHARSET
              FilterDropDown.Font.Color = clWindowText
              FilterDropDown.Font.Height = -11
              FilterDropDown.Font.Name = 'Tahoma'
              FilterDropDown.Font.Style = []
              FilterDropDown.TextChecked = 'Checked'
              FilterDropDown.TextUnChecked = 'Unchecked'
              FilterDropDownClear = '(All)'
              FilterEdit.CaseSensitive = False
              FilterEdit.TypeNames.Strings = (
                'Starts with'
                'Ends with'
                'Contains'
                'Not contains'
                'Equal'
                'Not equal'
                'Larger than'
                'Smaller than'
                'Clear')
              FixedColWidth = 157
              FixedRowHeight = 22
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              HoverButtons.Buttons = <>
              HTMLSettings.ImageFolder = 'images'
              HTMLSettings.ImageBaseName = 'img'
              Multilinecells = True
              PrintSettings.DateFormat = 'dd/mm/yyyy'
              PrintSettings.Font.Charset = DEFAULT_CHARSET
              PrintSettings.Font.Color = clWindowText
              PrintSettings.Font.Height = -11
              PrintSettings.Font.Name = 'Tahoma'
              PrintSettings.Font.Style = []
              PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
              PrintSettings.FixedFont.Color = clWindowText
              PrintSettings.FixedFont.Height = -11
              PrintSettings.FixedFont.Name = 'Tahoma'
              PrintSettings.FixedFont.Style = []
              PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
              PrintSettings.HeaderFont.Color = clWindowText
              PrintSettings.HeaderFont.Height = -11
              PrintSettings.HeaderFont.Name = 'Tahoma'
              PrintSettings.HeaderFont.Style = []
              PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
              PrintSettings.FooterFont.Color = clWindowText
              PrintSettings.FooterFont.Height = -11
              PrintSettings.FooterFont.Name = 'Tahoma'
              PrintSettings.FooterFont.Style = []
              PrintSettings.PageNumSep = '/'
              SearchFooter.FindNextCaption = 'Find &next'
              SearchFooter.FindPrevCaption = 'Find &previous'
              SearchFooter.Font.Charset = DEFAULT_CHARSET
              SearchFooter.Font.Color = clWindowText
              SearchFooter.Font.Height = -11
              SearchFooter.Font.Name = 'Tahoma'
              SearchFooter.Font.Style = []
              SearchFooter.HighLightCaption = 'Highlight'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurrence'
              SearchFooter.HintFindPrev = 'Find previous occurrence'
              SearchFooter.HintHighlight = 'Highlight occurrences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SearchFooter.ResultFormat = '(%d of %d)'
              SelectionTextColor = clWindowText
              Version = '9.2.1.0'
              ColWidths = (
                157
                245
                93
                93
                64
                64
                64
                64
                64)
              RowHeights = (
                22
                22
                22
                22
                22
                22
                22
                22
                22
                22)
            end
            object cbdTipoGenerado: TJvDBLookupCombo
              Left = 16
              Top = 21
              Width = 293
              Height = 23
              DropDownWidth = 250
              DisplayAllFields = True
              DisplayEmpty = 'Sin Tipo'
              EmptyValue = '**********'
              LookupField = 'TIPO'
              LookupDisplay = 'TIPO;DESCRIPCION'
              LookupSource = DatosStock.DSTipoAdicional
              TabOrder = 0
              OnChange = GenerarCodigoExecute
            end
            object edRoturaDesde: TEdit
              Left = 417
              Top = 21
              Width = 121
              Height = 21
              TabOrder = 1
            end
            object edLargo: TEdit
              Left = 417
              Top = 63
              Width = 121
              Height = 21
              TabOrder = 3
            end
            object edOlla: TEdit
              Left = 722
              Top = 63
              Width = 121
              Height = 21
              TabOrder = 5
            end
            object btGenerar: TButton
              Left = 764
              Top = 368
              Width = 75
              Height = 25
              Caption = 'Genera'
              TabOrder = 6
              OnClick = btGenerarClick
            end
            object edRoturaHasta: TEdit
              Left = 563
              Top = 17
              Width = 121
              Height = 21
              TabOrder = 2
            end
            object edAlto: TEdit
              Left = 563
              Top = 63
              Width = 121
              Height = 21
              TabOrder = 4
            end
            object spPaso: TSpinEdit
              Left = 722
              Top = 16
              Width = 62
              Height = 22
              TabStop = False
              Increment = 100
              MaxValue = 0
              MinValue = 0
              TabOrder = 8
              Value = 100
            end
            object btGravar: TButton
              Left = 764
              Top = 399
              Width = 75
              Height = 25
              Caption = 'Gravar'
              TabOrder = 9
              OnClick = btGravarClick
            end
            object chAlfa: TCheckBox
              Left = 7
              Top = 360
              Width = 137
              Height = 17
              Caption = 'Codigos Alfanumericos'
              TabOrder = 10
            end
            object rgJustifica: TRadioGroup
              Left = 144
              Top = 360
              Width = 105
              Height = 57
              Caption = 'Justifica a la'
              ItemIndex = 1
              Items.Strings = (
                'Derecha'
                'Izquierda')
              TabOrder = 11
            end
            object cbChar: TComboBox
              Left = 7
              Top = 402
              Width = 65
              Height = 21
              ItemIndex = 1
              TabOrder = 12
              Text = '0'
              Items.Strings = (
                ' '
                '0'
                '-'
                '.')
            end
            object edNombreArticulo: TEdit
              Left = 17
              Top = 63
              Width = 286
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 13
            end
            object chbEditar: TCheckBox
              Left = 712
              Top = 311
              Width = 49
              Height = 17
              Caption = 'Editar'
              TabOrder = 14
              OnClick = chbEditarClick
            end
            object edCodSubRubro: TJvComboEdit
              Left = 3
              Top = 329
              Width = 73
              Height = 21
              ButtonHint = 'Activa Busqueda'
              ButtonWidth = 24
              ClickKey = 16397
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              TabOrder = 15
              Text = ''
            end
            object edMuestraSubRubro: TEdit
              Left = 83
              Top = 329
              Width = 257
              Height = 21
              Color = clInfoBk
              Enabled = False
              TabOrder = 16
            end
            object edCodRubStock: TEdit
              Left = 346
              Top = 329
              Width = 63
              Height = 21
              Color = clInfoBk
              Enabled = False
              TabOrder = 17
            end
            object edMuestraRubStock: TEdit
              Left = 415
              Top = 329
              Width = 186
              Height = 21
              Color = clInfoBk
              Enabled = False
              TabOrder = 18
            end
          end
        end
      end
      object WoordPress: TTabSheet
        Caption = 'WoordPress'
        ImageIndex = 4
        object Label99: TLabel
          Left = 572
          Top = 443
          Width = 19
          Height = 13
          Caption = 'Pag'
        end
        object Label100: TLabel
          Left = 687
          Top = 443
          Width = 50
          Height = 13
          Caption = 'Item x Pag'
        end
        object lbPaginas: TLabel
          Left = 635
          Top = 461
          Width = 4
          Height = 13
          Caption = '--'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -8
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
        end
        object pcWordPress: TPageControl
          Left = 0
          Top = 0
          Width = 903
          Height = 436
          ActivePage = TabSheet5
          Align = alTop
          TabOrder = 0
          object TabSheet5: TTabSheet
            Caption = 'Producto'
            ImageIndex = 2
            object pnArticuloWoordPress: TPanel
              Left = 0
              Top = 0
              Width = 895
              Height = 408
              Align = alClient
              BevelOuter = bvLowered
              Color = clMenuHighlight
              ParentBackground = False
              TabOrder = 0
              object lbPermalink: TLabel
                Left = 6
                Top = 368
                Width = 12
                Height = 13
                Cursor = crHandPoint
                Caption = '----'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                OnClick = lbPermalinkClick
              end
              object Label104: TLabel
                Left = 5
                Top = 120
                Width = 86
                Height = 13
                Caption = 'Descripcion Larga'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label103: TLabel
                Left = 489
                Top = 4
                Width = 30
                Height = 13
                Caption = 'Precio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label102: TLabel
                Left = 641
                Top = 48
                Width = 62
                Height = 13
                Caption = 'Precio Oferta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label101: TLabel
                Left = 6
                Top = 5
                Width = 9
                Height = 13
                Caption = 'Id'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label105: TLabel
                Left = 7
                Top = 77
                Width = 37
                Height = 13
                Caption = 'Nombre'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label106: TLabel
                Left = 7
                Top = 215
                Width = 84
                Height = 13
                Caption = 'Descripcion Corta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label107: TLabel
                Left = 7
                Top = 322
                Width = 13
                Height = 13
                Caption = 'Url'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label108: TLabel
                Left = 144
                Top = 5
                Width = 22
                Height = 13
                Caption = 'SKU'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label109: TLabel
                Left = 489
                Top = 48
                Width = 70
                Height = 13
                Caption = 'Precio Regular'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label112: TLabel
                Left = 641
                Top = 3
                Width = 69
                Height = 13
                Caption = 'Stock en Web'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label116: TLabel
                Left = 291
                Top = 4
                Width = 98
                Height = 13
                Caption = 'Tipo Variable/Simple'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label117: TLabel
                Left = 489
                Top = 93
                Width = 50
                Height = 13
                Caption = 'Categorias'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label118: TLabel
                Left = 291
                Top = 47
                Width = 55
                Height = 13
                Caption = 'Variaciones'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object edPrecio_wp: TEdit
                Left = 489
                Top = 22
                Width = 121
                Height = 21
                Alignment = taRightJustify
                Enabled = False
                TabOrder = 0
              end
              object edNombre_wp: TEdit
                Left = 7
                Top = 93
                Width = 446
                Height = 21
                Enabled = False
                TabOrder = 1
              end
              object edSku_wp: TEdit
                Left = 144
                Top = 24
                Width = 121
                Height = 21
                Enabled = False
                TabOrder = 2
              end
              object edID_wp: TEdit
                Left = 6
                Top = 24
                Width = 121
                Height = 21
                Enabled = False
                TabOrder = 3
              end
              object edLongDesc_wp: TMemo
                Left = 5
                Top = 139
                Width = 864
                Height = 70
                ScrollBars = ssVertical
                TabOrder = 4
              end
              object mShotDescription: TMemo
                Left = 5
                Top = 234
                Width = 864
                Height = 82
                HideSelection = False
                ScrollBars = ssVertical
                TabOrder = 5
              end
              object edUrl_wp: TEdit
                Left = 6
                Top = 341
                Width = 863
                Height = 21
                Enabled = False
                TabOrder = 6
              end
              object edSalePreci_wp: TEdit
                Left = 641
                Top = 67
                Width = 121
                Height = 21
                Alignment = taRightJustify
                Enabled = False
                TabOrder = 7
              end
              object edRegularPrec_wp: TEdit
                Left = 489
                Top = 67
                Width = 121
                Height = 21
                Alignment = taRightJustify
                Enabled = False
                TabOrder = 8
              end
              object edStockWeb: TEdit
                Left = 641
                Top = 22
                Width = 121
                Height = 21
                Alignment = taRightJustify
                Enabled = False
                TabOrder = 9
              end
              object edTipo: TEdit
                Left = 291
                Top = 23
                Width = 121
                Height = 21
                Enabled = False
                TabOrder = 10
              end
              object edCategorias: TEdit
                Left = 489
                Top = 112
                Width = 380
                Height = 21
                Enabled = False
                TabOrder = 11
              end
              object edVariaciones: TEdit
                Left = 291
                Top = 66
                Width = 121
                Height = 21
                Enabled = False
                TabOrder = 12
              end
            end
          end
          object pagLstProductos: TTabSheet
            Caption = 'Listado Productos'
            object dbgProductos: TDBAdvGrid
              Left = 0
              Top = 41
              Width = 895
              Height = 367
              Align = alClient
              ColCount = 2
              DrawingStyle = gdsClassic
              FixedColor = clWhite
              FixedCols = 0
              RowCount = 2
              FixedRows = 1
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
              PopupMenu = popMenuExportar
              TabOrder = 0
              OnDblClick = dbgProductosDblClick
              OnGetFormat = dbgProductosGetFormat
              OnSaveCell = dbgProductosSaveCell
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = 4474440
              ActiveCellFont.Height = -12
              ActiveCellFont.Name = 'Segoe UI'
              ActiveCellFont.Style = [fsBold]
              ActiveCellColor = 11565130
              ActiveCellColorTo = 11565130
              BorderColor = 11250603
              ControlLook.FixedGradientFrom = clWhite
              ControlLook.FixedGradientTo = clWhite
              ControlLook.FixedGradientHoverFrom = clGray
              ControlLook.FixedGradientHoverTo = clWhite
              ControlLook.FixedGradientHoverMirrorFrom = clWhite
              ControlLook.FixedGradientHoverMirrorTo = clWhite
              ControlLook.FixedGradientHoverBorder = 11645361
              ControlLook.FixedGradientDownFrom = clWhite
              ControlLook.FixedGradientDownTo = clWhite
              ControlLook.FixedGradientDownMirrorFrom = clWhite
              ControlLook.FixedGradientDownMirrorTo = clWhite
              ControlLook.FixedGradientDownBorder = 11250603
              ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownHeader.Font.Color = clWindowText
              ControlLook.DropDownHeader.Font.Height = -11
              ControlLook.DropDownHeader.Font.Name = 'Segoe UI'
              ControlLook.DropDownHeader.Font.Style = []
              ControlLook.DropDownHeader.Visible = True
              ControlLook.DropDownHeader.Buttons = <>
              ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownFooter.Font.Color = clWindowText
              ControlLook.DropDownFooter.Font.Height = -11
              ControlLook.DropDownFooter.Font.Name = 'Segoe UI'
              ControlLook.DropDownFooter.Font.Style = []
              ControlLook.DropDownFooter.Visible = True
              ControlLook.DropDownFooter.Buttons = <>
              ControlLook.ToggleSwitch.BackgroundBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.ButtonBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.CaptionFont.Charset = DEFAULT_CHARSET
              ControlLook.ToggleSwitch.CaptionFont.Color = clWindowText
              ControlLook.ToggleSwitch.CaptionFont.Height = -12
              ControlLook.ToggleSwitch.CaptionFont.Name = 'Segoe UI'
              ControlLook.ToggleSwitch.CaptionFont.Style = []
              ControlLook.ToggleSwitch.Shadow = False
              Filter = <>
              FilterDropDown.Font.Charset = DEFAULT_CHARSET
              FilterDropDown.Font.Color = clWindowText
              FilterDropDown.Font.Height = -12
              FilterDropDown.Font.Name = 'Segoe UI'
              FilterDropDown.Font.Style = []
              FilterDropDown.TextChecked = 'Checked'
              FilterDropDown.TextUnChecked = 'Unchecked'
              FilterDropDownClear = '(All)'
              FilterEdit.TypeNames.Strings = (
                'Starts with'
                'Ends with'
                'Contains'
                'Not contains'
                'Equal'
                'Not equal'
                'Larger than'
                'Smaller than'
                'Clear')
              FixedColWidth = 125
              FixedRowHeight = 22
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Segoe UI'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              HoverButtons.Buttons = <>
              HTMLSettings.ImageFolder = 'images'
              HTMLSettings.ImageBaseName = 'img'
              Look = glCustom
              Multilinecells = True
              PrintSettings.DateFormat = 'dd/mm/yyyy'
              PrintSettings.Font.Charset = DEFAULT_CHARSET
              PrintSettings.Font.Color = clWindowText
              PrintSettings.Font.Height = -12
              PrintSettings.Font.Name = 'Segoe UI'
              PrintSettings.Font.Style = []
              PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
              PrintSettings.FixedFont.Color = clWindowText
              PrintSettings.FixedFont.Height = -12
              PrintSettings.FixedFont.Name = 'Segoe UI'
              PrintSettings.FixedFont.Style = []
              PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
              PrintSettings.HeaderFont.Color = clWindowText
              PrintSettings.HeaderFont.Height = -12
              PrintSettings.HeaderFont.Name = 'Segoe UI'
              PrintSettings.HeaderFont.Style = []
              PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
              PrintSettings.FooterFont.Color = clWindowText
              PrintSettings.FooterFont.Height = -12
              PrintSettings.FooterFont.Name = 'Segoe UI'
              PrintSettings.FooterFont.Style = []
              PrintSettings.PageNumSep = '/'
              SearchFooter.ColorTo = clNone
              SearchFooter.FindNextCaption = 'Find &next'
              SearchFooter.FindPrevCaption = 'Find &previous'
              SearchFooter.Font.Charset = DEFAULT_CHARSET
              SearchFooter.Font.Color = clWindowText
              SearchFooter.Font.Height = -12
              SearchFooter.Font.Name = 'Segoe UI'
              SearchFooter.Font.Style = []
              SearchFooter.HighLightCaption = 'Highlight'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurrence'
              SearchFooter.HintFindPrev = 'Find previous occurrence'
              SearchFooter.HintHighlight = 'Highlight occurrences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SearchFooter.ResultFormat = '(%d of %d)'
              SelectionColor = 13744549
              SelectionTextColor = clWindowText
              SortSettings.HeaderColor = clWhite
              SortSettings.HeaderColorTo = clWhite
              SortSettings.HeaderMirrorColor = clWhite
              SortSettings.HeaderMirrorColorTo = clWhite
              Version = '2.8.3.9'
              AutoCreateColumns = True
              AutoRemoveColumns = False
              Columns = <
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = 3881787
                  HeaderFont.Height = -12
                  HeaderFont.Name = 'Segoe UI'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -12
                  PrintFont.Name = 'Segoe UI'
                  PrintFont.Style = []
                  Width = 125
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = 3881787
                  HeaderFont.Height = -12
                  HeaderFont.Name = 'Segoe UI'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -12
                  PrintFont.Name = 'Segoe UI'
                  PrintFont.Style = []
                  Width = 142
                end>
              DataSource = DatosWordPress.DSProductos
              InvalidPicture.Data = {
                055449636F6E0000010001002020200000000000A81000001600000028000000
                2000000040000000010020000000000000100000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
                6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
                FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
                6A6A6B4000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000006A6A6B22
                7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
                3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
                888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000006A6A6B43838383D8
                B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
                0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
                ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
                00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
                CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
                0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
                4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
                000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
                2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
                0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
                1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
                0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
                13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
                0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
                0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
                0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
                0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
                0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
                0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
                00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
                0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
                0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
                0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
                00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
                0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
                0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
                4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
                000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
                2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
                0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
                EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
                6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
                1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
                0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
                D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
                6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
                0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
                3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
                2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
                6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
                0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
                ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
                0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
                6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
                0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
                C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
                0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
                6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
                3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
                C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
                0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
                6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
                3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
                CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
                0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
                6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
                3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
                D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
                0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
                6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
                3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
                DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
                0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
                6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
                3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
                D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
                0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
                6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
                3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
                5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
                4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
                6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
                5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
                2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
                F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
                6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
                5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
                3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
                CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
                00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
                4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
                4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
                5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
                0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
                4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
                4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
                292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
                0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
                6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
                4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
                3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
                000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
                A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
                4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
                4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
                00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
                D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
                4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
                8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
                0000000000000000000000000000000000000000000000006A6A6B43838383D8
                B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
                5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
                E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000006A6A6B22
                7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
                8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
                888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
                FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
                6A6A6B4000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
                6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
                C000000380000001800000010000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000080000001
                80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
                FFC003FF}
              ShowUnicode = False
              ColWidths = (
                125
                142)
              RowHeights = (
                22
                22)
            end
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 895
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              Color = clMenuHighlight
              ParentBackground = False
              TabOrder = 1
              object Label97: TLabel
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 82
                Height = 26
                Margins.Left = 10
                Margins.Top = 10
                Margins.Bottom = 5
                Align = alLeft
                Alignment = taCenter
                Caption = 'Productos'
                Color = clHighlight
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ExplicitHeight = 20
              end
              object btSincronizarWebProductos: TButton
                Left = 696
                Top = 10
                Width = 152
                Height = 25
                BiDiMode = bdLeftToRight
                Caption = 'Sinconizar con Web'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 0
                OnClick = btSincronizarWebProductosClick
              end
            end
          end
          object pagLstCategorias: TTabSheet
            Caption = 'Listado Categorias'
            ImageIndex = 1
            object dbgCategorias: TDBAdvGrid
              Left = 0
              Top = 41
              Width = 895
              Height = 367
              Align = alClient
              ColCount = 2
              DrawingStyle = gdsClassic
              FixedColor = clWhite
              FixedCols = 0
              RowCount = 2
              FixedRows = 1
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
              TabOrder = 0
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = 4474440
              ActiveCellFont.Height = -12
              ActiveCellFont.Name = 'Segoe UI'
              ActiveCellFont.Style = [fsBold]
              ActiveCellColor = 11565130
              ActiveCellColorTo = 11565130
              BorderColor = 11250603
              ControlLook.FixedGradientFrom = clWhite
              ControlLook.FixedGradientTo = clWhite
              ControlLook.FixedGradientHoverFrom = clGray
              ControlLook.FixedGradientHoverTo = clWhite
              ControlLook.FixedGradientHoverMirrorFrom = clWhite
              ControlLook.FixedGradientHoverMirrorTo = clWhite
              ControlLook.FixedGradientHoverBorder = 11645361
              ControlLook.FixedGradientDownFrom = clWhite
              ControlLook.FixedGradientDownTo = clWhite
              ControlLook.FixedGradientDownMirrorFrom = clWhite
              ControlLook.FixedGradientDownMirrorTo = clWhite
              ControlLook.FixedGradientDownBorder = 11250603
              ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownHeader.Font.Color = clWindowText
              ControlLook.DropDownHeader.Font.Height = -11
              ControlLook.DropDownHeader.Font.Name = 'Segoe UI'
              ControlLook.DropDownHeader.Font.Style = []
              ControlLook.DropDownHeader.Visible = True
              ControlLook.DropDownHeader.Buttons = <>
              ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownFooter.Font.Color = clWindowText
              ControlLook.DropDownFooter.Font.Height = -11
              ControlLook.DropDownFooter.Font.Name = 'Segoe UI'
              ControlLook.DropDownFooter.Font.Style = []
              ControlLook.DropDownFooter.Visible = True
              ControlLook.DropDownFooter.Buttons = <>
              ControlLook.ToggleSwitch.BackgroundBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.ButtonBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.CaptionFont.Charset = DEFAULT_CHARSET
              ControlLook.ToggleSwitch.CaptionFont.Color = clWindowText
              ControlLook.ToggleSwitch.CaptionFont.Height = -12
              ControlLook.ToggleSwitch.CaptionFont.Name = 'Segoe UI'
              ControlLook.ToggleSwitch.CaptionFont.Style = []
              ControlLook.ToggleSwitch.Shadow = False
              Filter = <>
              FilterDropDown.Font.Charset = DEFAULT_CHARSET
              FilterDropDown.Font.Color = clWindowText
              FilterDropDown.Font.Height = -12
              FilterDropDown.Font.Name = 'Segoe UI'
              FilterDropDown.Font.Style = []
              FilterDropDown.TextChecked = 'Checked'
              FilterDropDown.TextUnChecked = 'Unchecked'
              FilterDropDownClear = '(All)'
              FilterEdit.TypeNames.Strings = (
                'Starts with'
                'Ends with'
                'Contains'
                'Not contains'
                'Equal'
                'Not equal'
                'Larger than'
                'Smaller than'
                'Clear')
              FixedColWidth = 125
              FixedRowHeight = 22
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Segoe UI'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              HoverButtons.Buttons = <>
              HTMLSettings.ImageFolder = 'images'
              HTMLSettings.ImageBaseName = 'img'
              Look = glCustom
              PrintSettings.DateFormat = 'dd/mm/yyyy'
              PrintSettings.Font.Charset = DEFAULT_CHARSET
              PrintSettings.Font.Color = clWindowText
              PrintSettings.Font.Height = -12
              PrintSettings.Font.Name = 'Segoe UI'
              PrintSettings.Font.Style = []
              PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
              PrintSettings.FixedFont.Color = clWindowText
              PrintSettings.FixedFont.Height = -12
              PrintSettings.FixedFont.Name = 'Segoe UI'
              PrintSettings.FixedFont.Style = []
              PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
              PrintSettings.HeaderFont.Color = clWindowText
              PrintSettings.HeaderFont.Height = -12
              PrintSettings.HeaderFont.Name = 'Segoe UI'
              PrintSettings.HeaderFont.Style = []
              PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
              PrintSettings.FooterFont.Color = clWindowText
              PrintSettings.FooterFont.Height = -12
              PrintSettings.FooterFont.Name = 'Segoe UI'
              PrintSettings.FooterFont.Style = []
              PrintSettings.PageNumSep = '/'
              SearchFooter.ColorTo = clNone
              SearchFooter.FindNextCaption = 'Find &next'
              SearchFooter.FindPrevCaption = 'Find &previous'
              SearchFooter.Font.Charset = DEFAULT_CHARSET
              SearchFooter.Font.Color = clWindowText
              SearchFooter.Font.Height = -12
              SearchFooter.Font.Name = 'Segoe UI'
              SearchFooter.Font.Style = []
              SearchFooter.HighLightCaption = 'Highlight'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurrence'
              SearchFooter.HintFindPrev = 'Find previous occurrence'
              SearchFooter.HintHighlight = 'Highlight occurrences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SearchFooter.ResultFormat = '(%d of %d)'
              SelectionColor = 13744549
              SelectionTextColor = clWindowText
              SortSettings.HeaderColor = clWhite
              SortSettings.HeaderColorTo = clWhite
              SortSettings.HeaderMirrorColor = clWhite
              SortSettings.HeaderMirrorColorTo = clWhite
              Version = '2.8.3.9'
              AutoCreateColumns = True
              AutoRemoveColumns = False
              Columns = <
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = 3881787
                  HeaderFont.Height = -12
                  HeaderFont.Name = 'Segoe UI'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -12
                  PrintFont.Name = 'Segoe UI'
                  PrintFont.Style = []
                  Width = 125
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = 3881787
                  HeaderFont.Height = -12
                  HeaderFont.Name = 'Segoe UI'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -12
                  PrintFont.Name = 'Segoe UI'
                  PrintFont.Style = []
                  Width = 142
                end>
              DataSource = DatosWordPress.DSCategorias
              InvalidPicture.Data = {
                055449636F6E0000010001002020200000000000A81000001600000028000000
                2000000040000000010020000000000000100000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
                6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
                FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
                6A6A6B4000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000006A6A6B22
                7C7C7C98888889F0BDBDBDFCE9E9EBFED9D9E9FEB5B5DDFE8B8BCDFE595AB7FF
                3739A8FF2B2CA4FF4A49B1FF7171C1FFA1A2D7FFD3D3E8FFEAEAEBFEBEBEBFFC
                888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000006A6A6B43838383D8
                B7B7B8FAECECEFFEC0C0DFFF7977C4FF2221A0FF12129BFF1010A4FF0C0CA8FF
                0A0AACFF0A0AB4FF0A0AB9FF0D0DBEFF0F0FB1FF1111A6FF5656B8FFAEADDCFF
                ECECEFFEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
                00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
                CACAE8FF4443B0FF171799FF11119CFF0C0C98FF0B0B9BFF0B0BA0FF0A0AA6FF
                0909ACFF0909B2FF0808BAFF0707BFFF0B09C8FF0D0DCEFF1111CCFF1010AFFF
                4A49B2FFCFCFEBFFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
                000000000000000000000000000000006A6A6B43878788EAE1E1E1FFA8A8DAFF
                2323A0FF15159CFF0D0D92FF0C0C95FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA6FF
                0909ACFF0909B2FF0808B8FF0808BCFF0808C3FF0C0CC9FF0C0CD0FF0D0DD6FF
                1313CFFF2222A9FFAFAFDEFFE1E1E1FF878788EA6A6A6B430000000000000000
                0000000000000000000000006A6A6B22838383D8D3D3D3FEA8A8D9FF2020A4FF
                13139BFF0C0C92FF0C0C95FF0C0C97FF0C0C99FF0B0B9EFF0B0BA0FF0A0AA4FF
                0A0AA9FF0909B0FF0808B4FF0808BBFF0707C0FF0A0AC6FF0909CCFF0C0CD3FF
                0D0DD8FF1313D3FF1A1AA8FFAEADDEFFD4D4D4FE838383D86A6A6B2200000000
                0000000000000000000000007C7C7C98B7B7B8FACACAE8FF2524A3FF13139FFF
                0C0C97FF0C0C95FF0C0C95FF0C0C91FF0C0C95FF0B0B9EFF0B0BA0FF0A0AA4FF
                0A0AA8FF0909ADFF0909B2FF0808B8FF0808BCFF0707C0FF0808BCFF0707C5FF
                0C0CD3FF0D0DD7FF1212D1FF2020A7FFCDCDEBFFB8B8B9FA7C7C7C9800000000
                00000000000000006A6A6B40888889F0ECECEFFE4545B1FF1616A4FF0B0B9BFF
                0C0C99FF0C0C96FF3333A2FFB9B9D0FF393A9BFF0C0C95FF0B0BA1FF0A0AA4FF
                0A0AA7FF0A0AABFF0909B0FF0808B4FF0808B7FF2F2FC2FFAEAEE2FF4B4BBFFF
                0707BEFF0B0BD1FF0C0CD3FF1413CCFF4848B1FFECECEFFE888889F06A6A6B40
                00000000000000007575769EBFBFBFFD9B9BD5FF1C1CA6FF0C0CA1FF0B0B9FFF
                0B0B9AFF3535A7FFB5B5BEFFE6E6DFFFEDEDEFFF3C3C9CFF0C0C97FF0A0AA4FF
                0A0AA6FF0A0AA9FF0909ADFF0909B0FF2626B5FFCECEDEFFFFFFFBFFEEEEF1FF
                4848BAFF0808BCFF0A0ACDFF0B0BCEFF1111ABFFBEC0E0FFBFC0BFFD7575769E
                000000006A6A6B25787879F1E3E3E5FE4646B2FF1414A8FF0A0AA4FF0B0BA0FF
                2121A9FFBDBDCAFFD0D0C8FFC5C5C5FFE3E3E1FFEDEDEFFF3E3E9EFF0C0C98FF
                0A0AA6FF0A0AA8FF0A0AA9FF2B2BB0FFC0C0CDFFEAEAE2FFEBEBEBFFFEFEF8FF
                EDEDEEFF2828BDFF0707C4FF0809C7FF0F0FC4FF8788CBFFEBEBECFE79797AF1
                6A6A6B256A6A6B609D9E9DF6D6D7E4FF3A3AB3FF1212ADFF0A0AA8FF0A0AA4FF
                1313AAFFABABCFFFD6D6CBFFCACACAFFC6C6C6FFE4E4E0FFEEEEEFFF3F3FA0FF
                0C0C99FF0A0AA6FF2828ABFFB2B2BFFFD8D8CEFFD6D6D8FFE0E0E0FFF6F5EDFF
                D1D1EDFF1E1CC0FF0707BEFF0707BFFF0707C0FF2120AAFFD3D5E9FE9FA0A0F6
                6A6A6B606A6A6B94BDBDBDFBBABBDCFF3A39B7FF2F2FB8FF0909ADFF0A0AA9FF
                0A0AA6FF1515ACFFADADCFFFD6D6CBFFCBCBCAFFC6C6C6FFE4E4E1FFEEEEEFFF
                3838A1FF2222A2FFACABB8FFC8C8C0FFC7C7C8FFCDCDCDFFE1E1D9FFC8CAE1FF
                2424BCFF0808B4FF0808B9FF0808BAFF0808BBFF0F0EABFFA1A2D5FEC0C0C0FC
                6A6A6B946A6A6BC0D9D8D7FE9999D1FF3838BBFF3636BCFF2C2CB7FF0909ADFF
                0A0AA9FF0A0AA4FF1C1CAFFFB1B1CFFFD6D6CBFFCCCCCBFFC7C7C7FFE4E4E1FF
                ECECEEFFACACB7FFC2C2BCFFBEBEBFFFC0C0C0FFCFCFC6FFC1C1D5FF2727B8FF
                0909ACFF0909B2FF0909B2FF0909B4FF0808B4FF0E0EB5FF6E6EBFFFD9D9D9FE
                6A6A6BC06A6A6BE1EBEAEBFF7D7CC7FF3838BFFF3434BEFF3536BEFF2A2AB8FF
                0909B0FF0909ACFF0A0AA8FF1C1CB1FFB2B2D0FFD7D7CCFFCBCBCBFFC7C7C8FF
                C8C8C3FFC6C6C3FFBFBFC1FFBDBDBDFFC5C5BCFFB8B8CEFF2929B5FF0A0AA8FF
                0909ACFF0909ADFF0909AFFF0909AFFF0909AFFF0C0CB0FF4747AFFFECECEDFF
                6A6A6BE16A6A6BF8F9F9F9FF6666C1FF3838C4FF3535C2FF3434C0FF3535BEFF
                3030BCFF1313B4FF0909ADFF0A0AA8FF1E1EB3FFAAAAD0FFD3D3CDFFCCCCCCFF
                C8C8C8FFC3C3C3FFC2C2C1FFC4C4BFFFB2B2CBFF2B2BB4FF0A0AA4FF0A0AA8FF
                0A0AA8FF0A0AA9FF0A0AA9FF0A0AA9FF0A0AA9FF0B0BA9FF3131A6FFFAFAFAFF
                6A6A6BF86A6A6BF8FBFBFBFF5959BEFF3B3BCAFF3A3AC8FF3737C4FF3535C2FF
                3636C0FF3636BEFF2323B8FF0909B1FF0A0AA7FF4949BEFFD6D6D4FFD3D3D1FF
                CDCDCDFFC8C8C8FFC4C4C3FFEDEDEDFF5F5FB3FF0C0C98FF0A0AA7FF0A0AA6FF
                0A0AA6FF0A0AA6FF0A0AA4FF0A0AA6FF0A0AA4FF0B0BA4FF2D2DA6FFFBFBFBFF
                6A6A6BF86A6A6BE1EDEDEEFF7F80CBFF4041CCFF3C3CCAFF3A3AC8FF383AC8FF
                3838C4FF3636C2FF3939C0FF2123B7FF4A4AC2FFCBCBDEFFE0E0DCFFD6D6D6FF
                D2D2D3FFCDCDCEFFC9C9C9FFE2E2E1FFF1F1F2FF4242A3FF0C0C99FF0A0AA4FF
                0A0AA4FF0A0AA4FF0B0BA3FF0B0BA3FF0B0BA1FF0E0EA1FF4443B0FFEDEDEEFF
                6A6A6BE16A6A6BC0DADADAFF9C9BD5FE4949CDFF3E3DD0FF3C3DCEFF3C3CCAFF
                3A3AC8FF3B39C7FF2828BDFF5C5CCCFFE5E5EDFFF4F4EDFFE5E5E6FFDEDEDEFF
                DCDCD9FFD9D9D3FFCDCDCDFFC8C8C8FFE5E5E1FFF1F1F3FF3F3FA0FF0C0C99FF
                0A0AA4FF0B0BA1FF0B0BA0FF0B0BA0FF0B0B9FFF1313A2FF6B6BC0FFDADADAFF
                6A6A6BC06A6A6B94C0C0C0FDBDBAE1FE5655CFFF4141D4FF3F3FD2FF3F3FCEFF
                3D3DCCFF2C2AC3FF5E5ED3FFEBEBF6FFFFFFFAFFF1F1F1FFEDEDEEFFF0F0E9FF
                D2D2E6FFBDBDD6FFDADAD3FFCFCFCFFFC9C9CAFFE5E5E2FFF1F1F3FF3A3AA0FF
                0C0C98FF0B0BA3FF0B0B9FFF0B0B9EFF0B0B9EFF1C1CA4FF9C9CD3FFC1C1C1FD
                6A6A6B946A6A6B609F9F9FF6DAD9EAFF6B6BCFFF4444D7FF4143D6FF4242D3FF
                3434CDFF6464DBFFEFEFFFFFFFFFFFFFFCFCFCFFF6F6F6FFFCFCF4FFE2E1F0FF
                5050CCFF4040C1FFC3C3DBFFE1E1D8FFD4D4D5FFCFCFCFFFE8E8E5FFF2F2F4FF
                4040A2FF0C0C99FF0F0FA2FF0F0FA0FF0F0F9DFF302FA9FFD1D1E8FEA0A0A0F6
                6A6A6B606A6A6B25787879F1E9E9EBFEA7A7DAFF6060DBFF4547DBFF3C3CD6FF
                5857DEFFF2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F8FF5B5BD4FF
                2828BDFF2A2BBDFF4949C5FFC3C3DBFFE4E4DAFFD5D5D5FFCECED0FFE8E8E5FF
                F4F4F4FF4949AFFF2121A6FF2A2AA6FF2C2BA9FF5557B8FFEAEAECFE787879F1
                6A6A6B25000000007575769EBEBEBEFDC9CAE6FF7A79DBFF4C4CDFFF4141DBFF
                5757E0FFEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFF5B5BD7FF2E2EC6FF
                3E3EC9FF3A3AC5FF2C2EC1FF4A49C8FFC2C2DDFFE3E3DAFFD5D5D4FFDADAD3FF
                CACBD9FF4747BBFF2525ADFF2C2BACFF3332AEFFA5A4D8FFBFBFBFFD7575769E
                00000000000000006A6A6B40888889F0ECECEFFE9696D6FF7B7BE3FF4D4BE0FF
                4141DBFF5F5FE6FFE7E7FFFFFFFFFFFFE9E9FFFF5A5ADCFF3333CAFF4242CFFF
                4040CBFF3D3DC9FF3D3EC8FF3030C2FF4848C9FFC0C0DDFFECEEDEFFD0D0E0FF
                5554C7FF2828B3FF3232B4FF3434B1FF5453B7FFECECEFFE888889F06A6A6B40
                0000000000000000000000007C7C7C98B7B7B8FAD0D0ECFF8F8FDBFF6868E3FF
                4E4EE2FF3E40DBFF6565E9FFB2B2F7FF6565E4FF393BD2FF4646D7FF4343D4FF
                4343D1FF4242CFFF4040CBFF3F3FCAFF3333C4FF4E4ECBFF9E9EE2FF5C5BCFFF
                292ABAFF3636BCFF3938B8FF3F3EB1FFCBCBE9FFB7B7B8FA7C7C7C9800000000
                0000000000000000000000006A6A6B22838383D8D3D3D3FEB5B5E2FF9E9EE4FF
                6766E2FF4E50E6FF4646E0FF3D3DDAFF4444DCFF4B4BDCFF4848DBFF4847D9FF
                4646D5FF4443D3FF4343D1FF4242CFFF4143CDFF3A3AC8FF312FC5FF3535C3FF
                3C3CC3FF3D3DBEFF403FB5FFACACDCFFD3D3D3FE838383D86A6A6B2200000000
                000000000000000000000000000000006A6A6B43878788EAE1E1E1FFB5B5E2FF
                A7A6E4FF7877E5FF5151E5FF4F4FE4FF4E4EE2FF4D4DE0FF4C4CDEFF4B4BDCFF
                4949DBFF4848D7FF4747D5FF4545D3FF4545D1FF4343CFFF4242CCFF3F3FCBFF
                4343C2FF4645B6FFADADDCFFE1E1E1FF878788EA6A6A6B430000000000000000
                00000000000000000000000000000000000000006A6A6B4E878788EAD3D3D3FE
                D0D0ECFFAAA9DFFFA2A2ECFF6565E3FF5151E6FF4F4FE4FF4F4DE4FF4D4DE0FF
                4D4DDFFF4D4DDCFF4C49DBFF4A4AD8FF4749D6FF4747D4FF4949CBFF4B4BC3FF
                8E8ED0FFCDCCE8FFD3D3D3FE878788EA6A6A6B4E000000000000000000000000
                0000000000000000000000000000000000000000000000006A6A6B43838383D8
                B7B7B8FAECECEFFEC3C2E5FFADAEE1FF9E9DE8FF6F6FE0FF5C5CE1FF5452E2FF
                5051E1FF4F4FDFFF4F4FDBFF5150D6FF5151CFFF5F5FC8FFA1A1D3FEC7C8E0FE
                E4E4E7FEB7B7B8FA838383D86A6A6B4300000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000006A6A6B22
                7C7C7C98888889F0BFBFBFFDEBEBECFED8D9EBFEBDBDE4FEA8A7DCFF9695D7FF
                8886D4FF7F7DCEFF8C8BD2FFA1A2D9FFC0BEE1FED9D9EAFEEAEAECFEBFBFBFFD
                888889F07C7C7C986A6A6B220000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000006A6A6B407575769E787879F19F9F9FF6C0C0C0FDDADADAFFEDEDEEFF
                FBFBFBFFFBFBFBFFEDEDEEFFDADADAFFC0C0C0FD9F9F9FF6787879F17575769E
                6A6A6B4000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000006A6A6B256A6A6B606A6A6B946A6A6BC06A6A6BE1
                6A6A6BF86A6A6BF86A6A6BE16A6A6BC06A6A6B946A6A6B606A6A6B2500000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
                C000000380000001800000010000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000080000001
                80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
                FFC003FF}
              ShowUnicode = False
              ExplicitWidth = 887
              ExplicitHeight = 369
              ColWidths = (
                125
                142)
              RowHeights = (
                22
                22)
            end
            object pnCategorias: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 895
              Height = 41
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              BevelOuter = bvNone
              Color = clMenuHighlight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              object Label96: TLabel
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 88
                Height = 26
                Margins.Left = 10
                Margins.Top = 10
                Margins.Bottom = 5
                Align = alLeft
                Alignment = taCenter
                Caption = 'Categorias'
                ExplicitHeight = 20
              end
              object btSincronizarWebCateg: TButton
                Left = 696
                Top = 10
                Width = 152
                Height = 25
                Action = SincronizaCategoriasWeb
                BiDiMode = bdLeftToRight
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
        object spItemsPag: TSpinEdit
          Left = 742
          Top = 439
          Width = 50
          Height = 22
          Hint = 'Items x Pagina'
          MaxValue = 100
          MinValue = 1
          TabOrder = 1
          Value = 30
        end
        object Button3: TButton
          Left = 798
          Top = 439
          Width = 75
          Height = 25
          Action = ConsultaWP
          TabOrder = 2
        end
        object upPaginas: TUpDown
          Left = 653
          Top = 439
          Width = 16
          Height = 21
          Associate = edPagina
          Min = 1
          Position = 1
          TabOrder = 3
          OnClick = upPaginasClick
        end
        object edPagina: TEdit
          Left = 624
          Top = 439
          Width = 29
          Height = 21
          TabOrder = 4
          Text = '1'
        end
      end
      object pagComposicion: TTabSheet
        Caption = 'Composicion Produccion'
        ImageIndex = 5
        object dbgDetalleProduccion: TDBGrid
          Left = 16
          Top = 24
          Width = 836
          Height = 361
          DataSource = DSStockProdDetalle
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_STK'
              Title.Alignment = taCenter
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Width = 317
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDAD'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD_FISICA'
              Title.Alignment = taCenter
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD_REAL'
              Title.Alignment = taCenter
              Width = 119
              Visible = True
            end>
        end
      end
    end
    object ToolBar2: TToolBar
      Left = 0
      Top = 0
      Width = 911
      Height = 19
      ButtonHeight = 21
      ButtonWidth = 52
      Caption = 'ToolBar2'
      DrawingStyle = dsGradient
      Menu = MenuConfig
      ShowCaptions = True
      TabOrder = 1
    end
  end
  inherited ToolBar1: TToolBar
    Top = 521
    Width = 911
    ButtonHeight = 28
    OnDblClick = ToolBar1DblClick
    ExplicitTop = 521
    ExplicitWidth = 911
    inherited btConfirma: TBitBtn
      Width = 74
      Height = 28
      ExplicitWidth = 74
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Left = 76
      Width = 76
      Height = 28
      ExplicitLeft = 76
      ExplicitWidth = 76
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Width = 74
      Height = 28
      ExplicitWidth = 74
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
      Width = 76
      Height = 28
      ExplicitLeft = 316
      ExplicitWidth = 76
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Width = 14
      Height = 28
      ExplicitWidth = 14
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Left = 406
      Width = 76
      Height = 28
      ExplicitLeft = 406
      ExplicitWidth = 76
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Width = 74
      Height = 28
      ExplicitWidth = 74
      ExplicitHeight = 28
    end
    object BitBtn2: TBitBtn
      Left = 556
      Top = 0
      Width = 38
      Height = 28
      Hint = 'Re Armar Movimientos de Stock'
      Action = RearmarMovimientos
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000006E6E6E006E6E6E0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000006E6E6E00FFD4D400FFD4D400000000006E6E6E006E6E
        6E00000000000000000000000000000000000000000000000000000000000000
        0000000000006E6E6E00FFD4D400A4A0A0006E6E6E00000000006E6E6E006E6E
        6E006E6E6E000000000000000000000000000000000000000000000000000000
        00006E6E6E00A4A0A0006E6E6E0000000000A4A0A000A4A0A000A4A0A000A4A0
        A000A4A0A000000000006E6E6E00000000000000000000000000000000006E6E
        6E006E6E6E0000000000FFD4D400FFD4D400FFD4D400FFD4D400000000000000
        000000000000000000007A7A7A00000000006E6E6E00000000006E6E6E000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFD4
        D400FF8EAB0000000000000000007A7A7A00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000006E6E6E0000000000000000000000
        00000000000000000000000000006E6E6E000000000000000000000000000000
        0000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFD4
        D400FFD4D40000000000000000006E6E6E00000000007A7A7A00000000000000
        000000000000FFFFFF00FFFFFF003E3E3E00FFD4D400FFD4D400FFD4D400FFD4
        D400FFD4D400FFD4D400FFD4D400FFD4D4003E3E3E007A7A7A00000000000000
        00000000000000000000FFFFFF000000000000000000FFD4D400FFD4D4000000
        000000000000FFD4D400FFD4D40000000000000000007A7A7A00000000000000
        0000000000000000000000000000FF8EAB00FF8EAB00FF8EAB00000000006E6E
        6E006E6E6E0000000000FF8EAB00FF8EAB00FF8EAB0000000000000000000000
        00000000000000000000000000000000000000000000FF8EAB00FF8EAB00FFD4
        D400FF8EAB00FFD4D400FFD4D400000000000000000000000000000000000000
        000000000000000000000000000000000000FF8EAB00FF8EAB0000000000FF8E
        AB00FFD4D40000000000FFD4D400FFD4D4000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FF8E
        AB00FF8EAB000000000000000000000000000000000000000000}
      TabOrder = 7
    end
    object BitBtn7: TBitBtn
      Left = 594
      Top = 0
      Width = 62
      Height = 28
      Action = Imprimir
      Caption = 'Impr.'
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
      TabOrder = 8
    end
    object ToolButton1: TToolButton
      Left = 656
      Top = 0
      Width = 200
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn9: TBitBtn
      Left = 856
      Top = 0
      Width = 34
      Height = 28
      Action = ImprimirEtiquetas
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
  end
  inherited Panel1: TPanel
    Top = 551
    Width = 911
    StyleElements = [seFont, seClient, seBorder]
    OnDblClick = Panel1DblClick
    ExplicitTop = 551
    ExplicitWidth = 911
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 822
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 822
    end
  end
  object CodigoEAN: TEdit [4]
    Left = 663
    Top = 523
    Width = 193
    Height = 21
    TabOrder = 3
    TextHint = 'Codigo EAN'
    OnEnter = CodigoEANEnter
    OnKeyDown = CodigoEANKeyDown
  end
  inherited ActionList1: TActionList
    Left = 836
    Top = 84
    inherited Prev: TAction [5]
    end
    inherited Next: TAction [6]
    end
    inherited Buscar: TAction [7]
    end
    inherited Salir: TAction [8]
    end
    object TraerMovimientos: TAction [9]
      Caption = 'TraerMovimientos'
      ImageIndex = 0
      ShortCut = 114
      OnExecute = TraerMovimientosExecute
    end
    object BuscarMarca: TAction [10]
      Caption = 'BuscarMarca'
      OnExecute = BuscarMarcaExecute
    end
    object BuscarRubro: TAction [11]
      Caption = 'BuscarRubro'
    end
    object BuscarSubRubro: TAction [12]
      Caption = 'BuscarSubRubro'
    end
    object BuscarDeposito: TAction [13]
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarProvee: TAction
      Caption = 'BuscarProvee'
      OnExecute = BuscarProveeExecute
    end
    object BuscarStkComponente: TAction
      Caption = 'BuscarStkComponente'
    end
    object ImprimirMov: TAction
      Caption = 'ImprimirMov'
      OnExecute = ImprimirMovExecute
    end
    object TraerSeries: TAction
      Caption = 'Ver Series'
      OnExecute = TraerSeriesExecute
    end
    object BorrarHistorial: TAction
      Caption = 'Borrar Historial'
      OnExecute = BorrarHistorialExecute
    end
    object RearmarMovimientos: TAction
      OnExecute = RearmarMovimientosExecute
    end
    object BuscarTablaPrecio: TAction
      Caption = 'BuscarTablaPrecio'
      OnExecute = BuscarTablaPrecioExecute
    end
    object BuscarTablaPrecioDetalle: TAction
      Caption = 'BuscarTablaPrecioDetalle'
      OnExecute = BuscarTablaPrecioDetalleExecute
    end
    object VerPrecioSombra: TAction
      OnExecute = VerPrecioSombraExecute
    end
    object MarcarProveedorDefecto: TAction
      Caption = 'Marcar Prov. por Def.'
      OnExecute = MarcarProveedorDefectoExecute
    end
    object BuscaURL: TAction
      Hint = 'Ingresar URL del Producto'
      OnExecute = BuscaURLExecute
    end
    object CambiarCodigo: TAction
      Caption = 'Cambiar Codigo'
      ShortCut = 49219
      OnExecute = CambiarCodigoExecute
    end
    object BorrarStockProv: TAction
      Caption = 'Borrar Art. del Proveedor'
      OnExecute = BorrarStockProvExecute
    end
    object SimularArmadoMov: TAction
      Caption = 'Simular Mov.Temp'
      ImageIndex = 0
      OnExecute = SimularArmadoMovExecute
    end
    object BuscarCodLibre: TAction
      Caption = 'BuscarCodLibre'
      ShortCut = 16507
    end
    object Imprimir: TAction
      Caption = 'Impr.'
      Hint = 'Imprimir Ficha'
      OnExecute = ImprimirExecute
    end
    object ReamarMovi_OfLog: TAction
      Caption = 'RearmarMovim_OfLog'
      OnExecute = ReamarMovi_OfLogExecute
    end
    object GenerarCodigo: TAction
      Caption = 'GenerarCodigo'
      OnExecute = GenerarCodigoExecute
    end
    object AplicarCodigo: TAction
      OnExecute = AplicarCodigoExecute
    end
    object ABMSeccionesPLU: TAction
      OnExecute = ABMSeccionesPLUExecute
    end
    object RecIVA: TAction
      Caption = 'RecIVA'
      OnExecute = RecIVAExecute
    end
    object ReemplazarArticulo: TAction
      Caption = 'Reemplazar Con Movimientos'
      OnExecute = ReemplazarArticuloExecute
    end
    object ImprimirEtiquetas: TAction
      Checked = True
      Hint = 'Impresion de Etiquetas'
      OnExecute = ImprimirEtiquetasExecute
    end
    object BuscarCtaGasto: TAction
      Caption = 'BuscarCtaGasto'
      OnExecute = BuscarCtaGastoExecute
    end
    object BuscarSubRubro_2: TAction
      Caption = 'BuscarSubRubro_2'
      OnExecute = BuscarSubRubro_2Execute
    end
    object BuscarSubProduccion: TAction
      Caption = 'BuscarSubProduccion'
      OnExecute = BuscarSubProduccionExecute
    end
    object ConsultaWP: TAction
      Caption = 'Consultar'
      OnExecute = ConsultaWPExecute
    end
    object SincronizaCategoriasWeb: TAction
      Caption = 'Sinconizar con Web'
      OnExecute = SincronizaCategoriasWebExecute
    end
    object Traer_Sku: TAction
      Caption = 'Traer_Sku'
      OnExecute = Traer_SkuExecute
    end
    object AgregarWeb: TAction
      Caption = 'Agregara a la Web'
      OnExecute = AgregarWebExecute
    end
    object ModificaWeb: TAction
      Caption = 'Modificar en la Web'
      OnExecute = ModificaWebExecute
    end
    object BorrarWeb: TAction
      Caption = 'Borrar de la Web'
      OnExecute = BorrarWebExecute
    end
    object ExportarArticulosWeb: TAction
      Caption = 'Exportar Articulos'
      OnExecute = ExportarArticulosWebExecute
    end
    object VerRecetaProduccion: TAction
      Caption = 'Ver Receta de Produccion'
      OnExecute = VerRecetaProduccionExecute
    end
    object BuscarVariable: TAction
      Caption = 'BuscarVariable'
      OnExecute = BuscarVariableExecute
    end
    object Variables: TAction
      Caption = 'Variables'
      OnExecute = VariablesExecute
    end
    object AgregarWebVariante: TAction
      Caption = 'AgregarWebVariante'
      OnExecute = AgregarWebVarianteExecute
    end
    object GuardarFoto: TAction
      Caption = 'Guardar Foto Miniatura'
      OnExecute = GuardarFotoExecute
    end
    object LimpiarFoto: TAction
      Caption = 'Limpiar Foto Miniatura'
      OnExecute = LimpiarFotoExecute
    end
    object CalculoVolumen: TAction
      Caption = 'CalculoVolumen'
      ShortCut = 8278
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosStock.CDSStock
    Left = 520
    Top = 104
  end
  inherited ImageList1: TImageList
    Left = 601
    Top = 136
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
    Left = 576
    Top = 200
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 24
    Top = 696
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 480
    Top = 232
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 696
    Top = 304
  end
  inherited QBrowse2: TFDQuery
    Left = 160
    Top = 576
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(codigo_stk) from stock')
    Left = 184
    Top = 640
  end
  inherited ImageListDos: TImageList
    Left = 280
    Top = 160
  end
  object ComBuscadorCodTablaPrecios: TComBuscador
    Data = DatosStock.CDSBuscaTablaPrecioDet
    Campo = 'codigo'
    Titulo = 'Tabla de Precios'
    rOk = False
    Left = 24
    Top = 645
  end
  object ComBuscadorDepositos: TComBuscador
    Data = DatosStock.CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 608
    Top = 336
  end
  object ComBuscadorTablaPrecios: TComBuscador
    Data = DatosStock.CDSBuscaTablaPrecioCab
    Campo = 'ID'
    Titulo = 'Tabla de Precios'
    rOk = False
    Left = 48
    Top = 589
  end
  object CDSMovCompra: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCompra'
    Left = 440
    Top = 160
    object CDSMovCompraID_FC: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object CDSMovCompraTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCompraCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovCompraNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 14
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovCompraFECHACOMPRA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 12
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
    end
    object CDSMovCompraAFECTA_STOCK: TStringField
      DisplayLabel = 'Afec.Stock'
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovCompraANULADO: TStringField
      DisplayLabel = 'Anul.'
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object CDSMovCompraCONTROL: TFloatField
      DisplayLabel = 'Control'
      DisplayWidth = 12
      FieldName = 'CONTROL'
      Origin = 'CONTROL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovCompraDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSMovCompraCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      DisplayWidth = 12
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCompraENTRA: TFloatField
      DisplayLabel = 'Entra'
      DisplayWidth = 12
      FieldName = 'ENTRA'
      Origin = 'ENTRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCompraSALE: TFloatField
      DisplayLabel = 'Sale'
      DisplayWidth = 12
      FieldName = 'SALE'
      Origin = 'SALE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object ComBuscadorMarca: TComBuscador
    Data = DatosStock.CDSBuscaMarca
    Campo = 'MARCA_STK'
    Titulo = 'Marcas'
    rOk = False
    Left = 672
    Top = 389
  end
  object DSMovimientos: TDataSource
    DataSet = CDSMovVenta
    Left = 580
    Top = 109
  end
  object DSPMovCompra: TDataSetProvider
    DataSet = QMovCompra
    Options = []
    Left = 64
    Top = 312
  end
  object CDSMovVenta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovVenta'
    Left = 312
    Top = 208
    object CDSMovVentaID_FC: TIntegerField
      DisplayLabel = 'id'
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object CDSMovVentaTIPOCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      DisplayWidth = 6
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovVentaCLASECPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      DisplayWidth = 6
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovVentaNROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 15
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovVentaFECHAVTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      DisplayWidth = 12
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSMovVentaANULADO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Anul.'
      DisplayWidth = 2
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object CDSMovVentaAFECTA_STOCK: TStringField
      Alignment = taCenter
      DisplayLabel = 'Afecta Stock'
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovVentaCONTROL: TFloatField
      DisplayLabel = 'Control'
      DisplayWidth = 12
      FieldName = 'CONTROL'
      Origin = 'CONTROL'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSMovVentaCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovVentaENTRA: TFloatField
      DisplayLabel = 'Entra'
      FieldName = 'ENTRA'
      Origin = 'ENTRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovVentaSALE: TFloatField
      DisplayLabel = 'Sale'
      FieldName = 'SALE'
      Origin = 'SALE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPMovVenta: TDataSetProvider
    DataSet = QMovVenta
    Options = []
    Left = 232
    Top = 96
  end
  object MenuConfig: TMainMenu
    Left = 608
    Top = 576
    object Opciones1: TMenuItem
      Caption = 'Opciones'
      object MemorizarUltimoIngreso1: TMenuItem
        Caption = 'Memorizar Ultimo Ingreso'
        OnClick = MemorizarUltimoIngreso1Click
      end
      object RefrescaDatosActivo: TMenuItem
        Caption = 'Refrescar Datos Al Mostrar Formulario'
        OnClick = RefrescaDatosActivoClick
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
      object DatosAdicionales1: TMenuItem
        Caption = 'Datos Adicionales'
        OnClick = DatosAdicionales1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object BloquearPreciosCosto: TMenuItem
        Caption = 'Bloquear Editar Costo'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object UsaWoordPress1: TMenuItem
        Caption = 'Usa WoordPress'
        OnClick = UsaWoordPress1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object AgregarWeb1: TMenuItem
        Action = AgregarWeb
      end
      object BorrarWeb1: TMenuItem
        Action = BorrarWeb
      end
      object ModificaWeb1: TMenuItem
        Action = ModificaWeb
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object VerRecetadeProduccion1: TMenuItem
        Action = VerRecetaProduccion
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object foto1: TMenuItem
        Action = GuardarFoto
      end
      object LimpiarFoto1: TMenuItem
        Action = LimpiarFoto
      end
    end
  end
  object opdImagenes: TOpenDialog
    Filter = 
      'All (*.png;*.gif;*.cur;*.pcx;*.ani;*.gif;*.png;*.gif;*.jpg;*.jpe' +
      'g;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.png;*.gif;*.cur;*.pcx;' +
      '*.ani;*.gif;*.png;*.gif;*.jpg;*.jpeg;*.jpg;*.jpeg;*.bmp;*.ico;*.' +
      'emf;*.wmf|Portable Network Graphics (*.png)|*.png|CompuServe GIF' +
      ' Image (*.gif)|*.gif|Cursor files (*.cur)|*.cur|PCX Image (*.pcx' +
      ')|*.pcx|ANI Image (*.ani)|*.ani|CompuServe GIF Image (*.gif)|*.g' +
      'if|PNG graphics from DevExpress (*.png)|*.png|GIF Image (*.gif)|' +
      '*.gif|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.j' +
      'peg|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpe' +
      'g|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (' +
      '*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 680
    Top = 576
  end
  object frxReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.351088680550000000
    ReportOptions.LastChange = 39638.351088680550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 568
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object pmHistorial: TPopupMenu
    Left = 488
    Top = 368
    object BorrarHistorial1: TMenuItem
      Action = BorrarHistorial
    end
  end
  object frDBMov: TfrxDBDataset
    UserName = 'frDBMov'
    CloseDataSource = False
    DataSet = DatosStock.QMovStk
    BCDToCurrency = False
    DataSetOptions = []
    Left = 280
    Top = 584
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
        FieldName = 'COSTO'
        FieldAlias = 'COSTO'
      end
      item
        FieldName = 'TIPOOPERACION'
        FieldAlias = 'TIPOOPERACION'
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
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'ENTRA'
        FieldAlias = 'ENTRA'
      end
      item
        FieldName = 'SALE'
        FieldAlias = 'SALE'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'ID_COMPROB'
        FieldAlias = 'ID_COMPROB'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end>
  end
  object frDBStock: TfrxDBDataset
    UserName = 'frDBStock'
    CloseDataSource = False
    DataSource = DSBase
    BCDToCurrency = False
    DataSetOptions = []
    Left = 349
    Top = 587
    FieldDefs = <
      item
        FieldName = 'CODIGO_STK'
        FieldAlias = 'CODIGO_STK'
      end
      item
        FieldName = 'DETALLE_STK'
        FieldAlias = 'DETALLE_STK'
      end
      item
        FieldName = 'DETALLE_STK_ADICIONAL'
        FieldAlias = 'DETALLE_STK_ADICIONAL'
      end
      item
        FieldName = 'CODIGO_BARRAS'
        FieldAlias = 'CODIGO_BARRAS'
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
        FieldName = 'MARCA_STK'
        FieldAlias = 'MARCA_STK'
      end
      item
        FieldName = 'REEMPLAZO_STK'
        FieldAlias = 'REEMPLAZO_STK'
      end
      item
        FieldName = 'TASA_IVA'
        FieldAlias = 'TASA_IVA'
      end
      item
        FieldName = 'SOBRETASA_IVA'
        FieldAlias = 'SOBRETASA_IVA'
      end
      item
        FieldName = 'COSTO_EXENTO_STK'
        FieldAlias = 'COSTO_EXENTO_STK'
      end
      item
        FieldName = 'COSTO_GRAVADO_STK'
        FieldAlias = 'COSTO_GRAVADO_STK'
      end
      item
        FieldName = 'COSTO_IVA'
        FieldAlias = 'COSTO_IVA'
      end
      item
        FieldName = 'COSTO_FINAL'
        FieldAlias = 'COSTO_FINAL'
      end
      item
        FieldName = 'COSTO_TOTAL_STK'
        FieldAlias = 'COSTO_TOTAL_STK'
      end
      item
        FieldName = 'FIJACION_PRECIO_EXENTO'
        FieldAlias = 'FIJACION_PRECIO_EXENTO'
      end
      item
        FieldName = 'FIJACION_PRECIO_GRAVADO'
        FieldAlias = 'FIJACION_PRECIO_GRAVADO'
      end
      item
        FieldName = 'FIJACION_PRECIO_IVA'
        FieldAlias = 'FIJACION_PRECIO_IVA'
      end
      item
        FieldName = 'FIJACION_PRECIO_FINAL'
        FieldAlias = 'FIJACION_PRECIO_FINAL'
      end
      item
        FieldName = 'FIJACION_PRECIO_TOTAL'
        FieldAlias = 'FIJACION_PRECIO_TOTAL'
      end
      item
        FieldName = 'FUAP'
        FieldAlias = 'FUAP'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'CONTROLASTOCK'
        FieldAlias = 'CONTROLASTOCK'
      end
      item
        FieldName = 'CODIGO_PROVEEDOR'
        FieldAlias = 'CODIGO_PROVEEDOR'
      end
      item
        FieldName = 'CLASE_ARTICULO'
        FieldAlias = 'CLASE_ARTICULO'
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'MODO_GRAVAMEN'
      end
      item
        FieldName = 'CON_IMP_INT'
        FieldAlias = 'CON_IMP_INT'
      end
      item
        FieldName = 'IMPUESTO_INTERNOS'
        FieldAlias = 'IMPUESTO_INTERNOS'
      end
      item
        FieldName = 'GRAVADO_IB'
        FieldAlias = 'GRAVADO_IB'
      end
      item
        FieldName = 'TASA_IB'
        FieldAlias = 'TASA_IB'
      end
      item
        FieldName = 'ACTUALIZACOSTO'
        FieldAlias = 'ACTUALIZACOSTO'
      end
      item
        FieldName = 'DEPRODUCCION'
        FieldAlias = 'DEPRODUCCION'
      end
      item
        FieldName = 'PRODUCCIONDIRECTA'
        FieldAlias = 'PRODUCCIONDIRECTA'
      end
      item
        FieldName = 'UNIDAD_COMPRA'
        FieldAlias = 'UNIDAD_COMPRA'
      end
      item
        FieldName = 'CONTROL_SERIE'
        FieldAlias = 'CONTROL_SERIE'
      end
      item
        FieldName = 'USA_CODIGOBARRA'
        FieldAlias = 'USA_CODIGOBARRA'
      end
      item
        FieldName = 'UNIDAD_ULTIMAUSADA'
        FieldAlias = 'UNIDAD_ULTIMAUSADA'
      end
      item
        FieldName = 'ID_TABLAPRECIOS'
        FieldAlias = 'ID_TABLAPRECIOS'
      end
      item
        FieldName = 'ID_TABLAPRECIOSDETALLE'
        FieldAlias = 'ID_TABLAPRECIOSDETALLE'
      end
      item
        FieldName = 'CODIGO_PRECIO'
        FieldAlias = 'CODIGO_PRECIO'
      end
      item
        FieldName = 'FECHA_ALTA'
        FieldAlias = 'FECHA_ALTA'
      end
      item
        FieldName = 'COSTO_GRAVADO_SOMBRA'
        FieldAlias = 'COSTO_GRAVADO_SOMBRA'
      end
      item
        FieldName = 'COSTO_EXENTO_SOMBRA'
        FieldAlias = 'COSTO_EXENTO_SOMBRA'
      end
      item
        FieldName = 'FECHA_ACT_SOMBRA'
        FieldAlias = 'FECHA_ACT_SOMBRA'
      end
      item
        FieldName = 'FECHA_ULTIMAVTA'
        FieldAlias = 'FECHA_ULTIMAVTA'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'COSTO_GRAVADO_P'
        FieldAlias = 'COSTO_GRAVADO_P'
      end
      item
        FieldName = 'COSTO_EXENTO_P'
        FieldAlias = 'COSTO_EXENTO_P'
      end
      item
        FieldName = 'COSTO_TOTAL_P'
        FieldAlias = 'COSTO_TOTAL_P'
      end
      item
        FieldName = 'POSICION'
        FieldAlias = 'POSICION'
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
        FieldName = 'EDITAPRECIO'
        FieldAlias = 'EDITAPRECIO'
      end
      item
        FieldName = 'EDITADETALLE'
        FieldAlias = 'EDITADETALLE'
      end
      item
        FieldName = 'URL'
        FieldAlias = 'URL'
      end
      item
        FieldName = 'FECHA_ULTIMA_COMPRA'
        FieldAlias = 'FECHA_ULTIMA_COMPRA'
      end
      item
        FieldName = 'CONTENIDO_COMPRA'
        FieldAlias = 'CONTENIDO_COMPRA'
      end
      item
        FieldName = 'PORCENTAJE_SOBRECOSTO'
        FieldAlias = 'PORCENTAJE_SOBRECOSTO'
      end
      item
        FieldName = 'MUESTRARUBRO'
        FieldAlias = 'MUESTRARUBRO'
      end
      item
        FieldName = 'MUESTRASUBRUBRO'
        FieldAlias = 'MUESTRASUBRUBRO'
      end
      item
        FieldName = 'MUESTRAMARCA'
        FieldAlias = 'MUESTRAMARCA'
      end
      item
        FieldName = 'MUESTRATASA'
        FieldAlias = 'MUESTRATASA'
      end
      item
        FieldName = 'MUESTRATASAPORCENTAJE'
        FieldAlias = 'MUESTRATASAPORCENTAJE'
      end
      item
        FieldName = 'MUESTRASOBRETASA'
        FieldAlias = 'MUESTRASOBRETASA'
      end
      item
        FieldName = 'MUESTRASOBRETASAPROCENTAJE'
        FieldAlias = 'MUESTRASOBRETASAPROCENTAJE'
      end
      item
        FieldName = 'MUESTRATASAIB'
        FieldAlias = 'MUESTRATASAIB'
      end
      item
        FieldName = 'MUESTRATABLAPRECIODETALLE'
        FieldAlias = 'MUESTRATABLAPRECIODETALLE'
      end
      item
        FieldName = 'MUESTRATABLAPRECIO1'
        FieldAlias = 'MUESTRATABLAPRECIO1'
      end
      item
        FieldName = 'MUESTRATABLAPRECIO2'
        FieldAlias = 'MUESTRATABLAPRECIO2'
      end
      item
        FieldName = 'COMANDA'
        FieldAlias = 'COMANDA'
      end
      item
        FieldName = 'MUESTRACOSTOCONIVA'
        FieldAlias = 'MUESTRACOSTOCONIVA'
      end
      item
        FieldName = 'MUESTRAFIJACIONCONIVA'
        FieldAlias = 'MUESTRAFIJACIONCONIVA'
      end
      item
        FieldName = 'RUBRO_GASTO'
        FieldAlias = 'RUBRO_GASTO'
      end
      item
        FieldName = 'RUBRO_CTA_GASTO'
        FieldAlias = 'RUBRO_CTA_GASTO'
      end
      item
        FieldName = 'PUBLICAR_WEB'
        FieldAlias = 'PUBLICAR_WEB'
      end
      item
        FieldName = 'GTIA_MESES'
        FieldAlias = 'GTIA_MESES'
      end
      item
        FieldName = 'GARANTIAOFICIAL'
        FieldAlias = 'GARANTIAOFICIAL'
      end
      item
        FieldName = 'IMPRIMIR_LSTPRECIOS'
        FieldAlias = 'IMPRIMIR_LSTPRECIOS'
      end
      item
        FieldName = 'CONTROL_TRAZABILIDAD'
        FieldAlias = 'CONTROL_TRAZABILIDAD'
      end
      item
        FieldName = 'IVA_MODIFICADO'
        FieldAlias = 'IVA_MODIFICADO'
      end
      item
        FieldName = 'SIGLAS'
        FieldAlias = 'SIGLAS'
      end
      item
        FieldName = 'PRESENTACION_2_CANT'
        FieldAlias = 'PRESENTACION_2_CANT'
      end
      item
        FieldName = 'TASA_MANUFACTURA'
        FieldAlias = 'TASA_MANUFACTURA'
      end
      item
        FieldName = 'PLU'
        FieldAlias = 'PLU'
      end
      item
        FieldName = 'ACOPIABLE'
        FieldAlias = 'ACOPIABLE'
      end
      item
        FieldName = 'CIKO_TIPO'
        FieldAlias = 'CIKO_TIPO'
      end
      item
        FieldName = 'LARGO_1'
        FieldAlias = 'LARGO_1'
      end
      item
        FieldName = 'LARGO_2'
        FieldAlias = 'LARGO_2'
      end
      item
        FieldName = 'LARGO_3'
        FieldAlias = 'LARGO_3'
      end
      item
        FieldName = 'ROTURA_1'
        FieldAlias = 'ROTURA_1'
      end
      item
        FieldName = 'ROTURA_2'
        FieldAlias = 'ROTURA_2'
      end
      item
        FieldName = 'CIMA'
        FieldAlias = 'CIMA'
      end
      item
        FieldName = 'BASE'
        FieldAlias = 'BASE'
      end
      item
        FieldName = 'VOLUMEN'
        FieldAlias = 'VOLUMEN'
      end
      item
        FieldName = 'PESO'
        FieldAlias = 'PESO'
      end
      item
        FieldName = 'DIAMETRO_OLLA'
        FieldAlias = 'DIAMETRO_OLLA'
      end
      item
        FieldName = 'ALTO_ACC'
        FieldAlias = 'ALTO_ACC'
      end
      item
        FieldName = 'MODO_IVA'
        FieldAlias = 'MODO_IVA'
      end>
  end
  object QMovVenta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_fc,c.tipocpbte,c.clasecpbte,c.nrocpbte,c.fechavta,c.' +
        'anulado,'
      
        '       d.codigoarticulo,d.detalle,d.cantidad,d.afecta_stock,m.en' +
        'tra,m.sale,d.cantidad-(m.entra+m.sale) as Control from fcvtadet ' +
        'd'
      'left join fcvtacab c on d.id_cabfac=c.id_fc'
      
        'left join mov_stock m on m.id_detalle_cpbte=d.id and m.tipocpbte' +
        '=c.tipocpbte and m.tipooperacion='#39'V'#39
      
        'where (d.codigoarticulo = :codigo or :codigo =  '#39'********'#39' ) and' +
        ' d.afecta_stock='#39'S'#39' and'
      '      (c.fechavta between :desde and :hasta )'
      'order by c.fechavta')
    Left = 76
    Top = 413
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QMovCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_fc,c.tipocpbte,c.clasecpbte,c.nrocpbte,c.fechacompra' +
        ',c.anulado,'
      
        '       d.codigoarticulo,d.detalle,d.cantidad,d.afecta_stock,m.en' +
        'tra,m.sale,d.cantidad-(m.entra+m.sale) as Control from fccompdet' +
        ' d'
      'left join fccompcab c on d.id_cabfac=c.id_fc'
      
        'left join mov_stock m on m.id_detalle_cpbte=d.id and m.tipocpbte' +
        '=c.tipocpbte and m.tipooperacion='#39'C'#39
      
        'where ( d.codigoarticulo = :codigo or :codigo = '#39'********'#39' ) and' +
        ' d.afecta_stock='#39'S'#39' and'
      '       (c.fechacompra between :desde and :hasta )'
      'order by c.fechacompra')
    Left = 172
    Top = 397
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QBuscadorCodigo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(Codigo_Stk) from Stock '
      'where (Rubro_Stk=:id_Rubro) and (SubRubro_Stk=:id_SubRubro)')
    Left = 464
    Top = 593
    ParamData = <
      item
        Name = 'ID_RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end
      item
        Name = 'ID_SUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end>
    object QBuscadorCodigoMAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
  object spABMStock: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtAnsiString
        TargetDataType = dtAnsiString
      end>
    StoredProcName = 'ABM_STOCK_ADICIONAL'
    Left = 815
    Top = 664
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 3
        Name = 'MARCA'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 4
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = 'SUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 6
        Name = 'MODO_GRAVAMEN'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 7
        Name = 'TASA_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'SOBRETASA_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'COSTO_GRAVADO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'COSTO_EXENTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'DETALLE_ADICIONAL'
        DataType = ftString
        ParamType = ptInput
        Size = 300
      end
      item
        Position = 12
        Name = 'CODIGO_ALTERNATIVO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 13
        Name = 'PRESENTACION_CANTIDAD'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 14
        Name = 'PRESENTACION_UNIDAD'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 15
        Name = 'MONEDA'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 16
        Name = 'LARGO1'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'ROTURA1'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'CIMA'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 19
        Name = 'BASE'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'ALTO_ACC'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 21
        Name = 'DIAMETRO_OLLA'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object spRecalculaIVA: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtAnsiString
        TargetDataType = dtAnsiString
      end>
    StoredProcName = 'TOOLS_CALCULA_IVA_STOCK'
    Left = 695
    Top = 664
    ParamData = <
      item
        Position = 1
        Name = 'CODE'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object pmIVA: TPopupMenu
    Left = 744
    Top = 584
  end
  object ppmMovimientos: TPopupMenu
    Left = 344
    Top = 101
    object ReemplazarArt1: TMenuItem
      Action = ReemplazarArticulo
      Caption = 'Reemplazar Articulo Con movimientos'
    end
  end
  object Etiquetas: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'Etiquetas'
    CloseDataSource = False
    DataSource = DatosStock.DSListaArt
    BCDToCurrency = False
    DataSetOptions = []
    Left = 304
    Top = 640
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
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'MUESTRAFECHA'
        FieldAlias = 'MUESTRAFECHA'
      end
      item
        FieldName = 'MUESTRALISTA'
        FieldAlias = 'MUESTRALISTA'
      end
      item
        FieldName = 'MUESTRAPORDEFECTO'
        FieldAlias = 'MUESTRAPORDEFECTO'
      end
      item
        FieldName = 'HAYSUBDET'
        FieldAlias = 'HAYSUBDET'
      end
      item
        FieldName = 'RECARGO'
        FieldAlias = 'RECARGO'
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
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_TASA'
      end
      item
        FieldName = 'PRECIO_GRAVADO'
        FieldAlias = 'PRECIO_GRAVADO'
      end
      item
        FieldName = 'IVA_IMPORTE'
        FieldAlias = 'IVA_IMPORTE'
      end
      item
        FieldName = 'PRECIO_EXENTO'
        FieldAlias = 'PRECIO_EXENTO'
      end
      item
        FieldName = 'PRECIO'
        FieldAlias = 'PRECIO'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'DESCUENTO'
      end
      item
        FieldName = 'REC_APLICAR'
        FieldAlias = 'REC_APLICAR'
      end
      item
        FieldName = 'MUESTRADETALLESTOCK'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'MUESTRACODIGOBARRA'
        FieldAlias = 'CODIGOBARRA'
      end
      item
        FieldName = 'RUBRO'
        FieldAlias = 'RUBRO'
      end
      item
        FieldName = 'SUBRUBRO'
        FieldAlias = 'SUBRUBRO'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'CODIGOALTERNATIVO'
        FieldAlias = 'CODIGOALTERNATIVO'
      end>
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.fr3'
    Left = 808
    Top = 576
  end
  object frxEtiqueta: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44484.717599791660000000
    ReportOptions.LastChange = 44484.717599791660000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
    Top = 584
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object SaveDialog1: TSaveDialog
    Left = 512
    Top = 174
  end
  object popMenuExportar: TPopupMenu
    Left = 304
    Top = 230
    object ExportarArticulosWeb1: TMenuItem
      Action = ExportarArticulosWeb
    end
  end
  object QStockProdDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.codigo_stk,d.detalle,d.unidad, d.cantidad_real,d.cantid' +
        'ad_fisica from stock_produccion_cab c'
      'left join stock_produccion_det d on d.id_cab=c.id'
      'where c.codigo=:codigo')
    Left = 104
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QStockProdDetalleCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object QStockProdDetalleDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QStockProdDetalleUNIDAD: TStringField
      DisplayLabel = 'Uni.'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QStockProdDetalleCANTIDAD_REAL: TFloatField
      DisplayLabel = 'Cant.Real'
      FieldName = 'CANTIDAD_REAL'
      Origin = 'CANTIDAD_REAL'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QStockProdDetalleCANTIDAD_FISICA: TFloatField
      DisplayLabel = 'Cant.Fisica'
      FieldName = 'CANTIDAD_FISICA'
      Origin = 'CANTIDAD_FISICA'
      DisplayFormat = ',0.000;-,0.000;-'
    end
  end
  object DSStockProdDetalle: TDataSource
    DataSet = QStockProdDetalle
    Left = 228
    Top = 181
  end
  object comBuscadoArticuloWeb: TComBuscador
    Data = DatosStock.QBuscadorArticulosWeb
    Campo = 'codigo_stk'
    Titulo = 'Tabla de Precios'
    rOk = False
    Left = 536
    Top = 669
  end
end

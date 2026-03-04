inherited FormCpbte_2: TFormCpbte_2
  Left = 294
  Top = 88
  Caption = 'Facturaci'#243'n de Cta.Cte de Ventas'
  ClientHeight = 735
  ClientWidth = 950
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  ExplicitWidth = 968
  ExplicitHeight = 776
  DesignSize = (
    950
    735)
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 950
    Height = 680
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 950
    ExplicitHeight = 680
    DesignSize = (
      950
      680)
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 209
      Width = 950
      Height = 471
      ActivePage = PagDetalles
      Align = alClient
      HotTrack = True
      MultiLine = True
      TabOrder = 1
      TabPosition = tpBottom
      TabStop = False
      OnChange = pcDetalleFacturaChange
      OnEnter = pcDetalleFacturaEnter
      object PagDetalles: TTabSheet
        Caption = 'Detalles'
        DesignSize = (
          942
          445)
        object spProduccion: TSpeedButton
          Left = 920
          Top = 3
          Width = 24
          Height = 30
          Hint = 'Edita en los Articulos de Produccion , su composici'#243'n'
          Action = EditarProduccion
          Anchors = [akTop, akRight]
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
          ExplicitLeft = 887
        end
        object DBGrillaDetalle: TDBGrid
          Left = 1
          Top = 0
          Width = 919
          Height = 311
          Anchors = [akLeft, akTop, akRight, akBottom]
          Ctl3D = True
          DataSource = DatosVentas.DSVentaDet
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clFuchsia
          GradientEndColor = clFuchsia
          GradientStartColor = clFuchsia
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          PopupMenu = pmMenu
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
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
              Width = 23
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              PopupMenu = pmMenu
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
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
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 284
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
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Cant.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
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
              Title.Caption = '$ Unitario'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 81
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
              Width = 61
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
              Width = 95
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'CANTIDAD_UNIDADES'
              Title.Alignment = taCenter
              Title.Color = clMoneyGreen
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRAUNITARIO_CON_DSCTO'
              Visible = False
            end>
        end
        object pnDetalleAdicional: TJvPanel
          Left = 119
          Top = 22
          Width = 535
          Height = 89
          Movable = True
          Color = clGreen
          ParentBackground = False
          TabOrder = 3
          Visible = False
          OnExit = pnDetalleAdicionalExit
          object lblJvLabel2: TLabel
            Left = 7
            Top = 2
            Width = 37
            Height = 13
            Caption = 'Nro.Ord'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lblJvLabel3: TLabel
            Left = 56
            Top = 2
            Width = 79
            Height = 13
            Caption = 'Detalle Adicional'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object dbeNro: TDBEdit
            Left = 8
            Top = 16
            Width = 42
            Height = 21
            DataField = 'ITEM_OCOMPRA'
            DataSource = DatosVentas.DSVentaDet
            Enabled = False
            TabOrder = 1
          end
          object dbeDetAdicional: TDBMemo
            Left = 56
            Top = 16
            Width = 473
            Height = 49
            BevelInner = bvNone
            BevelOuter = bvNone
            DataField = 'DETALLE_ADICIONAL'
            DataSource = DatosVentas.DSVentaDet
            MaxLength = 300
            TabOrder = 0
            OnExit = dbeDetAdicionalExit
            OnKeyPress = dbeDetAdicionalKeyPress
          end
          object btOkDetAdicional: TBitBtn
            Left = 490
            Top = 64
            Width = 37
            Height = 25
            Default = True
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            TabOrder = 2
            OnClick = btOkDetAdicionalClick
          end
        end
        object pcSubForma: TPageControl
          Left = 0
          Top = 317
          Width = 942
          Height = 128
          ActivePage = pag1
          Align = alBottom
          TabHeight = 1
          TabOrder = 4
          object pag1: TTabSheet
            DesignSize = (
              934
              117)
            object Label45: TLabel
              Left = 3
              Top = -1
              Width = 77
              Height = 13
              Caption = 'Observaciones'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object Label46: TLabel
              Left = 100
              Top = -3
              Width = 105
              Height = 15
              Caption = '(Ctr+F10 Agregar Pedido)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = []
              ParentFont = False
            end
            object DBText26: TDBText
              Left = 223
              Top = 68
              Width = 29
              Height = 12
              Hint = 'Valor Asegurado'
              Alignment = taRightJustify
              DataField = 'MARGEN_CAL'
              DataSource = DatosVentas.DSVentaDet
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object DBText11: TDBText
              Left = 3
              Top = 68
              Width = 41
              Height = 12
              Hint = 'Meses de Gtia'
              DataField = 'MESES_DE_GARANTIA'
              DataSource = DSBase
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object DBText13: TDBText
              Left = 54
              Top = 68
              Width = 90
              Height = 12
              DataField = 'VALOR_ASEGURADO'
              DataSource = DSBase
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object DBText25: TDBText
              Left = 145
              Top = 68
              Width = 72
              Height = 12
              Hint = 'Valor Asegurado'
              Alignment = taRightJustify
              DataField = 'SUMACOSTO'
              DataSource = DatosVentas.DSVentaDet
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object DBText22: TDBText
              Left = 290
              Top = 68
              Width = 21
              Height = 13
              Alignment = taRightJustify
              DataField = 'CUOTAS_CC'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object shPP: TShape
              Left = 299
              Top = 4
              Width = 16
              Height = 10
              Brush.Color = clGreen
              Shape = stCircle
              Visible = False
            end
            object Label1: TLabel
              Left = 505
              Top = 1
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
            object DBText14: TDBText
              Left = 552
              Top = 4
              Width = 31
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
            object DBText16: TDBText
              Left = 704
              Top = 4
              Width = 60
              Height = 17
              DataField = 'MONEDA_CPBTE_COTIZACION'
              DataSource = DSBase
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 492
              Top = 30
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
            object Label15: TLabel
              Left = 711
              Top = 27
              Width = 44
              Height = 16
              Caption = 'Bultos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object spMenu: TSpeedButton
              Left = 333
              Top = 76
              Width = 23
              Height = 22
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
              PopupMenu = PopupActionBar1
            end
            object lblJvLabel6: TLabel
              Left = 255
              Top = 68
              Width = 36
              Height = 13
              Caption = 'Cuotas:'
              Transparent = True
            end
            object lblJvLabel1: TLabel
              Left = 541
              Top = 55
              Width = 18
              Height = 13
              Caption = '(F4)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBText34: TDBText
              Left = 707
              Top = 80
              Width = 60
              Height = 17
              Hint = 'Lote de Facturas desde Portal IVA'
              DataField = 'LOTEAFIP'
              DataSource = DSBase
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label52: TLabel
              Left = 710
              Top = 66
              Width = 47
              Height = 13
              Caption = 'Lote AFIP'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBText35: TDBText
              Left = 355
              Top = 94
              Width = 27
              Height = 20
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
            end
            object DBText36: TDBText
              Left = 382
              Top = 97
              Width = 110
              Height = 17
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
              OnClick = DBText36Click
            end
            object lbModoCpbte: TLabel
              Left = 556
              Top = 97
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
              ExplicitTop = 81
            end
            object Label2: TLabel
              Left = 3
              Top = 84
              Width = 38
              Height = 13
              Caption = 'C.O.T:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText9: TDBText
              Left = 50
              Top = 84
              Width = 90
              Height = 12
              Hint = 'COT'
              DataField = 'COT'
              DataSource = DSBase
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label51: TLabel
              Left = 133
              Top = 83
              Width = 36
              Height = 13
              Caption = 'Per.IVA'
              Transparent = True
            end
            object DBText38: TDBText
              Left = 172
              Top = 83
              Width = 17
              Height = 13
              DataField = 'PERCIBE_IVA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label53: TLabel
              Left = 213
              Top = 83
              Width = 29
              Height = 13
              Caption = 'Per.IB'
              Transparent = True
            end
            object DBText40: TDBText
              Left = 245
              Top = 83
              Width = 18
              Height = 13
              DataField = 'PERCIBE_IB'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBText41: TDBText
              Left = 280
              Top = 83
              Width = 21
              Height = 13
              Alignment = taRightJustify
              DataField = 'PERCEPCION_IB_TASA'
              DataSource = DSBase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label55: TLabel
              Left = 3
              Top = 101
              Width = 30
              Height = 13
              Caption = 'Pres:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText23: TDBText
              Left = 49
              Top = 101
              Width = 90
              Height = 12
              DataField = 'PRESUPUESTO_NROCPBTE'
              DataSource = DSBase
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = DBText23Click
            end
            object dbeObservaciones1: TDBEdit
              Left = 15
              Top = 18
              Width = 306
              Height = 21
              DataField = 'Observacion1'
              DataSource = DSBase
              TabOrder = 0
            end
            object dbeObservaciones2: TDBEdit
              Left = 15
              Top = 44
              Width = 306
              Height = 21
              DataField = 'Observacion2'
              DataSource = DSBase
              TabOrder = 1
            end
            object pnLimiteCto: TPanel
              Left = 325
              Top = 3
              Width = 169
              Height = 73
              Color = clRed
              ParentBackground = False
              TabOrder = 2
              Visible = False
              object lbLimite: TLabel
                Left = 8
                Top = 4
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
                Left = 141
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
                Left = 132
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
                Left = 132
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
            object dbeDscto_1: TDBEdit
              Left = 548
              Top = 28
              Width = 47
              Height = 21
              DataField = 'DSTO'
              DataSource = DSBase
              TabOrder = 3
            end
            object DBEdit1: TDBEdit
              Left = 600
              Top = 28
              Width = 100
              Height = 21
              TabStop = False
              DataField = 'DSTOIMPORTE'
              DataSource = DSBase
              TabOrder = 4
            end
            object DBEdit3: TDBEdit
              Left = 761
              Top = 28
              Width = 66
              Height = 21
              TabStop = False
              DataField = 'CANT_BULTOS'
              DataSource = DSBase
              TabOrder = 5
            end
            object Panel2: TPanel
              Left = 770
              Top = 1
              Width = 66
              Height = 24
              Enabled = False
              TabOrder = 6
              object DBCheckBox1: TDBCheckBox
                Left = 1
                Top = 2
                Width = 58
                Height = 21
                Caption = 'Impreso'
                DataField = 'Impreso'
                DataSource = DSBase
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object edTotal: TDBEdit
              Left = 600
              Top = 3
              Width = 100
              Height = 21
              DataField = 'TOTAL'
              DataSource = DSBase
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
            end
          end
          object pag2: TTabSheet
            ImageIndex = 1
            DesignSize = (
              934
              117)
            object Label17: TLabel
              Left = 3
              Top = 13
              Width = 31
              Height = 13
              Caption = 'Origen'
            end
            object Label18: TLabel
              Left = 3
              Top = 57
              Width = 36
              Height = 13
              Caption = 'Destino'
            end
            object Label47: TLabel
              Left = 342
              Top = 1
              Width = 62
              Height = 13
              Caption = '% Honorarios'
            end
            object Label48: TLabel
              Left = 442
              Top = 1
              Width = 51
              Height = 13
              Caption = 'Honorarios'
            end
            object Label49: TLabel
              Left = 656
              Top = 3
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
            object spMenu_2: TSpeedButton
              Left = 296
              Top = 77
              Width = 25
              Height = 22
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
            end
            object Label50: TLabel
              Left = 365
              Top = 46
              Width = 28
              Height = 13
              Caption = 'Notas'
            end
            object dbcAduanaOrigen: TJvDBLookupCombo
              Left = 54
              Top = 12
              Width = 256
              Height = 23
              DataField = 'ID_ADUANA'
              DataSource = DSBase
              LookupField = 'ID'
              LookupDisplay = 'ADUANA'
              LookupSource = DatosVentas.DSAduanaOrig
              TabOrder = 0
            end
            object dbcAduanaDestino: TJvDBLookupCombo
              Left = 54
              Top = 55
              Width = 256
              Height = 23
              DataField = 'ID_DESTINO'
              DataSource = DSBase
              LookupField = 'ID'
              LookupDisplay = 'PAIS'
              LookupSource = DatosVentas.DSPaises
              TabOrder = 1
            end
            object edNotas: TDBMemo
              Left = 399
              Top = 65
              Width = 438
              Height = 45
              Anchors = [akLeft, akBottom]
              DataField = 'NOTAS'
              DataSource = DSBase
              TabOrder = 2
            end
            object dbcDeduceGastos: TDBCheckBox
              Left = 536
              Top = 20
              Width = 97
              Height = 17
              Caption = 'Deduce Gastos'
              DataField = 'DEDUCE_GASTOS'
              DataSource = DSBase
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object JvDBCalcEdit4: TJvDBCalcEdit
              Left = 703
              Top = 3
              Width = 100
              Height = 21
              DisplayFormat = ',0.00'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ShowButton = False
              TabOrder = 5
              DisabledTextColor = clBlack
              DecimalPlacesAlwaysShown = False
              DataField = 'TOTAL'
              DataSource = DSBase
            end
            object ceNotas: TJvComboEdit
              Left = 329
              Top = 68
              Width = 65
              Height = 21
              AlwaysEnableButton = True
              ButtonWidth = 25
              ClickKey = 16397
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000A000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFC000003300000033000000FFC00000}
              MaxLength = 6
              TabOrder = 6
              Text = ''
              OnButtonClick = BuscarNotasExecute
              OnKeyDown = ceNotasKeyDown
              OnKeyPress = ceNotasKeyPress
            end
            object Panel5: TPanel
              Left = 574
              Top = -3
              Width = 66
              Height = 24
              Enabled = False
              TabOrder = 7
              object DBCheckBox3: TDBCheckBox
                Left = 1
                Top = 2
                Width = 58
                Height = 21
                Caption = 'Impreso'
                DataField = 'Impreso'
                DataSource = DSBase
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object edHonorariosPorc: TDBEdit
              Left = 349
              Top = 16
              Width = 69
              Height = 21
              DataField = 'HONORARIOS_PROCENTAJ'
              DataSource = DSBase
              TabOrder = 8
            end
            object edHonorarios: TDBEdit
              Left = 443
              Top = 16
              Width = 87
              Height = 21
              DataField = 'HONORARIOS'
              DataSource = DSBase
              TabOrder = 3
              OnEnter = edHonorariosEnter
            end
          end
        end
        object dbgExitencias: TDBGrid
          Left = 486
          Top = 317
          Width = 416
          Height = 106
          Anchors = [akLeft, akBottom]
          Color = clGradientInactiveCaption
          DataSource = DatosVentas.DSExistencia
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
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
              Width = 90
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
              Width = 70
              Visible = True
            end>
        end
        object pnPrecios: TPanel
          Left = 626
          Top = 32
          Width = 249
          Height = 105
          Caption = 'pnPrecios'
          Color = clBlue
          Padding.Left = 6
          Padding.Top = 6
          Padding.Right = 6
          Padding.Bottom = 6
          ParentBackground = False
          TabOrder = 2
          Visible = False
          object dbgPrecios: TJvDBGrid
            Left = 7
            Top = 7
            Width = 235
            Height = 91
            Align = alClient
            DataSource = DMMain_FD.DSPrecioXCant
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            ClearSelection = False
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
                Width = 75
                Visible = True
              end>
          end
        end
      end
      object PagPieCpbte: TTabSheet
        Caption = 'Impuestos'
        ImageIndex = 1
        object Label6: TLabel
          Left = 319
          Top = 72
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
          Left = 319
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
          Left = 589
          Top = 2
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
          Left = 589
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
          Left = 459
          Top = 1
          Width = 98
          Height = 21
        end
        object Bevel6: TBevel
          Left = 459
          Top = 72
          Width = 98
          Height = 21
        end
        object Bevel22: TBevel
          Left = 703
          Top = 1
          Width = 98
          Height = 21
        end
        object Bevel28: TBevel
          Left = 703
          Top = 25
          Width = 98
          Height = 21
        end
        object DBText1: TDBText
          Left = 465
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
          Left = 465
          Top = 74
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'DSTOIMPORTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 709
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
        object DBText6: TDBText
          Left = 709
          Top = 27
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
        object Label21: TLabel
          Left = 319
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
          Left = 459
          Top = 24
          Width = 98
          Height = 21
        end
        object DBText3: TDBText
          Left = 465
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
          Left = 588
          Top = 227
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
          Left = 679
          Top = 230
          Width = 125
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
        object lbPercep: TLabel
          Left = 569
          Top = 205
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
        object dbtTasa_IB: TDBText
          Left = 657
          Top = 205
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
        object bvPercepcion: TBevel
          Left = 709
          Top = 204
          Width = 97
          Height = 21
        end
        object dbtImporte_IB: TDBText
          Left = 725
          Top = 206
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
        object DBText12: TDBText
          Left = 457
          Top = 229
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
        object Label13: TLabel
          Left = 442
          Top = 210
          Width = 72
          Height = 13
          Caption = 'Base Imponible'
        end
        object DBText15: TDBText
          Left = 635
          Top = 229
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
          Left = 459
          Top = 47
          Width = 98
          Height = 21
        end
        object DBText20: TDBText
          Left = 465
          Top = 49
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
        object Bevel3: TBevel
          Left = 703
          Top = 49
          Width = 98
          Height = 21
        end
        object DBText28: TDBText
          Left = 709
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
        object Label22: TLabel
          Left = 319
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
        object Label23: TLabel
          Left = 589
          Top = 49
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
        object RxLabel8: TJvLabel
          Left = 3
          Top = 2
          Width = 53
          Height = 13
          Caption = 'Transporte'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object DBGrillaIva: TDBGrid
          Left = 437
          Top = 99
          Width = 387
          Height = 49
          Color = clMenu
          DataSource = DatosVentas.DSImpuestos
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
          Left = 398
          Top = 72
          Width = 47
          Height = 21
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 1
        end
        object gbValores: TGroupBox
          Left = 273
          Top = 94
          Width = 154
          Height = 54
          Caption = 'Valores Recibidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object DBEdit2: TDBEdit
            Left = 15
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
          Left = 3
          Top = 190
          Width = 136
          Height = 17
          Caption = 'Percibir Ingresos Brutos'
          DataField = 'PERCIBE_IB'
          DataSource = DSBase
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = dbcPercibeIIBBClick
        end
        object grAplicaNC: TGroupBox
          Left = 3
          Top = 63
          Width = 264
          Height = 114
          Caption = 'Aplicaci'#243'n Nota de Cr'#233'dito/D'#233'bito'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          object Label32: TLabel
            Left = 8
            Top = 19
            Width = 63
            Height = 13
            Caption = 'Tipo Cpbte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 118
            Top = 19
            Width = 61
            Height = 13
            Caption = 'Pto de Vta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 8
            Top = 60
            Width = 58
            Height = 13
            Caption = 'Nro.Cpbte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 118
            Top = 60
            Width = 114
            Height = 13
            Caption = 'Fecha(YYYYMMDD)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit8: TDBEdit
            Left = 118
            Top = 33
            Width = 74
            Height = 21
            DataField = 'ASOCIADO_PTOVTA'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object JvDBComboBox4: TJvDBComboBox
            Left = 7
            Top = 33
            Width = 105
            Height = 21
            DataField = 'ASOCIADO_TIPO'
            DataSource = DSBase
            Items.Strings = (
              'Fc - A'
              'Fc - B'
              'Fc - C'
              'NC - A'
              'NC - B'
              'NC - C'
              'ND - A'
              'ND - B'
              'ND - C'
              'Fc.Cr. MiPyMEs - A'
              'Fc.Cr. MiPyMEs - B'
              'Fc.Cr. MiPyMEs - C'
              'NC MiPyMEs - A'
              'NC MiPyMEs - B'
              'NC MiPyMEs - C'
              'ND MiPyMEs - A'
              'ND MiPyMEs - B'
              'ND MiPyMEs - C'
              'FC - E')
            TabOrder = 0
            Values.Strings = (
              '1'
              '6'
              '11'
              '3'
              '8'
              '13'
              '2'
              '7'
              '12'
              '201'
              '206'
              '211'
              '203'
              '208'
              '213'
              '202'
              '207'
              '212'
              '19')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object DBEdit7: TDBEdit
            Left = 118
            Top = 76
            Width = 76
            Height = 21
            DataField = 'ASOCIADO_CPTEFCH'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit9: TDBEdit
            Left = 7
            Top = 76
            Width = 105
            Height = 21
            DataField = 'ASOCIADO_NRO'
            DataSource = DSBase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object Button1: TButton
            Left = 220
            Top = 81
            Width = 30
            Height = 30
            Hint = 'Buscar Facturas'
            Action = BuscaNCAplicaAFactura
            ImageAlignment = iaCenter
            Images = ImageList1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
        end
        object DBImage1: TDBImage
          Left = 4
          Top = 213
          Width = 138
          Height = 129
          DataField = 'QRIMAGE'
          DataSource = DSBase
          Proportional = True
          TabOrder = 5
        end
        object dbgAsociados: TDBGrid
          Left = 147
          Top = 255
          Width = 407
          Height = 87
          DataSource = DatosVentas.DSAsociados
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyPress = dbgAsociadosKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ASOCIADO_CPTEFECHA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ASOCIADO_PTOVTA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ASOCIADO_NRO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 96
              Visible = True
            end>
        end
        object btAnexosTr: TBitBtn
          Left = 178
          Top = 21
          Width = 26
          Height = 23
          Hint = 'Configuracion de Chofer, unidad y Anexo'
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
          TabOrder = 7
          OnClick = btAnexosTrClick
        end
        object dbcTransporte: TDBLookupComboBox
          Left = 3
          Top = 22
          Width = 169
          Height = 21
          DataField = 'ID_TRANSPORTE'
          DataSource = DSBase
          DropDownRows = 15
          DropDownWidth = 200
          KeyField = 'ID'
          ListField = 'NOMBRE'
          ListSource = DatosVentas.DSTransporte
          TabOrder = 8
        end
        object dbgPercepcionesIVA: TDBGrid
          Left = 437
          Top = 149
          Width = 387
          Height = 49
          Color = clMenu
          DataSource = DatosVentas.DSPercepcionIVA
          Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 9
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
      object pagSeries: TTabSheet
        Caption = 'Nro.Series'
        ImageIndex = 2
        object Label24: TLabel
          Left = 376
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
          Left = 456
          Top = 192
          Width = 65
          Height = 17
          Alignment = taRightJustify
          DataField = 'Cantidad'
        end
        object Label25: TLabel
          Left = 568
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
        object Label9: TLabel
          Left = 8
          Top = 176
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
          Left = 8
          Top = 192
          Width = 122
          Height = 13
          Caption = 'Sin Control de Serie o C.B'
        end
        object Label11: TLabel
          Left = 8
          Top = 160
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
        object DBStatusLabel2: TJvDBStatusLabel
          Left = 651
          Top = 192
          Width = 85
          Height = 13
          DataSetName = ' '
          DataSource = DatosVentas.DSVtaSubDetalle
          Style = lsRecordNo
          ShowOptions = doGlyph
          Alignment = taRightJustify
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbgDetalleVta: TDBGrid
          Left = 1
          Top = 2
          Width = 360
          Height = 151
          DataSource = DatosVentas.DSVentaDet
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
          OnKeyDown = dbgDetalleVtaKeyDown
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
              Title.Caption = 'Detalle'
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
          Left = 376
          Top = 3
          Width = 337
          Height = 182
          Color = clAqua
          DataSource = DatosVentas.DSVtaSubDetalle
          FixedColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
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
      object PagPorCtaOrden: TTabSheet
        Caption = 'Por Cta y Orden'
        ImageIndex = 3
        DesignSize = (
          942
          445)
        object Label36: TLabel
          Left = 9
          Top = 0
          Width = 49
          Height = 13
          Caption = 'Proveedor'
        end
        object dbgConsignaciones: TDBGrid
          Left = 3
          Top = 48
          Width = 646
          Height = 360
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DatosVentas.DSVtaDetConsig
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
          OnEditButtonClick = BuscarRecepcionExecute
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
          ButtonWidth = 24
          TabOrder = 1
          OnButtonClick = BuscarProveedorExecute
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
          TabOrder = 2
        end
      end
      object pagLotes: TTabSheet
        Caption = 'Lote'
        ImageIndex = 4
        DesignSize = (
          942
          445)
        object dbgDetalleLotes: TDBGrid
          Left = 3
          Top = 3
          Width = 474
          Height = 405
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DatosVentas.DSVentaDet
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
              Title.Caption = 'Detalle'
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
            DataSource = DatosVentas.DSVentaLote
            Glyph.Data = {
              4E000000424D4E000000000000003E0000002800000009000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FF8000002480000024800000FF800000}
            ButtonWidth = 16
            TabOrder = 0
            OnButtonClick = BuscaLoteExecute
          end
          object Panel3: TPanel
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
              DataSource = DatosVentas.DSVentaLote
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
              DataSource = DatosVentas.DSVentaLote
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
              DataSource = DatosVentas.DSVentaLote
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
      object pagEntregas: TTabSheet
        Caption = 'Entregas'
        ImageIndex = 5
        DesignSize = (
          942
          445)
        object dbgEntregas: TDBGrid
          Left = 2
          Top = 6
          Width = 730
          Height = 305
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DatosVentas.DSVentasEntregas
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
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRADETALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 295
              Visible = True
            end
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
              FieldName = 'CANTIDAD_RECIBIDA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIFERENCIA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end>
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 21
      Width = 950
      Height = 188
      Align = alTop
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      OnMouseMove = pnCabeceraMouseMove
      object DBText66: TDBText
        Left = 868
        Top = 12
        Width = 74
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
        Left = 350
        Top = 25
        Width = 125
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
        Left = 499
        Top = 21
        Width = 96
        Height = 24
        Alignment = taCenter
        AutoSize = True
        DataField = 'LetraFac'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 469
        Top = 23
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
        Top = 64
        Width = 23
        Height = 22
        Action = DatosCliente
        BiDiMode = bdLeftToRight
        Flat = True
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
        ParentBiDiMode = False
        ShowHint = True
      end
      object SpeedButton2: TSpeedButton
        Left = 392
        Top = 64
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
      object lbEstado: TLabel
        Left = 113
        Top = 47
        Width = 6
        Height = 13
        Caption = '--'
      end
      object dbtZ: TDBText
        Left = 684
        Top = 29
        Width = 52
        Height = 16
        Alignment = taRightJustify
        DataField = 'NRO_Z'
        DataSource = DSBase
      end
      object NroCpbte: TDBText
        Left = 394
        Top = 7
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
      object DBText10: TDBText
        Left = 173
        Top = 48
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
      object dbtJuridicion: TDBText
        Left = 639
        Top = 130
        Width = 31
        Height = 13
        DataField = 'JURIDICION'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object dbtLocalidadJuri: TDBText
        Left = 574
        Top = 172
        Width = 172
        Height = 13
        DataField = 'LOCALIDAD'
        DataSource = DatosVentas.DSBuscaLocalidadJuri
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object DBText17: TDBText
        Left = 798
        Top = 154
        Width = 54
        Height = 13
        Alignment = taRightJustify
        DataField = 'COTIZACION'
        DataSource = DatosVentas.DSVentaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 627
        Top = 3
        Width = 31
        Height = 13
        Caption = 'N.Op.:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object edNumeroOP: TDBText
        Left = 664
        Top = 2
        Width = 57
        Height = 14
        Cursor = crHandPoint
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        DataField = 'NUMERO_OPERACION'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = False
        OnClick = VerOperacionesExecute
      end
      object dbtCoorp: TDBText
        Left = 42
        Top = 48
        Width = 48
        Height = 13
        Alignment = taRightJustify
        DataField = 'MUESTRACOORPORATIVO'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText21: TDBText
        Left = 791
        Top = 141
        Width = 61
        Height = 13
        Alignment = taRightJustify
        DataField = 'PAGO_A_CTA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText30: TDBText
        Left = 791
        Top = 128
        Width = 61
        Height = 13
        Alignment = taRightJustify
        DataField = 'LOTE'
        DataSource = DatosVentas.DSRegFacturas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText31: TDBText
        Left = 466
        Top = 7
        Width = 48
        Height = 13
        Hint = 'Cod.AFIP'
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'MUESTRACODIGOAFIP'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        Transparent = True
        ShowHint = True
      end
      object DBText33: TDBText
        Left = 86
        Top = 7
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
      object Label26: TLabel
        Left = 583
        Top = 67
        Width = 39
        Height = 13
        Caption = 'Moneda'
      end
      object lblRxLabel58: TLabel
        Left = 7
        Top = 7
        Width = 33
        Height = 13
        Caption = 'Fecha '
        Transparent = True
      end
      object lblRxLabel59: TLabel
        Left = 147
        Top = 7
        Width = 87
        Height = 13
        Caption = 'Sucursal de Venta'
        Transparent = True
      end
      object lblRxLabel60: TLabel
        Left = 519
        Top = 7
        Width = 98
        Height = 13
        Caption = 'Nro.de Comprobante'
        Transparent = True
      end
      object lblRxLabel61: TLabel
        Left = 421
        Top = 69
        Width = 64
        Height = 13
        Caption = 'Fecha de Vto'
        Transparent = True
      end
      object lblRxLabel63: TLabel
        Left = 571
        Top = 90
        Width = 88
        Height = 13
        Caption = 'Numero de Remito'
        Transparent = True
      end
      object lblRxLabel2: TLabel
        Left = 7
        Top = 48
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Transparent = True
      end
      object lblJurisdiccion: TLabel
        Left = 571
        Top = 130
        Width = 55
        Height = 13
        Caption = 'Jurisdicci'#243'n'
        Transparent = True
      end
      object lblRxLabel6: TLabel
        Left = 288
        Top = 7
        Width = 102
        Height = 13
        Caption = 'Tipo de Comprobante'
        Transparent = True
      end
      object lblRxLabel1: TLabel
        Left = 657
        Top = 29
        Width = 27
        Height = 13
        Caption = 'Nro.Z'
        Transparent = True
      end
      object lblJvLabel5: TLabel
        Left = 743
        Top = 141
        Width = 29
        Height = 13
        Caption = 'A.Cta:'
        Transparent = True
      end
      object lblJvLabel7: TLabel
        Left = 743
        Top = 154
        Width = 46
        Height = 13
        Caption = 'Cotiz.Det.'
        Transparent = True
      end
      object lblJvLabel15: TLabel
        Left = 743
        Top = 128
        Width = 24
        Height = 13
        Caption = 'Lote:'
        Transparent = True
      end
      object DBText37: TDBText
        Left = 684
        Top = 69
        Width = 24
        Height = 14
        Alignment = taRightJustify
        DataField = 'MONEDA_CPBTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText39: TDBText
        Left = 639
        Top = 148
        Width = 98
        Height = 13
        DataField = 'PROVINCIA'
        DataSource = DatosVentas.DSBuscaLocalidadJuri
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText42: TDBText
        Left = 40
        Top = 173
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
      object Label54: TLabel
        Left = 8
        Top = 173
        Width = 26
        Height = 13
        Caption = 'Obra:'
        Transparent = True
      end
      object DBCheckManual: TDBCheckBox
        Left = 491
        Top = 46
        Width = 71
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
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DatosAdicionales1Clickd
      end
      object dbeSuc: TDBEdit
        Left = 518
        Top = 22
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
        TabOrder = 4
      end
      object dbeNumero: TDBEdit
        Left = 567
        Top = 22
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
        TabOrder = 5
      end
      object dbeRemitos: TDBEdit
        Left = 569
        Top = 106
        Width = 161
        Height = 21
        DataField = 'NroRto'
        DataSource = DSBase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnMouseMove = dbeRemitosMouseMove
      end
      object dbeSucursal: TDBEdit
        Left = 146
        Top = 24
        Width = 146
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraSucursal'
        DataSource = DSBase
        Enabled = False
        TabOrder = 6
      end
      object dbcheckNc_Contado: TDBCheckBox
        Left = 375
        Top = 46
        Width = 116
        Height = 18
        Caption = 'Nc de Contado'
        DataField = 'NC_CONTADO'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = dbcheckNc_ContadoClick
      end
      object RxCCodigo: TJvDBComboEdit
        Left = 7
        Top = 62
        Width = 62
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
        ButtonWidth = 16
        TabOrder = 2
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxCSucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 296
        Top = 24
        Width = 49
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
        ButtonWidth = 16
        TabOrder = 3
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object dbeFechaVta: TJvDBDateEdit
        Left = 8
        Top = 24
        Width = 92
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
        ButtonWidth = 17
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
        OnExit = dbeFechaVtaExit
      end
      object pcModoFactura: TJvPageControl
        Left = 5
        Top = 86
        Width = 563
        Height = 88
        ActivePage = tsNormal
        Style = tsButtons
        TabHeight = 1
        TabOrder = 11
        ClientBorderWidth = 0
        HideAllTabs = True
        object tsNormal: TTabSheet
          Caption = '-'
          object DBText19: TDBText
            Left = 136
            Top = 3
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
          object DBText18: TDBText
            Left = 236
            Top = 3
            Width = 85
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
          object lblRxLabel3: TLabel
            Left = 3
            Top = 1
            Width = 125
            Height = 13
            Caption = 'Lugar de Recepci'#243'n(LDR)'
            Transparent = True
          end
          object lblRxLabel4: TLabel
            Left = 3
            Top = 40
            Width = 42
            Height = 13
            Caption = 'Dep'#243'sito'
            Transparent = True
          end
          object lblRxLabel62: TLabel
            Left = 168
            Top = 41
            Width = 93
            Height = 13
            Caption = 'Condicion de Venta'
            Transparent = True
          end
          object lbCaja: TLabel
            Left = 334
            Top = 41
            Width = 21
            Height = 13
            Caption = 'Caja'
            Transparent = True
            Visible = False
          end
          object lblRxLabel7: TLabel
            Left = 333
            Top = 1
            Width = 46
            Height = 13
            Caption = 'Vendedor'
            Transparent = True
          end
          object dbeLdr: TDBEdit
            Left = 45
            Top = 17
            Width = 283
            Height = 21
            Color = clInfoBk
            DataField = 'MuestraLdr'
            DataSource = DSBase
            Enabled = False
            TabOrder = 1
          end
          object RxCLdr: TJvDBComboEdit
            Left = 1
            Top = 17
            Width = 40
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
            TabOrder = 0
            OnButtonClick = BuscarLdrExecute
            OnKeyDown = RxCLdrKeyDown
          end
          object RxCDeposito: TJvDBComboEdit
            Left = 1
            Top = 56
            Width = 40
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
            TabOrder = 4
            OnButtonClick = BuscarDepositoExecute
            OnKeyDown = RxCDepositoKeyDown
          end
          object dbeDeposito: TDBEdit
            Left = 43
            Top = 56
            Width = 120
            Height = 21
            Color = clInfoBk
            DataField = 'MuestraDeposito'
            DataSource = DSBase
            Enabled = False
            TabOrder = 5
          end
          object RxCConVta: TJvDBComboEdit
            Left = 167
            Top = 56
            Width = 40
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
            ButtonWidth = 15
            TabOrder = 6
            OnButtonClick = BuscarCondVtaExecute
            OnKeyDown = RxCConVtaKeyDown
          end
          object dbeConVta: TDBEdit
            Left = 210
            Top = 56
            Width = 118
            Height = 21
            Color = clInfoBk
            DataField = 'MuestraCondVenta'
            DataSource = DSBase
            Enabled = False
            TabOrder = 7
          end
          object dbcCaja: TDBLookupComboBox
            Left = 334
            Top = 56
            Width = 173
            Height = 21
            DataField = 'CAJA_POR_DEFECTO'
            DataSource = DSBase
            KeyField = 'ID_CUENTA_CAJA'
            ListField = 'MUESTRACAJA'
            ListSource = DatosVentas.DSListaCaja
            TabOrder = 8
            Visible = False
          end
          object rxcVendedor: TJvDBComboEdit
            Left = 333
            Top = 17
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
            ButtonWidth = 15
            TabOrder = 2
            OnButtonClick = BuscarVendedorExecute
            OnKeyDown = rxcVendedorKeyDown
          end
          object dbeMuestraVendedor: TDBEdit
            Left = 401
            Top = 17
            Width = 157
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'MUESTRAVENDEDOR'
            DataSource = DSBase
            Enabled = False
            TabOrder = 3
          end
          object pnMovCaja: TPanel
            Left = 510
            Top = 57
            Width = 18
            Height = 19
            Cursor = crHandPoint
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            BevelInner = bvSpace
            BevelKind = bkSoft
            BevelOuter = bvSpace
            Color = clBlue
            Padding.Left = 1
            Padding.Top = 1
            Padding.Right = 1
            Padding.Bottom = 1
            ParentBackground = False
            TabOrder = 9
            Visible = False
            OnClick = pnMovCajaClick
          end
        end
        object tsExportacion: TTabSheet
          Caption = '-'
          ImageIndex = 1
          object Label27: TLabel
            Left = 203
            Top = 1
            Width = 48
            Height = 13
            Caption = 'CUIT Pais'
          end
          object Label28: TLabel
            Left = 2
            Top = 1
            Width = 94
            Height = 13
            Caption = 'Destino Documento'
          end
          object Label29: TLabel
            Left = 443
            Top = 1
            Width = 37
            Height = 13
            Caption = 'Permiso'
          end
          object Label30: TLabel
            Left = 167
            Top = 43
            Width = 28
            Height = 13
            Caption = 'Notas'
          end
          object Label31: TLabel
            Left = 374
            Top = 1
            Width = 46
            Height = 13
            Caption = 'Incoterms'
          end
          object DBText27: TDBText
            Left = 257
            Top = 1
            Width = 72
            Height = 13
            Alignment = taRightJustify
            DataField = 'CUIT_PAIS'
            DataSource = DSBase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblJvLabel16: TLabel
            Left = 5
            Top = 42
            Width = 93
            Height = 13
            Caption = 'Condicion de Venta'
            Transparent = True
          end
          object DBEdit4: TDBEdit
            Left = 443
            Top = 17
            Width = 119
            Height = 21
            DataField = 'PERMISO_EMBARQUE'
            DataSource = DSBase
            TabOrder = 3
          end
          object JvDBComboEdit1: TJvDBComboEdit
            Left = 3
            Top = 56
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
            ButtonWidth = 15
            TabOrder = 4
            OnButtonClick = BuscarCondVtaExecute
            OnKeyDown = RxCConVtaKeyDown
          end
          object DBEdit5: TDBEdit
            Left = 44
            Top = 56
            Width = 118
            Height = 21
            Color = clInfoBk
            DataField = 'MuestraCondVenta'
            DataSource = DSBase
            Enabled = False
            TabOrder = 5
          end
          object DBEdit6: TDBEdit
            Left = 168
            Top = 56
            Width = 394
            Height = 21
            DataField = 'NOTAS'
            DataSource = DSBase
            TabOrder = 6
          end
          object cbPais: TJvDBComboBox
            Left = 200
            Top = 17
            Width = 166
            Height = 21
            DataField = 'CUIT_PAIS'
            DataSource = DSBase
            DropDownCount = 15
            DropDownWidth = 550
            Items.Strings = (
              'AFGANISTAN - Persona Jur'#237'dica'
              'AFGANISTAN - Persona F'#237'sica'
              'AFGANISTAN - Otro tipo de Entidad'
              'ALEMANIA, REP. FED. - Persona Jur'#237'dica'
              'ALEMANIA, REP. FED. - Persona F'#237'sica'
              'ALEMANIA, REP. FED. - Otro tipo de Entidad'
              
                'ANGUILA (Territorio no aut'#243'nomo del Reino Unido) - Persona Jur'#237'd' +
                'ica'
              
                'ANGUILA (Territorio no aut'#243'nomo del Reino Unido) - Persona F'#237'sic' +
                'a'
              
                'ANGUILA (Territorio no aut'#243'nomo del Reino Unido) - Otro tipo de ' +
                'Entidad'
              'ANTIGUA Y BARBUDA (Estado independiente) - Persona Jur'#237'dica'
              'ANTIGUA Y BARBUDA (Estado independiente) - Persona F'#237'sica'
              'ANTIGUA Y BARBUDA (Estado independiente) - Otro tipo de Entidad'
              
                'ANTILLAS HOLANDESAS (Territorio de Pa'#237'ses Bajos) - Persona Jur'#237'd' +
                'ica'
              
                'ANTILLAS HOLANDESAS (Territorio de Pa'#237'ses Bajos) - Persona F'#237'sic' +
                'a'
              
                'ANTILLAS HOLANDESAS (Territorio de Pa'#237'ses Bajos) - Otro tipo de ' +
                'Entidad'
              'ARABIA SAUDITA - Persona Jur'#237'dica'
              'ARABIA SAUDITA - Persona F'#237'sica'
              'ARABIA SAUDITA - Otro tipo de Entidad'
              'ARCHIPIELAGO DE SVBALBARD - Persona Jur'#237'dica'
              'ARCHIPIELAGO DE SVBALBARD - Persona F'#237'sica'
              'ARCHIPIELAGO DE SVBALBARD - Otro tipo de Entidad'
              'ARGELIA - Persona Jur'#237'dica'
              'ARGELIA - Persona F'#237'sica'
              'ARGELIA - Otro tipo de Entidad'
              'ARMENIA - Persona Jur'#237'dica'
              'ARMENIA - Persona F'#237'sica'
              'ARMENIA - Otro tipo de Entidad'
              'ARUBA (Territorio de Pa'#237'ses Bajos) - Persona Jur'#237'dica'
              'ARUBA (Territorio de Pa'#237'ses Bajos) - Persona F'#237'sica'
              'ARUBA (Territorio de Pa'#237'ses Bajos) - Otro tipo de Entidad'
              'ASCENCION - Persona Jur'#237'dica'
              'ASCENCION - Persona F'#237'sica'
              'ASCENCION - Otro tipo de Entidad'
              'AUSTRALIA - Persona Jur'#237'dica'
              'AUSTRALIA - Persona F'#237'sica'
              'AUSTRALIA - Otro tipo de Entidad'
              'AUSTRIA - Persona Jur'#237'dica'
              'AUSTRIA - Persona F'#237'sica'
              'AUSTRIA - Otro tipo de Entidad'
              'AZERBAIDZHAN - Persona Jur'#237'dica'
              'AZERBAIDZHAN - Persona F'#237'sica'
              'AZERBAIDZHAN - Otro tipo de Entidad'
              'BANGLADESH - Persona Jur'#237'dica'
              'BANGLADESH - Persona F'#237'sica'
              'BANGLADESH - Otro tipo de Entidad'
              'BARBADOS (Estado independiente) - Persona Jur'#237'dica'
              'BARBADOS (Estado independiente) - Persona F'#237'sica'
              'BARBADOS (Estado independiente) - Otro tipo de Entidad'
              'BELGICA - Persona Jur'#237'dica'
              'BELGICA - Persona F'#237'sica'
              'BELGICA - Otro tipo de Entidad'
              'BELICE (Estado independiente) - Persona Jur'#237'dica'
              'BELICE (Estado independiente) - Persona F'#237'sica'
              'BELICE (Estado independiente) - Otro tipo de Entidad'
              'BENIN - Persona Jur'#237'dica'
              'BENIN - Persona F'#237'sica'
              'BENIN - Otro tipo de Entidad'
              
                'BERMUDAS (Territorio no aut'#243'nomo del Reino Unido) - Persona Jur'#237 +
                'dica'
              
                'BERMUDAS (Territorio no aut'#243'nomo del Reino Unido) - Persona F'#237'si' +
                'ca'
              
                'BERMUDAS (Territorio no aut'#243'nomo del Reino Unido) - Otro tipo de' +
                ' Entidad'
              'BIELORUSIA - Persona Jur'#237'dica'
              'BIELORUSIA - Persona F'#237'sica'
              'BIELORUSIA - Otro tipo de Entidad'
              'BOLIVIA - Persona Jur'#237'dica'
              'BOLIVIA - Persona F'#237'sica'
              'BOLIVIA - Otro tipo de Entidad'
              'BOSNIA HERZEGOVINA - Persona Jur'#237'dica'
              'BOSNIA HERZEGOVINA - Persona F'#237'sica'
              'BOSNIA HERZEGOVINA - Otro tipo de Entidad'
              'BOTSWANA - Persona Jur'#237'dica'
              'BOTSWANA - Persona F'#237'sica'
              'BOTSWANA - Otro tipo de Entidad'
              'BRASIL - Persona Jur'#237'dica'
              'BRASIL - Persona F'#237'sica'
              'BRASIL - Otro tipo de Entidad'
              'BRUNEI DARUSSALAM (Estado independiente) - Persona Jur'#237'dica'
              'BRUNEI DARUSSALAM (Estado independiente) - Persona F'#237'sica'
              'BRUNEI DARUSSALAM (Estado independiente) - Otro tipo de Entidad'
              'BULGARIA - Persona Jur'#237'dica'
              'BULGARIA - Persona F'#237'sica'
              'BULGARIA - Otro tipo de Entidad'
              'BURKINA FASO - Persona Jur'#237'dica'
              'BURKINA FASO - Persona F'#237'sica'
              'BURKINA FASO - Otro tipo de Entidad'
              'BURUNDI - Persona Jur'#237'dica'
              'BURUNDI - Persona F'#237'sica'
              'BURUNDI - Otro tipo de Entidad'
              'BUTAN - Persona Jur'#237'dica'
              'BUTAN - Persona F'#237'sica'
              'BUTAN - Otro tipo de Entidad'
              'CAMBOYA (EX KAMPUCHEA) - Persona Jur'#237'dica'
              'CAMBOYA (EX KAMPUCHEA) - Persona F'#237'sica'
              'CAMBOYA (EX KAMPUCHEA) - Otro tipo de Entidad'
              'CAMERUN - Persona Jur'#237'dica'
              'CAMERUN - Persona F'#237'sica'
              'CAMERUN - Otro tipo de Entidad'
              'CAMPIONE D@ITALIA - Persona Jur'#237'dica'
              'CAMPIONE D@ITALIA - Persona F'#237'sica'
              'CAMPIONE D@ITALIA - Otro tipo de Entidad'
              'CANADA - Persona Jur'#237'dica'
              'CANADA - Persona F'#237'sica'
              'CANADA - Otro tipo de Entidad'
              'CENTRO AFRICANO, REP. - Persona Jur'#237'dica'
              'CENTRO AFRICANO, REP. - Persona F'#237'sica'
              'CENTRO AFRICANO, REP. - Otro tipo de Entidad'
              'CHAD - Persona Jur'#237'dica'
              'CHAD - Persona F'#237'sica'
              'CHAD - Otro tipo de Entidad'
              'CHECA, REPUBLICA - Persona Jur'#237'dica'
              'CHECA, REPUBLICA - Persona F'#237'sica'
              'CHECA, REPUBLICA - Otro tipo de Entidad'
              'CHILE - Persona Jur'#237'dica'
              'CHILE - Persona F'#237'sica'
              'CHILE - Otro tipo de Entidad'
              'CHINA REP.POPULAR - Persona Jur'#237'dica'
              'CHINA REP.POPULAR - Persona F'#237'sica'
              'CHINA REP.POPULAR - Otro tipo de Entidad'
              'COLOMBIA - Persona Jur'#237'dica'
              'COLOMBIA - Persona F'#237'sica'
              'COLOMBIA - Otro tipo de Entidad'
              'COLONIA DE GIBRALTAR - Persona Jur'#237'dica'
              'COLONIA DE GIBRALTAR - Persona F'#237'sica'
              'COLONIA DE GIBRALTAR - Otro tipo de Entidad'
              'COMORAS - Persona Jur'#237'dica'
              'COMORAS - Persona F'#237'sica'
              'COMORAS - Otro tipo de Entidad'
              
                'COMUNIDAD DE LAS BAHAMAS (Estado independiente) - Persona Jur'#237'di' +
                'ca'
              'COMUNIDAD DE LAS BAHAMAS (Estado independiente) - Persona F'#237'sica'
              
                'COMUNIDAD DE LAS BAHAMAS (Estado independiente) - Otro tipo de E' +
                'ntidad'
              'CONGO REP.POPULAR - Persona Jur'#237'dica'
              'CONGO REP.POPULAR - Persona F'#237'sica'
              'CONGO REP.POPULAR - Otro tipo de Entidad'
              'COREA DEMOCRATICA - Persona Jur'#237'dica'
              'COREA DEMOCRATICA - Persona F'#237'sica'
              'COREA DEMOCRATICA - Otro tipo de Entidad'
              'COREA REPUBLICANA - Persona Jur'#237'dica'
              'COREA REPUBLICANA - Persona F'#237'sica'
              'COREA REPUBLICANA - Otro tipo de Entidad'
              'COSTA DE MARFIL - Persona Jur'#237'dica'
              'COSTA DE MARFIL - Persona F'#237'sica'
              'COSTA DE MARFIL - Otro tipo de Entidad'
              'COSTA RICA - Persona Jur'#237'dica'
              'COSTA RICA - Persona F'#237'sica'
              'COSTA RICA - Otro tipo de Entidad'
              'CROACIA - Persona Jur'#237'dica'
              'CROACIA - Persona F'#237'sica'
              'CROACIA - Otro tipo de Entidad'
              'CUBA - Persona Jur'#237'dica'
              'CUBA - Persona F'#237'sica'
              'CUBA - Otro tipo de Entidad'
              'DINAMARCA - Persona Jur'#237'dica'
              'DINAMARCA - Persona F'#237'sica'
              'DINAMARCA - Otro tipo de Entidad'
              'DOMINICANA, REPUBLICA - Persona Jur'#237'dica'
              'DOMINICANA, REPUBLICA - Persona F'#237'sica'
              'DOMINICANA, REPUBLICA - Otro tipo de Entidad'
              'ECUADOR - Persona Jur'#237'dica'
              'ECUADOR - Persona F'#237'sica'
              'ECUADOR - Otro tipo de Entidad'
              'EGIPTO - Persona Jur'#237'dica'
              'EGIPTO - Persona F'#237'sica'
              'EGIPTO - Otro tipo de Entidad'
              'EL COMMONWEALTH DE DOMINICA (Estado Asociado) - Persona Jur'#237'dica'
              'EL COMMONWEALTH DE DOMINICA (Estado Asociado) - Persona F'#237'sica'
              
                'EL COMMONWEALTH DE DOMINICA (Estado Asociado) - Otro tipo de Ent' +
                'idad'
              'EL SALVADOR - Persona Jur'#237'dica'
              'EL SALVADOR - Persona F'#237'sica'
              'EL SALVADOR - Otro tipo de Entidad'
              'EMIRATOS ARABES UNIDOS (Estado independiente) - Persona Jur'#237'dica'
              'EMIRATOS ARABES UNIDOS (Estado independiente) - Persona F'#237'sica'
              
                'EMIRATOS ARABES UNIDOS (Estado independiente) - Otro tipo de Ent' +
                'idad'
              'ERITREA - Persona Jur'#237'dica'
              'ERITREA - Persona F'#237'sica'
              'ERITREA - Otro tipo de Entidad'
              'ESLOVACA, REPUBLICA - Persona Jur'#237'dica'
              'ESLOVACA, REPUBLICA - Persona F'#237'sica'
              'ESLOVACA, REPUBLICA - Otro tipo de Entidad'
              'ESLOVENIA - Persona Jur'#237'dica'
              'ESLOVENIA - Persona F'#237'sica'
              'ESLOVENIA - Otro tipo de Entidad'
              'ESPA'#209'A - Persona Jur'#237'dica'
              'ESPA'#209'A - Persona F'#237'sica'
              'ESPA'#209'A - Otro tipo de Entidad'
              
                'ESTADO ASOCIADO DE GRANADA (Estado independiente) - Persona Jur'#237 +
                'dica'
              
                'ESTADO ASOCIADO DE GRANADA (Estado independiente) - Persona F'#237'si' +
                'ca'
              
                'ESTADO ASOCIADO DE GRANADA (Estado independiente) - Otro tipo de' +
                ' Entidad'
              'ESTADO DE BAHREIN (Estado independiente) - Persona Jur'#237'dica'
              'ESTADO DE BAHREIN (Estado independiente) - Persona F'#237'sica'
              'ESTADO DE BAHREIN (Estado independiente) - Otro tipo de Entidad'
              'ESTADO DE KUWAIT (Estado independiente) - Persona Jur'#237'dica'
              'ESTADO DE KUWAIT (Estado independiente) - Persona F'#237'sica'
              'ESTADO DE KUWAIT (Estado independiente) - Otro tipo de Entidad'
              'ESTADO DE QATAR (Estado independiente) - Persona Jur'#237'dica'
              'ESTADO DE QATAR (Estado independiente) - Persona F'#237'sica'
              'ESTADO DE QATAR (Estado independiente) - Otro tipo de Entidad'
              
                'ESTADO LIBRE ASOCIADO DE PUERTO RICO (Estado asoc. a EEUU) - Per' +
                'sona Jur'#237'dica'
              
                'ESTADO LIBRE ASOCIADO DE PUERTO RICO (Estado asoc. a EEUU) - Per' +
                'sona F'#237'sica'
              
                'ESTADO LIBRE ASOCIADO DE PUERTO RICO (Estado asoc. a EEUU) - Otr' +
                'o tipo de Entidad'
              'ESTADOS UNIDOS - Persona Jur'#237'dica'
              'ESTADOS UNIDOS - Persona F'#237'sica'
              'ESTADOS UNIDOS - Otro tipo de Entidad'
              'ESTONIA - Persona Jur'#237'dica'
              'ESTONIA - Persona F'#237'sica'
              'ESTONIA - Otro tipo de Entidad'
              'ETIOPIA - Persona Jur'#237'dica'
              'ETIOPIA - Persona F'#237'sica'
              'ETIOPIA - Otro tipo de Entidad'
              
                'FEDERACION DE SAN CRISTOBAL (Islas Saint Kitts and Nevis) - Pers' +
                'ona Jur'#237'dica'
              
                'FEDERACION DE SAN CRISTOBAL (Islas Saint Kitts and Nevis) - Pers' +
                'ona F'#237'sica'
              
                'FEDERACION DE SAN CRISTOBAL (Islas Saint Kitts and Nevis) - Otro' +
                ' tipo de Entidad'
              'FIJI, ISLAS - Persona Jur'#237'dica'
              'FIJI, ISLAS - Persona F'#237'sica'
              'FIJI, ISLAS - Otro tipo de Entidad'
              'FILIPINAS - Persona Jur'#237'dica'
              'FILIPINAS - Persona F'#237'sica'
              'FILIPINAS - Otro tipo de Entidad'
              'FINLANDIA - Persona Jur'#237'dica'
              'FINLANDIA - Persona F'#237'sica'
              'FINLANDIA - Otro tipo de Entidad'
              'FRANCIA - Persona Jur'#237'dica'
              'FRANCIA - Persona F'#237'sica'
              'FRANCIA - Otro tipo de Entidad'
              'GABON - Persona Jur'#237'dica'
              'GABON - Persona F'#237'sica'
              'GABON - Otro tipo de Entidad'
              'GAMBIA - Persona Jur'#237'dica'
              'GAMBIA - Persona F'#237'sica'
              'GAMBIA - Otro tipo de Entidad'
              'GAZA - Persona Jur'#237'dica'
              'GAZA - Persona F'#237'sica'
              'GAZA - Otro tipo de Entidad'
              'GEORGIA - Persona Jur'#237'dica'
              'GEORGIA - Persona F'#237'sica'
              'GEORGIA - Otro tipo de Entidad'
              'GHANA - Persona Jur'#237'dica'
              'GHANA - Persona F'#237'sica'
              'GHANA - Otro tipo de Entidad'
              'GRAN DUCADO DE LUXEMBURGO - Persona Jur'#237'dica'
              'GRAN DUCADO DE LUXEMBURGO - Persona F'#237'sica'
              'GRAN DUCADO DE LUXEMBURGO - Otro tipo de Entidad'
              'GRECIA - Persona Jur'#237'dica'
              'GRECIA - Persona F'#237'sica'
              'GRECIA - Otro tipo de Entidad'
              'GROENLANDIA - Persona Jur'#237'dica'
              'GROENLANDIA - Persona F'#237'sica'
              'GROENLANDIA - Otro tipo de Entidad'
              'GUAM (Territorio no aut'#243'nomo de los EEUU) - Persona Jur'#237'dica'
              'GUAM (Territorio no aut'#243'nomo de los EEUU) - Persona F'#237'sica'
              'GUAM (Territorio no aut'#243'nomo de los EEUU) - Otro tipo de Entidad'
              'GUATEMALA - Persona Jur'#237'dica'
              'GUATEMALA - Persona F'#237'sica'
              'GUATEMALA - Otro tipo de Entidad'
              'GUINEA - Persona Jur'#237'dica'
              'GUINEA - Persona F'#237'sica'
              'GUINEA - Otro tipo de Entidad'
              'GUINEA BISSAU - Persona Jur'#237'dica'
              'GUINEA BISSAU - Persona F'#237'sica'
              'GUINEA BISSAU - Otro tipo de Entidad'
              'GUINEA ECUATORIAL - Persona Jur'#237'dica'
              'GUINEA ECUATORIAL - Persona F'#237'sica'
              'GUINEA ECUATORIAL - Otro tipo de Entidad'
              'HAITI - Persona Jur'#237'dica'
              'HAITI - Persona F'#237'sica'
              'HAITI - Otro tipo de Entidad'
              'HONDURAS - Persona Jur'#237'dica'
              'HONDURAS - Persona F'#237'sica'
              'HONDURAS - Otro tipo de Entidad'
              'HONK KONG (Territorio de China) - Persona Jur'#237'dica'
              'HONK KONG (Territorio de China) - Persona F'#237'sica'
              'HONK KONG (Territorio de China) - Otro tipo de Entidad'
              'HUNGRIA - Persona Jur'#237'dica'
              'HUNGRIA - Persona F'#237'sica'
              'HUNGRIA - Otro tipo de Entidad'
              'INDETERMINADO (AFRICA) - Persona Jur'#237'dica'
              'INDETERMINADO (AFRICA) - Persona F'#237'sica'
              'INDETERMINADO (AFRICA) - Otro tipo de Entidad'
              'INDETERMINADO (AMERICA) - Persona Jur'#237'dica'
              'INDETERMINADO (AMERICA) - Persona F'#237'sica'
              'INDETERMINADO (AMERICA) - Otro tipo de Entidad'
              'INDETERMINADO (ASIA) - Persona Jur'#237'dica'
              'INDETERMINADO (ASIA) - Persona F'#237'sica'
              'INDETERMINADO (ASIA) - Otro tipo de Entidad'
              'INDETERMINADO (EUROPA) - Persona Jur'#237'dica'
              'INDETERMINADO (EUROPA) - Persona F'#237'sica'
              'INDETERMINADO (EUROPA) - Otro tipo de Entidad'
              'INDETERMINADO (OCEANIA) - Persona Jur'#237'dica'
              'INDETERMINADO (OCEANIA) - Persona F'#237'sica'
              'INDETERMINADO (OCEANIA) - Otro tipo de Entidad'
              'INDIA - Persona Jur'#237'dica'
              'INDIA - Persona F'#237'sica'
              'INDIA - Otro tipo de Entidad'
              'INDONESIA - Persona Jur'#237'dica'
              'INDONESIA - Persona F'#237'sica'
              'INDONESIA - Otro tipo de Entidad'
              'IRAK - Persona Jur'#237'dica'
              'IRAK - Persona F'#237'sica'
              'IRAK - Otro tipo de Entidad'
              'IRAN - Persona Jur'#237'dica'
              'IRAN - Persona F'#237'sica'
              'IRAN - Otro tipo de Entidad'
              'IRLANDA (EIRE) - Persona Jur'#237'dica'
              'IRLANDA (EIRE) - Persona F'#237'sica'
              'IRLANDA (EIRE) - Otro tipo de Entidad'
              'ISLA CHRISTMAS - Persona Jur'#237'dica'
              'ISLA CHRISTMAS - Persona F'#237'sica'
              'ISLA CHRISTMAS - Otro tipo de Entidad'
              'ISLA DE COCOS O KEELING - Persona Jur'#237'dica'
              'ISLA DE COCOS O KEELING - Persona F'#237'sica'
              'ISLA DE COCOS O KEELING - Otro tipo de Entidad'
              'ISLA DE MAN (Territorio del Reino Unido) - Persona Jur'#237'dica'
              'ISLA DE MAN (Territorio del Reino Unido) - Persona F'#237'sica'
              'ISLA DE MAN (Territorio del Reino Unido) - Otro tipo de Entidad'
              'ISLA DE NORFOLK - Persona Jur'#237'dica'
              'ISLA DE NORFOLK - Persona F'#237'sica'
              'ISLA DE NORFOLK - Otro tipo de Entidad'
              'ISLA DE SAN PEDRO Y MIGUELON - Persona Jur'#237'dica'
              'ISLA DE SAN PEDRO Y MIGUELON - Persona F'#237'sica'
              'ISLA DE SAN PEDRO Y MIGUELON - Otro tipo de Entidad'
              'ISLA QESHM - Persona Jur'#237'dica'
              'ISLA QESHM - Persona F'#237'sica'
              'ISLA QESHM - Otro tipo de Entidad'
              'ISLANDIA - Persona Jur'#237'dica'
              'ISLANDIA - Persona F'#237'sica'
              'ISLANDIA - Otro tipo de Entidad'
              'ISLAS AZORES - Persona Jur'#237'dica'
              'ISLAS AZORES - Persona F'#237'sica'
              'ISLAS AZORES - Otro tipo de Entidad'
              
                'ISLAS CAIMAN (Territorio no aut'#243'nomo del Reino Unido) - Persona ' +
                'Jur'#237'dica'
              
                'ISLAS CAIMAN (Territorio no aut'#243'nomo del Reino Unido) - Persona ' +
                'F'#237'sica'
              
                'ISLAS CAIMAN (Territorio no aut'#243'nomo del Reino Unido) - Otro tip' +
                'o de Entidad'
              
                'ISLAS DE COOK (Territorio aut'#243'nomo asociado a Nueva Zelanda) - P' +
                'ersona Jur'#237'dica'
              
                'ISLAS DE COOK (Territorio aut'#243'nomo asociado a Nueva Zelanda) - P' +
                'ersona F'#237'sica'
              
                'ISLAS DE COOK (Territorio aut'#243'nomo asociado a Nueva Zelanda) - O' +
                'tro tipo de Entidad'
              
                'ISLAS DEL CANAL:Guernesey,Jersey,Alderney,G.Stark,L.Sark,etc - P' +
                'ersona Jur'#237'dica'
              
                'ISLAS DEL CANAL:Guernesey,Jersey,Alderney,G.Stark,L.Sark,etc - P' +
                'ersona F'#237'sica'
              
                'ISLAS DEL CANAL:Guernesey,Jersey,Alderney,G.Stark,L.Sark,etc - O' +
                'tro tipo de Entidad'
              'ISLAS MARIANAS - Persona Jur'#237'dica'
              'ISLAS MARIANAS - Persona F'#237'sica'
              'ISLAS MARIANAS - Otro tipo de Entidad'
              'ISLAS PACIFICO - Persona Jur'#237'dica'
              'ISLAS PACIFICO - Persona F'#237'sica'
              'ISLAS PACIFICO - Otro tipo de Entidad'
              'ISLAS SALOMON - Persona Jur'#237'dica'
              'ISLAS SALOMON - Persona F'#237'sica'
              'ISLAS SALOMON - Otro tipo de Entidad'
              
                'ISLAS TURKAS Y CAICOS (Territorio no aut'#243'nomo del R. Unido) - Pe' +
                'rsona Jur'#237'dica'
              
                'ISLAS TURKAS Y CAICOS (Territorio no aut'#243'nomo del R. Unido) - Pe' +
                'rsona F'#237'sica'
              
                'ISLAS TURKAS Y CAICOS (Territorio no aut'#243'nomo del R. Unido) - Ot' +
                'ro tipo de Entidad'
              
                'ISLAS VIRGENES BRITANICAS(Territorio no aut'#243'nomo de R.UNIDO) - P' +
                'ersona Jur'#237'dica'
              
                'ISLAS VIRGENES BRITANICAS(Territorio no aut'#243'nomo de R.UNIDO) - P' +
                'ersona F'#237'sica'
              
                'ISLAS VIRGENES BRITANICAS(Territorio no aut'#243'nomo de R.UNIDO) - O' +
                'tro tipo de Entidad'
              'ISLAS VIRGENES DE ESTADOS UNIDOS DE AMERICA - Persona Jur'#237'dica'
              'ISLAS VIRGENES DE ESTADOS UNIDOS DE AMERICA - Persona F'#237'sica'
              
                'ISLAS VIRGENES DE ESTADOS UNIDOS DE AMERICA - Otro tipo de Entid' +
                'ad'
              'ISRAEL - Persona Jur'#237'dica'
              'ISRAEL - Persona F'#237'sica'
              'ISRAEL - Otro tipo de Entidad'
              'ITALIA - Persona Jur'#237'dica'
              'ITALIA - Persona F'#237'sica'
              'ITALIA - Otro tipo de Entidad'
              'JAMAICA - Persona Jur'#237'dica'
              'JAMAICA - Persona F'#237'sica'
              'JAMAICA - Otro tipo de Entidad'
              'JAPON - Persona Jur'#237'dica'
              'JAPON - Persona F'#237'sica'
              'JAPON - Otro tipo de Entidad'
              'KAZAJSTAN - Persona Jur'#237'dica'
              'KAZAJSTAN - Persona F'#237'sica'
              'KAZAJSTAN - Otro tipo de Entidad'
              'KENIA - Persona Jur'#237'dica'
              'KENIA - Persona F'#237'sica'
              'KENIA - Otro tipo de Entidad'
              'KIRGUISTAN - Persona Jur'#237'dica'
              'KIRGUISTAN - Persona F'#237'sica'
              'KIRGUISTAN - Otro tipo de Entidad'
              'KIRIBATI - Persona Jur'#237'dica'
              'KIRIBATI - Persona F'#237'sica'
              'KIRIBATI - Otro tipo de Entidad'
              'LABUAN - Persona Jur'#237'dica'
              'LABUAN - Persona F'#237'sica'
              'LABUAN - Otro tipo de Entidad'
              'LAOS - Persona Jur'#237'dica'
              'LAOS - Persona F'#237'sica'
              'LAOS - Otro tipo de Entidad'
              'LESOTHO - Persona Jur'#237'dica'
              'LESOTHO - Persona F'#237'sica'
              'LESOTHO - Otro tipo de Entidad'
              'LETONIA - Persona Jur'#237'dica'
              'LETONIA - Persona F'#237'sica'
              'LETONIA - Otro tipo de Entidad'
              'LIBANO - Persona Jur'#237'dica'
              'LIBANO - Persona F'#237'sica'
              'LIBANO - Otro tipo de Entidad'
              'LIBIA - Persona Jur'#237'dica'
              'LIBIA - Persona F'#237'sica'
              'LIBIA - Otro tipo de Entidad'
              'LITUANIA - Persona Jur'#237'dica'
              'LITUANIA - Persona F'#237'sica'
              'LITUANIA - Otro tipo de Entidad'
              'MACAO - Persona Jur'#237'dica'
              'MACAO - Persona F'#237'sica'
              'MACAO - Otro tipo de Entidad'
              'MACEDONIA - Persona Jur'#237'dica'
              'MACEDONIA - Persona F'#237'sica'
              'MACEDONIA - Otro tipo de Entidad'
              'MADAGASCAR - Persona Jur'#237'dica'
              'MADAGASCAR - Persona F'#237'sica'
              'MADAGASCAR - Otro tipo de Entidad'
              'MADEIRA (Territorio de Portugal) - Persona Jur'#237'dica'
              'MADEIRA (Territorio de Portugal) - Persona F'#237'sica'
              'MADEIRA (Territorio de Portugal) - Otro tipo de Entidad'
              'MALASIA - Persona Jur'#237'dica'
              'MALASIA - Persona F'#237'sica'
              'MALASIA - Otro tipo de Entidad'
              'MALAWI - Persona Jur'#237'dica'
              'MALAWI - Persona F'#237'sica'
              'MALAWI - Otro tipo de Entidad'
              'MALI - Persona Jur'#237'dica'
              'MALI - Persona F'#237'sica'
              'MALI - Otro tipo de Entidad'
              'MARRUECOS - Persona Jur'#237'dica'
              'MARRUECOS - Persona F'#237'sica'
              'MARRUECOS - Otro tipo de Entidad'
              'MAURITANIA - Persona Jur'#237'dica'
              'MAURITANIA - Persona F'#237'sica'
              'MAURITANIA - Otro tipo de Entidad'
              'MEXICO - Persona Jur'#237'dica'
              'MEXICO - Persona F'#237'sica'
              'MEXICO - Otro tipo de Entidad'
              'MICRONESIA ESTADOS FED. - Persona Jur'#237'dica'
              'MICRONESIA ESTADOS FED. - Persona F'#237'sica'
              'MICRONESIA ESTADOS FEDERADOS - Otro tipo de Entidad'
              'MOLDOVA - Persona Jur'#237'dica'
              'MOLDOVA - Persona F'#237'sica'
              'MOLDOVA - Otro tipo de Entidad'
              'MONGOLIA - Persona Jur'#237'dica'
              'MONGOLIA - Persona F'#237'sica'
              'MONGOLIA - Otro tipo de Entidad'
              
                'MONTSERRAT (Territorio no aut'#243'nomo del Reino Unido) - Persona Ju' +
                'r'#237'dica'
              
                'MONTSERRAT (Territorio no aut'#243'nomo del Reino Unido) - Persona F'#237 +
                'sica'
              
                'MONTSERRAT (Territorio no aut'#243'nomo del Reino Unido) - Otro tipo ' +
                'de Entidad'
              'MOZAMBIQUE - Persona Jur'#237'dica'
              'MOZAMBIQUE - Persona F'#237'sica'
              'MOZAMBIQUE - Otro tipo de Entidad'
              'MYANMAR (EX BIRMANIA) - Persona Jur'#237'dica'
              'MYANMAR (EX BIRMANIA) - Persona F'#237'sica'
              'MYANMAR (EX BIRMANIA) - Otro tipo de Entidad'
              'NAMIBIA - Persona Jur'#237'dica'
              'NAMIBIA - Persona F'#237'sica'
              'NAMIBIA - Otro tipo de Entidad'
              'NEPAL - Persona Jur'#237'dica'
              'NEPAL - Persona F'#237'sica'
              'NEPAL - Otro tipo de Entidad'
              'NICARAGUA - Persona Jur'#237'dica'
              'NICARAGUA - Persona F'#237'sica'
              'NICARAGUA - Otro tipo de Entidad'
              'NIGER - Persona Jur'#237'dica'
              'NIGER - Persona F'#237'sica'
              'NIGER - Otro tipo de Entidad'
              'NIGERIA - Persona Jur'#237'dica'
              'NIGERIA - Persona F'#237'sica'
              'NIGERIA - Otro tipo de Entidad'
              'NIUE - Persona Jur'#237'dica'
              'NIUE - Persona F'#237'sica'
              'NIUE - Otro tipo de Entidad'
              'NORUEGA - Persona Jur'#237'dica'
              'NORUEGA - Persona F'#237'sica'
              'NORUEGA - Otro tipo de Entidad'
              'NUEVA ZELANDA - Persona Jur'#237'dica'
              'NUEVA ZELANDA - Persona F'#237'sica'
              'NUEVA ZELANDA - Otro tipo de Entidad'
              'PAISES BAJOS - Persona Jur'#237'dica'
              'PAISES BAJOS - Persona F'#237'sica'
              'PAISES BAJOS - Otro tipo de Entidad'
              'PAKISTAN - Persona Jur'#237'dica'
              'PAKISTAN - Persona F'#237'sica'
              'PAKISTAN - Otro tipo de Entidad'
              'PALAU - Persona Jur'#237'dica'
              'PALAU - Persona F'#237'sica'
              'PALAU - Otro tipo de Entidad'
              'PAPUA, ISLAS - Persona Jur'#237'dica'
              'PAPUA, ISLAS - Persona F'#237'sica'
              'PAPUA, ISLAS - Otro tipo de Entidad'
              
                'PARA PERSONAS FISICAS DE INDETERMINADO (CONTINENTE) - Persona Ju' +
                'r'#237'dica'
              
                'PARA PERSONAS FISICAS DE INDETERMINADO (CONTINENTE) - Persona F'#237 +
                'sica'
              
                'PARA PERSONAS FISICAS DE INDETERMINADO (CONTINENTE) - Otro tipo ' +
                'de Entidad'
              'PARA PERSONAS FISICAS DE OTROS PAISES - Persona Jur'#237'dica'
              'PARA PERSONAS FISICAS DE OTROS PAISES - Persona F'#237'sica'
              'PARA PERSONAS FISICAS DE OTROS PAISES - Otro tipo de Entidad'
              'PARAGUAY - Persona Jur'#237'dica'
              'PARAGUAY - Persona F'#237'sica'
              'PARAGUAY - Otro tipo de Entidad'
              'PATAU - Persona Jur'#237'dica'
              'PATAU - Persona F'#237'sica'
              'PATAU - Otro tipo de Entidad'
              'PERU - Persona Jur'#237'dica'
              'PERU - Persona F'#237'sica'
              'PERU - Otro tipo de Entidad'
              'PITCAIRN - Persona Jur'#237'dica'
              'PITCAIRN - Persona F'#237'sica'
              'PITCAIRN - Otro tipo de Entidad'
              
                'POLINESIA FRANCESA (Territorio de Ultramar de Francia) - Persona' +
                ' Jur'#237'dica'
              
                'POLINESIA FRANCESA (Territorio de Ultramar de Francia) - Persona' +
                ' F'#237'sica'
              
                'POLINESIA FRANCESA (Territorio de Ultramar de Francia) - Otro ti' +
                'po de Entidad'
              'POLONIA - Persona Jur'#237'dica'
              'POLONIA - Persona F'#237'sica'
              'POLONIA - Otro tipo de Entidad'
              'PORTUGAL - Persona Jur'#237'dica'
              'PORTUGAL - Persona F'#237'sica'
              'PORTUGAL - Otro tipo de Entidad'
              'POS.AUSTRALIANA (OCEANIA) - Persona Jur'#237'dica'
              'POS.AUSTRALIANA (OCEANIA) - Persona F'#237'sica'
              'POS.AUSTRALIANA (OCEANIA) - Otro tipo de Entidad'
              'POS.BRITANICA (AFRICA) - Persona Jur'#237'dica'
              'POS.BRITANICA (AFRICA) - Persona F'#237'sica'
              'POS.BRITANICA (AFRICA) - Otro tipo de Entidad'
              'POS.BRITANICA (AMERICA) - Persona Jur'#237'dica'
              'POS.BRITANICA (AMERICA) - Persona F'#237'sica'
              'POS.BRITANICA (AMERICA) - Otro tipo de Entidad'
              'POS.BRITANICA (EUROPA) - Persona Jur'#237'dica'
              'POS.BRITANICA (EUROPA) - Persona F'#237'sica'
              'POS.BRITANICA (EUROPA) - Otro tipo de Entidad'
              'POS.BRITANICA (HONG KONG) - Persona Jur'#237'dica'
              'POS.BRITANICA (HONG KONG) - Persona F'#237'sica'
              'POS.BRITANICA (HONG KONG) - Otro tipo de Entidad'
              'POS.BRITANICA (OCEANIA) - Persona Jur'#237'dica'
              'POS.BRITANICA (OCEANIA) - Persona F'#237'sica'
              'POS.BRITANICA (OCEANIA) - Otro tipo de Entidad'
              'POS.DANESA (AMERICA) - Persona Jur'#237'dica'
              'POS.DANESA (AMERICA) - Persona F'#237'sica'
              'POS.DANESA (AMERICA) - Otro tipo de Entidad'
              'POS.E.E.U.U. (AMERICA) - Persona Jur'#237'dica'
              'POS.E.E.U.U. (AMERICA) - Persona F'#237'sica'
              'POS.E.E.U.U. (AMERICA) - Otro tipo de Entidad'
              'POS.E.E.U.U. (OCEANIA) - Persona Jur'#237'dica'
              'POS.E.E.U.U. (OCEANIA) - Persona F'#237'sica'
              'POS.E.E.U.U. (OCEANIA) - Otro tipo de Entidad'
              'POS.ESPA'#209'OLA (AFRICA) - Persona Jur'#237'dica'
              'POS.ESPA'#209'OLA (AFRICA) - Persona F'#237'sica'
              'POS.ESPA'#209'OLA (AFRICA) - Otro tipo de Entidad'
              'POS.FRANCESA (AFRICA) - Persona Jur'#237'dica'
              'POS.FRANCESA (AFRICA) - Persona F'#237'sica'
              'POS.FRANCESA (AFRICA) - Otro tipo de Entidad'
              'POS.FRANCESA (AMERICA) - Persona Jur'#237'dica'
              'POS.FRANCESA (AMERICA) - Persona F'#237'sica'
              'POS.FRANCESA (AMERICA) - Otro tipo de Entidad'
              'POS.FRANCESA (OCEANIA) - Persona Jur'#237'dica'
              'POS.FRANCESA (OCEANIA) - Persona F'#237'sica'
              'POS.FRANCESA (OCEANIA) - Otro tipo de Entidad'
              'POS.JAPONESA (ASIA) - Persona Jur'#237'dica'
              'POS.JAPONESA (ASIA) - Persona F'#237'sica'
              'POS.JAPONESA (ASIA) - Otro tipo de Entidad'
              'POS.NEOCELANDESA (OCEANIA) - Persona Jur'#237'dica'
              'POS.NEOCELANDESA (OCEANIA) - Persona F'#237'sica'
              'POS.NEOCELANDESA (OCEANIA) - Otro tipo de Entidad'
              'POS.PAISES BAJOS (AMERICA) - Persona Jur'#237'dica'
              'POS.PAISES BAJOS (AMERICA) - Persona F'#237'sica'
              'POS.PAISES BAJOS (AMERICA) - Otro tipo de Entidad'
              'POS.PORTUGUESA (AFRICA) - Persona Jur'#237'dica'
              'POS.PORTUGUESA (AFRICA) - Persona F'#237'sica'
              'POS.PORTUGUESA (AFRICA) - Otro tipo de Entidad'
              
                'PRINCIPADO DE LIECHTENSTEIN (Estado independiente) - Persona Jur' +
                #237'dica'
              
                'PRINCIPADO DE LIECHTENSTEIN (Estado independiente) - Persona F'#237's' +
                'ica'
              
                'PRINCIPADO DE LIECHTENSTEIN (Estado independiente) - Otro tipo d' +
                'e Entidad'
              'PRINCIPADO DE MONACO - Persona Jur'#237'dica'
              'PRINCIPADO DE MONACO - Persona F'#237'sica'
              'PRINCIPADO DE MONACO - Otro tipo de Entidad'
              'PRINCIPADO DEL VALLE DE ANDORRA - Persona Jur'#237'dica'
              'PRINCIPADO DEL VALLE DE ANDORRA - Persona F'#237'sica'
              'PRINCIPADO DEL VALLE DE ANDORRA - Otro tipo de Entidad'
              
                'REGIMEN APLICABLE A LAS SA FINANCIERAS(ley 11.073 de la ROU) - P' +
                'ersona Jur'#237'dica'
              
                'REGIMEN APLICABLE A LAS SA FINANCIERAS(ley 11.073 de la ROU) - P' +
                'ersona F'#237'sica'
              
                'REGIMEN APLICABLE A LAS SA FINANCIERAS(ley 11.073 de la ROU) - O' +
                'tro tipo de Entidad'
              'REINO DE SWAZILANDIA (Estado independiente) - Persona Jur'#237'dica'
              'REINO DE SWAZILANDIA (Estado independiente) - Persona F'#237'sica'
              
                'REINO DE SWAZILANDIA (Estado independiente) - Otro tipo de Entid' +
                'ad'
              'REINO DE TONGA (Estado independiente) - Persona Jur'#237'dica'
              'REINO DE TONGA (Estado independiente) - Persona F'#237'sica'
              'REINO DE TONGA (Estado independiente) - Otro tipo de Entidad'
              'REINO HACHEMITA DE JORDANIA - Persona Jur'#237'dica'
              'REINO HACHEMITA DE JORDANIA - Persona F'#237'sica'
              'REINO HACHEMITA DE JORDANIA - Otro tipo de Entidad'
              'REINO UNIDO - Persona Jur'#237'dica'
              'REINO UNIDO - Persona F'#237'sica'
              'REINO UNIDO - Otro tipo de Entidad'
              
                'REPUBLICA COOPERATIVA DE GUYANA (Estado independiente) - Persona' +
                ' Jur'#237'dica'
              
                'REPUBLICA COOPERATIVA DE GUYANA (Estado independiente) - Persona' +
                ' F'#237'sica'
              
                'REPUBLICA COOPERATIVA DE GUYANA (Estado independiente) - Otro ti' +
                'po de Entidad'
              'REPUBLICA DE ALBANIA - Persona Jur'#237'dica'
              'REPUBLICA DE ALBANIA - Persona F'#237'sica'
              'REPUBLICA DE ALBANIA - Otro tipo de Entidad'
              'REPUBLICA DE ANGOLA - Persona Jur'#237'dica'
              'REPUBLICA DE ANGOLA - Persona F'#237'sica'
              'REPUBLICA DE ANGOLA - Otro tipo de Entidad'
              
                'REPUBLICA DE CABO VERDE (Estado independiente) - Persona Jur'#237'dic' +
                'a'
              'REPUBLICA DE CABO VERDE (Estado independiente) - Persona F'#237'sica'
              
                'REPUBLICA DE CABO VERDE (Estado independiente) - Otro tipo de En' +
                'tidad'
              'REPUBLICA DE CHIPRE (Estado independiente) - Persona Jur'#237'dica'
              'REPUBLICA DE CHIPRE (Estado independiente) - Persona F'#237'sica'
              
                'REPUBLICA DE CHIPRE (Estado independiente) - Otro tipo de Entida' +
                'd'
              'REPUBLICA DE DJIBUTI (Estado independiente) - Persona Jur'#237'dica'
              'REPUBLICA DE DJIBUTI (Estado independiente) - Persona F'#237'sica'
              
                'REPUBLICA DE DJIBUTI (Estado independiente) - Otro tipo de Entid' +
                'ad'
              
                'REPUBLICA DE LAS ISLAS MARSHALL (Estado independiente) - Persona' +
                ' Jur'#237'dica'
              
                'REPUBLICA DE LAS ISLAS MARSHALL (Estado independiente) - Persona' +
                ' F'#237'sica'
              
                'REPUBLICA DE LAS ISLAS MARSHALL (Estado independiente) - Otro ti' +
                'po de Entidad'
              'REPUBLICA DE LIBERIA (Estado independiente) - Persona Jur'#237'dica'
              'REPUBLICA DE LIBERIA (Estado independiente) - Persona F'#237'sica'
              
                'REPUBLICA DE LIBERIA (Estado independiente) - Otro tipo de Entid' +
                'ad'
              'REPUBLICA DE MALDIVAS (Estado independiente) - Persona Jur'#237'dica'
              'REPUBLICA DE MALDIVAS (Estado independiente) - Persona F'#237'sica'
              
                'REPUBLICA DE MALDIVAS (Estado independiente) - Otro tipo de Enti' +
                'dad'
              'REPUBLICA DE MALTA (Estado independiente) - Persona Jur'#237'dica'
              'REPUBLICA DE MALTA (Estado independiente) - Persona F'#237'sica'
              'REPUBLICA DE MALTA (Estado independiente) - Otro tipo de Entidad'
              'REPUBLICA DE MAURICIO - Persona Jur'#237'dica'
              'REPUBLICA DE MAURICIO - Persona F'#237'sica'
              'REPUBLICA DE MAURICIO - Otro tipo de Entidad'
              'REPUBLICA DE NAURU (Estado independiente) - Persona Jur'#237'dica'
              'REPUBLICA DE NAURU (Estado independiente) - Persona F'#237'sica'
              'REPUBLICA DE NAURU (Estado independiente) - Otro tipo de Entidad'
              'REPUBLICA DE PANAMA (Estado independiente) - Persona Jur'#237'dica'
              'REPUBLICA DE PANAMA (Estado independiente) - Persona F'#237'sica'
              
                'REPUBLICA DE PANAMA (Estado independiente) - Otro tipo de Entida' +
                'd'
              
                'REPUBLICA DE SEYCHELLES (Estado independiente) - Persona Jur'#237'dic' +
                'a'
              'REPUBLICA DE SEYCHELLES (Estado independiente) - Persona F'#237'sica'
              
                'REPUBLICA DE SEYCHELLES (Estado independiente) - Otro tipo de En' +
                'tidad'
              'REPUBLICA DE TRINIDAD Y TOBAGO - Persona Jur'#237'dica'
              'REPUBLICA DE TRINIDAD Y TOBAGO - Persona F'#237'sica'
              'REPUBLICA DE TRINIDAD Y TOBAGO - Otro tipo de Entidad'
              'REPUBLICA DE VANUATU - Persona Jur'#237'dica'
              'REPUBLICA DE VANUATU - Persona F'#237'sica'
              'REPUBLICA DE VANUATU - Otro tipo de Entidad'
              'REPUBLICA DEL YEMEN - Persona Jur'#237'dica'
              'REPUBLICA DEL YEMEN - Persona F'#237'sica'
              'REPUBLICA DEL YEMEN - Otro tipo de Entidad'
              'REPUBLICA DEMOCRATICA SOCIALISTA DE SRI LANKA - Persona Jur'#237'dica'
              'REPUBLICA DEMOCRATICA SOCIALISTA DE SRI LANKA - Persona F'#237'sica'
              
                'REPUBLICA DEMOCRATICA SOCIALISTA DE SRI LANKA - Otro tipo de Ent' +
                'idad'
              'REPUBLICA TUNECINA - Persona Jur'#237'dica'
              'REPUBLICA TUNECINA - Persona F'#237'sica'
              'REPUBLICA TUNECINA - Otro tipo de Entidad'
              'RUANDA - Persona Jur'#237'dica'
              'RUANDA - Persona F'#237'sica'
              'RUANDA - Otro tipo de Entidad'
              'RUMANIA - Persona Jur'#237'dica'
              'RUMANIA - Persona F'#237'sica'
              'RUMANIA - Otro tipo de Entidad'
              'RUSA, FEDERACION - Persona Jur'#237'dica'
              'RUSA, FEDERACION - Persona F'#237'sica'
              'RUSA, FEDERACION - Otro tipo de Entidad'
              
                'SAMOA AMERICANA (Territorio no aut'#243'nomo de los EEUU) - Persona J' +
                'ur'#237'dica'
              
                'SAMOA AMERICANA (Territorio no aut'#243'nomo de los EEUU) - Persona F' +
                #237'sica'
              
                'SAMOA AMERICANA (Territorio no aut'#243'nomo de los EEUU) - Otro tipo' +
                ' de Entidad'
              'SAMOA OCCIDENTAL - Persona Jur'#237'dica'
              'SAMOA OCCIDENTAL - Persona F'#237'sica'
              'SAMOA OCCIDENTAL - Otro tipo de Entidad'
              
                'SAN VICENTE Y LAS GRANADINAS (Estado independiente) - Persona Ju' +
                'r'#237'dica'
              
                'SAN VICENTE Y LAS GRANADINAS (Estado independiente) - Persona F'#237 +
                'sica'
              
                'SAN VICENTE Y LAS GRANADINAS (Estado independiente) - Otro tipo ' +
                'de Entidad'
              'SANTA ELENA - Persona Jur'#237'dica'
              'SANTA ELENA - Persona F'#237'sica'
              'SANTA ELENA - Otro tipo de Entidad'
              'SANTA LUCIA - Persona Jur'#237'dica'
              'SANTA LUCIA - Persona F'#237'sica'
              'SANTA LUCIA - Otro tipo de Entidad'
              'SANTA SEDE (VATICANO) - Persona Jur'#237'dica'
              'SANTA SEDE (VATICANO) - Persona F'#237'sica'
              'SANTA SEDE (VATICANO) - Otro tipo de Entidad'
              'SANTO TOME Y PRINCIPE - Persona Jur'#237'dica'
              'SANTO TOME Y PRINCIPE - Persona F'#237'sica'
              'SANTO TOME Y PRINCIPE - Otro tipo de Entidad'
              'SENEGAL - Persona Jur'#237'dica'
              'SENEGAL - Persona F'#237'sica'
              'SENEGAL - Otro tipo de Entidad'
              'SERBIA - Persona Jur'#237'dica'
              'SERBIA - Persona F'#237'sica'
              'SERBIA - Otro tipo de Entidad'
              'SERBIA - Persona Jur'#237'dica'
              'SERBIA - Persona F'#237'sica'
              'SERBIA - Otro tipo de Entidad'
              
                'SERENISIMA REPUBLICA DE SAN MARINO (Estado independiente) - Pers' +
                'ona Jur'#237'dica'
              
                'SERENISIMA REPUBLICA DE SAN MARINO (Estado independiente) - Pers' +
                'ona F'#237'sica'
              
                'SERENISIMA REPUBLICA DE SAN MARINO (Estado independiente) - Otro' +
                ' tipo de Entidad'
              'SIERRA LEONA - Persona Jur'#237'dica'
              'SIERRA LEONA - Persona F'#237'sica'
              'SIERRA LEONA - Otro tipo de Entidad'
              'SINGAPUR - Persona Jur'#237'dica'
              'SINGAPUR - Persona F'#237'sica'
              'SINGAPUR - Otro tipo de Entidad'
              'SIRIA - Persona Jur'#237'dica'
              'SIRIA - Persona F'#237'sica'
              'SIRIA - Otro tipo de Entidad'
              'SOMALIA - Persona Jur'#237'dica'
              'SOMALIA - Persona F'#237'sica'
              'SOMALIA - Otro tipo de Entidad'
              'SUDAFRICA, REP. DE - Persona Jur'#237'dica'
              'SUDAFRICA, REP. DE - Persona F'#237'sica'
              'SUDAFRICA, REP. DE - Otro tipo de Entidad'
              'SUDAN - Persona Jur'#237'dica'
              'SUDAN - Persona F'#237'sica'
              'SUDAN - Otro tipo de Entidad'
              'SUECIA - Persona Jur'#237'dica'
              'SUECIA - Persona F'#237'sica'
              'SUECIA - Otro tipo de Entidad'
              'SUIZA - Persona Jur'#237'dica'
              'SUIZA - Persona F'#237'sica'
              'SUIZA - Otro tipo de Entidad'
              'SULTANATO DE OMAN - Persona Jur'#237'dica'
              'SULTANATO DE OMAN - Persona F'#237'sica'
              'SULTANATO DE OMAN - Otro tipo de Entidad'
              'SURINAME - Persona Jur'#237'dica'
              'SURINAME - Persona F'#237'sica'
              'SURINAME - Otro tipo de Entidad'
              'TAILANDIA - Persona Jur'#237'dica'
              'TAILANDIA - Persona F'#237'sica'
              'TAILANDIA - Otro tipo de Entidad'
              'TAIWAN - Persona Jur'#237'dica'
              'TAIWAN - Persona F'#237'sica'
              'TAIWAN - Otro tipo de Entidad'
              'TANZANIA - Persona Jur'#237'dica'
              'TANZANIA - Persona F'#237'sica'
              'TANZANIA - Otro tipo de Entidad'
              'TAYIKISTAN - Persona Jur'#237'dica'
              'TAYIKISTAN - Persona F'#237'sica'
              'TAYIKISTAN - Otro tipo de Entidad'
              'TERRITORIOS AUTONOMOS PALESTINOS - Persona Jur'#237'dica'
              'TERRITORIOS AUTONOMOS PALESTINOS - Persona F'#237'sica'
              'TERRITORIOS AUTONOMOS PALESTINOS - Otro tipo de Entidad'
              'TOGO - Persona Jur'#237'dica'
              'TOGO - Persona F'#237'sica'
              'TOGO - Otro tipo de Entidad'
              'TOKELAU - Persona Jur'#237'dica'
              'TOKELAU - Persona F'#237'sica'
              'TOKELAU - Otro tipo de Entidad'
              'TRIESTE (Italia) - Persona Jur'#237'dica'
              'TRIESTE (Italia) - Persona F'#237'sica'
              'TRIESTE (Italia) - Otro tipo de Entidad'
              'TRISTAN DA CUNHA - Persona Jur'#237'dica'
              'TRISTAN DA CUNHA - Persona F'#237'sica'
              'TRISTAN DA CUNHA - Otro tipo de Entidad'
              'TURKMENISTAN - Persona Jur'#237'dica'
              'TURKMENISTAN - Persona F'#237'sica'
              'TURKMENISTAN - Otro tipo de Entidad'
              'TURQUIA - Persona Jur'#237'dica'
              'TURQUIA - Persona F'#237'sica'
              'TURQUIA - Otro tipo de Entidad'
              'TUVALU - Persona Jur'#237'dica'
              'TUVALU - Persona F'#237'sica'
              'TUVALU - Otro tipo de Entidad'
              'UCRANIA - Persona Jur'#237'dica'
              'UCRANIA - Persona F'#237'sica'
              'UCRANIA - Otro tipo de Entidad'
              'UGANDA - Persona Jur'#237'dica'
              'UGANDA - Persona F'#237'sica'
              'UGANDA - Otro tipo de Entidad'
              'URUGUAY - Persona Jur'#237'dica'
              'URUGUAY - Persona F'#237'sica'
              'URUGUAY - Otro tipo de Entidad'
              'UZBEKISTAN - Persona Jur'#237'dica'
              'UZBEKISTAN - Persona F'#237'sica'
              'UZBEKISTAN - Otro tipo de Entidad'
              'VENEZUELA - Persona Jur'#237'dica'
              'VENEZUELA - Persona F'#237'sica'
              'VENEZUELA - Otro tipo de Entidad'
              'VIETNAM - Persona Jur'#237'dica'
              'VIETNAM - Persona F'#237'sica'
              'VIETNAM - Otro tipo de Entidad'
              'YUGOSLAVIA - Persona Jur'#237'dica'
              'YUGOSLAVIA - Persona F'#237'sica'
              'YUGOSLAVIA - Otro tipo de Entidad'
              'ZAIRE - Persona Jur'#237'dica'
              'ZAIRE - Persona F'#237'sica'
              'ZAIRE - Otro tipo de Entidad'
              'ZAMBIA - Persona Jur'#237'dica'
              'ZAMBIA - Persona F'#237'sica'
              'ZAMBIA - Otro tipo de Entidad'
              'ZIMBABWE - Persona Jur'#237'dica'
              'ZIMBABWE - Persona F'#237'sica'
              'ZIMBABWE - Otro tipo de Entidad'
              
                'ZONA LIBRE DE OSTRAVA (ciudad de la antigua Checoeslovaquia) - P' +
                'ersona Jur'#237'dica'
              
                'ZONA LIBRE DE OSTRAVA (ciudad de la antigua Checoeslovaquia) - P' +
                'ersona F'#237'sica'
              
                'ZONA LIBRE DE OSTRAVA (ciudad de la antigua Checoeslovaquia) - O' +
                'tro tipo de Entidad')
            TabOrder = 1
            Values.Strings = (
              '50000003017'
              '50000003015'
              '51600003015'
              '55000004382'
              '50000004380'
              '51600004380'
              '55000006520'
              '50000006529'
              '51600006529'
              '55000002258'
              '50000002256'
              '51600002256'
              '55000006598'
              '50000006596'
              '51600006596'
              '55000003025'
              '50000003023'
              '51600003023'
              '55000006962'
              '50000006960'
              '51600006960'
              '55000001022'
              '50000001020'
              '51600001020'
              '55000006024'
              '50000006022'
              '51600006022'
              '55000006539'
              '50000006537'
              '51600006537'
              '55000006628'
              '50000006626'
              '51600006626'
              '55000004994'
              '50000004992'
              '51600004992'
              '55000004056'
              '50000004054'
              '51600004054'
              '55000003904'
              '50000003902'
              '51600003902'
              '55000003459'
              '50000003457'
              '51600003457'
              '55000002010'
              '50000002019'
              '51600002019'
              '55000004064'
              '50000004062'
              '51600004062'
              '55000002363'
              '50000002361'
              '51600002361'
              '55000001626'
              '50000001624'
              '51600001624'
              '55000006636'
              '50000006634'
              '51600006634'
              '55000004390'
              '50000004399'
              '51600004399'
              '55000000042'
              '50000000040'
              '51600000040'
              '55000004463'
              '50000004461'
              '51600004461'
              '55000001030'
              '50000001039'
              '51600001039'
              '55000000050'
              '50000000059'
              '51600000059'
              '55000003912'
              '50000003910'
              '51600003910'
              '55000004072'
              '50000004070'
              '51600004070'
              '55000001014'
              '50000001012'
              '51600001012'
              '55000001049'
              '50000001047'
              '51600001047'
              '55000002827'
              '50000002825'
              '51600002825'
              '55000003068'
              '50000003066'
              '51600003066'
              '55000001057'
              '50000001055'
              '51600001055'
              '55000006644'
              '50000006642'
              '51600006642'
              '55000002045'
              '50000002043'
              '51600002043'
              '55000001073'
              '50000001071'
              '51600001071'
              '55000001537'
              '50000001535'
              '51600001535'
              '55000006059'
              '50000006057'
              '51600006057'
              '55000000034'
              '50000000032'
              '51600000032'
              '55000003106'
              '50000003104'
              '51600003104'
              '55000002053'
              '50000002051'
              '51600002051'
              '55000006652'
              '50000006650'
              '51600006650'
              '55000001898'
              '50000001896'
              '51600001896'
              '55000002908'
              '50000002906'
              '51600002906'
              '55000001529'
              '50000001527'
              '51600001527'
              '55000003084'
              '50000003082'
              '51600003082'
              '55000003092'
              '50000003090'
              '51600003090'
              '55000001103'
              '50000001101'
              '51600001101'
              '55000001588'
              '50000001586'
              '51600001586'
              '55000006032'
              '50000006030'
              '51600006030'
              '55000002398'
              '50000002396'
              '51600002396'
              '55000004099'
              '50000004097'
              '51600004097'
              '55000002096'
              '50000002094'
              '51600002094'
              '55000002428'
              '50000002426'
              '51600002426'
              '55000001138'
              '50000001136'
              '51600001136'
              '55000002339'
              '50000002337'
              '51600002337'
              '55000002118'
              '50000002116'
              '51600002116'
              '55000003319'
              '50000003317'
              '51600003317'
              '55000001855'
              '50000001853'
              '51600001853'
              '55000006067'
              '50000006065'
              '51600006065'
              '55000004498'
              '50000004496'
              '51600004496'
              '55000004102'
              '50000004100'
              '51600004100'
              '55000002884'
              '50000002882'
              '51600002884'
              '55000003033'
              '50000003031'
              '51600003031'
              '55000003238'
              '50000003236'
              '51600003236'
              '55000002983'
              '50000002981'
              '51600002981'
              '55000002215'
              '50000002213'
              '51600002213'
              '55000002126'
              '50000002124'
              '51600002124'
              '55000004404'
              '50000004402'
              '51600004402'
              '55000001146'
              '50000001144'
              '51600001144'
              '55000002894'
              '50000002892'
              '51600002892'
              '55000005125'
              '50000005123'
              '51600005123'
              '55000003122'
              '50000003120'
              '51600003120'
              '55000004110'
              '50000004119'
              '51600004119'
              '55000004129'
              '50000004127'
              '51600004127'
              '55000001154'
              '50000001152'
              '51600001152'
              '55000001162'
              '50000001160'
              '51600001160'
              '55000003149'
              '50000003147'
              '51600003147'
              '55000003882'
              '50000003880'
              '51600003880'
              '55000001170'
              '50000001179'
              '51600001179'
              '55000004196'
              '50000004194'
              '51600004194'
              '55000004137'
              '50000004135'
              '51600004135'
              '55000006660'
              '50000006669'
              '51600006669'
              '55000006679'
              '50000006677'
              '51600006677'
              '55000002134'
              '50000002132'
              '51600002132'
              '55000001189'
              '50000001187'
              '51600001187'
              '55000001847'
              '50000001845'
              '51600001845'
              '55000001197'
              '50000001195'
              '51600001195'
              '55000002150'
              '50000002159'
              '51600002159'
              '55000002169'
              '50000002167'
              '51600002167'
              '55000006687'
              '50000006685'
              '51600006685'
              '55000004145'
              '50000004143'
              '51600004143'
              '55000001987'
              '50000001985'
              '51600001985'
              '55000002924'
              '50000002922'
              '51600002922'
              '55000003963'
              '50000003961'
              '51600003961'
              '55000004986'
              '50000004984'
              '51600004984'
              '55000005982'
              '50000005980'
              '51600005980'
              '55000003157'
              '50000003155'
              '51600003155'
              '55000003165'
              '50000003163'
              '51600003163'
              '55000003173'
              '50000003171'
              '51600003171'
              '55000002932'
              '50000002930'
              '51600002930'
              '55000004153'
              '50000004151'
              '51600004151'
              '55000006725'
              '50000006723'
              '51600006723'
              '55000006733'
              '50000006731'
              '51600006731'
              '55000006768'
              '50000006766'
              '51600006766'
              '55000006776'
              '50000006774'
              '51600006774'
              '55000006806'
              '50000006804'
              '51600006804'
              '55000006814'
              '50000006812'
              '51600006812'
              '55000003815'
              '50000003813'
              '51600003813'
              '55000006695'
              '50000006693'
              '51600006693'
              '55000006717'
              '50000006715'
              '51600006715'
              '55000006547'
              '50000006545'
              '51600006545'
              '55000006709'
              '50000006707'
              '51600006707'
              '55000005214'
              '50000005212'
              '51600005212'
              '55000006792'
              '50000006790'
              '51600006790'
              '55000005184'
              '50000005182'
              '51600005182'
              '55000006784'
              '50000006782'
              '51600006782'
              '55000006822'
              '50000006820'
              '51600006820'
              '55000006830'
              '50000006839'
              '51600006839'
              '55000002878'
              '50000002876'
              '51600002876'
              '55000003548'
              '50000003546'
              '51600003546'
              '55000002177'
              '50000002175'
              '51600002175'
              '55000003203'
              '50000003201'
              '51600003201'
              '55000003920'
              '50000003929'
              '51600003929'
              '55000001200'
              '50000001209'
              '51600001209'
              '55000003939'
              '50000003937'
              '51600003937'
              '55000005168'
              '50000005166'
              '51600005166'
              '55000006849'
              '50000006847'
              '51600006847'
              '55000003246'
              '50000003244'
              '51600003244'
              '55000001219'
              '50000001217'
              '51600001217'
              '55000004412'
              '50000004410'
              '51600004410'
              '55000003254'
              '50000003252'
              '51600003252'
              '55000001235'
              '50000001233'
              '51600001233'
              '55000004420'
              '50000004429'
              '51600004429'
              '55000003440'
              '50000003449'
              '51600003449'
              '55000004900'
              '50000004909'
              '51600004909'
              '55000001243'
              '50000001241'
              '51600001241'
              '55000006857'
              '50000006855'
              '51600006855'
              '55000003262'
              '50000003260'
              '51600003260'
              '55000001545'
              '50000001543'
              '51600001543'
              '55000001634'
              '50000001632'
              '51600001632'
              '55000001278'
              '50000001276'
              '51600001276'
              '55000001294'
              '50000001292'
              '51600001292'
              '55000002185'
              '50000002183'
              '51600002183'
              '55000005907'
              '50000005905'
              '51600005905'
              '55000004439'
              '50000004437'
              '51600004437'
              '55000003297'
              '50000003295'
              '51600003295'
              '55000006865'
              '50000006863'
              '51600006863'
              '55000001510'
              '50000001519'
              '51600001519'
              '55000002843'
              '50000002841'
              '51600002841'
              '55000001839'
              '50000001837'
              '51600001837'
              '55000003300'
              '50000003309'
              '51600003309'
              '55000002193'
              '50000002191'
              '51600002191'
              '55000001308'
              '50000001306'
              '51600001306'
              '55000001316'
              '50000001314'
              '51600001314'
              '55000006873'
              '50000006871'
              '51600006871'
              '55000004226'
              '50000004224'
              '51600004224'
              '55000005044'
              '50000005042'
              '51600005042'
              '55000004234'
              '50000004232'
              '51600004232'
              '55000003327'
              '50000003325'
              '51600003325'
              '55000005915'
              '50000005913'
              '51600005913'
              '55000005133'
              '50000005131'
              '51600005131'
              '55000009988'
              '50000009986'
              '51600009986'
              '55000009996'
              '50000009994'
              '51600009994'
              '55000000026'
              '50000000024'
              '51600000024'
              '55000006555'
              '50000006553'
              '51600006553'
              '55000002223'
              '50000002221'
              '51600002221'
              '55000006903'
              '50000006901'
              '51600006901'
              '55000006563'
              '50000006561'
              '51600006561'
              '55000004242'
              '50000004240'
              '51600004240'
              '55000004250'
              '50000004259'
              '51600004259'
              '55000005079'
              '50000005077'
              '51600005077'
              '55000001456'
              '50000001454'
              '51600001454'
              '55000002274'
              '50000002272'
              '51600002272'
              '55000004919'
              '50000004917'
              '51600004917'
              '55000003416'
              '50000003414'
              '51600003414'
              '55000005087'
              '50000005085'
              '51600005085'
              '55000002282'
              '50000002280'
              '51600002280'
              '55000002312'
              '50000002310'
              '51600002310'
              '55000005117'
              '50000005115'
              '51600005115'
              '55000001464'
              '50000001462'
              '51600001462'
              '55000001472'
              '50000001470'
              '51600001470'
              '55000002290'
              '50000002299'
              '51600002299'
              '55000005095'
              '50000005093'
              '51600005093'
              '55000003424'
              '50000003422'
              '51600003422'
              '55000005109'
              '50000005107'
              '51600005107'
              '55000002304'
              '50000002302'
              '51600002302'
              '55000001480'
              '50000001489'
              '51600001489'
              '55000004188'
              '50000004186'
              '51600004186'
              '55000004218'
              '50000004216'
              '51600004216'
              '55000004048'
              '50000004046'
              '51600004046'
              '55000006938'
              '50000006936'
              '51600006936'
              '55000001375'
              '50000001373'
              '51600001373'
              '55000005192'
              '50000005190'
              '51600005190'
              '55000003009'
              '50000003007'
              '51600003007'
              '55000004269'
              '50000004267'
              '51600004267'
              '55000002142'
              '50000002140'
              '51600002140'
              '55000004013'
              '50000004011'
              '51600004011'
              '55000001499'
              '50000001497'
              '51600001497'
              '55000001502'
              '50000001500'
              '51600001500'
              '55000003114'
              '50000003112'
              '51600003112'
              '55000001863'
              '50000001861'
              '51600001861'
              '55000005206'
              '50000005204'
              '51600005204'
              '55000001227'
              '50000001225'
              '51600001225'
              '55000003270'
              '50000003279'
              '51600003279'
              '55000004366'
              '50000004364'
              '51600004364'
              '55000001286'
              '50000001284'
              '51600001284'
              '55000005036'
              '50000005034'
              '51600005034'
              '55000002207'
              '50000002205'
              '51600002205'
              '55000001812'
              '50000001810'
              '51600001810'
              '55000002436'
              '50000002434'
              '51600002434'
              '55000005052'
              '50000005050'
              '51600005050'
              '55000003394'
              '50000003392'
              '51600003392'
              '55000003076'
              '50000003074'
              '51600003074'
              '55000001413'
              '50000001411'
              '51600001411'
              '55000001332'
              '50000001330'
              '51600001330'
              '55000004277'
              '50000004275'
              '51600004275'
              '55000006016'
              '50000006014'
              '51600006014'
              '55000006954'
              '50000006952'
              '51600006952'
              '55000005069'
              '50000005069'
              '51600005069'
              '55000002355'
              '50000002353'
              '51600002353'
              '55000006946'
              '50000006944'
              '51600006944'
              '55000002347'
              '50000002345'
              '51600002345'
              '55000004315'
              '50000004313'
              '51600004313'
              '55000001820'
              '50000001829'
              '51600001829'
              '55000001340'
              '50000001349'
              '51600001349'
              '55000004544'
              '50000004542'
              '51600004542'
              '55000004544'
              '50000004542'
              '51600004542'
              '55000004285'
              '50000004283'
              '51600004283'
              '55000001359'
              '50000001357'
              '51600001357'
              '55000003335'
              '50000003333'
              '51600003333'
              '55000003343'
              '50000003341'
              '51600003341'
              '55000001367'
              '50000001365'
              '51600001365'
              '55000001715'
              '50000001713'
              '51600001713'
              '55000001383'
              '50000001381'
              '51600001381'
              '55000004293'
              '50000004291'
              '51600004291'
              '55000004307'
              '50000004305'
              '51600004305'
              '55000003289'
              '50000003287'
              '51600003287'
              '55000002320'
              '50000002329'
              '51600002329'
              '55000002916'
              '50000002914'
              '51600002914'
              '55000003130'
              '50000003139'
              '51600003139'
              '55000001553'
              '50000001551'
              '51600001551'
              '55000003890'
              '50000003899'
              '51600003899'
              '55000003572'
              '50000003570'
              '51600003570'
              '55000001405'
              '50000001403'
              '51600001403'
              '55000006997'
              '50000006995'
              '51600006995'
              '55000006989'
              '50000006987'
              '51600006987'
              '55000006970'
              '50000006979'
              '51600006979'
              '55000003556'
              '50000003554'
              '51600003554'
              '55000003505'
              '50000003503'
              '51600003503'
              '55000005176'
              '50000005174'
              '51600005174'
              '55000006040'
              '50000006049'
              '51600006049'
              '55000001707'
              '50000001705'
              '51600001705'
              '55000000018'
              '50000000016'
              '51600000016'
              '55000003564'
              '50000003562'
              '51600003562'
              '55000002266'
              '50000002264'
              '51600002264'
              '55000003378'
              '50000003376'
              '51600003376'
              '55000004323'
              '50000004321'
              '51600004321'
              '55000001618'
              '50000001616'
              '51600001616'
              '55000001448'
              '50000001446'
              '51600001446'
              '55000001324'
              '50000001322'
              '51600001322'
              '55000007004'
              '50000007002'
              '51600007002')
            CaseSensitiveValues = True
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
            OnKeyDown = cbPaisKeyDown
          end
          object cbDestino: TJvDBComboBox
            Left = 3
            Top = 17
            Width = 190
            Height = 21
            DataField = 'DESTINO_DOCUMENTO'
            DataSource = DSBase
            DropDownCount = 15
            DropDownWidth = 350
            Items.Strings = (
              'AAE Tierra del Fuego - ARGENTINA'
              'AFGANISTAN'
              'ALBANIA'
              'ALEMANIA,REP.FED.'
              'ANDORRA'
              'ANGOLA'
              'ANTIGUA Y BARBUDA'
              'ANTILLAS HOLANDESAS'
              'ARABIA SAUDITA'
              'ARGELIA'
              'ARGENTINA'
              'ARMENIA'
              'AUSTRALIA'
              'AUSTRIA'
              'AZERBAIJAN'
              'BAHAMAS'
              'BAHREIN'
              'BANGLADESH'
              'BARBADOS'
              'BELGICA'
              'BELICE'
              'BENIN'
              'BIELORRUSIA'
              'BOLIVIA'
              'BOSNIA HERZEGOVINA'
              'BOTSWANA'
              'BRASIL'
              'BRUNEI'
              'BULGARIA'
              'BURKINA FASO'
              'BURUNDI'
              'BUTAN'
              'CABO VERDE'
              'CAMBODYA (EX-KAMPUCHE)'
              'CAMERUN'
              'CANADA'
              'CHAD'
              'CHILE'
              'CHINA'
              'CHIPRE'
              'COLOMBIA'
              'COMORAS'
              'CONGO'
              'COREA DEMOCRATICA'
              'COREA REPUBLICANA'
              'COSTA DE MARFIL'
              'COSTA RICA'
              'CROACIA'
              'CUBA'
              'DINAMARCA'
              'DJIBOUTI'
              'DOMINICA'
              'ECUADOR'
              'EGIPTO'
              'EL SALVADOR'
              'EMIRATOS ARABES UNIDOS'
              'ERITREA'
              'ESLOVAQUIA'
              'ESLOVENIA'
              'ESPA'#209'A'
              'ESTADOS UNIDOS'
              'ESTONIA'
              'ETIOPIA'
              'FIJI, ISLAS'
              'FILIPINAS'
              'FINLANDIA'
              'FRANCIA'
              'GABON'
              'GAMBIA'
              'GEORGIA'
              'GHANA'
              'GRECIA'
              'GRENADA'
              'GUATEMALA'
              'GUINEA'
              'GUINEA BISSAU'
              'GUINEA ECUATORIAL'
              'GUYANA'
              'HAITI'
              'HONDURAS'
              'HONG KONG'
              'HUNGRIA'
              'INDET.(ASIA)'
              'INDET.(CONTINENTE)'
              'INDET.(EUROPA)'
              'INDET.(OCEANIA)'
              'INDETERMINADO (AFRICA)'
              'INDETERMINADO (AMERICA)'
              'INDIA'
              'INDONESIA'
              'IRAK'
              'IRAN'
              'IRLANDA'
              'ISLANDIA'
              'Islas Malvinas - ARGENTINA'
              'ISRAEL'
              'ITALIA'
              'JAMAICA'
              'JAPON'
              'JORDANIA'
              'KAZAJSTAN'
              'KENYA'
              'KIRGUIZISTAN'
              'KIRIBATI, ISLAS'
              'KUWAIT'
              'LAOS'
              'LESOTHO'
              'LETONIA'
              'LIBANO'
              'LIBERIA'
              'LIBIA'
              'LIECHTENSTEIN'
              'LITUANIA'
              'LUXEMBURGO'
              'MACAO'
              'MACEDONIA'
              'MADAGASCAR'
              'MALASIA'
              'MALAWI'
              'MALDIVAS ISLAS'
              'MALI'
              'MALTA'
              'MAR ARG ZONA ECO.EX'
              'MARIANAS,ISLAS'
              'MARRUECOS'
              'MARSHALL,ISLAS'
              'MAURICIO,ISLAS'
              'MAURITANIA'
              'MEXICO'
              'MICRONESIA,EST.FEDER'
              'MOLDAVIA'
              'MONACO'
              'MONGOLIA'
              'MONTENEGRO'
              'MOZAMBIQUE'
              'MYANMAR (EX-BIRMANIA)'
              'NAMIBIA'
              'NAURU'
              'NEPAL'
              'NICARAGUA'
              'NIGER'
              'NIGERIA'
              'NORUEGA'
              'NUEVA ZELANDIA'
              'OMAN'
              'PAISES BAJOS'
              'PAKIST'#193'N'
              'PALAU'
              'PANAMA'
              'PAPUA NUEVA GUINEA'
              'PARAGUAY'
              'PERU'
              'POLONIA'
              'PORTUGAL'
              'POS.BRIT.(EUROPA)'
              'PUERTO RICO'
              'QATAR'
              'REINO UNIDO'
              'REP. CENTROAFRICANA.'
              'REP. CHECA'
              'REP.DEMOCRAT.DEL CONGO EX ZAIRE'
              'REPUBLICA DE YEMEN'
              'REP'#218'BLICA DOMINICANA'
              'RESTO (AFRICA)'
              'RESTO AMERICA'
              'RESTO CONTINENTE'
              'RESTO DE ASIA'
              'RESTO EUROPA'
              'RESTO OCEANIA'
              'RIOS ARG NAVEG INTER'
              'RUMANIA'
              'RUSIA'
              'RWANDA'
              'S.CRISTOBAL Y NEVIS'
              'SALOMON,ISLAS'
              'SAMOA OCCIDENTAL'
              'SAN MARINO'
              'SAN VICENTE Y LAS GRANADINAS'
              'SANTA LUCIA'
              'SECTOR ANTARTICO ARG.'
              'SENEGAL'
              'SERBIA'
              'SEYCHELLES'
              'SIERRA LEONA'
              'SINGAPUR'
              'SIRIA'
              'SOMALIA'
              'SRI LANKA'
              'STO.TOME Y PRINCIPE'
              'SUDAFRICA'
              'SUDAN'
              'SUECIA'
              'SUIZA'
              'SURINAME'
              'SWAZILANDIA'
              'TAIWAN'
              'TANZANIA'
              'TAYIKISTAN'
              'TER VINCULADOS A NUEVA. ZELANDA'
              'TER. VINCULADOS A ESTADOS UNIDOS'
              'TER.VINCULADOS A DINAMARCA'
              'TER.VINCULADOS A ESTADOS UNIDOS'
              'TERR. AU. PALESTINOS'
              'TERRIT. HOLANDESES'
              'TERRIT.VINCULADO AL R.UNIDO'
              'TERRIT.VINCULADOS A ESPA'#209'A'
              'TERRIT.VINCULADOS A FRANCIA'
              'TERRIT.VINCULADOS A FRANCIA AMERIC.'
              'TERRIT.VINCULADOS AL R UNIDO'
              'TERRITORIO VINCULADOS A AUSTRALIA'
              'TERRITORIOS VINCULADOS A FRANCIA'
              'TERRITORIOS VINCULADOS AL R. UNIDO'
              'THAILANDIA'
              'TOGO'
              'TONGA'
              'TRINIDAD Y TOBAGO'
              'TUNEZ'
              'TURKMENISTAN'
              'TURQUIA'
              'TUVALU'
              'UCRANIA'
              'UGANDA'
              'URUGUAY'
              'UZBEKISTAN'
              'VANATU'
              'VATICANO(SANTA SEDE)'
              'VENEZUELA'
              'VIETNAM'
              'ZAMBIA'
              'ZF Col'#243'n - REP'#218'BLICA DE PANAM'#193
              'ZF Colonia - URUGUAY'
              'ZF Comodoro Rivadavia - ARGENTINA'
              'ZF C'#243'rdoba - ARGENTINA'
              'ZF Florida - URUGUAY'
              'ZF General Pico - ARGENTINA'
              'ZF Iquique'
              'ZF Justo Daract - ARGENTINA'
              'ZF La Plata - ARGENTINA'
              'ZF Libertad - URUGUAY'
              'ZF Manaos - BRASIL'
              'ZF Mendoza - ARGENTINA'
              'ZF Nueva Helvecia - URUGUAY'
              'ZF Nueva Palmira - URUGUAY'
              'ZF Paso de los Libres - ARGENTINA'
              'ZF Puerto Iguaz'#250' - ARGENTINA'
              'ZF Punta Arenas'
              'ZF R'#237'o Gallegos - ARGENTINA'
              'ZF R'#237'o Negro - URUGUAY'
              'ZF Rivera - URUGUAY'
              'ZF Salta - ARGENTINA'
              'ZF San Jos'#233' - URUGUAY'
              'ZF Tucum'#225'n - ARGENTINA'
              'ZF Winner (Sta. C. de la Sierra) - BOLIVIA'
              'ZF Zonamerica - URUGUAY'
              'ZIMBABWE')
            Sorted = True
            TabOrder = 0
            Values.Strings = (
              '101'
              '102'
              '103'
              '104'
              '105'
              '107'
              '108'
              '109'
              '110'
              '111'
              '112'
              '113'
              '115'
              '116'
              '117'
              '118'
              '119'
              '120'
              '121'
              '122'
              '123'
              '124'
              '125'
              '126'
              '127'
              '128'
              '129'
              '130'
              '131'
              '132'
              '133'
              '134'
              '135'
              '136'
              '137'
              '138'
              '139'
              '140'
              '141'
              '142'
              '144'
              '145'
              '146'
              '147'
              '149'
              '150'
              '151'
              '152'
              '153'
              '155'
              '156'
              '157'
              '158'
              '159'
              '160'
              '161'
              '197'
              '198'
              '200'
              '201'
              '202'
              '203'
              '204'
              '205'
              '206'
              '207'
              '208'
              '209'
              '210'
              '211'
              '212'
              '213'
              '214'
              '215'
              '216'
              '217'
              '218'
              '219'
              '220'
              '221'
              '222'
              '223'
              '224'
              '225'
              '226'
              '227'
              '228'
              '229'
              '230'
              '231'
              '232'
              '233'
              '234'
              '235'
              '236'
              '237'
              '238'
              '239'
              '240'
              '241'
              '250'
              '251'
              '252'
              '253'
              '254'
              '255'
              '256'
              '257'
              '258'
              '259'
              '260'
              '261'
              '262'
              '263'
              '264'
              '265'
              '270'
              '271'
              '280'
              '281'
              '282'
              '283'
              '284'
              '285'
              '286'
              '287'
              '288'
              '291'
              '295'
              '296'
              '297'
              '298'
              '301'
              '302'
              '303'
              '304'
              '305'
              '306'
              '307'
              '308'
              '309'
              '310'
              '312'
              '313'
              '315'
              '316'
              '317'
              '318'
              '319'
              '320'
              '321'
              '322'
              '323'
              '324'
              '325'
              '326'
              '327'
              '328'
              '329'
              '330'
              '331'
              '332'
              '333'
              '334'
              '335'
              '337'
              '341'
              '344'
              '345'
              '346'
              '348'
              '349'
              '350'
              '351'
              '352'
              '353'
              '354'
              '355'
              '356'
              '357'
              '397'
              '398'
              '401'
              '404'
              '405'
              '406'
              '407'
              '409'
              '410'
              '411'
              '412'
              '413'
              '414'
              '415'
              '416'
              '417'
              '418'
              '419'
              '420'
              '421'
              '422'
              '423'
              '424'
              '425'
              '426'
              '427'
              '428'
              '429'
              '430'
              '431'
              '433'
              '435'
              '436'
              '438'
              '439'
              '440'
              '441'
              '442'
              '443'
              '444'
              '445'
              '446'
              '447'
              '448'
              '449'
              '450'
              '451'
              '453'
              '454'
              '497'
              '498'
              '501'
              '503'
              '504'
              '505'
              '506'
              '507'
              '508'
              '509'
              '510'
              '511'
              '512'
              '513'
              '514'
              '515'
              '516'
              '517'
              '518'
              '519'
              '520'
              '521'
              '597'
              '598'
              '997'
              '998')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object cbIncoterms: TJvDBComboBox
            Left = 374
            Top = 17
            Width = 55
            Height = 21
            DataField = 'INCOTERMS'
            DataSource = DSBase
            Items.Strings = (
              'CFR'
              'CIF'
              'CIP'
              'CPT'
              'DAP'
              'DDP'
              'EXW'
              'FAS'
              'FCA'
              'FOB')
            Sorted = True
            TabOrder = 2
            Values.Strings = (
              'CFR'
              'CIF'
              'CIP'
              'CPT'
              'DAP'
              'DDP'
              'EXW'
              'FAS'
              'FCA'
              'FOB')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
        end
        object tsDespachante: TTabSheet
          Caption = '-'
          ImageIndex = 2
          object Label37: TLabel
            Left = 465
            Top = 45
            Width = 76
            Height = 13
            Caption = 'Fecha de Carga'
          end
          object Label38: TLabel
            Left = 3
            Top = 1
            Width = 69
            Height = 13
            Caption = 'Doc.Aduanero'
          end
          object Label39: TLabel
            Left = 167
            Top = 1
            Width = 53
            Height = 13
            Caption = 'Nro.Interno'
          end
          object Label40: TLabel
            Left = 295
            Top = 1
            Width = 52
            Height = 13
            Caption = 'Ref.Cliente'
          end
          object Label41: TLabel
            Left = 3
            Top = 45
            Width = 45
            Height = 13
            Caption = 'Fob Total'
          end
          object Label42: TLabel
            Left = 125
            Top = 45
            Width = 35
            Height = 13
            Caption = 'Cambio'
          end
          object Label43: TLabel
            Left = 429
            Top = 1
            Width = 73
            Height = 13
            Caption = 'Tipo Operacion'
          end
          object Label44: TLabel
            Left = 218
            Top = 45
            Width = 51
            Height = 13
            Caption = 'Transporte'
          end
          object edNroInterno: TDBEdit
            Left = 166
            Top = 18
            Width = 121
            Height = 21
            DataField = 'NRO_INTERNO'
            DataSource = DSBase
            TabOrder = 2
            OnEnter = edNroInternoEnter
          end
          object edDocAduanero: TDBEdit
            Left = 3
            Top = 18
            Width = 157
            Height = 21
            DataField = 'DOC_ADUANERO'
            DataSource = DSBase
            TabOrder = 1
          end
          object edFechaCarga: TJvDBDateEdit
            Left = 463
            Top = 61
            Width = 92
            Height = 21
            DataField = 'FECHA_CARGA'
            DataSource = DSBase
            ButtonWidth = 16
            ShowNullDate = False
            TabOrder = 0
          end
          object EdRefCliente: TDBEdit
            Left = 293
            Top = 17
            Width = 121
            Height = 21
            DataField = 'REFERENCIA_EXPO'
            DataSource = DSBase
            TabOrder = 3
          end
          object JvDBComboEdit2: TJvDBComboEdit
            Left = 217
            Top = 61
            Width = 52
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            Action = BuscarTransporte
            ClickKey = 0
            DataField = 'ID_TRANSPORTE'
            DataSource = DSBase
            Glyph.Data = {
              4E000000424D4E000000000000003E0000002800000009000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FF8000002480000024800000FF800000}
            Images = ImageListDos
            ButtonWidth = 16
            TabOrder = 7
            OnButtonClick = BuscarTransporteExecute
            OnKeyDown = JvDBComboEdit2KeyDown
          end
          object DBEdit13: TDBEdit
            Left = 275
            Top = 61
            Width = 182
            Height = 21
            Color = clInfoBk
            DataField = 'MUESTRATRANSPORTE'
            DataSource = DSBase
            Enabled = False
            TabOrder = 8
            OnDblClick = dbeNombreDblClick
            OnMouseMove = dbeNombreMouseMove
          end
          object dbcTipoOp: TJvDBComboBox
            Left = 429
            Top = 17
            Width = 98
            Height = 21
            DataField = 'TIPO_OPERACION_EXPO'
            DataSource = DSBase
            Items.Strings = (
              'Exportacion '
              'Importacion '
              'Otros')
            TabOrder = 4
            Values.Strings = (
              'E'
              'I'
              'O')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object edFob: TDBEdit
            Left = 2
            Top = 61
            Width = 118
            Height = 21
            DataField = 'FOB_TOTAL'
            DataSource = DSBase
            TabOrder = 5
          end
          object edCambio: TDBEdit
            Left = 126
            Top = 61
            Width = 86
            Height = 21
            DataField = 'CAMBIO_EXPO'
            DataSource = DSBase
            TabOrder = 6
          end
        end
      end
      object dbeNombre: TDBEdit
        Left = 73
        Top = 62
        Width = 286
        Height = 21
        Color = clInfoBk
        DataField = 'Nombre'
        DataSource = DSBase
        Enabled = False
        TabOrder = 9
        OnDblClick = dbeNombreDblClick
        OnMouseMove = dbeNombreMouseMove
      end
      object pnAvisoFUAP: TPanel
        Left = 408
        Top = 1
        Width = 313
        Height = 40
        Caption = 'Ultima fecha de actulizacion:'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 10
        Visible = False
      end
      object dbchNC_Diferencia: TDBCheckBox
        Left = 740
        Top = 168
        Width = 174
        Height = 17
        TabStop = False
        Caption = 'NC/ND por Diferencias'
        DataField = 'NC_POR_DIFERENCIA'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = DatosAdicionales1Clickd
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 489
        Top = 65
        Width = 92
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHAVTO'
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
        ButtonWidth = 17
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 14
      end
    end
    object tbMenu: TToolBar
      Left = 0
      Top = 0
      Width = 950
      Height = 21
      ButtonHeight = 21
      ButtonWidth = 82
      Caption = 'tbMenu'
      DrawingStyle = dsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Menu = MainMenu1
      ParentFont = False
      ShowCaptions = True
      TabOrder = 2
    end
    object pnCosto: TPanel
      Left = 368
      Top = 660
      Width = 440
      Height = 19
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 3
      DesignSize = (
        440
        19)
      object dbtCosto: TDBText
        Left = 375
        Top = 3
        Width = 62
        Height = 15
        DataField = 'COSTO_TOTAL'
        DataSource = DatosVentas.DSVentaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 342
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
        Left = 7
        Top = 3
        Width = 305
        Height = 15
        Anchors = [akLeft, akTop, akBottom]
        DataField = 'DETALLE'
        DataSource = DatosVentas.DSVentaDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnMouseMove = dbtDetalleMouseMove
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 680
    Width = 950
    Height = 31
    Align = alBottom
    ButtonHeight = 30
    ButtonWidth = 26
    OnDblClick = ToolBar1DblClick
    ExplicitTop = 680
    ExplicitWidth = 950
    ExplicitHeight = 31
    inherited btConfirma: TBitBtn
      Width = 72
      Height = 30
      ExplicitWidth = 72
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Left = 74
      Width = 76
      Height = 30
      ExplicitLeft = 74
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Left = 150
      Width = 76
      Height = 30
      ExplicitLeft = 150
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Left = 226
      Width = 76
      Height = 30
      ExplicitLeft = 226
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Width = 12
      Height = 30
      ExplicitWidth = 12
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Left = 314
      Width = 76
      Height = 30
      ExplicitLeft = 314
      ExplicitWidth = 76
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Left = 390
      Width = 16
      Height = 30
      ExplicitLeft = 390
      ExplicitWidth = 16
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Left = 406
      Width = 20
      Height = 30
      ExplicitLeft = 406
      ExplicitWidth = 20
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Left = 426
      Width = 72
      Height = 30
      TabOrder = 7
      ExplicitLeft = 426
      ExplicitWidth = 72
      ExplicitHeight = 30
    end
    object btBuscarPresupuestos: TBitBtn
      Left = 498
      Top = 0
      Width = 64
      Height = 30
      Action = BuscarPresupuesto
      Caption = '&Presu'
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
      TabOrder = 6
    end
    object JvArrowButton1: TJvArrowButton
      Left = 562
      Top = 0
      Width = 69
      Height = 30
      Action = Imprimir
      DropDown = PopupMenuImpresion
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
    end
    object BtAnular: TSpeedButton
      Left = 631
      Top = 0
      Width = 24
      Height = 30
      Hint = 'Anular'
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
    object spCorreo: TSpeedButton
      Left = 655
      Top = 0
      Width = 27
      Height = 30
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
    object spDetalleEntregas: TSpeedButton
      Left = 682
      Top = 0
      Width = 25
      Height = 30
      Action = VerEntregas
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FD00FD02F300
        F30CE700E718DD00DD22DD00DD22DD00DD22DD00DD22DD00DD22DD00DD22DD00
        DD22DE00DE21E200E21DF000F00FF800F807FE00FE01FF00FF00FD00FD02D300
        D32C6CD2EDFF54B2EAFF6CD1EDFF68CDE9FF66C8E6FF63C3E1FF5FB9D9FF56A8
        CCFFA600A659DE00DE21EF00EF10F800F807FE00FE01FF00FF00FF00FF00DD00
        DD2271D4EDFF58B4EAFF72D5EFFF71D4EDFF6DCFEAFF69C9E5FF65C4E1FF5CB0
        D1FF6FD2ECFFA015A074FA00FA05FF00FF00FF00FF00FF00FF00FF00FF00DD00
        DD226AC0D7FF52A2D4FF6AC0D7FF6DC2D9FF6ABFD6FF68BCD4FF63B7CFFF5AA9
        C4FF88EBFFFF74D2ECFFA114A172FB00FB04FF00FF00FF00FF00FF00FF00DD00
        DD2281DAF1FF64B9EEFF81D9F1FF81D9F0FF81DAF1FF7ED7F0FF7BD4ECFF6EC4
        DFFF8EECFFFF8EECFFFF7AD4ECFFB706B74EFF00FF00FF00FF00FF00FF00DD00
        DD228AE0F4FF6BBEF1FF8ADEF3FF8ADEF3FF88DDF2FF88DDF2FF87DBF0FF81D2
        EAFF65AFCEFF60A6C7FF5CA1C2FF6EBDD9FFFF00FF00FF00FF00FF00FF00DD00
        DD2284CCDCFF67ADDAFF84CCDCFF85CBDBFF84CBDBFF85CCDCFF83CBDAFF80C8
        D9FF7BC2D4FF76BCD0FF74B9CDFF69ABC3FFFE00FE01FF00FF00FF00FF00DD00
        DD229FE8F8FF7AC4F4FF9DE7F7FF9EE8F8FF9DE6F7FF9DE7F6FF9BE4F5FF9CE4
        F5FF99E2F4FF93DBEEFF8FD5E9FF8BD1E6FFFE00FE01FF00FF00FF00FF00DD00
        DD22A8ECF9FF84C7F6FFA9EDFAFFA5EAF8FFA6EAF8FFA5EAF8FFA5E9F7FFA4E8
        F7FFA4E7F6FFA1E4F3FF9DE0F1FF98DAECFFFD00FD02FF00FF00FF00FF00DD00
        DD22A0D8E1FF7BB6DDFF9ED6E1FF9FD7E1FF9FD7E1FF9ED6E1FF9DD5E0FF9CD4
        DFFF9BD4DEFF9AD2DEFF99CFDAFF95CCD8FFFD00FD02FF00FF00FF00FF00DD00
        DD22BBF3FDFF91CDF9FFB9F2FBFFB8F1FBFFB9F2FBFFB7F0F9FFB8F1FAFFB8F1
        FAFFB6EEF9FFB7EFF9FFB6EEF9FFB2EBF7FFFD00FD02FF00FF00FF00FF00DD00
        DD22C2F5FDFF98D0F9FFC3F6FDFFC2F5FDFFC2F5FCFFC2F4FCFFBFF3FBFFBFF2
        FAFFBEF2FAFFBEF2FAFFBDF1FAFFBDF1FAFFFD00FD02FF00FF00FF00FF00E300
        E31CB4DFE3FF8DBCE1FFB4DFE4FFB5E0E4FFB4DFE3FFB5E0E4FFB5DEE3FFB5E0
        E4FFB2DCE2FFB2DCE1FFB2DCE1FFAFD9E1FFFE00FE01FF00FF00FF00FF00E300
        E31CCFFCFFFFA1D5FBFFCFFBFFFFCDFAFEFFCCFAFDFFCCFAFEFFCCFAFEFFCCFA
        FEFFCAF8FCFFCBF9FDFFCBF8FCFFC8F4F9FFFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object spRto: TSpeedButton
      Left = 707
      Top = 0
      Width = 27
      Height = 30
      Action = GenerarRto
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
    object spAcopiar: TSpeedButton
      Left = 734
      Top = 0
      Width = 21
      Height = 30
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
    object btImprimirRtos: TBitBtn
      Left = 755
      Top = 0
      Width = 28
      Height = 30
      Hint = 'Listado de Rtos Asociados'
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
      OnClick = btImprimirRtosClick
    end
    object spNCredito: TSpeedButton
      Left = 783
      Top = 0
      Width = 31
      Height = 30
      Hint = 'Hacer Nota de Credito'
      Action = HacerNotaCredito
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
    object spPapelera: TSpeedButton
      Left = 814
      Top = 0
      Width = 28
      Height = 30
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
    object spPedidoCOT: TSpeedButton
      Left = 842
      Top = 0
      Width = 24
      Height = 30
      Hint = 'Pedido de COT'
      Action = PedidoCOT
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 866
      Top = 0
      Width = 24
      Height = 30
      Hint = 'Generar Nota de Pedido Cliente'
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
    object spFiscalizar: TSpeedButton
      Left = 890
      Top = 0
      Width = 24
      Height = 30
      Hint = 'Fiscalizar Comprobante'
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
    object spVerNovedades: TSpeedButton
      Left = 914
      Top = 0
      Width = 25
      Height = 30
      Action = VerNovedadesDet
      Flat = True
    end
  end
  inherited Panel1: TPanel
    Top = 711
    Width = 950
    Height = 24
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 711
    ExplicitWidth = 950
    ExplicitHeight = 24
    object imBalanza: TImage [0]
      Left = 924
      Top = 1
      Width = 25
      Height = 22
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
      ExplicitLeft = 889
    end
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 22
    end
    inherited sbEstado: TStatusBar
      Width = 836
      Height = 22
      Panels = <
        item
          Width = 400
        end
        item
          Width = 300
        end
        item
          Width = 20
        end>
      OnDblClick = sbEstadoDblClick
      OnMouseMove = sbEstadoMouseMove
      ExplicitWidth = 836
      ExplicitHeight = 22
    end
  end
  object gbLista: TGroupBox [3]
    Left = 733
    Top = 89
    Width = 93
    Height = 58
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
    object DBText8: TDBText
      Left = 73
      Top = 19
      Width = 31
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
    object DBText32: TDBText
      Left = 40
      Top = 0
      Width = 81
      Height = 11
      DataField = 'NOMBRE'
      DataSource = DatosVentas.DSListaPrecios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbcLista: TDBLookupComboBox
      Left = 10
      Top = 14
      Width = 55
      Height = 21
      DataField = 'LISTAPRECIO'
      DataSource = DSBase
      DropDownAlign = daRight
      DropDownRows = 15
      DropDownWidth = 350
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'ID;nombre'
      ListSource = DatosVentas.DSListaPrecios
      ParentFont = False
      TabOrder = 0
      OnClick = dbcListaClick
      OnKeyDown = dbcListaKeyDown
    end
    object DBCheckBox2: TDBCheckBox
      Left = 11
      Top = 36
      Width = 110
      Height = 24
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
    Left = 567
    Top = 68
    Width = 126
    Height = 16
    TabStop = False
    Caption = 'Por Cta y Orden'
    Color = clBtnFace
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
    Left = 571
    Top = 166
    Width = 62
    Height = 21
    DataField = 'JURIDICION_LOCALIDAD'
    DataSource = DSBase
    DropDownRows = 10
    DropDownWidth = 400
    KeyField = 'ID'
    ListField = 'ID;ID_JURIDICION;LOCALIDAD;PROVINCIA'
    ListSource = DatosVentas.DSBuscaLocalidadJuri
    TabOrder = 5
    OnClick = dbcJuriClick
  end
  object chPreview: TCheckBox [6]
    Left = 820
    Top = 661
    Width = 64
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Preview'
    TabOrder = 6
    WordWrap = True
  end
  object pnGarante: TPanel [7]
    Left = 745
    Top = 68
    Width = 92
    Height = 18
    TabOrder = 7
    object lbGarante: TDBText
      Left = 34
      Top = 0
      Width = 46
      Height = 13
      Cursor = crHandPoint
      Hint = 'Codigo de Garante'
      AutoSize = True
      DataField = 'ID_GARANTE'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = lbGaranteClick
    end
    object lblJvLabel4: TLabel
      Left = 5
      Top = 0
      Width = 25
      Height = 13
      Cursor = crHandPoint
      Caption = 'Gtia.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = lbGaranteClick
    end
  end
  object pnCtroCosto: TPanel [8]
    Left = 727
    Top = 26
    Width = 110
    Height = 18
    Hint = 'Centro de Costo'
    TabOrder = 9
    object DBText24: TDBText
      Left = 57
      Top = 2
      Width = 48
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
    object lblJvLabel13: TLabel
      Left = 12
      Top = 2
      Width = 37
      Height = 13
      Cursor = crHandPoint
      Caption = 'C.Cost.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = lblJvLabel13Click
      OnMouseMove = lblJvLabel13MouseMove
    end
  end
  object Panel4: TPanel [9]
    Left = 745
    Top = 47
    Width = 92
    Height = 18
    Hint = 'Comprobante de Abono'
    TabOrder = 10
    object DBText29: TDBText
      Left = 35
      Top = 0
      Width = 48
      Height = 13
      Cursor = crHandPoint
      Hint = 'Comp.de Abono'
      AutoSize = True
      DataField = 'MUESTRANROABONO'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = DBText29Click
    end
    object lblJvLabel14: TLabel
      Left = 5
      Top = 0
      Width = 19
      Height = 13
      Cursor = crHandPoint
      Caption = 'Ab.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
    end
  end
  object pnAcopio: TPanel [10]
    Left = 849
    Top = 620
    Width = 92
    Height = 30
    Hint = 'Comprobante de Acopio'
    Anchors = [akRight, akBottom]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    object dbtMuestraAcopio: TDBText
      Left = 9
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
      OnClick = dbtMuestraAcopioClick
    end
    object lblJvLabel12: TLabel
      Left = 24
      Top = 2
      Width = 33
      Height = 13
      Caption = 'Acopio'
      Transparent = True
    end
  end
  object dblMoneda: TDBLookupComboBox [11]
    Left = 628
    Top = 85
    Width = 52
    Height = 21
    DataField = 'MONEDA_CPBTE'
    DataSource = DSBase
    KeyField = 'ID'
    ListField = 'SIGNO'
    ListSource = DatosVentas.DSLstMonedas
    TabOrder = 11
    TabStop = False
    OnClick = dblMonedaClick
  end
  inherited ActionList1: TActionList
    Left = 848
    Top = 240
    inherited Borrar: TAction
      Caption = ''
      ShortCut = 16430
      Visible = False
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BuscarLdr: TAction
      Caption = 'BuscarLdr'
      OnExecute = BuscarLdrExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarCondVta: TAction
      Caption = 'BuscarCondVta'
      OnExecute = BuscarCondVtaExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarPresupuesto: TAction
      Caption = 'BuscarPresupuesto'
      OnExecute = BuscarPresupuestoExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object Anular: TAction
      OnExecute = AnularExecute
    end
    object VerAplicaciones: TAction
      Caption = 'Ver Aplicacion'
      ShortCut = 16449
      OnExecute = VerAplicacionesExecute
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
    object Recalcular: TAction
      Caption = 'Recalcular ( por Lista de Precios)'
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
    object EnviarCorreo: TAction
      OnExecute = EnviarCorreoExecute
    end
    object ReCalcularTodo: TAction
      Caption = 'Re Calcular Todo'
      ShortCut = 49275
      OnExecute = ReCalcularTodoExecute
    end
    object PasaNC_a_Contado: TAction
      Caption = 'Pasa NC a Contado'
      ShortCut = 49227
      OnExecute = PasaNC_a_ContadoExecute
    end
    object ExportarXML: TAction
      Caption = 'Exportar XML'
      ShortCut = 49221
      OnExecute = ExportarXMLExecute
    end
    object CopiarDetalle: TAction
      Caption = 'Copiar Detalle a XML'
      ShortCut = 49219
      OnExecute = CopiarDetalleExecute
    end
    object PegarDetalle: TAction
      Caption = 'Pegar Detalle desde XML'
      ShortCut = 49238
      OnExecute = PegarDetalleExecute
    end
    object VerCtaCte: TAction
      Caption = 'Ver Cta.Cte'
      ShortCut = 16506
      OnExecute = VerCtaCteExecute
    end
    object TransformarFC: TAction
      Caption = 'Transformar Comprobante'
      ShortCut = 16468
      OnExecute = TransformarFCExecute
    end
    object BorrarAplicaciones: TAction
      Caption = 'Borrar Aplicaciones'
      ShortCut = 49217
      OnExecute = BorrarAplicacionesExecute
    end
    object CambiarNro: TAction
      Caption = 'Cambiar Nro'
      ShortCut = 16462
      OnExecute = CambiarNroExecute
    end
    object CambiarCliente: TAction
      Caption = 'Cambiar Cliente'
      ShortCut = 16471
      OnExecute = CambiarClienteExecute
    end
    object GrupoDetalle: TAction
      Caption = 'Grupo Detalle'
      ShortCut = 16455
      OnExecute = GrupoDetalleExecute
    end
    object BuscarProveedor: TAction
      Caption = 'BuscarProveedor'
      OnExecute = BuscarProveedorExecute
    end
    object BuscarRecepcion: TAction
      Caption = 'BuscarRecepcion'
      OnExecute = BuscarRecepcionExecute
    end
    object CacularIVADet: TAction
      Caption = 'Cacular IVA del Detalle'
      ShortCut = 16457
      OnExecute = CacularIVADetExecute
    end
    object CambioDeposito: TAction
      Caption = 'Cambio Deposito'
      ShortCut = 16452
      OnExecute = CambioDepositoExecute
    end
    object DuplicarComprobante: TAction
      Caption = 'Duplicar Comprobante'
      ShortCut = 49220
      OnExecute = DuplicarComprobanteExecute
    end
    object RecalculoSuma00: TAction
      Caption = 'Recalculo Suma (0,00)'
      ShortCut = 49235
      OnExecute = RecalculoSuma00Execute
    end
    object GenerarRto: TAction
      Hint = 'Generar  Remito'
      OnExecute = GenerarRtoExecute
    end
    object Acopiar: TAction
      Hint = 'Envia mercaderia a Acopio'
      ShortCut = 8313
      OnExecute = AcopiarExecute
    end
    object Freezar: TAction
      Caption = 'Freezar'
      ShortCut = 16454
      OnExecute = FreezarExecute
    end
    object LeerFacturasFrezadas: TAction
      Caption = 'Leer Facturas Frezadas'
      ShortCut = 16466
      OnExecute = LeerFacturasFrezadasExecute
    end
    object GravarNumeroOperacion: TAction
      Caption = 'GravarNumeroOperacion'
      ShortCut = 16507
      OnExecute = GravarNumeroOperacionExecute
    end
    object VerOperaciones: TAction
      Caption = 'VerOperaciones'
      ShortCut = 49231
      OnExecute = VerOperacionesExecute
    end
    object RevisionFactRto: TAction
      Caption = 'Sinc.Nro Rto-Fact.'
      OnExecute = RevisionFactRtoExecute
    end
    object GenerarTx: TAction
      Caption = 'Generar Transferecia'
      OnExecute = GenerarTxExecute
    end
    object BusquedaPorReferencia: TAction
      Caption = 'Busqueda Por Referencia'
      ShortCut = 32781
      OnExecute = BusquedaPorReferenciaExecute
    end
    object CambiarTipoVta: TAction
      Caption = 'Cambiar Tipo Factura (Servicio/Mercaderias)'
      ShortCut = 49221
      OnExecute = CambiarTipoVtaExecute
    end
    object CambiaModoDiscrIVA: TAction
      Caption = 'Cambia Modo Discr.IVA'
      ShortCut = 49225
      OnExecute = CambiaModoDiscrIVAExecute
    end
    object Fiscalizar: TAction
      Caption = 'Fiscalizar'
      ShortCut = 49222
      OnExecute = FiscalizarExecute
    end
    object ConsultaFiscalizacion: TAction
      Caption = 'Consulta Fiscalizacion'
      OnExecute = ConsultaFiscalizacionExecute
    end
    object CleanBuffer: TAction
      Caption = 'Limpiar Buffer'
      ShortCut = 16460
      OnExecute = CleanBufferExecute
    end
    object BuscarArticuloProd: TAction
      Caption = 'BuscarArticuloProd'
      OnExecute = BuscarArticuloProdExecute
    end
    object EditarProduccion: TAction
      OnExecute = EditarProduccionExecute
    end
    object CambiarCuit: TAction
      Caption = 'CambiarCuit'
      ShortCut = 16469
      OnExecute = CambiarCuitExecute
    end
    object BuscarPorObs: TAction
      Caption = 'Buscar Por Observaciones'
      ShortCut = 8205
      OnExecute = BuscarPorObsExecute
    end
    object GenerarOrdenProduccion: TAction
      Caption = 'Generar Orden de Produccion'
      OnExecute = GenerarOrdenProduccionExecute
    end
    object VerOrdenProduccion: TAction
      Caption = 'Ver Orden de Produccion Asociada'
      OnExecute = VerOrdenProduccionExecute
    end
    object Desanulacion: TAction
      Caption = 'Desanulaci'#243'n'
      OnExecute = DesanulacionExecute
    end
    object VerHojaCarga: TAction
      Caption = 'Ver en Hoja de Carga'
      ShortCut = 16456
      OnExecute = VerHojaCargaExecute
    end
    object BorrarCAE: TAction
      Caption = 'Borrar CAE'
      OnExecute = BorrarCAEExecute
    end
    object Garante: TAction
      Caption = 'Garante'
      ShortCut = 32839
      OnExecute = GaranteExecute
    end
    object AplicarLibroIVA: TAction
      Caption = 'Agregra o Sacar Libro IVA'
      ShortCut = 24649
      OnExecute = AplicarLibroIVAExecute
    end
    object BuscaLote: TAction
      Caption = 'BuscaLote'
      OnExecute = BuscaLoteExecute
    end
    object HacerNotaCredito: TAction
      OnExecute = HacerNotaCreditoExecute
    end
    object BorrarConsolidacion: TAction
      Caption = 'Borrar Consolidacion'
      OnExecute = BorrarConsolidacionExecute
    end
    object NoLiquidar: TAction
      Caption = 'Marcar si liquida o no Comision'
      OnExecute = NoLiquidarExecute
    end
    object PasaCCVta: TAction
      Caption = 'Pasar o sacar de C.Cte'
      OnExecute = PasaCCVtaExecute
    end
    object ModificaCotizacion: TAction
      Caption = 'Modifica Cotizaci'#243'n  de Moneda'
      ShortCut = 49242
      OnExecute = ModificaCotizacionExecute
    end
    object RecuperarRtos: TAction
      Caption = 'Recuperar Rtos'
      OnExecute = RecuperarRtosExecute
    end
    object MovCajaNCo: TAction
      Caption = 'Ver Movimientos Caja NC'
      OnExecute = MovCajaNCoExecute
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
      ImageIndex = 11
      OnExecute = PapeleraExecute
    end
    object BuscarTransporte: TAction
      Caption = 'BuscarTransporte'
      OnExecute = BuscarTransporteExecute
    end
    object BuscarNotas: TAction
      Caption = 'BuscarNotas'
      OnExecute = BuscarNotasExecute
    end
    object BuscaNCAplicaAFactura: TAction
      ImageIndex = 0
      OnExecute = BuscaNCAplicaAFacturaExecute
    end
    object CambiarClase: TAction
      Caption = 'Cambiar Clase Cpbte'
      ShortCut = 16474
      OnExecute = CambiarClaseExecute
    end
    object VerEntregas: TAction
      Hint = 'Ver Entregas'
      ImageIndex = 12
      OnExecute = VerEntregasExecute
    end
    object ImportarExcel: TAction
      Caption = 'Importar Excel (Compras)'
      OnExecute = ImportarExcelExecute
    end
    object ReHacerQR: TAction
      Caption = 'ReHacer QR'
      ShortCut = 16465
      OnExecute = ReHacerQRExecute
    end
    object PedidoCOT: TAction
      Caption = 'C'
      OnExecute = PedidoCOTExecute
    end
    object ActualizaCostoFc: TAction
      Caption = 'Actualiza Costo en Factura'
      ShortCut = 32851
      OnExecute = ActualizaCostoFcExecute
    end
    object GenerarNotaPedido: TAction
      Caption = 'Generar Nota de Pedido'
      OnExecute = GenerarNotaPedidoExecute
    end
    object AsignarObra: TAction
      Caption = 'Asignar Obra'
      ShortCut = 16463
      OnExecute = AsignarObraExecute
    end
    object VerLotes: TAction
      Caption = 'Ver Lotes'
      ShortCut = 8268
      OnExecute = VerLotesExecute
    end
    object VerNovedadesDet: TAction
      ImageIndex = 13
      ShortCut = 32881
      OnExecute = VerNovedadesDetExecute
    end
    object ActualizaDireccionLDR: TAction
      Caption = 'Actualiza Direccion LDR'
    end
    object CambiarFechaVencimiento: TAction
      Caption = 'Cambiar Fecha de Vencimiento '
      OnExecute = CambiarFechaVencimientoExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosVentas.CDSVentaCab
    OnDataChange = DSBaseDataChange
    Left = 648
    Top = 104
  end
  inherited ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 160
    Top = 24
    Bitmap = {
      494C01010D001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020000000C000000180000
      0022000000220000002200000022000000220000002200000022000000210000
      001D0000000F0000000700000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020000002C6CD2EDFF54B2
      EAFF6CD1EDFF68CDE9FF66C8E6FF63C3E1FF5FB9D9FF56A8CCFF000000590000
      0021000000100000000700000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000002271D4EDFF58B4
      EAFF72D5EFFF71D4EDFF6DCFEAFF69C9E5FF65C4E1FF5CB0D1FF6FD2ECFF1515
      1574000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000226AC0D7FF52A2
      D4FF6AC0D7FF6DC2D9FF6ABFD6FF68BCD4FF63B7CFFF5AA9C4FF88EBFFFF74D2
      ECFF141414720000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000002281DAF1FF64B9
      EEFF81D9F1FF81D9F0FF81DAF1FF7ED7F0FF7BD4ECFF6EC4DFFF8EECFFFF8EEC
      FFFF7AD4ECFF0606064E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000228AE0F4FF6BBE
      F1FF8ADEF3FF8ADEF3FF88DDF2FF88DDF2FF87DBF0FF81D2EAFF65AFCEFF60A6
      C7FF5CA1C2FF6EBDD9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000002284CCDCFF67AD
      DAFF84CCDCFF85CBDBFF84CBDBFF85CCDCFF83CBDAFF80C8D9FF7BC2D4FF76BC
      D0FF74B9CDFF69ABC3FF00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000229FE8F8FF7AC4
      F4FF9DE7F7FF9EE8F8FF9DE6F7FF9DE7F6FF9BE4F5FF9CE4F5FF99E2F4FF93DB
      EEFF8FD5E9FF8BD1E6FF00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000022A8ECF9FF84C7
      F6FFA9EDFAFFA5EAF8FFA6EAF8FFA5EAF8FFA5E9F7FFA4E8F7FFA4E7F6FFA1E4
      F3FF9DE0F1FF98DAECFF00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000022A0D8E1FF7BB6
      DDFF9ED6E1FF9FD7E1FF9FD7E1FF9ED6E1FF9DD5E0FF9CD4DFFF9BD4DEFF9AD2
      DEFF99CFDAFF95CCD8FF00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000022BBF3FDFF91CD
      F9FFB9F2FBFFB8F1FBFFB9F2FBFFB7F0F9FFB8F1FAFFB8F1FAFFB6EEF9FFB7EF
      F9FFB6EEF9FFB2EBF7FF00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000022C2F5FDFF98D0
      F9FFC3F6FDFFC2F5FDFFC2F5FCFFC2F4FCFFBFF3FBFFBFF2FAFFBEF2FAFFBEF2
      FAFFBDF1FAFFBDF1FAFF00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001CB4DFE3FF8DBC
      E1FFB4DFE4FFB5E0E4FFB4DFE3FFB5E0E4FFB5DEE3FFB5E0E4FFB2DCE2FFB2DC
      E1FFB2DCE1FFAFD9E1FF00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001CCFFCFFFFA1D5
      FBFFCFFBFFFFCDFAFEFFCCFAFDFFCCFAFEFFCCFAFEFFCCFAFEFFCAF8FCFFCBF9
      FDFFCBF8FCFFC8F4F9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008000FF008000FF008000FF008000FF008000FF008000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080FF808080FF0000000000000000808080FF808080FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000806053A3D322AAE6A5B4FF078675AFD756355FD645446F23C3127B00907
      053B000000000000000000000000000000000000000000000000000000000000
      00000806053A3D322AAE6A5A4FF078675AFD756355FD655446F23C3127B00907
      053B000000000000000000000000000000000000000000000000000000000080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF0000000000000000000000000000000000000000000000008080
      80FFA4A0A0FFA4A0A0FF808080FF808080FF808080FFF0FBFFFF808080FF8080
      80FF808080FF0000000000000000000000000000000000000000000000001B16
      1170908073FDAC988BFFA48E80FFA08A7BFF9E8778FF998172FF91796AFF725E
      50FD1B1611700000000000000000000000000000000000000000000000001B16
      1170908073FDAC988BFFA48E80FFA08A7BFF9E8778FF9B8374FF957C6DFF725D
      50FD1B1611700000000000000000000000000000000000000000008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF00000000000000000000000000000000808080FFC0DC
      C0FFA4A0A0FFA4A0A0FFA4A0A0FF000000FF000000FF808080FFC0C0C0FFF0FB
      FFFFC0C0C0FF808080FF808080FF808080FF0000000000000000010100098171
      65FBAE998CFF9D8677FF9A8677FF968375FF928072FF907A6DFF8B7569FF957A
      6BFF645243FB0101000900000000000000000000000000000000010100088071
      65FAAD998CFF9E8778FF9F8979FF9E8778FF9B8576FF988070FF998171FF947A
      6AFF645243FA01010008000000000000000000000000008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF0000000000000000808080FFC0DCC0FFC0C0
      C0FF808080FF808080FF808080FF000000FF000000FF000000FF000000FF0000
      00FF808080FFC0C0C0FF808080FF0000000000000000000000000605042C9C8E
      82FFA6968BFFA7978CFFA7968BFFA49185FF9E8A7CFF978273FF958173FF9881
      72FF715C4CFF0705042C000000000000000000000000000000000605042C9D8D
      82FFA89487FF9F8879FF9F8879FF9E8778FF9B8576FF978070FF9E8778FF9A83
      73FF715B4CFF0705042C000000000000000000000000008000FF008080FF0080
      80FF008000FF008000FF008000FFF0FBFFFFF0FBFFFF808080FF008000FF0080
      00FF008000FF008000FF008000FF00000000808080FFC0C0C0FFC0C0C0FF8080
      80FFC0DCC0FFC0C0C0FFC0C0C0FFA4A0A0FFA4A0A0FF808080FF808080FF0000
      00FF000000FF000000FF808080FF808080FF00000000000000000D0A0758AD9E
      94FFBBAEA5FFB2A196FFAC9B8EFFA89487FFA18E80FF9B8576FF9E887AFF9681
      74FF796354FF0E0B0959000000000000000000000000000000000D0A0758AC9E
      93FFC3B4AAFFA08A7BFF9D8778FF9D8777FF9B8575FF967D6EFF9C8576FF9E88
      79FF796254FF0E0B09590000000000000000008000FF008000FF008080FF0080
      80FF008000FF008000FF008000FFC0DCC0FFFFFFFFFFF0FBFFFF808080FF0080
      00FF008000FF008000FF008000FF008000FF808080FFC0C0C0FF808080FFF0FB
      FFFFFFFFFFFFFFFFFFFFF0FBFFFFC0DCC0FFC0DCC0FFC0C0C0FFC0C0C0FFA4A0
      A0FF808080FF808080FF808080FF808080FF0000000000000000100C096DBAAC
      A2FFC5B7AEFFB4A59AFFB4A296FFAD9A8DFFA59083FF9D8777FFA28D7EFF927D
      71FF836A5AFF110E0B6D00000000000000000000000000000000100D0A6DBAAC
      A3FFCBBDB3FFBEADA1FFAF9C8FFFA59082FFA0897AFF998272FFA18B7DFFA28D
      80FF826859FF110E0B6D0000000000000000008000FF008080FF008080FF0080
      80FF008000FF008000FF008000FF008000FFA4A0A0FFFFFFFFFFF0FBFFFF8080
      80FF008000FF008000FF008000FF008000FF808080FF808080FFFFFFFFFFFFFF
      FFFFFFFFFFFFC0DCC0FFA4A0A0FFA4A0A0FFA4A0A0FFC0C0C0FFC0DCC0FFC0DC
      C0FFC0C0C0FFC0C0C0FF808080FF808080FF00000000000000001E18127EC7B9
      B0FFCABCB2FFAFA095FFB5A498FF9B8A7DFFA08C7EFF9D8778FFA18B7DFF9380
      72FF886F5FFF1F191381000000000000000000000000000000001D18127DC7B9
      B0FFCABBB2FFBFAEA2FFB7A498FFAF9B8FFFA79284FF9E8878FFA28C7EFFA28C
      80FF886F60FF1F1913800000000000000000008000FF008080FF008080FFC0DC
      C0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFFFFFFFFFFFFFFFFFF0FB
      FFFFA4A0A0FF008000FF008000FF008000FF00000000808080FF808080FFF0FB
      FFFFA4A0A0FF808080FF808080FFA4A0A0FFA4A0A0FFA4A0A0FFA4A0A0FFA4A0
      A0FFC0C0C0FFC0DCC0FFC0C0C0FF808080FF0000000000000000382E25A7D0C3
      BAFFCABCB2FFAB9C92FFA5958AFFA8968AFF978679FF998374FF9D8779FF9884
      77FF897061FF382D24A900000000000000000000000000000000382E25A7D0C3
      BAFFC9BAB0FFBEADA1FFB7A599FFB09D90FFA89386FF9D8878FFA08A7BFFA18C
      7EFF8E7466FF382D24A90000000000000000008000FF808080FF808080FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC0DCC0FF008000FF008000FF008000FF0000000000000000000000008080
      80FFA4A0A0FF808080FF808080FF808080FF808080FF808080FF808080FFA4A0
      A0FFC0C0C0FFC0C0C0FF808080FF000000000000000000000000473C32BED7CB
      C3FFC1B4ABFFAC9D94FFAD9E94FFB0A198FFB2A499FF9C8C82FFA8968BFFA491
      85FF876F61FF41352BBE00000000000000000000000000000000473C32BED6CA
      C2FFCCBEB5FFBAAAA0FFB19F93FFAC9A8EFFAA978BFFA79487FFAD9A8FFFAA97
      8BFF93796AFF41352BBE0000000000000000008000FFA4A0A0FFA4A0A0FFA4A0
      A0FFA4A0A0FFA4A0A0FFA4A0A0FFA4A0A0FFC0DCC0FFFFFFFFFFFFFFFFFFC0DC
      C0FF008080FF008000FF008000FF008000FF0000000000000000000000000000
      0000A4A0A0FFF0CAA6FFF0CAA6FFF0CAA6FFA4A0A0FFA4A0A0FFA4A0A0FF8080
      80FF808080FF808080FF000000000000000000000000000000005E5246DDC0B2
      ABFFAEA49EFFCFCCCBFFE6E7E7FFF2F3F3FFF3F4F4FFF0EFEFFFAAA7A5FF9788
      7EFF917C70FF4F4033DB000000000000000000000000000000005E5247DDC8BA
      B0FFBEB0A5FFD3CAC1FFDBD2CAFFD3C7BDFFCCBCB1FFC2AEA2FFB29A8DFFA68F
      81FFA08B7CFF4E3F33DB0000000000000000008000FF808080FFC0DCC0FF0080
      80FF008080FF008080FF008080FFA4A0A0FFF0FBFFFFFFFFFFFFC0DCC0FF0080
      80FF008000FF008000FF008000FF008000FF0000000000000000000000000000
      0000A4A0A0FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFA4A0A0FF0000
      00000000000000000000000000000000000000000000000000006D5E51F6B2AC
      A8FFEEEFF0FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F7FFAA9C
      96FFA88C7CFF625143F5000000000000000000000000000000006D5E51F6D4CD
      C3FFEFEFE9FFE5E0D9FFE5DED8FFD2C5BCFFCBBBB1FFC4B0A5FFBEA69AFFB89C
      90FFA68B7BFF625143F5000000000000000000000000008000FFC0DCC0FFC0DC
      C0FF008080FF008080FF808080FFF0FBFFFFFFFFFFFFC0DCC0FF008080FF0080
      80FF008000FF00FF00FF008000FF00000000000000000000000000000000A4A0
      A0FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFA4A0A0FF000000000000
      0000000000000000000000000000000000000000000000000000756355FDDFDE
      D9FFD8D8D8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFEEEF
      EFFFA7968EFF736154FD00000000000000000000000000000000746355FDEEEF
      E8FFEEECE7FFE9E5DFFFECE6E2FFD2C5BCFFCBBBB1FFC4B0A5FFBEA69AFFB79B
      8FFFB29688FF736154FD000000000000000000000000008000FFA4A0A0FFF0FB
      FFFFC0DCC0FF008080FF008080FFC0DCC0FFC0DCC0FF008080FF008080FF0080
      80FF00FF00FF008000FF008000FF00000000000000000000000000000000A4A0
      A0FFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFA4A0A0FF000000000000
      00000000000000000000000000000000000000000000000000004A3C31CED5CE
      C5FFD7D6D4FFE1E1E1FFFFFFFFFFFFFFFFFFFDFDFDFFF9F9F9FFF5F5F5FFEFEF
      EFFFA59F9BFF4A3C31CC00000000000000000000000000000000493C30CDD3CC
      C4FFEFEEE9FFEAE6E1FFECE7E3FFD2C5BCFFCBBBB1FFC4B0A5FFBCA498FFBBA1
      95FFBBA99FFF483C31CB00000000000000000000000000000000008000FFA4A0
      A0FFF0FBFFFFC0DCC0FFA4A0A0FF808080FF808080FF808080FF808080FF0080
      80FF008080FF008000FF00000000000000000000000000000000A4A0A0FFFFFF
      FFFFFFFFFFFFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFA4A0A0FF000000000000
      0000000000000000000000000000000000000000000000000000020201224E41
      35D6B5AAA0FFC6C2BEFFEFEFEFFFFEFEFEFFF9F9F9FFF4F4F4FFEAEBEBFF9089
      83FF4F4136D70202012400000000000000000000000000000000020201224E40
      35D6B3A89EFFE6E0DBFFEDE7E3FFDBD1C9FFD6C8C0FFD3C3BAFFCFC0B7FFAB9C
      91FF504236D80202012400000000000000000000000000000000000000000080
      00FF008000FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFA4A0A0FF0080
      80FF008080FF0000000000000000000000000000000000000000A4A0A0FFA4A0
      A0FFA4A0A0FFF0FBFFFFF0CAA6FFF0CAA6FFA4A0A0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000217110F68473A2FC46F665EF3CFCFCFFFE8E8E8FFE3E3E3FF564F4ACC1712
      0F6A000000020000000000000000000000000000000000000000000000000000
      000218120D69473B30C76E5F53F67F7064FD7F7064FD6F6055F8493B30C91813
      0F6B000000020000000000000000000000000000000000000000000000000000
      000000000000008080FF008000FF008000FF008000FF008000FF008080FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A0A0FFA4A0A0FFA4A0A0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000021D1D1D659D9D9DF527272777000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080FF000080FF000080FF000080FF000080FF000080FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000800000FF800000FF800000FF800000FF800000FF800000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000800000FF800000FF800000FF800000FF800000FF800000FF0000
      0000000000000000000000000000000000000000000000000000008000FF0080
      00FFA4A0A0FFA4A0A0FFA4A0A0FFA4A0A0FFA4A0A0FFA4A0A0FFA4A0A0FF0080
      00FF008000FF0000000000000000000000000000000000000000000000000000
      80FF000080FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      80FF000080FF0000000000000000000000000000000000000000000000008000
      00FF800000FF808000FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FF808000FF8000
      00FF800000FF0000000000000000000000000000000000000000000000008000
      00FF800000FF808000FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FF808000FF8000
      00FF800000FF00000000000000000000000000000000008000FF008000FF0080
      00FFC0DCC0FF008000FF008000FFF0FBFFFFF0FBFFFFC0DCC0FFC0C0C0FF0080
      00FF008000FF008000FF00000000000000000000000000000000000080FF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF000080FF000080FF00000000000000000000000000000000800000FF8080
      00FFF0CAA6FFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFFFFFFFFFFFFFFFFFF0CA
      A6FF808000FF800000FF00000000000000000000000000000000800000FF8080
      00FFF0CAA6FFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFFFFFFFFFFFFFFFFFF0CA
      A6FF808000FF800000FF000000000000000000000000008000FF008000FF0080
      00FFF0FBFFFF008000FF008000FFF0FBFFFFF0FBFFFFF0FBFFFFC0C0C0FF0080
      00FF008000FF008000FF000000000000000000000000000080FF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000080FF0000
      FFFF0000FFFF000080FF000080FF0000000000000000800000FF808000FFF0CA
      A6FFFFFFFFFF808080FF808000FF808000FF808000FF808000FF808080FFFFFF
      FFFFF0CAA6FF808000FF800000FF0000000000000000800000FF808000FFF0CA
      A6FFFFFFFFFFA4A0A0FF808000FF808000FF808000FF808000FF808000FFFFFF
      FFFFF0CAA6FF808000FF800000FF0000000000000000008000FF008000FF0080
      00FFF0FBFFFF008000FF008000FFC0DCC0FFF0FBFFFFF0FBFFFFC0DCC0FF0080
      00FF008000FF008000FF000000000000000000000000000080FF0000FFFF0000
      FFFF0000FFFFA4A0A0FF0000FFFF0000FFFF0000FFFF0000FFFFA4A0A0FF0000
      FFFF0000FFFF0000FFFF000080FF0000000000000000800000FFF0CAA6FFFFFF
      FFFF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
      00FFFFFFFFFFF0CAA6FF800000FF0000000000000000800000FFF0CAA6FFFFFF
      FFFF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
      00FFFFFFFFFFF0CAA6FF800000FF0000000000000000008000FF008000FF0080
      00FFF0FBFFFFF0FBFFFFC0DCC0FFC0DCC0FFF0FBFFFFF0FBFFFFC0DCC0FF0080
      00FF008000FF008000FF0000000000000000000080FF0000FFFF0000FFFF0000
      FFFF808080FFFFFFFFFFC0C0C0FF0000FFFF0000FFFFC0C0C0FFFFFFFFFFA4A0
      A0FF000080FF0000FFFF0000FFFF000080FF808000FF808000FFFFFFFFFFF0CA
      A6FF808000FFF0CAA6FFF0CAA6FF808000FF808000FF808000FFF0CAA6FF8080
      00FF808080FFFFFFFFFF808000FF800000FF800000FF808000FFFFFFFFFFF0CA
      A6FF808000FFFFFFFFFF808000FF808000FF808000FFA4A0A0FFFFFFFFFF8080
      00FF808080FFFFFFFFFF808000FF800000FF00000000008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF0000000000000000000080FF0000FFFF0000FFFF0000
      FFFF0000FFFFC0C0C0FFFFFFFFFFC0C0C0FFC0C0C0FFFFFFFFFFC0C0C0FF0000
      FFFF0000FFFF0000FFFF0000FFFF000080FF800000FFA4A0A0FFFFFFFFFF8080
      00FF808000FFF0CAA6FFF0CAA6FF808000FF808080FFFFFFFFFFF0FBFFFF8080
      00FF808000FFFFFFFFFFF0CAA6FF800000FF800000FFA4A0A0FFFFFFFFFF8080
      00FF808000FFFFFFFFFFFFFFFFFFA4A0A0FF808000FFA4A0A0FFFFFFFFFF8080
      00FF808000FFFFFFFFFFF0CAA6FF800000FF00000000008000FF008000FFC0DC
      C0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DC
      C0FF008000FF008000FF0000000000000000000080FF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFFC0C0C0FFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000080FF800000FFF0CAA6FFFFFFFFFF8080
      00FF808000FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFFFFFFF0CAA6FF8080
      00FF808000FFF0CAA6FFF0CAA6FF800000FF808000FFF0CAA6FFFFFFFFFF8080
      00FF808000FFFFFFFFFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFFFFFFFFF8080
      00FF808000FFF0CAA6FFF0CAA6FF800000FF00000000008000FF008000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008000FF008000FF0000000000000000000080FF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFFC0C0C0FFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000080FF808000FFF0CAA6FFFFFFFFFF8080
      00FF808000FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFFFFFFF0CAA6FF8080
      00FF808000FFF0CAA6FFF0CAA6FF800000FF808000FFF0CAA6FFFFFFFFFF8080
      00FF808000FFFFFFFFFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFFFFFFFFF8080
      00FF808000FFF0CAA6FFF0CAA6FF800000FF00000000008000FF008000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008000FF008000FF0000000000000000000080FFA4A0A0FF0000FFFF0000
      FFFF0000FFFFC0C0C0FFFFFFFFFFC0C0C0FFC0C0C0FFFFFFFFFFC0C0C0FF0000
      FFFF0000FFFF0000FFFF0000FFFF000080FF808000FFF0CAA6FFFFFFFFFFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FF808000FF808000FFF0FBFFFFF0FBFFFF8080
      00FF808000FFFFFFFFFFF0CAA6FF800000FF808000FFF0CAA6FFFFFFFFFFF0CA
      A6FFF0CAA6FFFFFFFFFFFFFFFFFFF0CAA6FF808000FFF0CAA6FFFFFFFFFF8080
      00FF808000FFFFFFFFFFF0CAA6FF800000FF00000000008000FF008000FFFFFF
      FFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFF
      FFFF008000FF008000FF0000000000000000000080FF808080FFC0C0C0FF0000
      FFFF0000FFFFFFFFFFFFC0C0C0FF0000FFFF0000FFFFC0C0C0FFFFFFFFFFA4A0
      A0FF0000FFFF0000FFFF0000FFFF000080FF808000FF808000FFFFFFFFFFF0CA
      A6FFF0CAA6FFF0FBFFFFF0CAA6FF808000FF808000FF808000FFF0CAA6FF8080
      00FFA4A0A0FFFFFFFFFF808000FF800000FF808000FF808000FFFFFFFFFFF0CA
      A6FFF0CAA6FFFFFFFFFFF0CAA6FF808000FF808000FFF0CAA6FFFFFFFFFF8080
      00FFA4A0A0FFFFFFFFFF808000FF800000FF00000000008000FF008000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008000FF008000FF0000000000000000000000000000FFFFC0C0C0FFC0C0
      C0FF0000FFFFA4A0A0FF0000FFFF0000FFFF0000FFFF0000FFFF808080FF0000
      FFFF0000FFFF0000FFFF000080FF0000000000000000808000FFF0CAA6FFFFFF
      FFFFF0CAA6FFF0CAA6FFF0CAA6FF808000FF808000FF808000FF808000FF8080
      00FFFFFFFFFFF0CAA6FF800000FF0000000000000000808000FFF0CAA6FFFFFF
      FFFFF0CAA6FFF0CAA6FFF0CAA6FF808000FF808000FF808000FF808000FF8080
      00FFFFFFFFFFF0CAA6FF800000FF0000000000000000008000FF008000FFFFFF
      FFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFF
      FFFF008000FF008000FF000000000000000000000000000080FF0000FFFFC0C0
      C0FFC0C0C0FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF000080FF0000000000000000808000FF808000FFF0CA
      A6FFFFFFFFFFF0CAA6FFF0CAA6FF808000FF808000FF808000FFF0CAA6FFFFFF
      FFFFF0CAA6FF808000FF800000FF0000000000000000808000FF808000FFF0CA
      A6FFFFFFFFFFF0CAA6FFF0CAA6FF808000FF808000FF808000FFA4A0A0FFFFFF
      FFFFF0CAA6FF808000FF800000FF0000000000000000008000FF008000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008000FF008000FF00000000000000000000000000000000000080FF0000
      FFFFC0C0C0FFC0C0C0FFC0C0C0FFA4A0A0FFA4A0A0FF0000FFFF0000FFFF0000
      FFFF0000FFFF000080FF00000000000000000000000000000000808000FF8080
      00FFF0CAA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CA
      A6FF808000FF800000FF00000000000000000000000000000000808000FF8080
      00FFF0CAA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CA
      A6FF808000FF800000FF00000000000000000000000000000000008000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008000FF0000000000000000000000000000000000000000000000000000
      80FF0000FFFFA4A0A0FFC0C0C0FFC0C0C0FFC0C0C0FFA4A0A0FF0000FFFF0000
      FFFF000080FF0000000000000000000000000000000000000000000000008080
      00FF808000FFA4A0A0FFF0CAA6FFF0CAA6FFF0CAA6FFA4A0A0FF808000FF8000
      00FF800000FF0000000000000000000000000000000000000000000000008080
      00FF808000FFA4A0A0FFF0CAA6FFF0CAA6FFF0CAA6FFA4A0A0FF808000FF8000
      00FF800000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080FF000080FF0000FFFF0000FFFF000080FF000080FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808000FF808000FF808000FF808000FF800000FF800000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808000FF808000FF808000FF808000FF800000FF800000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080FF808080FF0000000000000000000000000000
      00000000000000000000000000000000000000000000008000FF008000FF0080
      00FF008000FF0000000000000000000000000000000000000000000000000000
      00000000000000000000800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF800000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080FF0080
      80FF008080FF008080FF008080FF008080FF0000000000000000000000000000
      000000000000808080FF008080FFA4A0A0FF0000000000000000008080FF0080
      80FF008080FF008080FF008080FF008080FF00000000008000FF008000FF0080
      00FF008000FF0000000000000000000000000000000000000000008080FF0080
      80FF008080FF008080FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0
      C0FFFFFFFFFF800000FF00000000000000000000000000000000000000000080
      80FF008080FF008080FF008080FF008080FF008080FF00000000000000000000
      00000000000000000000000000000000000000000000008080FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF00000000000000000000
      0000808080FF008080FF00FFFFFFA4A0A0FF00000000008080FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008000FF008000FF0080
      00FF008000FF00000000000000000000000000000000008080FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FF800000FFFFFFFFFFFFFFFFFFC0C0C0FF0000FFFFA4A0
      A0FFFFFFFFFF800000FF00000000000000000000000000000000008080FF00FF
      FFFF00FFFFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF000000000000
      000000000000000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF000000008080
      80FF008080FF00FFFFFFA4A0A0FF00000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FF800000FFF0FBFFFF0000FFFF0000FFFF0000FFFF0000
      FFFFF0FBFFFF800000FF000000000000000000000000008080FFC0DCC0FF00FF
      FFFF00FFFFFF00FFFFFF000080FF000080FF000080FF000080FF000080FF0000
      80FF000080FF000080FF0000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFA4A0A0FFA4A0A0FFA4A0A0FF808080FF808080FF8080
      80FF00FFFFFF00FFFFFF0000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FF008000FF008080FF008080FF008080FF008080FF0080
      80FF008000FF008000FF008000FF008000FF008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FF800000FFA4A0A0FF0000FFFFC0C0C0FFF0FBFFFF0000
      FFFFA4A0A0FF800000FF000000000000000000000000008080FFC0DCC0FF00FF
      FFFF00FFFFFF00FFFFFF000080FF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF000080FF0000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFA4A0A0FFF0CAA6FFFFFFFFFFFFFFFFFFF0FBFFFFC0C0C0FFA4A0
      A0FF00FFFFFF000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FF008000FF808080FF808080FF008080FF008080FF0080
      80FF00FF00FF008000FF008000FF008000FF008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FF800000FFF0FBFFFFF0FBFFFFFFFFFFFFFFFFFFFFC0C0
      C0FF0000FFFF800080FF000000000000000000000000008080FFC0DCC0FF00FF
      FFFF00FFFFFF00FFFFFF000080FF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF000080FF0000000000000000008080FFF0FBFFFFF0FBFFFFF0FB
      FFFFA4A0A0FFC0DCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CAA6FFA4A0
      A0FF00000000000000000000000000000000008080FFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFF008000FF008000FF008000FF008000FF008080FF0080
      80FF008000FF008000FF008000FF008000FF008080FFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA4A0A0FF0000FFFF000000000000000000000000008080FFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFF000080FF000080FF000080FF000080FF000080FF0000
      80FF000080FF000080FF0000000000000000008080FFC0DCC0FF00FFFFFF0080
      80FFA4A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CAA6FFF0CA
      A6FFA4A0A0FF000000000000000000000000008080FFC0DCC0FF00FFFFFF0080
      80FF008080FF008080FF008080FF008080FFC0C0C0FF008000FF808080FF8080
      80FF008000FF000000000000000000000000008080FFC0DCC0FF00FFFFFF0080
      80FF008080FF008080FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF0000FFFF0000FFFF0000000000000000008080FFC0DCC0FF00FF
      FFFF008080FF008080FF008080FF008080FF008080FFC0C0C0FF008080FF0000
      000000000000000000000000000000000000008080FF00FFFFFF00FFFFFF00FF
      FFFFA4A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CA
      A6FFA4A0A0FF000000000000000000000000008080FF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008000FF808080FF8080
      80FF008000FF000000000000000000000000008080FF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF000000000000
      000000000000000000000000FFFF0000FFFF00000000008080FF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF0000
      000000000000000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFFA4A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFA4A0A0FF000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008000FF008000FF0080
      00FF008000FF000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF000000000000
      00000000000000000000000000000000FFFF00000000008080FFC0DCC0FF00FF
      FFFF00FFFFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF0000
      000000000000000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFFA4A0A0FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFFFFFFA4A0
      A0FF00000000000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF000000000000
      000000000000000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF000000000000
      00000000000000000000000000000000000000000000008080FFC0DCC0FF00FF
      FFFF00FFFFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF0000
      000000000000000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFA4A0A0FFA4A0A0FFF0CAA6FFF0CAA6FFF0CAA6FFA4A0A0FFA4A0
      A0FF00000000000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF000000000000
      000000000000000000000000000000000000008080FFC0DCC0FF00FFFFFF00FF
      FFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF000000000000
      00000000000000000000000000000000000000000000008080FFC0DCC0FF00FF
      FFFF00FFFFFF00FFFFFFC0DCC0FFC0DCC0FF00FFFFFF008080FF008080FF0000
      000000000000000000000000000000000000008080FFC0DCC0FFC0DCC0FFC0DC
      C0FFC0DCC0FFC0DCC0FFC0C0C0FFA4A0A0FF808080FF808080FF000000000000
      000000000000000000000000000000000000008080FFC0DCC0FFC0DCC0FFC0DC
      C0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FF008080FF008080FF000000000000
      000000000000000000000000000000000000008080FFC0DCC0FFC0DCC0FFC0DC
      C0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FF008080FF008080FF000000000000
      00000000000000000000000000000000000000000000008080FFC0DCC0FFC0DC
      C0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FFC0DCC0FF008080FF008080FF0000
      000000000000000000000000000000000000008080FFFFFFFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFC0DCC0FF008080FF000000000000
      000000000000000000000000000000000000008080FFFFFFFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFC0DCC0FF008080FF000000000000
      000000000000000000000000000000000000008080FFFFFFFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFC0DCC0FF008080FF000000000000
      00000000000000000000000000000000000000000000008080FFFFFFFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFC0DCC0FF008080FF0000
      00000000000000000000000000000000000000000000008080FFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFC0DCC0FFC0DCC0FF008080FF00000000000000000000
      00000000000000000000000000000000000000000000008080FFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFC0DCC0FFC0DCC0FF008080FF00000000000000000000
      00000000000000000000000000000000000000000000008080FFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFC0DCC0FFC0DCC0FF008080FF00000000000000000000
      0000000000000000000000000000000000000000000000000000008080FFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFC0DCC0FFC0DCC0FF008080FF000000000000
      0000000000000000000000000000000000000000000000000000008080FF0080
      80FF008080FF008080FF008080FF008080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080FF0080
      80FF008080FF008080FF008080FF008080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080FF0080
      80FF008080FF008080FF008080FF008080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      80FF008080FF008080FF008080FF008080FF008080FF00000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000001000000000000
      0001000000000000800700000000000080030000000000008003000000000000
      8003000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8003000000000000FFFF00000000000000000000F00FF00F00000000E007E007
      00000000C003C00300000000C003C00300000000C003C00300000000C003C003
      00000000C003C00300000000C003C00300000000C003C00300000000C003C003
      00000000C003C00300000000C003C00300000000C003C00300000000C003C003
      00000000E007E00700000000FC3FFFFF00000000000000000000000000000000
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
    Left = 760
    Top = 360
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 167
    Top = 584
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 656
    Top = 352
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 496
    Top = 288
  end
  inherited QBrowse2: TFDQuery
    Left = 48
    Top = 392
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 160
    Top = 672
  end
  inherited ImageListDos: TImageList
    Left = 224
    Top = 176
    Bitmap = {
      494C01010E001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000065855000759A
      5D00648550000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78009C8B
      78009C8B78009C8B7800A5948200D7CFBD008CA87400769C5E00769C5E00769C
      5E00769C5E00769C5E005D7A4900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B9CDAD00769C5E00769C5E00A0BB900082A5
      6D00769C5E00769C5E00769C5E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0088A97300769C5E00A7BF9700F7FAF600E7EE
      E30081A46B00769C5E00769C5E00658550006A492F94B3794DFB69482F910000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00799E6200769C5E00BACDAE008EAD7A00BBCE
      AF00E6EDE10080A36A00769C5E0072975B00B1774CF8DEA477FFB1774CF80000
      0000000000009C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0088A97300769C5E00769C5E00769C5E00769C
      5E00BBCEAF00E4ECDF007EA26700658550006A492F94AF774DF669482F910000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B9CDAD00769C5E00769C5E00769C5E00769C
      5E00769C5E00A2BB9100789D6000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9FBF80093B18000769C5E00769C5E00769C
      5E00769C5E00769C5E005D7A4900000000006A492F94B3794DFB69482F910000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFBF900BBCEAF0089AA75007FA3
      69008AAA7500AAB892000000000000000000B1774CF8DEA477FFB1774CF80000
      0000000000009C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C1B5A30000000000000000006A492F94AF774DF669482F910000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009C8B780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C8B78009C8B78009C8B
      78009C8B78009C8B780000000000000000006A492F94B3794DFB69482F910000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C8B7800FFFFFF00F9F8
      F700AB9D8D007C7162000000000000000000B1774CF8DEA477FFB1774CF80000
      0000000000009C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C8B7800F9F8F700AD9E
      8F00837668000000000000000000000000006A492F94AF774DF669482F910000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B7800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C8B7800AC9D8E007F73
      6500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78009C8B
      78009C8B78009C8B78009C8B78009C8B78009C8B78009C8B78007E7263000000
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
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC5C5C50079716C007162580077665900746255006B5B4E00776F6800C5C4
      C400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC5C5C50079716C007163580077665900746255006A5B4E00776F6800C5C4
      C400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF9997
      95008F7F7200AC988B00A48E8000A08A7B009E8778009B837400957C6D00715C
      500099979500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9997
      95008F7F7200AC988B00A48E8000A08A7B009E8778009981720091796A00715D
      500099979500FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF8172
      6600AD998C009E8778009F8979009E8778009B8576009880700099817100947A
      6A0065544500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8171
      6600AE998C009D8677009A8677009683750092807200907A6D008B756900957A
      6B0065534400FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFD3D2D2009D8D
      8200A89487009F8879009F8879009E8778009B857600978070009E8778009A83
      7300715B4C00D3D2D200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D2D2009C8E
      8200A6968B00A7978C00A7968B00A49185009E8A7C0097827300958173009881
      7200715C4C00D3D2D200FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFAAA9A800AC9E
      9300C3B4AA00A08A7B009D8778009D8777009B857500967D6E009C8576009E88
      790079625400A9A8A800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA9A800AD9E
      9400BBAEA500B2A19600AC9B8E00A8948700A18E80009B8576009E887A009681
      740079635400A9A8A800FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF97969500BAAC
      A300CBBDB300BEADA100AF9C8F00A5908200A0897A0099827200A18B7D00A28D
      80008268590098969500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97969400BAAC
      A200C5B7AE00B4A59A00B4A29600AD9A8D00A59083009D877700A28D7E00927D
      7100836A5A0098969500FFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF8F8C8900C7B9
      B000CABBB200BFAEA200B7A49800AF9B8F00A79284009E887800A28C7E00A28C
      8000886F60008D8A8700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8B8800C7B9
      B000CABCB200AFA09500B5A498009B8A7D00A08C7E009D877800A18B7D009380
      7200886F5F008C898600FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D20000000000000000000000000000000000FFFFFFFFFFFFFFFF7B756F00D0C3
      BA00C9BAB000BEADA100B7A59900B09D9000A89386009D887800A08A7B00A18C
      7E008E74660079726C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B756F00D0C3
      BA00CABCB200AB9C9200A5958A00A8968A0097867900998374009D8779009884
      77008970610079726C00FFFFFFFFFFFFFFFF000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      650000000000000000000000000000000000FFFFFFFFFFFFFFFF746C6500D6CA
      C200CCBEB500BAAAA000B19F9300AC9A8E00AA978B00A7948700AD9A8F00AA97
      8B0093796A0070675F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF746C6500D7CB
      C300C1B4AB00AC9D9400AD9E9400B0A19800B2A499009C8C8200A8968B00A491
      8500876F610070675F00FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF72675E00C8BA
      B000BEB0A500D3CAC100DBD2CA00D3C7BD00CCBCB100C2AEA200B29A8D00A68F
      8100A08B7C0065584E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72675D00C0B2
      AB00AEA49E00CFCCCB00E6E7E700F2F3F300F3F4F400F0EFEF00AAA7A5009788
      7E00917C700066594E00FFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF70625500D4CD
      C300EFEFE900E5E0D900E5DED800D2C5BC00CBBBB100C4B0A500BEA69A00B89C
      9000A68B7B0066564900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70625500B2AC
      A800EEEFF000F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F7F700AA9C
      9600A88C7C0066564900FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF73625500EEEF
      E800EEECE700E9E5DF00ECE6E200D2C5BC00CBBBB100C4B0A500BEA69A00B79B
      8F00B296880072605400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74625500DFDE
      D900D8D8D800FEFEFE00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FAFAFA00EEEF
      EF00A7968E0072605400FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF6B615700D3CC
      C400EFEEE900EAE6E100ECE7E300D2C5BC00CBBBB100C4B0A500BCA49800BBA1
      9500BBA99F006C625900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B605700D5CE
      C500D7D6D400E1E1E100FFFFFF00FFFFFF00FDFDFD00F9F9F900F5F5F500EFEF
      EF00A59F9B006C615900FFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFDCDCDC00695D
      5400B3A89E00E6E0DB00EDE7E300DBD1C900D6C8C000D3C3BA00CFC0B700AB9C
      9100695D5300DADADA00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC00695E
      5400B5AAA000C6C2BE00EFEFEF00FEFEFE00F9F9F900F4F4F400EAEBEB009089
      8300695D5400DADADA00FFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9E9C9A006E645C00716357007E6F63007E6F6300716358006E635A009D9A
      9900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9F9C9C0070665D00746B6400CFCFCF00E8E8E800E3E3E30076706C009D9B
      9A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
      000000000000000000000000FFFFFF00FFC7FFFF00000000C001FFFF00000000
      C001FFFF00000000C0001FFF00000000C000180000000000C0001FFF00000000
      C001FFFF00000000C0011FFF00000000C003180000000000C0031FFF00000000
      C003FFFF00000000C0031FFF00000000C003180000000000C0071FFF00000000
      C00FFFFF00000000C01FFFFF00000000FFEFFFFF00000000FFCFF3FF00000000
      FF8FF1FF00000000FF0FF0FF00000000FE0FF07F00000000FC0FF03F00000000
      F80FF01F00000000F00FF00F00000000E00FF00F00000000F00FF01F00000000
      F80FF03F00000000FC0FF07F00000000FE0FF0FF00000000FF0FF1FF00000000
      FF8FF3FF00000000FFCFF7FF00000000FFFFE007FFFF3FFFF83FE00780011FFF
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
  object frFactura: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Copies = 2
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.364248761570000000
    ReportOptions.LastChange = 39638.364248761570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPrintReport = frFacturaPrintReport
    OnAfterPrintReport = frFacturaAfterPrintReport
    Left = 308
    Top = 333
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
    end
  end
  object frxDbCabecera: TfrxDBDataset
    UserName = 'frxDbCabecera'
    CloseDataSource = False
    DataSet = DatosVentas.CDSVentaCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 407
    Top = 427
    FieldDefs = <
      item
        FieldName = 'ID_FC'
      end
      item
        FieldName = 'TIPOCPBTE'
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
        FieldName = 'LDR'
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
        FieldName = 'ANULADO'
        FieldType = fftString
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
        FieldName = 'FACTURANRO'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'ZONA'
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
        FieldName = 'MUESTRACONDVENTA'
        FieldType = fftString
        Size = 20
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
        FieldName = 'INGRESA_A_CTACTE'
        FieldType = fftString
      end
      item
        FieldName = 'INGRESA_LIBRO_IVA'
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
        FieldName = 'SUCFAC'
        FieldType = fftString
      end
      item
        FieldName = 'NUMEROFAC'
        FieldType = fftString
      end
      item
        FieldName = 'CONDICIONVTA'
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
      end
      item
        FieldName = 'REDUCIDA'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'LIQUIDADA'
        FieldType = fftString
      end
      item
        FieldName = 'VENDEDOR'
        FieldType = fftString
      end
      item
        FieldName = 'SUCURSAL'
      end
      item
        FieldName = 'USUARIO'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'CAJA_POR_DEFECTO'
      end
      item
        FieldName = 'NC_CONTADO'
        FieldType = fftString
      end
      item
        FieldName = 'IDREMITO'
      end
      item
        FieldName = 'TIPO_REMITO'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRADIRECCIONLDR'
        FieldType = fftString
        Size = 35
      end
      item
        FieldName = 'LISTAPRECIO'
      end
      item
        FieldName = 'NRO_Z'
      end
      item
        FieldName = 'RENGLONES'
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
        FieldName = 'MUESTRAPROVEEDOR'
        FieldType = fftString
        Size = 35
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
        FieldName = 'FECHAVTO'
      end
      item
        FieldName = 'NETOEXEN1'
      end
      item
        FieldName = 'NETOGRAV2'
      end
      item
        FieldName = 'NETOGRAV1'
      end
      item
        FieldName = 'FECHAVTA'
      end
      item
        FieldName = 'VALORES_RECIBIDOS'
      end
      item
        FieldName = 'COMSIONVENDEDOR'
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
        FieldName = 'FECHA_HORA'
      end
      item
        FieldName = 'N_OPERACION2'
      end
      item
        FieldName = 'DSTO'
      end
      item
        FieldName = 'DSTOIMPORTE'
      end
      item
        FieldName = 'TOTAL'
      end
      item
        FieldName = 'DEBE'
      end
      item
        FieldName = 'NETOEXEN2'
      end
      item
        FieldName = 'DEPOSITO'
      end
      item
        FieldName = 'TIPO_VTA'
        FieldType = fftString
      end
      item
        FieldName = 'MONEDA_CPBTE'
      end
      item
        FieldName = 'MONEDA_CPBTE_COTIZACION'
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
        FieldName = 'ID_RECEPCION_GTIA'
      end
      item
        FieldName = 'FECHA_LIQUIDACION'
      end
      item
        FieldName = 'ID_FC_CLON'
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
        FieldName = 'ABONO_PERIODO'
        FieldType = fftString
      end
      item
        FieldName = 'SALDO_ACTUAL_CC'
      end
      item
        FieldName = 'MUESTRASIGNOMONEDACPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAMONEDACPBTE'
        FieldType = fftString
        Size = 15
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
        FieldName = 'CANT_BULTOS'
      end
      item
        FieldName = 'MUESTRACOORPORATIVO'
        FieldType = fftString
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
        FieldName = 'MUESTRAZONA'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'ID_GARANTE'
      end
      item
        FieldName = 'PAGO_A_CTA'
      end
      item
        FieldName = 'ID_FC_CON_ADEL'
      end
      item
        FieldName = 'PRIMER_VTO'
      end
      item
        FieldName = 'ANTICIPO_VTO'
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
        FieldName = 'NRORTO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'NETONOGRAV1'
      end
      item
        FieldName = 'NETONOGRAV2'
      end
      item
        FieldName = 'MUESTRAIDABONO'
      end
      item
        FieldName = 'MUESTRANROABONO'
        FieldType = fftString
      end
      item
        FieldName = 'FECHA_FISCAL'
      end
      item
        FieldName = 'ENVIAR_CPTE_MAIL'
        FieldType = fftString
      end
      item
        FieldName = 'ID_PAIS'
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
        FieldName = 'PERMISO_EMBARQUE'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'CUIT_PAIS'
        FieldType = fftString
        Size = 11
      end
      item
        FieldName = 'DESTINO_DOCUMENTO'
        FieldType = fftString
      end
      item
        FieldName = 'INCOTERMS'
        FieldType = fftString
      end
      item
        FieldName = 'CBU'
        FieldType = fftString
        Size = 22
      end
      item
        FieldName = 'MUESTRAUSACHE'
        FieldType = fftString
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
        FieldName = 'MUESTRATRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'HONORARIOS'
      end
      item
        FieldName = 'HONORARIOS_PROCENTAJ'
      end
      item
        FieldName = 'DEDUCE_GASTOS'
        FieldType = fftString
      end
      item
        FieldName = 'ID_DESTINO'
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
        FieldName = 'QRIMAGE'
      end
      item
        FieldName = 'CONDICIONPEDIDO'
      end
      item
        FieldName = 'KEY_PLANER'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'LOTEAFIP'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAID_NC'
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
        FieldName = 'CODIGO_ACTIVIDAD'
        FieldType = fftString
      end
      item
        FieldName = 'ID_CHOFER'
      end
      item
        FieldName = 'TRANSPORTE_UNIDAD'
      end
      item
        FieldName = 'TRANSPORTE_ADICIONAL'
      end
      item
        FieldName = 'PERCIBE_IVA'
        FieldType = fftString
      end
      item
        FieldName = 'MINIMO_PERCI_IVA'
      end
      item
        FieldName = 'MUESTRA_UNI_TRANSPORTE'
        FieldType = fftString
        Size = 25
      end
      item
        FieldName = 'MUESTRALOCALITRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRAAUXILIARTR'
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
        FieldName = 'MUESTRADIRTRANSPORTE'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRATETRANSPORTE'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'MUESTRADOMINIOUNIDADTR'
        FieldType = fftString
        Size = 12
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
        FieldName = 'MUESTRANOMBREUSUARIOREAL'
        FieldType = fftString
        Size = 40
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
        FieldName = 'IMPORTE_PERCEPCION_IVA'
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
    DataSet = DatosVentas.CDSVentaDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 466
    Top = 531
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'Id'
      end
      item
        FieldName = 'ID_CABFAC'
        FieldAlias = 'Id_CabFac'
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CodigoArticulo'
        FieldType = fftString
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'GRAVADO_IB'
        FieldAlias = 'GRAVADO_IB'
        FieldType = fftString
      end
      item
        FieldName = 'LOTE'
        FieldAlias = 'LOTE'
      end
      item
        FieldName = 'CON_CODIGO_BARRA'
        FieldAlias = 'CON_CODIGO_BARRA'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAGRUPODETALLE'
        FieldAlias = 'MUESTRAGRUPODETALLE'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'Cantidad'
      end
      item
        FieldName = 'CON_NRO_SERIE'
        FieldAlias = 'CON_NRO_SERIE'
        FieldType = fftString
      end
      item
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_Tasa'
      end
      item
        FieldName = 'DESCUENTO'
        FieldAlias = 'Descuento'
      end
      item
        FieldName = 'IVA_TOTAL'
        FieldAlias = 'IVA_TOTAL'
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
        FieldName = 'MARGEN'
        FieldAlias = 'Margen'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
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
        FieldName = 'IVA_SOBRETASA'
        FieldAlias = 'IVA_SobreTasa'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TipoCpbte'
        FieldType = fftString
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NroCpbte'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'TIPOIB_TASA'
        FieldAlias = 'TIPOIB_TASA'
      end
      item
        FieldName = 'PRECIO_EDITABLE'
        FieldAlias = 'PRECIO_EDITABLE'
        FieldType = fftString
      end
      item
        FieldName = 'ID_MONEDA'
        FieldAlias = 'ID_MONEDA'
      end
      item
        FieldName = 'DETALLE_ADICIONAL'
        FieldAlias = 'DETALLE_ADICIONAL'
        FieldType = fftString
        Size = 300
      end
      item
        FieldName = 'GRUPO_DETALLE'
        FieldAlias = 'GRUPO_DETALLE'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'Afecta_Stock'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'Detalle'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'Unidad'
        FieldType = fftString
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DesglozaIVA'
        FieldType = fftString
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'Modo_Gravamen'
        FieldType = fftString
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
        FieldName = 'DEPOSITO'
        FieldAlias = 'Deposito'
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'Calcula_SobreTasa'
        FieldType = fftString
      end
      item
        FieldName = 'NRO'
        FieldAlias = 'NRO'
      end
      item
        FieldName = 'MESES_GTIA'
        FieldAlias = 'MESES_GTIA'
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
        FieldName = 'CODIGOBARRA'
        FieldAlias = 'CODIGOBARRA'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRACONTENIDO'
        FieldAlias = 'MUESTRACONTENIDO'
      end
      item
        FieldName = 'MUESTRAMONEDA'
        FieldAlias = 'MUESTRAMONEDA'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRACODALTERNATIVO'
        FieldAlias = 'MUESTRACODALTERNATIVO'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'DE_PRODUCCION'
        FieldAlias = 'DE_PRODUCCION'
        FieldType = fftString
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
        FieldType = fftString
      end
      item
        FieldName = 'ITEM_OCOMPRA'
        FieldAlias = 'ITEM_OCOMPRA'
      end
      item
        FieldName = 'MUESTRAGANANCIA'
        FieldAlias = 'MUESTRAGANANCIA'
      end
      item
        FieldName = 'MUESTRAGTIAOFICIAL'
        FieldAlias = 'MUESTRAGTIAOFICIAL'
        FieldType = fftString
      end
      item
        FieldName = 'CONTROL_TRAZABILIDAD'
        FieldAlias = 'CONTROL_TRAZABILIDAD'
        FieldType = fftString
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
        FieldName = 'ACOPIABLE'
        FieldAlias = 'ACOPIABLE'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTRAIVAMODIFICADO'
        FieldAlias = 'MUESTRAIVAMODIFICADO'
        FieldType = fftString
      end
      item
        FieldName = 'PRESENTACION_UNIDAD'
        FieldAlias = 'PRESENTACION_UNIDAD'
        FieldType = fftString
      end
      item
        FieldName = 'ID_DET_REMITO'
        FieldAlias = 'ID_DET_REMITO'
      end
      item
        FieldName = 'UNITARIO_NETO_TOTAL'
        FieldAlias = 'UNITARIO_NETO_TOTAL'
      end
      item
        FieldName = 'MARGEN_CAL'
        FieldAlias = 'MARGEN_CAL'
      end
      item
        FieldName = 'SUMATOTAL'
        FieldAlias = 'SUMATOTAL'
      end
      item
        FieldName = 'SUMACOSTO'
        FieldAlias = 'SUMACOSTO'
      end
      item
        FieldName = 'RUBRO_STK'
        FieldType = fftString
      end
      item
        FieldName = 'SUBRUBRO_STK'
        FieldType = fftString
      end
      item
        FieldName = 'CTA_ORDEN_ID_RECEPCION'
      end
      item
        FieldName = 'CTA_ORDEN_NROCPBTE'
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'CTA_ORDEN_TIPOCPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'CTA_ORDEN_CALSECPBTE'
        FieldType = fftString
      end
      item
        FieldName = 'MUESTADIFERENCIAENTREGA'
      end
      item
        FieldName = 'MUESTRAORDENPRODUCCION'
      end
      item
        FieldName = 'PERCIBE_IVA'
        FieldType = fftString
      end
      item
        FieldName = 'TASA_PERCEP_IVA'
      end
      item
        FieldName = 'ID_TASA_PERCEPCION_IVA'
      end
      item
        FieldName = 'PERCEPCION_IVA_DIFERENCIAL'
        FieldType = fftString
      end
      item
        FieldName = 'PRESENTACION_TOLERANCIA'
      end
      item
        FieldName = 'UNITARIO_TOTAL_OLD_2'
      end
      item
        FieldName = 'MUESTRAUNITARIO_CON_DSCTO'
      end>
  end
  object frxDBImpuestos: TfrxDBDataset
    UserName = 'frxDBImpuestos'
    CloseDataSource = False
    DataSet = DatosVentas.CDSImpuestos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 498
    Top = 363
  end
  object frDBSubDetalle: TfrxDBDataset
    UserName = 'frDBSubDetalle'
    CloseDataSource = False
    DataSet = DatosVentas.CDSVtaSubDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 435
    Top = 327
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
      end
      item
        FieldName = 'TIPO'
        FieldAlias = 'TIPO'
      end
      item
        FieldName = 'HACERINGRESO'
        FieldAlias = 'HACERINGRESO'
      end>
  end
  object frBarCode: TfrxBarCodeObject
    Left = 212
    Top = 391
  end
  object frxDotMatrixExportFcCC: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 184
    Top = 440
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OnBeforeExport = frxPDFExport1BeforeExport
    Compressed = False
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
    Left = 264
    Top = 480
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
    Left = 144
    Top = 528
  end
  object spControlCpbteImp_vs_comp: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CONTROL_CPBTE_IMPRESOS_VS_CPBTE'
    Left = 832
    Top = 328
  end
  object spBorraAplicaciones: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'BORRAR_APLICACIONES_A_FCVTA'
    Left = 832
    Top = 520
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end>
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
    Left = 188
    Top = 477
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
    Left = 530
    Top = 411
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
  object jvAlerta: TJvDesktopAlert
    Options = [daoCanClick, daoCanClose]
    Location.Position = dapActiveFormCenter
    Location.Top = 412
    Location.Left = 146
    Location.Width = 0
    Location.Height = 150
    HeaderText = 'Estado de Cliente'
    MessageText = 
      'Cliente Con Credito Exedido en Tiempo, Se continua pero debera t' +
      'ener clave de autorizaci'#243'n para poder Facturar'
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
    Left = 472
    Top = 432
  end
  object pmMenu: TPopupMenu
    Left = 760
    Top = 273
    object CopiarDetalle1: TMenuItem
      Action = CopiarDetalle
    end
    object PegarDetalle2: TMenuItem
      Action = PegarDetalle
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object CopiaralPortaPaplesdeWindows1: TMenuItem
      Caption = 'Copiar al Porta Papeles de Windows'
      OnClick = CopiaralPortaPaplesdeWindows1Click
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
    object VerOrdendeProduccionAsociada1: TMenuItem
      Action = VerOrdenProduccion
    end
    object VerColumnaUnidades: TMenuItem
      Caption = 'Ver Unidades de Stock'
      OnClick = VerColumnaUnidadesClick
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object ModificarTotal: TMenuItem
      Caption = 'Modificar el Total'
      OnClick = ModificarTotalClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object SaltearColumnadesctoenDetalle1: TMenuItem
      Caption = 'Saltear Columna Descto. en Detalle'
      OnClick = SaltearColumnadesctoenDetalle1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object UsarDetalleAdicional: TMenuItem
      Caption = 'Usar Detalle Adicional'
      OnClick = UsarDetalleAdicionalClick
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object ImportarExcel1: TMenuItem
      Action = ImportarExcel
    end
    object VerLotes1: TMenuItem
      Action = VerLotes
    end
  end
  object frxCupon: TfrxDBDataset
    UserName = 'frxCupon'
    CloseDataSource = False
    DataSet = DatosVentas.CDSRegFacturas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 578
    Top = 331
    FieldDefs = <
      item
        FieldName = 'LOTE'
        FieldAlias = 'LOTE'
      end
      item
        FieldName = 'ID_FAC'
        FieldAlias = 'ID_FAC'
      end
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'SALDO_CC'
        FieldAlias = 'SALDO_CC'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CLACPBTE'
        FieldAlias = 'CLACPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'CODIGOBARRA'
        FieldAlias = 'CODIGOBARRA'
      end
      item
        FieldName = 'CODIGOBARRA_2'
        FieldAlias = 'CODIGOBARRA_2'
      end>
  end
  object frxDBCarnes: TfrxDBDataset
    UserName = 'frxDBCarnes'
    CloseDataSource = False
    DataSource = DatosVentas.DSMov_Carnes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 375
    Top = 339
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
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end
      item
        FieldName = 'CLASIFICACION'
        FieldAlias = 'CLASIFICACION'
      end
      item
        FieldName = 'NRO_TROPA'
        FieldAlias = 'NRO_TROPA'
      end
      item
        FieldName = 'T_KILOS'
        FieldAlias = 'T_KILOS'
      end
      item
        FieldName = 'T_MEDIAS'
        FieldAlias = 'T_MEDIAS'
      end
      item
        FieldName = 'MEDIA_1'
        FieldAlias = 'MEDIA_1'
      end
      item
        FieldName = 'MEDIA_2'
        FieldAlias = 'MEDIA_2'
      end
      item
        FieldName = 'MEDIA_3'
        FieldAlias = 'MEDIA_3'
      end
      item
        FieldName = 'MEDIA_4'
        FieldAlias = 'MEDIA_4'
      end
      item
        FieldName = 'MEDIA_5'
        FieldAlias = 'MEDIA_5'
      end
      item
        FieldName = 'MEDIA_6'
        FieldAlias = 'MEDIA_6'
      end
      item
        FieldName = 'MEDIA_7'
        FieldAlias = 'MEDIA_7'
      end
      item
        FieldName = 'MEDIA_8'
        FieldAlias = 'MEDIA_8'
      end>
  end
  object frDBRtos: TfrxDBDataset
    UserName = 'frDBRtos'
    CloseDataSource = False
    DataSet = DatosVentas.CDSRtos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 570
    Top = 539
    FieldDefs = <
      item
        FieldName = 'ID_RTO'
        FieldAlias = 'ID_RTO'
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
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end>
  end
  object frEmpresa: TfrxDBDataset
    UserName = 'frEmpresa'
    CloseDataSource = False
    DataSet = DatosVentas.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 768
    Top = 432
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
        FieldName = 'FECHA_INICIO_ACTI'
        FieldAlias = 'FECHA_INICIO_ACTI'
      end
      item
        FieldName = 'CBU'
        FieldAlias = 'CBU'
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
      end
      item
        FieldName = 'DIRECCION_NRO'
        FieldAlias = 'DIRECCION_NRO'
      end
      item
        FieldName = 'AG_PERCEPCION_IVA'
        FieldAlias = 'AG_PERCEPCION_IVA'
      end
      item
        FieldName = 'MIN_IMP_PERCEPCION_IVA'
        FieldAlias = 'MIN_IMP_PERCEPCION_IVA'
      end>
  end
  object spConsolidarCoorporativa: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CONSOLIDAR_CTA_COORP'
    Left = 524
    Top = 470
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftString
        Precision = 6
        ParamType = ptInput
      end
      item
        Name = 'CTA_COORP'
        DataType = ftString
        Precision = 6
        ParamType = ptInput
      end
      item
        Name = 'IMPORTE'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'DETALLE_FC'
        DataType = ftString
        Precision = 20
        ParamType = ptInput
      end
      item
        Name = 'FECHA_OP'
        DataType = ftTimeStamp
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Precision = 50
        ParamType = ptInput
      end
      item
        Name = 'ID_FACTURA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'TIPO_COMP'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'ID_CTA_DESTINO'
        DataType = ftInteger
        Precision = 4
        ParamType = ptOutput
        Size = 4
      end
      item
        Name = 'ID_AJUSTE_CTA_AJUSTADA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptOutput
        Size = 4
      end
      item
        Name = 'ID_A_CTA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptOutput
        Size = 4
      end>
  end
  object spIngresarAjuste: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    StoredProcName = 'INGRESAR_CONSOLIDACION'
    Left = 368
    Top = 472
    ParamData = <
      item
        Position = 1
        Name = 'ID_AJUSTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_COMPROB'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 4
        Name = 'DEBE'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'HABER'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = 'FECHA_OP'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 10
        Name = 'OBSERVACIONES'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 11
        Name = 'FECHA_VTO'
        DataType = ftDate
        ParamType = ptInput
      end>
    object spIngresarAjusteID_MOVACTA: TIntegerField
      FieldName = 'ID_MOVACTA'
      Origin = 'ID_MOVACTA'
    end
    object spIngresarAjusteID_MOVCC: TIntegerField
      FieldName = 'ID_MOVCC'
      Origin = 'ID_MOVCC'
    end
  end
  object frxDBLotes: TfrxDBDataset
    UserName = 'frDBLotes'
    CloseDataSource = False
    DataSet = DatosVentas.CDSVentaLote
    BCDToCurrency = False
    DataSetOptions = []
    Left = 675
    Top = 415
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
  object spMovReempNC: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REEMP_MOV_CAJA_2'
    Left = 832
    Top = 456
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'NC_ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'NC_TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'NC_CLASE'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
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
    Left = 608
    Top = 456
  end
  object QInsertarRegistro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'insert into reg_consolida_ctas ( id,cta_destino,cta_origen,impor' +
        'te,id_ajuste_destino)'
      
        'values (gen_id(next_id_reg_consolida_ctas,1),:ctadestino,:ctaori' +
        'gen,:importe,:idajustedestino)')
    Left = 656
    Top = 504
    ParamData = <
      item
        Name = 'ctadestino'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ctaorigen'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'importe'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'idajustedestino'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBorrarConsolidacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from ajuste_cc_clientes aj '
      'where aj.id_factura_consolidada = :id')
    Left = 832
    Top = 376
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object MainMenu1: TMainMenu
    Left = 480
    Top = 128
    object MenuImp: TMenuItem
      Caption = 'Modo Impresion'
      Checked = True
      RadioItem = True
      object MostrarDlg: TMenuItem
        Caption = 'Mostrar Dialogo de Impresion'
        Checked = True
        OnClick = MostrarDlgClick
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object MovimientosCajaNC1: TMenuItem
        Action = MovCajaNCo
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object ImpresionFormatoMail1: TMenuItem
        Caption = 'Impresion Formato Mail'
        OnClick = ImpresionFormatoMail1Click
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object PasarAPapelera1: TMenuItem
        Action = Pasar_A_Papelera
        Caption = 'Pasar A Papelera'
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object ModoDespachante1: TMenuItem
        Caption = 'Modo Despachante'
        OnClick = ModoDespachante1Click
      end
      object DatosAdicionales1: TMenuItem
        Caption = 'Datos Adicionales'
        OnClick = DatosAdicionales1Click
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object ExpresarUnidadesenEnteros1: TMenuItem
        Caption = 'Expresar Unidades Stock en Enteros'
        OnClick = ExpresarUnidadesenEnteros1Click
      end
      object FiscalizarAutomatica: TMenuItem
        Caption = 'Fiscalizacion Automatica'
        Checked = True
        OnClick = FiscalizarAutomaticaClick
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object ActualizaCostoenFactura1: TMenuItem
        Action = ActualizaCostoFc
      end
      object UsarUltimoDeposito: TMenuItem
        Caption = 'Usar Ultimo Depostio Facturado'
        OnClick = UsarUltimoDepositoClick
      end
    end
  end
  object ComBuscadorLdr: TComBuscador
    Data = DatosVentas.CDSBuscaLdr
    Campo = 'codigo_ldr'
    Titulo = 'Lugar de recepcsion'
    rOk = False
    Left = 216
    Top = 45
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosVentas.CDSBuscaSucursal
    Campo = 'codigo'
    Titulo = 'Sucursales'
    rOk = False
    Left = 32
    Top = 221
  end
  object ComBuscadorDepositos: TComBuscador
    Data = DatosVentas.CDSBuscaDeposito
    Campo = 'id'
    Titulo = 'Depositos'
    rOk = False
    Left = 256
    Top = 29
  end
  object ComBuscadorVendedores: TComBuscador
    Data = DatosVentas.CDSBuscaVendedor
    Campo = 'codigo'
    Titulo = 'Vendedores'
    rOk = False
    Left = 288
    Top = 205
  end
  object ComBuscadorRecepciones: TComBuscador
    Data = DatosVentas.CDSBuscaRecepDetalle
    Campo = 'id'
    Titulo = 'Recepciones'
    rOk = False
    Left = 432
    Top = 229
  end
  object ComBuscadorSeries: TComBuscador
    Data = DatosVentas.CDSBuscaNroSerie
    Campo = 'codigoserie'
    Titulo = 'Nros de Serie'
    rOk = False
    Left = 292
    Top = 281
  end
  object ComBuscadorLote: TComBuscador
    Data = DatosVentas.CDSBuscaLotes
    Campo = 'id'
    Titulo = 'Lotes de Mercaderia'
    rOk = False
    Left = 340
    Top = 233
  end
  object ComBuscadorConVta: TComBuscador
    Data = DatosVentas.CDSBuscaCondVenta
    Campo = 'codigopago'
    Titulo = 'Condiciones de Vta'
    rOk = False
    Left = 856
    Top = 45
  end
  object frxSucursal: TfrxDBDataset
    UserName = 'frxSucursal'
    CloseDataSource = False
    DataSet = DatosVentas.CDSSucursal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 311
    Top = 443
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
  object QAplicacionesNC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(id_mov) as id from movaplicaccvta '
      'where id_cpbte=:id and tipocpbte=:tipo and clasecpbte=:clase')
    Left = 232
    Top = 528
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QAplicacionesNCID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ComBuscadorTransporte: TComBuscador
    Data = DatosVentas.CDSTransporte
    Campo = 'id'
    Titulo = 'Transportes'
    rOk = False
    Left = 332
    Top = 57
  end
  object PopupMenuImpresion: TPopupMenu
    Left = 724
    Top = 228
    object ImprimirBorrador1: TMenuItem
      Caption = 'Imprimir Borrador'
      OnClick = ImprimirBorrador1Click
    end
  end
  object ComBuscadorNotas: TComBuscador
    Data = DatosVentas.CDSBuscadorNotas
    Campo = 'CODIGO'
    Titulo = 'Notas Facturas'
    rOk = False
    Left = 292
    Top = 388
  end
  object OpenDialog: TOpenDialog
    Left = 48
    Top = 319
  end
  object frxDBAsociados: TfrxDBDataset
    UserName = 'frxAsociados'
    CloseDataSource = False
    DataSet = DatosVentas.CDSAsociados
    BCDToCurrency = False
    DataSetOptions = []
    Left = 602
    Top = 395
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
        FieldName = 'ASOCIADO_CPTEFECHA'
        FieldAlias = 'ASOCIADO_CPTEFECHA'
      end
      item
        FieldName = 'TIPO'
        FieldAlias = 'TIPO'
      end>
  end
  object frxDBPercepcionesIVA: TfrxDBDataset
    UserName = 'frxDBPercepcionesIVA'
    CloseDataSource = False
    DataSet = DatosVentas.CDSPercepcionIVA
    BCDToCurrency = False
    DataSetOptions = []
    Left = 434
    Top = 379
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
  object PopupActionBar1: TPopupActionBar
    MenuAnimation = [maTopToBottom]
    Left = 115
    Top = 366
    object CambiarCuit1: TMenuItem
      Action = CambiarCuit
      Caption = 'Cambiar Cuit/Doc'
    end
    object r1: TMenuItem
      Action = DesmarcarImpresa
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object OpcionesdeCalculo1: TMenuItem
      Caption = 'Opciones de Calculo'
      object ReCalcularTodo1: TMenuItem
        Action = ReCalcularTodo
      end
      object DatosClientes1: TMenuItem
        Action = Recalcular
      end
      object RecalculoSuma1: TMenuItem
        Action = RecalculoSuma00
      end
      object CacularIVADet1: TMenuItem
        Action = CacularIVADet
      end
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object OpciondeXML1: TMenuItem
      Caption = 'Opcion de XML //Freezado'
      object PegarDetalle1: TMenuItem
        Action = PegarDetalle
      end
      object ExportarXML2: TMenuItem
        Action = ExportarXML
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Freezar1: TMenuItem
        Action = Freezar
      end
      object LeerFacturasFrezadas1: TMenuItem
        Action = LeerFacturasFrezadas
      end
    end
    object OpcionesdeGeneracion1: TMenuItem
      Caption = 'Opciones de Generacion'
      object GenerarTransferecia1: TMenuItem
        Action = GenerarTx
      end
      object GenerarRto1: TMenuItem
        Action = GenerarRto
        Caption = 'Generar Rto'
      end
      object GenerarOrdedeProduccion1: TMenuItem
        Action = GenerarOrdenProduccion
      end
      object GenerarNotadePedido1: TMenuItem
        Action = GenerarNotaPedido
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object DuplicarComprobante1: TMenuItem
        Action = DuplicarComprobante
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object OpcionesdeModificacion1: TMenuItem
      Caption = 'Opciones de Modificacion'
      object CambiarNro1: TMenuItem
        Action = CambiarNro
      end
      object CambiarCliente1: TMenuItem
        Action = CambiarCliente
      end
      object CambioDeposito1: TMenuItem
        Action = CambioDeposito
      end
      object CambiarTipoFacturaServicioMercaderias1: TMenuItem
        Action = CambiarTipoVta
      end
      object CambiaModoDiscrIVA1: TMenuItem
        Action = CambiaModoDiscrIVA
      end
      object Desanulacin1: TMenuItem
        Action = Desanulacion
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object RecuperarRtos1: TMenuItem
        Action = RecuperarRtos
      end
      object ModificaCotizacion1: TMenuItem
        Action = ModificaCotizacion
      end
      object CambiarFechadeVencimiento1: TMenuItem
        Action = CambiarFechaVencimiento
      end
    end
    object VerAplicacion1: TMenuItem
      Action = VerAplicaciones
    end
    object PasaNCaContado1: TMenuItem
      Action = PasaNC_a_Contado
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object BorrarAplicaciones1: TMenuItem
      Action = BorrarAplicaciones
    end
    object ransformarFC1: TMenuItem
      Action = TransformarFC
    end
    object CambiarClaseCpbte1: TMenuItem
      Action = CambiarClase
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Acopiar1: TMenuItem
      Action = Acopiar
      Caption = 'Acopiar Mercaderia'
    end
    object RevisionFactRto1: TMenuItem
      Action = RevisionFactRto
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object BusquedaPorReferencia1: TMenuItem
      Action = BusquedaPorReferencia
    end
    object GrupoDetalle1: TMenuItem
      Action = GrupoDetalle
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object LimpiarBuffer1: TMenuItem
      Action = CleanBuffer
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object Fiscalizar1: TMenuItem
      Action = Fiscalizar
    end
    object ConsultaFiscalizacion1: TMenuItem
      Action = ConsultaFiscalizacion
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object BorrarCAE1: TMenuItem
      Action = BorrarCAE
    end
    object AgregraoSacarLibroIVA1: TMenuItem
      Action = AplicarLibroIVA
    end
    object ConsolidarFactura1: TMenuItem
      Caption = 'Consolidar Factura '
      OnClick = ConsolidarFactura1Click
    end
    object BorrarConsolidacion1: TMenuItem
      Action = BorrarConsolidacion
    end
    object NoLiquidaComision1: TMenuItem
      Action = NoLiquidar
    end
    object VerenHojadeCarga2: TMenuItem
      Action = VerHojaCarga
    end
    object PasarosacardeCCte1: TMenuItem
      Action = PasaCCVta
    end
    object ReHacerQR1: TMenuItem
      Action = ReHacerQR
    end
    object ExportarPDF: TMenuItem
      Caption = 'Exportar a PDF'
      OnClick = ExportarPDFClick
    end
  end
  object frxDBDetNovedades: TfrxDBDataset
    UserName = 'frxDBDetNovedades'
    CloseDataSource = False
    DataSet = DatosVentas.CDSVtaDetNovedades
    BCDToCurrency = False
    DataSetOptions = []
    Left = 652
    Top = 573
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'ID_CABFAC'
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
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldType = fftString
      end>
  end
end

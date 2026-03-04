inherited FormCompra_2: TFormCompra_2
  Left = 281
  Top = 92
  Caption = 'Factura de Compra en Cta.Cte.'
  ClientHeight = 695
  ClientWidth = 938
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  ExplicitWidth = 956
  ExplicitHeight = 736
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 938
    Height = 642
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 938
    ExplicitHeight = 642
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 193
      Width = 938
      Height = 449
      ActivePage = pagDetalle
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabPosition = tpBottom
      OnEnter = pcDetalleFacturaEnter
      object pagDetalle: TTabSheet
        Caption = 'Detalles'
        DesignSize = (
          930
          423)
        object Label17: TLabel
          Left = 534
          Top = 305
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
          ExplicitTop = 309
        end
        object Bevel48: TBevel
          Left = 692
          Top = 371
          Width = 177
          Height = 20
          Anchors = [akLeft, akBottom]
          ExplicitTop = 375
        end
        object dbtTotal: TDBText
          Left = 692
          Top = 373
          Width = 174
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
          ExplicitTop = 377
        end
        object Label23: TLabel
          Left = 607
          Top = 371
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
          ExplicitTop = 375
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 733
          Top = 303
          Width = 96
          Height = 13
          DataSource = DatosCompra.DSCompraDet
          Style = lsRecordNo
          CalcRecCount = True
          Anchors = [akLeft, akBottom]
          Transparent = True
          ExplicitTop = 306
        end
        object dbtTotal1: TDBText
          Left = 437
          Top = 405
          Width = 140
          Height = 18
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'TOTAL_UNIDADES'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 409
        end
        object lb1: TLabel
          Left = 437
          Top = 379
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
          ExplicitTop = 383
        end
        object lb3: TLabel
          Left = 619
          Top = 395
          Width = 114
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Valor Total Expreado en'
          ExplicitTop = 398
        end
        object dbtMUESTRAMONEDACPBTE: TDBText
          Left = 739
          Top = 395
          Width = 106
          Height = 18
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRAMONEDACPBTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 399
        end
        object lb4: TLabel
          Left = 30
          Top = 305
          Width = 100
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Costo del Articulo en:'
          ExplicitTop = 309
        end
        object dbtMUESTRAMONEDACPBTE1: TDBText
          Left = 136
          Top = 305
          Width = 26
          Height = 16
          Cursor = crHandPoint
          Hint = 'Hacer clik para modificar Valor'
          Alignment = taCenter
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRAMONEDA'
          DataSource = DatosCompra.DSCompraDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ActualizaCotizacionDetalleExecute
          ExplicitTop = 309
        end
        object dbtMUESTRAMONEDACPBTE2: TDBText
          Left = 653
          Top = 373
          Width = 33
          Height = 18
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRASIGNOMONEDACPBTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 377
        end
        object dbtMUESTRAMONEDA: TDBText
          Left = 166
          Top = 305
          Width = 52
          Height = 14
          Cursor = crHandPoint
          Hint = 'Hacer clik para modificar Valor'
          Anchors = [akLeft, akBottom]
          DataField = 'COTIZACION'
          DataSource = DatosCompra.DSCompraDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ActualizaCotizacionDetalleExecute
          ExplicitTop = 309
        end
        object spMenu: TSpeedButton
          Left = 488
          Top = 305
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
          PopupMenu = pmOtros
          ExplicitTop = 309
        end
        object shPP: TShape
          Left = 10
          Top = 307
          Width = 16
          Height = 10
          Anchors = [akLeft, akBottom]
          Brush.Color = clGreen
          Shape = stCircle
          Visible = False
          ExplicitTop = 311
        end
        object Label47: TLabel
          Left = 233
          Top = 305
          Width = 40
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'M.Stock'
          ExplicitTop = 308
        end
        object DBText16: TDBText
          Left = 277
          Top = 305
          Width = 26
          Height = 18
          Cursor = crHandPoint
          Anchors = [akLeft, akBottom]
          DataField = 'AFECTA_STOCK'
          DataSource = DatosCompra.DSCompraDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ActualizaCotizacionDetalleExecute
          ExplicitTop = 309
        end
        object dbeObs1: TDBEdit
          Left = 534
          Top = 321
          Width = 335
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'Observacion1'
          DataSource = DSBase
          TabOrder = 1
        end
        object dbeObs2: TDBEdit
          Left = 533
          Top = 345
          Width = 336
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'Observacion2'
          DataSource = DSBase
          TabOrder = 2
        end
        object pcDetalleFc: TJvPageControl
          Left = 0
          Top = 0
          Width = 930
          Height = 232
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          ActivePage = tbOriginal
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          Style = tsFlatButtons
          TabHeight = 1
          TabOrder = 3
          object tbOriginal: TTabSheet
            Caption = 'tbOriginal'
            object dbgGridTMS: TDBAdvGrid
              Left = 0
              Top = 0
              Width = 922
              Height = 221
              Align = alClient
              ColCount = 20
              DrawingStyle = gdsClassic
              FixedColor = clWhite
              FixedCols = 0
              RowCount = 2
              FixedRows = 1
              TabOrder = 1
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
              FixedColWidth = 114
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
              AutoRemoveColumns = True
              Columns = <
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  FieldName = 'CODIGOARTICULO'
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
                  Width = 114
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  FieldName = 'DETALLE'
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
                  Width = 245
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  FieldName = 'UNIDAD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 90
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  FieldName = 'TIPOIVA_TASA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 98
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  FieldName = 'IVA_TASA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 106
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  FieldName = 'CANTIDAD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 103
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  FieldName = 'UNITARIO_TOTAL'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 90
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  FieldName = 'DESCUENTO'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 88
                end
                item
                  Borders = []
                  BorderPen.Color = clSilver
                  ButtonHeight = 18
                  CheckFalse = 'N'
                  CheckTrue = 'Y'
                  Color = clWindow
                  FieldName = 'TOTAL'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 120
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
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
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderFont.Charset = DEFAULT_CHARSET
                  HeaderFont.Color = clWindowText
                  HeaderFont.Height = -11
                  HeaderFont.Name = 'MS Sans Serif'
                  HeaderFont.Style = []
                  PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
                  PrintFont.Charset = DEFAULT_CHARSET
                  PrintFont.Color = clWindowText
                  PrintFont.Height = -11
                  PrintFont.Name = 'MS Sans Serif'
                  PrintFont.Style = []
                  Width = 64
                end>
              DataSource = DatosCompra.DSCompraDet
              PageMode = False
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
                114
                245
                90
                98
                106
                103
                90
                88
                120
                64
                64
                64
                64
                64
                64
                64
                64
                64
                64
                64)
              RowHeights = (
                22
                22)
            end
            object DBGrillaDetalle: TDBGrid
              Left = 0
              Top = 0
              Width = 922
              Height = 221
              Align = alClient
              Ctl3D = False
              DataSource = DatosCompra.DSCompraDet
              DrawingStyle = gdsGradient
              FixedColor = clAqua
              GradientEndColor = clAqua
              GradientStartColor = clAqua
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
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
              OnEnter = DBGrillaDetalleEnter
              OnKeyDown = DBGrillaDetalleKeyDown
              OnKeyPress = DBGrillaDetalleKeyPress
              OnTitleClick = DBGrillaDetalleTitleClick
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'CODIGOARTICULO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 82
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
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'UNIDAD'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 31
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'IVA_TASA'
                  Title.Alignment = taCenter
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
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'MUESTRAMONEDA'
                  Title.Alignment = taCenter
                  Title.Caption = '#'
                  Width = 28
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
                  Width = 71
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
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 55
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'TOTAL'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 98
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
                  Width = 70
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
                  Title.Caption = 'Inventario'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = False
                end>
            end
          end
          object tbDetLiquidacion: TTabSheet
            Caption = 'tbDetLiquidacion'
            ImageIndex = 1
            object dbgDetalleLiquidacion: TDBGrid
              Left = 0
              Top = 0
              Width = 922
              Height = 221
              Align = alClient
              DataSource = DatosCompra.DSCompraDet
              DrawingStyle = gdsGradient
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              PopupMenu = PopupMenu1
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnColEnter = dbgDetalleLiquidacionColEnter
              OnEditButtonClick = dbgDetalleLiquidacionEditButtonClick
              OnKeyPress = dbgDetalleLiquidacionKeyPress
              Columns = <
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'CODIGOARTICULO'
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
                  Width = 214
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MUESTRARAZA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Raza'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 117
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'CABEZAS'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cabezas'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 61
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TROPA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tropa'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MUESTRAIVA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Iva'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 60
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
                  Width = 74
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UNIDADES_TOTAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Unidades'
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
                  FieldName = 'TOTAL'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 94
                  Visible = True
                end>
            end
          end
        end
        object pcOtrosDetalles: TPageControl
          Left = 6
          Top = 249
          Width = 428
          Height = 101
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          ActivePage = pgDescuentos
          Anchors = [akLeft, akBottom]
          TabHeight = 1
          TabOrder = 0
          object pgDescuentos: TTabSheet
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Caption = 'pgDescuentos'
            TabVisible = False
            object JvGradient6: TJvGradient
              Left = 0
              Top = 0
              Width = 420
              Height = 91
              Style = grVertical
              StartColor = clBtnFace
              EndColor = clWhite
              ExplicitWidth = 423
              ExplicitHeight = 94
            end
            object Label22: TLabel
              Left = 3
              Top = 3
              Width = 101
              Height = 13
              Caption = 'Condiciones de Pago'
            end
            object dbgCondPago: TDBGrid
              Left = 0
              Top = 22
              Width = 231
              Height = 67
              Color = 16776176
              DataSource = DatosCompra.DSCondPago
              FixedColor = clAqua
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnKeyPress = dbgCondPagoKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'FECHA'
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
                  FieldName = 'DSCTO'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IMPORTE'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 69
                  Visible = True
                end>
            end
          end
          object pgLiquidacionOtros: TTabSheet
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Caption = 'pgLiquidacionOtros'
            ImageIndex = 1
            TabVisible = False
            object JvGradient7: TJvGradient
              Left = 0
              Top = 0
              Width = 420
              Height = 91
              Style = grVertical
              StartColor = clBtnFace
              EndColor = clWhite
              ExplicitWidth = 423
              ExplicitHeight = 94
            end
            object Label40: TLabel
              Left = 291
              Top = 1
              Width = 78
              Height = 13
              Caption = 'Fecha de Fanea'
            end
            object Label41: TLabel
              Left = 291
              Top = 42
              Width = 100
              Height = 13
              Caption = 'Fecha de Recepcion'
            end
            object dbgCompraDTE: TDBGrid
              Left = 3
              Top = 0
              Width = 273
              Height = 82
              Color = 16776176
              DataSource = DatosCompra.DSCompraDTE
              FixedColor = clAqua
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnKeyPress = dbgCompraDTEKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NRO_DET'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nro DTE'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NRO_RENSPA'
                  Title.Alignment = taCenter
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 107
                  Visible = True
                end>
            end
            object edFechaFaena: TJvDBDateEdit
              Left = 291
              Top = 16
              Width = 97
              Height = 21
              TabStop = False
              DataField = 'FECHA_FAENA_AFIP'
              DataSource = DSBase
              CheckOnExit = True
              Flat = False
              ParentFlat = False
              ButtonWidth = 24
              ShowNullDate = False
              TabOrder = 1
              OnExit = dbeFechaCompraExit
              DisabledColor = clScrollBar
            end
            object edFechaRecep: TJvDBDateEdit
              Left = 291
              Top = 57
              Width = 97
              Height = 21
              TabStop = False
              DataField = 'FECHA_RECEP_AFIP'
              DataSource = DSBase
              CheckOnExit = True
              Flat = False
              ParentFlat = False
              ButtonWidth = 24
              ShowNullDate = True
              TabOrder = 2
              OnExit = dbeFechaCompraExit
              DisabledColor = clScrollBar
            end
          end
        end
      end
      object PagImpuestos: TTabSheet
        Caption = 'Impuestos'
        ImageIndex = 1
        object Bevel9: TBevel
          Left = 280
          Top = 216
          Width = 98
          Height = 21
        end
        object Bevel4: TBevel
          Left = 279
          Top = 44
          Width = 98
          Height = 21
        end
        object Bevel3: TBevel
          Left = 280
          Top = 170
          Width = 98
          Height = 21
        end
        object Label6: TLabel
          Left = 169
          Top = 91
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
          Left = 168
          Top = 2
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
          Left = 168
          Top = 125
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
        object Label20: TLabel
          Left = 168
          Top = 147
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
          Left = 279
          Top = 0
          Width = 98
          Height = 21
        end
        object Bevel22: TBevel
          Left = 280
          Top = 126
          Width = 98
          Height = 21
        end
        object Bevel28: TBevel
          Left = 280
          Top = 148
          Width = 98
          Height = 21
        end
        object DBText1: TDBText
          Left = 285
          Top = 2
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
        object DBText7: TDBText
          Left = 288
          Top = 128
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
          Left = 288
          Top = 150
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
          Left = 168
          Top = 24
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
          Left = 279
          Top = 22
          Width = 98
          Height = 21
        end
        object DBText3: TDBText
          Left = 284
          Top = 24
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
        object dbtTotalFinal: TDBText
          Left = 497
          Top = 219
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
        object Label2: TLabel
          Left = 441
          Top = 217
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
          Left = 400
          Top = 0
          Width = 9
          Height = 213
          Shape = bsLeftLine
        end
        object DBText2: TDBText
          Left = 288
          Top = 172
          Width = 89
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
        object Label3: TLabel
          Left = 168
          Top = 170
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
        object DBText4: TDBText
          Left = 285
          Top = 46
          Width = 89
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
        object Label4: TLabel
          Left = 168
          Top = 47
          Width = 65
          Height = 16
          Caption = 'Monotrib.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel5: TBevel
          Left = 159
          Top = 116
          Width = 225
          Height = 9
          Shape = bsTopLine
        end
        object Label5: TLabel
          Left = 168
          Top = 192
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
        object Bevel7: TBevel
          Left = 280
          Top = 192
          Width = 98
          Height = 21
        end
        object DBText8: TDBText
          Left = 288
          Top = 194
          Width = 89
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
        object Label7: TLabel
          Left = 169
          Top = 71
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
          Left = 279
          Top = 66
          Width = 98
          Height = 21
        end
        object DBText9: TDBText
          Left = 287
          Top = 69
          Width = 89
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
        object RxLabel2: TJvLabel
          Left = 416
          Top = 73
          Width = 100
          Height = 13
          Caption = 'Percepciones de Iva'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel3: TJvLabel
          Left = 416
          Top = 132
          Width = 90
          Height = 13
          Caption = 'Percepciones IIBB'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel4: TJvLabel
          Left = 416
          Top = 0
          Width = 17
          Height = 13
          Caption = 'Iva'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object Label45: TLabel
          Left = 168
          Top = 216
          Width = 96
          Height = 16
          Caption = 'Reten. de IVA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText15: TDBText
          Left = 288
          Top = 218
          Width = 88
          Height = 16
          Alignment = taRightJustify
          DataField = 'RETENCION_IVA'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbgPrecepcionIVA: TDBGrid
          Left = 416
          Top = 89
          Width = 295
          Height = 40
          TabStop = False
          Color = clMenu
          DataSource = DatosCompra.DSPercepcionIVA
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
          Left = 221
          Top = 89
          Width = 47
          Height = 21
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 0
        end
        object dbgPercepcionIB: TDBGrid
          Left = 415
          Top = 146
          Width = 420
          Height = 67
          TabStop = False
          Color = clMenu
          DataSource = DatosCompra.DSPercepcionIB
          Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgPercepcionIBColEnter
          OnEditButtonClick = dbgPercepcionIBEditButtonClick
          OnKeyDown = dbgPercepcionIBKeyDown
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO_PERCEPCION'
              Title.Caption = 'id.Perc'
              Width = 50
              Visible = True
            end
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
            end
            item
              Expanded = False
              FieldName = 'JURIDICION'
              Title.Caption = 'Jur.'
              Visible = True
            end>
        end
        object dbgIva: TDBGrid
          Left = 415
          Top = 14
          Width = 395
          Height = 57
          TabStop = False
          Color = clMenu
          DataSource = DatosCompra.DSImpuestos
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
              ReadOnly = True
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
        object edDsctoImporte: TDBEdit
          Left = 279
          Top = 89
          Width = 98
          Height = 21
          DataField = 'DSTOIMPORTE'
          DataSource = DSBase
          TabOrder = 4
        end
      end
      object PagNroSeries: TTabSheet
        Caption = 'Nro.Series'
        ImageIndex = 2
        object dbtCantidad: TDBText
          Left = 456
          Top = 192
          Width = 65
          Height = 17
          Alignment = taRightJustify
          DataField = 'Cantidad'
        end
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
        object DBStatusLabel2: TJvDBStatusLabel
          Left = 648
          Top = 192
          Width = 85
          Height = 13
          DataSetName = ' '
          DataSource = DatosCompra.DSCompraSubDetalle
          Style = lsRecordNo
          ShowOptions = doGlyph
          ShadowPos = spLeftTop
          Transparent = True
        end
        object Label19: TLabel
          Left = 521
          Top = 191
          Width = 32
          Height = 13
          Caption = 'SERIE'
        end
        object lbCargaLote: TLabel
          Left = 378
          Top = 211
          Width = 67
          Height = 13
          Cursor = crHandPoint
          Caption = 'Cargar Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = lbCargaLoteClick
        end
        object dbgDetalleCompra: TDBGrid
          Left = 10
          Top = 2
          Width = 360
          Height = 208
          DataSource = DatosCompra.DSCompraDet
          DefaultDrawing = False
          DrawingStyle = gdsGradient
          FixedColor = clFuchsia
          GradientEndColor = clFuchsia
          GradientStartColor = clFuchsia
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
              FieldName = 'CODIGOARTICULO'
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
          Left = 376
          Top = 3
          Width = 337
          Height = 182
          Color = clWhite
          DataSource = DatosCompra.DSCompraSubDetalle
          DrawingStyle = gdsGradient
          FixedColor = clMoneyGreen
          GradientEndColor = clMoneyGreen
          GradientStartColor = clMoneyGreen
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
      object pagLotes: TTabSheet
        Caption = 'Lotes'
        ImageIndex = 3
        object dbgDetalleLotes: TDBGrid
          Left = 3
          Top = 2
          Width = 518
          Height = 208
          Ctl3D = True
          DataSource = DatosCompra.DSCompraDet
          DefaultDrawing = False
          DrawingStyle = gdsGradient
          FixedColor = clFuchsia
          GradientEndColor = clFuchsia
          GradientStartColor = clFuchsia
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
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
              Width = 414
              Visible = True
            end>
        end
        object pnLote: TPanel
          Left = 550
          Top = 11
          Width = 274
          Height = 193
          Color = clSilver
          ParentBackground = False
          TabOrder = 1
          OnExit = pnLoteExit
          object Label26: TLabel
            Left = 16
            Top = 27
            Width = 33
            Height = 13
            Caption = 'Codigo'
          end
          object Label27: TLabel
            Left = 16
            Top = 54
            Width = 30
            Height = 13
            Caption = 'Fecha'
          end
          object Label28: TLabel
            Left = 16
            Top = 81
            Width = 52
            Height = 13
            Caption = 'Fecha Vto.'
          end
          object Label29: TLabel
            Left = 16
            Top = 107
            Width = 49
            Height = 13
            Caption = 'Despacho'
          end
          object Label30: TLabel
            Left = 16
            Top = 134
            Width = 21
            Height = 13
            Caption = 'Lote'
          end
          object Label31: TLabel
            Left = 120
            Top = 5
            Width = 84
            Height = 13
            Caption = 'Datos del Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 119
            Top = 24
            Width = 121
            Height = 21
            DataField = 'CODIGO'
            DataSource = DatosCompra.DSCompLote
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TJvDBDateEdit
            Left = 119
            Top = 51
            Width = 121
            Height = 21
            DataField = 'FECHA'
            DataSource = DatosCompra.DSCompLote
            ButtonWidth = 32
            ShowNullDate = False
            TabOrder = 1
          end
          object DBEdit3: TJvDBDateEdit
            Left = 119
            Top = 77
            Width = 121
            Height = 21
            DataField = 'FECHAVTO'
            DataSource = DatosCompra.DSCompLote
            ButtonWidth = 32
            ShowNullDate = False
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 119
            Top = 130
            Width = 121
            Height = 21
            DataField = 'LOTE'
            DataSource = DatosCompra.DSCompLote
            TabOrder = 3
          end
        end
      end
      object pagGastosTributos: TTabSheet
        Caption = 'Liq.Gastos/Tributos'
        ImageIndex = 4
        object dbgTributos: TDBGrid
          Left = 3
          Top = 128
          Width = 559
          Height = 105
          Color = 16776176
          DataSource = DatosCompra.DSCompraTributos
          DrawingStyle = gdsGradient
          FixedColor = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyPress = dbgTributosKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'MUESTRATRIBUTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 321
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALICUOTA'
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
              FieldName = 'BASEIMPONIBLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 71
              Visible = True
            end>
        end
        object dbgGastos: TDBGrid
          Left = 3
          Top = 16
          Width = 559
          Height = 97
          Color = 16776176
          DataSource = DatosCompra.DSCompraGastos
          DrawingStyle = gdsGradient
          FixedColor = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyPress = dbgGastosKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'MUESTRAGASTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 311
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALICUOTA'
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
              FieldName = 'BASEIMPONIBLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end>
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 938
      Height = 193
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object dbtMuestraComprob: TDBText
        Left = 353
        Top = 17
        Width = 140
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
        Left = 684
        Top = 22
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
      object Label8: TLabel
        Left = 6
        Top = 2
        Width = 30
        Height = 13
        Caption = 'Fecha'
      end
      object Label9: TLabel
        Left = 92
        Top = 1
        Width = 95
        Height = 13
        Caption = 'Sucursal de Compra'
      end
      object Label10: TLabel
        Left = 296
        Top = 2
        Width = 102
        Height = 13
        Caption = 'Tipo de Comprobante'
      end
      object Label11: TLabel
        Left = 716
        Top = 6
        Width = 101
        Height = 13
        Caption = 'Nro. de Comprobante'
      end
      object Label12: TLabel
        Left = 6
        Top = 38
        Width = 49
        Height = 13
        Caption = 'Proveedor'
      end
      object SpeedButton2: TSpeedButton
        Left = 373
        Top = 52
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
      object dntId: TDBText
        Left = 623
        Top = 3
        Width = 79
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
      object DBText11: TDBText
        Left = 648
        Top = 22
        Width = 22
        Height = 17
        DataField = 'CLASECPBTE'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText12: TDBText
        Left = 277
        Top = 38
        Width = 111
        Height = 14
        Cursor = crHandPoint
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
      object DBText13: TDBText
        Left = 143
        Top = 39
        Width = 111
        Height = 13
        Cursor = crHandPoint
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
        Left = 404
        Top = 2
        Width = 45
        Height = 14
        Alignment = taRightJustify
        DataField = 'TIPOCOMP_AFIP'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DBText5: TDBText
        Left = 526
        Top = 2
        Width = 67
        Height = 14
        DataField = 'LOTE_AFIP'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label46: TLabel
        Left = 471
        Top = 3
        Width = 49
        Height = 13
        Caption = 'LOTE Afip'
      end
      object Label54: TLabel
        Left = 4
        Top = 178
        Width = 26
        Height = 13
        Caption = 'Obra:'
        Transparent = True
      end
      object DBText42: TDBText
        Left = 35
        Top = 178
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
      object dbeSuc: TDBEdit
        Left = 716
        Top = 19
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
        TabOrder = 4
      end
      object dbeNumero: TDBEdit
        Left = 770
        Top = 19
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
        TabOrder = 5
      end
      object dbeNombre: TDBEdit
        Left = 80
        Top = 53
        Width = 289
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'RazonSocial'
        DataSource = DSBase
        Enabled = False
        TabOrder = 7
      end
      object dbeSucursal: TDBEdit
        Left = 142
        Top = 16
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 6
      end
      object dbeFechaCompra: TJvDBDateEdit
        Left = 5
        Top = 16
        Width = 85
        Height = 21
        DataField = 'FECHACOMPRA'
        DataSource = DSBase
        CheckOnExit = True
        Flat = False
        ParentFlat = False
        ButtonWidth = 24
        ShowNullDate = False
        TabOrder = 0
        OnExit = dbeFechaCompraExit
      end
      object RxDBECodigo: TJvDBComboEdit
        Left = 5
        Top = 53
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
        OnButtonClick = RxDBECodigoButtonClick
        OnKeyDown = RxDBECodigoKeyDown
      end
      object RxDBESucursal: TJvDBComboEdit
        Left = 92
        Top = 16
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
        Top = 16
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
      object dbchNota_Credito: TDBCheckBox
        Left = 795
        Top = 176
        Width = 147
        Height = 17
        Caption = 'NC/ND por Diferencias'
        DataField = 'NC_POR_DIFERENCIA'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 642
    Width = 938
    Align = alBottom
    ButtonHeight = 27
    ExplicitTop = 642
    ExplicitWidth = 938
    inherited btConfirma: TBitBtn
      Width = 76
      Height = 27
      DoubleBuffered = True
      ExplicitWidth = 76
      ExplicitHeight = 27
    end
    inherited btNuevo: TBitBtn
      Left = 78
      Width = 74
      Height = 27
      DoubleBuffered = True
      ParentFont = False
      ExplicitLeft = 78
      ExplicitWidth = 74
      ExplicitHeight = 27
    end
    inherited btCancelar: TBitBtn
      Width = 76
      Height = 27
      DoubleBuffered = True
      ExplicitWidth = 76
      ExplicitHeight = 27
    end
    inherited btModificar: TBitBtn
      Left = 228
      Width = 74
      Height = 27
      DoubleBuffered = True
      ExplicitLeft = 228
      ExplicitWidth = 74
      ExplicitHeight = 27
    end
    inherited Pr: TSpeedButton
      Width = 20
      Height = 27
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00840000008400000084000000840000008400
        000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084840000F7CEA500F7CEA500F7CEA500F7CE
        A500848400008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084840000F7CEA500FFFFFF00FFFFFF00F7CEA500F7CEA500FFFF
        FF00FFFFFF00F7CEA5008484000084000000FF00FF00FF00FF00FF00FF008400
        000084840000F7CEA500FFFFFF00848484008484000084840000848400008484
        000084848400FFFFFF00F7CEA5008484000084000000FF00FF00FF00FF008400
        0000F7CEA500FFFFFF0084840000848400008484000084840000848400008484
        00008484000084840000FFFFFF00F7CEA50084000000FF00FF00848400008484
        0000FFFFFF00F7CEA50084840000F7CEA500F7CEA50084840000848400008484
        0000F7CEA5008484000084848400FFFFFF00848400008400000084000000A5A5
        A500FFFFFF008484000084840000F7CEA500F7CEA5008484000084848400FFFF
        FF00F7FFFF008484000084840000FFFFFF00F7CEA5008400000084000000F7CE
        A500FFFFFF008484000084840000F7CEA500F7CEA500F7CEA500FFFFFF00FFFF
        FF00F7CEA5008484000084840000F7CEA500F7CEA5008400000084840000F7CE
        A500FFFFFF008484000084840000F7CEA500F7CEA500F7CEA500FFFFFF00FFFF
        FF00F7CEA5008484000084840000F7CEA500F7CEA5008400000084840000F7CE
        A500FFFFFF00F7CEA500F7CEA500F7CEA500F7CEA5008484000084840000F7FF
        FF00F7FFFF008484000084840000FFFFFF00F7CEA50084000000848400008484
        0000FFFFFF00F7CEA500F7CEA500F7FFFF00F7CEA50084840000848400008484
        0000F7CEA50084840000A5A5A500FFFFFF008484000084000000FF00FF008484
        0000F7CEA500FFFFFF00F7CEA500F7CEA500F7CEA50084840000848400008484
        00008484000084840000FFFFFF00F7CEA50084000000FF00FF00FF00FF008484
        000084840000F7CEA500FFFFFF00F7CEA500F7CEA50084840000848400008484
        0000F7CEA500FFFFFF00F7CEA5008484000084000000FF00FF00FF00FF00FF00
        FF008484000084840000F7CEA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F7CEA5008484000084000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008484000084840000A5A5A500F7CEA500F7CEA500F7CEA500A5A5
        A500848400008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00848400008484000084840000848400008400
        000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ExplicitWidth = 20
      ExplicitHeight = 27
    end
    inherited btBuscar: TBitBtn
      Left = 322
      Width = 74
      Height = 27
      DoubleBuffered = True
      ExplicitLeft = 322
      ExplicitWidth = 74
      ExplicitHeight = 27
    end
    inherited Ne: TSpeedButton
      Left = 396
      Width = 22
      Height = 27
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00840000008400000084000000840000008400
        000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084840000F7CEA500F7CEA500F7CEA500F7CE
        A500848400008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084840000F7CEA500FFFFFF00FFFFFF00F7CEA500F7CEA500FFFF
        FF00FFFFFF00F7CEA5008484000084000000FF00FF00FF00FF00FF00FF008400
        000084840000F7CEA500FFFFFF00A5A5A5008484000084840000848400008484
        000084840000FFFFFF00F7CEA5008484000084000000FF00FF00FF00FF008400
        0000F7CEA500FFFFFF0084840000848400008484000084840000848400008484
        00008484000084840000FFFFFF00F7CEA50084000000FF00FF00840000008484
        0000FFFFFF00F7CEA50084840000FFFFFF00848400008484000084840000A5A5
        A500FFFFFF008484000084848400FFFFFF00848400008400000084000000A5A5
        A500FFFFFF008484000084840000FFFFFF00FFFFFF00A5A5A50084840000A5A5
        A500FFFFFF008484000084840000FFFFFF00F7CEA5008400000084840000F7CE
        A500FFFFFF008484000084840000FFFFFF00FFFFFF00FFFFFF00F7CEA500F7CE
        A500FFFFFF008484000084840000F7CEA500F7CEA5008400000084840000F7CE
        A500FFFFFF008484000084840000FFFFFF00FFFFFF00FFFFFF00F7CEA500F7CE
        A500FFFFFF008484000084840000F7CEA500F7CEA5008400000084840000F7CE
        A500FFFFFF00F7CEA500F7CEA500FFFFFF00FFFFFF00F7CEA50084840000F7CE
        A500FFFFFF008484000084840000FFFFFF00F7CEA50084000000848400008484
        0000FFFFFF00F7CEA500F7CEA500FFFFFF00F7CEA5008484000084840000F7CE
        A500FFFFFF0084840000A5A5A500FFFFFF008484000084000000FF00FF008484
        0000F7CEA500FFFFFF00F7CEA500F7CEA500F7CEA50084840000848400008484
        00008484000084840000FFFFFF00F7CEA50084000000FF00FF00FF00FF008484
        000084840000F7CEA500FFFFFF00F7CEA500F7CEA50084840000848400008484
        0000A5A5A500FFFFFF00F7CEA5008484000084000000FF00FF00FF00FF00FF00
        FF008484000084840000F7CEA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F7CEA5008484000084000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008484000084840000A5A5A500F7CEA500F7CEA500F7CEA500A5A5
        A500848400008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00848400008484000084840000848400008400
        000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ExplicitLeft = 396
      ExplicitWidth = 22
      ExplicitHeight = 27
    end
    inherited btBorrar: TBitBtn
      Left = 418
      Width = 74
      Height = 27
      DoubleBuffered = True
      ExplicitLeft = 418
      ExplicitWidth = 74
      ExplicitHeight = 27
    end
    inherited btSalir: TBitBtn
      Left = 492
      Width = 66
      Height = 27
      DoubleBuffered = True
      TabOrder = 7
      ExplicitLeft = 492
      ExplicitWidth = 66
      ExplicitHeight = 27
    end
    object ToolButton1: TToolButton
      Left = 558
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btAplicadas: TBitBtn
      Left = 566
      Top = 0
      Width = 90
      Height = 27
      Action = VerAplicaciones
      Caption = 'Aplicada a'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFFFFF333FFFFF3330000000033300000333377777777F337777
        7FF330EFEFEF03307333703337F3FFFF7F37733377F330F4444E033333333033
        37F777737F333333F7F33099999903333330703337F333337F33333777FF309F
        FFF903333330000337F333337F33333777733099999903333330003337F3FF3F
        7F333337773330F44E0003333330033337F7737773333337733330EFEF003333
        3330333337FFFF7733333337333330000003333333333333377777733333FFFF
        FFFF3333333333300000000333333F3333377777777F333303333330EFEFEF03
        33337F333337F3FFFF7F333003333330F4444E0333377F333337F777737F3300
        03333330EFEFEF0333777F333337F3FFFF7F300003333330F4444E0337777F33
        3337F777737F330703333330EFEFEF03337773333337F3FF3F7F330333333330
        F44E0003337FF333FF37F7737773330733370330EFEF00333377FFF77337FFFF
        7733333000003330000003333337777733377777733333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      TabOrder = 6
    end
    object btRecepciones: TBitBtn
      Left = 656
      Top = 0
      Width = 64
      Height = 27
      Action = BuscarRecepciones
      Caption = 'Recp.'
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
      TabOrder = 8
    end
    object btImprimir: TBitBtn
      Left = 720
      Top = 0
      Width = 76
      Height = 27
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
      TabOrder = 9
    end
    object spCostos: TSpeedButton
      Left = 796
      Top = 0
      Width = 24
      Height = 27
      Action = DetallesCostos
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E00FF00FF00FF00FF00FF00FF007C7C7C007C7C
        7C007C7C7C007C7C7C007C7C7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E008E8E8E008E8E8E00909090007C7C7C00D2D2
        D200CACACA00ADADAD007C7C7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E00FF00FF00FF00FF00FF00FF007B7B7B007C7C
        7C007C7C7C007B7B7B007C7C7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E00FF00FF00FF00FF00FF00FF007C7C7C007C7C
        7C007C7C7C007C7C7C007C7C7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2
        D200CACACA00ADADAD007C7C7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E00FF00FF00FF00FF00FF00FF007B7B7B007C7C
        7C007C7C7C007B7B7B007C7C7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E00FF00FF00FF00FF00FF00FF007C7C7C007C7C
        7C007C7C7C007C7C7C007C7C7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2
        D200CACACA00ADADAD007C7C7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008E8E8E00FF00FF00FF00FF00FF00FF007B7B7B007C7C
        7C007C7C7C007B7B7B007C7C7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007C7C7C00D2D2D200CACACA00ADADAD007C7C7C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007B7B7B007C7C7C007C7C7C007B7B7B007C7C7C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object spFiscalizar: TSpeedButton
      Left = 820
      Top = 0
      Width = 20
      Height = 27
      Action = Fiscalizar
      Flat = True
    end
    object spAnular: TSpeedButton
      Left = 840
      Top = 0
      Width = 20
      Height = 27
      Hint = 'Anular Liquidacion'
      Action = AnulaLiquidacion
      Caption = 'A'
      Flat = True
    end
    object spTx: TSpeedButton
      Left = 860
      Top = 0
      Width = 24
      Height = 27
      Hint = 'Generar Transferencia'
      Caption = 'T'
      Flat = True
      OnClick = spTxClick
    end
    object SpeedButton1: TSpeedButton
      Left = 884
      Top = 0
      Width = 28
      Height = 27
      Hint = 'Detalle de Medias Reses'
      Action = DetalleMediaRes
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF003F3FBCEF4040BCF0FF00FF00313192EA323294ECFF00FF00FF00FF004040
        BCF24343C5FE353599F1FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF004C4CC2ED4343C7FFFF00FF003737A0FF3737A0FFFF00FF00FF00FF004343
        C7FF4343C7FF3737A0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006363D5F84343C7FF262670B43737A0FF3737A0FFFF00FF00FF00FF004343
        C7FF4343C7FF3737A0FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF003535
        95BC7777E8FF4343C7FF4444C1FB4444C7FF4343C7FF4343C7FF4343C7FF4444
        C8FE4747C9FF4646C4FF303089ADFF00FF00FF00FF00FF00FF00FF00FF003E3E
        B0DF8181EEFF6767DEFF7E7EEDFF8B8BF4FF8F8FF7FF8F8FF7FF8F8FF7FF8C8C
        F5FF8989F3FF7E7EEDFF7171E4FF5757CCF34242C1F7FF00FF00FF00FF004242
        BEF38989F4FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
        F7FF8F8FF7FF8F8FF7FF8F8FF7FF8787F2FF5050CCF935359CC7FF00FF004343
        C4FC8E8EF6FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
        F7FF8F8FF7FF625972FF8F8FF7FF4848C4F5FF00FF00FF00FF00FF00FF004343
        C6FD8E8EF6FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
        F7FF8F8FF7FF8F8FF7FF8181EEFF4141B9EAFF00FF00FF00FF00FF00FF004040
        B7E97F7FEDFF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
        F7FF8F8FF7FF7676E7FF4949C8FC343498C1FF00FF00FF00FF00FF00FF002424
        69865252C9F38F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8C8C
        F5FF6D6DE2FE4545C8FF6C6CE1FF5F5FD5FB37379BC4FF00FF00FF00FF00FF00
        FF004444C5FA5353CDF77D7DECFF8989F4FF8989F4FF7D7DECFF6464D8FB4545
        C4F938389BC22C2C799A4242C4FA4747C3F44343C3F8FF00FF00FF00FF003D3D
        B5E9FF00FF00222266834040B6E84242C1F64242C0F43C3CA7D325256E8CFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0025257192FF00FF00FF00FF003B3B
        B0E2FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0035359DCAFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object SpeedButton3: TSpeedButton
      Left = 912
      Top = 0
      Width = 22
      Height = 27
      Action = ImportarIA
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000020000
        00090000000E0000000F00000010000000100000001100000011000000110000
        001200000012000000110000000C000000030000000000000000000000087B50
        43C0AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFAA6D59FFAA6C
        59FFAA6C59FFA96C58FF794D3FC30000000B00000000000000000000000CAD73
        5FFFFDFBF9FFFBF5F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1EDFFF8F1
        ECFFF8F0EBFFF8F0EAFFD5B6ADFF0000001100000000000000000000000CB077
        62FFFDFBFAFF7674D8FF3737D1FF3334CDFF3131CBFF2F2FC9FF2B2BC5FF2929
        C4FF2626C2FF2425BFFF2222BCFF2020BBFF1E1EB8FF14147CAD0000000BB079
        66FFFDFBFBFF3C3DD3FFFAF6F6FF3636D0FF3233CCFF3030CAFFF8F2F1FFF7F2
        EFFF6B69D1FF2526C2FFF6EEEBFF2121BCFF1F1FBBFF1D1EB9FF0000000AB37C
        69FFFEFCFBFF3E3ED4FFFBF7F6FF3738D2FF3536D0FF3232CCFFF8F4F2FF2D2E
        C7FFF7F2EFFF2728C2FFF6F0ECFF2223BDFF2121BCFF1E1EB9FF00000009B67F
        6CFFFEFDFCFF4040D7FFFBF8F7FFFBF7F6FF7574DCFF3435CDFFF9F5F2FF2F2F
        CAFFF8F3F0FF292AC4FFF6F1EEFFF6EFECFF2222BDFF2020BBFF00000009B983
        71FFFEFDFCFF4042D9FFFCF8F8FF3C3CD3FFFBF7F6FF3637D0FFFAF5F3FF3030
        CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526C2FF2323BFFF2121BCFF00000008BC88
        77FFFEFEFDFF4243D9FFFBFAF9FFFCF8F8FF7878DFFF3838D2FFFAF7F5FFFAF5
        F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2EFFFF6F0EDFF2222BDFF00000007BF8C
        7AFFFEFEFDFF7F7DE1FF4242D8FF4040D7FF3D3ED4FF3A3AD3FF3737D0FF3435
        CDFF3132CBFF2F2FC9FF2B2CC7FF292AC4FF2727C2FF181982AD00000006C18F
        7FFFFEFEFEFFFAF6F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
        EFFFFAF4EEFFFDF9F8FFDEC3BAFF0000000B000000000000000000000006C493
        82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
        F1FFFBF5F0FFFDFBF9FFBF8C7BFF0000000B000000000000000000000005C799
        85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
        F3FFFCF6F2FFFDFCFAFFC28F7FFF0000000A000000000000000000000004C99A
        89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
        FDFFFEFDFDFFFEFDFDFFC49382FF000000080000000000000000000000029775
        67C0CA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
        87FFC79887FFC89886FF927163C2000000050000000000000000000000010000
        0002000000030000000400000004000000050000000500000005000000060000
        0006000000060000000600000005000000010000000000000000}
    end
  end
  inherited Panel1: TPanel
    Top = 672
    Width = 938
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 672
    ExplicitWidth = 938
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 849
      Panels = <
        item
          Width = 640
        end
        item
          Width = 50
        end>
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 849
    end
  end
  object pcModosFacturas: TJvPageControl [3]
    Left = 397
    Top = 43
    Width = 460
    Height = 132
    ActivePage = Clasico
    TabHeight = 3
    TabOrder = 3
    ClientBorderWidth = 0
    HideAllTabs = True
    object Clasico: TTabSheet
      Caption = 'Clasico'
      TabVisible = False
      object JvGradient3: TJvGradient
        Left = 0
        Top = 0
        Width = 460
        Height = 130
        Style = grVertical
        StartColor = clBtnFace
        EndColor = clWhite
        ExplicitHeight = 131
      end
      object pnMonedaIngreso: TPanel
        Left = 322
        Top = 66
        Width = 128
        Height = 47
        ParentColor = True
        TabOrder = 1
        object lb2: TLabel
          Left = 19
          Top = 2
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
          OnClick = ActulizarCotizacionExecute
        end
        object dbtMUESTRAMONEDACPBTE3: TDBText
          Left = 9
          Top = 21
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
          OnClick = ActulizarCotizacionExecute
        end
        object dbtMUESTRASIGNOMONEDACPBTE: TDBText
          Left = 55
          Top = 21
          Width = 57
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
          OnClick = ActulizarCotizacionExecute
        end
      end
      object dbgCtroCosto: TDBGrid
        Left = 5
        Top = 33
        Width = 311
        Height = 80
        DataSource = DSCtroCosto
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentColor = True
        ParentFont = False
        TabOrder = 2
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
      object roOrdenCompra: TJvRollOut
        Left = 266
        Top = 5
        Width = 165
        Height = 22
        ButtonFont.Charset = DEFAULT_CHARSET
        ButtonFont.Color = clBlue
        ButtonFont.Height = -11
        ButtonFont.Name = 'Verdana'
        ButtonFont.Style = [fsBold]
        Caption = 'Ordenes de Compra'
        Collapsed = True
        Colors.ButtonBottom = clBackground
        Colors.ButtonColor = clBlue
        Colors.HotTrackText = clWhite
        Colors.Color = clActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnMouseMove = roOrdenCompraMouseMove
        OnCollapse = roOrdenCompraCollapse
        FAWidth = 145
        FAHeight = 124
        FCWidth = 22
        FCHeight = 22
        object dbgOCompra: TDBGrid
          Left = 2
          Top = 23
          Width = 156
          Height = 74
          Color = clMoneyGreen
          DataSource = DatosCompra.DSOrdenCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgOCompraDblClick
          OnDragDrop = dbgOCompraDragDrop
          OnDragOver = dbgOCompraDragOver
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUMERO_OC'
              Title.Alignment = taCenter
              Title.Caption = 'Nro.Cpbte'
              Width = 133
              Visible = True
            end>
        end
        object Button1: TButton
          Left = 5
          Top = 95
          Width = 152
          Height = 23
          Action = LstOCompra
          TabOrder = 1
        end
      end
      object roAplicaciones: TJvRollOut
        AlignWithMargins = True
        Left = 30
        Top = 5
        Width = 232
        Height = 22
        ButtonFont.Charset = DEFAULT_CHARSET
        ButtonFont.Color = clBlue
        ButtonFont.Height = -11
        ButtonFont.Name = 'Arial'
        ButtonFont.Orientation = 3
        ButtonFont.Style = [fsBold]
        ButtonFont.Quality = fqAntialiased
        Caption = 'Pagos Aplicados'
        ChildOffset = 10
        Collapsed = True
        Colors.ButtonBottom = clSilver
        Colors.ButtonColor = clGreen
        Colors.HotTrackText = clWhite
        Colors.Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        SmartExpand = False
        SmartShow = False
        TabOrder = 0
        FAWidth = 145
        FAHeight = 116
        FCWidth = 22
        FCHeight = 22
        object JvDBGrid1: TJvDBGrid
          Left = 3
          Top = 22
          Width = 225
          Height = 89
          Color = clWhite
          DataSource = DatosCompra.DSAplicaciones
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = datosBGrid1DblClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 16
          TitleRowHeight = 17
          WordWrapAllFields = True
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMEROCPBTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Width = 78
              Visible = True
            end>
          Delphi2010OptionsMigrated = True
        end
      end
    end
    object Liquidacion: TTabSheet
      Caption = 'Liquidacion'
      ImageIndex = 1
      TabVisible = False
      object JvGradient5: TJvGradient
        Left = 0
        Top = 0
        Width = 460
        Height = 130
        Style = grVertical
        StartColor = clBtnFace
        EndColor = clWhite
        ExplicitHeight = 131
      end
      object Label34: TLabel
        Left = 344
        Top = 37
        Width = 95
        Height = 13
        Caption = 'Nro.Renspa Recep.'
        OnDblClick = Label34DblClick
      end
      object Label35: TLabel
        Left = 3
        Top = 72
        Width = 85
        Height = 13
        Caption = 'Lugar Realizacion'
      end
      object Label36: TLabel
        Left = 3
        Top = 36
        Width = 54
        Height = 13
        Caption = 'Cod.Motivo'
      end
      object Label37: TLabel
        Left = 3
        Top = -1
        Width = 109
        Height = 13
        Caption = 'Cod.Caracter Receptor'
      end
      object Label38: TLabel
        Left = 226
        Top = 72
        Width = 60
        Height = 13
        Caption = 'Ruca Emisor'
        OnDblClick = Label38DblClick
      end
      object Label39: TLabel
        Left = 344
        Top = 72
        Width = 64
        Height = 13
        Caption = 'Ruca Recep.'
        OnDblClick = Label39DblClick
      end
      object Label42: TLabel
        Left = 226
        Top = 36
        Width = 91
        Height = 13
        Caption = 'Nro.Renspa Emisor'
        OnDblClick = Label42DblClick
      end
      object lbAjusteLiq: TLabel
        Left = 370
        Top = 11
        Width = 81
        Height = 20
        Caption = 'Ajuste Liq'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object edRenspaRecp: TJvDBMaskEdit
        Left = 344
        Top = 50
        Width = 113
        Height = 21
        DataField = 'NRO_RENSPA_RECEP'
        DataSource = DSBase
        DisabledColor = clScrollBar
        MaxLength = 17
        TabOrder = 1
        EditMask = '00.000.0.00000/AA'
      end
      object edLugar: TDBEdit
        Left = 3
        Top = 87
        Width = 215
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'LUGAR_REALIZA_AFIP'
        DataSource = DSBase
        TabOrder = 2
      end
      object edRucaEmisor: TJvDBMaskEdit
        Left = 226
        Top = 87
        Width = 100
        Height = 21
        DataField = 'NRO_RUCA_EMISOR_AFIP'
        DataSource = DSBase
        DisabledColor = clScrollBar
        TabOrder = 3
        EditMask = ''
      end
      object edRucaRec: TJvDBMaskEdit
        Left = 344
        Top = 87
        Width = 100
        Height = 21
        DataField = 'NRO_RUCA_RECEPTOR_AFIP'
        DataSource = DSBase
        DisabledColor = clScrollBar
        TabOrder = 4
        EditMask = ''
      end
      object edRenspaEmisor: TJvDBMaskEdit
        Left = 226
        Top = 51
        Width = 111
        Height = 21
        DataField = 'NRO_RENSPA_EMISOR'
        DataSource = DSBase
        DisabledColor = clScrollBar
        MaxLength = 17
        TabOrder = 0
        EditMask = '00.000.0.00000/AA'
      end
      object cbCaracterRec: TJvDBLookupCombo
        Left = 6
        Top = 13
        Width = 330
        Height = 21
        DropDownWidth = 300
        DisplayAllFields = True
        DataField = 'COD_CARACT_RECP_AFIP'
        DataSource = DSBase
        LookupField = 'CODIGO'
        LookupDisplay = 'CODIGO;DESCRIPCION'
        LookupSource = DatosCompra.DSCaracterRecepAFIP
        TabOrder = 5
        OnChange = cbCaracterRecChange
        OnEnter = cbCaracterRecEnter
      end
      object cbMotivo: TJvDBLookupCombo
        Left = 6
        Top = 50
        Width = 164
        Height = 21
        DropDownWidth = 300
        DisplayAllFields = True
        DataField = 'COD_MOTIVO_AFIP'
        DataSource = DSBase
        LookupField = 'CODIGO'
        LookupDisplay = 'CODIGO;DESCRIPCION'
        LookupSource = DatosCompra.DSMotivosAFIP
        TabOrder = 6
        OnChange = cbMotivoChange
      end
    end
  end
  object pcModoFactura_2: TJvPageControl [4]
    Left = 1
    Top = 78
    Width = 396
    Height = 97
    ActivePage = pagStandar
    MultiLine = True
    TabOrder = 4
    TabPosition = tpLeft
    ClientBorderWidth = 0
    object pagStandar: TTabSheet
      Caption = 'pagStandar'
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabVisible = False
      object Label13: TLabel
        Left = 7
        Top = 3
        Width = 101
        Height = 13
        Caption = 'Condicion de Compra'
        Transparent = True
      end
      object Label14: TLabel
        Left = 7
        Top = 46
        Width = 42
        Height = 13
        Caption = 'Dep'#243'sito'
        Transparent = True
      end
      object Label15: TLabel
        Left = 239
        Top = 46
        Width = 60
        Height = 13
        Caption = 'Fecha Fiscal'
        Transparent = True
      end
      object Label18: TLabel
        Left = 239
        Top = 3
        Width = 106
        Height = 13
        Caption = 'Fecha de Vencimiento'
        Transparent = True
      end
      object dbeCondCompra: TDBEdit
        Left = 57
        Top = 20
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRACONDCOMPRA'
        DataSource = DSBase
        Enabled = False
        TabOrder = 1
      end
      object dbeDeposito: TDBEdit
        Left = 57
        Top = 63
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRADEPOSITO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 4
      end
      object dbeFechaFiscal: TJvDBDateEdit
        Left = 239
        Top = 63
        Width = 97
        Height = 21
        DataField = 'FECHAFISCAL'
        DataSource = DSBase
        CheckOnExit = True
        Flat = False
        ParentFlat = False
        ButtonWidth = 24
        ShowNullDate = False
        TabOrder = 5
        OnEnter = dbeFechaFiscalEnter
        OnExit = dbeFechaFiscalExit
      end
      object dbeFechaVencimiento: TJvDBDateEdit
        Left = 239
        Top = 20
        Width = 97
        Height = 21
        TabStop = False
        DataField = 'FECHAVTO'
        DataSource = DSBase
        CheckOnExit = True
        Flat = False
        ParentFlat = False
        ButtonWidth = 24
        ShowNullDate = False
        TabOrder = 2
      end
      object RxDBECondCompra: TJvDBComboEdit
        Left = 6
        Top = 20
        Width = 45
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'CondicionCompra'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 0
        OnButtonClick = BuscarCondCompraExecute
        OnKeyDown = RxDBECondCompraKeyDown
      end
      object RxDBEDeposito: TJvDBComboEdit
        Left = 6
        Top = 63
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
        TabOrder = 3
        OnButtonClick = BuscarDepositoExecute
        OnKeyDown = RxDBEDepositoKeyDown
      end
    end
    object pagLiquidacion: TTabSheet
      Caption = 'pagLiquidacion'
      DoubleBuffered = False
      ImageIndex = 1
      ParentDoubleBuffered = False
      TabVisible = False
      object JvGradient4: TJvGradient
        Left = 0
        Top = 0
        Width = 396
        Height = 97
        Style = grVertical
        StartColor = clBtnFace
        EndColor = clWhite
      end
      object Label32: TLabel
        Left = 5
        Top = 37
        Width = 96
        Height = 13
        Caption = 'Cod.Caracter Emisor'
        Transparent = True
      end
      object Label33: TLabel
        Left = 5
        Top = 1
        Width = 73
        Height = 13
        Caption = 'Tipo Operacion'
        Transparent = True
      end
      object Label43: TLabel
        Left = 5
        Top = 77
        Width = 85
        Height = 13
        Caption = 'Cuit Autori. Emisor'
        Transparent = True
        OnDblClick = Label43DblClick
      end
      object Label44: TLabel
        Left = 191
        Top = 77
        Width = 89
        Height = 13
        Caption = 'Cuit Autori. Recep.'
        Transparent = True
        OnDblClick = Label44DblClick
      end
      object edCuitAutorizadoEmis: TJvDBMaskEdit
        Left = 95
        Top = 73
        Width = 81
        Height = 21
        DataField = 'CUIT_AUTORIZADO'
        DataSource = DSBase
        DisabledColor = clScrollBar
        MaxLength = 13
        TabOrder = 0
        EditMask = '00-00000000-0;1'
      end
      object edCuitAutorizadoRec: TJvDBMaskEdit
        Left = 286
        Top = 73
        Width = 80
        Height = 21
        DataField = 'CUIT_AUTORIZADO_RECEP'
        DataSource = DSBase
        DisabledColor = clScrollBar
        MaxLength = 13
        TabOrder = 1
        EditMask = '00-00000000-0;1'
      end
      object cbCodOperacion: TJvDBLookupCombo
        Left = 5
        Top = 16
        Width = 361
        Height = 21
        DropDownWidth = 300
        DisplayAllFields = True
        DataField = 'COD_OPERACION_AFIP'
        DataSource = DSBase
        LookupField = 'CODIGO'
        LookupDisplay = 'CODIGO;DESCRIPCION'
        LookupSource = DatosCompra.DSOperacionesAFIP
        TabOrder = 2
        OnEnter = cbCodOperacionEnter
      end
      object cbCaracterEmisor: TJvDBLookupCombo
        Left = 5
        Top = 49
        Width = 361
        Height = 21
        DropDownWidth = 300
        DisplayAllFields = True
        DataField = 'COD_CARACT_EMIS_AFIP'
        DataSource = DSBase
        LookupField = 'CODIGO'
        LookupDisplay = 'CODIGO;DESCRIPCION'
        LookupSource = DatosCompra.DSCaracterEmisorAFIP
        TabOrder = 3
        OnChange = cbCaracterEmisorChange
        OnEnter = cbCaracterEmisorEnter
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 764
    Top = 280
    object BuscarProveedor: TAction [10]
      Caption = 'BuscarProveedor'
      OnExecute = BuscarProveedorExecute
    end
    object BuscarSucursal: TAction [11]
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarDeposito: TAction [12]
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarCondCompra: TAction [13]
      Caption = 'BuscarCondCompra'
      OnExecute = BuscarCondCompraExecute
    end
    object BuscarArticulo: TAction [14]
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarTipoCpbte: TAction [15]
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object VerAplicaciones: TAction [16]
      Caption = 'Aplicada a'
      ShortCut = 16449
      OnExecute = VerAplicacionesExecute
    end
    object AgregarProveedor: TAction [17]
      Hint = 'Agregar Proveedor Nuevo'
      OnExecute = AgregarProveedorExecute
    end
    object BuscarRecepciones: TAction [18]
      Caption = 'Recp.'
      ShortCut = 16466
      OnExecute = BuscarRecepcionesExecute
    end
    object ModificarNro: TAction [19]
      Caption = 'Modificar Nro'
      ShortCut = 16462
      OnExecute = ModificarNroExecute
    end
    object LstOCompra: TAction [20]
      Caption = 'Lst O. de Compra'
      OnExecute = LstOCompraExecute
    end
    object ActulizarCotizacion: TAction [21]
      Caption = 'Actulizar Cotizacion'
      OnExecute = ActulizarCotizacionExecute
    end
    object ActualizaCotizacionDetalle: TAction [22]
      Caption = 'ActualizaCotizacionDetalle'
      OnExecute = ActualizaCotizacionDetalleExecute
    end
    object GravarCambiosDetalles: TAction [23]
      Caption = 'Gravar Cambios Detalles'
      ShortCut = 57415
      OnExecute = GravarCambiosDetallesExecute
    end
    object ReCalcular: TAction [24]
      Caption = 'ReCalcular'
      ShortCut = 49234
      OnExecute = ReCalcularExecute
    end
    object ForzarModificar: TAction [25]
      Caption = 'Forzar Modificar'
      ShortCut = 49229
      OnExecute = ForzarModificarExecute
    end
    object BorraAplicacionesNC: TAction [26]
      Caption = 'Borrar Aplicaciones NC'
      ShortCut = 49217
      OnExecute = BorraAplicacionesNCExecute
    end
    object CambiaCodigo: TAction [27]
      Caption = 'Cambia Codigo Proveedor'
      ShortCut = 49219
      OnExecute = CambiaCodigoExecute
    end
    object BorrarAplicaciones: TAction [28]
      Caption = 'Borrar Aplicaciones'
      ShortCut = 49236
      OnExecute = BorrarAplicacionesExecute
    end
    object CambiarClaseCpbte: TAction [29]
      Caption = 'Cambiar Clase de Cpbte'
      ShortCut = 16468
      OnExecute = CambiarClaseCpbteExecute
    end
    object DetallesCostos: TAction [30]
      Hint = 'Muestra Asignaciones de Ctros de Costos'
      ShortCut = 16465
      OnExecute = DetallesCostosExecute
    end
    object Imprimir: TAction [31]
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object CambiarFechaFiscal: TAction [32]
      Caption = 'Cambiar Fecha Fiscal'
      OnExecute = CambiarFechaFiscalExecute
    end
    object BuscarPorReferencia: TAction [33]
      Caption = 'BuscarPorReferencia'
      ShortCut = 32781
      OnExecute = BuscarPorReferenciaExecute
    end
    object LibroIva: TAction [34]
      Caption = 'Aplicar Libro Iva'
      ShortCut = 16457
      OnExecute = LibroIvaExecute
    end
    object CleanBuffer: TAction [35]
      Caption = 'Limpiar Buffer'
      ShortCut = 16460
      OnExecute = CleanBufferExecute
    end
    object Fiscalizar: TAction [36]
      Caption = 'F'
      OnExecute = FiscalizarExecute
    end
    object AnulaLiquidacion: TAction [37]
      Caption = 'AnulaLiquidacion'
      OnExecute = AnulaLiquidacionExecute
    end
    object Duplicar: TAction [38]
      Caption = 'Duplicar'
      OnExecute = DuplicarExecute
    end
    object PasarCtaCte: TAction [39]
      Caption = 'Pasar o sacra de CtaCte'
      OnExecute = PasarCtaCteExecute
    end
    object GenerarRetencionIVA: TAction [40]
      Caption = 'Generar Retencion IVA'
      ShortCut = 16466
      OnExecute = GenerarRetencionIVAExecute
    end
    object ImprimirEtiquetas: TAction [41]
      Caption = 'Imprimir Etiquetas'
      OnExecute = ImprimirEtiquetasExecute
    end
    object RestaurarCAE: TAction [42]
      Caption = 'Restaurar CAE Compra Direc.'
      OnExecute = RestaurarCAEExecute
    end
    object BorrarCAE: TAction [43]
      Caption = 'Borrar CAE'
      OnExecute = BorrarCAEExecute
    end
    object GenerarTx: TAction [44]
      Caption = 'Generar Transferencia'
      ShortCut = 49236
      OnExecute = GenerarTxExecute
    end
    object CambiarDeposito: TAction [45]
      Caption = 'Cambiar Deposito'
      OnExecute = CambiarDepositoExecute
    end
    object CopiarDetalle: TAction [46]
      Caption = 'Copiar Detalle'
      ShortCut = 49219
      OnExecute = CopiarDetalleExecute
    end
    object PegarDetalle: TAction [47]
      Caption = 'PegarDetalle'
      ShortCut = 49238
      OnExecute = PegarDetalleExecute
    end
    object RevisaTasaIva: TAction [48]
      Caption = 'Revisa Tasa Iva'
      OnExecute = RevisaTasaIvaExecute
    end
    object PasaDetallesAStock: TAction [49]
      Caption = 'Actualizar Detalles de Articulos a Stock'
      OnExecute = PasaDetallesAStockExecute
    end
    object CopiarDetallePortaPapeles: TAction
      Caption = 'Copiar Detalle Porta Papeles de Windows'
      OnExecute = CopiarDetallePortaPapelesExecute
    end
    object ExportarExcelCSV: TAction
      Caption = 'Exportar Detalle a CSV/Excel'
      OnExecute = ExportarExcelCSVExecute
    end
    object GenerarAjusteInventario: TAction
      Caption = 'Generar Ajuste de Inventario'
      OnExecute = GenerarAjusteInventarioExecute
    end
    object DetalleMediaRes: TAction
      Hint = 'Detalles de Medias reses'
      ImageIndex = 11
      OnExecute = DetalleMediaResExecute
    end
    object AsignarObra: TAction
      Caption = 'Asignar Obra'
      ShortCut = 16463
      OnExecute = AsignarObraExecute
    end
    object CambiarFechaVencimento: TAction
      Caption = 'Cambiar Fecha Vencimento'
      OnExecute = CambiarFechaVencimentoExecute
    end
    object ImportarIA: TAction
      Hint = 'Importar Factura de IA'
      ImageIndex = 10
      OnExecute = ImportarIAExecute
    end
    object PasarND_NCAjuste: TAction
      Caption = 'Pasar ND/NC Ajuste'
      OnExecute = PasarND_NCAjusteExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosCompra.CDSCompraCab
    Left = 528
    Top = 72
  end
  inherited ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 216
    Top = 32
    Bitmap = {
      494C01010E001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000FF000000FF000000FF000000DC0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005B5B5BFF5A5A5AFF5A5A5AFF5B5B5BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006C6C6CFF6C6C6CFF545454FF6C6C6CFF6C6C6CFF6C6C6CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000080000000FF00000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000008F5C5C5CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6D6D6DFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D6D6DFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF696969FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000607CC1FF000000FF4F67ADFF4F67ADFF324064FF607CC1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000A50000004E000000FF0000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020305FF5F7BC1FF000102FF4F67ADFF4F67ADFF030407FF607CC1FF0000
      00FE000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000FF0000000000000000000000FF000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000607CC1FF607CC1FF40538CFF4F67ADFF4F67ADFF04060AFF607CC1FF607C
      C1FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000FF0000000000000000000000FF000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0086575757FF607CC1FF4F67ADFF4F67ADFF4F67ADFF495F9FFF627EC4FF0606
      06FF000000000000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000F50000000000000000000000FF000000670000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000101523FF4F67ADFF0000
      00FF607CC1FF607CC2FF4F67ADFF4F67ADFF4F67ADFF4B62A4FF607CC1FF607C
      C1FF242F4FFF4F67ADFF04060AFF0000000000000000000000FF000000000000
      0000000000FF000000FF00000000000000000000000000000000000000FF0000
      00FF0000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F67ADFF4F67ADFF4F67ADFF5069
      B0FF607CC1FF4F67ADFF4F67ADFF4F67ADFF4F67ADFF4F67ADFF495F9FFF607C
      C1FF4F67ADFF4F67ADFF4F67ADFF4F67ADFF00000000000000FF000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F67ADFF4F67ADFF4F67
      ADFF4F67ADFF4F67ADFF4F67ADFF4F67ADFF4F67ADFF4F67ADFF4F67ADFF495F
      9FFF4F67ADFF4F67ADFF4F67ADFF0000000000000000000000FF000000FF0000
      00FF000000FF0000006000000000000000000000000000000000000000FF0000
      00B4000000FF000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F2FF4F67ADFF4F67ADFF4F67ADFF4F67ADFF4F67ADFF4F67ADFF4F67ADFF495F
      9FFFF0F0F2FF00000000000000000000000000000000000000FF000000000000
      000000000000000000FF00000000000000000000000000000000000000FF0000
      00000000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F2FFF0F0
      F2FFF0F0F2FF4F67ADFF4F67ADFF4F67ADFF4F67ADFF4F67ADFF495F9FFFF0F0
      F2FFF0F0F2FFF0F0F2FF0000000000000000000000FF00000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FFF0F0F2FF0000
      0000000000000000000000000019000000FF000000FF00000004000000000000
      000000000000F0F0F2FF000000ED00000000000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008400FF008400FF008400FF008400FF008400FF008400FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484FF848484FF0000000000000000848484FF848484FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      00FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF0084
      00FF008400FF0000000000000000000000000000000000000000000000008484
      84FFA5A5A5FFA5A5A5FF848484FF848484FF848484FFF7FFFFFF848484FF8484
      84FF848484FF0000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007B7B7BFF7B7B7BFF7B7B7BFF7B7B
      7BFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009C3A0BFF9C3A0BFF9C3A0BFF9C3A
      0BFF9C3A0BFF0000000000000000000000000000000000000000008400FF0084
      00FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF0084
      00FF008400FF008400FF00000000000000000000000000000000848484FFC6DE
      C6FFA5A5A5FFA5A5A5FFA5A5A5FF000000FF000000FF848484FFC6C6C6FFF7FF
      FFFFC6C6C6FF848484FF848484FF848484FF0000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF909090FF7B7B7BFFD2D2D2FFCACACAFFADAD
      ADFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FFCC6701FFCC6701FFCD6803FF9C3A0BFFF89A94FFEBA15DFFDA84
      2BFF9C3A0BFF00000000000000000000000000000000008400FF008400FF0084
      00FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF0084
      00FF008400FF008400FF008400FF0000000000000000848484FFC6DEC6FFC6C6
      C6FF848484FF848484FF848484FF000000FF000000FF000000FF000000FF0000
      00FF848484FFC6C6C6FF848484FF000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007A7A7AFF7B7B7BFF7B7B7BFF7A7A
      7AFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009B390BFF9C3A0BFF9C390BFF9B39
      0BFF9C3A0BFF00000000000000000000000000000000008400FF008484FF0084
      84FF008400FF008400FF008400FFF7FFFFFFF7FFFFFF848484FF008400FF0084
      00FF008400FF008400FF008400FF00000000848484FFC6C6C6FFC6C6C6FF8484
      84FFC6DEC6FFC6C6C6FFC6C6C6FFA5A5A5FFA5A5A5FF848484FF848484FF0000
      00FF000000FF000000FF848484FF848484FF0000000000000000000000000000
      00008E8E8EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008400FF008400FF008484FF0084
      84FF008400FF008400FF008400FFC6DEC6FFFFFFFFFFF7FFFFFF848484FF0084
      00FF008400FF008400FF008400FF008400FF848484FFC6C6C6FF848484FFF7FF
      FFFFFFFFFFFFFFFFFFFFF7FFFFFFC6DEC6FFC6DEC6FFC6C6C6FFC6C6C6FFA5A5
      A5FF848484FF848484FF848484FF848484FF0000000000000000000000000000
      00008E8E8EFF0000000000000000000000007B7B7BFF7B7B7BFF7B7B7BFF7B7B
      7BFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009C3A0BFF9C3A0BFF9C3A0BFF9C3A
      0BFF9C3A0BFF000000000000000000000000008400FF008484FF008484FF0084
      84FF008400FF008400FF008400FF008400FFA5A5A5FFFFFFFFFFF7FFFFFF8484
      84FF008400FF008400FF008400FF008400FF848484FF848484FFFFFFFFFFFFFF
      FFFFFFFFFFFFC6DEC6FFA5A5A5FFA5A5A5FFA5A5A5FFC6C6C6FFC6DEC6FFC6DE
      C6FFC6C6C6FFC6C6C6FF848484FF848484FF0000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF7B7B7BFFD2D2D2FFCACACAFFADAD
      ADFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FFCC6701FFCC6701FFCC6701FF9C3A0BFFF89A94FFEBA15DFFDA84
      2BFF9C3A0BFF000000000000000000000000008400FF008484FF008484FFC6DE
      C6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FFFFFFFFFFFFFFFFFFF7FF
      FFFFA5A5A5FF008400FF008400FF008400FF00000000848484FF848484FFF7FF
      FFFFA5A5A5FF848484FF848484FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5
      A5FFC6C6C6FFC6DEC6FFC6C6C6FF848484FF0000000000000000000000000000
      00008E8E8EFF0000000000000000000000007A7A7AFF7B7B7BFF7B7B7BFF7A7A
      7AFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009B390BFF9C3A0BFF9C390BFF9B39
      0BFF9C3A0BFF000000000000000000000000008400FF848484FF848484FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC6DEC6FF008400FF008400FF008400FF0000000000000000000000008484
      84FFA5A5A5FF848484FF848484FF848484FF848484FF848484FF848484FFA5A5
      A5FFC6C6C6FFC6C6C6FF848484FF000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008400FFA5A5A5FFA5A5A5FFA5A5
      A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFC6DEC6FFFFFFFFFFFFFFFFFFC6DE
      C6FF008484FF008400FF008400FF008400FF0000000000000000000000000000
      0000A5A5A5FFF7CEA5FFF7CEA5FFF7CEA5FFA5A5A5FFA5A5A5FFA5A5A5FF8484
      84FF848484FF848484FF00000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007B7B7BFF7B7B7BFF7B7B7BFF7B7B
      7BFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009C3A0BFF9C3A0BFF9C3A0BFF9C3A
      0BFF9C3A0BFF000000000000000000000000008400FF848484FFC6DEC6FF0084
      84FF008484FF008484FF008484FFA5A5A5FFF7FFFFFFFFFFFFFFC6DEC6FF0084
      84FF008400FF008400FF008400FF008400FF0000000000000000000000000000
      0000A5A5A5FFF7CEA5FFF7CEA5FFF7CEA5FFF7CEA5FFF7CEA5FFA5A5A5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF7B7B7BFFD2D2D2FFCACACAFFADAD
      ADFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FFCC6701FFCC6701FFCC6701FF9C3A0BFFF89A94FFEBA15DFFDA84
      2BFF9C3A0BFF00000000000000000000000000000000008400FFC6DEC6FFC6DE
      C6FF008484FF008484FF848484FFF7FFFFFFFFFFFFFFC6DEC6FF008484FF0084
      84FF008400FF00FF00FF008400FF00000000000000000000000000000000A5A5
      A5FFF7CEA5FFF7CEA5FFF7CEA5FFF7CEA5FFF7CEA5FFA5A5A5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007A7A7AFF7B7B7BFF7B7B7BFF7A7A
      7AFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009B390BFF9C3A0BFF9C390BFF9B39
      0BFF9C3A0BFF00000000000000000000000000000000008400FFA5A5A5FFF7FF
      FFFFC6DEC6FF008484FF008484FFC6DEC6FFC6DEC6FF008484FF008484FF0084
      84FF00FF00FF008400FF008400FF00000000000000000000000000000000A5A5
      A5FFF7FFFFFFF7CEA5FFF7CEA5FFF7CEA5FFF7CEA5FFA5A5A5FF000000000000
      00000000000000000000000000000000000000000000000000007B7B7BFF7B7B
      7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3A0BFF9C3A
      0BFF9C3A0BFF9C3A0BFF9C3A0BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400FFA5A5
      A5FFF7FFFFFFC6DEC6FFA5A5A5FF848484FF848484FF848484FF848484FF0084
      84FF008484FF008400FF00000000000000000000000000000000A5A5A5FFFFFF
      FFFFFFFFFFFFF7FFFFFFF7CEA5FFF7CEA5FFF7CEA5FFA5A5A5FF000000000000
      00000000000000000000000000000000000000000000000000007B7B7BFFD2D2
      D2FFCACACAFFADADADFF7B7B7BFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3A0BFFF89A
      94FFEBA15DFFDA842BFF9C3A0BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      00FF008400FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FFA5A5A5FF0084
      84FF008484FF0000000000000000000000000000000000000000A5A5A5FFA5A5
      A5FFA5A5A5FFF7FFFFFFF7CEA5FFF7CEA5FFA5A5A5FF00000000000000000000
      00000000000000000000000000000000000000000000000000007A7A7AFF7B7B
      7BFF7B7B7BFF7A7A7AFF7B7B7BFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B390BFF9C3A
      0BFF9C390BFF9B390BFF9C3A0BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008484FF008400FF008400FF008400FF008400FF008484FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A5FFA5A5A5FFA5A5A5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000084FF000084FF000084FF000084FF000084FF000084FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000840000FF840000FF840000FF840000FF840000FF840000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000840000FF840000FF840000FF840000FF840000FF840000FF0000
      0000000000000000000000000000000000000000000000000000008400FF0084
      00FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FF0084
      00FF008400FF0000000000000000000000000000000000000000000000000000
      84FF000084FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      84FF000084FF0000000000000000000000000000000000000000000000008400
      00FF840000FF848400FFF7CEA5FFF7CEA5FFF7CEA5FFF7CEA5FF848400FF8400
      00FF840000FF0000000000000000000000000000000000000000000000008400
      00FF840000FF848400FFF7CEA5FFF7CEA5FFF7CEA5FFF7CEA5FF848400FF8400
      00FF840000FF00000000000000000000000000000000008400FF008400FF0084
      00FFC6DEC6FF008400FF008400FFF7FFFFFFF7FFFFFFC6DEC6FFC6C6C6FF0084
      00FF008400FF008400FF00000000000000000000000000000000000084FF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF000084FF000084FF00000000000000000000000000000000840000FF8484
      00FFF7CEA5FFFFFFFFFFFFFFFFFFF7CEA5FFF7CEA5FFFFFFFFFFFFFFFFFFF7CE
      A5FF848400FF840000FF00000000000000000000000000000000840000FF8484
      00FFF7CEA5FFFFFFFFFFFFFFFFFFF7CEA5FFF7CEA5FFFFFFFFFFFFFFFFFFF7CE
      A5FF848400FF840000FF000000000000000000000000008400FF008400FF0084
      00FFF7FFFFFF008400FF008400FFF7FFFFFFF7FFFFFFF7FFFFFFC6C6C6FF0084
      00FF008400FF008400FF000000000000000000000000000084FF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084FF0000
      FFFF0000FFFF000084FF000084FF0000000000000000840000FF848400FFF7CE
      A5FFFFFFFFFF848484FF848400FF848400FF848400FF848400FF848484FFFFFF
      FFFFF7CEA5FF848400FF840000FF0000000000000000840000FF848400FFF7CE
      A5FFFFFFFFFFA5A5A5FF848400FF848400FF848400FF848400FF848400FFFFFF
      FFFFF7CEA5FF848400FF840000FF0000000000000000008400FF008400FF0084
      00FFF7FFFFFF008400FF008400FFC6DEC6FFF7FFFFFFF7FFFFFFC6DEC6FF0084
      00FF008400FF008400FF000000000000000000000000000084FF0000FFFF0000
      FFFF0000FFFFA5A5A5FF0000FFFF0000FFFF0000FFFF0000FFFFA5A5A5FF0000
      FFFF0000FFFF0000FFFF000084FF0000000000000000840000FFF7CEA5FFFFFF
      FFFF848400FF848400FF848400FF848400FF848400FF848400FF848400FF8484
      00FFFFFFFFFFF7CEA5FF840000FF0000000000000000840000FFF7CEA5FFFFFF
      FFFF848400FF848400FF848400FF848400FF848400FF848400FF848400FF8484
      00FFFFFFFFFFF7CEA5FF840000FF0000000000000000008400FF008400FF0084
      00FFF7FFFFFFF7FFFFFFC6DEC6FFC6DEC6FFF7FFFFFFF7FFFFFFC6DEC6FF0084
      00FF008400FF008400FF0000000000000000000084FF0000FFFF0000FFFF0000
      FFFF848484FFFFFFFFFFC6C6C6FF0000FFFF0000FFFFC6C6C6FFFFFFFFFFA5A5
      A5FF000084FF0000FFFF0000FFFF000084FF848400FF848400FFFFFFFFFFF7CE
      A5FF848400FFF7CEA5FFF7CEA5FF848400FF848400FF848400FFF7CEA5FF8484
      00FF848484FFFFFFFFFF848400FF840000FF840000FF848400FFFFFFFFFFF7CE
      A5FF848400FFFFFFFFFF848400FF848400FF848400FFA5A5A5FFFFFFFFFF8484
      00FF848484FFFFFFFFFF848400FF840000FF00000000008400FF008400FF0084
      00FF008400FF008400FF008400FF008400FF008400FF008400FF008400FF0084
      00FF008400FF008400FF0000000000000000000084FF0000FFFF0000FFFF0000
      FFFF0000FFFFC6C6C6FFFFFFFFFFC6C6C6FFC6C6C6FFFFFFFFFFC6C6C6FF0000
      FFFF0000FFFF0000FFFF0000FFFF000084FF840000FFA5A5A5FFFFFFFFFF8484
      00FF848400FFF7CEA5FFF7CEA5FF848400FF848484FFFFFFFFFFF7FFFFFF8484
      00FF848400FFFFFFFFFFF7CEA5FF840000FF840000FFA5A5A5FFFFFFFFFF8484
      00FF848400FFFFFFFFFFFFFFFFFFA5A5A5FF848400FFA5A5A5FFFFFFFFFF8484
      00FF848400FFFFFFFFFFF7CEA5FF840000FF00000000008400FF008400FFC6DE
      C6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DE
      C6FF008400FF008400FF0000000000000000000084FF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFFC6C6C6FFFFFFFFFFFFFFFFFFC6C6C6FF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000084FF840000FFF7CEA5FFFFFFFFFF8484
      00FF848400FFF7CEA5FFF7CEA5FFF7CEA5FFFFFFFFFFFFFFFFFFF7CEA5FF8484
      00FF848400FFF7CEA5FFF7CEA5FF840000FF848400FFF7CEA5FFFFFFFFFF8484
      00FF848400FFFFFFFFFFFFFFFFFFFFFFFFFFF7CEA5FFF7CEA5FFFFFFFFFF8484
      00FF848400FFF7CEA5FFF7CEA5FF840000FF00000000008400FF008400FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008400FF008400FF0000000000000000000084FF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFFC6C6C6FFFFFFFFFFFFFFFFFFC6C6C6FF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000084FF848400FFF7CEA5FFFFFFFFFF8484
      00FF848400FFF7CEA5FFF7CEA5FFF7CEA5FFFFFFFFFFFFFFFFFFF7CEA5FF8484
      00FF848400FFF7CEA5FFF7CEA5FF840000FF848400FFF7CEA5FFFFFFFFFF8484
      00FF848400FFFFFFFFFFFFFFFFFFFFFFFFFFF7CEA5FFF7CEA5FFFFFFFFFF8484
      00FF848400FFF7CEA5FFF7CEA5FF840000FF00000000008400FF008400FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008400FF008400FF0000000000000000000084FFA5A5A5FF0000FFFF0000
      FFFF0000FFFFC6C6C6FFFFFFFFFFC6C6C6FFC6C6C6FFFFFFFFFFC6C6C6FF0000
      FFFF0000FFFF0000FFFF0000FFFF000084FF848400FFF7CEA5FFFFFFFFFFF7CE
      A5FFF7CEA5FFF7CEA5FFF7CEA5FF848400FF848400FFF7FFFFFFF7FFFFFF8484
      00FF848400FFFFFFFFFFF7CEA5FF840000FF848400FFF7CEA5FFFFFFFFFFF7CE
      A5FFF7CEA5FFFFFFFFFFFFFFFFFFF7CEA5FF848400FFF7CEA5FFFFFFFFFF8484
      00FF848400FFFFFFFFFFF7CEA5FF840000FF00000000008400FF008400FFFFFF
      FFFFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFFFFF
      FFFF008400FF008400FF0000000000000000000084FF848484FFC6C6C6FF0000
      FFFF0000FFFFFFFFFFFFC6C6C6FF0000FFFF0000FFFFC6C6C6FFFFFFFFFFA5A5
      A5FF0000FFFF0000FFFF0000FFFF000084FF848400FF848400FFFFFFFFFFF7CE
      A5FFF7CEA5FFF7FFFFFFF7CEA5FF848400FF848400FF848400FFF7CEA5FF8484
      00FFA5A5A5FFFFFFFFFF848400FF840000FF848400FF848400FFFFFFFFFFF7CE
      A5FFF7CEA5FFFFFFFFFFF7CEA5FF848400FF848400FFF7CEA5FFFFFFFFFF8484
      00FFA5A5A5FFFFFFFFFF848400FF840000FF00000000008400FF008400FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008400FF008400FF0000000000000000000000000000FFFFC6C6C6FFC6C6
      C6FF0000FFFFA5A5A5FF0000FFFF0000FFFF0000FFFF0000FFFF848484FF0000
      FFFF0000FFFF0000FFFF000084FF0000000000000000848400FFF7CEA5FFFFFF
      FFFFF7CEA5FFF7CEA5FFF7CEA5FF848400FF848400FF848400FF848400FF8484
      00FFFFFFFFFFF7CEA5FF840000FF0000000000000000848400FFF7CEA5FFFFFF
      FFFFF7CEA5FFF7CEA5FFF7CEA5FF848400FF848400FF848400FF848400FF8484
      00FFFFFFFFFFF7CEA5FF840000FF0000000000000000008400FF008400FFFFFF
      FFFFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFFFFF
      FFFF008400FF008400FF000000000000000000000000000084FF0000FFFFC6C6
      C6FFC6C6C6FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF000084FF0000000000000000848400FF848400FFF7CE
      A5FFFFFFFFFFF7CEA5FFF7CEA5FF848400FF848400FF848400FFF7CEA5FFFFFF
      FFFFF7CEA5FF848400FF840000FF0000000000000000848400FF848400FFF7CE
      A5FFFFFFFFFFF7CEA5FFF7CEA5FF848400FF848400FF848400FFA5A5A5FFFFFF
      FFFFF7CEA5FF848400FF840000FF0000000000000000008400FF008400FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008400FF008400FF00000000000000000000000000000000000084FF0000
      FFFFC6C6C6FFC6C6C6FFC6C6C6FFA5A5A5FFA5A5A5FF0000FFFF0000FFFF0000
      FFFF0000FFFF000084FF00000000000000000000000000000000848400FF8484
      00FFF7CEA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CE
      A5FF848400FF840000FF00000000000000000000000000000000848400FF8484
      00FFF7CEA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CE
      A5FF848400FF840000FF00000000000000000000000000000000008400FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008400FF0000000000000000000000000000000000000000000000000000
      84FF0000FFFFA5A5A5FFC6C6C6FFC6C6C6FFC6C6C6FFA5A5A5FF0000FFFF0000
      FFFF000084FF0000000000000000000000000000000000000000000000008484
      00FF848400FFA5A5A5FFF7CEA5FFF7CEA5FFF7CEA5FFA5A5A5FF848400FF8400
      00FF840000FF0000000000000000000000000000000000000000000000008484
      00FF848400FFA5A5A5FFF7CEA5FFF7CEA5FFF7CEA5FFA5A5A5FF848400FF8400
      00FF840000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000084FF000084FF0000FFFF0000FFFF000084FF000084FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400FF848400FF848400FF848400FF840000FF840000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848400FF848400FF848400FF848400FF840000FF840000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484FF848484FF0000000000000000000000000000
      00000000000000000000000000000000000000000000008400FF008400FF0084
      00FF008400FF0000000000000000000000000000000000000000000000000000
      00000000000000000000840000FF840000FF840000FF840000FF840000FF8400
      00FF840000FF840000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484FF0084
      84FF008484FF008484FF008484FF008484FF0000000000000000000000000000
      000000000000848484FF008484FFA5A5A5FF0000000000000000008484FF0084
      84FF008484FF008484FF008484FF008484FF00000000008400FF008400FF0084
      00FF008400FF0000000000000000000000000000000000000000008484FF0084
      84FF008484FF008484FF840000FFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6FFC6C6
      C6FFFFFFFFFF840000FF00000000000000000000000000000000000000000084
      84FF008484FF008484FF008484FF008484FF008484FF00000000000000000000
      00000000000000000000000000000000000000000000008484FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF00000000000000000000
      0000848484FF008484FF00FFFFFFA5A5A5FF00000000008484FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008400FF008400FF0084
      00FF008400FF00000000000000000000000000000000008484FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FF840000FFFFFFFFFFFFFFFFFFC6C6C6FF0000FFFFA5A5
      A5FFFFFFFFFF840000FF00000000000000000000000000000000008484FF00FF
      FFFF00FFFFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF000000000000
      000000000000000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF000000008484
      84FF008484FF00FFFFFFA5A5A5FF00000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FF008400FF008400FF008400FF008400FF008400FF0084
      00FF008400FF008400FF008400FF008400FF008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FF840000FFF7FFFFFF0000FFFF0000FFFF0000FFFF0000
      FFFFF7FFFFFF840000FF000000000000000000000000008484FFC6DEC6FF00FF
      FFFF00FFFFFF00FFFFFF000084FF000084FF000084FF000084FF000084FF0000
      84FF000084FF000084FF0000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFA5A5A5FFA5A5A5FFA5A5A5FF848484FF848484FF8484
      84FF00FFFFFF00FFFFFF0000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FF008400FF008484FF008484FF008484FF008484FF0084
      84FF008400FF008400FF008400FF008400FF008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FF840000FFA5A5A5FF0000FFFFC6C6C6FFF7FFFFFF0000
      FFFFA5A5A5FF840000FF000000000000000000000000008484FFC6DEC6FF00FF
      FFFF00FFFFFF00FFFFFF000084FF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF000084FF0000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFA5A5A5FFF7CEA5FFFFFFFFFFFFFFFFFFF7FFFFFFC6C6C6FFA5A5
      A5FF00FFFFFF000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FF008400FF848484FF848484FF008484FF008484FF0084
      84FF00FF00FF008400FF008400FF008400FF008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FF840000FFF7FFFFFFF7FFFFFFFFFFFFFFFFFFFFFFC6C6
      C6FF0000FFFF840084FF000000000000000000000000008484FFC6DEC6FF00FF
      FFFF00FFFFFF00FFFFFF000084FF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF000084FF0000000000000000008484FFF7FFFFFFF7FFFFFFF7FF
      FFFFA5A5A5FFC6DEC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CEA5FFA5A5
      A5FF00000000000000000000000000000000008484FFF7FFFFFFF7FFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFF008400FF008400FF008400FF008400FF008484FF0084
      84FF008400FF008400FF008400FF008400FF008484FFF7FFFFFFF7FFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFF840000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA5A5A5FF0000FFFF000000000000000000000000008484FFF7FFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFF000084FF000084FF000084FF000084FF000084FF0000
      84FF000084FF000084FF0000000000000000008484FFC6DEC6FF00FFFFFF0084
      84FFA5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CEA5FFF7CE
      A5FFA5A5A5FF000000000000000000000000008484FFC6DEC6FF00FFFFFF0084
      84FF008484FF008484FF008484FF008484FFC6C6C6FF008400FF848484FF8484
      84FF008400FF000000000000000000000000008484FFC6DEC6FF00FFFFFF0084
      84FF008484FF008484FF840000FF840000FF840000FF840000FF840000FF8400
      00FF840000FF0000FFFF0000FFFF0000000000000000008484FFC6DEC6FF00FF
      FFFF008484FF008484FF008484FF008484FF008484FFC6C6C6FF008484FF0000
      000000000000000000000000000000000000008484FF00FFFFFF00FFFFFF00FF
      FFFFA5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CEA5FFF7CEA5FFF7CE
      A5FFA5A5A5FF000000000000000000000000008484FF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008400FF848484FF8484
      84FF008400FF000000000000000000000000008484FF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF000000000000
      000000000000000000000000FFFF0000FFFF00000000008484FF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF0000
      000000000000000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFFA5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFF7CEA5FFF7CEA5FFF7CEA5FFF7CE
      A5FFA5A5A5FF000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008400FF008400FF0084
      00FF008400FF000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF000000000000
      00000000000000000000000000000000FFFF00000000008484FFC6DEC6FF00FF
      FFFF00FFFFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF0000
      000000000000000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFFA5A5A5FFF7CEA5FFF7CEA5FFF7CEA5FFF7CEA5FFFFFFFFFFFFFFFFFFA5A5
      A5FF00000000000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF000000000000
      000000000000000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF000000000000
      00000000000000000000000000000000000000000000008484FFC6DEC6FF00FF
      FFFF00FFFFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF0000
      000000000000000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFA5A5A5FFA5A5A5FFF7CEA5FFF7CEA5FFF7CEA5FFA5A5A5FFA5A5
      A5FF00000000000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF000000000000
      000000000000000000000000000000000000008484FFC6DEC6FF00FFFFFF00FF
      FFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF000000000000
      00000000000000000000000000000000000000000000008484FFC6DEC6FF00FF
      FFFF00FFFFFF00FFFFFFC6DEC6FFC6DEC6FF00FFFFFF008484FF008484FF0000
      000000000000000000000000000000000000008484FFC6DEC6FFC6DEC6FFC6DE
      C6FFC6DEC6FFC6DEC6FFC6C6C6FFA5A5A5FF848484FF848484FF000000000000
      000000000000000000000000000000000000008484FFC6DEC6FFC6DEC6FFC6DE
      C6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FF008484FF008484FF000000000000
      000000000000000000000000000000000000008484FFC6DEC6FFC6DEC6FFC6DE
      C6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FF008484FF008484FF000000000000
      00000000000000000000000000000000000000000000008484FFC6DEC6FFC6DE
      C6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FFC6DEC6FF008484FF008484FF0000
      000000000000000000000000000000000000008484FFFFFFFFFFF7FFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFC6DEC6FF008484FF000000000000
      000000000000000000000000000000000000008484FFFFFFFFFFF7FFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFC6DEC6FF008484FF000000000000
      000000000000000000000000000000000000008484FFFFFFFFFFF7FFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFC6DEC6FF008484FF000000000000
      00000000000000000000000000000000000000000000008484FFFFFFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFC6DEC6FF008484FF0000
      00000000000000000000000000000000000000000000008484FFF7FFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFFC6DEC6FFC6DEC6FF008484FF00000000000000000000
      00000000000000000000000000000000000000000000008484FFF7FFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFFC6DEC6FFC6DEC6FF008484FF00000000000000000000
      00000000000000000000000000000000000000000000008484FFF7FFFFFFF7FF
      FFFFF7FFFFFFF7FFFFFFC6DEC6FFC6DEC6FF008484FF00000000000000000000
      0000000000000000000000000000000000000000000000000000008484FFF7FF
      FFFFF7FFFFFFF7FFFFFFF7FFFFFFC6DEC6FFC6DEC6FF008484FF000000000000
      0000000000000000000000000000000000000000000000000000008484FF0084
      84FF008484FF008484FF008484FF008484FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484FF0084
      84FF008484FF008484FF008484FF008484FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484FF0084
      84FF008484FF008484FF008484FF008484FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      84FF008484FF008484FF008484FF008484FF008484FF00000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF000000F81F000000000000FBDF00000000
      0000FA5F000000000000FBDF000000000000FBDF000000000000F19F00000000
      0000F5AF000000000000F5AF000000000000C183000000000000B3CD00000000
      0000B7ED00000000000083C1000000000000BBDD000000000000600600000000
      00001FF80000000000007FFE0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    Left = 504
    Top = 240
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 88
    Top = 256
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 448
    Top = 256
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 544
    Top = 272
  end
  inherited QBrowse2: TFDQuery
    Left = 72
    Top = 400
  end
  object pmOtros: TPopupMenu [13]
    Left = 624
    Top = 288
    object BorraAplicacionesNC1: TMenuItem
      Action = BorraAplicacionesNC
    end
    object ForzarModificar1: TMenuItem
      Action = ForzarModificar
    end
    object GravarCambiosDetalles1: TMenuItem
      Action = GravarCambiosDetalles
    end
    object ModificarNro1: TMenuItem
      Action = ModificarNro
    end
    object Aplicadaa1: TMenuItem
      Action = VerAplicaciones
    end
    object CambiaCodigoProveedor1: TMenuItem
      Action = CambiaCodigo
    end
    object BorrarAplicaciones1: TMenuItem
      Action = BorrarAplicaciones
    end
    object CambiarClaseCpbte1: TMenuItem
      Action = CambiarClaseCpbte
    end
    object CambiarDeposito1: TMenuItem
      Action = CambiarDeposito
    end
    object PasarDetallesAStock2: TMenuItem
      Action = PasaDetallesAStock
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CambiarFechaFiscal1: TMenuItem
      Action = CambiarFechaFiscal
    end
    object CambiarFechaVencimento1: TMenuItem
      Action = CambiarFechaVencimento
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object LimpiarBuffer1: TMenuItem
      Action = CleanBuffer
    end
    object AplicarLibroIva1: TMenuItem
      Action = LibroIva
    end
    object PasarosacradeCtaCte1: TMenuItem
      Action = PasarCtaCte
      Caption = 'Pasar o sacar de CtaCte'
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object GenerarRetencionIVA1: TMenuItem
      Action = GenerarRetencionIVA
    end
    object ReCalcular1: TMenuItem
      Action = ReCalcular
    end
    object ReCalcularSinControl: TMenuItem
      Caption = 'Recalcular sin Control'
      OnClick = ReCalcularSinControlClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Duplicar1: TMenuItem
      Action = Duplicar
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object RestaurarCAE1: TMenuItem
      Action = RestaurarCAE
    end
    object BorrarCAE1: TMenuItem
      Action = BorrarCAE
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object GenerarTx1: TMenuItem
      Action = GenerarTx
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object AsignarObra1: TMenuItem
      Action = AsignarObra
    end
    object PasarNDNCAjuste1: TMenuItem
      Action = PasarND_NCAjuste
    end
  end
  object spBorraAplicaciones: TFDStoredProc [14]
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'BORRAR_APLICACIONES_A_FCCOMP'
    Left = 808
    Top = 392
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
  object frReporte: TfrxReport [15]
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
    Left = 384
    Top = 392
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frCabecera: TfrxDBDataset [16]
    UserName = 'frCabecera'
    CloseDataSource = False
    DataSet = DatosCompra.CDSCompraCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 136
    Top = 360
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
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
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
        FieldName = 'MUESTRACODIGOAFIP'
        FieldAlias = 'MUESTRACODIGOAFIP'
      end>
  end
  object frSuDetalle: TfrxDBDataset [17]
    UserName = 'frSuDetalle'
    CloseDataSource = False
    DataSet = DatosCompra.CDSCompraSubDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 192
    Top = 520
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
        FieldName = 'SERIE'
        FieldAlias = 'SERIE'
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
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end>
  end
  object frDetalle: TfrxDBDataset [18]
    UserName = 'frDetalle'
    CloseDataSource = False
    DataSet = DatosCompra.CDSCompraDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 520
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
        FieldName = 'CODIGOPROVEEDOR'
        FieldAlias = 'CODIGOPROVEEDOR'
        FieldType = fftString
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
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
        FieldType = fftString
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
        FieldType = fftString
        Size = 45
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
        FieldType = fftString
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
        FieldType = fftString
      end
      item
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'MODO_GRAVAMEN'
        FieldType = fftString
      end
      item
        FieldName = 'IVA_TASA'
        FieldAlias = 'IVA_TASA'
      end
      item
        FieldName = 'TIPOIVA_TASA'
        FieldAlias = 'TIPOIVA_TASA'
      end
      item
        FieldName = 'IVA_SOBRETASA'
        FieldAlias = 'IVA_SOBRETASA'
      end
      item
        FieldName = 'TIPOIVA_SOBRETASA'
        FieldAlias = 'TIPOIVA_SOBRETASA'
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
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'MARGEN'
        FieldAlias = 'MARGEN'
      end
      item
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
        FieldType = fftString
      end
      item
        FieldName = 'CALCULA_SOBRETASA'
        FieldAlias = 'CALCULA_SOBRETASA'
        FieldType = fftString
      end
      item
        FieldName = 'COSTO_IMP_INTERNO'
        FieldAlias = 'COSTO_IMP_INTERNO'
      end
      item
        FieldName = 'UNIDADES_IMP_INTERNOS'
        FieldAlias = 'UNIDADES_IMP_INTERNOS'
      end
      item
        FieldName = 'UNITARIO_IMP_INTERNO'
        FieldAlias = 'UNITARIO_IMP_INTERNO'
      end
      item
        FieldName = 'CON_NRO_SERIE'
        FieldAlias = 'CON_NRO_SERIE'
        FieldType = fftString
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
        FieldType = fftString
        Size = 13
      end
      item
        FieldName = 'GRAVADO_IB'
        FieldAlias = 'GRAVADO_IB'
        FieldType = fftString
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
        FieldName = 'MUESTRAMONEDA'
        FieldAlias = 'MUESTRAMONEDA'
        FieldType = fftString
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
      end
      item
        FieldName = 'MUESTRAIVA'
      end
      item
        FieldName = 'MUESTRARAZA'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'DETALLE_ADICIONAL'
        FieldType = fftString
        Size = 300
      end
      item
        FieldName = 'CONTROL_TRAZABILIDAD'
        FieldType = fftString
      end
      item
        FieldName = 'CANTIDAD_UNIDADES'
      end
      item
        FieldName = 'PRESENTACION_CANT'
      end
      item
        FieldName = 'TIPO_LIQUI'
      end
      item
        FieldName = 'CODIGO_RAZA'
      end
      item
        FieldName = 'DETALLE_RAZA'
        FieldType = fftString
        Size = 40
      end
      item
        FieldName = 'TROPA'
      end
      item
        FieldName = 'CABEZAS'
      end
      item
        FieldName = 'MUESTRACODALTERNATIVO'
        FieldType = fftString
        Size = 20
      end
      item
        FieldName = 'MUESTRACOPIAS'
      end
      item
        FieldName = 'MUESTRACODIGOBARRA'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'MUESTRAPRECIOVTA'
      end
      item
        FieldName = 'CANTIDAD_INVENTARIO'
      end>
  end
  object frIva: TfrxDBDataset [19]
    UserName = 'frIva'
    CloseDataSource = False
    DataSet = DatosCompra.CDSImpuestos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 136
    Top = 512
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
  object frPercepIIBB: TfrxDBDataset [20]
    UserName = 'frPercepIIBB'
    CloseDataSource = False
    DataSet = DatosCompra.CDSPercepcionIB
    BCDToCurrency = False
    DataSetOptions = []
    Left = 360
    Top = 472
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
      end
      item
        FieldName = 'JURIDICION'
        FieldAlias = 'JURIDICION'
      end>
  end
  object frPercepIVA: TfrxDBDataset [21]
    UserName = 'frPercepIVA'
    CloseDataSource = False
    DataSet = DatosCompra.CDSPercepcionIVA
    BCDToCurrency = False
    DataSetOptions = []
    Left = 432
    Top = 464
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
      end
      item
        FieldName = 'CODIGOREGIMEN'
        FieldAlias = 'CODIGOREGIMEN'
      end>
  end
  object PopupMenu1: TPopupMenu [22]
    OnPopup = PopupMenu1Popup
    Left = 524
    Top = 126
    object VerCodigoAlternativo: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativoClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ControlaFechaFiscal: TMenuItem
      Caption = 'Controlar Fecha Fiscal'
      OnClick = ControlaFechaFiscalClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object VerUnidadesdeStock1: TMenuItem
      Caption = 'Ver Unidades de Stock'
      OnClick = VerUnidadesdeStock1Click
    end
    object ColumnaInvenario: TMenuItem
      Caption = 'Ver Columna Inventario'
      OnClick = ColumnaInvenarioClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object ImprirEtiquetas1: TMenuItem
      Action = ImprimirEtiquetas
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object PermitirModifTotal: TMenuItem
      Caption = 'Permitir Modificar Total de Linea'
      OnClick = PermitirModifTotalClick
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object CopiarDetalle1: TMenuItem
      Action = CopiarDetalle
    end
    object PegarDetalle2: TMenuItem
      Action = PegarDetalle
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object CopiaralPortaPepelesdeWindows1: TMenuItem
      Action = CopiarDetallePortaPapeles
    end
    object ExportarExcel: TMenuItem
      Action = ExportarExcelCSV
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object PegarDetalle1: TMenuItem
      Action = RevisaTasaIva
    end
    object GenerarAjustedeInventario1: TMenuItem
      Action = GenerarAjusteInventario
    end
  end
  object frEmpresa: TfrxDBDataset [23]
    UserName = 'frEmpresa'
    CloseDataSource = False
    DataSet = DatosCompra.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 328
    Top = 520
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
      end>
  end
  object DSCtroCosto: TDataSource [24]
    DataSet = DMMain_FD.CDSAplicPorCtroCosto
    Left = 600
    Top = 232
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 40
    Top = 512
  end
  inherited ImageListDos: TImageList
    Left = 240
    Top = 216
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
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000AB705C00AB6F
      5A0000000000AA6F5B00AA6E59000000000000000000AA6C5900AA6C5900A96C
      580000000000000000FF000000FF000000FF00000000000000003F3FBC004040
      BC0000000000313192003232940000000000000000004040BC004343C5003535
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000FDFBF900FBF5
      F20000000000FAF4F000FAF4EF000000000000000000F8F1EC00F8F0EB00F8F0
      EA0000000000000000FF000000FF000000FF00000000000000004C4CC2004343
      C700000000003737A0003737A00000000000000000004343C7004343C7003737
      A000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000FDFBFA007674
      D8003737D1003334CD003131CB0000000000000000002929C4002626C2002425
      BF000000000000000000000000000000000000000000000000006363D5004343
      C700262670003737A0003737A00000000000000000004343C7004343C7003737
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      000000000000000000000000000000000000000000FFB0796600FDFBFB003C3D
      D300FAF6F6003636D0003233CC003030CA00F8F2F100F7F2EF006B69D1002526
      C200F6EEEB0000000000000000000000000000000000353595007777E8004343
      C7004444C1004444C7004343C7004343C7004343C7004444C8004747C9004646
      C400303089000000000000000000000000000000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      000000000000000000000000000000000000000000FFB37C6900FEFCFB003E3E
      D400FBF7F6003738D2003536D0003232CC00F8F4F2002D2EC700F7F2EF002728
      C200F6F0EC002223BD002121BC0000000000000000003E3EB0008181EE006767
      DE007E7EED008B8BF4008F8FF7008F8FF7008F8FF7008C8CF5008989F3007E7E
      ED007171E4005757CC004242C100000000000000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      000000000000000000000000000000000000000000FFB67F6C00FEFDFC004040
      D700FBF8F700FBF7F6007574DC003435CD00F9F5F2002F2FCA00F8F3F000292A
      C400F6F1EE00F6EFEC002222BD002020BB00000000004242BE008989F4008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7008F8FF7008787F2005050CC0035359C000000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D20000000000000000000000000000000000000000FFB9837100FEFDFC004042
      D900FCF8F8003C3CD300FBF7F6003637D000FAF5F3003030CA00F8F3F1002B2B
      C500F7F1EF002526C2000000000000000000000000004343C4008E8EF6008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7006259
      72008F8FF7004848C4000000000000000000000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      650000000000000000000000000000000000000000FFBC887700FEFEFD004243
      D900FBFAF900FCF8F8007878DF003838D200FAF7F500FAF5F400706FD7002D2E
      C700F8F2F000F7F2EF000000000000000000000000004343C6008E8EF6008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8F
      F7008181EE004141B90000000000000000000000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      000000000000000000000000000000000000000000FFBF8C7A00FEFEFD007F7D
      E1004242D8004040D7003D3ED4003A3AD3003737D0003435CD003132CB002F2F
      C9002B2CC700292AC4000000000000000000000000004040B7007F7FED008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7007676
      E7004949C8003434980000000000000000000000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      000000000000000000000000000000000000000000FFC18F7F00FEFEFE00FAF6
      F300FAF5F300FBF6F200FBF5F100FBF5F000FBF5F000FAF4EF00FAF4EE00FDF9
      F800DEC3BA00FFFFFFFFFFFFFFFF000000FF00000000242469005252C9008F8F
      F7008F8FF7008F8FF7008F8FF7008F8FF7008F8FF7008C8CF5006D6DE2004545
      C8006C6CE1005F5FD50037379B00000000000000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      000000000000000000000000000000000000000000FF00000000FFFEFE00FBF7
      F400FBF6F400FBF6F400FCF6F300FCF6F300FCF4F200FBF5F100FBF5F000FDFB
      F900BF8C7B00FFFFFFFFFFFFFFFF000000FF00000000000000004444C5005353
      CD007D7DEC008989F4008989F4007D7DEC006464D8004545C40038389B002C2C
      79004242C4004747C3004343C300000000000000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      000000000000000000000000000000000000000000FFC799850000000000FCF8
      F700FCF8F600FCF7F500FCF7F500FBF6F400FBF6F40000000000000000000000
      000000000000000000FFFFFFFFFF000000FF000000003D3DB500000000002222
      66004040B6004242C1004242C0003C3CA70025256E0000000000000000000000
      0000000000000000000025257100000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFC99A8900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000FF000000003B3BB000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000CA9C8B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000FF000000000000000035359D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      00000000000000000000000000000000FFEFFFFFFFFFFFFFFFCFF3FFC98FC98F
      FF8FF1FFC98FC98FFF0FF0FFC18FC18FFE0FF07F80078007FC0FF03F80018001
      F80FF01F80008000F00FF00F80038003E00FF00F80038003F00FF01F80038003
      F80FF03F80018001FC0FF07FC001C001FE0FF0FFA07DA07DFF0FF1FFBFFFBFFF
      FF8FF3FFDFFFDFFFFFCFF7FFFFFFFFFFFFFFE007FFFF3FFFF83FE00780011FFF
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
  object ComBuscadorCondCompra: TComBuscador
    Data = DatosCompra.CDSBuscaCondCompra
    Campo = 'CODIGOPAGO'
    Titulo = 'Condiciones de Pago'
    rOk = False
    Left = 196
    Top = 62
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosCompra.CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 356
    Top = 166
  end
  object ComBuscadorDeposito: TComBuscador
    Data = DatosCompra.CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 824
    Top = 232
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
    Left = 460
    Top = 390
  end
  object PopupMenu2: TPopupMenu
    Left = 636
    Top = 359
    object GenerarRetencionIVA2: TMenuItem
      Action = GenerarRetencionIVA
    end
  end
  object ComBuscadorPerIIBB: TComBuscador
    Data = DatosCompra.QBuscaPercionesIIBB
    Campo = 'CODIGO'
    rOk = False
    Left = 560
    Top = 376
  end
  object OpenDialog1: TOpenDialog
    Left = 808
    Top = 286
  end
  object AdvGridExcelIO1: TAdvGridExcelIO
    AdvStringGrid = dbgGridTMS
    Options.ExportOverwrite = omWarn
    Options.ExportOverwriteMessage = 'Sobre escribe Archivo ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    GridStartRow = 0
    GridStartCol = 0
    Version = '3.14'
    OnCellFormat = AdvGridExcelIO1CellFormat
    OnExportColumnFormat = AdvGridExcelIO1ExportColumnFormat
    Left = 304
    Top = 246
  end
end

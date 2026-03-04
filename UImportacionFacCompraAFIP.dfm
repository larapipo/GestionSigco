inherited FormImportarFcCompraAFIP: TFormImportarFcCompraAFIP
  Caption = 'Importacion Facturas Compra desde AFIP Excel'
  ClientHeight = 698
  ClientWidth = 1212
  KeyPreview = False
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1230
  ExplicitHeight = 739
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1212
    Height = 645
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1212
    ExplicitHeight = 645
    object pcMovimientos: TPageControl
      Left = 0
      Top = 0
      Width = 1212
      Height = 645
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = pcMovimientosChange
      OnChanging = pcMovimientosChanging
      object TabSheet1: TTabSheet
        Caption = 'Portal IVA'
        ImageIndex = 2
        object pnCabPortal: TPanel
          Left = 0
          Top = 0
          Width = 1204
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            1204
            49)
          object JvLabel3: TJvLabel
            Left = 7
            Top = 2
            Width = 43
            Height = 13
            Caption = 'Sucursal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShadowPos = spLeftTop
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -12
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object Label53: TLabel
            Left = 280
            Top = 13
            Width = 249
            Height = 25
            Caption = 'Importar desde Portal IVA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cbSucursalPortal: TJvDBLookupCombo
            Left = 7
            Top = 19
            Width = 226
            Height = 21
            DisplayEmpty = 'Sin Sucursal'
            EmptyValue = '-1'
            LookupField = 'CODIGO'
            LookupDisplay = 'DETALLE'
            LookupSource = DSSucursal
            TabOrder = 0
            OnClick = cbSucursalPortalClick
          end
          object cheBox_Portal: TAdvOfficeCheckBox
            Left = 977
            Top = 19
            Width = 97
            Height = 17
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
            OnClick = cheBox_PortalClick
            Alignment = taRightJustify
            Caption = 'Activar Filtros'
            ReturnIsTab = False
            Version = '1.8.4.2'
          end
        end
        object pnPiePortal: TPanel
          Left = 0
          Top = 576
          Width = 1204
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentBackground = False
          TabOrder = 1
          object lbReg: TLabel
            Left = 10
            Top = 16
            Width = 43
            Height = 13
            Caption = 'Nro.Reg:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object btImpPortal: TBitBtn
            Left = 553
            Top = 5
            Width = 191
            Height = 31
            Action = ImportarPortal
            Align = alRight
            Caption = 'Importar Facturas desde el Portal'
            TabOrder = 0
          end
          object btExcelPortal: TBitBtn
            Left = 1093
            Top = 5
            Width = 106
            Height = 31
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Action = CargarCSVPortal
            Align = alRight
            Caption = 'Cargar CSV'
            TabOrder = 1
          end
          object BitBtn1: TBitBtn
            Left = 877
            Top = 5
            Width = 160
            Height = 31
            Action = ControlFacturas
            Align = alRight
            Caption = 'Controlar Contra Facturas'
            TabOrder = 2
          end
          object pnSeparador: TPanel
            Left = 744
            Top = 5
            Width = 133
            Height = 31
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnSeparador'
            ShowCaption = False
            TabOrder = 3
          end
          object Panel4: TPanel
            Left = 1037
            Top = 5
            Width = 56
            Height = 31
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnSeparador'
            ShowCaption = False
            TabOrder = 4
          end
        end
        object pnMedioPortal: TPanel
          Left = 0
          Top = 49
          Width = 1204
          Height = 527
          Align = alClient
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          object tpConfiguracionPortal: TAdvToolPanelTab
            Left = 0
            Top = 0
            Width = 1121
            Height = 527
            AutoOpenCloseSpeed = aocFast
            Color = 16773091
            ColorTo = 16765357
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 9126421
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Position = ppLeft
            SlideSpeed = ssInstant
            Style = esOffice2010Blue
            TabBorderColor = 16765357
            TabColor = 16773091
            TabColorTo = 16765357
            TabHoverColor = 14285309
            TabHoverColorTo = 9102333
            TextDirection = tdBottomToTop
            Version = '1.8.5.5'
            object pnConfiguracionPortal: TAdvToolPanel
              Left = 23
              Top = 0
              Width = 1098
              Height = 527
              Align = alClient
              BackgroundTransparent = False
              BackGroundPosition = bpTopLeft
              Button3D = False
              HoverButtonColor = 14285309
              HoverButtonColorTo = 9102333
              DownButtonColor = 8122111
              DownButtonColorTo = 7131391
              CaptionButton = False
              Color = 15192511
              ColorTo = 15192511
              GradientDirection = gdVertical
              DockDots = True
              Caption = 'Configuracion Campos'
              CaptionGradientDirection = gdVertical
              FocusCaptionFontColor = 9126421
              FocusCaptionColor = 6805503
              FocusCaptionColorTo = 10676223
              NoFocusCaptionFontColor = 9126421
              NoFocusCaptionColor = 16773091
              NoFocusCaptionColorTo = 16765357
              OpenWidth = 1110
              CloseHint = 'Close panel'
              LockHint = 'Lock panel'
              UnlockHint = 'Unlock panel'
              Sections = <>
              SectionLayout.CaptionColor = 16772834
              SectionLayout.CaptionColorTo = 16772834
              SectionLayout.CaptionFontColor = 9126421
              SectionLayout.CaptionRounded = False
              SectionLayout.Corners = scRectangle
              SectionLayout.BackGroundColor = clWhite
              SectionLayout.BackGroundColorTo = clWhite
              SectionLayout.BorderColor = 16765357
              SectionLayout.BorderWidth = 1
              SectionLayout.CaptionGradientDir = gdVertical
              SectionLayout.BackGroundGradientDir = gdVertical
              SectionLayout.Indent = 4
              SectionLayout.Spacing = 4
              SectionLayout.ItemFontColor = 9126421
              SectionLayout.ItemHoverTextColor = 9126421
              SectionLayout.ItemHoverUnderline = True
              SectionLayout.UnderLineCaption = False
              ShowCaptionBorder = False
              ShowClose = False
              ShowHint = True
              Style = esOffice2010Blue
              Version = '1.8.5.5'
              object AdvPanel2: TAdvPanel
                Left = 1
                Top = 24
                Width = 1096
                Height = 502
                Align = alClient
                Color = clMenuHighlight
                TabOrder = 0
                UseDockManager = True
                Version = '2.7.0.2'
                BorderColor = clBlack
                Caption.Color = clWhite
                Caption.ColorTo = clNone
                Caption.Font.Charset = DEFAULT_CHARSET
                Caption.Font.Color = 9126421
                Caption.Font.Height = -11
                Caption.Font.Name = 'Tahoma'
                Caption.Font.Style = []
                Caption.GradientDirection = gdVertical
                Caption.Indent = 0
                Caption.ShadeLight = 255
                CollapsColor = clNone
                CollapsDelay = 0
                DoubleBuffered = True
                FixedWidth = True
                ShadowColor = clBlack
                ShadowOffset = 0
                StatusBar.BorderColor = clNone
                StatusBar.BorderStyle = bsSingle
                StatusBar.Font.Charset = DEFAULT_CHARSET
                StatusBar.Font.Color = 4473924
                StatusBar.Font.Height = -11
                StatusBar.Font.Name = 'Tahoma'
                StatusBar.Font.Style = []
                StatusBar.Color = clWhite
                StatusBar.GradientDirection = gdVertical
                Text = ''
                FullHeight = 474
                object Label19: TLabel
                  Left = 6
                  Top = 13
                  Width = 34
                  Height = 16
                  Caption = 'Fecha'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 6
                  Top = 41
                  Width = 106
                  Height = 16
                  Caption = 'Tipo Comprobante'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 6
                  Top = 69
                  Width = 87
                  Height = 16
                  Caption = 'Punto de Venta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 6
                  Top = 97
                  Width = 105
                  Height = 16
                  Caption = 'Nro. Comprobante'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label23: TLabel
                  Left = 5
                  Top = 350
                  Width = 117
                  Height = 16
                  Caption = 'Imp.Perc.Pago a Cta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label24: TLabel
                  Left = 5
                  Top = 378
                  Width = 52
                  Height = 16
                  Caption = 'Perp.IIBB'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label25: TLabel
                  Left = 6
                  Top = 125
                  Width = 93
                  Height = 16
                  Caption = 'Tipo Documento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label26: TLabel
                  Left = 6
                  Top = 153
                  Width = 104
                  Height = 16
                  Caption = 'Nro.Doc.Vendedor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label27: TLabel
                  Left = 6
                  Top = 265
                  Width = 72
                  Height = 16
                  Caption = 'Tipo Cambio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label28: TLabel
                  Left = 6
                  Top = 293
                  Width = 96
                  Height = 16
                  Caption = 'Neto No Gravado'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label29: TLabel
                  Left = 6
                  Top = 321
                  Width = 87
                  Height = 16
                  Caption = 'Importe Exento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label31: TLabel
                  Left = 6
                  Top = 209
                  Width = 78
                  Height = 16
                  Caption = 'Importe Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label32: TLabel
                  Left = 687
                  Top = 49
                  Width = 83
                  Height = 16
                  Caption = 'Articulo (21%)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label33: TLabel
                  Left = 687
                  Top = 95
                  Width = 94
                  Height = 16
                  Caption = 'Articulo (10.5%)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label34: TLabel
                  Left = 687
                  Top = 3
                  Width = 76
                  Height = 16
                  Caption = 'Articulo (0%)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label35: TLabel
                  Left = 687
                  Top = 199
                  Width = 216
                  Height = 16
                  Caption = 'Relacion Comprobantes AFIP/Sistema'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label36: TLabel
                  Left = 6
                  Top = 181
                  Width = 109
                  Height = 16
                  Caption = 'Denomin.Vendedor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label37: TLabel
                  Left = 329
                  Top = 13
                  Width = 129
                  Height = 16
                  Caption = 'Impuestos Municipales'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label38: TLabel
                  Left = 329
                  Top = 41
                  Width = 133
                  Height = 16
                  Caption = 'Percepciones a Cta IVA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label39: TLabel
                  Left = 329
                  Top = 69
                  Width = 73
                  Height = 16
                  Caption = 'Imp.Internos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label40: TLabel
                  Left = 329
                  Top = 97
                  Width = 82
                  Height = 16
                  Caption = 'Otros Tributos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label41: TLabel
                  Left = 329
                  Top = 125
                  Width = 70
                  Height = 16
                  Caption = 'Neto Iva 0%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label42: TLabel
                  Left = 329
                  Top = 153
                  Width = 81
                  Height = 16
                  Caption = 'Neto Iva 2.5%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label43: TLabel
                  Left = 329
                  Top = 181
                  Width = 51
                  Height = 16
                  Caption = 'Iva 2,5%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label44: TLabel
                  Left = 329
                  Top = 209
                  Width = 70
                  Height = 16
                  Caption = 'Neto Iva 5%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label45: TLabel
                  Left = 329
                  Top = 237
                  Width = 40
                  Height = 16
                  Caption = 'Iva 5%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label46: TLabel
                  Left = 329
                  Top = 265
                  Width = 88
                  Height = 16
                  Caption = 'Neto Iva 10.5%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label47: TLabel
                  Left = 329
                  Top = 293
                  Width = 58
                  Height = 16
                  Caption = 'Iva 10.5%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label48: TLabel
                  Left = 329
                  Top = 321
                  Width = 77
                  Height = 16
                  Caption = 'Neto Iva 21%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label49: TLabel
                  Left = 329
                  Top = 350
                  Width = 47
                  Height = 16
                  Caption = 'Iva 21%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label50: TLabel
                  Left = 6
                  Top = 237
                  Width = 87
                  Height = 16
                  Caption = 'Moneda Origen'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label51: TLabel
                  Left = 329
                  Top = 377
                  Width = 77
                  Height = 16
                  Caption = 'Neto Iva 27%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label52: TLabel
                  Left = 329
                  Top = 406
                  Width = 47
                  Height = 16
                  Caption = 'Iva 27%'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label54: TLabel
                  Left = 329
                  Top = 433
                  Width = 59
                  Height = 16
                  Caption = 'Neto Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label55: TLabel
                  Left = 687
                  Top = 138
                  Width = 83
                  Height = 16
                  Caption = 'Articulo (27%)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object ceArt_21: TJvComboEdit
                  Left = 687
                  Top = 71
                  Width = 80
                  Height = 21
                  ButtonWidth = 16
                  ClickKey = 0
                  Color = clBtnFace
                  Glyph.Data = {
                    4E000000424D4E000000000000003E000000280000000A000000040000000100
                    010000000000100000000000000000000000020000000200000000000000FFFF
                    FF00FFC000003300000033000000FFC00000}
                  Images = ImageList1
                  TabOrder = 12
                  Text = ''
                  OnButtonClick = BuscarArticulosExecute
                end
                object ceArt_105: TJvComboEdit
                  Left = 687
                  Top = 111
                  Width = 80
                  Height = 21
                  ButtonWidth = 16
                  ClickKey = 0
                  Color = clBtnFace
                  Glyph.Data = {
                    4E000000424D4E000000000000003E000000280000000A000000040000000100
                    010000000000100000000000000000000000020000000200000000000000FFFF
                    FF00FFC000003300000033000000FFC00000}
                  Images = ImageList1
                  TabOrder = 13
                  Text = ''
                  OnButtonClick = BuscarArticulosExecute
                end
                object edArt_105: TEdit
                  Left = 776
                  Top = 111
                  Width = 312
                  Height = 21
                  Color = clInfoBk
                  Enabled = False
                  TabOrder = 14
                end
                object edArt_21: TEdit
                  Left = 776
                  Top = 71
                  Width = 312
                  Height = 21
                  Color = clInfoBk
                  Enabled = False
                  TabOrder = 15
                end
                object ceArt_0: TJvComboEdit
                  Left = 687
                  Top = 25
                  Width = 80
                  Height = 21
                  ButtonWidth = 16
                  ClickKey = 0
                  Color = clBtnFace
                  Glyph.Data = {
                    4E000000424D4E000000000000003E000000280000000A000000040000000100
                    010000000000100000000000000000000000020000000200000000000000FFFF
                    FF00FFC000003300000033000000FFC00000}
                  Images = ImageList1
                  TabOrder = 16
                  Text = ''
                  OnButtonClick = BuscarArticulosExecute
                end
                object edArt_0: TEdit
                  Left = 776
                  Top = 25
                  Width = 312
                  Height = 21
                  Color = clInfoBk
                  Enabled = False
                  TabOrder = 17
                end
                object btParamPortal: TButton
                  Left = 946
                  Top = 428
                  Width = 129
                  Height = 25
                  Caption = 'Guardar Parametros'
                  TabOrder = 18
                  OnClick = btParamPortalClick
                end
                object DBGrid1: TDBGrid
                  Left = 687
                  Top = 221
                  Width = 404
                  Height = 201
                  DataSource = DSRelacion
                  TabOrder = 19
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = 9126421
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  OnColEnter = DBGrid1ColEnter
                  Columns = <
                    item
                      Color = clInfoBk
                      Expanded = False
                      FieldName = 'CODIGO_AFIP'
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = 9126421
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 37
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'COMPROBANTE_AFIP'
                      Title.Alignment = taCenter
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = 9126421
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 116
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'MUESTRACOMPROB'
                      Title.Alignment = taCenter
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = 9126421
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 204
                      Visible = True
                    end>
                end
                object ceArt_27: TJvComboEdit
                  Left = 687
                  Top = 156
                  Width = 80
                  Height = 21
                  ButtonWidth = 16
                  ClickKey = 0
                  Color = clBtnFace
                  Glyph.Data = {
                    4E000000424D4E000000000000003E000000280000000A000000040000000100
                    010000000000100000000000000000000000020000000200000000000000FFFF
                    FF00FFC000003300000033000000FFC00000}
                  Images = ImageList1
                  TabOrder = 38
                  Text = ''
                  OnButtonClick = BuscarArticulosExecute
                end
                object edArt_27: TEdit
                  Left = 776
                  Top = 156
                  Width = 312
                  Height = 21
                  Color = clInfoBk
                  Enabled = False
                  TabOrder = 39
                end
                object cbFecha_: TAdvComboBox
                  Left = 131
                  Top = 8
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  FocusBorder = True
                  DropDownCount = 22
                  DropWidth = 350
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object cbTipoComprobante: TAdvComboBox
                  Left = 131
                  Top = 36
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object cbPuntoVenta: TAdvComboBox
                  Left = 131
                  Top = 65
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object cbNumeroCpbte: TAdvComboBox
                  Left = 131
                  Top = 93
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object cbPercACta: TAdvComboBox
                  Left = 130
                  Top = 349
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object cbPercepIIBB: TAdvComboBox
                  Left = 130
                  Top = 376
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object cbTipoDocEmisor: TAdvComboBox
                  Left = 131
                  Top = 122
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
                object cbNroDocVendedor: TAdvComboBox
                  Left = 131
                  Top = 150
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 7
                end
                object cbNetoNoGravado_: TAdvComboBox
                  Left = 131
                  Top = 293
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 8
                end
                object cbNetoExento: TAdvComboBox
                  Left = 131
                  Top = 321
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 9
                end
                object cbImporteTotal: TAdvComboBox
                  Left = 131
                  Top = 207
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 10
                end
                object cbTipoCambio: TAdvComboBox
                  Left = 131
                  Top = 264
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 11
                end
                object cbDenominacionVendedor: TAdvComboBox
                  Left = 131
                  Top = 179
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 20
                end
                object cbImpuestoMunic: TAdvComboBox
                  Left = 475
                  Top = 8
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 21
                end
                object cbPercepcionIVA: TAdvComboBox
                  Left = 475
                  Top = 36
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 22
                end
                object cbImpInternos: TAdvComboBox
                  Left = 475
                  Top = 65
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 23
                end
                object cbOtrosTributos: TAdvComboBox
                  Left = 475
                  Top = 93
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 24
                end
                object cbNeto_Iva_0: TAdvComboBox
                  Left = 475
                  Top = 122
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 25
                end
                object cbNeto_Iva_2_5: TAdvComboBox
                  Left = 475
                  Top = 150
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 26
                end
                object cbIva_2_5: TAdvComboBox
                  Left = 475
                  Top = 179
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 27
                end
                object cbNeto_Iva_5: TAdvComboBox
                  Left = 475
                  Top = 207
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 28
                end
                object cbNeto_Iva_105: TAdvComboBox
                  Left = 475
                  Top = 264
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 29
                end
                object cbIva_105: TAdvComboBox
                  Left = 475
                  Top = 293
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 30
                end
                object cbNeto_Iva_21: TAdvComboBox
                  Left = 475
                  Top = 321
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 31
                end
                object cbIva_21: TAdvComboBox
                  Left = 475
                  Top = 350
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 32
                end
                object cbIva_5: TAdvComboBox
                  Left = 475
                  Top = 236
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 33
                end
                object cbMoneda: TAdvComboBox
                  Left = 131
                  Top = 236
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 34
                end
                object cbNeto_Iva_27: TAdvComboBox
                  Left = 475
                  Top = 377
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 35
                end
                object cbIva_27: TAdvComboBox
                  Left = 475
                  Top = 406
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 36
                end
                object cbNetoTotal: TAdvComboBox
                  Left = 475
                  Top = 433
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  AutoDropWidth = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 22
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 37
                end
              end
            end
          end
          object sgFacturasPortal: TAdvStringGrid
            Left = 1121
            Top = 0
            Width = 83
            Height = 527
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            DrawingStyle = gdsClassic
            FixedColor = clWhite
            FixedCols = 0
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            TabOrder = 1
            OnGetAlignment = sgFacturasPortalGetAlignment
            OnFilterDone = sgFacturasPortalFilterDone
            OnGetFormat = sgFacturasGetFormat
            OnDblClickCell = sgFacturasPortalDblClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = 4474440
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
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
            FilterDropDown.AutoSize = True
            FilterDropDown.Font.Charset = DEFAULT_CHARSET
            FilterDropDown.Font.Color = clWindowText
            FilterDropDown.Font.Height = -11
            FilterDropDown.Font.Name = 'Tahoma'
            FilterDropDown.Font.Style = []
            FilterDropDown.Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000112B4A1A
              4E9C194D9B0F2847000000000000000000000000000000000000000000000000
              0000000000000000000000002762ABD6EDF75DB1E5225CA50000000000000000
              00000000000000000000000000000000000000000000000000000000255FA9C1
              E6F556AEE32058A3000000000000000000000000000000000000000000000000
              000000000000000000000000235CA7ABE2F64DABE41F56A20000000000000000
              00000000000000000000000000000000000000000000000000000000225BA68F
              D6F445A5E11E54A1000000000000000000000000000000000000000000000000
              0000000000000001020F2849225AA677CAEE3BA0DE1E53A1081E3F0001020000
              00000000000000000000000000000000000000040B1122568D3B81C44E96D24A
              A1D93592D12F7EC62465B0113A7602070E000000000000000000000000000000
              060F182F70AF569FD67CC0E893CFEF5BBFE941ADDF3287CE3485D23181C91A50
              95030A14000000000000000000000000265D8F62ACDD86CDEFC3EAF9A8E2F86B
              CFF047BAE6398FD42F7ACB3C92DB368ACF17417B0000000000000000000E2334
              4992CC8BD2F1BAE9F9E2F7FDAFE7F972D4F24ABFE83F98D82B73C83486D243A2
              E22A70BA09182E00000000000022527A6BB6E199E1F7DFF7FDF5FCFFB1EBFB76
              D7F34DC5EA47A2DE2A72C62F7ACB44A2E43891D4163C6C000000000000357DB5
              91D5F2C5EFFBF1FCFEEBFAFDE4F9FDDFF8FDDAF7FDD5F6FDC7ECF9A1D1EE86CB
              F14FADE521599F0000000000003C8BC8F2FAFDB9C6E26884C03C64B10F43A414
              51AD1B60B82471C1529CD676BBE6AAE0F4C5F0FB2665B0000000000000153045
              468DC193C7E7C7E6F4E4F4FBE8F7FCF4FCFEEFFBFDD6F2FACAEBF8A6D6EF71AF
              DC316FB00D233D00000000000000000003070A16334726577B316F9F3275AA38
              85C43681C22D6CA52862981D4872102841020509000000000000}
            FilterDropDown.GlyphActive.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000777554ABFA67667FFA67667FFA676
              67FFA67667FFA67667FFA67667FFA67667FFA67667FF77544AC0000000000000
              00000000000000000000000000000000000AB28578FFF9F4F1FFF9F4F1FFFAF4
              F0FFFAF3F0FFF9F3EFFFF9F3EFFFF9F2EFFFF9F2EEFFAF8276FF000000000000
              000000000000000000040000000D00000016B38779FFFAF5F2FFFAF5F2FF3C94
              67FF3C9065FFFAF4F1FFF9F4F1FFFAF3F0FFFAF3F0FFB18376FF000000000000
              0000000000000000000C4F413BBB3E312F91B4887BFFFBF7F4FF3C9769FF0088
              4AFF00864AFF3C9469FFFAF5F2FFFAF4F2FFFAF5F2FFB18578FF000000000000
              0000000000000000000F8B756CFF62616073B5897CFFFCF8F5FF008B4DFF3CA8
              78FF3CA978FF008A4BFF3C9869FFFBF6F3FFFAF6F2FFB28779FF000000000000
              0000000000000000000E877169FF605E5C73B68B7FFFFCF8F7FF3CAB7BFFFBF8
              F6FFFBF7F6FF3CA979FF008C4EFF3C9A69FFFBF7F4FFB3887BFF000000000000
              0000000000010000000E846E67FF7B787691B78D7FFFFDF9F8FFFCF9F7FFFCF9
              F7FFFCF8F7FFFCF8F6FF3CAC7AFF008F4FFFFBF7F5FFB4897CFF000000000000
              0001000000061A151449836C64FFA29C99C2B88F81FFFDFAF9FFFDFAF9FFFDFA
              F9FFFCF9F8FFFCF9F7FFFCF9F8FF3CAF7DFFFCF8F7FFB68B7EFF000000010000
              0006292220637E6861FB96837BFFAD9E97FCB98F82FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB78D7FFF000000042922
              1F5E86716AFFA89890FFD9D1CCFFC8BBB4FFBCA197FBC8A89DFFC8A89DFFC8A8
              9DFFC8A89DFFC8A89DFFC8A89DFFC8A89DFFC8A89DFF947C74C1050404137462
              5CE8AC9A92FFD5CDC7FFF0EDEAFFD6CEC8FFBEB3ACFFA29188FC7F7167C1564B
              4692302825670202020E00000007000000060000000500000004322A276A9481
              7AFFC2B6AEFFEEEBE8FFFBFAF9FFE0DBD7FFD2C9C3FFB1A29BFFAD998CFFA693
              87FF8B766FFF3027256C000000040000000000000000000000005A4B47B2B5A7
              9FFFE4DFD9FFF9F8F6FFF8F8F5FFF8F8F5FFF8F8F5FFF6F6F3FFE7E3DEFFD5CC
              C4FFA6958DFF564844B300000006000000000000000000000000816E67F4EEEC
              E8FFCCC4C0FFAB9D98FF79635CFF77615AFF77615AFF79635CFFAB9D98FFCCC4
              C0FFEBE8E4FF7A665FEF00000006000000000000000000000000433A3773A997
              91F9D8D1CBFFEDEBE7FFF5F5F2FFF8F8F5FFF8F8F5FFF5F4F1FFEAE7E3FFD2CA
              C4FF9E8E86F93D3331740000000300000000000000000000000000000003110E
              0E214A403C7E71625DBE7F6E68D598847DFF97837BFF7C6A64D56C5D58BF453C
              387F110F0E250000000300000001000000000000000000000000}
            FilterDropDown.TextChecked = 'Checked'
            FilterDropDown.TextUnChecked = 'Unchecked'
            FilterDropDown.Width = 250
            FilterDropDownAuto = True
            FilterDropDownClear = '(All)'
            FilterDropDownCheck = True
            FilterDropDownCheckUnCheckAll = 'Selcc/Un Selec. Todos '
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
            FixedFooters = 1
            FixedColWidth = 113
            FixedRowHeight = 22
            FixedRowAlways = True
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            FloatingFooter.CalculateHiddenRows = False
            FloatingFooter.Color = clGradientActiveCaption
            FloatingFooter.Column = -1
            FloatingFooter.Visible = True
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glCustom
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
            SearchFooter.ColorTo = clNone
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
            SelectionColor = 13744549
            SelectionTextColor = clWindowText
            SortSettings.Show = True
            SortSettings.HeaderColor = clWhite
            SortSettings.HeaderColorTo = clWhite
            SortSettings.HeaderMirrorColor = clWhite
            SortSettings.HeaderMirrorColorTo = clWhite
            Version = '9.2.1.0'
            ColWidths = (
              113
              94
              64
              64
              64)
            RowHeights = (
              22
              22)
          end
        end
      end
      object pagFacturas: TTabSheet
        Caption = 'Facturas de Compra'
        ImageIndex = 3
        object dbgFacturas: TDBAdvGrid
          Left = 0
          Top = 41
          Width = 1204
          Height = 535
          Align = alClient
          ColCount = 2
          DrawingStyle = gdsClassic
          FixedColor = clWhite
          RowCount = 2
          FixedRows = 1
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect, goFixedRowDefAlign]
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
          EnhTextSize = True
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
          FixedColWidth = 20
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
          SortSettings.IndexShow = True
          SortSettings.SortOnVirtualCells = False
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
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
              Width = 20
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
              Width = 86
            end>
          DataSource = DSFacCompras
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
            20
            86)
          RowHeights = (
            22
            22)
        end
        object Panel2: TPanel
          Left = 0
          Top = 576
          Width = 1204
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1204
            41)
          object JvDBStatusLabel1: TJvDBStatusLabel
            Left = 1084
            Top = 16
            Width = 96
            Height = 13
            DataSource = DSFacCompras
            Style = lsRecordNo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Anchors = [akTop, akRight]
            ParentFont = False
            Transparent = True
            ExplicitLeft = 1121
          end
          object btBuscarFC: TBitBtn
            Left = 112
            Top = 6
            Width = 145
            Height = 25
            Caption = 'Buscar Facturas'
            TabOrder = 0
            OnClick = btBuscarFCClick
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1204
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          DesignSize = (
            1204
            41)
          object Label57: TLabel
            Left = 112
            Top = 7
            Width = 305
            Height = 25
            Caption = 'Facturas de compra registradas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object chOrden: TAdvOfficeCheckBox
            Left = 981
            Top = 13
            Width = 163
            Height = 17
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = chOrdenClick
            Alignment = taRightJustify
            Caption = 'Activar Ordenacion'
            ReturnIsTab = False
            Version = '1.8.4.2'
          end
        end
      end
      object pagMisComprobantes: TTabSheet
        Caption = 'de Mis Comprobantes Recibidos'
        object pnMedio: TPanel
          Left = 0
          Top = 49
          Width = 1204
          Height = 527
          Align = alClient
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          object tpConfiguracion: TAdvToolPanelTab
            Left = 0
            Top = 0
            Width = 361
            Height = 527
            AutoOpenCloseSpeed = aocFast
            Color = 16773091
            ColorTo = 16765357
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 9126421
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Position = ppLeft
            SlideSpeed = ssInstant
            Style = esOffice2010Blue
            TabBorderColor = 16765357
            TabColor = 16773091
            TabColorTo = 16765357
            TabHoverColor = 14285309
            TabHoverColorTo = 9102333
            TextDirection = tdBottomToTop
            Version = '1.8.5.5'
            object pnConfiguracion: TAdvToolPanel
              Left = 23
              Top = 0
              Width = 338
              Height = 527
              BackgroundTransparent = False
              BackGroundPosition = bpTopLeft
              Button3D = False
              HoverButtonColor = 14285309
              HoverButtonColorTo = 9102333
              DownButtonColor = 8122111
              DownButtonColorTo = 7131391
              CaptionButton = False
              Color = 15192511
              ColorTo = 15192511
              GradientDirection = gdVertical
              DockDots = True
              Caption = 'Configuracion Campos'
              CaptionGradientDirection = gdVertical
              FocusCaptionFontColor = 9126421
              FocusCaptionColor = 6805503
              FocusCaptionColorTo = 10676223
              NoFocusCaptionFontColor = 9126421
              NoFocusCaptionColor = 16773091
              NoFocusCaptionColorTo = 16765357
              OpenWidth = 777
              CloseHint = 'Close panel'
              LockHint = 'Lock panel'
              UnlockHint = 'Unlock panel'
              Sections = <>
              SectionLayout.CaptionColor = 16772834
              SectionLayout.CaptionColorTo = 16772834
              SectionLayout.CaptionFontColor = 9126421
              SectionLayout.CaptionRounded = False
              SectionLayout.Corners = scRectangle
              SectionLayout.BackGroundColor = clWhite
              SectionLayout.BackGroundColorTo = clWhite
              SectionLayout.BorderColor = 16765357
              SectionLayout.BorderWidth = 1
              SectionLayout.CaptionGradientDir = gdVertical
              SectionLayout.BackGroundGradientDir = gdVertical
              SectionLayout.Indent = 4
              SectionLayout.Spacing = 4
              SectionLayout.ItemFontColor = 9126421
              SectionLayout.ItemHoverTextColor = 9126421
              SectionLayout.ItemHoverUnderline = True
              SectionLayout.UnderLineCaption = False
              ShowCaptionBorder = False
              ShowClose = False
              ShowHint = True
              Style = esOffice2010Blue
              Version = '1.8.5.5'
              object AdvPanel1: TAdvPanel
                Left = 1
                Top = 24
                Width = 336
                Height = 502
                Align = alClient
                Color = clMenuHighlight
                TabOrder = 0
                UseDockManager = True
                Version = '2.7.0.2'
                BorderColor = clBlack
                Caption.Color = clWhite
                Caption.ColorTo = clNone
                Caption.Font.Charset = DEFAULT_CHARSET
                Caption.Font.Color = 9126421
                Caption.Font.Height = -11
                Caption.Font.Name = 'Tahoma'
                Caption.Font.Style = []
                Caption.GradientDirection = gdVertical
                Caption.Indent = 0
                Caption.ShadeLight = 255
                CollapsColor = clNone
                CollapsDelay = 0
                DoubleBuffered = True
                FixedWidth = True
                ShadowColor = clBlack
                ShadowOffset = 0
                StatusBar.BorderColor = clNone
                StatusBar.BorderStyle = bsSingle
                StatusBar.Font.Charset = DEFAULT_CHARSET
                StatusBar.Font.Color = 4473924
                StatusBar.Font.Height = -11
                StatusBar.Font.Name = 'Tahoma'
                StatusBar.Font.Style = []
                StatusBar.Color = clWhite
                StatusBar.GradientDirection = gdVertical
                Text = ''
                FullHeight = 474
                object Label1: TLabel
                  Left = 8
                  Top = 11
                  Width = 34
                  Height = 16
                  Caption = 'Fecha'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 8
                  Top = 39
                  Width = 106
                  Height = 16
                  Caption = 'Tipo Comprobante'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 8
                  Top = 67
                  Width = 87
                  Height = 16
                  Caption = 'Punto de Venta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label4: TLabel
                  Left = 8
                  Top = 96
                  Width = 84
                  Height = 16
                  Caption = 'Numero Desde'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 8
                  Top = 124
                  Width = 81
                  Height = 16
                  Caption = 'Numero Hasta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 8
                  Top = 152
                  Width = 65
                  Height = 16
                  Caption = 'Nro.de CAE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 8
                  Top = 181
                  Width = 93
                  Height = 16
                  Caption = 'Tipo Documento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 8
                  Top = 238
                  Width = 88
                  Height = 16
                  Caption = 'Nro.Doc.Emisor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 8
                  Top = 266
                  Width = 77
                  Height = 16
                  Caption = 'Neto Gravado'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 8
                  Top = 294
                  Width = 96
                  Height = 16
                  Caption = 'Neto No Gravado'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 8
                  Top = 323
                  Width = 87
                  Height = 16
                  Caption = 'Importe Exento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 8
                  Top = 351
                  Width = 65
                  Height = 16
                  Caption = 'ImporteIVA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label13: TLabel
                  Left = 8
                  Top = 380
                  Width = 78
                  Height = 16
                  Caption = 'Importe Total'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 350
                  Top = 61
                  Width = 83
                  Height = 16
                  Caption = 'Articulo (21%)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 350
                  Top = 101
                  Width = 94
                  Height = 16
                  Caption = 'Articulo (10.5%)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 347
                  Top = 21
                  Width = 76
                  Height = 16
                  Caption = 'Articulo (0%)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 359
                  Top = 154
                  Width = 216
                  Height = 16
                  Caption = 'Relacion Comprobantes AFIP/Sistema'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 8
                  Top = 209
                  Width = 97
                  Height = 16
                  Caption = 'Denomin. Emisor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object ceCodigo: TJvComboEdit
                  Left = 350
                  Top = 80
                  Width = 73
                  Height = 21
                  ButtonWidth = 16
                  ClickKey = 0
                  Color = clBtnFace
                  Glyph.Data = {
                    4E000000424D4E000000000000003E000000280000000A000000040000000100
                    010000000000100000000000000000000000020000000200000000000000FFFF
                    FF00FFC000003300000033000000FFC00000}
                  Images = ImageList1
                  TabOrder = 13
                  Text = ''
                  OnButtonClick = BuscarArticulosExecute
                end
                object ceCodigo105: TJvComboEdit
                  Left = 350
                  Top = 120
                  Width = 73
                  Height = 21
                  ButtonWidth = 16
                  ClickKey = 0
                  Color = clBtnFace
                  Glyph.Data = {
                    4E000000424D4E000000000000003E000000280000000A000000040000000100
                    010000000000100000000000000000000000020000000200000000000000FFFF
                    FF00FFC000003300000033000000FFC00000}
                  Images = ImageList1
                  TabOrder = 14
                  Text = ''
                  OnButtonClick = BuscarArticulosExecute
                end
                object edDetalle105: TEdit
                  Left = 429
                  Top = 120
                  Width = 312
                  Height = 21
                  Color = clInfoBk
                  Enabled = False
                  TabOrder = 15
                end
                object edDetalle: TEdit
                  Left = 431
                  Top = 80
                  Width = 312
                  Height = 21
                  Color = clInfoBk
                  Enabled = False
                  TabOrder = 16
                end
                object ceCodigoCero: TJvComboEdit
                  Left = 350
                  Top = 40
                  Width = 73
                  Height = 21
                  ButtonWidth = 16
                  ClickKey = 0
                  Color = clBtnFace
                  Glyph.Data = {
                    4E000000424D4E000000000000003E000000280000000A000000040000000100
                    010000000000100000000000000000000000020000000200000000000000FFFF
                    FF00FFC000003300000033000000FFC00000}
                  Images = ImageList1
                  TabOrder = 17
                  Text = ''
                  OnButtonClick = BuscarArticulosExecute
                end
                object edDetalleCero: TEdit
                  Left = 431
                  Top = 40
                  Width = 312
                  Height = 21
                  Color = clInfoBk
                  Enabled = False
                  TabOrder = 18
                end
                object btParamMisCpbte: TButton
                  Left = 600
                  Top = 404
                  Width = 129
                  Height = 25
                  Caption = 'Guardar Parametros'
                  TabOrder = 19
                  OnClick = btParamMisCpbteClick
                end
                object dbgRelaciones: TDBGrid
                  Left = 347
                  Top = 176
                  Width = 387
                  Height = 222
                  DataSource = DSRelacion
                  TabOrder = 20
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = 9126421
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'COMPROBANTE_AFIP'
                      Title.Alignment = taCenter
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = 9126421
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 123
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'MUESTRACOMPROB'
                      Title.Alignment = taCenter
                      Title.Font.Charset = DEFAULT_CHARSET
                      Title.Font.Color = 9126421
                      Title.Font.Height = -11
                      Title.Font.Name = 'Tahoma'
                      Title.Font.Style = [fsBold]
                      Width = 224
                      Visible = True
                    end>
                end
                object cbFecha: TAdvComboBox
                  Left = 122
                  Top = 10
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object cbTipoCpbte: TAdvComboBox
                  Left = 122
                  Top = 38
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object cbPuntoVta: TAdvComboBox
                  Left = 122
                  Top = 66
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object cbNroDesde: TAdvComboBox
                  Left = 122
                  Top = 95
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object cbNroHasta: TAdvComboBox
                  Left = 122
                  Top = 123
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object cbCAE: TAdvComboBox
                  Left = 122
                  Top = 151
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object cbTipoDoc: TAdvComboBox
                  Left = 122
                  Top = 180
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
                object cbNroDoc: TAdvComboBox
                  Left = 122
                  Top = 238
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 7
                end
                object cbNetoNoGravado: TAdvComboBox
                  Left = 122
                  Top = 295
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 8
                end
                object cbExento: TAdvComboBox
                  Left = 122
                  Top = 323
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 9
                end
                object cbIVA: TAdvComboBox
                  Left = 122
                  Top = 352
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 10
                end
                object cbTotal: TAdvComboBox
                  Left = 122
                  Top = 381
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 11
                end
                object cbNetoGravado: TAdvComboBox
                  Left = 122
                  Top = 266
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 12
                end
                object cbDenominacion: TAdvComboBox
                  Left = 122
                  Top = 208
                  Width = 190
                  Height = 21
                  Color = clWindow
                  Version = '2.0.0.8'
                  Visible = True
                  ButtonWidth = 17
                  EmptyTextStyle = []
                  DropDownCount = 13
                  DropWidth = 0
                  Enabled = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 9126421
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemIndex = -1
                  LabelFont.Charset = DEFAULT_CHARSET
                  LabelFont.Color = clWindowText
                  LabelFont.Height = -11
                  LabelFont.Name = 'Tahoma'
                  LabelFont.Style = []
                  ParentFont = False
                  TabOrder = 21
                end
              end
            end
          end
          object sgFacturas: TAdvStringGrid
            Left = 361
            Top = 0
            Width = 843
            Height = 527
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            DrawingStyle = gdsClassic
            FixedColor = clWhite
            FixedCols = 0
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            TabOrder = 1
            OnGetAlignment = sgFacturasGetAlignment
            OnGetFormat = sgFacturasGetFormat
            OnDblClickCell = sgFacturasDblClickCell
            ActiveCellFont.Charset = DEFAULT_CHARSET
            ActiveCellFont.Color = 4474440
            ActiveCellFont.Height = -11
            ActiveCellFont.Name = 'Tahoma'
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
            FixedColWidth = 113
            FixedRowHeight = 22
            FixedRowAlways = True
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'Tahoma'
            FixedFont.Style = [fsBold]
            FloatFormat = '%.2f'
            HoverButtons.Buttons = <>
            HTMLSettings.ImageFolder = 'images'
            HTMLSettings.ImageBaseName = 'img'
            Look = glCustom
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
            SearchFooter.ColorTo = clNone
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
            SelectionColor = 13744549
            SelectionTextColor = clWindowText
            SortSettings.HeaderColor = clWhite
            SortSettings.HeaderColorTo = clWhite
            SortSettings.HeaderMirrorColor = clWhite
            SortSettings.HeaderMirrorColorTo = clWhite
            Version = '9.2.1.0'
            ColWidths = (
              113
              94
              64
              64
              64)
            RowHeights = (
              22
              22)
          end
        end
        object pnPie: TPanel
          Left = 0
          Top = 576
          Width = 1204
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentBackground = False
          TabOrder = 1
          object JvLabel1: TJvLabel
            Left = 14
            Top = 0
            Width = 54
            Height = 13
            Caption = 'Borrar Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShadowPos = spLeftTop
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -12
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object btImpMisComprobantes: TBitBtn
            Left = 1098
            Top = 5
            Width = 101
            Height = 31
            Action = Importar
            Align = alRight
            Caption = 'Importar'
            TabOrder = 0
          end
          object btExcelMisCpbtes: TBitBtn
            Left = 992
            Top = 5
            Width = 106
            Height = 31
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Action = CargarExcel
            Align = alRight
            Caption = 'Cargar CSV'
            TabOrder = 1
          end
        end
        object pnCabecera: TPanel
          Left = 0
          Top = 0
          Width = 1204
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          DesignSize = (
            1204
            49)
          object JvLabel2: TJvLabel
            Left = 7
            Top = 2
            Width = 43
            Height = 13
            Caption = 'Sucursal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShadowPos = spLeftTop
            Transparent = True
            HotTrackFont.Charset = DEFAULT_CHARSET
            HotTrackFont.Color = clWindowText
            HotTrackFont.Height = -12
            HotTrackFont.Name = 'MS Sans Serif'
            HotTrackFont.Style = []
          end
          object Label30: TLabel
            Left = 280
            Top = 15
            Width = 432
            Height = 25
            Caption = 'Importar desde Mis Comprobantes Recibidos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbcSucursal: TJvDBLookupCombo
            Left = 7
            Top = 21
            Width = 226
            Height = 21
            DisplayEmpty = 'Sin Sucursal'
            EmptyValue = '-1'
            LookupField = 'CODIGO'
            LookupDisplay = 'DETALLE'
            LookupSource = DSSucursal
            TabOrder = 0
            OnClick = dbcSucursalClick
          end
          object chBox_Comprobantes: TAdvOfficeCheckBox
            Left = 977
            Top = 19
            Width = 97
            Height = 17
            Anchors = [akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
            OnClick = chBox_ComprobantesClick
            Alignment = taRightJustify
            Caption = 'Activar Filtros'
            ReturnIsTab = False
            Version = '1.8.4.2'
          end
        end
      end
      object pagRelaciones: TTabSheet
        Caption = 'Relacion Conceptos'
        ImageIndex = 1
        object pnCab: TPanel
          Left = 0
          Top = 0
          Width = 1204
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
        end
        object dbgAsiganciones: TDBGrid
          Left = 0
          Top = 41
          Width = 1204
          Height = 535
          Align = alClient
          DataSource = DSRelacionProvee
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgAsigancionesColEnter
          OnEditButtonClick = BuscarConeptoExecute
          OnEnter = dbgAsigancionesEnter
          OnKeyPress = dbgAsigancionesKeyPress
          Columns = <
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 92
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRAPROVEEDOR'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 277
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CONCPETO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 102
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRACONCPETO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 434
              Visible = True
            end>
        end
        object pnPieRelacion: TPanel
          Left = 0
          Top = 576
          Width = 1204
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          object efindProveedor: TJvDBFindEdit
            Left = 16
            Top = 10
            Width = 337
            Height = 21
            TabOrder = 0
            Text = ''
            DataField = 'MUESTRAPROVEEDOR'
            DataSource = DSRelacionProvee
            FindStyle = fsFilter
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 645
    Width = 1212
    Align = alBottom
    ButtonHeight = 21
    ExplicitTop = 645
    ExplicitWidth = 1212
    inherited btConfirma: TBitBtn
      Height = 21
      Visible = False
      ExplicitHeight = 21
    end
    inherited btNuevo: TBitBtn
      Height = 21
      Visible = False
      ExplicitHeight = 21
    end
    inherited btCancelar: TBitBtn
      Height = 21
      Visible = False
      ExplicitHeight = 21
    end
    inherited btModificar: TBitBtn
      Height = 21
      Visible = False
      ExplicitHeight = 21
    end
    inherited Pr: TSpeedButton
      Height = 21
      Visible = False
      ExplicitHeight = 21
    end
    inherited btBuscar: TBitBtn
      Height = 21
      Visible = False
      ExplicitHeight = 21
    end
    inherited Ne: TSpeedButton
      Height = 21
      Visible = False
      ExplicitHeight = 21
    end
    inherited btBorrar: TBitBtn
      Width = 79
      Height = 21
      Visible = False
      ExplicitWidth = 79
      ExplicitHeight = 21
    end
    inherited btSalir: TBitBtn
      Left = 486
      Height = 21
      ExplicitLeft = 486
      ExplicitHeight = 21
    end
    object ToolButton1: TToolButton
      Left = 561
      Top = 0
      Width = 124
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object Button2: TButton
      Left = 685
      Top = 0
      Width = 94
      Height = 21
      Action = Novedades
      TabOrder = 7
    end
    object ToolButton2: TToolButton
      Left = 779
      Top = 0
      Width = 114
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object pgBar: TAdvProgress
      Left = 893
      Top = 0
      Width = 152
      Height = 21
      Anchors = [akTop, akRight]
      Smooth = True
      MarqueeInterval = 1
      BarColor = clHighlight
      Step = 1
      TabOrder = 8
      BkColor = clWindow
      Version = '1.2.0.0'
    end
    object edLote: TEdit
      Left = 1045
      Top = 0
      Width = 84
      Height = 21
      TabOrder = 9
    end
    object SpeedButton1: TSpeedButton
      Left = 1129
      Top = 0
      Width = 28
      Height = 21
      Action = BorrarLote
      Flat = True
      ParentShowHint = False
      ShowHint = True
    end
    object Label56: TLabel
      Left = 1157
      Top = 0
      Width = 52
      Height = 21
      Caption = 'Borrar Lote'
    end
  end
  inherited Panel1: TPanel
    Top = 675
    Width = 1212
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 675
    ExplicitWidth = 1212
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1123
      ExplicitWidth = 1123
    end
  end
  inherited ActionList1: TActionList
    inherited Buscar: TAction
      ShortCut = 0
    end
    object CargarExcel: TAction
      Caption = 'Cargar Excel'
      ImageIndex = 11
      OnExecute = CargarExcelExecute
    end
    object Importar: TAction
      Caption = 'Importar'
      OnExecute = ImportarExecute
    end
    object BuscarArticulos: TAction
      Caption = 'Buscar Articulos'
      OnExecute = BuscarArticulosExecute
    end
    object Novedades: TAction
      Caption = 'Novedades'
      OnExecute = NovedadesExecute
    end
    object BorrarLote: TAction
      ImageIndex = 3
      OnExecute = BorrarLoteExecute
    end
    object BuscarConepto: TAction
      ShortCut = 16397
      OnExecute = BuscarConeptoExecute
    end
    object VerificaRelacion: TAction
      Caption = 'VerificaRelacion'
      OnExecute = VerificaRelacionExecute
    end
    object CargarCSVPortal: TAction
      Caption = 'Cargar CSV'
      ImageIndex = 11
      OnExecute = CargarCSVPortalExecute
    end
    object ImportarPortal: TAction
      Caption = 'Importar Facturas desde el Portal'
      OnExecute = ImportarPortalExecute
    end
    object VerificaRelacionPortal: TAction
      Caption = 'VerificaRelacionPortal'
      OnExecute = VerificaRelacionPortalExecute
    end
    object ControlFacturas: TAction
      Caption = 'Controlar Contra Facturas'
      OnExecute = ControlFacturasExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 560
    Top = 80
  end
  inherited ImageList1: TImageList
    Left = 296
    Top = 128
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
      0000000000000000000021212100676D6E008181810040404000151515000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFB3B3B3007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
      7E00B3B3B300000000FF000000FF000000FF0000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      000021212100676D6E00AEB8B900CED2D2009797970057575700444444001D1D
      1D000A0A0A000000000000000000000000009F9F9E009A9A9A00959595009595
      950049494900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004848480093939300989898009F9F9E0000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A00000000000000000021212100676D
      6E00AEB8B900D1D9D900D6DADA00CED2D200BDC3C4005E5E5E00515151003232
      32001414140000000000000000000000000074747200A5A5A500A4A4A400A3A4
      A40051525200FFFFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FFFF
      FF0052525200A4A4A400A5A5A50074737200000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000021212100AEB8B900D6E7
      E700DDE1E100C8D5C8004C994C00E4E4E400CCCCCC0066666600575757004444
      44002929290000000000000000000000000074747200ACABAA00AFAFAE00AEAE
      AD0057575600FFFFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FFFF
      FF0057575600AEAEAE00ADACAB0074747200000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A0076737300000000004C4C4C00D6E7E700D6E7
      E700B8D1B80019861900198619003E913E00D4D4D400747B7C00606060005151
      51003232320000000000000000000000000074747200B5B5B300BBBAB900BAB9
      B8005D5C5C00FFFFFF00B7B7B500B7B7B500F0F0F000B7B7B500F0F0F000FFFF
      FF005D5C5C00BBBAB900B4B3B20075757300087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A78780075737300000000007D838400D6E7E70082B9
      8600B1CFB5004C994C00CCCCCC003F8C3F00DCDCDC009B9B9B00666666005555
      55004444440014141400000000000000000074747200BEBEBC00C3C3C200C2C2
      C10061616000FFFFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FFFF
      FF0061616000C3C3C200BEBEBD0074747200087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C69690000000000B7C0C000B7D9C00064A4
      6400D3E0E000B7CCC000CED2D20096AF9600D1D1D100A1A8A9006E6E6E006060
      60005151510027272700000000000000000073737100C1C1BF00C5C5C400C4C4
      C30062626100FFFFFF00B7B7B500F0F0F000B7B7B500F0F0F000F0F0F000FFFF
      FF0062626100C5C5C400C1C1BF00737371000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A0000000000B5C4C50084B98D007CAF
      7C00D8E1E100D1D9D900A8C6AC00A4BDA400C6C6C600C0C0C000777777006464
      6400575757003B3B3B00000000000000000073737100C2C2C100C6C6C500C5C5
      C40062626200FFFFFF00F0F0F000F0F0F000F0F0F0008D8D8C008D8D8C008D8D
      8C0062626200C6C6C500C2C1C10073737100138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000004C4C4C009EC6A600359939000079
      0000B1CFB5009EC0A600006C00007CBC7C00C6C6C600C0C0C0007D8384006E6E
      6E006060600046464600131313000000000073737100C6C4C400CAC9C900C9C8
      C80064646400FFFFFF00B7B7B500B7B7B500F1F1F1008D8D8C00FFFFFF00F0F0
      F000A4A4A400CAC9C900C5C4C300737371000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000004C4C4C00D6E7E70035993900A2CF
      A200DBE7E700358C390071AA710078B87800C6C6C600C0C0C0009B9B9B007777
      77006666660057575700282828000000000073737100CCCCCC00D1D1D000D0D0
      CF0068686700FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8C00F0F0F000A4A4
      A400C9C8C800D1D1D000D0D0CF00737371000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000004A505100D6E7E700C6E0D300C6E0
      D30068AC6C0082B38600D9DDDD00C9C9C900C3C3C300CECECE00C9C9C9009797
      97006E6E6E00606060003B3B3B000000000073737100C3C3C100C5C5C300C4C4
      C3008A8A89006262610062626100626261006262610062626100A4A4A400C9C8
      C800C4C4C300C4C4C300C7C7C500737371000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      000000000000000000000000000000000000B5B9B900D6E7E700D6E7E700D6E7
      E700D3E0E000C8CCCC00D1D1D100DCDCDC00DCDCDC00D1D1D100C8CCCC00C2C2
      C200BDC4C5008A8A8A00575757000000000071716F00E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900727270000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      000000000000000000000000000000000000BCC0C000D6E7E700CBD3D300D8D8
      D800DCDCDC00DCDCDC00D3D7D700B4B4B400A6A6A600DCE4E400BFC8C8008793
      95009CAEB100CECECE008686860000000000A9A9A90073737100737371007373
      7100737371007373710073737200747472007474720074747200747472007474
      7200747472007474720073737100A4A4A400000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      000000000000000000000000000000000000BABABA00DCDCDC00DCDCDC00BFBF
      BF00C6C6C600CBCFCF00DCE4E400AEB6B600C2CECE00BFBFBF00C2CECE008C8C
      8C00575D5E003333330000000000000000008A8A8900E0E0E000C4C4C200C3C3
      C100C2C3C100C1C1C000C3C3C200C3C3C200C3C3C200C3C3C200C3C3C200C3C3
      C200C3C3C200C3C3C200C3C3C2008484840000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      00000000000000000000000000000000000055555500777777005F5F5F007979
      7900A2A2A200DBDBDB00EFF3F3009E9E9E00DBDBDB00F8F8F800BFBFBF002121
      21000000000000000000000000000000000075757300E6E6E600DCDCDC00DCDC
      DC00DDDDDD00DBDBDB0076767400777775007777750077777500777775007777
      7500777775007777750077777500000000FF0000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004C4C4C005353
      53007777770087878700A7A7A700646464002121210043434300000000000000
      000000000000000000000000000000000000000000FF77777600777776007777
      76007777760077777600000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
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
      00000000000000000000000000000000F81FF33FFC1FF007E007E007F0070000
      C003C000C0070000800180018007000080010000800700000000000080030000
      000000008003000000008000800300000000E001000100000000F00300010000
      0000F01F000100008001E03F000100008001E03F00010000C003C03F00030000
      E007C07F000F0001F81FF8FFC03F83FFFFFFF81FF81FF81FC007E007E007E007
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
    Left = 328
    Top = 264
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 560
    Top = 488
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 496
    Top = 208
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 568
    Top = 240
  end
  inherited QBrowse2: TFDQuery
    Left = 328
    Top = 520
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 432
    Top = 472
  end
  object OpenDialog: TOpenDialog
    Left = 616
    Top = 113
  end
  object QProveedorCuit: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from poveedor p where p.n_de_cuit=:cuit')
    Left = 608
    Top = 201
    ParamData = <
      item
        Name = 'CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end>
    object QProveedorCuitCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo,s.detalle from sucursal s')
    Left = 680
    Top = 377
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 744
    Top = 369
  end
  object QRelacionCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.id, r.comprobante_afip,r.id_comprobante, r.sucursal,r.c' +
        'odigo_afip from tabla_relacion_afip_compra r'
      'where r.sucursal=:sucursal')
    Left = 848
    Top = 353
    ParamData = <
      item
        Position = 1
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRelacionCpbteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRelacionCpbteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object QRelacionCpbteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QRelacionCpbteCODIGO_AFIP: TIntegerField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
    end
    object QRelacionCpbteCOMPROBANTE_AFIP: TStringField
      FieldName = 'COMPROBANTE_AFIP'
      Origin = 'COMPROBANTE_AFIP'
      Size = 30
    end
  end
  object DSPRelacionCpbte: TDataSetProvider
    DataSet = QRelacionCpbte
    Options = []
    Left = 945
    Top = 353
  end
  object CDSRelacionCpbte: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SUCURSAL'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRelacionCpbte'
    AfterPost = CDSRelacionCpbteAfterPost
    OnNewRecord = CDSRelacionCpbteNewRecord
    Left = 1032
    Top = 353
    object CDSRelacionCpbteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRelacionCpbteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSRelacionCpbteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSRelacionCpbteMUESTRACOMPROB: TStringField
      DisplayLabel = 'Comprobante Sistema'
      FieldKind = fkLookup
      FieldName = 'MUESTRACOMPROB'
      LookupDataSet = QComprobante
      LookupKeyFields = 'ID_COMPROBANTE'
      LookupResultField = 'DENOMINACION'
      KeyFields = 'ID_COMPROBANTE'
      Lookup = True
    end
    object CDSRelacionCpbteCODIGO_AFIP: TIntegerField
      DisplayLabel = 'C.Afip'
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
    end
    object CDSRelacionCpbteCOMPROBANTE_AFIP: TStringField
      DisplayLabel = 'Comprobante AFIP'
      FieldName = 'COMPROBANTE_AFIP'
      Origin = 'COMPROBANTE_AFIP'
      Size = 30
    end
  end
  object QId: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(r.id) from tabla_relacion_afip_compra r')
    Left = 856
    Top = 409
    object QIdMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSRelacion: TDataSource
    DataSet = CDSRelacionCpbte
    Left = 961
    Top = 433
  end
  object QComprobante: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_comprobante,c.denominacion,c.tipo_comprob,c.clase_co' +
        'mprob,c.letra,c.prefijo, coalesce(c.toma_nro_de,-1) from comprob' +
        'antes c'
      'where c.sucursal = :sucursal and'
      '      c.afecta_iva = '#39'S'#39' and'
      '      c.compra_venta ='#39'C'#39' and'
      '      c.tipo_comprob<>'#39'TK'#39' and'
      '      c.en_uso='#39'S'#39
      'order by c.tipo_comprob,c.letra,c.prefijo')
    Left = 848
    Top = 465
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object spGenerarFc: TFDStoredProc
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
    StoredProcName = 'GENERAR_FCCOMPRA'
    Left = 1128
    Top = 273
    ParamData = <
      item
        Position = 1
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 2
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'NRO_CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 4
        Name = 'COMP_NETO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'COMP_IVA'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'COMP_TOTAL'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'COMP_EXENTO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'COMP_NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 9
        Name = 'COMP_PREFIO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 10
        Name = 'COMP_FECHA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'CODIGO21'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 12
        Name = 'CODIGO105'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 13
        Name = 'CODIGOEXENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 14
        Name = 'COMP_DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 15
        Name = 'TIPO_DOC_RECP'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 16
        Name = 'DENOMINACION'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 17
        Name = 'LOTE_AFIP'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 18
        Name = 'GRAVADO'
        DataType = ftFixedChar
        ParamType = ptOutput
        Size = 1
      end>
  end
  object QBorrarLote: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from fcCompcab f where f.lote_afip=:lote')
    Left = 80
    Top = 513
    ParamData = <
      item
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QRelacionProvee: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ps.codigo,p.nombre as MuestraProveedor,ps.concpeto,s.deta' +
        'lle_stk as MuestraConcpeto from tabla_relac_provee_stock ps'
      'left join poveedor p on p.codigo=ps.codigo'
      'left join stock s on s.codigo_stk=ps.concpeto'
      'order by p.nombre')
    Left = 768
    Top = 121
    ParamData = <
      item
        Position = 1
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRelacionProveeCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QRelacionProveeCONCPETO: TStringField
      FieldName = 'CONCPETO'
      Origin = 'CONCPETO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QRelacionProveeMUESTRACONCPETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONCPETO'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object QRelacionProveeMUESTRAPROVEEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPROVEEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPRelacionProvee: TDataSetProvider
    DataSet = QRelacionProvee
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 841
    Top = 113
  end
  object CDSRelacionProvee: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SUCURSAL'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRelacionProvee'
    AfterPost = CDSRelacionProveeAfterPost
    OnNewRecord = CDSRelacionCpbteNewRecord
    Left = 912
    Top = 121
    object CDSRelacionProveeCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSRelacionProveeCONCPETO: TStringField
      DisplayLabel = 'Concep'
      FieldName = 'CONCPETO'
      Origin = 'CONCPETO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSRelacionProveeMUESTRACONCPETO: TStringField
      DisplayLabel = 'Concpeto Descripcion'
      FieldName = 'MUESTRACONCPETO'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSRelacionProveeMUESTRAPROVEEDOR: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'MUESTRAPROVEEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSRelacionProvee: TDataSource
    DataSet = CDSRelacionProvee
    Left = 985
    Top = 121
  end
  object FDQAgregaNuevos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'insert into tabla_relac_provee_stock'
      '   select p.codigo, '#39#39'  from poveedor p'
      '      where p.codigo not in'
      '         (select r2.codigo from tabla_relac_provee_stock r2 )')
    Left = 104
    Top = 104
  end
  object FDQBorraBorrados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from tabla_relac_provee_stock re'
      
        '   where re.codigo not in (Select r2.codigo From tabla_relac_pro' +
        'vee_stock r2 )')
    Left = 120
    Top = 320
  end
  object QBuscaStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,detalle_stk from stock s'
      'where s.clase_articulo<>0')
    Left = 68
    Top = 32
  end
  object DSBuscaStock: TDataSource
    DataSet = CDSBuscaStock
    Left = 236
    Top = 160
  end
  object CDSBuscaStock: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaStock'
    Left = 260
    Top = 64
    object CDSBuscaStockDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSBuscaStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
  end
  object DSPBuscaStock: TDataSetProvider
    DataSet = QBuscaStock
    Options = []
    Left = 180
    Top = 80
  end
  object ComBuscadorStock: TComBuscador
    Data = CDSBuscaStock
    Campo = 'CODIGO_STK'
    Titulo = 'Buscador Stock'
    rOk = False
    Left = 260
    Top = 248
  end
  object QVerificaNro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Max(c.id_fc) as Id, Max(c.TipoCpbte) as TipoCpbte from fc' +
        'compcab c where'
      'c.nrocpbte = :Nro and '
      'c.TipoCpbte = :Tipo')
    Left = 936
    Top = 200
    ParamData = <
      item
        Name = 'NRO'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QVerificaNroID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVerificaNroTIPOCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
  end
  object spGenerarFacturaPortal: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GENERAR_FCOMPRA_AFIP'
    Left = 1124
    Top = 169
    ParamData = <
      item
        Position = 1
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 2
        Name = 'COMP_FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'COMP_PREFIO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 5
        Name = 'COMP_NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 6
        Name = 'TIPO_DOC_RECP'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 7
        Name = 'NRO_CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 8
        Name = 'DENOMINACION'
        DataType = ftString
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 9
        Name = 'COMP_TOTAL'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'COMP_NETO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'COMP_EXENTO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'CODIGO21'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 13
        Name = 'CODIGO105'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 14
        Name = 'CODIGOEXENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 15
        Name = 'CODIGO27'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 16
        Name = 'COMP_DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'LOTE_AFIP'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 18
        Name = 'COMP_MONEDA'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 19
        Name = 'COMP_TIPOCAMBIO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'COMP_NO_GRAVADO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 21
        Name = 'COMP_PERC_NACIONAL'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 22
        Name = 'COMP_PERCP_IIBB'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 23
        Name = 'COMP_IMP_MUNIC'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 24
        Name = 'COMP_PAGOS_ACTA'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 25
        Name = 'COMP_IMP_INTERNOS'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 26
        Name = 'COMP_OTROS_TRIBUTOS'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 27
        Name = 'COMP_NETOIVA_0'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 28
        Name = 'COMP_NETO_IVA_2_5'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 29
        Name = 'COMP_IVA_2_5'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 30
        Name = 'COMP_NETO_IVA_5'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 31
        Name = 'COMP_IVA_5'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 32
        Name = 'COMP_NETO_IVA_105'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 33
        Name = 'COMP_IVA_105'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 34
        Name = 'COMP_NETO_IVA_21'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 35
        Name = 'COMP_IVA_21'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 36
        Name = 'COMP_NETO_IVA_27'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 37
        Name = 'COMP_IVA_27'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 38
        Name = 'GRAVADO'
        DataType = ftFixedChar
        ParamType = ptOutput
        Size = 1
      end>
  end
  object QSucursalPortal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo,s.detalle from sucursal s')
    Left = 936
    Top = 249
  end
  object DSSucursalPortal: TDataSource
    DataSet = QSucursalPortal
    Left = 1016
    Top = 265
  end
  object QFacturasCompras: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_fc, c.fechacompra,c.fechafiscal, c.tipocpbte,c.clase' +
        'cpbte,c.codigo,c.razonsocial,c.cuit,c.nrocpbte,'
      
        '       c.letrafac,c.sucfac,c.numerofac,c.total,c.ingresa_libro_i' +
        'va from fccompcab c'
      'where c.fechacompra between :desde and :hasta'
      'and c.ingresa_libro_iva='#39'S'#39)
    Left = 1092
    Top = 48
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object QFacturasComprasID_FC: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object QFacturasComprasFECHACOMPRA: TSQLTimeStampField
      DisplayLabel = 'Fecha Compra'
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      Required = True
    end
    object QFacturasComprasFECHAFISCAL: TSQLTimeStampField
      DisplayLabel = 'Fecha Fiscal'
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
      Required = True
    end
    object QFacturasComprasTIPOCPBTE: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFacturasComprasCLASECPBTE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFacturasComprasCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFacturasComprasRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QFacturasComprasCUIT: TStringField
      DisplayLabel = 'Cuit'
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QFacturasComprasNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QFacturasComprasLETRAFAC: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object QFacturasComprasSUCFAC: TStringField
      DisplayLabel = 'Suc'
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QFacturasComprasNUMEROFAC: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QFacturasComprasTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QFacturasComprasINGRESA_LIBRO_IVA: TStringField
      DisplayLabel = 'En Iva'
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSFacCompras: TDataSource
    DataSet = QFacturasCompras
    Left = 1012
    Top = 56
  end
end

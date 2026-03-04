inherited FormOrdenCompra: TFormOrdenCompra
  Left = 309
  Top = 90
  Caption = 'Orden de Compra'
  ClientHeight = 669
  ClientWidth = 900
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  ExplicitWidth = 918
  ExplicitHeight = 710
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 900
    Height = 616
    Align = alClient
    ExplicitWidth = 900
    ExplicitHeight = 616
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 900
      Height = 154
      Align = alTop
      PopupMenu = PopupMenu1
      TabOrder = 0
      DesignSize = (
        900
        154)
      object dbtMuestraComprob: TDBText
        Left = 342
        Top = 16
        Width = 139
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
        Left = 609
        Top = 19
        Width = 22
        Height = 17
        Alignment = taRightJustify
        DataField = 'LETRA'
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
        Left = 634
        Top = 3
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
      object Label13: TLabel
        Left = 6
        Top = 75
        Width = 101
        Height = 13
        Caption = 'Condicion de Compra'
      end
      object Label14: TLabel
        Left = 6
        Top = 112
        Width = 42
        Height = 13
        Caption = 'Dep'#243'sito'
      end
      object Label18: TLabel
        Left = 384
        Top = 38
        Width = 106
        Height = 13
        Caption = 'Fecha de Vencimiento'
      end
      object Label22: TLabel
        Left = 231
        Top = 75
        Width = 65
        Height = 13
        Caption = 'Solicitada Por'
      end
      object lbModo: TLabel
        Left = 223
        Top = 122
        Width = 40
        Height = 26
        Caption = '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbEstado: TLabel
        Left = 493
        Top = 51
        Width = 14
        Height = 19
        Caption = '- -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clFuchsia
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTopOC: TLabel
        Left = 600
        Top = 94
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'lbTopOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalOC: TLabel
        Left = 705
        Top = 93
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Label24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 577
        Top = 74
        Width = 73
        Height = 13
        Caption = 'Max.Autorizado'
      end
      object Label26: TLabel
        Left = 673
        Top = 74
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'O.C Autoriz.-Rec'
      end
      object lbTotalGral: TLabel
        Left = 705
        Top = 131
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Label24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 664
        Top = 112
        Width = 88
        Height = 13
        Caption = 'Total O.C del  Mes'
      end
      object Label28: TLabel
        Left = 570
        Top = 112
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'O.C Sin Autorizar'
      end
      object lbNueva: TLabel
        Left = 604
        Top = 131
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Label24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 406
        Top = 2
        Width = 64
        Height = 14
        DataField = 'ID_OC'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbOCPendiente: TLabel
        Left = 513
        Top = 39
        Width = 134
        Height = 13
        Caption = 'Genera OC x Pendiente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object DBText11: TDBText
        Left = 861
        Top = 1
        Width = 28
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        DataField = 'ESTADO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 829
      end
      object dbeSuc: TDBEdit
        Left = 634
        Top = 16
        Width = 49
        Height = 24
        TabStop = False
        DataField = 'SUC'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object dbeNumero: TDBEdit
        Left = 685
        Top = 16
        Width = 81
        Height = 24
        TabStop = False
        DataField = 'NUMERO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
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
        TabOrder = 10
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
        TabOrder = 9
      end
      object dbeCondCompra: TDBEdit
        Left = 64
        Top = 90
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRACONDCOMPRA'
        DataSource = DSBase
        Enabled = False
        TabOrder = 11
      end
      object dbeDeposito: TDBEdit
        Left = 64
        Top = 128
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRADEPOSITO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 12
      end
      object dbeMuestraRealizo: TDBEdit
        Left = 315
        Top = 90
        Width = 182
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRAREALIZO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 13
      end
      object RxDBESucursal: TJvDBComboEdit
        Left = 96
        Top = 16
        Width = 45
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'SUCURSAL'
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
      object RxDBECodigo: TJvDBComboEdit
        Left = 6
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
        OnButtonClick = BuscarProveedorExecute
        OnKeyDown = RxDBECodigoKeyDown
      end
      object RxDBECondCompra: TJvDBComboEdit
        Left = 6
        Top = 90
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
        TabOrder = 4
        OnButtonClick = BuscarCondicionCompraExecute
        OnKeyDown = RxDBECondCompraKeyDown
      end
      object RxDBEDeposito: TJvDBComboEdit
        Left = 6
        Top = 128
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
        TabOrder = 5
        OnButtonClick = BuscarDepositoExecute
        OnKeyDown = RxDBEDepositoKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 297
        Top = 16
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
        ButtonWidth = 15
        TabOrder = 3
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object RxDBRealizo: TJvDBComboEdit
        Left = 234
        Top = 90
        Width = 75
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'REALIZO'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 14
        OnButtonClick = BuscarEmpleadoExecute
      end
      object dbeFechaCompra: TJvDBDateEdit
        Left = 5
        Top = 16
        Width = 88
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA'
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
        OnExit = dbeFechaCompraExit
      end
      object dbeFechaVencimiento: TJvDBDateEdit
        Left = 384
        Top = 52
        Width = 89
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
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 8
      end
    end
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 154
      Width = 900
      Height = 462
      ActivePage = pagDetalle
      Align = alClient
      TabOrder = 1
      TabPosition = tpBottom
      OnEnter = pcDetalleFacturaEnter
      object pagDetalle: TTabSheet
        Caption = 'Detalles'
        DesignSize = (
          892
          436)
        object Bevel48: TBevel
          Left = 635
          Top = 387
          Width = 124
          Height = 21
          Anchors = [akLeft, akBottom]
        end
        object dbtTotal: TDBText
          Left = 635
          Top = 388
          Width = 119
          Height = 17
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
        end
        object Label23: TLabel
          Left = 588
          Top = 388
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
          ExplicitTop = 308
        end
        object Label19: TLabel
          Left = 474
          Top = 333
          Width = 38
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Autoriz'#243
          ExplicitTop = 253
        end
        object Label15: TLabel
          Left = 474
          Top = 376
          Width = 91
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Fecha Autorizaci'#243'n'
          ExplicitTop = 296
        end
        object Label29: TLabel
          Left = 566
          Top = 414
          Width = 63
          Height = 16
          Anchors = [akLeft, akBottom]
          Caption = 'Cantidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 334
        end
        object dbtCotizacion: TDBText
          Left = 748
          Top = 328
          Width = 58
          Height = 18
          Cursor = crHandPoint
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'COTIZACION'
          DataSource = DatosOrdenCompra.DSOrdenCompraDet
          DragCursor = crArrow
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = dbtCotizacionClick
          ExplicitTop = 248
        end
        object Label30: TLabel
          Left = 626
          Top = 329
          Width = 88
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Cotizacion Unitaria'
          ExplicitTop = 249
        end
        object dbtMoneda: TDBText
          Left = 720
          Top = 328
          Width = 28
          Height = 18
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRAMONEDA'
          DataSource = DatosOrdenCompra.DSOrdenCompraDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          ParentFont = False
          ExplicitTop = 248
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 531
          Top = 324
          Width = 83
          Height = 15
          DataSource = DatosOrdenCompra.DSOrdenCompraDet
          Style = lsRecordNo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Anchors = [akLeft, akBottom]
          ParentFont = False
          Transparent = True
          ExplicitTop = 244
        end
        object DBGrillaDetalle: TDBGrid
          Left = 0
          Top = 0
          Width = 892
          Height = 324
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DatosOrdenCompra.DSOrdenCompraDet
          FixedColor = 10930928
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
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
          OnDragDrop = DBGrillaDetalleDragDrop
          OnDragOver = DBGrillaDetalleDragOver
          OnEditButtonClick = DBGrillaDetalleEditButtonClick
          OnEnter = DBGrillaDetalleEnter
          OnExit = DBGrillaDetalleExit
          OnKeyDown = DBGrillaDetalleKeyDown
          OnKeyPress = DBGrillaDetalleKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 119
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
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'UNIDAD'
              Title.Caption = 'Uni'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDADPEDIDA'
              Title.Alignment = taCenter
              Title.Caption = 'Pedi.'
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
              FieldName = 'CANTIDADAUTORIZADA'
              Title.Alignment = taCenter
              Title.Caption = 'Auto.'
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
              FieldName = 'CANTIDADRECIBIDA'
              Title.Alignment = taCenter
              Title.Caption = 'Rec.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 59
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'IVA_TASA'
              Title.Alignment = taCenter
              Width = 30
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRAMONEDA'
              Title.Alignment = taCenter
              Title.Caption = '#'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Unit.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'TOTAL'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 116
              Visible = True
            end>
        end
        object dbeMuestraAutorizo: TDBEdit
          Left = 554
          Top = 348
          Width = 194
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          Color = clInfoBk
          DataField = 'MUESTRAAUTORIZO'
          DataSource = DSBase
          Enabled = False
          TabOrder = 1
        end
        object pcPieOrdenCompra: TPageControl
          Left = 0
          Top = 326
          Width = 408
          Height = 109
          ActivePage = pagVtos
          Anchors = [akLeft, akBottom]
          MultiLine = True
          Style = tsFlatButtons
          TabHeight = 15
          TabOrder = 3
          TabWidth = 100
          object pagVtos: TTabSheet
            Caption = 'Vencimientos'
            object Label25: TLabel
              Left = 271
              Top = 3
              Width = 109
              Height = 13
              Caption = 'Fecha de Cumplida'
              DragCursor = crHandPoint
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              OnClick = CambiarFechaRecepcionExecute
            end
            object dbgVtos: TDBGrid
              Left = 0
              Top = 1
              Width = 265
              Height = 79
              DataSource = DatosOrdenCompra.DSOrdenCompraVtos
              FixedColor = clGreen
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnColEnter = dbgVtosColEnter
              OnKeyDown = dbgVtosKeyDown
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'DIAS'
                  Title.Alignment = taCenter
                  Title.Caption = 'D'#237'as'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 47
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'FECHA_VENCIMIEMTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vto.Probable'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 84
                  Visible = True
                end
                item
                  Color = clInfoBk
                  Expanded = False
                  FieldName = 'IMPORTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Importe'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGreen
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 96
                  Visible = True
                end>
            end
            object Panel2: TPanel
              Left = 268
              Top = 18
              Width = 126
              Height = 59
              Enabled = False
              TabOrder = 1
              object dbcImpresa: TDBCheckBox
                Left = 8
                Top = 36
                Width = 65
                Height = 13
                Caption = 'Impresa'
                DataField = 'IMPRESO'
                DataSource = DSBase
                TabOrder = 0
              end
              object DBDateEdit1: TJvDBDateEdit
                Left = 7
                Top = 9
                Width = 111
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                DataField = 'FECHACUMPLIDA'
                DataSource = DSBase
                DirectInput = False
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
                TabOrder = 1
                OnExit = dbeFechaCompraExit
              end
            end
          end
          object PagObs: TTabSheet
            Caption = 'Observaciones'
            ImageIndex = 1
            object dbObservaciones: TDBMemo
              Left = 0
              Top = 6
              Width = 401
              Height = 65
              Hint = 'Observaciones que van al pie de la Orden de Compra'
              DataField = 'OBSERVACIONES'
              DataSource = DSBase
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object pagNotas: TTabSheet
            Caption = 'Notas/Transporte'
            ImageIndex = 2
            object Label17: TLabel
              Left = 0
              Top = 55
              Width = 51
              Height = 13
              Caption = 'Transporte'
            end
            object dbcTransporte: TDBLookupComboBox
              Left = 57
              Top = 52
              Width = 313
              Height = 21
              DataField = 'TRANSPORTE'
              DataSource = DSBase
              KeyField = 'ID'
              ListField = 'NOMBRE'
              ListSource = DatosOrdenCompra.DSTransportes
              TabOrder = 0
            end
            object dbmNotas: TDBMemo
              Left = 0
              Top = 2
              Width = 393
              Height = 42
              Hint = 'Estas notas son son Impresas'
              DataField = 'NOTAS'
              DataSource = DSBase
              MaxLength = 200
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
        end
        object RxDBAutorizo: TJvDBComboEdit
          Left = 474
          Top = 349
          Width = 75
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          ClickKey = 16397
          DataField = 'AUTORIZO'
          DataSource = DSBase
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ButtonWidth = 16
          Anchors = [akLeft, akBottom]
          TabOrder = 2
          OnButtonClick = BuscarAutorizaOCExecute
        end
        object dbeFechaAutorizacion: TJvDBDateEdit
          Left = 475
          Top = 393
          Width = 89
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DataField = 'FECHAAUTORIZACION'
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
          Anchors = [akLeft, akBottom]
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 4
        end
        object edCantidad: TJvCalcEdit
          Left = 635
          Top = 411
          Width = 124
          Height = 21
          DisplayFormat = ',0.00'
          Enabled = False
          Anchors = [akLeft, akBottom]
          ShowButton = False
          TabOrder = 5
          DisabledTextColor = clNavy
          DecimalPlacesAlwaysShown = False
        end
        object pnDetalleAdicional: TJvPanel
          Left = 76
          Top = 24
          Width = 463
          Height = 73
          Movable = True
          Color = clGreen
          ParentBackground = False
          TabOrder = 6
          Visible = False
          object JvLabel1: TJvLabel
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
          object JvLabel2: TJvLabel
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
            DataSource = DatosOrdenCompra.DSOrdenCompraDet
            Enabled = False
            TabOrder = 1
          end
          object dbeDetAdicional: TDBMemo
            Left = 56
            Top = 21
            Width = 396
            Height = 49
            DataField = 'DETALLE_ADICIONAL'
            DataSource = DatosOrdenCompra.DSOrdenCompraDet
            MaxLength = 300
            TabOrder = 0
            OnKeyPress = dbeDetAdicionalKeyPress
          end
        end
      end
      object PagImpuestos: TTabSheet
        Caption = 'Impuestos'
        ImageIndex = 1
        object Bevel4: TBevel
          Left = 275
          Top = 44
          Width = 121
          Height = 21
        end
        object Bevel3: TBevel
          Left = 276
          Top = 170
          Width = 121
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
          Left = 275
          Top = 0
          Width = 121
          Height = 21
        end
        object Bevel6: TBevel
          Left = 275
          Top = 89
          Width = 121
          Height = 21
        end
        object Bevel22: TBevel
          Left = 276
          Top = 126
          Width = 121
          Height = 21
        end
        object Bevel28: TBevel
          Left = 276
          Top = 148
          Width = 121
          Height = 21
        end
        object DBText1: TDBText
          Left = 281
          Top = 2
          Width = 112
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
          Left = 281
          Top = 91
          Width = 112
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
          Left = 284
          Top = 128
          Width = 112
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
          Left = 284
          Top = 150
          Width = 112
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
          Left = 275
          Top = 22
          Width = 121
          Height = 21
        end
        object DBText3: TDBText
          Left = 280
          Top = 24
          Width = 112
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
          Top = 194
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
          Top = 192
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
          Left = 284
          Top = 172
          Width = 112
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
          Left = 281
          Top = 46
          Width = 112
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
          Left = 276
          Top = 192
          Width = 121
          Height = 21
        end
        object DBText8: TDBText
          Left = 284
          Top = 194
          Width = 112
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
          Left = 275
          Top = 66
          Width = 121
          Height = 21
        end
        object DBText9: TDBText
          Left = 283
          Top = 69
          Width = 112
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
        object RxLabel4: TLabel
          Left = 416
          Top = 0
          Width = 15
          Height = 13
          Caption = 'Iva'
          Transparent = True
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
        object dbgIva: TDBGrid
          Left = 416
          Top = 15
          Width = 254
          Height = 57
          TabStop = False
          Color = clMenu
          DataSource = DatosOrdenCompra.DSImpuestos
          Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
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
              ReadOnly = True
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
              FieldName = 'TASA'
              Width = 30
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
              Width = 80
              Visible = True
            end>
        end
      end
    end
    object pnCosto: TPanel
      Left = 275
      Top = 595
      Width = 624
      Height = 21
      Anchors = [akRight]
      Enabled = False
      TabOrder = 2
      DesignSize = (
        624
        21)
      object dbtDetalle: TDBText
        Left = 2
        Top = 4
        Width = 439
        Height = 15
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'Detalle'
        DataSource = DatosOrdenCompra.DSOrdenCompraDet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edCant: TLabel
        Left = 543
        Top = 4
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 616
    Width = 900
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 616
    ExplicitWidth = 900
    inherited btConfirma: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Height = 28
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007B2900006B21080052181000521810006B21
        00007B290000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008C31000052211000BD5A1000E79C5200EFBD8C00F7BD8C00E79C
        5A00C66318005218100094310000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006B290800AD420000EFB57B00FFFFFF00FFFFF700F7DEC600F7DEC600FFF7
        F700FFFFFF00EFBD8400B54A000063211000FF00FF00FF00FF00FF00FF007329
        0800B5420000F7D6AD00FFFFFF00D68C4200BD4A0000BD420000BD420000C652
        0000D6844200FFFFF700FFDEBD00B54A000094310000FF00FF00FF00FF009C39
        0000E7AD7300FFFFFF00CE732900CE6B2100CE732900BD4A0000BD4A0000BD42
        0000BD420000CE6B1800FFFFF700EFBD8C0052181000FF00FF00AD420000C65A
        1000FFFFFF00E7A56B00BD4A0000EFCEAD00F7D6BD00BD4A0000BD420000CE6B
        2100EFBD9400BD420000D68C4200FFFFFF00C66310007B2900009C390000DE94
        5200FFFFFF00D6732900CE630800EFCEAD00F7D6B500C6520000D6844200FFF7
        EF00F7E7DE00BD4A0000BD520000FFFFF700E79C5A006B2100008C310000EFBD
        8C00FFF7E700DE7B2900D6732100F7D6B500F7D6B500E7AD7300FFFFFF00FFFF
        FF00F7DEC600BD4A0000BD420000F7DEC600EFC68C0052181000AD420000EFBD
        9400FFF7EF00E78C3900E7843100F7DEBD00F7D6BD00E7A56300FFF7EF00FFFF
        FF00F7DECE00BD4A0000BD420000F7DEC600EFBD8C0052181000B54A0000EFAD
        6B00FFFFFF00EFA56300EF944200FFDEC600F7DEC600DE732100DE8C3900F7E7
        D600F7EFDE00BD4A0000C6520000FFFFFF00E79452006B210800B54A0000DE8C
        3900FFFFFF00FFD6B500F7A55A00FFE7D600FFE7CE00E7843100D6732100D673
        2100E7AD7B00BD420000DE945200FFFFFF00BD5A10007B290000FF00FF00CE63
        1800FFCEA500FFFFFF00FFD6A500FFBD7B00EFAD7300E78C3900DE7B2900CE63
        1000C64A0000D67B3100FFFFFF00EFAD730052181800FF00FF00FF00FF00B542
        0000E7843900FFE7CE00FFFFFF00FFD6AD00EFA55A00E78C3900DE7B2900D67B
        2900E7A56B00FFFFFF00F7CEA500AD4200008C310000FF00FF00FF00FF00FF00
        FF00B54A0000DE843900FFCEA500FFFFF700FFFFFF00FFF7EF00FFF7EF00FFFF
        FF00FFF7EF00E7A56B00AD4200005A211000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD420000C6631800DE8C4200EFA56B00EFBD8C00EFB58400DE94
        4A00BD5A08005A21100094310000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A5420000A5420000A54208009C4200008C31
        000073290800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Height = 28
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00521810006B2108007B2900007B2900006B21
        000052181000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00522110008C310000BD5A1000E79C5200EFBD8C00F7BD8C00E79C
        5A00C66318009431000052181000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006B290800AD420000EFB57B00FFFFFF00FFFFF700F7DEC600F7DEC600FFF7
        F700FFFFFF00EFBD8400B54A000063211000FF00FF00FF00FF00FF00FF007329
        0800B5420000F7D6AD00FFFFFF00D68C4A00C6520800BD420000BD420000BD4A
        0000D67B3900FFFFF700FFDEBD00B54A000052181000FF00FF00FF00FF009C39
        0000E7AD7300FFFFFF00CE732900BD420000BD420000BD4A0000BD420000C663
        1000CE733100CE6B1800FFFFF700EFBD8C0094310000FF00FF008C310000C65A
        1000FFFFFF00E7A56B00C64A0000FFFFFF00D6843900BD420000BD420000DE9C
        5A00FFFFFF00BD420000D6844200FFFFFF00C6631000521810009C390000DE94
        5200FFFFFF00D6732900CE630800FFFFFF00FFFFFF00DE945200BD420000DE94
        5A00FFFFFF00BD4A0000BD520000FFFFF700E79C5A006B210000AD420000EFBD
        8C00FFF7E700DE7B2900D6732100FFFFFF00FFFFFF00FFFFFF00E7AD7B00E7A5
        6B00FFFFFF00BD4A0000BD420000F7DEC600EFC68C007B290000B54A0000EFBD
        9400FFF7EF00E78C3900E7843100FFFFFF00FFFFFF00FFFFFF00EFC69C00E7AD
        7300FFFFFF00BD4A0000BD420000F7DEC600EFBD8C007B290000B54A0000EFAD
        6B00FFFFFF00EFA56300EF944200FFFFFF00FFFFFF00EFBD8C00D6631000E7A5
        6B00FFFFFF00BD4A0000C6520000FFFFFF00E79452006B210800AD420000DE8C
        3900FFFFFF00FFD6B500F7A55A00FFFFFF00F7BD8400DE843100D66B1800E7AD
        7B00FFFFFF00BD420000DE945200FFFFFF00BD5A100052181000FF00FF00CE63
        1800FFCEA500FFFFFF00FFD6A500F7AD6300EF944A00E78C3900DE732100D67B
        2900D67B2900D67B3100FFFFFF00EFAD73008C310000FF00FF00FF00FF00B542
        0000E7843900FFE7CE00FFFFFF00FFD6B500EFA56300E78C3900DE7B2900D673
        2100DE9C6300FFFFFF00F7CEA500AD42000052181800FF00FF00FF00FF00FF00
        FF00B54A0000DE843900FFCEA500FFFFF700FFFFFF00FFF7EF00FFF7EF00FFFF
        FF00FFF7EF00E7A56B00AD4200005A211000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00AD420000C6631800DE8C4200EFA56B00EFBD8C00EFB58400DE94
        4A00BD5A0800943100005A211000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A5420000A5420000A54208009C4200008C31
        000073290800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Width = 26
      Height = 28
      ExplicitWidth = 26
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Left = 433
      Height = 28
      ExplicitLeft = 433
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 508
      Top = 0
      Width = 12
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 520
      Top = 0
      Width = 75
      Height = 28
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
    object sbAnular: TSpeedButton
      Left = 595
      Top = 0
      Width = 23
      Height = 28
      Action = Anular
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object spVerop: TSpeedButton
      Left = 618
      Top = 0
      Width = 24
      Height = 28
      Action = DetalleOp
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
    object spRecep: TSpeedButton
      Left = 642
      Top = 0
      Width = 24
      Height = 28
      Hint = 'Generar Copia de O.C con los Faltantes'
      Action = CopiarOrdenCompra
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
    end
    object spMail: TSpeedButton
      Left = 666
      Top = 0
      Width = 25
      Height = 28
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
    object spBorrador: TSpeedButton
      Left = 691
      Top = 0
      Width = 24
      Height = 28
      Hint = 'Detalle desde Borrador de Pedido'
      Action = Borrador
      Flat = True
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        0800000000000002000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDD8D8D8D8
        D8D8D8D8D8D8D8D8FDFDFDFD070707070707070707070707FDFDFDD8F6090909
        0909090909090909D8FDFD07F6070707070707070707070707FDFDD8F6090909
        0909090909090909D8FDFD07F6070707070707070707070707FDFDD8F6020202
        0202020202020209D8FDFD07F6070707070707070707070707FDFDD8FFF6F6F6
        0909090909090909D8FDFD07FFF6F6F6070707070707070707FDFDD8FF020202
        0202020202020209D8FDFD07FF070707070707070707070707FDFDD8FFFFFFF6
        F6F6090909090909D8FDFD07FFFFFFF6F6F607070707070707FDFDD8FF020202
        0202020202020209D8FDFD07FF070707070707070707070707FDFDD8FFFFFFFF
        FFF6F6F609090909D8FDFD07FFFFFFFFFFF6F6F60707070707FDFDD8FF020202
        0202020202020209D8FDFD07FF070707070707070707070707FDFDD8FFFFFFFF
        FFFFFFF6F6F60909D8FDFD07FFFFFFFFFFFFFFF6F6F6070707FDFDD8FF020202
        0202020202020209D8FDFD07FF070707070707070707070707FDFDD8FFFFFFFF
        FFFFFFFFFFF6F6F6D8FDFD07FFFFFFFFFFFFFFFFFFF6F6F607FDFDFDD8D8D8D8
        D8D8D8D8D8D8D8D8FDFDFDFD070707070707070707070707FDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton2: TToolButton
      Left = 715
      Top = 0
      Width = 20
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object spLeerRececpiones: TSpeedButton
      Left = 735
      Top = 0
      Width = 37
      Height = 28
      Action = LeerRecepciones
      Flat = True
      Layout = blGlyphBottom
      ParentShowHint = False
      ShowHint = True
    end
  end
  inherited Panel1: TPanel
    Top = 646
    Width = 900
    Align = alBottom
    OnDblClick = Panel1DblClick
    ExplicitTop = 646
    ExplicitWidth = 900
    inherited sbEstado: TStatusBar
      Width = 811
      Panels = <
        item
          Width = 380
        end
        item
          Width = 50
        end>
      PopupMenu = PopupMenu1
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 811
    end
  end
  object Panel3: TPanel [3]
    Left = 475
    Top = 4
    Width = 128
    Height = 35
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnMouseMove = Panel3MouseMove
    object Label32: TLabel
      Left = 1
      Top = 18
      Width = 33
      Height = 13
      Caption = 'OC.Sig'
    end
    object Label31: TLabel
      Left = 1
      Top = 2
      Width = 34
      Height = 13
      Caption = 'OC.Ant'
    end
    object dbtID_OC_Prev: TDBText
      Left = 38
      Top = 2
      Width = 87
      Height = 14
      Cursor = crHandPoint
      Alignment = taCenter
      DataField = 'NRO_OC_ANTERIOR'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = dbtID_OC_PrevClick
    end
    object dbtID_OC_Next: TDBText
      Left = 38
      Top = 18
      Width = 87
      Height = 16
      Cursor = crHandPoint
      Alignment = taCenter
      DataField = 'NRO_OC_SIGUIEN'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = dbtID_OC_NextClick
    end
  end
  object chAgregaImpuesto: TCheckBox [4]
    Left = 659
    Top = 46
    Width = 113
    Height = 22
    Caption = 'Calcula Impuestos'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = chAgregaImpuestoClick
  end
  object pnComprobantesRec: TPanel [5]
    Left = 578
    Top = 194
    Width = 207
    Height = 87
    Color = clBlue
    ParentBackground = False
    TabOrder = 5
    Visible = False
    OnClick = pnComprobantesRecClick
    object Label33: TLabel
      Left = 160
      Top = 63
      Width = 35
      Height = 13
      Cursor = crHandPoint
      Caption = 'Cerrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label33Click
    end
    object dbgComp: TDBGrid
      Left = 8
      Top = 6
      Width = 193
      Height = 51
      DataSource = DatosOrdenCompra.DSRecepciones
      Options = [dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgCompDblClick
    end
  end
  object Panel4: TPanel [6]
    Left = 477
    Top = 114
    Width = 80
    Height = 35
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnMouseMove = Panel3MouseMove
    object lbFact: TLabel
      Left = 3
      Top = 21
      Width = 41
      Height = 13
      Cursor = crHandPoint
      Caption = 'Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lbFactClick
    end
    object lbRecep: TLabel
      Left = 3
      Top = 2
      Width = 63
      Height = 13
      Cursor = crHandPoint
      Caption = 'Recepciones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lbRecepClick
    end
  end
  inherited ActionList1: TActionList
    Top = 64
    inherited Borrar: TAction
      ShortCut = 16430
      Visible = False
    end
    object BuscarProveedor: TAction
      Caption = 'BuscarProveedor'
      OnExecute = BuscarProveedorExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarEmpleado: TAction
      Caption = 'BuscarEmpleado'
      OnExecute = BuscarEmpleadoExecute
    end
    object BuscarCondicionCompra: TAction
      Caption = 'BuscarCondicionCompra'
      OnExecute = BuscarCondicionCompraExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      Hint = 'Impresi'#243'n de Orden de Compra'
      OnExecute = ImprimirExecute
    end
    object Anular: TAction
      Hint = 'Anulaci'#243'n de Orden de Compra'
      OnExecute = AnularExecute
    end
    object BuscarAutorizaOC: TAction
      Caption = 'BuscarAutorizaOC'
      OnExecute = BuscarAutorizaOCExecute
    end
    object DetalleOp: TAction
      Hint = 'Detalles de Operaciones con este Proveedor'
      OnExecute = DetalleOpExecute
    end
    object VerPresupuesto: TAction
      Caption = 'Ver Presupuesto'
      OnExecute = VerPresupuestoExecute
    end
    object EnviarCorreo: TAction
      OnExecute = EnviarCorreoExecute
    end
    object GeneraRecepcion: TAction
      Caption = 'Generar Recepcion'
      ShortCut = 49234
      OnExecute = GeneraRecepcionExecute
    end
    object GenerarFactura: TAction
      Caption = 'Generar Factura'
      ShortCut = 49222
      OnExecute = GenerarFacturaExecute
    end
    object HacerCopiaOCompra: TAction
      Caption = 'HacerCopiaOCompra'
      ShortCut = 49227
      OnExecute = HacerCopiaOCompraExecute
    end
    object Borrador: TAction
      OnExecute = BorradorExecute
    end
    object CopiarOrdenCompra: TAction
      OnExecute = CopiarOrdenCompraExecute
    end
    object CambiarFechaRecepcion: TAction
      Caption = 'Cambiar Fecha Recepcion'
      OnExecute = CambiarFechaRecepcionExecute
    end
    object VolverAutorizada: TAction
      Caption = 'Volver al Estado Autorizada'
      OnExecute = VolverAutorizadaExecute
    end
    object Recibida: TAction
      Caption = 'Da Por Recibida'
      OnExecute = RecibidaExecute
    end
    object ControlDetalle: TAction
      Caption = 'Control Detalle'
      ShortCut = 8315
      OnExecute = ControlDetalleExecute
    end
    object LeerRecepciones: TAction
      Hint = 'Leer rececpciones de Orden Compras'
      ImageIndex = 11
      ShortCut = 49218
      OnExecute = LeerRecepcionesExecute
    end
    object DesAnular: TAction
      Caption = 'DesAnular'
      OnExecute = DesAnularExecute
    end
    object BusquedaPorReferencia: TAction
      Caption = 'BusquedaPorReferencia'
      ShortCut = 32781
      OnExecute = BusquedaPorReferenciaExecute
    end
    object BorrarBorrador: TAction
      Caption = 'Borrar Borrador'
      OnExecute = BorrarBorradorExecute
    end
    object ImprimirEtiquetas: TAction
      Caption = 'Imprimir Etiquetas'
      OnExecute = ImprimirEtiquetasExecute
    end
    object VolverModoAutorizacion: TAction
      Caption = 'Volver al Modo de Autorizacion'
      OnExecute = VolverModoAutorizacionExecute
    end
    object VerRecepciones: TAction
      Caption = 'VerRecepciones'
      OnExecute = VerRecepcionesExecute
    end
    object VerFacturas: TAction
      Caption = 'VerFacturas'
      OnExecute = VerFacturasExecute
    end
    object CopiarDetalleXML: TAction
      Caption = 'Copiar Detalle Archivo Temporal'
      OnExecute = CopiarDetalleXMLExecute
    end
    object PegarDetalleDesdeXML: TAction
      Caption = 'Pegar Detalle Desde Archivo Temporal'
      OnExecute = PegarDetalleDesdeXMLExecute
    end
    object CambiaProveedor: TAction
      Caption = 'Cambiar Proveedor'
      OnExecute = CambiaProveedorExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosOrdenCompra.CDSOrdenCompCab
    Left = 392
    Top = 56
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010B003C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521810006B2108007B2900007B2900006B210000521810000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000004A0000005A0800006B0800006B0800005A0800004A00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B006B6B6B0000000000000000006B6B6B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005221
      10008C310000BD5A1000E79C5200EFBD8C00F7BD8C00E79C5A00C66318009431
      0000521810000000000000000000000000000000000000000000000000000063
      0800006308000894100008B5180008B5180008B5180008B5180000941000006B
      0800006B08000000000000000000000000000000000000000000000000006B6B
      6B00ADA5A500A59C9C006B6B6B006B6B6B006B6B6B00E7E7E7006B6B6B006B6B
      6B006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B290800AD42
      0000EFB57B00FFFFFF00FFFFF700F7DEC600F7DEC600FFF7F700FFFFFF00EFBD
      8400B54A00006321100000000000000000000000000000000000086B1000087B
      100008B5180008BD180008B5180000B5100008B5180008B5180008BD180008BD
      180000841000004A0000000000000000000000000000000000006B6B6B00DEDE
      DE00A59C9C00A59C9C00A59C9C0031313100313131006B6B6B00BDBDBD00E7E7
      E700B5B5B5006B6B6B006B6B6B006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073290800B5420000F7D6
      AD00FFFFFF00D68C4A00C6520800BD420000BD420000BD4A0000D67B3900FFFF
      F700FFDEBD00B54A0000521810000000000000000000086B10000884210010BD
      310010B5210008B5180000B5100008B5100008B5180008B5180008B5180008B5
      180008BD1800008410000063080000000000000000006B6B6B00D6D6D600CECE
      CE008C8C8C008C8C8C008C8C8C00393939000808080000000000080808000000
      00007B7B7B00BDBDBD006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C390000E7AD7300FFFF
      FF00CE732900BD420000BD420000BD4A0000BD420000C6631000CE733100CE6B
      1800FFFFF700EFBD8C00943100000000000000000000086B100021BD4A0018BD
      420010B5310008B5180029BD3100DEF7E700EFFFEF0063CE6B0008B5180008B5
      180008B5180008BD180000630800000000006B6B6B00CECECE00CECECE008C8C
      8C00D6D6D600CECECE00BDBDBD00B5ADAD00A5A5A5008C8484005A5A5A000000
      000008080800080808006B6B6B00737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C310000C65A1000FFFFFF00E7A5
      6B00C64A0000FFFFFF00D6843900BD420000BD420000DE9C5A00FFFFFF00BD42
      0000D6844200FFFFFF00C66310005218100008731000189C390029C65A0018BD
      420008B5210008B5180010B521009CDEA500FFFFFF00F7FFFF005ACE630008B5
      180008B5180008BD180008941000005A08006B6B6B00CECECE008C8C8C00EFEF
      EF00FFFFFF00FFFFFF00E7E7E700DEDEDE00DEDEDE00CECECE00BDBDBD00ADAD
      AD008C8C8C005A5252007B7B7B00737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C390000DE945200FFFFFF00D673
      2900CE630800FFFFFF00FFFFFF00DE945200BD420000DE945A00FFFFFF00BD4A
      0000BD520000FFFFF700E79C5A006B2100000873100029B55A0029C6630021BD
      4A0008B5210008B5180008B5180008B518008CDE9400FFFFFF00F7FFF7005ACE
      630008B5180008B5180008AD1000005A08006B6B6B008C8C8C00FFFFFF00FFFF
      FF00FFFFFF00D6D6D6009C949400A59C9C00B5ADAD00C6C6C600D6D6D600DEDE
      DE00C6C6C600B5B5B500948C8C006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD420000EFBD8C00FFF7E700DE7B
      2900D6732100FFFFFF00FFFFFF00FFFFFF00E7AD7B00E7A56B00FFFFFF00BD4A
      0000BD420000F7DEC600EFC68C007B2900000884180031C66B0031C66B00CEF7
      DE00CEEFD600C6EFD600CEEFD600C6EFD600C6EFCE00FFFFFF00FFFFFF00F7FF
      F7006BD67B0008B5180008B5180000630800000000006B6B6B006B6B6B00EFEF
      EF00B5A5A5007B6B73008C848C0094949400949494009C949C009C9494009C9C
      9C00BDBDBD00D6D6D600C6C6C6006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B54A0000EFBD9400FFF7EF00E78C
      3900E7843100FFFFFF00FFFFFF00FFFFFF00EFC69C00E7AD7300FFFFFF00BD4A
      0000BD420000F7DEC600EFBD8C007B290000108C21005ACE840042CE7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDEFC60008B5180008B51800006B08000000000000000000000000006B6B
      6B00BD8C7B00A5846B008C6B63007B6363006B6363007B737B008C8C8C00ADA5
      A500CECECE00C6C6C6006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B54A0000EFAD6B00FFFFFF00EFA5
      6300EF944200FFFFFF00FFFFFF00EFBD8C00D6631000E7A56B00FFFFFF00BD4A
      0000C6520000FFFFFF00E79452006B210800089418006BD694005AD68C006BD6
      940073D69C0073D69C0073D69C0063D68C0094DEAD00FFFFFF00FFFFFF00ADE7
      BD0029BD4A0010BD290008B51800006308000000000000000000000000000000
      0000BD848400FFE7B500FFD69C00EFB58400CE9C7300BD946B00BD848400847B
      7B006B6B6B006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD420000DE8C3900FFFFFF00FFD6
      B500F7A55A00FFFFFF00F7BD8400DE843100D66B1800E7AD7B00FFFFFF00BD42
      0000DE945200FFFFFF00BD5A1000521810000894180063CE84009CE7BD0039C6
      730031C66B0039C66B0039C66B0073D69400EFFFEF00FFFFFF009CE7B50021BD
      4A0018BD390010BD290008A51000006308000000000000000000000000000000
      0000BD848400FFE7BD00FFD6A500FFD69C00FFCE9400FFC68C00BD8484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE631800FFCEA500FFFF
      FF00FFD6A500F7AD6300EF944A00E78C3900DE732100D67B2900D67B2900D67B
      3100FFFFFF00EFAD73008C310000000000000000000021AD3900BDEFD60084DE
      A50029C6630029C6630052CE8400F7FFFF00FFFFFF009CE7B50021BD4A0018BD
      420018B5310010C631000884100000000000000000000000000000000000C684
      8400FFE7CE00FFE7C600FFDEB500FFD6A500FFD69C00BD848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5420000E7843900FFE7
      CE00FFFFFF00FFD6B500EFA56300E78C3900DE7B2900D6732100DE9C6300FFFF
      FF00F7CEA500AD42000052181800000000000000000021AD390073D68C00D6F7
      E70084DEA50031C66B0039C66B00BDEFCE00ADE7C60029C6630021BD520021BD
      4A0018C6420010AD31000884100000000000000000000000000000000000BD84
      8400FFEFDE00FFE7CE00FFDEBD00FFDEB500FFD6A500BD848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B54A0000DE84
      3900FFCEA500FFFFF700FFFFFF00FFF7EF00FFF7EF00FFFFFF00FFF7EF00E7A5
      6B00AD4200005A2110000000000000000000000000000000000021AD390084DE
      9C00DEF7EF00ADEFC6006BD6940052CE840042CE7B004ACE7B004ACE7B0039CE
      6B0021B54A00087B180000000000000000000000000000000000BD848400FFFF
      F700FFFFF700FFEFDE00FFE7CE00FFE7BD00F7C6A500BD848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD42
      0000C6631800DE8C4200EFA56B00EFBD8C00EFB58400DE944A00BD5A08009431
      00005A21100000000000000000000000000000000000000000000000000021AD
      390021AD3900ADEFC600CEF7DE00BDEFD600A5E7C60094E7B50063D6940029B5
      520029B552000000000000000000000000000000000000000000BD848400BD84
      8400BD848400FFEFE700FFE7CE00FFDEC600BD84840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420000A5420000A54208009C4200008C310000732908000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031B54A0021AD390021AD390021AD390021AD390021A542000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD848400BD848400BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C000010AD000018AD000018AD000010AD000008A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B2900006B21080052181000521810006B2100007B2900000000
      0000000000000000000000000000000000000000000000000000000000000884
      AD000884AD000884AD000884AD000884AD000884AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000006300000063
      0000B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C000063
      0000006300000000000000000000000000000000000000000000000000000000
      9C000018B5000031C6000031C6000031C6000031C6000031C6000031C6000018
      B50000009C000000000000000000000000000000000000000000000000008C31
      000052211000BD5A1000E79C5200EFBD8C00F7BD8C00E79C5A00C66318005218
      1000943100000000000000000000000000000000000000000000008CBD004AD6
      EF0021D6FF0031DEFF006BE7FF008CE7FF0042BDDE000884AD00000000000000
      0000000000000000000000000000000000000000000000630000009C0000009C
      0000E7DEDE000063000000630000E7E7E700E7E7E700DEDEE700CECECE000063
      0000007B000000630000000000000000000000000000000000000008A5000029
      C6000031C6000031C6000031C6000031C6000031C6000031C6000031C6000031
      C6000029BD000008A500000000000000000000000000000000006B290800AD42
      0000EFB57B00FFFFFF00FFFFF700F7DEC600F7DEC600FFF7F700FFFFFF00EFBD
      8400B54A000063211000000000000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031D6F70000009C0000009C0000009C0000009C0000009C000000
      9C0000009C0000009C0000000000000000000000000000630000009C0000009C
      0000EFE7E7000063000000630000E7E7E700E7E7EF00DEE7E700CECECE000063
      0000007B00000063000000000000000000000000000000009C000029CE000031
      DE000031CE000021C6000029C6000031C6000031C6000031C6000021BD000029
      C6000031C6000029BD0000009C00000000000000000073290800B5420000F7D6
      AD00FFFFFF00D68C4200BD4A0000BD420000BD420000C6520000D6844200FFFF
      F700FFDEBD00B54A0000943100000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031D6F70000009C00396BFF00295AFF00104AFF000031FF000029
      FF000018EF0000009C0000000000000000000000000000630000009C0000009C
      0000EFE7E7000063000000630000DEDEDE00E7E7EF00E7E7E700D6D6D6000063
      0000007B0000006300000000000000000000000000000018BD000031E7000031
      DE001039DE006384E7001842CE000029C6000029C6000839C6006384DE001842
      C6000029C6000031C6000018B50000000000000000009C390000E7AD7300FFFF
      FF00CE732900CE6B2100CE732900BD4A0000BD4A0000BD420000BD420000CE6B
      1800FFFFF700EFBD8C00521810000000000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031D6FF0000009C004273FF003163FF001852FF000839FF000029
      FF000021F70000009C0000000000000000000000000000630000009C0000009C
      0000EFE7E700EFE7E700E7DEDE00E7DEDE00DEE7E700E7E7E700D6D6D6000063
      0000007B000000630000000000000000000000009C000031E7000031F7000029
      E7005273EF00FFFFFF00B5C6F7000831CE000029C600A5B5EF00FFFFFF006B84
      DE000021BD000031C6000031C6000008A500AD420000C65A1000FFFFFF00E7A5
      6B00BD4A0000EFCEAD00F7D6BD00BD4A0000BD420000CE6B2100EFBD9400BD42
      0000D68C4200FFFFFF00C66310007B29000000000000008CBD00B5FFFF00B5F7
      FF00C6F7FF00E7FFFF0000009C0000009C0000009C0000009C0000009C000000
      9C0000009C0000009C0000000000000000000000000000630000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000009C0000009C0000009C
      0000009C00000063000000000000000000000008AD000031FF000031FF000031
      EF000831EF008CA5F700FFFFFF00B5C6F700ADBDEF00FFFFFF00A5B5EF001039
      C6000029C6000031C6000031C6000010AD009C390000DE945200FFFFFF00D673
      2900CE630800EFCEAD00F7D6B500C6520000D6844200FFF7EF00F7E7DE00BD4A
      0000BD520000FFFFF700E79C5A006B21000000000000008CBD00BDEFF70031BD
      DE0010A5D600109CCE0021A5CE0031A5CE002194BD0094CEE7000884AD000000
      0000000000000000000000000000000000000000000000630000009C0000B5D6
      B500B5D6B500B5D6B500B5D6B500B5D6B500B5D6B500B5D6B500B5D6B500B5D6
      B500009C00000063000000000000000000000018BD001042FF000839FF000031
      FF000031F7000029EF0094A5F700FFFFFF00FFFFFF00ADBDEF000029C6000029
      C6000031C6000031C6000031C6000018AD008C310000EFBD8C00FFF7E700DE7B
      2900D6732100F7D6B500F7D6B500E7AD7300FFFFFF00FFFFFF00F7DEC600BD4A
      0000BD420000F7DEC600EFC68C005218100000000000008CBD004AC6DE005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E7000084B5000884AD000000
      0000000000000000000000000000000000000000000000630000009C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00009C00000063000000000000000000000818BD00426BFF00184AFF000031
      FF000031FF000031F700A5B5F700FFFFFF00FFFFFF00BDC6F7000831D6000029
      C6000031C6000031C6000031C6000018AD00AD420000EFBD9400FFF7EF00E78C
      3900E7843100F7DEBD00F7D6BD00E7A56300FFF7EF00FFFFFF00F7DECE00BD4A
      0000BD420000F7DEC600EFBD8C005218100000000000008CBD008CFFFF005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD000000
      0000000000000000000000000000000000000000000000630000009C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00009C00000063000000000000000000000010B5005A7BFF004A6BFF000031
      FF001039FF00A5B5FF00FFFFFF00A5B5FF0094A5F700FFFFFF00B5C6F7001842
      D6000029CE000031C6000031C6000010AD00B54A0000EFAD6B00FFFFFF00EFA5
      6300EF944200FFDEC600F7DEC600DE732100DE8C3900F7E7D600F7EFDE00BD4A
      0000C6520000FFFFFF00E79452006B21080000000000008CBD008CFFFF005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD000000
      0000000000000000000000000000000000000000000000630000009C0000FFFF
      FF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00FFFF
      FF00009C00000063000000000000000000000000A5004A6BF7008CA5FF001842
      FF004A6BFF00FFFFFF00A5BDFF000031F7000029EF008CA5F700FFFFFF00637B
      E7000029D6000031CE000031C60000009C00B54A0000DE8C3900FFFFFF00FFD6
      B500F7A55A00FFE7D600FFE7CE00E7843100D6732100D6732100E7AD7B00BD42
      0000DE945200FFFFFF00BD5A10007B29000000000000008CBD008CFFFF005AEF
      FF0021D6FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD000000
      0000000000000000000000000000000000000000000000630000009C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00009C0000006300000000000000000000000000001829CE009CADFF008CA5
      FF00214AFF004A73FF000839FF000031FF000031F7000031F7004A6BF7001039
      E7000031DE000031D6000018B5000000000000000000CE631800FFCEA500FFFF
      FF00FFD6A500FFBD7B00EFAD7300E78C3900DE7B2900CE631000C64A0000D67B
      3100FFFFFF00EFAD7300521818000000000000000000008CBD0094FFFF0084FF
      FF006BFFFF007BFFFF0094FFFF00A5FFFF0063DEF70008A5D6000884AD000000
      0000000000000000000000000000000000000000000000630000009C0000FFFF
      FF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00FFFF
      FF00009C0000006300000000000000000000000000000000A500425AEF00BDC6
      FF009CADFF00395AFF000839FF000031FF000031FF000031FF000029F7000031
      EF000031EF000029CE0000009C000000000000000000B5420000E7843900FFE7
      CE00FFFFFF00FFD6AD00EFA55A00E78C3900DE7B2900D67B2900E7A56B00FFFF
      FF00F7CEA500AD4200008C3100000000000000000000008CBD00FFFFFF00F7FF
      FF00D6FFFF00B5FFFF00B5FFFF00ADFFFF00ADFFFF006BFFFF000884AD000000
      0000000000000000000000000000000000000000000000630000009C0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00009C000000630000000000000000000000000000000000000008A5004263
      EF00ADBDFF00BDCEFF008CA5FF006384FF005273FF004A6BFF003963FF001042
      FF000029D6000008A50000000000000000000000000000000000B54A0000DE84
      3900FFCEA500FFFFF700FFFFFF00FFF7EF00FFF7EF00FFFFFF00FFF7EF00E7A5
      6B00AD4200005A211000000000000000000000000000000000000894C600F7FF
      FF00E7FFFF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084AD00000000000000
      000000000000000000000000000000000000000000000000000000630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00006300000000000000000000000000000000000000000000000000000000
      A5001831CE005A73F700849CFF008CA5FF007B94FF005273FF00214AF7000018
      C60000009C00000000000000000000000000000000000000000000000000AD42
      0000C6631800DE8C4200EFA56B00EFBD8C00EFB58400DE944A00BD5A08005A21
      100094310000000000000000000000000000000000000000000000000000008C
      BD00008CBD00008CBD00008CBD00008CBD00008CBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000A5000810B5001021C6000818C6000010B50000009C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420000A5420000A54208009C4200008C310000732908000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B7B94006B7B8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008730800087308000873
      0800087308000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C31000000000000000000000000000000000000087BAD000884
      AD00087BAD000884AD000884AD001084AD000000000000000000000000000000
      0000000000007B849400188CE7005AADDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000000000000000000000000000000000000000000000884AD000884
      AD000884AD000884AD000884AD000884AD00000000000873080010AD210010A5
      18000873080000000000000000000000000000000000000000000884AD000884
      AD000884AD000884AD009C310000FFFFFF00FFFFFF00FFFFFF008CA5FF00BDC6
      FF00FFFFFF009C310000000000000000000000000000008CBD004AD6EF0021D6
      FF0031DEFF006BE7FF008CE7FF0042BDDE000884AD0000000000000000000000
      00007B8494002184DE004AB5FF0052ADF7008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008CBD004AD6EF0021D6
      FF0031DEFF006BE7FF008CE7FF0042BDDE000884AD000873080018B5290010AD
      21000873080000000000000000000000000000000000008CBD004AD6EF0021D6
      FF0031DEFF006BE7FF009C310000FFFFFF00FFFFFF007B9CFF000031FF005A7B
      FF00FFFFFF009C3100000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF0073E7FF008CE7FF004ABDE700089CCE001084A500000000008C84
      9400187BCE004AB5FF0052ADF700000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF000873080008730800087308000873080021BD390018B5
      310008730800087308000873080008730800008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF009C310000D6DEFF00426BFF000031FF00426BFF000031
      FF00DEE7FF009C3100000000000000000000088CBD008CFFFF005AEFFF0021D6
      FF0031DEFF0073D6EF00B5949400C6A59C00C6ADA500AD847B008C6B6B006394
      BD004AB5FF004AB5FF0000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF000873080039D6630031CE5A0031CE520029C64A0021BD
      420021BD390018B5290010AD290008730800008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF009C3100005273FF001042FF00BDCEFF00EFF7FF001842
      FF004A73FF00943100000000000000000000088CBD008CFFFF005AEFFF0021DE
      FF0042C6E700AD949400EFDECE00FFFFD600FFFFE700F7F7DE00CEB5A500AD84
      84004AB5FF000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF000873080042DE6B0042DE6B0039D65A0031CE5A0029C6
      4A0029C6420021BD390021BD310008730800008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF009C310000E7EFFF00DEE7FF00FFFFFF00FFFFFF009CAD
      FF000031FF0063315A000000000000000000008CBD00B5FFFF00B5F7FF00C6F7
      FF00B5A59C00EFDED600FFFFF700FFFFD600FFFFDE00FFFFD600FFF7BD00CEA5
      8C00000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000008CBD00B5FFFF00B5F7FF00C6F7
      FF00E7FFFF00EFFFFF000873080008730800087308000873080039DE6B0039D6
      630008730800087308000873080008730800008CBD00B5FFFF00B5F7FF00C6F7
      FF00E7FFFF00EFFFFF009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005273FF000031FF000000000000000000008CBD00BDEFF70031BDDE0010A5
      D6009C949400FFFFE700FFFFDE00FFFFD600FFFFDE00FFF7CE00FFD69C00EFD6
      AD00AD8484000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CBD00BDEFF70031BDDE0010A5
      D600109CCE0021A5CE0031A5CE002194BD0094CEE7000873080042DE730042DE
      6B0008730800000000000000000000000000008CBD00BDEFF70031BDDE0010A5
      D600109CCE0021A5CE009C3100009C3100009C3100009C3100009C3100009C31
      00008C3110002131CE000031FF0000000000088CBD004AC6DE005AEFFF0021D6
      FF00A59C9C00FFFFDE00FFFFDE00FFFFDE00FFFFDE00F7DEAD00F7BD8400F7DE
      B500AD8484000000000000000000000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      00000000FF00000000000000000000000000008CBD004AC6DE005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E7000084B500087308004AE77B004AE7
      7B0008730800000000000000000000000000008CBD004AC6DE005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E7000084B5000884AD00000000000000
      000000000000000000000031FF000031FF00008CBD008CFFFF005AEFFF0021DE
      FF0094949400FFF7D600FFFFDE00FFF7D600FFE7B500F7CE9C00FFEFBD00E7CE
      AD00AD8484000000000000000000000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF0000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE0008730800087308000873
      080008730800000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD00000000000000
      00000000000000000000000000000031FF00008CBD008CFFFF005AEFFF0021DE
      FF005AADBD00D6BDA500FFF7C600FFD69C00F7CE8C00FFF7E700FFF7F700AD84
      8400000000000000000000000000000000008080800000000000000000000000
      000000000000000000008080800080808000000000000000FF000000FF000000
      FF0000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE00087BAD00000000000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD00000000000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021DE
      FF0039D6FF008CA5AD00CEAD9400EFD6AD00F7E7B500DEC6B500AD848400AD84
      8400000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000000000000000FF000000FF00000000000000
      00000000FF00000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD00000000000000
      000000000000000000000000000000000000008CBD008CFFFF005AEFFF0021D6
      FF0031DEFF006BE7FF008CE7FF004AC6E700089CCE000884AD00000000000000
      000000000000000000000000000000000000088CBD008CFFFF0084FFFF0073FF
      FF007BFFFF0094FFFF00A5C6CE008C9C9C0084848C0084737300000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      00000000000000000000808080000000FF000000000000000000000000000000
      0000000000000000FF000000000000000000008CBD0094FFFF0084FFFF006BFF
      FF007BFFFF0094FFFF00A5FFFF0063DEF70008A5D6000884AD00000000000000
      000000000000000000000000000000000000008CBD0094FFFF0084FFFF006BFF
      FF007BFFFF0094FFFF00A5FFFF0063DEF70008A5D6000884AD00000000000000
      000000000000000000000000000000000000008CBD00FFFFFF00F7FFFF00D6FF
      FF00B5FFFF00ADFFFF00ADFFFF00ADFFFF0073FFFF000884AD00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      00000000FF000000000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000008CBD00FFFFFF00F7FFFF00D6FF
      FF00B5FFFF00B5FFFF00ADFFFF00ADFFFF006BFFFF000884AD00000000000000
      000000000000000000000000000000000000008CBD00FFFFFF00F7FFFF00D6FF
      FF00B5FFFF00B5FFFF00ADFFFF00ADFFFF006BFFFF000884AD00000000000000
      000000000000000000000000000000000000000000000894C600F7FFFF00E7FF
      FF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0080808000000000000000000000000000000000000000
      000080808000808080000000000000000000000000000894C600F7FFFF00E7FF
      FF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084AD0000000000000000000000
      000000000000000000000000000000000000000000000894C600F7FFFF00E7FF
      FF00C6FFFF00ADFFFF00A5FFFF009CFFFF001084AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000088CBD00088C
      BD00008CBD00088CBD00088CBD00088CBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000008CBD00008C
      BD00008CBD00008CBD00008CBD00008CBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008CBD00008C
      BD00008CBD00008CBD00008CBD00008CBD000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F81FF81FF33F0000E007E007E0070000
      C003C003C0000000800180018001000080018001000000000000000000000000
      0000000000000000000000008000000000000000E001000000000000F0030000
      00000000F01F000080018001E03F000080018001E03F0000C003C003C03F0000
      E007E007C07F0000F81FF81FF8FF0000FFFFFFFFF81FF81FE07FC007E007E007
      C03F8003C003C003800380038001800180038003800180018003800300000000
      8003800300000000801F800300000000801F800300000000801F800300000000
      801F800300000000801F800380018001801F800380018001801F8003C003C003
      C03FC007E007E007E07FFFFFF81FF81FFFFCFFFFFF87FC03C0F8006FC087C003
      80707F7F8007800300217F670000000300037F7F0000000300077F0100000003
      000F7F790000000300077F7D0007000100077F350007003C00077C0D0007003E
      000F7C8D003F003F000F0135003F003F003FDCF9003F003F003FD5F1003F003F
      807FE1F3807F807FC0FFF407C0FFC0FF00000000000000000000000000000000
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 400
    Top = 232
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 200
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 520
    Top = 200
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 784
    Top = 64
  end
  inherited QBrowse2: TFDQuery
    Left = 56
    Top = 296
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 56
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
      5EFF769C5EFF769C5EFF5D7A49C80000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFFA0BB90FF82A5
      6DFF769C5EFF769C5EFF769C5EFF0000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46BFF769C5EFF769C5EFF658550DB00000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FFFFFFFFFF9C8B78FF9C8B
      78FFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFBACDAEFF8EAD7AFFBBCE
      AFFFE6EDE1FF80A36AFF769C5EFF72975BF800000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFF769C
      5EFFBBCEAFFFE4ECDFFF7EA267FF658550DB00000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFFA2BB91FF789D60FF0000000000000000000000009C8B78FFFFFF
      FFFF9C8B78FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C80000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF0000000000000000000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF000000000000000000000000000000009C8B78FFFFFF
      FFFF9C8B78FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF000000000000000000000000000000009C8B78FFF2EB
      E1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EB
      E1FFF2EBE1FF9C8B78FF00000000000000000000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C7000000000000000000000000000000009C8B78FFFFFF
      FFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D100000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C80000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF00000000000000000000000000000000000000000000
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
      00000000000000000000000000000000FFEFFFFFFFC7FFFFFFCFF3FFC001C003
      FF8FF1FFC001C003FF0FF0FFC000C003FE0FF07FC000C003FC0FF03FC000C003
      F80FF01FC001C003F00FF00FC001C003E00FF00FC003C003F00FF01FC003C003
      F80FF03FC003C003FC0FF07FC003C003FE0FF0FFC003C003FF0FF1FFC007C003
      FF8FF3FFC00FC003FFCFF7FFC01FFFFFFFFFE007FFFF3FFFF83FE00780011FFF
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
  object frOrdenCompra: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.797657326390000000
    ReportOptions.LastChange = 39638.797657326390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 398
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBCabecera: TfrxDBDataset
    UserName = 'frDBCabecera'
    CloseDataSource = False
    DataSet = DatosOrdenCompra.CDSOrdenCompCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 248
    Top = 372
    FieldDefs = <
      item
        FieldName = 'ID_OC'
        FieldAlias = 'ID_OC'
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
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
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
        FieldName = 'IMPORTEEXCLUIDO1'
        FieldAlias = 'IMPORTEEXCLUIDO1'
      end
      item
        FieldName = 'IMPORTEEXCLUIDO2'
        FieldAlias = 'IMPORTEEXCLUIDO2'
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
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'IMPRESO'
        FieldAlias = 'IMPRESO'
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
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
      end
      item
        FieldName = 'FECHACUMPLIDA'
        FieldAlias = 'FECHACUMPLIDA'
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
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'MUESTRAREALIZO'
        FieldAlias = 'MUESTRAREALIZO'
      end
      item
        FieldName = 'MUESTRAAUTORIZO'
        FieldAlias = 'MUESTRAAUTORIZO'
      end
      item
        FieldName = 'AUTORIZO'
        FieldAlias = 'AUTORIZO'
      end
      item
        FieldName = 'REALIZO'
        FieldAlias = 'REALIZO'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'NOTAS'
        FieldAlias = 'NOTAS'
      end
      item
        FieldName = 'TRANSPORTE'
        FieldAlias = 'TRANSPORTE'
      end
      item
        FieldName = 'FECHAAUTORIZACION'
        FieldAlias = 'FECHAAUTORIZACION'
      end
      item
        FieldName = 'TIPO'
        FieldAlias = 'TIPO'
      end
      item
        FieldName = 'TIPO_PROVEEDOR'
        FieldAlias = 'TIPO_PROVEEDOR'
      end
      item
        FieldName = 'ID_PRESUPUESTO_OC'
        FieldAlias = 'ID_PRESUPUESTO_OC'
      end
      item
        FieldName = 'MUESTRANUMEROPRESOC'
        FieldAlias = 'MUESTRANUMEROPRESOC'
      end
      item
        FieldName = 'MUESTRAID_PRESOC'
        FieldAlias = 'MUESTRAID_PRESOC'
      end
      item
        FieldName = 'TELEFONOS'
        FieldAlias = 'TELEFONOS'
      end>
  end
  object frDBDetalle: TfrxDBDataset
    UserName = 'frDBDetalle'
    CloseDataSource = False
    DataSet = DatosOrdenCompra.CDSOrdenCompraDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 174
    Top = 402
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CABOC'
        FieldAlias = 'ID_CABOC'
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
        FieldName = 'RENGLON'
        FieldAlias = 'RENGLON'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
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
        FieldName = 'CANTIDADPEDIDA'
        FieldAlias = 'CANTIDADPEDIDA'
      end
      item
        FieldName = 'CANTIDADAUTORIZADA'
        FieldAlias = 'CANTIDADAUTORIZADA'
      end
      item
        FieldName = 'CANTIDADRECIBIDA'
        FieldAlias = 'CANTIDADRECIBIDA'
      end
      item
        FieldName = 'UNITARIO_TOTAL'
        FieldAlias = 'UNITARIO_TOTAL'
      end
      item
        FieldName = 'UNITARIO_GRAVADO'
        FieldAlias = 'UNITARIO_GRAVADO'
      end
      item
        FieldName = 'UNITARIO_EXENTO'
        FieldAlias = 'UNITARIO_EXENTO'
      end
      item
        FieldName = 'DESGLOZAIVA'
        FieldAlias = 'DESGLOZAIVA'
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
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
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
        FieldName = 'MODO_GRAVAMEN'
        FieldAlias = 'MODO_GRAVAMEN'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'ID_COMP_REC'
        FieldAlias = 'ID_COMP_REC'
      end
      item
        FieldName = 'TIPO_COMP_REC'
        FieldAlias = 'TIPO_COMP_REC'
      end
      item
        FieldName = 'CLASE_COMP_REC'
        FieldAlias = 'CLASE_COMP_REC'
      end
      item
        FieldName = 'NRO_COMP_REC'
        FieldAlias = 'NRO_COMP_REC'
      end
      item
        FieldName = 'MUESTRAPRESCANT'
        FieldAlias = 'MUESTRAPRESCANT'
      end
      item
        FieldName = 'MUESTRAPRESUNI'
        FieldAlias = 'MUESTRAPRESUNI'
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
      end
      item
        FieldName = 'MUESTRACODALTERNATIVO'
        FieldAlias = 'MUESTRACODALTERNATIVO'
      end
      item
        FieldName = 'DETALLE_ADICIONAL'
        FieldAlias = 'DETALLE_ADICIONAL'
      end>
  end
  object frDBDImpuestos: TfrxDBDataset
    UserName = 'frDBDImpuestos'
    CloseDataSource = False
    DataSet = DatosOrdenCompra.CDSImpuestos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 201
    Top = 305
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
        FieldName = 'ID_OCCAB'
        FieldAlias = 'ID_OCCAB'
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
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    DataSet = DatosOrdenCompra.CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 224
    Top = 400
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
    Left = 665
    Top = 325
  end
  object PopupMenu1: TPopupMenu
    Left = 592
    Top = 319
    object ControlDetalle1: TMenuItem
      Action = ControlDetalle
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object VerPresupuesto1: TMenuItem
      Action = VerPresupuesto
    end
    object CambiaProveedor1: TMenuItem
      Action = CambiaProveedor
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object GenerarRecepcion1: TMenuItem
      Action = GeneraRecepcion
    end
    object GenerarFactura1: TMenuItem
      Action = GenerarFactura
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ImprimirEtiquetas1: TMenuItem
      Action = ImprimirEtiquetas
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CambiarFechaRecepcion1: TMenuItem
      Action = CambiarFechaRecepcion
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object VolverAutorizada1: TMenuItem
      Action = VolverAutorizada
    end
    object VolverModoAutorizacion1: TMenuItem
      Action = VolverModoAutorizacion
    end
    object DaPorRecibida1: TMenuItem
      Action = Recibida
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object DesAnular1: TMenuItem
      Action = DesAnular
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object FiltraCodigoProveedor: TMenuItem
      Caption = 'Filtrar por Codigo de Proveedor'
      OnClick = FiltraCodigoProveedorClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object OmitirRecepcionAutomatica: TMenuItem
      Caption = 'Omitir Recepcion Automatica'
      OnClick = OmitirRecepcionAutomaticaClick
    end
    object OmitirFacturaAutomtica: TMenuItem
      Caption = 'Omitir Factura Automatica'
      OnClick = OmitirFacturaAutomticaClick
    end
  end
  object spMarcarImpreso: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MARCA_OC_IMPRESA'
    Left = 436
    Top = 295
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosOrdenCompra.CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 128
    Top = 96
  end
  object ComBuscadorDeposito: TComBuscador
    Data = DatosOrdenCompra.CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 84
    Top = 190
  end
  object ComBuscadorCondCompra: TComBuscador
    Data = DatosOrdenCompra.CDSBuscaCondCompra
    Campo = 'CODIGOPAGO'
    Titulo = 'Condiciones de Pago'
    rOk = False
    Left = 168
    Top = 16
  end
  object ComBuscadorVendedor: TComBuscador
    Data = DatosOrdenCompra.CDSBuscaVendedor
    Campo = 'CODIGO'
    Titulo = 'Vendedores'
    rOk = False
    Left = 396
    Top = 102
  end
  object ComBuscadorAutorizar: TComBuscador
    Data = DatosOrdenCompra.CDSBuscaAutoriza
    Campo = 'CODIGO'
    Titulo = 'Autorizan'
    rOk = False
    Left = 472
    Top = 208
  end
  object PopupMenu2: TPopupMenu
    Left = 804
    Top = 342
    object CopiarDetalleArchivoTemporal1: TMenuItem
      Action = CopiarDetalleXML
    end
    object PegraDetalleDesdeArchivoTemporal1: TMenuItem
      Action = PegarDetalleDesdeXML
    end
  end
end

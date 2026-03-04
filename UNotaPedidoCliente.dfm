inherited FormNotaPedidoCliente: TFormNotaPedidoCliente
  Left = 286
  Top = 108
  Caption = 'Notas de Pedido de Clientes'
  ClientHeight = 597
  ClientWidth = 786
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 804
  ExplicitHeight = 638
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 786
    Height = 544
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 786
    ExplicitHeight = 544
    object DBText13: TDBText
      Left = 328
      Top = 328
      Width = 65
      Height = 33
    end
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 169
      Width = 786
      Height = 363
      ActivePage = PagDetalles
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      MultiLine = True
      TabOrder = 1
      TabPosition = tpBottom
      TabStop = False
      OnEnter = pcDetalleFacturaEnter
      object PagDetalles: TTabSheet
        Caption = 'Detalles'
        DesignSize = (
          778
          337)
        object Bevel8: TBevel
          Left = 576
          Top = 251
          Width = 100
          Height = 20
          Anchors = [akLeft, akBottom]
          ExplicitTop = 220
        end
        object Label17: TLabel
          Left = 6
          Top = 229
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
          ExplicitTop = 198
        end
        object Bevel21: TBevel
          Left = 564
          Top = 303
          Width = 111
          Height = 21
          Anchors = [akLeft, akBottom]
          ExplicitTop = 272
        end
        object DBText60: TDBText
          Left = 596
          Top = 305
          Width = 75
          Height = 17
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 274
        end
        object dbtTotal: TDBText
          Left = 588
          Top = 252
          Width = 82
          Height = 18
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          DataField = 'Total'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 221
        end
        object Label1: TLabel
          Left = 505
          Top = 251
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
          ExplicitTop = 220
        end
        object Label3: TLabel
          Left = 463
          Top = 277
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
          ExplicitTop = 246
        end
        object Bevel2: TBevel
          Left = 576
          Top = 275
          Width = 98
          Height = 21
          Anchors = [akLeft, akBottom]
          ExplicitTop = 244
        end
        object lblPedido: TLabel
          Left = 451
          Top = 227
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = '0.00'
          ExplicitTop = 196
        end
        object lblEntregado: TLabel
          Left = 523
          Top = 227
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = '0.00'
          ExplicitTop = 196
        end
        object lblPendiente: TLabel
          Left = 597
          Top = 227
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = '0.00'
          ExplicitTop = 196
        end
        object dbtPresupuestoN_NROCPBTE: TDBText
          Left = 88
          Top = 300
          Width = 203
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'PRESUPUESTO_NROCPBTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel5: TJvLabel
          Left = 519
          Top = 304
          Width = 39
          Height = 19
          Alignment = taRightJustify
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Anchors = [akLeft, akBottom]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -16
          HotTrackFont.Name = 'Arial'
          HotTrackFont.Style = []
          ExplicitTop = 273
        end
        object RxLabel9: TJvLabel
          Left = 10
          Top = 300
          Width = 61
          Height = 13
          Caption = 'Presupuesto'
          Anchors = [akLeft, akBottom]
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          OnDblClick = AnteriorExecute
        end
        object JvLabel2: TJvLabel
          Left = 10
          Top = 319
          Width = 72
          Height = 13
          Caption = 'Factura Origen'
          Anchors = [akLeft, akBottom]
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          OnDblClick = AnteriorExecute
        end
        object dbtFacturaOrigen: TDBText
          Left = 88
          Top = 319
          Width = 203
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'FACTURA_NROCPBTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbeObservaciones2: TDBEdit
          Left = 11
          Top = 272
          Width = 313
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'Observacion2'
          DataSource = DSBase
          TabOrder = 2
        end
        object dbeObservaciones1: TDBEdit
          Left = 11
          Top = 247
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
          Width = 775
          Height = 221
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DatosNPedidoClientes.DSNotaPedidoDet
          DrawingStyle = gdsClassic
          FixedColor = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = DBGrillaDetalleColEnter
          OnDrawColumnCell = DBGrillaDetalleDrawColumnCell
          OnDblClick = DBGrillaDetalleDblClick
          OnDragDrop = DBGrillaDetalleDragDrop
          OnDragOver = DBGrillaDetalleDragOver
          OnEnter = DBGrillaDetalleEnter
          OnExit = DBGrillaDetalleExit
          OnKeyDown = DBGrillaDetalleKeyDown
          OnKeyPress = DBGrillaDetalleKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'RENGLON'
              Title.Alignment = taCenter
              Title.Caption = '#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGOARTICULO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 261
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
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD_PEDIDIA'
              Title.Alignment = taCenter
              Title.Caption = 'Pedido'
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
              FieldName = 'CANTIDAD_ENTREGADA'
              Title.Alignment = taCenter
              Title.Caption = 'Entregado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 71
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'CANTIDAD_FALTANTE'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Pendiente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRASIGNO'
              Title.Alignment = taCenter
              Title.Caption = '#'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNITARIO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = '$ Unitario'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 335
          Top = 279
          Width = 97
          Height = 25
          Anchors = [akLeft, akBottom]
          Enabled = False
          TabOrder = 3
          object DBCheckBox1: TDBCheckBox
            Left = 8
            Top = 5
            Width = 81
            Height = 17
            Caption = 'Impreso'
            DataField = 'Impreso'
            DataSource = DSBase
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object DBEdit1: TDBEdit
          Left = 515
          Top = 275
          Width = 47
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 4
        end
        object dbgExitencias: TDBGrid
          Left = 371
          Top = 220
          Width = 404
          Height = 82
          Anchors = [akLeft, akBottom]
          Color = clBlack
          DataSource = DatosNPedidoClientes.DSExistencia
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
              Width = 88
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
              Visible = True
            end>
        end
      end
      object PagPieCpbte: TTabSheet
        Caption = 'Impuestos'
        ImageIndex = 1
        object Label6: TLabel
          Left = 424
          Top = 50
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
          Left = 424
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
          Left = 424
          Top = 97
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
          Left = 424
          Top = 73
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
          Left = 537
          Top = 1
          Width = 98
          Height = 21
        end
        object Bevel6: TBevel
          Left = 537
          Top = 48
          Width = 98
          Height = 21
        end
        object Bevel22: TBevel
          Left = 537
          Top = 94
          Width = 98
          Height = 21
        end
        object Bevel28: TBevel
          Left = 537
          Top = 71
          Width = 98
          Height = 21
        end
        object DBText1: TDBText
          Left = 543
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
          Left = 543
          Top = 50
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
          Left = 543
          Top = 96
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
          Left = 542
          Top = 73
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
          Left = 424
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
          Left = 537
          Top = 24
          Width = 98
          Height = 21
        end
        object DBText3: TDBText
          Left = 542
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
          Left = 440
          Top = 191
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
          Left = 496
          Top = 193
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
        object DBGrillaIva: TDBGrid
          Left = 366
          Top = 117
          Width = 291
          Height = 68
          Color = clMenu
          DataSource = DatosNPedidoClientes.DSNotaPedidoImp
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
              FieldName = 'TASA'
              ReadOnly = False
              Title.Caption = '%'
              Width = 50
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
          Left = 476
          Top = 48
          Width = 47
          Height = 21
          DataField = 'DSTO'
          DataSource = DSBase
          TabOrder = 1
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 786
      Height = 169
      Align = alTop
      TabOrder = 0
      object DBText66: TDBText
        Left = 518
        Top = 70
        Width = 97
        Height = 17
        Alignment = taCenter
        DataField = 'FechaVto'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object dbtMuestraComprob: TDBText
        Left = 348
        Top = 24
        Width = 133
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
        Left = 513
        Top = 21
        Width = 96
        Height = 24
        Alignment = taCenter
        AutoSize = True
        DataField = 'LETRANP'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 483
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
        Left = 366
        Top = 61
        Width = 23
        Height = 22
        Action = DatosCabCliente
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
      end
      object DBText14: TDBText
        Left = 72
        Top = 48
        Width = 137
        Height = 17
        DataField = 'MUESTRAIVA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText15: TDBText
        Left = 261
        Top = 48
        Width = 97
        Height = 17
        DataField = 'CUIT'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtDesIva: TDBText
        Left = 696
        Top = 3
        Width = 18
        Height = 17
        DataField = 'DESGLOZAIVA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel58: TJvLabel
        Left = 7
        Top = 10
        Width = 35
        Height = 13
        Caption = 'Fecha '
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel59: TJvLabel
        Left = 102
        Top = 10
        Width = 89
        Height = 13
        Caption = 'Sucursal de Venta'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel60: TJvLabel
        Left = 533
        Top = 7
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel61: TJvLabel
        Left = 407
        Top = 73
        Width = 108
        Height = 13
        Caption = 'Fecha de Vencimiento'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel62: TJvLabel
        Left = 200
        Top = 123
        Width = 95
        Height = 13
        Caption = 'Condicion de Venta'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object TJvLabel
        Left = 552
        Top = 96
        Width = 5
        Height = 13
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel2: TJvLabel
        Left = 7
        Top = 48
        Width = 34
        Height = 13
        Caption = 'Cliente'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel3: TJvLabel
        Left = 7
        Top = 86
        Width = 127
        Height = 13
        Caption = 'Lugar de Recepci'#243'n(LDR)'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 302
        Top = 10
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel7: TJvLabel
        Left = 339
        Top = 86
        Width = 48
        Height = 13
        Caption = 'Vendedor'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel4: TJvLabel
        Left = 7
        Top = 124
        Width = 44
        Height = 13
        Caption = 'Dep'#243'sito'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText9: TDBText
        Left = 718
        Top = 105
        Width = 18
        Height = 17
        Hint = 'Estado del Pedido'
        DataField = 'ESTADO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object JvLabel1: TJvLabel
        Left = 653
        Top = 106
        Width = 63
        Height = 13
        Caption = 'Estado Ped.:'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText16: TDBText
        Left = 451
        Top = 43
        Width = 82
        Height = 17
        Hint = 'Estado del Pedido'
        Alignment = taCenter
        DataField = 'ID'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object dbeSuc: TDBEdit
        Left = 532
        Top = 22
        Width = 45
        Height = 24
        DataField = 'SUCNP'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object dbeNumero: TDBEdit
        Left = 581
        Top = 22
        Width = 84
        Height = 24
        DataField = 'NUMERONP'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object dbeConVta: TDBEdit
        Left = 242
        Top = 139
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraCondVenta'
        DataSource = DSBase
        Enabled = False
        TabOrder = 10
      end
      object dbeNombre: TDBEdit
        Left = 73
        Top = 63
        Width = 286
        Height = 21
        Color = clInfoBk
        DataField = 'Nombre'
        DataSource = DSBase
        Enabled = False
        TabOrder = 11
      end
      object dbeLdr: TDBEdit
        Left = 48
        Top = 100
        Width = 286
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraLdr'
        DataSource = DSBase
        Enabled = False
        TabOrder = 12
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
        TabOrder = 9
      end
      object dbeMuestraVendedor: TDBEdit
        Left = 409
        Top = 100
        Width = 184
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRAVENDEDOR'
        DataSource = DSBase
        Enabled = False
        TabOrder = 13
      end
      object dbeDeposito: TDBEdit
        Left = 48
        Top = 140
        Width = 135
        Height = 21
        Color = clInfoBk
        DataField = 'MuestraDeposito'
        DataSource = DSBase
        Enabled = False
        TabOrder = 15
      end
      object DBCheckManual: TDBCheckBox
        Left = 564
        Top = 51
        Width = 83
        Height = 17
        TabStop = False
        Caption = 'Manual'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object RxCCodigo: TJvDBComboEdit
        Left = 7
        Top = 63
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
        ButtonWidth = 15
        TabOrder = 1
        OnButtonClick = BuscarClienteExecute
        OnKeyDown = RxCCodigoKeyDown
      end
      object RxCLdr: TJvDBComboEdit
        Left = 7
        Top = 101
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
        ButtonWidth = 15
        TabOrder = 4
        OnButtonClick = BuscarLdrExecute
        OnKeyDown = RxCLdrKeyDown
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
        ButtonWidth = 15
        TabOrder = 2
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxCSucursalKeyDown
      end
      object RxCConVta: TJvDBComboEdit
        Left = 200
        Top = 140
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
        TabOrder = 5
        OnButtonClick = BuscarCondVentaExecute
        OnKeyDown = RxCConVtaKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 303
        Top = 24
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
      object rxcVendedor: TJvDBComboEdit
        Left = 339
        Top = 100
        Width = 66
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
        TabOrder = 6
        OnButtonClick = BuscarVendedorExecute
        OnKeyDown = rxcVendedorKeyDown
      end
      object RxCDeposito: TJvDBComboEdit
        Left = 7
        Top = 140
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
        ButtonWidth = 15
        TabOrder = 14
        OnButtonClick = BuscarDepositoExecute
        OnKeyDown = RxCDepositoKeyDown
      end
      object dbeFechaVta: TJvDBDateEdit
        Left = 8
        Top = 24
        Width = 92
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHAPEDIDO'
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
      end
    end
    object pnEstado: TPanel
      Left = 122
      Top = 512
      Width = 660
      Height = 25
      Anchors = [akLeft, akBottom]
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      DesignSize = (
        660
        25)
      object lbestado: TLabel
        Left = 8
        Top = 2
        Width = 58
        Height = 20
        Anchors = [akLeft, akBottom]
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 310
        Top = 2
        Width = 331
        Height = 17
        Anchors = [akLeft, akBottom]
        Color = clMenuHighlight
        DataField = 'USUARIO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 242
        Top = 2
        Width = 66
        Height = 20
        Anchors = [akLeft, akBottom]
        Caption = 'Genero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 544
    Width = 786
    Align = alBottom
    ButtonWidth = 24
    ExplicitTop = 544
    ExplicitWidth = 786
    object spCumplido: TSpeedButton
      Left = 557
      Top = 0
      Width = 28
      Height = 29
      Hint = 'Da por Cumplida o Terminada la Nota de Pedido'
      Action = Cumplir
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
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700686868006969
        69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
        7100727272007373730074747400757575007676760077777700787878007979
        79007A7A7A007B7B7B007C7C7C007D7D7D008D6E8D00A856A800C837C800E41B
        E400F509F500FC02FC00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE01
        FE00FE02FE00FD03FD00FC05FC00FB09FB00FA0DFA00F814F800F129F400E940
        F000E15AEC00D977E600D191E100C9AEDB00C1C1DB00B9D4DE00B3D7E500AFD9
        EA00AFDDEF00B0E0F200B2E3F400B3E5F600B4E7F700B5E8F800B3E8F800B1E7
        F800AFE7F800A9E5F800A3E3F8009CE0F80096DEF8008FDBF8008DDAF8008AD8
        F90086D6F90081D5F8007DD4F7007AD4F60079D2F40078D0F40077CDF20074CC
        F1006FCBEE006AC9EB0066C8EA0063C6E7005FC3E40059BEE00053BBDD004DB9
        D90047B7D80041B5D70039B2D70034AED60030ABD5002BA9D40027A7D30023A5
        D10020A3CF001FA0CC001E9FCC001C9DCA001A9AC8001998C6001494C500108F
        C0000F8BBC000E87B8000D83B4000B81B3000C7EAE000C7DAE009E9E9E9E9E9E
        9E9E9E9E9E9E9E9E9E9E9E9E9EFBEEEAECF1ED9E9E9E9E9E9E9E9E9EFAF9E4DA
        DCDFE5E7EE9E9E9E9E9E9E9EF8F6E3D9DFE4EBE0DBE79E9E9E9E9E9EF6F2DDD5
        D8EAFCE8DCDBF49E9E9E9E9EF2EFD5CFD4E8FFE9DFDCF49E9E9E9E9EF0EDCBCF
        CFD4F8E6DBE0F49E9E9E9E9EF4EDEBE9EAEAE7E3DAD9F49E9E9E9E9EF5EBF1EE
        EEF2EDE7DBE3F89E9E9E9E9EF5EBFCF2DDECF2FBF8ECF99E9E9E9E9E9EFFFFF7
        DDDDEEFEFCF99E9E9E9E9E9E9E9EFDFC9EF0F9FFFE9E9E9E9E9E9E9E9E9EECFB
        9E9E9EFFFF9E9E9E9E9E9E9E9E9EF9E4F79EFFFB9E9E9E9E9E9E9E9E9E9E9EF3
        E5E8EEFD9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E}
    end
    object ToolButton1: TToolButton
      Left = 585
      Top = 0
      Width = 7
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object spCopiaNP: TSpeedButton
      Left = 592
      Top = 0
      Width = 29
      Height = 29
      Action = CopiaNP
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000875
        0D0008750D0008750D0008750D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000E80AA000E80AA000E80AA000E80AA000E80AA000E80AA00FF00FF000875
        0D0013AA220010A61D0008750D00FF00FF00FF00FF00FF00FF00FF00FF00078D
        BB0049D5EE0023D7FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA000875
        0D001AB12D0013AA220008750D00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF0008750D0008750D0008750D000875
        0D0025BD3E001CB4310008750D0008750D0008750D0008750D00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF0008750D003CD4620035CE590030C9
        52002CC3490026BE410025BD3E001AB12D0017AF2A0008750D00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D1
        5E0035CE59002CC349002AC1470025BD3E0020B8360008750D00078DBB00B3FC
        FE00B6F6FF00C6F5FF00E3FAFF00E9F9FD0008750D0008750D0008750D000875
        0D003FD868003CD4620008750D0008750D0008750D0008750D00078DBB00BAEE
        F60030BCDD0011A7D200129FCB0020A1CA0035A7CD002692BF0092CEE4000875
        0D0045DD710041DA6D0008750D00FF00FF00FF00FF00FF00FF00078DBB004AC5
        DD0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E3000682B6000875
        0D004DE67F004DE67F0008750D00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000875
        0D0008750D0008750D0008750D00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7F
        A900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB0091FC
        FE0082F8FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB00FCFF
        FF00F4FFFF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C92
        C000F4FFFF00E3FAFF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00078DBB00078DBB00078DBB00078DBB00078DBB00078DBB00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object spHacerRto: TSpeedButton
      Left = 621
      Top = 0
      Width = 28
      Height = 29
      Hint = 'Generar Remito'
      Action = GenerarRto
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
        03030303030303030303030303030303030303030303030303FFFFFFFFFFFFFF
        FFFF030303030303030303030000000000000000000303030303030303030303
        F8F8F8F8F8F8F8F8F8FF0303030303030303030300FBFFFBFFFBFFFB00030303
        03FFFFFFFFFFFFFFF8FF03FFFFFFFFFFF8FF0303000000000000000000FFF8F8
        F8F8F8FF00030303F8F8F8F8F8F8F8F8F8FFF8F8F8F8F803F8FF030007FF07FF
        07FF07FF00FBFFFBFFFBFFFB000303F8FF03030303030303F8FF030303FFFFFF
        F8FF0300FF07FF07FF07FF0700FF0707F8F8F8FF000303F8FF03030303030303
        F8FFFFFFF8F8F803F8FF030007FF07FF07FF0704040404FBFFFBFFFB000303F8
        FF030303030303F8F8F8F8FF03FFFFFFF8FF0300FF07FF07FF07FF07FC040407
        F8F8F8FF000303F8FF03030303030303F8F8F8FFF8F8F803F8FF030007FF07FF
        07FF070404FC04FBFFFBFFFB000303F8FF030303030303F8F8F8F8FF030303FF
        F8FF0300FF07FF07FF07040404FF04FFFFFFF8F8000303F8FF0303030303F8F8
        F8FFF8030303F8F8F803030007FF07FF0704040400FBFFFBFFFBF800030303F8
        FF03030303F8F8F8F8FFFFFFFFFFF8F803030300FF07FF070404040700000000
        00000003030303F8FF030303F8F8F803F8F8F8F8F8F8F8030303030007FF07FF
        070407FF07FF000303030303030303F8FF03030303F803030303F8FF03030303
        03030300FF07FF07FF07FF07FF07000303030303030303F8FF03030303030303
        0303F8FF030303030303030007FF07FF07FF07FF07FF000303030303030303F8
        FF0303FFFFFFFFFFFF03F8FF0303030303030300FF07040404040404FF070003
        03030303030303F803FFF8F8F8F8F8F8FFFFF80303030303030303030000FEFC
        FCFCFC04000003030303030303030303F8F803F8F8F8F8F8F8F8030303030303
        030303030303FEFCFCFCFC04030303030303030303030303030303F8F8F8F8F8
        030303030303030303030303030303FEFEFEFE03030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
    end
    object spPrint: TSpeedButton
      Left = 649
      Top = 0
      Width = 28
      Height = 29
      Action = Imprimir
      Flat = True
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
    object spFacturacion: TSpeedButton
      Left = 677
      Top = 0
      Width = 28
      Height = 29
      Action = GenerarFc
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        979696ACACACACACACACACACACACACACACACACACACACACACACACACACACAC4C4C
        4C525050595858676767FF00FFFF00FF3737377472726E6E6E6E6E6E6E6E6E6E
        6E6E6E6E6E6E6E6E6E6E6E6E6E6E9999999999999B9A9ABDBCBCFF00FFFF00FF
        4B4A4AA8A6A6A19E9EB5B3B3596958006600596D58B2B0B0AFAEAEA19E9E7170
        70605F5F373737FF00FFFF00FF222222A19E9EC3C3C3DADDDE9DA59D00660000
        A500006100A6B1AACDCDCDB5B3B39E9C9C222222FF00FFFF00FFFF00FF6E6E6E
        B2B0B0D0D0D0EBF3F600660000440000A500006100006600E1E4E5C6C6C6ABA8
        A86E6E6EFF00FFFF00FFFF00FF6E6E6EABA8A8D4D4D4F0FBFF3C583F00260000
        A500008300006600EBF3F6CDCDCDABA8A86E6E6EFF00FFFF00FFFF00FF6E6E6E
        B2B0B0D4D4D4EBF3F600440000A50000A5000061003C583FE6ECEED1D1D1ABA8
        A86E6E6EFF00FFFF00FFFF00FF484848A19E9ECACACAE6ECEE00660000660000
        A100004400006600DDE0E1BCBBBB9E9C9C484848FF00FFFF00FFFF00FF111111
        868585B5B3B3D5D5D5AAB5AE00660000A500006100A5AEA5CACACAABA8A88383
        83111111FF00FFFF00FFFF00FFFF00FF4444449E9C9CB8B6B6C3C2C266776600
        6100678067CACACAAEABAB9B9A9A444444FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF2222226E6E6E9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C717070222222FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3333336E6E6E59
        5959595959333333FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF484848717070979696828181484848FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF111111979696ADAFB09A
        9FA1D8DCDE868585111111FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF6E6E6E868585C2C4C5B1B3B4AFADAD838383484848FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6E6E6E2222226E6E6E44
        44446E6E6E2222226E6E6EFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object SpeedButton2: TSpeedButton
      Left = 705
      Top = 0
      Width = 53
      Height = 29
      Hint = 'Otras Opciones'
      Caption = ' Otros >>'
      Flat = True
      PopupMenu = PopupMenu1
    end
  end
  inherited Panel1: TPanel
    Top = 574
    Width = 786
    Align = alBottom
    Color = clGradientInactiveCaption
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 574
    ExplicitWidth = 786
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 697
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 697
    end
    object chPreview: TCheckBox
      Left = 648
      Top = 4
      Width = 113
      Height = 17
      Hint = 'Hacer o no Vista Previa de la Impresio'
      Caption = 'Preview de Impre.'
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object pnPedidos: TPanel [3]
    Left = 375
    Top = 122
    Width = 403
    Height = 41
    TabOrder = 3
    object RxLabel1: TJvLabel
      Left = 7
      Top = 4
      Width = 125
      Height = 13
      Cursor = crHandPoint
      Caption = 'N.de Pedido Anteri.(Alt+A)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
      OnClick = AnteriorExecute
      OnDblClick = AnteriorExecute
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object DBText8: TDBText
      Left = 9
      Top = 23
      Width = 103
      Height = 17
      Cursor = crHandPoint
      DataField = 'ORIGEN_NROCPBTE'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = AnteriorExecute
    end
    object RxLabel8: TJvLabel
      Left = 249
      Top = 5
      Width = 113
      Height = 13
      Cursor = crHandPoint
      Caption = 'Cpbt.de Entrega (Alt+E)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
      OnClick = EntregaExecute
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object DBText12: TDBText
      Left = 247
      Top = 23
      Width = 19
      Height = 17
      DataField = 'ENTREGA_TIPOCPBTE'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText11: TDBText
      Left = 272
      Top = 23
      Width = 129
      Height = 17
      DataField = 'ENTREGA_NROCPBTE'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = EntregaExecute
    end
  end
  object gbLista: TGroupBox [4]
    Left = 663
    Top = 52
    Width = 73
    Height = 50
    Caption = 'Lista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object dbcLista: TDBLookupComboBox
      Left = 11
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
      ListSource = DatosNPedidoClientes.DSListaPrecios
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = dbcListaClick
      OnKeyDown = dbcListaKeyDown
    end
  end
  inherited ActionList1: TActionList
    Left = 655
    Top = 193
    object Anular: TAction [9]
      Caption = 'Anular'
      ShortCut = 16449
      OnExecute = AnularExecute
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
    object BuscarCondVenta: TAction
      Caption = 'BuscarCondVenta'
      OnExecute = BuscarCondVentaExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarVendedor: TAction
      Caption = 'BuscarVendedor'
      OnExecute = BuscarVendedorExecute
    end
    object CopiaNP: TAction
      Hint = 'Copia de N.de Pedido con los Faltantes'
      OnExecute = CopiaNPExecute
    end
    object GenerarRto: TAction
      OnExecute = GenerarRtoExecute
    end
    object Anterior: TAction
      Caption = 'Anterior'
      ShortCut = 32833
      OnExecute = AnteriorExecute
    end
    object Entrega: TAction
      Caption = 'Entrega'
      ShortCut = 32837
      OnExecute = EntregaExecute
    end
    object GenerarFc: TAction
      OnExecute = GenerarFcExecute
    end
    object Cumplir: TAction
      OnExecute = CumplirExecute
    end
    object Imprimir: TAction
      OnExecute = ImprimirExecute
    end
    object DatosCabCliente: TAction
      Hint = 'Modificar datos de la Cabecera'
      OnExecute = DatosCabClienteExecute
    end
    object ReCalcular: TAction
      Caption = 'ReCalcular'
      OnExecute = ReCalcularExecute
    end
    object Descumplir: TAction
      Caption = 'Descumplir'
      ShortCut = 32835
      OnExecute = DescumplirExecute
    end
    object VerificaHuerfanas: TAction
      Caption = 'VerificaHuerfanas'
      OnExecute = VerificaHuerfanasExecute
    end
    object BuscarPorReferencia: TAction
      Caption = 'BuscarPorReferencia'
      ShortCut = 32781
      OnExecute = BuscarPorReferenciaExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = DatosNPedidoClientes.CDSNotaPedidoCab
    Left = 576
    Top = 8
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
    Left = 584
    Top = 352
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 96
    Top = 288
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 632
    Top = 344
  end
  inherited ComBuscadorBase: TComBuscador
    Data = DatosNPedidoClientes.CDSBuscaSucursal
    Campo = 'ID'
    Titulo = 'Sucursales'
    Left = 456
    Top = 184
  end
  inherited QBrowse2: TFDQuery
    Left = 40
    Top = 352
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 120
    Top = 376
  end
  object FrCAbecera: TfrxDBDataset
    UserName = 'FrCAbecera'
    CloseDataSource = False
    DataSet = DatosNPedidoClientes.CDSNotaPedidoCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 528
    Top = 504
  end
  object frDetalle: TfrxDBDataset
    UserName = 'frDetalle'
    CloseDataSource = False
    DataSet = DatosNPedidoClientes.CDSNotaPedidoDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 584
    Top = 488
  end
  object frPedido: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39767.368354664350000000
    ReportOptions.LastChange = 39767.368354664350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 496
    Datasets = <>
    Variables = <>
    Style = <>
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
    Left = 464
    Top = 504
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
    Left = 392
    Top = 552
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
    Left = 472
    Top = 552
  end
  object PopupMenu1: TPopupMenu
    TrackButton = tbLeftButton
    Left = 636
    Top = 261
    object GenerarRto1: TMenuItem
      Action = GenerarRto
      Caption = 'Generar Rto'
    end
    object GenerarFactura1: TMenuItem
      Action = GenerarFc
      Caption = 'Generar Factura'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CopiarNdePedido1: TMenuItem
      Action = CopiaNP
      Caption = 'Copiar N.de Pedido'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object DarporCumplida1: TMenuItem
      Action = Cumplir
      Caption = 'Dar por Cumplida'
    end
    object Descumplir1: TMenuItem
      Action = Descumplir
      Caption = 'Sacar de Cumplida'
    end
    object Entrega1: TMenuItem
      Action = Entrega
      Caption = 'Muestra Modo de Entrega'
    end
    object Anterior1: TMenuItem
      Action = Anterior
      Caption = 'Nota de Pedido Anteriror'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object VerificaHuerfanas1: TMenuItem
      Action = VerificaHuerfanas
      Caption = 'Verifica NP huerfanas ( sin Comp. de Entrega)'
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
  end
  object ComBuscadorLdr: TComBuscador
    Data = DatosNPedidoClientes.CDSBuscaLdr
    Campo = 'CODIGO_LDR'
    Titulo = 'Lugar de Recepcion'
    rOk = False
    Left = 100
    Top = 165
  end
  object ComBuscadorDeposito: TComBuscador
    Data = DatosNPedidoClientes.CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 100
    Top = 221
  end
  object ComBuscadorVendedor: TComBuscador
    Data = DatosNPedidoClientes.CDSBuscaVendedor
    Campo = 'CODIGO'
    Titulo = 'Vendedores'
    rOk = False
    Left = 204
    Top = 173
  end
  object ComBuscadorCondVta: TComBuscador
    Data = DatosNPedidoClientes.CDSBuscaCondVenta
    Campo = 'CODIGOPAGO'
    Titulo = 'Condiciones de Vta'
    rOk = False
    Left = 220
    Top = 245
  end
  object ComBuscadorSucursal: TComBuscador
    Data = DatosNPedidoClientes.CDSBuscaSucursal
    Campo = 'Codigo'
    Titulo = 'Sucursales'
    rOk = False
    Left = 308
    Top = 229
  end
end

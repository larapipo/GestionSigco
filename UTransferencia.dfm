inherited FormTransferencias: TFormTransferencias
  Left = 218
  Top = 79
  Caption = 'Transferencias de Stock'
  ClientHeight = 687
  ClientWidth = 921
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 939
  ExplicitHeight = 728
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 921
    Height = 634
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 921
    ExplicitHeight = 634
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 921
      Height = 145
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvNone
      TabOrder = 0
      object DBText1: TDBText
        Left = 488
        Top = 26
        Width = 17
        Height = 17
        DataField = 'LETRATR'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtMuestraComprobante: TDBText
        Left = 344
        Top = 27
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
      object lbEstado: TLabel
        Left = 489
        Top = 49
        Width = 65
        Height = 24
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
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
        Left = 512
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
      object lbTipoComprob: TJvLabel
        Left = 298
        Top = 7
        Width = 104
        Height = 13
        Cursor = crHandPoint
        Hint = 'Pulse aqui para conservar este comprobate como por defecto......'
        Caption = 'Tipo de Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        OnClick = lbTipoComprobClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object RxLabel2: TJvLabel
        Left = 106
        Top = 8
        Width = 43
        Height = 13
        Caption = 'Sucursal'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText2: TDBText
        Left = 426
        Top = 116
        Width = 36
        Height = 19
        DataField = 'MUESTRATIPOFC'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 462
        Top = 116
        Width = 33
        Height = 19
        DataField = 'MUESTRACLASEFC'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 501
        Top = 116
        Width = 111
        Height = 19
        DataField = 'MUESTRAFACTURA'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel1: TJvLabel
        Left = 372
        Top = 116
        Width = 47
        Height = 16
        Caption = 'Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText5: TDBText
        Left = 733
        Top = 7
        Width = 111
        Height = 15
        Alignment = taRightJustify
        DataField = 'ID_TRCAB'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
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
        Left = 512
        Top = 24
        Width = 41
        Height = 21
        TabStop = False
        DataField = 'SUCTR'
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
        Left = 560
        Top = 24
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'NUMEROTR'
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
        Margins.Left = 1
        Margins.Top = 1
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
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'SUCURSAL'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 1
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxCSucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 299
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
      object dbeFecha: TJvDBDateEdit
        Left = 8
        Top = 24
        Width = 87
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
        ButtonWidth = 16
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
      end
    end
    object pnDetalle: TPanel
      Left = 0
      Top = 145
      Width = 921
      Height = 489
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvNone
      TabOrder = 1
      OnEnter = pnDetalleEnter
      DesignSize = (
        921
        489)
      object RxLabel7: TJvLabel
        Left = 17
        Top = 399
        Width = 73
        Height = 13
        Caption = 'Observaciones'
        Anchors = [akLeft, akBottom]
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText7: TDBText
        Left = 16
        Top = 20
        Width = 390
        Height = 21
        DataField = 'COSTO'
        DataSource = DSTranDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbeObs1: TDBEdit
        Left = 16
        Top = 414
        Width = 489
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'OBS1'
        DataSource = DSBase
        TabOrder = 1
      end
      object dbeObs2: TDBEdit
        Left = 16
        Top = 441
        Width = 489
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'OBS2'
        DataSource = DSBase
        TabOrder = 2
      end
      object pcDetalle: TPageControl
        Left = 1
        Top = 1
        Width = 919
        Height = 345
        ActivePage = PagDetalle
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        TabPosition = tpBottom
        OnEnter = pcDetalleEnter
        object PagDetalle: TTabSheet
          Caption = 'Detalle'
          object DBGrillaDetalle: TDBGrid
            Left = 0
            Top = 0
            Width = 911
            Height = 319
            Align = alClient
            Ctl3D = False
            DataSource = DSTranDet
            DrawingStyle = gdsGradient
            FixedColor = clYellow
            GradientEndColor = clYellow
            GradientStartColor = clYellow
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            PopupMenu = PopupMenu2
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = DBGrillaDetalleCellClick
            OnColEnter = DBGrillaDetalleColEnter
            OnDblClick = DBGrillaDetalleDblClick
            OnEditButtonClick = DBGrillaDetalleEditButtonClick
            OnKeyPress = DBGrillaDetalleKeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'Codigo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Title.Caption = 'Detalle'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 377
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIDAD'
                Title.Alignment = taCenter
                Title.Caption = 'Unidad'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CANTIDAD'
                Title.Alignment = taCenter
                Title.Caption = 'Cantidad'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECIO'
                Title.Alignment = taCenter
                Title.Caption = 'Precio'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Color = clInfoBk
                Expanded = False
                FieldName = 'DEPOSITO_ORIGEN'
                Title.Alignment = taCenter
                Title.Caption = 'Orig'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 42
                Visible = True
              end
              item
                Alignment = taCenter
                Color = clInfoBk
                Expanded = False
                FieldName = 'DEPOSITO_DESTINO'
                Title.Alignment = taCenter
                Title.Caption = 'Dsto.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CANTIDAD_UNIDADES'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clBlue
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 60
                Visible = True
              end>
          end
        end
        object pagSeries: TTabSheet
          Caption = 'Nros.de Series'
          ImageIndex = 1
          object Label24: TLabel
            Left = 407
            Top = 152
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
            Left = 495
            Top = 152
            Width = 65
            Height = 17
            Alignment = taRightJustify
            DataField = 'CANTIDAD'
            DataSource = DSTranDet
          end
          object Label25: TLabel
            Left = 576
            Top = 152
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
            Left = 658
            Top = 152
            Width = 85
            Height = 13
            DataSetName = ' '
            DataSource = DSTranSubDetalle
            Style = lsRecordNo
            ShowOptions = doGlyph
            Alignment = taRightJustify
            ShadowPos = spLeftTop
            Transparent = True
          end
          object dbgDetalle: TDBGrid
            Left = 0
            Top = 0
            Width = 401
            Height = 319
            Align = alLeft
            DataSource = DSTranDet
            DefaultDrawing = False
            FixedColor = clHighlight
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = dbgDetalleDrawColumnCell
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'Codigo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Title.Caption = 'Detalle'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindow
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 299
                Visible = True
              end>
          end
          object dbgSeries: TDBGrid
            Left = 408
            Top = 1
            Width = 339
            Height = 143
            Color = clAqua
            DataSource = DSTranSubDetalle
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
      end
      object pnRecibido: TPanel
        Left = 511
        Top = 358
        Width = 281
        Height = 79
        Anchors = [akLeft, akBottom]
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 3
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 58
          Height = 13
          Caption = 'Recepcion'#243
          FocusControl = DBEdit1
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 27
          Width = 257
          Height = 21
          DataField = 'RECIBIDO_POR'
          DataSource = DSBase
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 8
          Top = 52
          Width = 137
          Height = 21
          DataField = 'FECHA_RECECION'
          DataSource = DSBase
          TabOrder = 1
        end
      end
      object pnCostos: TPanel
        Left = 217
        Top = 344
        Width = 288
        Height = 67
        Anchors = [akLeft, akBottom]
        Enabled = False
        TabOrder = 4
        object RxLabel8: TJvLabel
          Left = 10
          Top = 8
          Width = 56
          Height = 13
          Caption = 'Costo Total'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel9: TJvLabel
          Left = 154
          Top = 8
          Width = 60
          Height = 13
          Caption = 'Venta Total '
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbeCostoTotal: TDBEdit
          Left = 10
          Top = 27
          Width = 121
          Height = 21
          DataField = 'COSTO_TOTAL'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object dbeTotal: TDBEdit
          Left = 154
          Top = 27
          Width = 121
          Height = 21
          DataField = 'TOTAL'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object chPrecioConIva: TCheckBox
        Left = 522
        Top = 339
        Width = 176
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Precios Con IVA Incluido'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = chPrecioConIvaClick
      end
      object chFechaRecepcion: TCheckBox
        Left = 581
        Top = 444
        Width = 246
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Aplicar Fecha de Emision en la Recepci'#243'n'
        TabOrder = 6
        OnClick = chPrecioConIvaClick
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 634
    Width = 921
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 634
    ExplicitWidth = 921
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
      Width = 14
      Height = 28
      ExplicitWidth = 14
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Left = 241
      Height = 28
      ExplicitLeft = 241
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Left = 256
      Height = 28
      ExplicitLeft = 256
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Left = 331
      Height = 28
      ExplicitLeft = 331
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Left = 346
      Width = 15
      Height = 28
      ExplicitLeft = 346
      ExplicitWidth = 15
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Left = 361
      Height = 28
      TabOrder = 7
      ExplicitLeft = 361
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 436
      Top = 0
      Width = 16
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TJvArrowButton
      Left = 452
      Top = 0
      Width = 93
      Height = 28
      Action = Imprimir
      DropDown = PopupMenu3
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
    end
    object BitBtn3: TBitBtn
      Left = 545
      Top = 0
      Width = 88
      Height = 28
      Action = RecibeTx
      Caption = 'RecibirTx'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333333333333333FFFFFFFFFFFFF
        FFF3330000000000000000333377777777777777773F30BFBFBFBFBFBFBFBF03
        37F333F333333333337F30FBF0FBFBFBFBFBFB0337F337FF33333333337F30BF
        000FBFBFBFBFBF0337F3777FF3333333337F30F00B00FBFBFBFBFB0337F77377
        FF333333337F30BFBFB00FBFBFBFBF0337F333377FF33333337F30FBFBFB00FB
        FBFBFB0337F333F377333333337F30BFB0BFBFBFBFBFBF0337F337FF33333333
        337F30FB000BFBFBFBFBFB0337F3777FF3333333337F30B00F00BFBFBFBFBF03
        37F77377FF333333337F30FBFBF00BFBFBFBFB0337F333377FF33333337F30BF
        BFBF00BFBFBFBF0337F3333377333333337F30FBFBFBFBFBFBFBFB0337FFFFFF
        F3333333337F30000000BFBFBFBFBF03377777773FFFFFFFFF7330FBFBFB0000
        00000033373FFFFF777777777733330000003333333333333377777733333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      TabOrder = 8
    end
    object BitBtn1: TBitBtn
      Left = 633
      Top = 0
      Width = 111
      Height = 28
      Action = AnulaRechaza
      Caption = 'Anular -Rechazar'
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
    object spRecalc: TSpeedButton
      Left = 744
      Top = 0
      Width = 29
      Height = 28
      Hint = 'Recalcular Costos'
      Action = ReCalcularCosto
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007A7878007A7878007A7878007A7878007A78
        78007A787800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF007A7777007A787800C7C7C800B5B4B300A6A39C00A8A19800B0A7
        A500C0B4B5007A7878007A787800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007A787800DAD9DB00B3B3B100A7A59800CBCAB900B5BACD009BA6D000CFCB
        BC00A8A09200A6969200D0BBBC007A787800FF00FF00FF00FF00FF00FF007A78
        7800DFDDDE005B915C005D955600FBF1DD00FDE5C800AAB5F1005774F500FFED
        D900FFFFFB00C0BFB4009E8D8600D5BBBC007A787800FF00FF00FF00FF007A78
        78007DA87D000C8518000C85180093B46F00F5D6A400F7CC9400F6BF8200F1C4
        8F00FCEDCA00FFFFFD00BEBCB000AA918D007A787800FF00FF007A78780099C0
        9C000C85180052DE7F005EE991000C851800ABCE9000FEF5CC00F9E0B300F2C8
        9700F2CC9900F7DBB100FDFCF1009F938500D5B5B5007A7878005F8A62000C85
        18003DCC610044D16A004DD978004DD477000C851800A9CF9500FDFAD500FFF1
        C400FDD09A00F3BB8000FFEACD00C8C2B600BFA29D007A7878000C8518000C85
        1800158D21003ACA5C003CC65F000C8518000C8518000C85180085867D00B2B5
        9C00B09E7F00CEA17200AAB5F100A6AFCC00B1968F007A7878007A787800DFDA
        D6000C8518002FBD4C0032BC4F000C851800FDFDD800A5A596002E3032003839
        37002E303200B9976D005774F5008092CB00B89D93007A7878007A787800E6E5
        E5000C85180028B641002ABA450074B27700FFFFEC00F7F7D700C5C5AF002E30
        3200BBB59B00FFDFA900FFE7BE00CDCBB300C4A5A5007A7878007A787800E8E7
        E900B1B79E000C85180028BC41000C851800BED9BF00FFFFF300FFFFEA00DADA
        C3002E3032009E8C7400FDFADC00AAA39500D5B5B7007A787800FF00FF007A78
        7800DCD9D70087A976000C85180028BA41000C8518007BB77E00B3D4B100C2DD
        C100B8CAA600A4A49700CDCEB800B5A09E007A787800FF00FF00FF00FF007A78
        7700DDDEDF00CCC8C40091B17F000C8518000C8518000C8518000C8518000C85
        180098C59500DEDFC500B0A39E00D6BCBC007A787800FF00FF00FF00FF00FF00
        FF007A787800D7D7D900D1CDCB00CFC6B800E7DDCE00DFE3E000CEDEE400E7E4
        D700C5C2B500BFB0AE00CFBABA007A787800FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF007A7878007A787800C8C9CA00C6C4C200C5C0BA00C6BFB700C2BA
        B700C3B8B9007A7878007A787800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007B7979007A7878007A7878007A7878007A78
        78007B797900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object spEnviar: TSpeedButton
      Left = 773
      Top = 0
      Width = 29
      Height = 28
      Action = EnviarTx
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0004490600055B0900066C0C00066C0C00055E
        0A00044C0600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0005600900056009000891130009B0180009B31A0009B3190009B1
        19000796140005680C0005680C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000A6A15000A7F15000BB61C0009B91A0008B4180007B2160009B3190009B4
        190009B81A0009B91A0007831000044D0600FF00FF00FF00FF00FF00FF000B6A
        15000F85220016BD340011B727000BB21C0007B1160008B1170009B2190009B2
        190009B2190009B4190009BA1A000784100006670C00FF00FF00FF00FF000B6A
        150020BE49001BBD400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE
        6D0009B2190009B2190009B3190009BA1A0006670C00FF00FF00087210001B9A
        3A002AC65B001DBB45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FD
        F8005ACB650009B2190009B2190009B81A0008941300045D0900087210002AB6
        5B002CC5650022BD4D000FB422000AB21A000CB31C000AB219008DDB9500FDFE
        FD00F6FCF70058CB630009B2190009B51A0008AB1700045D09000F821C0037C2
        6C0033C76C00CDF1DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FD
        F900FFFFFF00F2FBF3006FD2790008B4190009B3190005650B00138D230058CC
        830042C97700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFE
        FD00FFFFFF00FFFFFF00BCEAC1000AB41A0009B31900066D0D000F911D006FD2
        93005FD38D006DD4950072D6990071D6980072D6990064D28C0092DFA800FBFE
        FB00FFFFFF00ACE5B8002EBF4C0011B82B0008B1190005610A000F911D0067CC
        83009BE5BA0038C6700030C3690038C56F0038C56F0070D69700E8F8EE00FFFF
        FF009FE2B10020BD48001AB93E0010BA290008A3170005610A00FF00FF0025AE
        3900BCEDD20082DBA40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2
        B20022BC4B001DBA410018B7360014C030000A851700FF00FF00FF00FF0025AE
        390071D28C00D2F4E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2
        630024BE560023BC4D001FC1460016AE34000A851700FF00FF00FF00FF00FF00
        FF0025AE390084D89F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA
        7B0048CB780039CB6A0021B649000F7C1F00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0025AE390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2
        B30064D492002FB157002FB15700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0032B74E0025AE390025AE390025AE390025AE
        390024A34200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object spLeerTx: TSpeedButton
      Left = 802
      Top = 0
      Width = 29
      Height = 28
      Action = LeerTx
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006B2A0000682800005C230000521F00004E1E00004E1F00004E1F00004E1F
        00004E1F00004F1F00004F1F000040180000FF00FF00FF00FF00FF00FF00963A
        0000BC4A0000B5460000AA420000A13F00009A3D0000983C0000993C0000993C
        0000993C0000993C00009F3F00007D31000040180000FF00FF00FF00FF00B748
        0000E2580000D3520000CA4F0000C24C0000B8480000B0450000AD440000AC43
        0000AD430000AD430000B44600009F3F00004F1F0000FF00FF00FF00FF00C44D
        0000E75B0000D9560000D1530000C94E0000CE732800CF824000CA804100C173
        3200B1551000A7410000AD430000993C00004F1F0000FF00FF00FF00FF00CA4F
        0000F3680700E9600400DE5A0100D4530000EAB78800FEFEFE00FEFEFE00FEFE
        FE00FEFEFE00C47A3D00AD430000993C00004E1F0000FF00FF00FF00FF00CA4F
        0000F67A1C00F06B0C00EB620400E1590000D8580200D35C0900CB5C0B00C55B
        0E00DDA67400FEFEFE00AD430000993C00004E1F0000FF00FF00FF00FF00CA4F
        0000F7913C00F0751600EF670700ED620200F4BB8700DC560000D4530000CB4F
        0000C5570900FEFEFE00B64700009D3D00004F1F0000FF00FF00FF00FF00CA4F
        0000F79F5400F07B1F00EF6A0A00F7BA8100FEFEFE00E95B0000DE570000D453
        0000DE884100FEFEFE00C14B0000A541000058230000FF00FF00FF00FF00CA4F
        0000F8A76000F2812800FAD0A900FEFEFE00FEFEFE00FBE6D100FAD8B700F7D7
        B700FEFEFE00E9AB7300CE500000B145000068280000FF00FF00FF00FF00CA4F
        0000F8AD6B00F3883200FACCA400FEFEFE00FEFEFE00FAD4B200F7BB8400F7BA
        8200EE8E3E00DD560000DA550000BF4A0000772E0000FF00FF00FF00FF00CA4F
        0000FAB77B00F4964600F27F2400F8BF8A00FEFEFE00EF6C0D00EF6A0A00EF64
        0400EE5E0000E95B0000E55A0000CB4F000087350000FF00FF00FF00FF00CA4F
        0000FABA8000F7B47700F6A45C00F49A4E00F8C59500F2842C00F07A1E00EF6A
        0A00EE620300EF5E0000F25E0000D9550000963A0000FF00FF00FF00FF00CB4F
        0000FAA65D00FABB8200FABD8700FAB77B00F8AC6900F79D4F00F6872D00F474
        1300F3660400F3600000FA620000E3590000A1400000FF00FF00FF00FF00FF00
        FF00CF5C0A00D46C1C00D46E1E00D46E1E00D36A1800D1651300CF5C0A00CC55
        0400CB510100CA500000CB500000BA480000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btFechas: TJvArrowButton
      Left = 831
      Top = 0
      Width = 37
      Height = 28
      Hint = 'Cambio de Fechas'
      ArrowWidth = 10
      DropDown = PopupMenu1
      DropOnButtonClick = True
      Flat = True
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8936157D3213
        7B31137B31137B31137B31137B31137B31137B31137B31137B31137B31137B31
        137E33138A3715FF00FF963511FEF0E2FEEBD7FEE6CBFEE1C1FEDCB7FED8B0FE
        D4A9FED3A5FED3A5FED3A5FED3A5FED3A5FED3A5783012FF00FF963511FEF6EE
        2D56F82D56F82D56F8FEE2C58B28038B28038B2803FED3A50182BF0182BF0182
        BFFED3A5762F12FF00FF963511FEFBF72D56F82D56F82D56F8FEE9D18B28038B
        28038B2803FED7AC0182BF0182BF0182BFFED3A5762F12FF00FF963511FEFEFE
        2D56F82D56F82D56F8FEEFE08B28038B28038B2803FEDAB60182BF0182BF0182
        BFFED3A5762F12FF00FF963511FEFEFEFEFEFEFEFCFBFEFAF4FEF4EBFEF0E1FE
        EBD8FEE6CBFEE1C2FEDCB8FED8AFFED4A9FED3A5762F12FF00FF963511FEFEFE
        BD8281BD8281BD8281FEFBF7D96401D96401D96401FEE7CF0082010082010082
        01FED5AB762F12FF00FF963511FEFEFEBD8281BD8281BD8281FEFEFED96401D9
        6401D96401FEEEDD008201008201008201FED9B4762F12FF00FF963511FEFEFE
        BD8281BD8281BD8281FEFEFED96401D96401D96401FEF4E90082010082010082
        01FEE0BF752E11FF00FF963511DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
        DCDCDCDCDCDCDCDCDCD9D8DCD7D1DCD4CADCCFC17B3416FF00FF994115994611
        9844109844109844109844109844109844109844119A47139946119A47139745
        13954616762F12FF00FF994115E97F1EE97F1EE97F1EE97F1EE97F1EE97F1EE9
        7F1EE97F1EE97F1EE97F1EE97F1EE97F1EE97F1EA6420CFF00FFFF00FFBC580C
        BD580CBD580CBD580CBD580CBD580CBD580CBD590CBF5A0DBD580BBF5A0DBB57
        0CB8570FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object spGenerarRto: TSpeedButton
      Left = 868
      Top = 0
      Width = 23
      Height = 28
      Hint = 'Generar Remito'
      Action = GenerarRto
    end
    object SpeedButton1: TSpeedButton
      Left = 891
      Top = 0
      Width = 23
      Height = 28
      Action = Pikeo
    end
  end
  inherited Panel1: TPanel
    Top = 664
    Width = 921
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 664
    ExplicitWidth = 921
    inherited sbEstado: TStatusBar
      Width = 832
      Panels = <
        item
          Width = 500
        end
        item
          Width = 50
        end>
      OnClick = sbEstadoClick
      OnDblClick = sbEstadoDblClick
      OnMouseMove = sbEstadoMouseMove
      ExplicitWidth = 832
    end
  end
  object gbLista: TGroupBox [3]
    Left = 733
    Top = 88
    Width = 73
    Height = 50
    Caption = 'Lista'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object dbcLista: TDBLookupComboBox
      Left = 9
      Top = 17
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
      ListSource = DSListaPrecios
      ParentFont = False
      TabOrder = 0
      OnClick = dbcListaClick
      OnKeyDown = dbcListaKeyDown
    end
  end
  inherited ActionList1: TActionList
    Left = 408
    Top = 48
    inherited Borrar: TAction
      ShortCut = 16430
      Visible = False
    end
    inherited Modificar: TAction
      Visible = False
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      ImageIndex = 5
      OnExecute = ImprimirExecute
    end
    object BuscarSerie: TAction
      Caption = 'BuscarSerie'
      OnExecute = BuscarSerieExecute
    end
    object RecibeTx: TAction
      Caption = 'RecibirTx'
      ShortCut = 16466
      OnExecute = RecibeTxExecute
    end
    object AnulaRechaza: TAction
      Caption = 'Anular -Rechazar'
      OnExecute = AnulaRechazaExecute
    end
    object Recalcular: TAction
      Caption = 'Recalcular'
      ShortCut = 16466
      OnExecute = RecalcularExecute
    end
    object ReCalcularCosto: TAction
      ImageIndex = 10
      ShortCut = 16466
      OnExecute = ReCalcularCostoExecute
    end
    object EnviarTx: TAction
      Hint = 'Generar archivo de Transferencia XML'
      ImageIndex = 8
      ShortCut = 16453
      OnExecute = EnviarTxExecute
    end
    object LeerTx: TAction
      Hint = 'Importar Archivo desde XML'
      ImageIndex = 12
      OnExecute = LeerTxExecute
    end
    object CambiarFecha: TAction
      Caption = 'Cambiar Fecha Emisi'#243'n'
      OnExecute = CambiarFechaExecute
    end
    object CambiarFechaRecp: TAction
      Caption = 'Cambiar Fecha de Recepci'#243'n'
      OnExecute = CambiarFechaRecpExecute
    end
    object CambiarNro: TAction
      Caption = 'Cambiar Nro'
      OnExecute = CambiarNroExecute
    end
    object GenerarRto: TAction
      ImageIndex = 11
      OnExecute = GenerarRtoExecute
    end
    object CambiaListaPrecio: TAction
      Caption = 'Cambia Lista de Precio'
      OnExecute = CambiaListaPrecioExecute
    end
    object BusquedaPorReferencia: TAction
      Caption = 'BusquedaPorReferencia'
      ShortCut = 32781
      OnExecute = BusquedaPorReferenciaExecute
    end
    object Pikeo: TAction
      ImageIndex = 12
      OnExecute = PikeoExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSTranCab
    Left = 656
    Top = 8
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010E005001040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000404000000020000000200000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B2A00006828
      00005C230000521F00004E1E00004E1F00004E1F00004E1F00004E1F00004F1F
      00004F1F00004018000000000000000000000000000000000000000000000000
      0000000000000000000000404000004060000000200000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000963A0000BC4A0000B546
      0000AA420000A13F00009A3D0000983C0000993C0000993C0000993C0000993C
      00009F3F00007D31000040180000000000000000000000000000000000000000
      0000000000000000000000404000004060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B7480000E2580000D352
      0000CA4F0000C24C0000B8480000B0450000AD440000AC430000AD430000AD43
      0000B44600009F3F00004F1F0000000000000000000000000000000000000000
      0000000000000000000000404000004060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C44D0000E75B0000D956
      0000D1530000C94E0000CE732800CF824000CA804100C1733200B1551000A741
      0000AD430000993C00004F1F0000000000000000000000000000000000000000
      0000000000000000000000404000004060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000F3680700E960
      0400DE5A0100D4530000EAB78800FEFEFE00FEFEFE00FEFEFE00FEFEFE00C47A
      3D00AD430000993C00004E1F0000000000000000000000000000000000000000
      0000000000000020200000608000004060000020400000002000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000F67A1C00F06B
      0C00EB620400E1590000D8580200D35C0900CB5C0B00C55B0E00DDA67400FEFE
      FE00AD430000993C00004E1F0000000000000000000000000000000000000000
      0000002020000020600000404000004060000000000000406000000020000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000F7913C00F075
      1600EF670700ED620200F4BB8700DC560000D4530000CB4F0000C5570900FEFE
      FE00B64700009D3D00004F1F0000000000000000000000000000000000000020
      2000002060000000000000002000002040000020000000000000002040000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000F79F5400F07B
      1F00EF6A0A00F7BA8100FEFEFE00E95B0000DE570000D4530000DE884100FEFE
      FE00C14B0000A541000058230000000000000000000000000000000000000020
      4000003F000000400000009F00000080000000800000007F0000004000000040
      0000000000000020000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000F8A76000F281
      2800FAD0A900FEFEFE00FEFEFE00FBE6D100FAD8B700F7D7B700FEFEFE00E9AB
      7300CE500000B14500006828000000000000000000000040000000BF0000009F
      0000009F0000009F000000BF0000009F0000009F000000BF0000009F0000005F
      0000004000000040000000200000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000F8AD6B00F388
      3200FACCA400FEFEFE00FEFEFE00FAD4B200F7BB8400F7BA8200EE8E3E00DD56
      0000DA550000BF4A0000772E00000000000000400000009F0000009F0000009F
      000000BF0000009F000000BF0000009F000000BF000000800000009F00000080
      0000009F0000007F000000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FAB77B00F496
      4600F27F2400F8BF8A00FEFEFE00EF6C0D00EF6A0A00EF640400EE5E0000E95B
      0000E55A0000CB4F000087350000000000003F9F3F003FBF3F0000800000009F
      0000009F0000009F000000800000009F0000009F0000009F0000009F0000009F
      000000BF0000009F000000600000002000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA4F0000FABA8000F7B4
      7700F6A45C00F49A4E00F8C59500F2842C00F07A1E00EF6A0A00EE620300EF5E
      0000F25E0000D9550000963A000000000000009F000000DF3F0000800000009F
      0000009F0000009F0000009F000000BF00000080000000BF0000009F0000009F
      0000009F0000009F000000800000007F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB4F0000FAA65D00FABB
      8200FABD8700FAB77B00F8AC6900F79D4F00F6872D00F4741300F3660400F360
      0000FA620000E3590000A140000000000000002000007FBF7F0000BF3F000080
      00003FBF3F0000800000009F000000BF0000009F0000009F000000BF0000009F
      000000800000009F0000009F0000002000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CF5C0A00D46C
      1C00D46E1E00D46E1E00D36A1800D1651300CF5C0A00CC550400CB510100CA50
      0000CB500000BA480000000000000000000000000000002000003FBF3F003FBF
      3F0000BF3F0000BF3F00009F3F0000800000009F0000009F000000BF000000BF
      0000009F00000060000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000020
      0000004000003F9F3F003F9F3F00009F00003F9F3F0000800000008000000040
      0000005F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007A7878007A7878007A7878007A7878007A7878007A7878000000
      00000000000000000000000000000000000000000000078DBE00078DBE00078D
      BE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078D
      BE00078DBE00078DBE0000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000007A77
      77007A787800C7C7C800B5B4B300A6A39C00A8A19800B0A7A500C0B4B5007A78
      78007A787800000000000000000000000000B8898900B8898900B8898900B889
      8900B8898900B8898900B889890065CDF90065CDF80065CDF90065CDF80066CE
      F90039ADD800078DBE00000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A0000000000000000007A787800DAD9
      DB00B3B3B100A7A59800CBCAB900B5BACD009BA6D000CFCBBC00A8A09200A696
      9200D0BBBC007A7878000000000000000000B8898900FEFDFB00FEFDFB00FEFD
      FB00FEFDFB00FEFDFB004D8743000C8518000C8518000C85180051BDB6006ED4
      F9003EB1D90084D7EB00078DBE0000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A0000000000000000007A787800DFDDDE005B91
      5C005D955600FBF1DD00FDE5C800AAB5F1005774F500FFEDD900FFFFFB00C0BF
      B4009E8D8600D5BBBC007A78780000000000B8898900FEF9F400FEF9F400FEF9
      F400FEF9F400FEF9F400B889890067CED6000C851800139825000C8518004BB7
      9A0042B4D400AEF1F900078DBE0000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A0076737300000000007A7878007DA87D000C85
      18000C85180093B46F00F5D6A400F7CC9400F6BF8200F1C48F00FCEDCA00FFFF
      FD00BEBCB000AA918D007A78780000000000B8898900FEF6ED00FEF6ED00FEF6
      ED00FEF6ED00FEF6ED00B889890083E4FC0084E4FC000C85180026B73F000C85
      180036A8A100B3F4F900078DBE0000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373007A78780099C09C000C85180052DE
      7F005EE991000C851800ABCE9000FEF5CC00F9E0B300F2C89700F2CC9900F7DB
      B100FDFCF1009F938500D5B5B5007A787800B8898900FFF2E700FFF2E700FFF2
      E700FAE8DE00FAE8DE00B88989008DEBFD008DEBFD005DC0A7000C85180037C4
      58000C851800ACF0EB006DCAE000078DBE00087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969005F8A62000C8518003DCC610044D1
      6A004DD978004DD477000C851800A9CF9500FDFAD500FFF1C400FDD09A00F3BB
      8000FFEACD00C8C2B600BFA29D007A787800B8898900FFEFE000FFEFE000FFEF
      E000D09F9E00D0A09E00C5939300ACE4DA009FDBCA0082AB81000C8518004EDB
      78000C85180098BA9900A3BFAC00078DBE000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000C8518000C851800158D21003ACA
      5C003CC65F000C8518000C8518000C85180085867D00B2B59C00B09E7F00CEA1
      7200AAB5F100A6AFCC00B1968F007A787800B8898900FFEBD900FFEBD900F3D7
      C900D5ABA800D1C8C200CD999900078780000C8518000C85180047D06E0059E3
      880042C667000C8518000C851800078DBE00138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000007A787800DFDAD6000C8518002FBD
      4C0032BC4F000C851800FDFDD800A5A596002E303200383937002E303200B997
      6D005774F5008092CB00B89D93007A787800B8898900FFE8D200FFE8D200F3D4
      C400D9AEAC00CD9999009AF6FE009BF5FE0063C5A4000C8518005DE88E0063EE
      98004CD075000C851800F0F1E700B88989000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000007A787800E6E5E5000C85180028B6
      41002ABA450074B27700FFFFEC00F7F7D700C5C5AF002E303200BBB59B00FFDF
      A900FFE7BE00CDCBB300C4A5A5007A787800B8898900B8898900B8898900B889
      8900CD999900A1FAFE00A1FBFE00A0FAFE00A1FBFE00737E57000C85180046CB
      6E000C851800EFEDDF00FEF6ED00B88989000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000007A787800E8E7E900B1B79E000C85
      180028BC41000C851800BED9BF00FFFFF300FFFFEA00DADAC3002E3032009E8C
      7400FDFADC00AAA39500D5B5B7007A78780000000000078DBE00FEFEFE00A5FE
      FF00A5FEFF00A5FEFF00078DBE00078DBE00078DBE00B889890084B47B000C85
      1800EDE8D700FAE8DE00FAE8DE00B88989000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      000000000000000000000000000000000000000000007A787800DCD9D70087A9
      76000C85180028BA41000C8518007BB77E00B3D4B100C2DDC100B8CAA600A4A4
      9700CDCEB800B5A09E007A787800000000000000000000000000078DBE00078D
      BE00078DBE00078DBE00000000000000000000000000B8898900FFEFE000FFEF
      E000FFEFE000D09F9E00D0A09E00C59393000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      000000000000000000000000000000000000000000007A787700DDDEDF00CCC8
      C40091B17F000C8518000C8518000C8518000C8518000C85180098C59500DEDF
      C500B0A39E00D6BCBC007A787800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8898900FFEBD900FFEB
      D900F3D7C900D5ABA800D1C8C200CD999900000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      00000000000000000000000000000000000000000000000000007A787800D7D7
      D900D1CDCB00CFC6B800E7DDCE00DFE3E000CEDEE400E7E4D700C5C2B500BFB0
      AE00CFBABA007A78780000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8898900FFE8D200FFE8
      D200F3D4C400D9AEAC00CD9999000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007A78
      78007A787800C8C9CA00C6C4C200C5C0BA00C6BFB700C2BAB700C3B8B9007A78
      78007A7878000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8898900B8898900B889
      8900B8898900CD99990000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7979007A7878007A7878007A7878007A7878007B7979000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFF83F00000000C003FC7F00000000
      8001FC7F000000008001FC7F000000008001FC3F000000008001F81F00000000
      8001F00F000000008001E007000000008001C001000000008001800000000000
      8001000000000000800100000000000080010000000000008001000000000000
      C003800300000000FFFFE00700000000F81FF33FF81F8003E007E007E0070003
      C003C000C0030001800180018001000180010000800100010000000000000000
      000000000000000000008000000000000000E001000000000000F00300000000
      0000F01F000080008001E03F8001C3808001E03F8001FF80C003C03FC003FF81
      E007C07FE007FF83F81FF8FFF81FFFFFFFFFF81FF81FF81FC007E007E007E007
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
    Left = 472
    Top = 200
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 8
    Top = 352
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 376
    Top = 344
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 400
    Top = 160
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 112
    Top = 328
  end
  inherited ImageListDos: TImageList
    Bitmap = {
      494C01010D001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00D7D7D4007C76
      7100D4D2D200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00E3E2E1006660
      5A00635C5600B7B3B100DFDEDD00B8B6B300B8B5B200E3E2E100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C5
      C100635C5500635C5500635C5500635C5500635C5500635C5500ABA7A300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9D8D500B5B1AE00D9D8D500FFFF
      FF0097918D00635C5500A7A4A000FFFFFF00FFFFFF00A7A4A000635C5500BDB9
      B600FFFFFF00D9D8D500B5B1AE00D9D8D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0ADA900645D5600B0ADA900FFFF
      FF007D7670008D868200FFFFFF00FFFFFF00FFFFFF00FFFFFF008A8581007B75
      6F00FFFFFF00B0ADA900645D5600B0ADA9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0ADA900645D5600B0ADA900FFFF
      FF00655F5900B0ADA900FFFFFF00FFFFFF00FFFFFF00FFFFFF00ACA9A5006660
      5900FFFFFF00AFACA800645D5600B0ADA9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0ADA900645D5600B0ADA900FFFF
      FF0078746E008F8A8500FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8783007973
      6D00FFFFFF00ACA9A600635C5500B0ADA9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0ADA900645D5600B0ADA900FFFF
      FF00BFBDB900645D5600AEAAA700FFFFFF00FFFFFF00ADA8A500635C5500B7B4
      B100FFFFFF00ACA9A500635C5500AFACA8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0ADA900645D5600B0ADA900B7B4
      B100E7E6E500A8A4A100625B5500625B5500625B5500625B5500A8A4A000E7E7
      E700B8B5B200ACA9A500635C5500ACA9A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0ADA900645D5600B0ADA900B0AD
      A900B0ACA900FFFFFF00E1E0DF00B7B5B100B8B6B200E2E0DF00FFFFFF007771
      6900ACA9A600ACA9A500635C5500ACA9A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0ADA900645D5600B0ADA900B0AD
      A900B0ADA900B0ACA900BDBAB800D4D2D000A9A6A10087817C00FFFFFF00645D
      5600AFACA800ACA9A600635C5500ACA9A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0ADA900645D5600B0ADA900B0AD
      A900B0ADA900B0ADA900B0ADA900B0ADA900645D5600645D5600FFFFFF00645D
      5600B0ADA900AFACA800635C5500ACA9A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AFACA800645D5600B0ADA900B0AD
      A900B0ADA900B0ADA900B0ADA900B0ADA900645D5600645D5600FFFFFF00645D
      5600B0ADA900B0ADA900635C5500ACA9A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACA9A600635C5500B0ADA900B0AD
      A900B0ADA900B0ADA900B0ADA900B0ADA900645D5600645D5600FFFFFF00645D
      5600B0ADA900B0ADA900645D5600AFACA8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000658550DB759A
      5DFD648550DA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FFA59482FFD7CFBDFF8CA874FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C80000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FFA59482FFD7CFBDFF8CA874FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C8000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFFA0BB90FF82A5
      6DFF769C5EFF769C5EFF769C5EFF0000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFFFFFF
      FFFF769C5EFF769C5EFF769C5EFF000000000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46BFF769C5EFF769C5EFF658550DB00000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFFFFFF
      FFFF769C5EFF769C5EFF769C5EFF658550DB0000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFBACDAEFF8EAD7AFFBBCE
      AFFFE6EDE1FF80A36AFF769C5EFF72975BF800000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF769C5EFF72975BF80000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFF769C
      5EFFBBCEAFFFE4ECDFFF7EA267FF658550DB00000000000000009C8B78FFFFFF
      FFFFFFFFFFFF4343C7FFFFFFFFFF7B9A61FF769C5EFF769C5EFF769C5EFFFFFF
      FFFF769C5EFF769C5EFF769C5EFF658550DB0000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFFA2BB91FF789D60FF0000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFFFFFF
      FFFF769C5EFF769C5EFF769C5EFF000000000000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C80000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFF4343C7FFFFFFFFFF9A8C77FF7E9863FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C800000000000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF00000000000000000000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFF4343C7FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFF
      FFFFFFFFFFFFC1B5A3FF00000000000000000000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF00000000000000000000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF00000000000000000000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C7000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C700000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D100000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D10000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C80000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF7E7263CA0000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF7E7263CA0000
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
      00000000000000000000000000000000FFEFFFFFFFC7FFC7FFCFF3FFC001C001
      FF8FF1FFC001C001FF0FF0FFC000C000FE0FF07FC000C000FC0FF03FC000C000
      F80FF01FC001C001F00FF00FC001C001E00FF00FC003C003F00FF01FC003C003
      F80FF03FC003C003FC0FF07FC003C003FE0FF0FFC003C003FF0FF1FFC007C007
      FF8FF3FFC00FC00FFFCFF7FFC01FC01FFFFFE007FFFF3FFFF83FE00780011FFF
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
  object DSPTranCab: TDataSetProvider
    DataSet = QTranCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 482
  end
  object DSPTranDet: TDataSetProvider
    DataSet = QTranDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 164
    Top = 536
  end
  object DSTranDet: TDataSource
    DataSet = CDSTranDet
    Left = 56
    Top = 608
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = [poAllowCommandText]
    Left = 442
    Top = 534
  end
  object ibgTranCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_TRAN_CAB'
    SystemGenerators = False
    Left = 320
    Top = 466
  end
  object ibgTranDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_TRAN_DET'
    SystemGenerators = False
    Left = 312
    Top = 544
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 464
    Top = 414
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 124
    Top = 156
  end
  object frTransferencia: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.352382627320000000
    ReportOptions.LastChange = 39638.352382627320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 777
    Top = 273
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBTranCab: TfrxDBDataset
    UserName = 'frDBTranCab'
    CloseDataSource = False
    OpenDataSource = False
    DataSource = DSBase
    BCDToCurrency = False
    DataSetOptions = []
    Left = 537
    Top = 193
    FieldDefs = <
      item
        FieldName = 'ID_TRCAB'
        FieldAlias = 'ID_TRCAB'
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
        FieldName = 'LETRATR'
        FieldAlias = 'LETRATR'
      end
      item
        FieldName = 'SUCTR'
        FieldAlias = 'SUCTR'
      end
      item
        FieldName = 'NUMEROTR'
        FieldAlias = 'NUMEROTR'
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
        FieldName = 'MUESTRACOMPROBANTE'
        FieldAlias = 'MUESTRACOMPROBANTE'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
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
        FieldName = 'OBS2'
        FieldAlias = 'OBS2'
      end
      item
        FieldName = 'ID_TIPOCOMPROBANTE'
        FieldAlias = 'ID_TIPOCOMPROBANTE'
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
        FieldName = 'RECIBIDO_POR'
        FieldAlias = 'RECIBIDO_POR'
      end
      item
        FieldName = 'LISTAPRECIO'
        FieldAlias = 'LISTAPRECIO'
      end
      item
        FieldName = 'NOTA_TX_ID'
        FieldAlias = 'NOTA_TX_ID'
      end
      item
        FieldName = 'NOTA_TX_NUMERO'
        FieldAlias = 'NOTA_TX_NUMERO'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'COSTO_TOTAL'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
      end
      item
        FieldName = 'FECHA_RECECION'
        FieldAlias = 'FECHA_RECECION'
      end
      item
        FieldName = 'ID_FACTURA_FRANQUICIA'
        FieldAlias = 'ID_FACTURA_FRANQUICIA'
      end
      item
        FieldName = 'MUESTRAFACTURA'
        FieldAlias = 'MUESTRAFACTURA'
      end
      item
        FieldName = 'MUESTRATIPOFC'
        FieldAlias = 'MUESTRATIPOFC'
      end
      item
        FieldName = 'MUESTRACLASEFC'
        FieldAlias = 'MUESTRACLASEFC'
      end
      item
        FieldName = 'MUESTRASUCDESTINO'
        FieldAlias = 'MUESTRASUCDESTINO'
      end
      item
        FieldName = 'ID_RTO'
        FieldAlias = 'ID_RTO'
      end>
  end
  object frDBTranDet: TfrxDBDataset
    UserName = 'frDBTranDet'
    CloseDataSource = False
    OpenDataSource = False
    DataSource = DSTranDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 537
    Top = 249
    FieldDefs = <
      item
        FieldName = 'ID_TRANDET'
        FieldAlias = 'ID_TRANDET'
      end
      item
        FieldName = 'ID_TRANCAB'
        FieldAlias = 'ID_TRANCAB'
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
        FieldName = 'DEPOSITO_ORIGEN'
        FieldAlias = 'DEPOSITO_ORIGEN'
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
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
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
        FieldName = 'AFECTA_STOCK'
        FieldAlias = 'AFECTA_STOCK'
      end
      item
        FieldName = 'CON_NRO_SERIE'
        FieldAlias = 'CON_NRO_SERIE'
      end
      item
        FieldName = 'ESTADO'
        FieldAlias = 'ESTADO'
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
        FieldName = 'PRECIO_TOTAL'
        FieldAlias = 'PRECIO_TOTAL'
      end
      item
        FieldName = 'COSTO'
        FieldAlias = 'COSTO'
      end
      item
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'COSTO_TOTAL'
      end
      item
        FieldName = 'PRECIO'
        FieldAlias = 'PRECIO'
      end
      item
        FieldName = 'CANTIDAD_UNIDADES'
        FieldAlias = 'CANTIDAD_UNIDADES'
      end
      item
        FieldName = 'PRESENTACION_CANT'
        FieldAlias = 'PRESENTACION_CANT'
      end
      item
        FieldName = 'MUESTRACODALTERNATIVO'
        FieldAlias = 'MUESTRACODALTERNATIVO'
      end
      item
        FieldName = 'MUESTRARUBRO'
        FieldAlias = 'MUESTRARUBRO'
      end
      item
        FieldName = 'MUESTRASUBRUB'
        FieldAlias = 'MUESTRASUBRUB'
      end>
  end
  object frDBEmpresa: TfrxDBDataset
    UserName = 'frDBEmpresa'
    CloseDataSource = True
    DataSet = DMMain_FD.QEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 625
    Top = 193
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
        FieldName = 'FECHA_INICIO_ACTI'
        FieldAlias = 'FECHA_INICIO_ACTI'
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
        FieldName = 'CBU'
        FieldAlias = 'CBU'
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
  object DSPTranSubDet: TDataSetProvider
    DataSet = QTranSubDetalle
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 592
  end
  object CDSTranSubDetalle: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DETTRA'
    MasterFields = 'ID_TRANDET'
    MasterSource = DSTranDet
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTranSubDet'
    BeforeInsert = CDSTranSubDetalleBeforeInsert
    BeforePost = CDSTranSubDetalleBeforePost
    AfterPost = CDSTranSubDetalleAfterPost
    BeforeDelete = CDSTranSubDetalleBeforeDelete
    OnNewRecord = CDSTranSubDetalleNewRecord
    Left = 88
    Top = 568
    object CDSTranSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSTranSubDetalleID_DETTRA: TIntegerField
      FieldName = 'ID_DETTRA'
    end
    object CDSTranSubDetalleID_CABTRA: TIntegerField
      FieldName = 'ID_CABTRA'
    end
    object CDSTranSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSTranSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSTranSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSTranSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSTranSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      OnSetText = CDSTranSubDetalleSERIESetText
      Size = 50
    end
    object CDSTranSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSTranSubDetalleDEPOSITOORIGEN: TIntegerField
      FieldName = 'DEPOSITOORIGEN'
    end
    object CDSTranSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
  end
  object DSTranSubDetalle: TDataSource
    DataSet = CDSTranSubDetalle
    Left = 32
    Top = 560
  end
  object IBGTranSubDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_TRANSUBDET'
    SystemGenerators = False
    Left = 320
    Top = 592
  end
  object frDBTranSubDetalle: TfrxDBDataset
    UserName = 'frDBTranSubDetalle'
    CloseDataSource = False
    OpenDataSource = False
    DataSource = DSTranSubDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 616
    Top = 248
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_DETTRA'
        FieldAlias = 'ID_DETTRA'
      end
      item
        FieldName = 'ID_CABTRA'
        FieldAlias = 'ID_CABTRA'
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
        FieldName = 'DEPOSITOORIGEN'
        FieldAlias = 'DEPOSITOORIGEN'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end>
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
    Left = 704
    Top = 337
  end
  object DSListaPrecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 824
    Top = 520
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
    Left = 832
    Top = 352
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 528
    Top = 600
    object CDSBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaDepositoID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Required = True
    end
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 448
    Top = 624
  end
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDeposito'
    Left = 208
    Top = 200
    object CDSDepositoID: TIntegerField
      FieldName = 'ID'
    end
    object CDSDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
  end
  object CDSExistencia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    ProviderName = 'DSPExistencia'
    Left = 680
    Top = 80
    object CDSExistenciaCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object CDSExistenciaDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSExistenciaFISICO: TFloatField
      FieldName = 'FISICO'
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      FieldName = 'COMPROMETIDO'
    end
    object CDSExistenciaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      FieldName = 'EN_TRANSITO'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Size = 25
    end
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Options = []
    Left = 616
    Top = 72
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 448
    Top = 584
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 528
    Top = 568
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id '
      'and sucursal=:suc '
      'and compra_venta='#39'V'#39' '
      'and tipo_comprob='#39'TX'#39)
    Left = 216
    Top = 256
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Origin = 'DBMAIN.COMPROBANTES.ID_COMPROBANTE'
    end
    object QComprobTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.CLASE_COMPROB'
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
      Origin = 'DBMAIN.COMPROBANTES.SUCURSAL'
    end
    object QComprobLETRA: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
      Size = 1
    end
    object QComprobPREFIJO: TStringField
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Origin = 'DBMAIN.COMPROBANTES.PREFIJO'
      Size = 4
    end
    object QComprobNUMERO: TStringField
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Origin = 'DBMAIN.COMPROBANTES.NUMERO'
      Size = 8
    end
    object QComprobNUMERARCION_PROPIA: TStringField
      DisplayWidth = 1
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'DBMAIN.COMPROBANTES.NUMERARCION_PROPIA'
      Size = 1
    end
    object QComprobTOMA_NRO_DE: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOMA_NRO_DE'
      Origin = 'DBMAIN.COMPROBANTES.TOMA_NRO_DE'
    end
    object QComprobAFECTA_IVA: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.AFECTA_IVA'
      Size = 1
    end
    object QComprobAFECTA_CC: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_CC'
      Origin = 'DBMAIN.COMPROBANTES.AFECTA_CC'
      Size = 1
    end
    object QComprobDESGLOZA_IVA: TStringField
      DisplayWidth = 1
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.DESGLOZA_IVA'
      Size = 1
    end
    object QComprobCOMPRA_VENTA: TStringField
      DisplayWidth = 1
      FieldName = 'COMPRA_VENTA'
      Origin = 'DBMAIN.COMPROBANTES.COMPRA_VENTA'
      Size = 1
    end
    object QComprobCOPIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
    object QComprobREPORTE: TStringField
      DisplayWidth = 100
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
    object QComprobIMPRIME: TStringField
      DisplayWidth = 1
      FieldName = 'IMPRIME'
      Origin = 'DBMAIN.COMPROBANTES.IMPRIME'
      Size = 1
    end
    object QComprobLINEAS_DETALLE: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINEAS_DETALLE'
      Origin = 'DBMAIN.COMPROBANTES.LINEAS_DETALLE'
    end
  end
  object QTranCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select tr.*,'
      '  cp.denominacion as MuestraComprobante,'
      '  s.detalle as MuestraSucursal,'
      '  cp.id_comprobante as Id_tipoComprobante,'
      '  fc.nrocpbte as MuestraFactura,'
      '  fc.tipocpbte as MuestraTipoFc,'
      '  fc.clasecpbte as MuestraClaseFc,'
      '  ds.sucursal as MuestraSucDestino from trancab tr'
      'left join sucursal s on s.codigo=tr.sucursal'
      'left join fcvtacab fc on fc.id_fc=tr.id_factura_franquicia'
      'left join depositos ds on ds.id=tr.deposito_destino'
      'left join comprobantes cp on cp.clase_comprob=tr.ClaseCpbte and'
      '          cp.letra=tr.Letratr and'
      '          cp.sucursal=tr.sucursal and'
      '          cp.tipo_comprob=tr.tipocpbte'
      'where tr.id_trcab=:id'
      '')
    Left = 280
    Top = 482
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTranCabID_TRCAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QTranCabTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QTranCabCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QTranCabDEPOSITO_ORIGEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_ORIGEN'
    end
    object QTranCabDEPOSITO_DESTINO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_DESTINO'
    end
    object QTranCabLETRATR: TStringField
      DisplayWidth = 1
      FieldName = 'LETRATR'
      Size = 1
    end
    object QTranCabSUCTR: TStringField
      DisplayWidth = 4
      FieldName = 'SUCTR'
      Size = 4
    end
    object QTranCabNUMEROTR: TStringField
      DisplayWidth = 8
      FieldName = 'NUMEROTR'
      Size = 8
    end
    object QTranCabNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QTranCabSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
    object QTranCabMUESTRACOMPROBANTE: TStringField
      DisplayWidth = 15
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QTranCabMUESTRASUCURSAL: TStringField
      DisplayWidth = 35
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QTranCabNOMBRE_DEPOSITO_ORIGEN: TStringField
      DisplayWidth = 25
      FieldName = 'NOMBRE_DEPOSITO_ORIGEN'
      Size = 25
    end
    object QTranCabNOMBRE_DEPOSITO_DESTINO: TStringField
      DisplayWidth = 25
      FieldName = 'NOMBRE_DEPOSITO_DESTINO'
      Size = 25
    end
    object QTranCabOBS1: TStringField
      DisplayWidth = 100
      FieldName = 'OBS1'
      Size = 100
    end
    object QTranCabOBS2: TStringField
      DisplayWidth = 100
      FieldName = 'OBS2'
      Size = 100
    end
    object QTranCabID_TIPOCOMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QTranCabUSUARIO: TStringField
      DisplayWidth = 50
      FieldName = 'USUARIO'
      Size = 50
    end
    object QTranCabESTADO: TStringField
      DisplayWidth = 1
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QTranCabRECIBIDO_POR: TStringField
      DisplayWidth = 50
      FieldName = 'RECIBIDO_POR'
      Size = 50
    end
    object QTranCabLISTAPRECIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'LISTAPRECIO'
    end
    object QTranCabNOTA_TX_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'NOTA_TX_ID'
    end
    object QTranCabNOTA_TX_NUMERO: TStringField
      DisplayWidth = 13
      FieldName = 'NOTA_TX_NUMERO'
      Size = 13
    end
    object QTranCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QTranCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QTranCabCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QTranCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QTranCabFECHA_RECECION: TSQLTimeStampField
      FieldName = 'FECHA_RECECION'
    end
    object QTranCabID_FACTURA_FRANQUICIA: TIntegerField
      FieldName = 'ID_FACTURA_FRANQUICIA'
      Required = True
    end
    object QTranCabMUESTRAFACTURA: TStringField
      FieldName = 'MUESTRAFACTURA'
      ProviderFlags = []
      Size = 13
    end
    object QTranCabMUESTRATIPOFC: TStringField
      FieldName = 'MUESTRATIPOFC'
      ProviderFlags = []
      Size = 2
    end
    object QTranCabMUESTRACLASEFC: TStringField
      FieldName = 'MUESTRACLASEFC'
      ProviderFlags = []
      Size = 2
    end
    object QTranCabMUESTRASUCDESTINO: TIntegerField
      FieldName = 'MUESTRASUCDESTINO'
      ProviderFlags = []
    end
    object QTranCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Required = True
    end
  end
  object CDSTranCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTranCab'
    OnNewRecord = CDSTranCabNewRecord
    Left = 104
    Top = 482
    object CDSTranCabID_TRCAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRCAB'
    end
    object CDSTranCabTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSTranCabCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSTranCabDEPOSITO_ORIGEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_ORIGEN'
      OnSetText = CDSTranCabDEPOSITO_ORIGENSetText
    end
    object CDSTranCabDEPOSITO_DESTINO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_DESTINO'
      OnSetText = CDSTranCabDEPOSITO_DESTINOSetText
    end
    object CDSTranCabLETRATR: TStringField
      DisplayWidth = 1
      FieldName = 'LETRATR'
      Size = 1
    end
    object CDSTranCabSUCTR: TStringField
      DisplayWidth = 4
      FieldName = 'SUCTR'
      OnSetText = CDSTranCabSUCTRSetText
      Size = 4
    end
    object CDSTranCabNUMEROTR: TStringField
      DisplayWidth = 8
      FieldName = 'NUMEROTR'
      OnSetText = CDSTranCabNUMEROTRSetText
      Size = 8
    end
    object CDSTranCabNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSTranCabSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
      OnSetText = CDSTranCabSUCURSALSetText
    end
    object CDSTranCabMUESTRACOMPROBANTE: TStringField
      DisplayWidth = 15
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSTranCabMUESTRASUCURSAL: TStringField
      DisplayWidth = 35
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSTranCabNOMBRE_DEPOSITO_ORIGEN: TStringField
      DisplayWidth = 25
      FieldName = 'NOMBRE_DEPOSITO_ORIGEN'
      Size = 25
    end
    object CDSTranCabNOMBRE_DEPOSITO_DESTINO: TStringField
      DisplayWidth = 25
      FieldName = 'NOMBRE_DEPOSITO_DESTINO'
      Size = 25
    end
    object CDSTranCabOBS1: TStringField
      DisplayWidth = 100
      FieldName = 'OBS1'
      Size = 100
    end
    object CDSTranCabOBS2: TStringField
      DisplayWidth = 100
      FieldName = 'OBS2'
      Size = 100
    end
    object CDSTranCabID_TIPOCOMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSTranCabID_TIPOCOMPROBANTESetText
    end
    object CDSTranCabUSUARIO: TStringField
      DisplayWidth = 50
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSTranCabESTADO: TStringField
      DisplayWidth = 1
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSTranCabRECIBIDO_POR: TStringField
      DisplayWidth = 50
      FieldName = 'RECIBIDO_POR'
      Size = 50
    end
    object CDSTranCabLISTAPRECIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'LISTAPRECIO'
    end
    object CDSTranCabNOTA_TX_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'NOTA_TX_ID'
    end
    object CDSTranCabNOTA_TX_NUMERO: TStringField
      DisplayWidth = 13
      FieldName = 'NOTA_TX_NUMERO'
      Size = 13
    end
    object CDSTranCabFECHA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA'
      Required = True
    end
    object CDSTranCabTOTAL: TFloatField
      DisplayWidth = 16
      FieldName = 'TOTAL'
      DisplayFormat = ',0.000'
      EditFormat = '###,###,###,##0.00'
    end
    object CDSTranCabCOSTO_TOTAL: TFloatField
      DisplayWidth = 16
      FieldName = 'COSTO_TOTAL'
      DisplayFormat = ',0.000'
      EditFormat = '###,###,###,##0.00'
    end
    object CDSTranCabFECHA_HORA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA_HORA'
    end
    object CDSTranCabFECHA_RECECION: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA_RECECION'
    end
    object CDSTranCabID_FACTURA_FRANQUICIA: TIntegerField
      FieldName = 'ID_FACTURA_FRANQUICIA'
      Required = True
    end
    object CDSTranCabMUESTRAFACTURA: TStringField
      FieldName = 'MUESTRAFACTURA'
      ProviderFlags = []
      Size = 13
    end
    object CDSTranCabMUESTRATIPOFC: TStringField
      FieldName = 'MUESTRATIPOFC'
      ProviderFlags = []
      Size = 2
    end
    object CDSTranCabMUESTRACLASEFC: TStringField
      FieldName = 'MUESTRACLASEFC'
      ProviderFlags = []
      Size = 2
    end
    object CDSTranCabMUESTRASUCDESTINO: TIntegerField
      FieldName = 'MUESTRASUCDESTINO'
      ProviderFlags = []
    end
    object CDSTranCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Required = True
    end
  end
  object QTranDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select td.*, s.REEMPLAZO_STK as MuestraCodAlternativo,r.detalle_' +
        'rubro as MuestraRubro,sr.detalle_subrubro as MuestraSubRub from ' +
        'trandet td'
      'left join stock s on s.codigo_stk=td.codigo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where td.id_trancab=:id_cab')
    Left = 238
    Top = 544
    ParamData = <
      item
        Name = 'id_cab'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTranDetID_TRANDET: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRANDET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QTranDetID_TRANCAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRANCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QTranDetDETALLE: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE'
      Size = 45
    end
    object QTranDetUNIDAD: TStringField
      DisplayWidth = 3
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QTranDetDEPOSITO_ORIGEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_ORIGEN'
    end
    object QTranDetDEPOSITO_DESTINO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_DESTINO'
    end
    object QTranDetSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
    object QTranDetCODIGO: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Size = 8
    end
    object QTranDetNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QTranDetTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QTranDetCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QTranDetAFECTA_STOCK: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_STOCK'
      Origin = 'DBMAIN.TRANDET.AFECTA_STOCK'
      Size = 1
    end
    object QTranDetCON_NRO_SERIE: TStringField
      DisplayWidth = 1
      FieldName = 'CON_NRO_SERIE'
      Size = 1
    end
    object QTranDetESTADO: TStringField
      DisplayWidth = 1
      FieldName = 'ESTADO'
      Origin = 'DBMAIN.TRANDET.ESTADO'
      FixedChar = True
      Size = 1
    end
    object QTranDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object QTranDetPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object QTranDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QTranDetPRECIO_TOTAL: TFloatField
      FieldName = 'PRECIO_TOTAL'
    end
    object QTranDetCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object QTranDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QTranDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object QTranDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Required = True
    end
    object QTranDetFECHA_CONFIRMACION: TSQLTimeStampField
      FieldName = 'FECHA_CONFIRMACION'
    end
    object QTranDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object QTranDetMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 35
    end
    object QTranDetMUESTRASUBRUB: TStringField
      FieldName = 'MUESTRASUBRUB'
      ProviderFlags = []
      Size = 45
    end
  end
  object CDSTranDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cab'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPTranDet'
    AfterInsert = CDSTranDetAfterInsert
    BeforePost = CDSTranDetBeforePost
    AfterPost = CDSTranDetAfterPost
    BeforeDelete = CDSTranDetBeforeDelete
    AfterDelete = CDSTranDetAfterDelete
    OnNewRecord = CDSTranDetNewRecord
    Left = 98
    Top = 552
    object CDSTranDetID_TRANDET: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRANDET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSTranDetID_TRANCAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TRANCAB'
    end
    object CDSTranDetCODIGO: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO'
      OnGetText = CDSTranDetCODIGOGetText
      OnSetText = CDSTranDetCODIGOSetText
      EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 8
    end
    object CDSTranDetDETALLE: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSTranDetUNIDAD: TStringField
      Alignment = taCenter
      DisplayWidth = 5
      FieldName = 'UNIDAD'
      LookupKeyFields = 'SIGLAS'
      LookupResultField = 'SIGLAS'
      KeyFields = 'UNIDAD'
      Size = 5
    end
    object CDSTranDetDEPOSITO_ORIGEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_ORIGEN'
    end
    object CDSTranDetDEPOSITO_DESTINO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO_DESTINO'
    end
    object CDSTranDetSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
    object CDSTranDetNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSTranDetTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSTranDetCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSTranDetAFECTA_STOCK: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_STOCK'
      Size = 1
    end
    object CDSTranDetCON_NRO_SERIE: TStringField
      DisplayWidth = 1
      FieldName = 'CON_NRO_SERIE'
      Size = 1
    end
    object CDSTranDetESTADO: TStringField
      DisplayWidth = 1
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSTranDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      OnSetText = CDSTranDetCANTIDADSetText
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSTranDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSTranDetPRECIO_TOTAL: TFloatField
      FieldName = 'PRECIO_TOTAL'
    end
    object CDSTranDetCOSTO: TFloatField
      FieldName = 'COSTO'
    end
    object CDSTranDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSTranDetPRECIO: TFloatField
      FieldName = 'PRECIO'
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSTranDetCANTIDAD_UNIDADES: TFloatField
      DisplayLabel = 'Uni.Stk'
      FieldName = 'CANTIDAD_UNIDADES'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSTranDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Required = True
    end
    object CDSTranDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object CDSTranDetMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSTranDetMUESTRASUBRUB: TStringField
      FieldName = 'MUESTRASUBRUB'
      ProviderFlags = []
      Size = 45
    end
  end
  object QTranSubDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from transubdet where Id_Cabtra= :id')
    Left = 232
    Top = 600
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTranSubDetalleID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QTranSubDetalleID_DETTRA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_DETTRA'
    end
    object QTranSubDetalleID_CABTRA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CABTRA'
    end
    object QTranSubDetalleTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QTranSubDetalleCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QTranSubDetalleNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QTranSubDetalleCODIGOARTICULO: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QTranSubDetalleSERIE: TStringField
      DisplayWidth = 50
      FieldName = 'SERIE'
      Size = 50
    end
    object QTranSubDetalleDEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO'
    end
    object QTranSubDetalleDEPOSITOORIGEN: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITOORIGEN'
    end
    object QTranSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSucursal'
    Left = 528
    Top = 526
    object CDSSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
    object CDSSucursalDIRECCION: TStringField
      DisplayWidth = 20
      FieldName = 'DIRECCION'
    end
    object CDSSucursalLOCALIDAD: TStringField
      DisplayWidth = 20
      FieldName = 'LOCALIDAD'
    end
    object CDSSucursalTELEFONO1: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSSucursalTELEFONO2: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object CDSSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    Left = 528
    Top = 420
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
    end
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object CDSStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
    end
    object CDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object CDSStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
    end
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object CDSStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object CDSStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object CDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
    end
    object CDSStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
    end
  end
  object spUltimaUnidad: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ULTIMA_UNIDAD_USADA'
    Left = 702
    Top = 278
    ParamData = <
      item
        Name = 'UNIDAD'
        DataType = ftString
        Precision = 3
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 8
        ParamType = ptInput
      end>
  end
  object CDSBuscaNroSerie: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaNroSerie'
    Left = 672
    Top = 392
    object CDSBuscaNroSerieCODIGOSERIE: TStringField
      DisplayLabel = 'Serie'
      DisplayWidth = 60
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object CDSBuscaNroSerieCODIGO_STK: TStringField
      DisplayLabel = 'Articulo'
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Visible = False
      Size = 8
    end
    object CDSBuscaNroSerieID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField
      DisplayLabel = 'F.Ingreso'
      DisplayWidth = 18
      FieldName = 'FECHAINGRESO'
      Visible = False
    end
    object CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
      Visible = False
    end
  end
  object DSPBuscaNroSerie: TDataSetProvider
    DataSet = DMBuscadores.QBuscaNroSerie
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 488
    Top = 344
  end
  object QNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      
        'where ss.codigo_stk=:codigo and ss.codigoserie=:CodigoSerie and ' +
        'ss.fechaegreso is null and ss.deposito=:deposito')
    Left = 552
    Top = 345
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CodigoSerie'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNroSerieID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QNroSerieCODIGO_STK: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object QNroSerieCODIGOSERIE: TStringField
      DisplayWidth = 50
      FieldName = 'CODIGOSERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object QNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
    end
    object QNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
    end
  end
  object QTraerRecargoDeLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select la.recargo from listaprecioespecialart la'
      'where la.codigoarticulo=:articulo and la.id_cab=:lista')
    Left = 688
    Top = 576
    ParamData = <
      item
        Name = 'articulo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTraerRecargoDeListaRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
  end
  object QDepositoStk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    Left = 768
    Top = 192
    ParamData = <
      item
        Name = 'codigo_deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Required = True
    end
    object QDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Required = True
    end
    object QDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QDepositoStkINICIAL: TFloatField
      FieldName = 'INICIAL'
    end
    object QDepositoStkMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
    object QDepositoStkMEDIO: TFloatField
      FieldName = 'MEDIO'
    end
    object QDepositoStkFISICO: TFloatField
      FieldName = 'FISICO'
    end
    object QDepositoStkRECARGO: TFloatField
      FieldName = 'RECARGO'
      Required = True
    end
    object QDepositoStkFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
    end
  end
  object CDSListaPrecios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaPrecios'
    Left = 616
    Top = 520
    object CDSListaPreciosID: TIntegerField
      FieldName = 'ID'
    end
    object CDSListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = QListaPrecios
    Options = []
    Left = 688
    Top = 520
  end
  object QListaPrecios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id,nombre,f_pago from  listaprecioespecialcab'
      ' where uso_administrador<>:uso'
      'order by nombre')
    Left = 760
    Top = 520
    ParamData = <
      item
        Name = 'uso'
        DataType = ftString
        ParamType = ptInput
      end>
    object QListaPreciosID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object QListaPreciosNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QListaPreciosF_PAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'F_PAGO'
    end
  end
  object QPrimerLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select min(id) from listaprecioespecialcab')
    Left = 584
    Top = 400
  end
  object QCompDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_comprobante from comprobantes '
      'where  compra_venta='#39'V'#39' and tipo_comprob='#39'TX'#39
      'and sucursal=:suc'
      'and defecto='#39'S'#39)
    Left = 296
    Top = 256
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCompDefectoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
  end
  object QCompPrimero: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Max(id_comprobante) from comprobantes '
      'where  compra_venta='#39'V'#39' and tipo_comprob='#39'TX'#39
      'and sucursal=:suc')
    Left = 384
    Top = 264
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QTraerPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select (la.precio+la.precio_exento) as PrecioConIva,la.precio_gr' +
        'avado,la.recargo from listaprecioespecialart la'
      'where la.codigoarticulo=:articulo and la.id_cab=:lista')
    Left = 760
    Top = 576
    ParamData = <
      item
        Name = 'articulo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTraerPrecioPRECIOCONIVA: TFloatField
      FieldName = 'PRECIOCONIVA'
    end
    object QTraerPrecioPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
    end
    object QTraerPrecioRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
  end
  object QCambiarFecha: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update trancab r set r.fecha= :FechaNueva where r.id_trcab= :id')
    Left = 784
    Top = 392
    ParamData = <
      item
        Name = 'FechaNueva'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 765
    Top = 21
    object CambiarFecha1: TMenuItem
      Action = CambiarFecha
    end
    object CambiarFechadeRecepcin1: TMenuItem
      Action = CambiarFechaRecp
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CambiarNro1: TMenuItem
      Action = CambiarNro
    end
    object CambiaListadePrecio1: TMenuItem
      Action = CambiaListaPrecio
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object IgnorarControlDepositoDestino: TMenuItem
      Caption = 'Ingnorar Control de Deposito Destino'
      OnClick = IgnorarControlDepositoDestinoClick
    end
  end
  object QCambiarFechaRec: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update trancab r set r.fecha_rececion= :FechaNueva where r.id_tr' +
        'cab= :id')
    Left = 768
    Top = 328
    ParamData = <
      item
        Name = 'FechaNueva'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDepo_GeneraXML: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.id,s.genera_xml_comun from depositos d'
      'left join sucursal s on s.codigo=d.sucursal'
      'where d.id = :id')
    Left = 856
    Top = 584
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDepo_GeneraXMLID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QDepo_GeneraXMLGENERA_XML_COMUN: TStringField
      FieldName = 'GENERA_XML_COMUN'
      FixedChar = True
      Size = 1
    end
  end
  object QControlCpbteExistente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select rc.id_trcab from trancab rc'
      'where rc.tipocpbte = :tipo and'
      '      rc.clasecpbte = :clase and'
      '      rc.letratr = :letra and'
      '      rc.suctr = :suc and'
      '      rc.numerotr = :numero and'
      '      rc.sucursal = :sucursal')
    Left = 376
    Top = 544
    ParamData = <
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'clase'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'letra'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'suc'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'numero'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ComBuscadorDeposito: TComBuscador
    Data = CDSBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 320
    Top = 168
  end
  object ComBuscadorSucursal: TComBuscador
    Data = CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 317
    Top = 69
  end
  object ComBuscadorSerie: TComBuscador
    Data = CDSBuscaNroSerie
    Campo = 'CODIGOSERIE'
    Titulo = 'Codigo de Serie'
    rOk = False
    Left = 557
    Top = 101
  end
  object PopupMenu2: TPopupMenu
    Left = 516
    Top = 149
    object VerCodigoALternativo1: TMenuItem
      Caption = 'Ver Codigo ALternativo'
      OnClick = VerCodigoALternativo1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AutoCompletarUno: TMenuItem
      Caption = 'Autocompletar en Uno'
      OnClick = AutoCompletarUnoClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object SaltearUnidadesdeStock1: TMenuItem
      Caption = 'Saltear Unidades de Stock'
      OnClick = SaltearUnidadesdeStock1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 293
    Top = 381
    object OrdenarxRubSUbRub1: TMenuItem
      Caption = 'Ordenar x Rub-Sub Rub'
      OnClick = OrdenarxRubSUbRub1Click
    end
  end
  object spConfirmar: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    StoredProcName = 'APLICA_ESTADO_TRANSF_STOCK'
    Left = 829
    Top = 245
    ParamData = <
      item
        Position = 1
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 2
        Name = 'ID_TRANSFERENCIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end

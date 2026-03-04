object FrameMovValoresIngreso: TFrameMovValoresIngreso
  Left = 0
  Top = 0
  Width = 906
  Height = 797
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdLeftToRight
  Color = clBtnFace
  ParentBiDiMode = False
  ParentColor = False
  TabOrder = 0
  OnExit = FrameExit
  object lbTotalValores: TLabel
    Left = 161
    Top = 206
    Width = 21
    Height = 15
    Alignment = taRightJustify
    Caption = '0.00'
  end
  object Label25: TLabel
    Left = 6
    Top = 206
    Width = 90
    Height = 13
    Caption = 'Total Ingresado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText12: TDBText
    Left = 145
    Top = 1
    Width = 64
    Height = 17
    Alignment = taRightJustify
    DataField = 'ID_CAJA'
    DataSource = DSCajaMov
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = DBText12Click
    OnMouseMove = DBText12MouseMove
  end
  object Label46: TLabel
    Left = 48
    Top = 1
    Width = 23
    Height = 15
    Caption = 'Nro:'
  end
  object DBText13: TDBText
    Left = 74
    Top = 1
    Width = 64
    Height = 17
    DataField = 'MUESTRANROCAJA'
    DataSource = DSCajaMov
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    OnClick = DBText13Click
  end
  object Label51: TLabel
    Left = 6
    Top = 221
    Width = 34
    Height = 13
    Caption = 'Resto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbResto: TLabel
    Left = 161
    Top = 221
    Width = 21
    Height = 15
    Alignment = taRightJustify
    Caption = '0.00'
  end
  object RxLabel4: TJvLabel
    Left = 8
    Top = 1
    Width = 23
    Height = 13
    Caption = 'Caja'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    ShadowSize = 1
    ShadowPos = spLeftTop
    Transparent = True
    OnClick = RxLabel4Click
    OnMouseMove = RxLabel4MouseMove
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object lbAvisoChe3: TLabel
    Left = 233
    Top = 237
    Width = 113
    Height = 11
    Alignment = taRightJustify
    Caption = 'Dbl-Click en Mov.Ver Salida'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Serif'
    Font.Style = []
    ParentFont = False
  end
  object dbgMovimientos: TDBGrid
    Left = 2
    Top = 46
    Width = 321
    Height = 152
    DataSource = DSCajaMov
    FixedColor = clFuchsia
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnColEnter = dbgMovimientosColEnter
    OnDblClick = dbgMovimientosDblClick
    OnEditButtonClick = dbgMovimientosEditButtonClick
    OnKeyPress = dbgMovimientosKeyPress
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'ID_FPAGO'
        Title.Alignment = taCenter
        Title.Caption = 'Id.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'MUESTRAFORMAPAGO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Detalle'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'UNIDADES'
        Title.Alignment = taCenter
        Title.Caption = 'Uni.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'DEBE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Importe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end>
  end
  object pcValores: TPageControl
    Left = 325
    Top = 3
    Width = 492
    Height = 234
    ActivePage = tsChe3
    HotTrack = True
    TabOrder = 3
    OnChanging = pcValoresChanging
    object tsEfectivo: TTabSheet
      Caption = 'Efectivo'
      object dbt1: TDBText
        Left = 363
        Top = 3
        Width = 65
        Height = 17
        DataField = 'ID_EFECTIVO'
        DataSource = DSMovEfectivo
      end
      object RxLabel1: TJvLabel
        Left = 40
        Top = 16
        Width = 51
        Height = 15
        Caption = 'Unidades'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel2: TJvLabel
        Left = 40
        Top = 60
        Width = 58
        Height = 15
        Caption = 'Cotizaci'#243'n'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel3: TJvLabel
        Left = 40
        Top = 104
        Width = 44
        Height = 15
        Caption = 'Importe'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText14: TDBText
        Left = 3
        Top = 186
        Width = 42
        Height = 17
        DataField = 'ID_CAJA'
        DataSource = DSMovEfectivo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText15: TDBText
        Left = 51
        Top = 186
        Width = 65
        Height = 17
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSMovEfectivo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label60: TLabel
        Left = 344
        Top = 26
        Width = 79
        Height = 16
        Caption = 'Tipo Efectivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText38: TDBText
        Left = 192
        Top = 120
        Width = 217
        Height = 17
        DataField = 'MUESTRAFORMAPAGO'
        DataSource = DSCajaMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeUnidades: TDBEdit
        Left = 40
        Top = 32
        Width = 121
        Height = 23
        DataField = 'UNIDADES'
        DataSource = DSMovEfectivo
        TabOrder = 0
      end
      object dbeCotizacion: TDBEdit
        Left = 40
        Top = 76
        Width = 121
        Height = 23
        Color = clInfoBk
        DataField = 'COTIZACION'
        DataSource = DSMovEfectivo
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbeImporte: TDBEdit
        Left = 40
        Top = 120
        Width = 121
        Height = 23
        Color = clInfoBk
        DataField = 'IMPORTE'
        DataSource = DSMovEfectivo
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
      object BitBtn7: TBitBtn
        Left = 328
        Top = 168
        Width = 75
        Height = 25
        Action = PostEfectivo
        Caption = '&Confirma'
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
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 3
      end
      object BitBtn1: TBitBtn
        Left = 248
        Top = 168
        Width = 75
        Height = 25
        Action = CancelEfectivo
        Cancel = True
        Caption = 'C&ancelar'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        ModalResult = 2
        NumGlyphs = 2
        TabOrder = 4
      end
    end
    object tsChe3: TTabSheet
      Caption = 'Che.de 3'#186
      ImageIndex = 2
      object Label8: TLabel
        Left = 5
        Top = 4
        Width = 33
        Height = 15
        Caption = 'Banco'
        Transparent = True
      end
      object Label9: TLabel
        Left = 314
        Top = 25
        Width = 23
        Height = 15
        Caption = 'Nro:'
        Transparent = True
      end
      object Label10: TLabel
        Left = 4
        Top = 41
        Width = 50
        Height = 30
        Caption = 'Fecha de '#13#10'Emisi'#243'n'
        Transparent = True
      end
      object Label11: TLabel
        Left = 155
        Top = 40
        Width = 50
        Height = 30
        Caption = 'Fecha de '#13#10'Cobro'
        Transparent = True
      end
      object Label12: TLabel
        Left = 4
        Top = 69
        Width = 50
        Height = 30
        Caption = 'Fecha de '#13#10'Entrada'
        Transparent = True
      end
      object Label13: TLabel
        Left = 158
        Top = 69
        Width = 50
        Height = 30
        Caption = 'Fecha de '#13#10'Salida'
        Transparent = True
      end
      object Label14: TLabel
        Left = 4
        Top = 121
        Width = 85
        Height = 13
        Caption = 'Entregado por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 327
        Top = 75
        Width = 7
        Height = 16
        Caption = '$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 4
        Top = 101
        Width = 74
        Height = 13
        Caption = 'Entregado a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 93
        Top = 1
        Width = 185
        Height = 17
        DataField = 'MUESTRABANCO'
        DataSource = DSChe3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 4
        Top = 140
        Width = 49
        Height = 13
        Caption = 'Firmante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 311
        Top = 51
        Width = 23
        Height = 16
        Caption = 'Uni.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 6
        Top = 162
        Width = 88
        Height = 13
        Caption = 'Nro.Cuit Emisor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 6
        Top = 183
        Width = 62
        Height = 13
        Caption = 'Nro.de Cta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label48: TLabel
        Left = 280
        Top = 5
        Width = 50
        Height = 13
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dbtID_Che3: TDBText
        Left = 345
        Top = 116
        Width = 89
        Height = 17
        Alignment = taRightJustify
        DataField = 'ID_CHEQUE_TER'
        DataSource = DSChe3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText16: TDBText
        Left = 285
        Top = 186
        Width = 65
        Height = 17
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSChe3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText17: TDBText
        Left = 237
        Top = 186
        Width = 42
        Height = 17
        DataField = 'ID_CAJA'
        DataSource = DSChe3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label53: TLabel
        Left = 237
        Top = 172
        Width = 23
        Height = 15
        Caption = 'Caja'
        Transparent = True
      end
      object Label54: TLabel
        Left = 285
        Top = 172
        Width = 44
        Height = 15
        Caption = 'Caja Cta'
        Transparent = True
      end
      object Label55: TLabel
        Left = 403
        Top = 97
        Width = 31
        Height = 13
        Caption = 'Id Che'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Button2: TButton
        Left = 70
        Top = 3
        Width = 17
        Height = 16
        Action = BuscarBanco
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = False
      end
      object BitBtn2: TBitBtn
        Left = 356
        Top = 173
        Width = 24
        Height = 24
        Action = CancelChe3
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        Layout = blGlyphTop
        ModalResult = 2
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 16
      end
      object BitBtn3: TBitBtn
        Left = 380
        Top = 173
        Width = 24
        Height = 24
        Action = PostChe3
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
        Layout = blGlyphTop
        ModalResult = 1
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 15
      end
      object DBEdit4: TDBEdit
        Left = 362
        Top = 3
        Width = 65
        Height = 16
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUCURSAL_BCO'
        DataSource = DSChe3
        TabOrder = 2
      end
      object DBEBancoChe3: TDBEdit
        Left = 38
        Top = 2
        Width = 30
        Height = 15
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ID_BANCO'
        DataSource = DSChe3
        TabOrder = 0
        OnKeyPress = DBEBancoChe3KeyPress
      end
      object DBEEntregadoPorChe3: TDBEdit
        Left = 101
        Top = 117
        Width = 265
        Height = 16
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ORIGEN'
        DataSource = DSChe3
        TabOrder = 11
      end
      object DBENroChe3: TDBEdit
        Left = 338
        Top = 23
        Width = 89
        Height = 16
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NUMERO'
        DataSource = DSChe3
        TabOrder = 3
      end
      object DBEEntregadoAChe3: TDBEdit
        Left = 101
        Top = 96
        Width = 265
        Height = 16
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DESTINO'
        DataSource = DSChe3
        Enabled = False
        TabOrder = 10
      end
      object dbeunidadesChe3: TDBEdit
        Left = 346
        Top = 50
        Width = 81
        Height = 16
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'UNIDADES'
        DataSource = DSChe3
        TabOrder = 9
        OnKeyDown = dbeunidadesChe3KeyDown
      end
      object DBEFirmante: TDBEdit
        Left = 101
        Top = 139
        Width = 265
        Height = 16
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'FIRMANTE'
        DataSource = DSChe3
        TabOrder = 12
      end
      object dbeImporteChe3: TDBEdit
        Left = 348
        Top = 75
        Width = 79
        Height = 16
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'IMPORTE'
        DataSource = DSChe3
        Enabled = False
        TabOrder = 7
      end
      object DBECuit: TDBEdit
        Left = 101
        Top = 160
        Width = 100
        Height = 16
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CUIT'
        DataSource = DSChe3
        TabOrder = 13
      end
      object DBEdit1: TDBEdit
        Left = 101
        Top = 181
        Width = 100
        Height = 16
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NRO_CTA'
        DataSource = DSChe3
        TabOrder = 14
      end
      object DBDFechaEmisionChe3: TJvDBDateEdit
        Left = 56
        Top = 47
        Width = 85
        Height = 18
        DataField = 'FECHA_EMISION'
        DataSource = DSChe3
        BorderStyle = bsNone
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        ShowNullDate = False
        TabOrder = 4
      end
      object DBDFechaCobroChe3: TJvDBDateEdit
        Left = 209
        Top = 46
        Width = 85
        Height = 18
        DataField = 'FECHA_COBRO'
        DataSource = DSChe3
        BorderStyle = bsNone
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        ShowNullDate = False
        TabOrder = 6
      end
      object DBDFechaIngresoChe3: TJvDBDateEdit
        Left = 55
        Top = 73
        Width = 85
        Height = 18
        DataField = 'FECHA_ENTRADA'
        DataSource = DSChe3
        BorderStyle = bsNone
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        ShowNullDate = False
        TabOrder = 5
      end
      object DBDFechaEgresoChe3: TJvDBDateEdit
        Left = 209
        Top = 73
        Width = 85
        Height = 18
        DataField = 'FECHA_SALIDA'
        DataSource = DSChe3
        BorderStyle = bsNone
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        Enabled = False
        ShowNullDate = False
        TabOrder = 8
      end
      object dbcE_Check: TJvDBLookupCombo
        Left = 74
        Top = 20
        Width = 200
        Height = 20
        DataField = 'ID_CTA_CAJA_BCO'
        DataSource = DSChe3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ListStyle = lsDelimited
        LookupField = 'ID_CUENTA'
        LookupDisplay = 'NOMBRE;NRO_CUENTA'
        LookupSource = DSCtasBancarias
        ParentFont = False
        TabOrder = 18
        Visible = False
      end
      object dbchE_check: TDBCheckBox
        Left = 9
        Top = 20
        Width = 59
        Height = 17
        Caption = 'E-Check'
        DataField = 'E_CHECK'
        DataSource = DSChe3
        TabOrder = 17
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnClick = dbchE_checkClick
      end
    end
    object tsTCredito: TTabSheet
      Caption = 'Tarjetas de Credito'
      ImageIndex = 3
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 432
        Height = 201
        Color = 16776176
        ParentBackground = False
        TabOrder = 0
        object Bevel1: TBevel
          Left = 0
          Top = 4
          Width = 425
          Height = 186
          Shape = bsFrame
          Style = bsRaised
        end
        object Bevel2: TBevel
          Left = 369
          Top = 9
          Width = 45
          Height = 49
        end
        object Label19: TLabel
          Left = 14
          Top = 11
          Width = 31
          Height = 15
          Caption = 'Fecha'
        end
        object Label20: TLabel
          Left = 121
          Top = 11
          Width = 92
          Height = 15
          Caption = 'Tarjeta de Cr'#233'dito'
        end
        object Label21: TLabel
          Left = 16
          Top = 48
          Width = 33
          Height = 15
          Caption = 'Titular'
        end
        object Label22: TLabel
          Left = 235
          Top = 49
          Width = 63
          Height = 15
          Caption = 'Documento'
        end
        object Label23: TLabel
          Left = 376
          Top = 11
          Width = 37
          Height = 15
          Caption = 'Cuotas'
        end
        object DBText4: TDBText
          Left = 182
          Top = 26
          Width = 161
          Height = 17
          Color = 16776176
          DataField = 'MUESTRATC'
          DataSource = DSMovTCredito
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel
          Left = 179
          Top = 169
          Width = 6
          Height = 15
          Caption = '$'
        end
        object Label27: TLabel
          Left = 180
          Top = 129
          Width = 105
          Height = 13
          Caption = 'Montos + Recargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 16
          Top = 145
          Width = 49
          Height = 15
          Caption = 'Unidades'
        end
        object Label34: TLabel
          Left = 60
          Top = 169
          Width = 6
          Height = 15
          Caption = '$'
        end
        object Label35: TLabel
          Left = 78
          Top = 127
          Width = 83
          Height = 13
          Caption = 'Monto Original'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBTCoef: TDBText
          Left = 327
          Top = 138
          Width = 65
          Height = 17
          Alignment = taRightJustify
          DataField = 'COEFICIENTE'
          DataSource = DSMovTCredito
        end
        object Label41: TLabel
          Left = 328
          Top = 125
          Width = 60
          Height = 15
          Caption = 'Coeficiente'
        end
        object Label42: TLabel
          Left = 208
          Top = 94
          Width = 61
          Height = 15
          Caption = 'Valor Cuota'
        end
        object DBTValorCuota: TDBText
          Left = 301
          Top = 92
          Width = 65
          Height = 17
          Alignment = taRightJustify
          DataField = 'VALORCUOTA'
          DataSource = DSMovTCredito
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 208
          Top = 107
          Width = 88
          Height = 15
          Caption = 'Importe Recargo'
        end
        object DBTRecargo: TDBText
          Left = 301
          Top = 106
          Width = 65
          Height = 15
          Alignment = taRightJustify
          DataField = 'IMPORTE_RECARGO'
          DataSource = DSMovTCredito
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 298
          Top = 10
          Width = 75
          Height = 15
          Caption = 'Nro.de Cupon'
        end
        object Label49: TLabel
          Left = 15
          Top = 86
          Width = 23
          Height = 15
          Caption = 'Lote'
        end
        object Label50: TLabel
          Left = 120
          Top = 86
          Width = 45
          Height = 15
          Caption = 'Terminal'
        end
        object dbtID_EFECTIVO1: TDBText
          Left = 227
          Top = 10
          Width = 65
          Height = 17
          DataField = 'ID_MOV_TC'
          DataSource = DSMovTCredito
        end
        object DBText22: TDBText
          Left = 124
          Top = 49
          Width = 42
          Height = 17
          DataField = 'ID_CAJA'
          DataSource = DSMovTCredito
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText23: TDBText
          Left = 172
          Top = 49
          Width = 65
          Height = 17
          DataField = 'ID_CUENTA_CAJA'
          DataSource = DSMovTCredito
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn5: TBitBtn
          Left = 344
          Top = 160
          Width = 24
          Height = 24
          Action = CancelTCredito
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          Layout = blGlyphTop
          ModalResult = 2
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = False
          TabOrder = 13
        end
        object BitBtn6: TBitBtn
          Left = 374
          Top = 160
          Width = 24
          Height = 24
          Action = PostTCredito
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
          Layout = blGlyphTop
          ModalResult = 1
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = False
          TabOrder = 12
        end
        object cbTCredito: TJvDBComboEdit
          Left = 121
          Top = 25
          Width = 57
          Height = 23
          Margins.Left = 1
          Margins.Top = 1
          ClickKey = 16397
          DataField = 'ID_TC'
          DataSource = DSMovTCredito
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ButtonWidth = 14
          TabOrder = 1
          OnButtonClick = BuscarTCreditoExecute
          OnKeyPress = cbTCreditoKeyPress
        end
        object DBETc_Cuotas: TDBEdit
          Left = 375
          Top = 26
          Width = 33
          Height = 30
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CAN_CUOTAS'
          DataSource = DSMovTCredito
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBETc_Titular: TDBEdit
          Left = 16
          Top = 64
          Width = 209
          Height = 17
          TabStop = False
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'TITULAR'
          DataSource = DSMovTCredito
          TabOrder = 4
        end
        object DBETc_Documento: TDBEdit
          Left = 236
          Top = 65
          Width = 81
          Height = 17
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'N_DOCU'
          DataSource = DSMovTCredito
          TabOrder = 5
        end
        object dbeimporteTc: TDBEdit
          Left = 187
          Top = 166
          Width = 97
          Height = 17
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'IMPORTE'
          DataSource = DSMovTCredito
          Enabled = False
          TabOrder = 11
        end
        object dbeUnidadesTc: TDBEdit
          Left = 187
          Top = 142
          Width = 97
          Height = 17
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'UNIDADES'
          DataSource = DSMovTCredito
          Enabled = False
          TabOrder = 10
        end
        object DBEUnidadesNeto: TDBEdit
          Left = 69
          Top = 142
          Width = 97
          Height = 17
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'UNIDADES_NETO'
          DataSource = DSMovTCredito
          TabOrder = 8
          OnKeyDown = DBEUnidadesNetoKeyDown
        end
        object DBEdit3: TDBEdit
          Left = 69
          Top = 166
          Width = 97
          Height = 17
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'IMPORTE_NETO'
          DataSource = DSMovTCredito
          Enabled = False
          TabOrder = 9
        end
        object DBEdit22: TDBEdit
          Left = 298
          Top = 23
          Width = 65
          Height = 17
          TabStop = False
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NRO_CUPON'
          DataSource = DSMovTCredito
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 102
          Width = 81
          Height = 17
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'LOTE'
          DataSource = DSMovTCredito
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 121
          Top = 102
          Width = 81
          Height = 17
          TabStop = False
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'TERMINAL'
          DataSource = DSMovTCredito
          TabOrder = 7
        end
        object DBTcFecha: TJvDBDateEdit
          Left = 12
          Top = 25
          Width = 93
          Height = 18
          DataField = 'FECHA'
          DataSource = DSMovTCredito
          BorderStyle = bsNone
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          Enabled = False
          ShowNullDate = False
          TabOrder = 0
        end
      end
    end
    object tsTransf: TTabSheet
      Caption = 'Transferencias'
      ImageIndex = 3
      object Label2: TLabel
        Left = 16
        Top = 8
        Width = 44
        Height = 15
        Caption = 'Numero'
        FocusControl = dbeNumero
      end
      object Label3: TLabel
        Left = 88
        Top = 8
        Width = 66
        Height = 15
        Caption = 'Cta.Bancaria'
      end
      object Label5: TLabel
        Left = 16
        Top = 56
        Width = 49
        Height = 15
        Caption = 'Unidades'
        FocusControl = dbeUnidadesTx
      end
      object Label6: TLabel
        Left = 88
        Top = 56
        Width = 42
        Height = 15
        Caption = 'Importe'
        FocusControl = dbeImporteTx
      end
      object Label17: TLabel
        Left = 160
        Top = 56
        Width = 74
        Height = 15
        Caption = 'Originado por'
        FocusControl = dbeOrigenTx
      end
      object Label31: TLabel
        Left = 160
        Top = 160
        Width = 124
        Height = 24
        Caption = 'Transferencias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtID_EFECTIVO2: TDBText
        Left = 376
        Top = 8
        Width = 65
        Height = 17
        DataField = 'ID'
        DataSource = DSTransBco
      end
      object DBText18: TDBText
        Left = 51
        Top = 186
        Width = 65
        Height = 17
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSTransBco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText19: TDBText
        Left = 3
        Top = 186
        Width = 42
        Height = 17
        DataField = 'ID_CAJA'
        DataSource = DSTransBco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label65: TLabel
        Left = 16
        Top = 100
        Width = 36
        Height = 15
        Caption = 'Detalle'
        FocusControl = DBEdit7
      end
      object dbeNumero: TDBEdit
        Left = 16
        Top = 24
        Width = 64
        Height = 23
        DataField = 'NUMERO'
        DataSource = DSTransBco
        TabOrder = 0
      end
      object dbeMuestraCta: TDBEdit
        Left = 160
        Top = 24
        Width = 154
        Height = 23
        Color = clInfoBk
        DataField = 'MUESTRACTACAJA'
        DataSource = DSTransBco
        Enabled = False
        TabOrder = 2
      end
      object dbeUnidadesTx: TDBEdit
        Left = 16
        Top = 72
        Width = 64
        Height = 23
        DataField = 'UNIDADES'
        DataSource = DSTransBco
        TabOrder = 3
      end
      object dbeImporteTx: TDBEdit
        Left = 88
        Top = 72
        Width = 64
        Height = 23
        Color = clInfoBk
        DataField = 'IMPORTE'
        DataSource = DSTransBco
        Enabled = False
        TabOrder = 4
      end
      object dbeOrigenTx: TDBEdit
        Left = 160
        Top = 72
        Width = 184
        Height = 23
        Color = clInfoBk
        DataField = 'ORIGEN'
        DataSource = DSTransBco
        Enabled = False
        TabOrder = 5
      end
      object BitBtn4: TBitBtn
        Left = 304
        Top = 160
        Width = 24
        Height = 24
        Action = CancelTrans
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        Layout = blGlyphTop
        ModalResult = 2
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
      end
      object BitBtn8: TBitBtn
        Left = 328
        Top = 160
        Width = 24
        Height = 24
        Action = PostTrans
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
        Layout = blGlyphTop
        ModalResult = 1
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
      end
      object ceCtaBco: TJvDBComboEdit
        Left = 88
        Top = 24
        Width = 65
        Height = 23
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'ID_CUENTA_BANCO'
        DataSource = DSTransBco
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 14
        TabOrder = 1
        OnButtonClick = BuscarCtaBcoExecute
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 116
        Width = 329
        Height = 23
        DataField = 'DETALLE'
        DataSource = DSTransBco
        TabOrder = 8
      end
    end
    object tsCheques: TTabSheet
      Caption = 'Cheques Propios'
      ImageIndex = 4
      object Label4: TLabel
        Left = 277
        Top = 12
        Width = 25
        Height = 13
        Caption = 'Nro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 5
        Top = 86
        Width = 82
        Height = 26
        Caption = 'Pagese'#13#10'a la Orden de:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 7
        Top = 44
        Width = 76
        Height = 13
        Caption = 'Mar del Plata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 268
        Top = 36
        Width = 31
        Height = 13
        Caption = 'Unid.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 5
        Top = 67
        Width = 112
        Height = 13
        Caption = 'Para ser cobrado el'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 291
        Top = 60
        Width = 8
        Height = 13
        Caption = '$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dbNI: TDBText
        Left = 81
        Top = 184
        Width = 65
        Height = 17
        Alignment = taCenter
        DataField = 'MUESTRANI'
        DataSource = DSAnulacioChe
      end
      object dbNF: TDBText
        Left = 169
        Top = 184
        Width = 65
        Height = 17
        Alignment = taCenter
        DataField = 'MUESTRANF'
        DataSource = DSAnulacioChe
      end
      object DBText2: TDBText
        Left = 88
        Top = 43
        Width = 65
        Height = 17
        DataField = 'MUESTRAEMISION'
        DataSource = DSAnulacioChe
      end
      object DBText1: TDBText
        Left = 24
        Top = 16
        Width = 65
        Height = 17
        DataField = 'MUESTRACHEQUERA'
        DataSource = DSAnulacioChe
      end
      object DBText5: TDBText
        Left = 304
        Top = 13
        Width = 65
        Height = 17
        DataField = 'MUESTRANUMEROCHE'
        DataSource = DSAnulacioChe
      end
      object DBText6: TDBText
        Left = 304
        Top = 38
        Width = 65
        Height = 17
        DataField = 'UNIDADES'
        DataSource = DSAnulacioChe
      end
      object DBText7: TDBText
        Left = 124
        Top = 67
        Width = 65
        Height = 17
        DataField = 'MUESTRACOBRO'
        DataSource = DSAnulacioChe
      end
      object DBText8: TDBText
        Left = 304
        Top = 62
        Width = 65
        Height = 17
        DataField = 'IMPORTE'
        DataSource = DSAnulacioChe
      end
      object DBText9: TDBText
        Left = 91
        Top = 99
        Width = 302
        Height = 17
        DataField = 'MUESTRAORDENDE'
        DataSource = DSAnulacioChe
      end
      object DBText10: TDBText
        Left = 48
        Top = 144
        Width = 289
        Height = 33
      end
      object DBText11: TDBText
        Left = 344
        Top = 183
        Width = 73
        Height = 17
        DataField = 'ID_CHE_ANULADO'
        DataSource = DSAnulacioChe
      end
      object dbtID_EFECTIVO3: TDBText
        Left = 363
        Top = 122
        Width = 65
        Height = 17
        DataField = 'ID_ANULACION'
        DataSource = DSAnulacioChe
      end
      object DBText36: TDBText
        Left = -4
        Top = 183
        Width = 65
        Height = 17
        Alignment = taCenter
        DataField = 'ID_CAJA_MOV'
        DataSource = DSAnulacioChe
      end
      object Label62: TLabel
        Left = 3
        Top = 164
        Width = 33
        Height = 13
        Caption = 'Id Mov'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object btCancel: TBitBtn
        Left = 345
        Top = 152
        Width = 24
        Height = 24
        Action = CancelCheque
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        Layout = blGlyphTop
        ModalResult = 2
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
      object btPost: TBitBtn
        Left = 369
        Top = 152
        Width = 24
        Height = 24
        Action = PostCheque
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
        Layout = blGlyphTop
        ModalResult = 1
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
      end
    end
    object tsDebito: TTabSheet
      Caption = 'D'#233'bitos'
      ImageIndex = 5
      object Label33: TLabel
        Left = 16
        Top = 8
        Width = 44
        Height = 15
        Caption = 'Numero'
        FocusControl = dbeNroDebito
      end
      object Label36: TLabel
        Left = 88
        Top = 8
        Width = 66
        Height = 15
        Caption = 'Cta.Bancaria'
      end
      object Label37: TLabel
        Left = 16
        Top = 56
        Width = 49
        Height = 15
        Caption = 'Unidades'
        FocusControl = dbeUnidadesDebito
      end
      object Label38: TLabel
        Left = 88
        Top = 56
        Width = 42
        Height = 15
        Caption = 'Importe'
        FocusControl = ImporteDebito
      end
      object Label39: TLabel
        Left = 160
        Top = 56
        Width = 74
        Height = 15
        Caption = 'Originado por'
        FocusControl = dbeOriginadoDebito
      end
      object Label40: TLabel
        Left = 288
        Top = 104
        Width = 63
        Height = 24
        Caption = 'D'#233'bitos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtID_EFECTIVO4: TDBText
        Left = 363
        Top = 8
        Width = 65
        Height = 17
        DataField = 'ID'
        DataSource = DSDebitos
      end
      object DBText20: TDBText
        Left = 51
        Top = 186
        Width = 65
        Height = 17
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSDebitos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText21: TDBText
        Left = 3
        Top = 186
        Width = 42
        Height = 17
        DataField = 'ID_CAJA'
        DataSource = DSDebitos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbeNroDebito: TDBEdit
        Left = 16
        Top = 24
        Width = 64
        Height = 23
        DataField = 'NUMERO'
        DataSource = DSDebitos
        TabOrder = 0
      end
      object dbeMuestraCtaDebito: TDBEdit
        Left = 160
        Top = 24
        Width = 154
        Height = 23
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRACTACAJA'
        DataSource = DSDebitos
        Enabled = False
        TabOrder = 1
      end
      object dbeUnidadesDebito: TDBEdit
        Left = 16
        Top = 72
        Width = 64
        Height = 23
        DataField = 'UNIDADES'
        DataSource = DSDebitos
        TabOrder = 2
      end
      object ImporteDebito: TDBEdit
        Left = 88
        Top = 72
        Width = 64
        Height = 23
        TabStop = False
        Color = clInfoBk
        DataField = 'IMPORTE'
        DataSource = DSDebitos
        Enabled = False
        TabOrder = 3
      end
      object dbeOriginadoDebito: TDBEdit
        Left = 160
        Top = 72
        Width = 184
        Height = 23
        TabStop = False
        Color = clInfoBk
        DataField = 'ORIGEN'
        DataSource = DSDebitos
        Enabled = False
        TabOrder = 4
      end
      object BitBtn9: TBitBtn
        Left = 304
        Top = 160
        Width = 24
        Height = 24
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        Layout = blGlyphTop
        ModalResult = 2
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
      end
      object BitBtn10: TBitBtn
        Left = 328
        Top = 160
        Width = 24
        Height = 24
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
        Layout = blGlyphTop
        ModalResult = 1
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
        OnClick = BitBtn10Click
      end
      object rcdcIdCtaBcoDebito: TJvDBComboEdit
        Left = 88
        Top = 24
        Width = 65
        Height = 23
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'ID_CUENTA_BANCO'
        DataSource = DSDebitos
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 14
        TabOrder = 5
        OnButtonClick = BuscarCtaBcoExecute
      end
    end
    object tsValoresCompartidos: TTabSheet
      Caption = 'Valores Compartidos'
      ImageIndex = 6
      object DBText24: TDBText
        Left = 363
        Top = 3
        Width = 65
        Height = 17
        DataField = 'ID_VALOR'
        DataSource = DSMovValoresComp
      end
      object DBText25: TDBText
        Left = 51
        Top = 186
        Width = 65
        Height = 17
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSMovValoresComp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText26: TDBText
        Left = 3
        Top = 186
        Width = 42
        Height = 17
        DataField = 'ID_CAJA'
        DataSource = DSMovValoresComp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel1: TJvLabel
        Left = 249
        Top = 24
        Width = 56
        Height = 13
        Caption = 'Unidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
      object JvLabel2: TJvLabel
        Left = 344
        Top = 24
        Width = 45
        Height = 13
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
      object Label52: TLabel
        Left = 3
        Top = 24
        Width = 73
        Height = 13
        Caption = 'Id-Che.Comp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText27: TDBText
        Left = 90
        Top = 88
        Width = 81
        Height = 17
        DataField = 'MUESTRAFECHACOBRO'
        DataSource = DSMovValoresComp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText28: TDBText
        Left = 90
        Top = 111
        Width = 81
        Height = 17
        DataField = 'MUESTRAFECHAEMISION'
        DataSource = DSMovValoresComp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText29: TDBText
        Left = 360
        Top = 88
        Width = 81
        Height = 17
        DataField = 'MUESTRAIMPORTE'
        DataSource = DSMovValoresComp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText30: TDBText
        Left = 90
        Top = 134
        Width = 233
        Height = 17
        DataField = 'MUESTRAFIRMANTE'
        DataSource = DSMovValoresComp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText31: TDBText
        Left = 82
        Top = 24
        Width = 81
        Height = 17
        DataField = 'ID_CHEQUE_COMPARTIDO'
        DataSource = DSMovValoresComp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel3: TJvLabel
        Left = 300
        Top = 88
        Width = 60
        Height = 13
        Caption = 'Imp.Cheq.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
      object JvLabel4: TJvLabel
        Left = 3
        Top = 88
        Width = 75
        Height = 13
        Caption = 'Fecha Cobro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
      object JvLabel5: TJvLabel
        Left = 3
        Top = 111
        Width = 85
        Height = 13
        Caption = 'Fecha Emision'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
      object JvLabel6: TJvLabel
        Left = 3
        Top = 134
        Width = 51
        Height = 13
        Caption = 'Firmante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
      object JvLabel7: TJvLabel
        Left = 3
        Top = 66
        Width = 70
        Height = 13
        Caption = 'Nro.Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
      object DBText32: TDBText
        Left = 90
        Top = 65
        Width = 81
        Height = 17
        DataField = 'MUESTRANROCHE'
        DataSource = DSMovValoresComp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btCancelValores: TBitBtn
        Left = 248
        Top = 168
        Width = 75
        Height = 25
        Action = CancelValoresCompartidos
        Cancel = True
        Caption = 'Canelar'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        ModalResult = 2
        NumGlyphs = 2
        TabOrder = 3
      end
      object btOkValores: TBitBtn
        Left = 329
        Top = 168
        Width = 75
        Height = 25
        Action = PostValoresCompartidos
        Caption = 'Confirma'
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
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 2
      end
      object dbeUnidadesValoresComp: TDBEdit
        Left = 248
        Top = 43
        Width = 82
        Height = 23
        DataField = 'UNIDADES'
        DataSource = DSMovValoresComp
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 336
        Top = 43
        Width = 89
        Height = 23
        Color = clInfoBk
        DataField = 'IMPORTE'
        DataSource = DSMovValoresComp
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object tsCtaCte: TTabSheet
      Caption = 'Vtas en Cta'
      ImageIndex = 7
      object Label56: TLabel
        Left = 16
        Top = 12
        Width = 37
        Height = 15
        Caption = 'Cliente'
      end
      object Label57: TLabel
        Left = 17
        Top = 114
        Width = 36
        Height = 15
        Caption = 'Detalle'
      end
      object Label58: TLabel
        Left = 264
        Top = 112
        Width = 42
        Height = 15
        Caption = 'Importe'
      end
      object Label59: TLabel
        Left = 14
        Top = 53
        Width = 77
        Height = 45
        Caption = 'Comprobante de Ajuste Cta.Cte'
        WordWrap = True
      end
      object Label61: TLabel
        Left = 18
        Top = 168
        Width = 153
        Height = 24
        Caption = 'Ajustes en Cta.Cte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText33: TDBText
        Left = 384
        Top = 3
        Width = 49
        Height = 17
        DataField = 'ID'
        DataSource = DSAjustes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText34: TDBText
        Left = 16
        Top = 95
        Width = 49
        Height = 17
        DataField = 'ID_MOV_CAJA'
        DataSource = DSAjustes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText35: TDBText
        Left = 302
        Top = 57
        Width = 49
        Height = 17
        DataField = 'ID_COMPROB_AJUSTE'
        DataSource = DSAjustes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label63: TLabel
        Left = 17
        Top = 82
        Width = 57
        Height = 13
        Caption = 'Id Mov Caja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label64: TLabel
        Left = 81
        Top = 82
        Width = 41
        Height = 13
        Caption = 'Id Ajuste'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText37: TDBText
        Left = 80
        Top = 95
        Width = 49
        Height = 17
        DataField = 'ID_AJUSTE_CC'
        DataSource = DSAjustes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbeDetalleCta: TDBEdit
        Left = 16
        Top = 133
        Width = 153
        Height = 23
        TabStop = False
        DataField = 'DETALLE'
        DataSource = DSAjustes
        TabOrder = 3
      end
      object dbeImporteCta: TDBEdit
        Left = 264
        Top = 133
        Width = 121
        Height = 23
        DataField = 'IMPORTE'
        DataSource = DSAjustes
        TabOrder = 4
      end
      object dbcAjuste: TJvDBLookupCombo
        Left = 96
        Top = 53
        Width = 200
        Height = 22
        DropDownWidth = 350
        DisplayAllFields = True
        DataField = 'ID_COMPROB_AJUSTE'
        DataSource = DSAjustes
        LookupField = 'ID_COMPROBANTE'
        LookupDisplay = 'SUCURSAL;DENOMINACION'
        LookupSource = DSCompAjuste
        TabOrder = 2
      end
      object BitBtn11: TBitBtn
        Left = 304
        Top = 160
        Width = 24
        Height = 24
        Action = CancelAjuste
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        Layout = blGlyphTop
        ModalResult = 2
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
      end
      object BitBtn12: TBitBtn
        Left = 328
        Top = 160
        Width = 24
        Height = 24
        Action = posAjustes
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
        Layout = blGlyphTop
        ModalResult = 1
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = False
        TabOrder = 5
      end
      object edNombreCliente: TDBEdit
        Left = 96
        Top = 26
        Width = 257
        Height = 23
        Color = clInfoBk
        DataField = 'NOMBRE'
        DataSource = DSAjustes
        Enabled = False
        TabOrder = 1
      end
      object ceCliente: TJvDBComboEdit
        Left = 17
        Top = 26
        Width = 73
        Height = 23
        ClickKey = 16397
        DataField = 'CODIGO'
        DataSource = DSAjustes
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 16
        TabOrder = 0
        OnButtonClick = BuscarClienteExecute
      end
    end
  end
  object edMuestraCaja: TEdit
    Left = 58
    Top = 19
    Width = 199
    Height = 23
    Color = clInfoBk
    Enabled = False
    TabOrder = 1
  end
  object ceCaja: TJvComboEdit
    Left = 4
    Top = 19
    Width = 48
    Height = 23
    ButtonWidth = 14
    ClickKey = 16397
    Glyph.Data = {
      4E000000424D4E000000000000003E000000280000000A000000040000000100
      010000000000100000000000000000000000020000000200000000000000FFFF
      FF00FFC000003300000033000000FFC00000}
    TabOrder = 0
    Text = ''
    OnButtonClick = ceCajaButtonClick
    OnChange = ceCajaChange
    OnEnter = ceCajaEnter
    OnExit = ceCajaExit
    OnKeyDown = ceCajaKeyDown
    OnKeyPress = ceCajaKeyPress
  end
  object DSPChe3: TDataSetProvider
    DataSet = QChe3
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPChe3UpdateError
    Left = 88
    Top = 408
  end
  object DSPMovEfectivo: TDataSetProvider
    DataSet = QMovEfectivo
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPMovEfectivoUpdateError
    Left = 88
    Top = 464
  end
  object DSPCajaMov: TDataSetProvider
    DataSet = QCajaMov
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 264
  end
  object IBGId_Che3: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CHE3'
    SystemGenerators = False
    Left = 304
    Top = 416
  end
  object IBGId_Efectivo: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOV_EFECTIVO'
    SystemGenerators = False
    Left = 304
    Top = 472
  end
  object IBGId_Caja_Mov: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CAJA_MOV'
    SystemGenerators = False
    Left = 304
    Top = 264
  end
  object ActionList1: TActionList
    Left = 672
    Top = 25
    object PostChe3: TAction
      OnExecute = PostChe3Execute
    end
    object CancelChe3: TAction
      OnExecute = CancelChe3Execute
    end
    object PostEfectivo: TAction
      Caption = '&Confirma'
      OnExecute = PostEfectivoExecute
    end
    object CancelEfectivo: TAction
      Caption = 'C&ancelar'
      OnExecute = CancelEfectivoExecute
    end
    object PostCheque: TAction
      OnExecute = PostChequeExecute
    end
    object CancelCheque: TAction
      OnExecute = CancelChequeExecute
    end
    object PostTCredito: TAction
      OnExecute = PostTCreditoExecute
    end
    object CancelTCredito: TAction
      OnExecute = CancelTCreditoExecute
    end
    object BuscarBanco: TAction
      Caption = 'BuscarBanco'
      OnExecute = BuscarBancoExecute
    end
    object BuscarFormaPago: TAction
      Caption = 'BuscarFormaPago'
      OnExecute = BuscarFormaPagoExecute
    end
    object BuscarTCredito: TAction
      Caption = 'BuscarTCredito'
      OnExecute = BuscarTCreditoExecute
    end
    object BuscarCtaBco: TAction
      Caption = 'BuscarCtaBco'
      OnExecute = BuscarCtaBcoExecute
    end
    object PostTrans: TAction
      OnExecute = PostTransExecute
    end
    object CancelTrans: TAction
      OnExecute = CancelTransExecute
    end
    object PostValoresCompartidos: TAction
      Caption = 'Confirma'
      OnExecute = PostValoresCompartidosExecute
    end
    object CancelValoresCompartidos: TAction
      Caption = 'Cancelar'
      OnExecute = CancelValoresCompartidosExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object posAjustes: TAction
      OnExecute = posAjustesExecute
    end
    object CancelAjuste: TAction
      OnExecute = CancelAjusteExecute
    end
    object ImportarCheques: TAction
      Caption = 'Importar Cheques'
      OnExecute = ImportarChequesExecute
    end
  end
  object DSPMovTCredito: TDataSetProvider
    DataSet = QMovTCredito
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPMovTCreditoUpdateError
    Left = 88
    Top = 553
  end
  object IBGId_TCredito: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOV_TCREDITO'
    SystemGenerators = False
    Left = 304
    Top = 568
  end
  object DSPTransBco: TDataSetProvider
    DataSet = QTransBco
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPTransBcoUpdateError
    Left = 88
    Top = 360
  end
  object IBGId_Trans: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_TRANSF_BANCO_RECIBIDAS'
    SystemGenerators = False
    Left = 304
    Top = 368
  end
  object DSPAnulacionChe: TDataSetProvider
    DataSet = QAnulacionChe
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPAnulacionCheUpdateError
    Left = 88
    Top = 512
  end
  object DSPDebitos: TDataSetProvider
    DataSet = QDebitos
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPDebitosUpdateError
    Left = 88
    Top = 320
  end
  object IBGIdDebito: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_DEBITOS_BANCO'
    SystemGenerators = False
    Left = 304
    Top = 328
  end
  object ibg_id_mov_anula_chePro: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOV_ANULACION_CHE_PRO'
    SystemGenerators = False
    Left = 304
    Top = 520
  end
  object DSDebitos: TDataSource
    DataSet = CDSDebitos
    Left = 232
    Top = 320
  end
  object QDebitos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*, c.Nombre as MuestraCtaCaja from debitos_banco d'
      ' join cuenta_caja c on c.Id_cuenta=d.id_cuenta_banco'
      ' join caja_mov cm on cm.id_mov_caja=d.id_mov_caja'
      'where cm.id_comprobante = :id'
      '')
    Left = 24
    Top = 320
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDebitosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDebitosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDebitosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDebitosID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QDebitosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QDebitosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QDebitosID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Required = True
    end
    object QDebitosMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QDebitosUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object QDebitosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QDebitosORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object QDebitosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QDebitosCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QDebitosMUESTRACTACAJA: TStringField
      FieldName = 'MUESTRACTACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object CDSDebitos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOV_CAJA'
    MasterFields = 'ID_MOV_CAJA'
    MasterSource = DSCajaMov
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDebitos'
    BeforePost = CDSDebitosBeforePost
    AfterPost = CDSDebitosAfterPost
    OnNewRecord = CDSDebitosNewRecord
    Left = 150
    Top = 328
    object CDSDebitosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSDebitosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSDebitosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSDebitosID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSDebitosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSDebitosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSDebitosID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Required = True
    end
    object CDSDebitosMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSDebitosUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object CDSDebitosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSDebitosORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object CDSDebitosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSDebitosCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSDebitosMUESTRACTACAJA: TStringField
      FieldName = 'MUESTRACTACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object QTransBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.*, c.Nombre as MuestraCtaCaja from transf_banco_recibid' +
        'as t'
      ' join cuenta_caja c on c.Id_cuenta=t.id_cuenta_banco'
      ' join caja_mov cm on cm.id_mov_caja=t.id_mov_caja'
      'where cm.id_comprobante = :id')
    Left = 24
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTransBcoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTransBcoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTransBcoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTransBcoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QTransBcoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QTransBcoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QTransBcoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Required = True
    end
    object QTransBcoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QTransBcoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object QTransBcoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QTransBcoORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object QTransBcoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QTransBcoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QTransBcoMUESTRACTACAJA: TStringField
      FieldName = 'MUESTRACTACAJA'
      ProviderFlags = []
      Size = 25
    end
    object QTransBcoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object CDSTransBco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOV_CAJA'
    MasterFields = 'ID_MOV_CAJA'
    MasterSource = DSCajaMov
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTransBco'
    BeforePost = CDSTransBcoBeforePost
    AfterPost = CDSTransBcoAfterPost
    OnNewRecord = CDSTransBcoNewRecord
    Left = 150
    Top = 376
    object CDSTransBcoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTransBcoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTransBcoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTransBcoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSTransBcoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSTransBcoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSTransBcoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Required = True
      OnSetText = CDSTransBcoID_CUENTA_BANCOSetText
    end
    object CDSTransBcoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSTransBcoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      OnSetText = CDSTransBcoUNIDADESSetText
    end
    object CDSTransBcoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSTransBcoORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object CDSTransBcoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSTransBcoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSTransBcoMUESTRACTACAJA: TStringField
      FieldName = 'MUESTRACTACAJA'
      ProviderFlags = []
      Size = 25
    end
    object CDSTransBcoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object DSTransBco: TDataSource
    DataSet = CDSTransBco
    OnStateChange = DSTransBcoStateChange
    Left = 234
    Top = 368
  end
  object QChe3: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select C.*, b.Nombre as MuestraBanco'
      'from  Cheque_Tercero c  '
      '  join caja_mov cm on cm.id_mov_caja=c.id_mov_caja'
      '  left join Bancos B on B.Id_Banco=c.id_Banco'
      'where cm.id_comprobante = :id '
      ''
      '')
    Left = 24
    Top = 416
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QChe3ID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChe3ID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChe3ID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChe3ID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QChe3ID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QChe3NUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QChe3FECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object QChe3FECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object QChe3FECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
    end
    object QChe3FECHA_SALIDA: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
    end
    object QChe3ORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object QChe3DESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 30
    end
    object QChe3UNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Required = True
    end
    object QChe3IMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QChe3DISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QChe3FIRMANTE: TStringField
      FieldName = 'FIRMANTE'
      Size = 30
    end
    object QChe3COTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QChe3ID_MOV_CAJA_EGRESOS: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
    end
    object QChe3ID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QChe3ID_CUENTA_BCO_DEPOSITADO: TIntegerField
      FieldName = 'ID_CUENTA_BCO_DEPOSITADO'
    end
    object QChe3MONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QChe3SALDO_UNIDADES: TFloatField
      FieldName = 'SALDO_UNIDADES'
    end
    object QChe3SALDO_IMPORTE: TFloatField
      FieldName = 'SALDO_IMPORTE'
    end
    object QChe3CUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QChe3SUCURSAL_BCO: TStringField
      FieldName = 'SUCURSAL_BCO'
      Size = 6
    end
    object QChe3NRO_CTA: TStringField
      FieldName = 'NRO_CTA'
      Size = 15
    end
    object QChe3MUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      ProviderFlags = []
    end
    object QChe3E_CHECK: TStringField
      FieldName = 'E_CHECK'
      FixedChar = True
      Size = 1
    end
    object QChe3ID_CTA_CAJA_BCO: TIntegerField
      FieldName = 'ID_CTA_CAJA_BCO'
      Required = True
    end
  end
  object CDSChe3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOV_CAJA'
    MasterFields = 'ID_MOV_CAJA'
    MasterSource = DSCajaMov
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPChe3'
    BeforePost = CDSChe3BeforePost
    AfterPost = CDSChe3AfterPost
    AfterRefresh = CDSChe3AfterRefresh
    OnNewRecord = CDSChe3NewRecord
    Left = 150
    Top = 416
    object CDSChe3ID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChe3ID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChe3ID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChe3ID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSChe3ID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
      OnSetText = CDSChe3ID_BANCOSetText
    end
    object CDSChe3NUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSChe3FECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object CDSChe3FECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object CDSChe3FECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
    end
    object CDSChe3FECHA_SALIDA: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
    end
    object CDSChe3ORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object CDSChe3DESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 30
    end
    object CDSChe3UNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Required = True
      OnSetText = CDSChe3UNIDADESSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSChe3IMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSChe3DISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSChe3FIRMANTE: TStringField
      FieldName = 'FIRMANTE'
      Size = 30
    end
    object CDSChe3COTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSChe3ID_MOV_CAJA_EGRESOS: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
    end
    object CDSChe3ID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSChe3ID_CUENTA_BCO_DEPOSITADO: TIntegerField
      FieldName = 'ID_CUENTA_BCO_DEPOSITADO'
    end
    object CDSChe3MONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSChe3SALDO_UNIDADES: TFloatField
      FieldName = 'SALDO_UNIDADES'
    end
    object CDSChe3SALDO_IMPORTE: TFloatField
      FieldName = 'SALDO_IMPORTE'
    end
    object CDSChe3CUIT: TStringField
      FieldName = 'CUIT'
      OnSetText = CDSChe3CUITSetText
      EditMask = '00-00000000-0;1'
      Size = 13
    end
    object CDSChe3SUCURSAL_BCO: TStringField
      FieldName = 'SUCURSAL_BCO'
      Size = 6
    end
    object CDSChe3NRO_CTA: TStringField
      FieldName = 'NRO_CTA'
      Size = 15
    end
    object CDSChe3MUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      ProviderFlags = []
    end
    object CDSChe3E_CHECK: TStringField
      FieldName = 'E_CHECK'
      FixedChar = True
      Size = 1
    end
    object CDSChe3ID_CTA_CAJA_BCO: TIntegerField
      FieldName = 'ID_CTA_CAJA_BCO'
      Required = True
    end
  end
  object DSChe3: TDataSource
    DataSet = CDSChe3
    OnStateChange = DSChe3StateChange
    Left = 242
    Top = 424
  end
  object QMovEfectivo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select e.* from Mov_Efectivo e '
      ' join caja_mov cm  on cm.id_mov_caja=e.id_mov_caja'
      'where cm.id_comprobante = :id  ')
    Left = 24
    Top = 465
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMovEfectivoID_EFECTIVO: TIntegerField
      FieldName = 'ID_EFECTIVO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovEfectivoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovEfectivoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovEfectivoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QMovEfectivoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object QMovEfectivoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Required = True
    end
    object QMovEfectivoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QMovEfectivoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object QMovEfectivoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object CDSMovEfectivo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOV_CAJA'
    MasterFields = 'ID_MOV_CAJA'
    MasterSource = DSCajaMov
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovEfectivo'
    BeforePost = CDSMovEfectivoBeforePost
    AfterPost = CDSMovEfectivoAfterPost
    OnNewRecord = CDSMovEfectivoNewRecord
    Left = 150
    Top = 472
    object CDSMovEfectivoID_EFECTIVO: TIntegerField
      FieldName = 'ID_EFECTIVO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovEfectivoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovEfectivoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovEfectivoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovEfectivoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSMovEfectivoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Required = True
      OnSetText = CDSMovEfectivoUNIDADESSetText
    end
    object CDSMovEfectivoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSMovEfectivoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovEfectivoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object DSMovEfectivo: TDataSource
    DataSet = CDSMovEfectivo
    OnStateChange = DSMovEfectivoStateChange
    Left = 234
    Top = 464
  end
  object QAnulacionChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Che.*,'
      '  ch.Nombre as MuestraChequera,'
      '  ch.Numero_incial as MuestraNI,'
      '  ch.numero_final as MuestraNF,'
      '  cheq.numero as MuestraNumeroChe,'
      '  cheq.fecha_emision as MuestraEmision,'
      '  cheq.fecha_cobro as MuestraCobro,'
      '  cheq.orden_de as MuestraOrdenDe'
      'from mov_anulacion_che_pro Che'
      '  left join chequera ch on  ch.id_Chequera=Che.Id_Chequera'
      
        '  left join cheque_propio cheq on cheq.id_cheque_pro=Che.id_che_' +
        'anulado'
      '  left join caja_mov cm on cm.id_mov_caja=che.id_caja_mov'
      'where cm.id_comprobante = :id'
      '')
    Left = 24
    Top = 512
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QAnulacionCheID_ANULACION: TIntegerField
      FieldName = 'ID_ANULACION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAnulacionCheID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAnulacionCheID_CAJA_MOV: TIntegerField
      FieldName = 'ID_CAJA_MOV'
      Required = True
    end
    object QAnulacionCheID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QAnulacionCheFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QAnulacionCheUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object QAnulacionCheIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QAnulacionCheID_CHE_ANULADO: TIntegerField
      FieldName = 'ID_CHE_ANULADO'
      Required = True
    end
    object QAnulacionCheID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Required = True
    end
    object QAnulacionCheMUESTRACHEQUERA: TStringField
      FieldName = 'MUESTRACHEQUERA'
      ProviderFlags = []
      Size = 30
    end
    object QAnulacionCheMUESTRANI: TIntegerField
      FieldName = 'MUESTRANI'
      ProviderFlags = []
    end
    object QAnulacionCheMUESTRANF: TIntegerField
      FieldName = 'MUESTRANF'
      ProviderFlags = []
    end
    object QAnulacionCheMUESTRANUMEROCHE: TIntegerField
      FieldName = 'MUESTRANUMEROCHE'
      ProviderFlags = []
    end
    object QAnulacionCheMUESTRAEMISION: TSQLTimeStampField
      FieldName = 'MUESTRAEMISION'
      ProviderFlags = []
    end
    object QAnulacionCheMUESTRACOBRO: TSQLTimeStampField
      FieldName = 'MUESTRACOBRO'
      ProviderFlags = []
    end
    object QAnulacionCheMUESTRAORDENDE: TStringField
      FieldName = 'MUESTRAORDENDE'
      ProviderFlags = []
      Size = 30
    end
  end
  object CDSAnulacionChe: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CAJA_MOV'
    MasterFields = 'ID_MOV_CAJA'
    MasterSource = DSCajaMov
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPAnulacionChe'
    BeforePost = CDSAnulacionCheBeforePost
    AfterPost = CDSAnulacionCheAfterPost
    OnNewRecord = CDSAnulacionCheNewRecord
    Left = 150
    Top = 520
    object CDSAnulacionCheID_ANULACION: TIntegerField
      FieldName = 'ID_ANULACION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnulacionCheID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnulacionCheID_CAJA_MOV: TIntegerField
      FieldName = 'ID_CAJA_MOV'
      Required = True
    end
    object CDSAnulacionCheID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSAnulacionCheFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSAnulacionCheUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object CDSAnulacionCheIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSAnulacionCheID_CHE_ANULADO: TIntegerField
      FieldName = 'ID_CHE_ANULADO'
      Required = True
    end
    object CDSAnulacionCheID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Required = True
    end
    object CDSAnulacionCheMUESTRACHEQUERA: TStringField
      FieldName = 'MUESTRACHEQUERA'
      ProviderFlags = []
      Size = 30
    end
    object CDSAnulacionCheMUESTRANI: TIntegerField
      FieldName = 'MUESTRANI'
      ProviderFlags = []
    end
    object CDSAnulacionCheMUESTRANF: TIntegerField
      FieldName = 'MUESTRANF'
      ProviderFlags = []
    end
    object CDSAnulacionCheMUESTRANUMEROCHE: TIntegerField
      FieldName = 'MUESTRANUMEROCHE'
      ProviderFlags = []
    end
    object CDSAnulacionCheMUESTRAEMISION: TSQLTimeStampField
      FieldName = 'MUESTRAEMISION'
      ProviderFlags = []
    end
    object CDSAnulacionCheMUESTRACOBRO: TSQLTimeStampField
      FieldName = 'MUESTRACOBRO'
      ProviderFlags = []
    end
    object CDSAnulacionCheMUESTRAORDENDE: TStringField
      FieldName = 'MUESTRAORDENDE'
      ProviderFlags = []
      Size = 30
    end
  end
  object DSAnulacioChe: TDataSource
    DataSet = CDSAnulacionChe
    Left = 232
    Top = 512
  end
  object QCajaMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select M.*,'
      '  m.Id_FPago as id_fpagoOld,'
      '  F.descripcion as MuestraFormaPago,'
      '  cc.id_cuenta as MuestraIdCtaCaja ,'
      '  cc.nombre as MuestraCaja,'
      '  ccab.numerocaja as MuestraNroCaja'
      'from Caja_Mov M'
      '  left join cuenta_caja cc on cc.id_cuenta=m.id_cuenta_caja'
      '  left join FormaPago F on F.id_Fpago=M.id_Fpago'
      '  left join caja_cab ccab on ccab.id_caja=m.id_caja'
      
        'where (m.Id_Comprobante=:id) and (m.Tipo_Comprob=:tipo) and (m.t' +
        'ipo_Operacion='#39'I'#39')')
    Left = 24
    Top = 257
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QCajaMovID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaMovID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaMovFECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
    end
    object QCajaMovFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
    end
    object QCajaMovTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object QCajaMovTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QCajaMovCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object QCajaMovID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object QCajaMovNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object QCajaMovHABER: TFloatField
      FieldName = 'HABER'
    end
    object QCajaMovDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object QCajaMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object QCajaMovID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QCajaMovUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object QCajaMovCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QCajaMovID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object QCajaMovMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QCajaMovID_FPAGOOLD: TIntegerField
      FieldName = 'ID_FPAGOOLD'
      ProviderFlags = []
    end
    object QCajaMovMUESTRAFORMAPAGO: TStringField
      FieldName = 'MUESTRAFORMAPAGO'
      ProviderFlags = []
    end
    object QCajaMovMUESTRAIDCTACAJA: TIntegerField
      FieldName = 'MUESTRAIDCTACAJA'
      ProviderFlags = []
    end
    object QCajaMovMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
    object QCajaMovMUESTRANROCAJA: TIntegerField
      FieldName = 'MUESTRANROCAJA'
      ProviderFlags = []
    end
  end
  object CDSCajaMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCajaMov'
    AfterOpen = CDSCajaMovAfterOpen
    BeforeInsert = CDSCajaMovBeforeInsert
    BeforeEdit = CDSCajaMovBeforeEdit
    BeforePost = CDSCajaMovBeforePost
    AfterPost = CDSCajaMovAfterPost
    BeforeDelete = CDSCajaMovBeforeDelete
    AfterDelete = CDSCajaMovAfterDelete
    AfterScroll = CDSCajaMovAfterScroll
    OnNewRecord = CDSCajaMovNewRecord
    Left = 150
    Top = 264
    object CDSCajaMovID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCajaMovID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCajaMovFECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
    end
    object CDSCajaMovFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
    end
    object CDSCajaMovTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSCajaMovTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSCajaMovCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSCajaMovID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSCajaMovNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSCajaMovHABER: TFloatField
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCajaMovDEBE: TFloatField
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCajaMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSCajaMovID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
      OnSetText = CDSCajaMovID_FPAGOSetText
    end
    object CDSCajaMovUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object CDSCajaMovCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSCajaMovID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSCajaMovMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSCajaMovID_FPAGOOLD: TIntegerField
      FieldName = 'ID_FPAGOOLD'
      ProviderFlags = []
    end
    object CDSCajaMovMUESTRAFORMAPAGO: TStringField
      FieldName = 'MUESTRAFORMAPAGO'
      ProviderFlags = []
    end
    object CDSCajaMovMUESTRAIDCTACAJA: TIntegerField
      FieldName = 'MUESTRAIDCTACAJA'
      ProviderFlags = []
    end
    object CDSCajaMovMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
    object CDSCajaMovMUESTRANROCAJA: TIntegerField
      FieldName = 'MUESTRANROCAJA'
      ProviderFlags = []
    end
  end
  object DSCajaMov: TDataSource
    DataSet = CDSCajaMov
    OnStateChange = DSCajaMovStateChange
    Left = 234
    Top = 256
  end
  object QMovTCredito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select M.*, T.Descripcion as MuestraTC'
      'from  Mov_TCredito M '
      ' join  caja_mov cm on cm.id_mov_caja= m.id_mov_caja'
      ' left join T_Credito T on t.Id_Tc=m.id_Tc'
      'where cm.id_comprobante = :id '
      ''
      '')
    Left = 32
    Top = 560
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMovTCreditoID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTCreditoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTCreditoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object QMovTCreditoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QMovTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Required = True
    end
    object QMovTCreditoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QMovTCreditoTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 30
    end
    object QMovTCreditoCAN_CUOTAS: TIntegerField
      FieldName = 'CAN_CUOTAS'
    end
    object QMovTCreditoN_DOCU: TStringField
      FieldName = 'N_DOCU'
      Size = 15
    end
    object QMovTCreditoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object QMovTCreditoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QMovTCreditoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Required = True
    end
    object QMovTCreditoOTROS: TStringField
      FieldName = 'OTROS'
      Size = 30
    end
    object QMovTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QMovTCreditoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object QMovTCreditoUNIDADES_NETO: TFloatField
      FieldName = 'UNIDADES_NETO'
      Required = True
    end
    object QMovTCreditoIMPORTE_NETO: TFloatField
      FieldName = 'IMPORTE_NETO'
      Required = True
    end
    object QMovTCreditoCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Required = True
    end
    object QMovTCreditoVALORCUOTA: TFloatField
      FieldName = 'VALORCUOTA'
    end
    object QMovTCreditoIMPORTE_RECARGO: TFloatField
      FieldName = 'IMPORTE_RECARGO'
    end
    object QMovTCreditoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
    end
    object QMovTCreditoNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
    end
    object QMovTCreditoFECHA_ACREDITACION: TSQLTimeStampField
      FieldName = 'FECHA_ACREDITACION'
    end
    object QMovTCreditoACREDITADA: TStringField
      FieldName = 'ACREDITADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovTCreditoLOTE: TStringField
      FieldName = 'LOTE'
      Size = 5
    end
    object QMovTCreditoTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Size = 8
    end
    object QMovTCreditoMUESTRATC: TStringField
      FieldName = 'MUESTRATC'
      ProviderFlags = []
      Size = 15
    end
    object QMovTCreditoSALDO_IMPORTE: TFloatField
      FieldName = 'SALDO_IMPORTE'
      Required = True
    end
  end
  object CDSMovTCredito: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOV_CAJA'
    MasterFields = 'ID_MOV_CAJA'
    MasterSource = DSCajaMov
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovTCredito'
    BeforePost = CDSMovTCreditoBeforePost
    AfterPost = CDSMovTCreditoAfterPost
    OnNewRecord = CDSMovTCreditoNewRecord
    Left = 150
    Top = 569
    object CDSMovTCreditoID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovTCreditoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovTCreditoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovTCreditoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Required = True
      OnSetText = CDSMovTCreditoID_TCSetText
    end
    object CDSMovTCreditoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovTCreditoTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 30
    end
    object CDSMovTCreditoCAN_CUOTAS: TIntegerField
      FieldName = 'CAN_CUOTAS'
      OnSetText = CDSMovTCreditoCAN_CUOTASSetText
    end
    object CDSMovTCreditoN_DOCU: TStringField
      FieldName = 'N_DOCU'
      Size = 15
    end
    object CDSMovTCreditoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object CDSMovTCreditoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSMovTCreditoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Required = True
    end
    object CDSMovTCreditoOTROS: TStringField
      FieldName = 'OTROS'
      Size = 30
    end
    object CDSMovTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSMovTCreditoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovTCreditoUNIDADES_NETO: TFloatField
      FieldName = 'UNIDADES_NETO'
      Required = True
      OnSetText = CDSMovTCreditoUNIDADES_NETOSetText
    end
    object CDSMovTCreditoIMPORTE_NETO: TFloatField
      FieldName = 'IMPORTE_NETO'
      Required = True
    end
    object CDSMovTCreditoCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Required = True
    end
    object CDSMovTCreditoVALORCUOTA: TFloatField
      FieldName = 'VALORCUOTA'
    end
    object CDSMovTCreditoIMPORTE_RECARGO: TFloatField
      FieldName = 'IMPORTE_RECARGO'
    end
    object CDSMovTCreditoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
    end
    object CDSMovTCreditoNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
    end
    object CDSMovTCreditoFECHA_ACREDITACION: TSQLTimeStampField
      FieldName = 'FECHA_ACREDITACION'
    end
    object CDSMovTCreditoACREDITADA: TStringField
      FieldName = 'ACREDITADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovTCreditoLOTE: TStringField
      FieldName = 'LOTE'
      OnSetText = CDSMovTCreditoLOTESetText
      Size = 5
    end
    object CDSMovTCreditoTERMINAL: TStringField
      FieldName = 'TERMINAL'
      OnSetText = CDSMovTCreditoTERMINALSetText
      Size = 8
    end
    object CDSMovTCreditoMUESTRATC: TStringField
      FieldName = 'MUESTRATC'
      ProviderFlags = []
      Size = 15
    end
    object CDSMovTCreditoSALDO_IMPORTE: TFloatField
      FieldName = 'SALDO_IMPORTE'
      Required = True
    end
  end
  object CDSBuscaBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaBanco'
    Left = 704
    Top = 224
    object CDSBuscaBancoNOMBRE: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Required = True
    end
    object CDSBuscaBancoID_BANCO: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_BANCO'
      Required = True
    end
  end
  object DSPBuscaBanco: TDataSetProvider
    DataSet = DMBuscadores.QBuscaBancos
    Options = []
    Left = 784
    Top = 224
  end
  object CDSBuscaTCredito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaTCredito'
    Left = 704
    Top = 272
    object CDSBuscaTCreditoDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 25
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object CDSBuscaTCreditoID_TC: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_TC'
      Required = True
    end
  end
  object DSPBuscaTCredito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaTCredito
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 784
    Top = 272
  end
  object CDSBuscaCtaCajaBco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCtaCajaBco'
    Left = 704
    Top = 320
    object CDSBuscaCtaCajaBcoNOMBRE: TStringField
      DisplayLabel = 'Cta.Bancaria'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaCtaCajaBcoNRO_CUENTA: TStringField
      DisplayLabel = 'Nro.de Cuenta'
      DisplayWidth = 20
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object CDSBuscaCtaCajaBcoID_CUENTA: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_CUENTA'
      Required = True
    end
  end
  object DSPBuscaCtaCajaBco: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCtaCajaBco
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 784
    Top = 320
  end
  object CDSBuscaFormaPago: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaFormaPago'
    Left = 704
    Top = 368
    object CDSBuscaFormaPagoID_FPAGO: TIntegerField
      DisplayLabel = 'F.Pago'
      DisplayWidth = 15
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSBuscaFormaPagoID_TPAGO: TIntegerField
      DisplayLabel = 'T.Pago'
      DisplayWidth = 15
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSBuscaFormaPagoDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 30
      FieldName = 'DESCRIPCION'
    end
    object CDSBuscaFormaPagoCOTIZACION: TFloatField
      DisplayLabel = 'Cotizaci.'
      DisplayWidth = 25
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSBuscaFormaPagoSIGNO: TStringField
      DisplayLabel = 'Signo'
      DisplayWidth = 10
      FieldName = 'SIGNO'
      Size = 5
    end
    object CDSBuscaFormaPagoMONEDA: TIntegerField
      DisplayLabel = 'Moneda'
      DisplayWidth = 15
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object DSPBuscaFormaPago: TDataSetProvider
    DataSet = DMBuscadores.QBuscaFormaPago
    Options = []
    Left = 792
    Top = 368
  end
  object CDSBuscaCajaCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCajaCab'
    Left = 768
    Top = 176
    object CDSBuscaCajaCabMUESTRACAJA: TStringField
      DisplayLabel = 'Detalle Caja'
      DisplayWidth = 30
      FieldName = 'MUESTRACAJA'
      Size = 25
    end
    object CDSBuscaCajaCabID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Codigo Caja'
      DisplayWidth = 15
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSBuscaCajaCabFECHA_INCIO: TSQLTimeStampField
      DisplayLabel = 'F.Incio'
      DisplayWidth = 28
      FieldName = 'FECHA_INCIO'
      Required = True
      Visible = False
    end
    object CDSBuscaCajaCabFECHA_CIERRE: TSQLTimeStampField
      DisplayLabel = 'F.Cierre'
      DisplayWidth = 28
      FieldName = 'FECHA_CIERRE'
      Visible = False
    end
    object CDSBuscaCajaCabNUMEROCAJA: TIntegerField
      DisplayLabel = 'Nro.Caja'
      DisplayWidth = 15
      FieldName = 'NUMEROCAJA'
      Visible = False
    end
    object CDSBuscaCajaCabID_CAJA: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_CAJA'
      Required = True
    end
  end
  object DSPBuscaCajaCab: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCajaCab
    Options = [poAllowCommandText]
    Left = 784
    Top = 176
  end
  object QChequePropio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Che.*,'
      '  ch.Nombre as MuestraChequera,'
      '  ch.Numero_incial as MuestraNI,'
      '  ch.numero_final as MuestraNF'
      'from cheque_propio Che'
      '  left join chequera ch on  ch.id_Chequera=Che.Id_Chequera'
      'where che.id_cheque_pro = :id')
    Left = 792
    Top = 554
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QChequePropioID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
      Required = True
    end
    object QChequePropioID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object QChequePropioID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object QChequePropioID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QChequePropioID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Required = True
    end
    object QChequePropioID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QChequePropioFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object QChequePropioFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object QChequePropioORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Size = 30
    end
    object QChequePropioNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QChequePropioUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object QChequePropioIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QChequePropioCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QChequePropioID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QChequePropioID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Required = True
    end
    object QChequePropioMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QChequePropioOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 200
    end
    object QChequePropioANULADO: TStringField
      FieldName = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object QChequePropioID_CPBTE_ANULACION_REEMP: TIntegerField
      FieldName = 'ID_CPBTE_ANULACION_REEMP'
      Required = True
    end
    object QChequePropioID_CAJA_MOV_ANULACION: TIntegerField
      FieldName = 'ID_CAJA_MOV_ANULACION'
      Required = True
    end
    object QChequePropioDEBITADO: TStringField
      FieldName = 'DEBITADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QChequePropioFECHA_DEBITO: TSQLTimeStampField
      FieldName = 'FECHA_DEBITO'
    end
    object QChequePropioMUESTRACHEQUERA: TStringField
      FieldName = 'MUESTRACHEQUERA'
      Size = 30
    end
    object QChequePropioMUESTRANI: TIntegerField
      FieldName = 'MUESTRANI'
    end
    object QChequePropioMUESTRANF: TIntegerField
      FieldName = 'MUESTRANF'
    end
  end
  object DSMovTCredito: TDataSource
    DataSet = CDSMovTCredito
    OnStateChange = DSMovTCreditoStateChange
    Left = 234
    Top = 561
  end
  object QFPefectivo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from FormaPago where id_tpago = 1')
    Left = 616
    Top = 472
  end
  object CDSFormaPagoEfec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaFormaPago'
    Left = 704
    Top = 480
    object CDSFormaPagoEfecID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSFormaPagoEfecID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSFormaPagoEfecDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSFormaPagoEfecCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSFormaPagoEfecSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object CDSFormaPagoEfecMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object DSPFormaPagoEfec: TDataSetProvider
    DataSet = QFPefectivo
    Options = []
    Left = 792
    Top = 488
  end
  object QMovValoresComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id_valor,m.id_caja,m.id_cheque, m.id_cuenta_caja,m.id_f' +
        'pago,'
      
        '       m.id_mov_caja,m.unidades,m.importe,m.cotizacion,m.moneda,' +
        'm.id_cheque_compartido,'
      '       ch.fecha_cobro as MuestraFechaCobro,'
      '       ch.fecha_emision as MuestraFechaEmision,'
      '       ch.fecha_entrada as MuestraFechaEntrada,'
      '       ch.fecha_salida as MuestraFechaSalida,'
      '       ch.firmante as MuestraFirmante,'
      '       ch.importe as MuestraImporte,'
      '       ch.numero as MuestraNroChe from mov_valor_compartido m'
      '   left join cheque_tercero ch on ch.id_cheque_ter=m.id_cheque'
      '   left join caja_mov cm on cm.id_mov_caja=m.id_mov_caja'
      'where cm.id_comprobante = :id')
    Left = 24
    Top = 608
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMovValoresCompID_VALOR: TIntegerField
      FieldName = 'ID_VALOR'
      Required = True
    end
    object QMovValoresCompID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object QMovValoresCompID_CHEQUE: TIntegerField
      FieldName = 'ID_CHEQUE'
      Required = True
    end
    object QMovValoresCompID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object QMovValoresCompID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QMovValoresCompID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object QMovValoresCompUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Required = True
    end
    object QMovValoresCompIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QMovValoresCompCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object QMovValoresCompMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QMovValoresCompID_CHEQUE_COMPARTIDO: TIntegerField
      FieldName = 'ID_CHEQUE_COMPARTIDO'
      Required = True
    end
    object QMovValoresCompMUESTRAFECHACOBRO: TSQLTimeStampField
      FieldName = 'MUESTRAFECHACOBRO'
      ProviderFlags = []
    end
    object QMovValoresCompMUESTRAFECHAEMISION: TSQLTimeStampField
      FieldName = 'MUESTRAFECHAEMISION'
      ProviderFlags = []
    end
    object QMovValoresCompMUESTRAFECHAENTRADA: TSQLTimeStampField
      FieldName = 'MUESTRAFECHAENTRADA'
      ProviderFlags = []
    end
    object QMovValoresCompMUESTRAFECHASALIDA: TSQLTimeStampField
      FieldName = 'MUESTRAFECHASALIDA'
      ProviderFlags = []
    end
    object QMovValoresCompMUESTRAFIRMANTE: TStringField
      FieldName = 'MUESTRAFIRMANTE'
      ProviderFlags = []
      Size = 30
    end
    object QMovValoresCompMUESTRAIMPORTE: TFloatField
      FieldName = 'MUESTRAIMPORTE'
      ProviderFlags = []
    end
    object QMovValoresCompMUESTRANROCHE: TIntegerField
      FieldName = 'MUESTRANROCHE'
      ProviderFlags = []
    end
  end
  object CDSMovValoresComp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovValoresComp'
    AfterPost = CDSMovValoresCompAfterPost
    BeforeDelete = CDSMovValoresCompBeforeDelete
    OnNewRecord = CDSMovValoresCompNewRecord
    Left = 152
    Top = 616
    object CDSMovValoresCompID_VALOR: TIntegerField
      FieldName = 'ID_VALOR'
      Required = True
    end
    object CDSMovValoresCompID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSMovValoresCompID_CHEQUE: TIntegerField
      FieldName = 'ID_CHEQUE'
      Required = True
    end
    object CDSMovValoresCompID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovValoresCompID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovValoresCompID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovValoresCompUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Required = True
      OnSetText = CDSMovValoresCompUNIDADESSetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovValoresCompIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovValoresCompCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSMovValoresCompMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSMovValoresCompID_CHEQUE_COMPARTIDO: TIntegerField
      FieldName = 'ID_CHEQUE_COMPARTIDO'
      Required = True
    end
    object CDSMovValoresCompMUESTRAFECHACOBRO: TSQLTimeStampField
      FieldName = 'MUESTRAFECHACOBRO'
      ProviderFlags = []
    end
    object CDSMovValoresCompMUESTRAFECHAEMISION: TSQLTimeStampField
      FieldName = 'MUESTRAFECHAEMISION'
      ProviderFlags = []
    end
    object CDSMovValoresCompMUESTRAFECHAENTRADA: TSQLTimeStampField
      FieldName = 'MUESTRAFECHAENTRADA'
      ProviderFlags = []
    end
    object CDSMovValoresCompMUESTRAFECHASALIDA: TSQLTimeStampField
      FieldName = 'MUESTRAFECHASALIDA'
      ProviderFlags = []
    end
    object CDSMovValoresCompMUESTRAFIRMANTE: TStringField
      FieldName = 'MUESTRAFIRMANTE'
      ProviderFlags = []
      Size = 30
    end
    object CDSMovValoresCompMUESTRAIMPORTE: TFloatField
      FieldName = 'MUESTRAIMPORTE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovValoresCompMUESTRANROCHE: TIntegerField
      FieldName = 'MUESTRANROCHE'
      ProviderFlags = []
    end
  end
  object DSPMovValoresComp: TDataSetProvider
    DataSet = QMovValoresComp
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPMovValoresCompUpdateError
    Left = 88
    Top = 608
  end
  object IBGMovValComp: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOV_VALOR_COMP'
    SystemGenerators = False
    Left = 304
    Top = 616
  end
  object DSMovValoresComp: TDataSource
    DataSet = CDSMovValoresComp
    OnStateChange = DSMovValoresCompStateChange
    Left = 226
    Top = 617
  end
  object CDSCompAjuste: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCompAjuste'
    Left = 784
    Top = 80
    object CDSCompAjusteSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSCompAjusteDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSCompAjusteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSCompAjuste: TDataSource
    DataSet = CDSCompAjuste
    Left = 856
    Top = 80
  end
  object DSPCompAjuste: TDataSetProvider
    DataSet = QCompAjuste
    Options = []
    Left = 720
    Top = 80
  end
  object DSAjustes: TDataSource
    DataSet = CDSAjustes
    OnStateChange = DSAjustesStateChange
    Left = 226
    Top = 665
  end
  object CDSAjustes: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOV_CAJA'
    MasterFields = 'ID_MOV_CAJA'
    MasterSource = DSCajaMov
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAjustes'
    AfterPost = CDSAjustesAfterPost
    OnNewRecord = CDSAjustesNewRecord
    Left = 152
    Top = 672
    object CDSAjustesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAjustesID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjustesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      OnSetText = CDSAjustesCODIGOSetText
      Size = 6
    end
    object CDSAjustesDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSAjustesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSAjustesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSAjustesID_AJUSTE_CC: TIntegerField
      FieldName = 'ID_AJUSTE_CC'
    end
    object CDSAjustesID_COMPROB_AJUSTE: TIntegerField
      FieldName = 'ID_COMPROB_AJUSTE'
      Required = True
    end
    object CDSAjustesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPAjustes: TDataSetProvider
    DataSet = QAjustes
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 664
  end
  object QAjustes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.id,m.codigo,m.id_mov_caja,m.detalle,'
      '       m.importe,m.fecha,m.id_ajuste_cc,'
      '       m.id_comprob_ajuste,c.nombre from mov_caja_ctacte m'
      'left join clientes c on c.codigo=m.codigo'
      'left join caja_mov cm on cm.id_mov_caja=m.id_mov_caja'
      'where cm.id_comprobante = :id')
    Left = 24
    Top = 656
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAjustesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjustesID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QAjustesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QAjustesDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object QAjustesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QAjustesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAjustesID_AJUSTE_CC: TIntegerField
      FieldName = 'ID_AJUSTE_CC'
    end
    object QAjustesID_COMPROB_AJUSTE: TIntegerField
      FieldName = 'ID_COMPROB_AJUSTE'
      Required = True
    end
    object QAjustesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
  end
  object ibgAjuste: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOV_CAJA_CTACTE'
    SystemGenerators = False
    Left = 312
    Top = 672
  end
  object CDSBuscaCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCliente'
    Left = 704
    Top = 424
    object CDSBuscaClienteNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSBuscaClienteRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      DisplayWidth = 35
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSBuscaClienteCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
  end
  object DSPBuscaCliente: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCliente
    Options = []
    Left = 808
    Top = 424
  end
  object ComBuscadorCaja: TComBuscador
    Data = CDSBuscaCajaCab
    Campo = 'id_cuenta_caja'
    Titulo = 'Cajas'
    rOk = False
    Left = 561
    Top = 236
  end
  object ComBuscadorBanco: TComBuscador
    Data = CDSBuscaBanco
    Campo = 'ID_BANCO'
    Titulo = 'Bancos'
    rOk = False
    Left = 633
    Top = 236
  end
  object ComBuscadorTC: TComBuscador
    Data = CDSBuscaTCredito
    Campo = 'ID_TC'
    Titulo = 'Tarjetas de Credito'
    rOk = False
    Left = 616
    Top = 264
  end
  object ComBuscadorCtaBco: TComBuscador
    Data = CDSBuscaCtaCajaBco
    Campo = 'ID_CUENTA'
    Titulo = 'Cuentas de Banco'
    rOk = False
    Left = 584
    Top = 320
  end
  object ComBuscadorFormaPago: TComBuscador
    Data = CDSBuscaFormaPago
    Campo = 'ID_FPAGO'
    Titulo = 'Formas de Pago'
    rOk = False
    Left = 616
    Top = 376
  end
  object ComBuscadorCliente: TComBuscador
    Data = CDSBuscaCliente
    Campo = 'CODIGO'
    Titulo = 'Clientes'
    rOk = False
    Left = 616
    Top = 424
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.codigo,c.nombre,c.razon_social FROM Clientes C'
      'where (c.codigo=:codigo)')
    Left = 792
    Top = 608
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object QEmpresa: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  empresa')
    Left = 648
    Top = 672
    object QEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
  end
  object QCoeficienteTC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Max(coeficiente)'
      '  from t_credito_coeficientes'
      'where id_tc=:id_tc and cuotas=:cuotas')
    Left = 800
    Top = 16
    ParamData = <
      item
        Name = 'ID_TC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CUOTAS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCoeficienteTCMAX: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QCajaCab: TFDQuery
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
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select cc.*, cta.Nombre as MuestraCtaCaja'
      'from Caja_Cab cc'
      '  left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where id_cuenta_caja=:id and estado = 0')
    Left = 464
    Top = 248
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCajaCabMUESTRACTACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QCajaCabNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCajaCabID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaCabID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCajaCabSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
    end
    object QCajaCabOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object QCajaCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object QCajaCabFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object QCajaCabFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
  end
  object QTc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.*,'
      '  s.detalle_stk as MuestraArticulo,'
      '  c.nombre as MuestraCtaBco,'
      '  c.nro_cuenta as MuestraNroCtaBco'
      'from T_Credito t'
      '  left join stock s on s.codigo_stk=t.codigoarticulo'
      '  left join cuenta_caja c on c.id_cuenta=t.id_cuenta_banco'
      'where t.id_tc=:Id')
    Left = 464
    Top = 304
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTcID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTcDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QTcMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QTcCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QTcID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object QTcDIAS_ACREDITACION: TSmallintField
      FieldName = 'DIAS_ACREDITACION'
      Origin = 'DIAS_ACREDITACION'
      Required = True
    end
    object QTcCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QTcRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QTcMUESTRAARTICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAARTICULO'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QTcMUESTRACTABCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTABCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QTcMUESTRANROCTABCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROCTABCO'
      Origin = 'NRO_CUENTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
  end
  object QFormaPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from FormaPago where id_fpago = :id')
    Left = 464
    Top = 352
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFormaPagoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFormaPagoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object QFormaPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object QFormaPagoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QFormaPagoSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QFormaPagoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QFormaPagoACUMULABLE: TStringField
      FieldName = 'ACUMULABLE'
      Origin = 'ACUMULABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBanco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select b.*,'
      '  Loc.Detalle_Postal as MuestraLocalidad,'
      '  Loc.Telediscado as MuestraTelediscado'
      'from bancos b'
      '  left join c_postal loc on loc.id_postal=b.id_postal'
      'where id_banco=:id')
    Left = 464
    Top = 408
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBancoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
    end
    object QBancoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 30
    end
    object QBancoTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Origin = 'TELEFONOS'
    end
    object QBancoSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QBancoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 8
    end
    object QBancoNOTAS: TMemoField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      BlobType = ftMemo
    end
    object QBancoID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
    end
    object QBancoMUESTRALOCALIDAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALOCALIDAD'
      Origin = 'DETALLE_POSTAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QBancoMUESTRATELEDISCADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATELEDISCADO'
      Origin = 'TELEDISCADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
  end
  object QChequera: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ch.*,'
      '  b.Nombre as MuestraBanco,'
      '  cta.Nombre as MuestraCuenta'
      'from chequera ch'
      '  left join bancos b on b.id_banco=ch.id_banco'
      '  left join Cuenta_Caja cta on cta.id_Cuenta=ch.id_cuenta'
      'where ch.id_chequera=:id')
    Left = 464
    Top = 464
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QChequeraID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Origin = 'ID_CHEQUERA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChequeraID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      Required = True
    end
    object QChequeraNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QChequeraNUMERO_INCIAL: TIntegerField
      FieldName = 'NUMERO_INCIAL'
      Origin = 'NUMERO_INCIAL'
      Required = True
    end
    object QChequeraNUMERO_FINAL: TIntegerField
      FieldName = 'NUMERO_FINAL'
      Origin = 'NUMERO_FINAL'
      Required = True
    end
    object QChequeraULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Origin = 'ULTIMO_NUMERO'
      Required = True
    end
    object QChequeraDIFERIDO: TSmallintField
      FieldName = 'DIFERIDO'
      Origin = 'DIFERIDO'
      Required = True
    end
    object QChequeraNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object QChequeraID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QChequeraMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QChequeraCANT_CHE_EMITIDOS: TIntegerField
      FieldName = 'CANT_CHE_EMITIDOS'
      Origin = 'CANT_CHE_EMITIDOS'
    end
    object QChequeraCHEQUERA_TERMINADA: TStringField
      FieldName = 'CHEQUERA_TERMINADA'
      Origin = 'CHEQUERA_TERMINADA'
      FixedChar = True
      Size = 1
    end
    object QChequeraMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QChequeraMUESTRACUENTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACUENTA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object QCtaCajaBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*,'
      '  b.nombre as MuestraBanco'
      'from cuenta_caja cc'
      '  left join bancos b on b.id_banco=cc.id_banco'
      'where cc.id_cuenta=:id')
    Left = 464
    Top = 504
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCtaCajaBcoID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtaCajaBcoID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object QCtaCajaBcoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QCtaCajaBcoNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QCtaCajaBcoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QCtaCajaBcoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QCtaCajaBcoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QCtaCajaBcoMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QCliente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.* ,'
      '  p.telediscado as MuestraTelediscado,'
      '  v.nombre as MuestraVendedor,'
      '  vc.nombre as MuestraCobrador,'
      '  cl.nombre as MuestraCtaCoorporativa,'
      '  g.id as MuestraIDGarante'
      'FROM Clientes C'
      '  left join personal v on v.codigo=c.vendedor'
      '  left join personal vc on vc.codigo=c.cobrador'
      '  left join c_postal p on c.id_cod_postal=p.id_postal'
      '  left join clientes cl on cl.codigo=c.codigo_coorporativo'
      
        '  left join clientes_garantes g on g.codigocliente=c.codigo and ' +
        'g.por_defecto='#39'S'#39
      'where (c.codigo=:codigo)')
    Left = 560
    Top = 672
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClienteNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object QClienteRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClienteDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Origin = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClienteTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object QClienteNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object QClienteCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object QClienteCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Origin = 'CORREOELECTRONICO_2'
      Size = 100
    end
    object QClienteID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object QClienteID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
      Origin = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object QClienteID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
      Origin = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QClienteID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
      Origin = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QClienteID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
      Origin = 'ID_TIKETPORDEFECTO'
    end
    object QClienteID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
      Origin = 'ID_RECIBOPORDEFECTO'
    end
    object QClienteTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Origin = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClienteID_PLANTILLA: TIntegerField
      FieldName = 'ID_PLANTILLA'
      Origin = 'ID_PLANTILLA'
      Required = True
    end
    object QClientePERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Origin = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClienteINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Origin = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClienteFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
      Origin = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object QClienteCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 50
    end
    object QClienteTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Origin = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QClienteCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object QClienteCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object QClienteLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Origin = 'LONGITUD'
      Size = 25
    end
    object QClienteLATITUD: TStringField
      FieldName = 'LATITUD'
      Origin = 'LATITUD'
      Size = 25
    end
    object QClienteDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Origin = 'DIRECCION_CALLE'
      Size = 40
    end
    object QClienteDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Origin = 'DIRECCION_NUMERO'
      Size = 10
    end
    object QClienteDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Origin = 'DIRECCION_PISO'
      Size = 10
    end
    object QClienteDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Origin = 'DIRECCION_DEPTO'
      Size = 10
    end
    object QClienteDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Origin = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClienteMES_ADICIONAL: TIntegerField
      FieldName = 'MES_ADICIONAL'
      Origin = 'MES_ADICIONAL'
    end
    object QClienteMES_SEMESTRAL: TIntegerField
      FieldName = 'MES_SEMESTRAL'
      Origin = 'MES_SEMESTRAL'
    end
    object QClienteMOROSO: TStringField
      FieldName = 'MOROSO'
      Origin = 'MOROSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientePLANTILLA_CIVA: TStringField
      FieldName = 'PLANTILLA_CIVA'
      Origin = 'PLANTILLA_CIVA'
      FixedChar = True
      Size = 1
    end
    object QClienteOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object QClienteOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Origin = 'OBSERVACIONES2'
      Size = 60
    end
    object QClienteAVISO: TStringField
      FieldName = 'AVISO'
      Origin = 'AVISO'
      Size = 250
    end
    object QClienteRUBRO: TIntegerField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
    end
    object QClienteENVIAR_CPTE_MAIL: TStringField
      FieldName = 'ENVIAR_CPTE_MAIL'
      Origin = 'ENVIAR_CPTE_MAIL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClienteNRO_IP: TStringField
      FieldName = 'NRO_IP'
      Origin = 'NRO_IP'
      Size = 15
    end
    object QClienteCHEQUES: TStringField
      FieldName = 'CHEQUES'
      Origin = 'CHEQUES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClienteCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QClienteLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QClienteCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object QClienteEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Origin = 'EMITE_REMITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClienteEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Origin = 'EMITE_FACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClienteNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClienteACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object QClienteLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
    end
    object QClienteSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
      Origin = 'SALDOINICIAL'
    end
    object QClienteOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QClienteFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object QClienteFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object QClienteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QClienteZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QClienteVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QClienteULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object QClienteLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
    end
    object QClienteFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
  end
  object QCtasBancarias: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.id_cuenta,cc.nombre,cc.nro_cuenta,'
      '  b.nombre as MuestraBanco'
      'from cuenta_caja cc'
      '  left join bancos b on b.id_banco=cc.id_banco'
      'where id_tipo_cta=2')
    Left = 408
    Top = 616
  end
  object DSCtasBancarias: TDataSource
    DataSet = CDSCtasBancarias
    OnStateChange = DSAjustesStateChange
    Left = 650
    Top = 617
  end
  object DSPCtaBancarias: TDataSetProvider
    DataSet = QCtasBancarias
    Options = []
    Left = 496
    Top = 616
  end
  object CDSCtasBancarias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaBancarias'
    Left = 560
    Top = 616
  end
  object QCompAjuste: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_comprobante,c.denominacion,s.detalle as sucursal fro' +
        'm comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'where c.tipo_comprob='#39'AJ'#39)
    Left = 672
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 144
    object ImportarCheques1: TMenuItem
      Action = ImportarCheques
    end
  end
end

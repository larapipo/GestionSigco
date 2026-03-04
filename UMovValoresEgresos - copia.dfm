object FrameMovValoresEgresos: TFrameMovValoresEgresos
  Left = 0
  Top = 0
  Width = 1254
  Height = 815
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Anchors = [akLeft, akTop, akRight, akBottom]
  BiDiMode = bdLeftToRight
  Color = clBtnFace
  ParentBiDiMode = False
  ParentColor = False
  TabOrder = 0
  PixelsPerInch = 120
  object lbTotalValores: TLabel
    Left = 255
    Top = 250
    Width = 33
    Height = 13
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    Caption = '0.000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label25: TLabel
    Left = 8
    Top = 250
    Width = 90
    Height = 13
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Total Ingresado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText12: TDBText
    Left = 191
    Top = 3
    Width = 80
    Height = 21
    Cursor = crHandPoint
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
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
  object DBText2: TDBText
    Left = 75
    Top = 3
    Width = 80
    Height = 21
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataField = 'MUESTRANROCAJA'
    DataSource = DSCajaMov
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label41: TLabel
    Left = 50
    Top = 3
    Width = 21
    Height = 14
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Nro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lb1: TLabel
    Left = 10
    Top = 274
    Width = 34
    Height = 13
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Resto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbResto: TLabel
    Left = 267
    Top = 274
    Width = 21
    Height = 13
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Alignment = taRightJustify
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RxLabel4: TJvLabel
    Left = 5
    Top = 3
    Width = 22
    Height = 14
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Caja'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = [fsUnderline]
    ParentFont = False
    ShadowSize = 1
    ShadowPos = spLeftTop
    Transparent = True
    OnClick = RxLabel4Click
    OnMouseMove = RxLabel4MouseMove
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Times New Roman'
    HotTrackFont.Style = []
  end
  object spLoteCheques: TSpeedButton
    Left = 271
    Top = 20
    Width = 29
    Height = 27
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000333333FF333333FF0000
      0000000000000000000000000000000000000000000000000000000000003333
      33FF333333FF333333FF333333FF333333FF333333FF0F0F0F4D0F0F0F4D3333
      33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
      33FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333FF00000000000000003333
      33FF00000000242424B3242424B3242424B3242424B300000000000000002424
      24B3242424B3242424B3242424B300000000333333FF00000000000000003333
      33FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333FF00000000000000003333
      33FF00000000242424B3242424B3242424B3242424B300000000000000002424
      24B3242424B3242424B3242424B300000000333333FF00000000000000003333
      33FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333FF00000000000000003333
      33FF00000000242424B3242424B3242424B3242424B300000000000000002424
      24B3242424B3242424B3242424B300000000333333FF00000000000000003333
      33FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333FF00000000000000003333
      33FF00000000242424B3242424B3242424B3242424B300000000000000002424
      24B3242424B3242424B3242424B300000000333333FF00000000000000003333
      33FF0000000000000000000000000000000000000000333333FF333333FF0000
      000000000000000000000000000000000000333333FF00000000000000003333
      33FF333333FF333333FF333333FF333333FF333333FF0F0F0F4D0F0F0F4D3333
      33FF333333FF333333FF333333FF333333FF333333FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    OnClick = spLoteChequesClick
  end
  object JvDBStatusLabel1: TJvDBStatusLabel
    Left = 10
    Top = 295
    Width = 96
    Height = 13
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DSCajaMov
    Style = lsRecordNo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object dbgMovimientos: TDBGrid
    Left = 5
    Top = 55
    Width = 289
    Height = 184
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DSCajaMov
    FixedColor = clFuchsia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColEnter = dbgMovimientosColEnter
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
        Width = 33
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
        Width = 81
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
        Width = 71
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'HABER'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Importe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end>
  end
  object pcValores: TPageControl
    Left = 308
    Top = 3
    Width = 485
    Height = 270
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = tsChe3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HotTrack = True
    MultiLine = True
    ParentFont = False
    TabOrder = 3
    OnChanging = pcValoresChanging
    object tsEfectivo: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Efectivo'
      object DBText4: TDBText
        Left = 4
        Top = 238
        Width = 52
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CAJA'
        DataSource = DSMovEfectivo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 64
        Top = 238
        Width = 81
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSMovEfectivo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtID_EFECTIVO: TDBText
        Left = 345
        Top = 4
        Width = 81
        Height = 18
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_EFECTIVO'
        DataSource = DSMovEfectivo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxLabel1: TJvLabel
        Left = 11
        Top = 20
        Width = 56
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Unidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object RxLabel2: TJvLabel
        Left = 11
        Top = 67
        Width = 62
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Cotizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object RxLabel3: TJvLabel
        Left = 11
        Top = 111
        Width = 45
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object lbMuestraSaldo: TJvLabel
        Left = 191
        Top = 40
        Width = 106
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Saldo Disponible'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -15
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object lbSaldoCaja: TJvLabel
        Left = 336
        Top = 40
        Width = 26
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -14
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object DBText21: TDBText
        Left = 170
        Top = 87
        Width = 271
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'MUESTRAFORMAPAGO'
        DataSource = DSCajaMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeUnidades: TDBEdit
        Left = 11
        Top = 40
        Width = 151
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'UNIDADES'
        DataSource = DSMovEfectivo
        TabOrder = 0
      end
      object dbeCotizacion: TDBEdit
        Left = 11
        Top = 87
        Width = 151
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Color = clInfoBk
        DataField = 'COTIZACION'
        DataSource = DSMovEfectivo
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbeImporte: TDBEdit
        Left = 11
        Top = 131
        Width = 151
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Color = clInfoBk
        DataField = 'IMPORTE'
        DataSource = DSMovEfectivo
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
      object btOkEfectivo: TBitBtn
        Left = 309
        Top = 160
        Width = 87
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
      object btCancelarEfectivo: TBitBtn
        Left = 209
        Top = 160
        Width = 87
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Che.de 3'#186
      ImageIndex = 2
      object Label8: TLabel
        Left = 6
        Top = 6
        Width = 31
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Banco'
        Transparent = True
      end
      object Label9: TLabel
        Left = 348
        Top = 6
        Width = 20
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nro:'
        Transparent = True
      end
      object Label10: TLabel
        Left = 6
        Top = 40
        Width = 48
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Fecha de '#13#10'Emisi'#243'n'
        Transparent = True
      end
      object Label11: TLabel
        Left = 179
        Top = 42
        Width = 48
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Fecha de '#13#10'Cobro'
        Transparent = True
      end
      object Label12: TLabel
        Left = 6
        Top = 73
        Width = 48
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Fecha de '#13#10'Entrada'
        Transparent = True
      end
      object Label13: TLabel
        Left = 179
        Top = 73
        Width = 48
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Fecha de '#13#10'Salida'
        Transparent = True
      end
      object Label14: TLabel
        Left = 6
        Top = 139
        Width = 104
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Entregado por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 362
        Top = 80
        Width = 6
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 6
        Top = 114
        Width = 90
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Entregado a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 129
        Top = 3
        Width = 214
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'MUESTRABANCO'
        DataSource = DSChe3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 6
        Top = 164
        Width = 61
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Firmante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 354
        Top = 50
        Width = 19
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Uni.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 8
        Top = 192
        Width = 108
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nro.Cuit Emisor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText6: TDBText
        Left = 4
        Top = 214
        Width = 52
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CAJA'
        DataSource = DSChe3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 64
        Top = 214
        Width = 81
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSChe3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbtID_che3: TDBText
        Left = 320
        Top = 214
        Width = 81
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CHEQUE_TER'
        DataSource = DSChe3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText20: TDBText
        Left = 129
        Top = 24
        Width = 214
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'MUESTRACTABANCARIA'
        DataSource = DSChe3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Button2: TButton
        Left = 100
        Top = 5
        Width = 21
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = BuscarBanco
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = False
      end
      object BitBtn2: TBitBtn
        Left = 426
        Top = 195
        Width = 30
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
        TabOrder = 12
      end
      object BitBtn3: TBitBtn
        Left = 464
        Top = 195
        Width = 30
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
        TabOrder = 11
      end
      object DBEBancoChe3: TDBEdit
        Left = 50
        Top = 3
        Width = 44
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        DataField = 'ID_BANCO'
        DataSource = DSChe3
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 0
        OnKeyPress = DBEBancoChe3KeyPress
      end
      object DBEEntregadoPorChe3: TDBEdit
        Left = 124
        Top = 134
        Width = 331
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ORIGEN'
        DataSource = DSChe3
        Enabled = False
        TabOrder = 9
      end
      object DBENroChe3: TDBEdit
        Left = 378
        Top = 6
        Width = 111
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NUMERO'
        DataSource = DSChe3
        Enabled = False
        TabOrder = 2
      end
      object DBEEntregadoAChe3: TDBEdit
        Left = 124
        Top = 108
        Width = 331
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DESTINO'
        DataSource = DSChe3
        TabOrder = 8
      end
      object dbeunidadesChe3: TDBEdit
        Left = 381
        Top = 48
        Width = 102
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'UNIDADES'
        DataSource = DSChe3
        TabOrder = 7
        OnKeyDown = dbeunidadesChe3KeyDown
      end
      object DBEdit12: TDBEdit
        Left = 124
        Top = 162
        Width = 331
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'FIRMANTE'
        DataSource = DSChe3
        Enabled = False
        TabOrder = 10
      end
      object dbeImporteChe3: TDBEdit
        Left = 385
        Top = 76
        Width = 98
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'IMPORTE'
        DataSource = DSChe3
        Enabled = False
        TabOrder = 13
      end
      object DBEdit22: TDBEdit
        Left = 124
        Top = 189
        Width = 151
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CUIT'
        DataSource = DSChe3
        TabOrder = 14
      end
      object DBDFechaEmisionChe3: TJvDBDateEdit
        Left = 69
        Top = 48
        Width = 92
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'FECHA_EMISION'
        DataSource = DSChe3
        BorderStyle = bsNone
        ButtonFlat = True
        BevelEdges = [beBottom]
        BevelInner = bvNone
        BevelKind = bkFlat
        Enabled = False
        ButtonWidth = 26
        ShowNullDate = False
        TabOrder = 3
      end
      object DBDFechaCobroChe3: TJvDBDateEdit
        Left = 235
        Top = 44
        Width = 92
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'FECHA_COBRO'
        DataSource = DSChe3
        BorderStyle = bsNone
        ButtonFlat = True
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        Enabled = False
        ButtonWidth = 26
        ShowNullDate = False
        TabOrder = 4
      end
      object DBDFechaIngresoChe3: TJvDBDateEdit
        Left = 69
        Top = 76
        Width = 109
        Height = 22
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'FECHA_ENTRADA'
        DataSource = DSChe3
        BorderStyle = bsNone
        ButtonFlat = True
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        Flat = False
        ParentFlat = False
        Enabled = False
        ButtonWidth = 26
        ShowNullDate = False
        TabOrder = 5
      end
      object DBDFechaEgresoChe3: TJvDBDateEdit
        Left = 235
        Top = 76
        Width = 92
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'FECHA_SALIDA'
        DataSource = DSChe3
        BorderStyle = bsNone
        ButtonFlat = True
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        ButtonWidth = 26
        ShowNullDate = False
        TabOrder = 6
      end
    end
    object tsCheques: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Cheques Propios'
      ImageIndex = 3
      object DBText1: TDBText
        Left = 84
        Top = 16
        Width = 251
        Height = 22
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'MUESTRACHEQUERA'
        DataSource = DSCheques
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 314
        Top = 16
        Width = 20
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nro:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 6
        Top = 105
        Width = 82
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Pagese'#13#10'a la Orden de:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 9
        Top = 52
        Width = 62
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Mar del Plata'
        Transparent = True
      end
      object Label5: TLabel
        Left = 303
        Top = 43
        Width = 25
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Unid.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 6
        Top = 135
        Width = 37
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Son'#13#10'pesos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 6
        Top = 81
        Width = 66
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Para cobrar el'
        Transparent = True
      end
      object Label18: TLabel
        Left = 311
        Top = 73
        Width = 9
        Height = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 1
        Top = 222
        Width = 77
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Numeraci'#243'n del:'
      end
      object Label35: TLabel
        Left = 191
        Top = 222
        Width = 8
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'al'
      end
      object dbNI: TDBText
        Left = 101
        Top = 222
        Width = 82
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taCenter
        DataField = 'MUESTRANI'
        DataSource = DSCheques
      end
      object dbNF: TDBText
        Left = 211
        Top = 222
        Width = 82
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taCenter
        DataField = 'MUESTRANF'
        DataSource = DSCheques
      end
      object DBText15: TDBText
        Left = 345
        Top = -1
        Width = 58
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CAJA'
        DataSource = DSCheques
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object DBText16: TDBText
        Left = 411
        Top = -1
        Width = 62
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSCheques
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 205
        Top = 52
        Width = 64
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Fecha D'#233'bito'
        Transparent = True
      end
      object DBText17: TDBText
        Left = 198
        Top = 77
        Width = 71
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        DataField = 'FECHA_DEBITO'
        DataSource = DSCheques
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label62: TLabel
        Left = 155
        Top = -1
        Width = 29
        Height = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Id Mov'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText36: TDBText
        Left = 198
        Top = -1
        Width = 82
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_MOV_CAJA'
        DataSource = DSCheques
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label47: TLabel
        Left = 272
        Top = -1
        Width = 46
        Height = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Id Caja/Cta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText19: TDBText
        Left = 3
        Top = -1
        Width = 81
        Height = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CHEQUE_PRO'
        DataSource = DSCheques
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 58
        Top = 15
        Width = 20
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = False
        OnClick = BuscarChequeraExecute
      end
      object btCancel: TBitBtn
        Left = 391
        Top = 184
        Width = 30
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
        TabOrder = 9
      end
      object btPost: TBitBtn
        Left = 421
        Top = 184
        Width = 30
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
        TabOrder = 8
      end
      object pnAnulado: TPanel
        Left = 393
        Top = 222
        Width = 91
        Height = 23
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 11
        object dbAnulado: TDBCheckBox
          Left = 0
          Top = 0
          Width = 88
          Height = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          AllowGrayed = True
          Caption = 'Anulado'
          DataField = 'ANULADO'
          DataSource = DSCheques
          TabOrder = 0
        end
      end
      object dbObs: TDBMemo
        Left = 10
        Top = 173
        Width = 375
        Height = 41
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'OBSERVACIONES'
        DataSource = DSCheques
        ReadOnly = True
        TabOrder = 12
      end
      object dbeFechaEmision: TJvDBDateEdit
        Left = 99
        Top = 47
        Width = 92
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'FECHA_EMISION'
        DataSource = DSCheques
        ButtonFlat = True
        CheckOnExit = True
        DialogTitle = 'Fecha Emision'
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        Flat = False
        ParentFlat = False
        ButtonWidth = 26
        ShowNullDate = False
        TabOrder = 3
        OnExit = dbeFechaEmisionExit
      end
      object dbeFechaCobro: TJvDBDateEdit
        Left = 99
        Top = 76
        Width = 92
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'FECHA_COBRO'
        DataSource = DSCheques
        ButtonFlat = True
        CheckOnExit = True
        DialogTitle = 'Fecha Emision'
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        Flat = False
        ParentFlat = False
        ButtonWidth = 26
        ShowNullDate = False
        TabOrder = 4
        OnExit = dbeFechaCobroExit
      end
      object DBEChequera: TDBEdit
        Left = 6
        Top = 17
        Width = 52
        Height = 18
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ID_CHEQUERA'
        DataSource = DSCheques
        TabOrder = 0
        OnKeyPress = DBEChequeraKeyPress
      end
      object DBENroChe: TDBEdit
        Left = 344
        Top = 16
        Width = 112
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'NUMERO'
        DataSource = DSCheques
        TabOrder = 2
        OnExit = DBENroCheExit
      end
      object DBEOrdenDe: TDBEdit
        Left = 96
        Top = 109
        Width = 372
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ORDEN_DE'
        DataSource = DSCheques
        TabOrder = 6
      end
      object dbeUnidadesCheque: TDBEdit
        Left = 344
        Top = 42
        Width = 112
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'UNIDADES'
        DataSource = DSCheques
        TabOrder = 5
        OnKeyDown = dbeUnidadesChequeKeyDown
      end
      object DBEImporteLetras: TDBEdit
        Left = 48
        Top = 140
        Width = 432
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataSource = DSCheques
        Enabled = False
        TabOrder = 7
      end
      object dbeImporteCheque: TDBEdit
        Left = 346
        Top = 77
        Width = 108
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'IMPORTE'
        DataSource = DSCheques
        Enabled = False
        TabOrder = 10
      end
    end
    object tsTransf: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Transferencias'
      ImageIndex = 3
      object Label19: TLabel
        Left = 20
        Top = 10
        Width = 37
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Numero'
        FocusControl = dbeNumero
      end
      object Label20: TLabel
        Left = 110
        Top = 10
        Width = 61
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Cta.Bancaria'
      end
      object Label21: TLabel
        Left = 20
        Top = 58
        Width = 45
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Unidades'
        FocusControl = dbeUnidadesTx
      end
      object Label22: TLabel
        Left = 110
        Top = 58
        Width = 35
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Importe'
        FocusControl = dbeImporteTx
      end
      object Label23: TLabel
        Left = 200
        Top = 58
        Width = 52
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'A Favor de'
        FocusControl = dbeOrigenTx
      end
      object Label31: TLabel
        Left = 242
        Top = 115
        Width = 160
        Height = 29
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Transferencias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 13
        Top = 177
        Width = 52
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CAJA'
        DataSource = DSTransBco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 73
        Top = 177
        Width = 81
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSTransBco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 25
        Top = 107
        Width = 30
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Fecha'
        FocusControl = dbeUnidadesTx
      end
      object dbeNumero: TDBEdit
        Left = 20
        Top = 30
        Width = 80
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'NUMERO'
        DataSource = DSTransBco
        TabOrder = 0
      end
      object dbeMuestraCta: TDBEdit
        Left = 200
        Top = 30
        Width = 193
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRACTACAJA'
        DataSource = DSTransBco
        Enabled = False
        TabOrder = 2
      end
      object dbeUnidadesTx: TDBEdit
        Left = 20
        Top = 78
        Width = 80
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'UNIDADES'
        DataSource = DSTransBco
        TabOrder = 3
      end
      object dbeImporteTx: TDBEdit
        Left = 110
        Top = 78
        Width = 80
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        Color = clInfoBk
        DataField = 'IMPORTE'
        DataSource = DSTransBco
        Enabled = False
        TabOrder = 4
      end
      object dbeOrigenTx: TDBEdit
        Left = 200
        Top = 78
        Width = 230
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        Color = clInfoBk
        DataField = 'ORIGEN'
        DataSource = DSTransBco
        Enabled = False
        TabOrder = 5
      end
      object BitBtn4: TBitBtn
        Left = 316
        Top = 160
        Width = 30
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
        Left = 354
        Top = 160
        Width = 30
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
      object rxdcCtaBco: TJvDBComboEdit
        Left = 110
        Top = 30
        Width = 81
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 4
        Margins.Bottom = 4
        ClickKey = 16397
        DataField = 'ID_CUENTA_BANCO'
        DataSource = DSTransBco
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 20
        TabOrder = 1
        OnButtonClick = BuscarCtaBcoExecute
      end
      object DBEdit1: TJvDBDateEdit
        Left = 20
        Top = 124
        Width = 134
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        DataField = 'FECHA'
        DataSource = DSTransBco
        Color = clInfoBk
        ButtonWidth = 26
        ShowNullDate = False
        TabOrder = 8
      end
    end
    object tsDebito: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'D'#233'bitos'
      ImageIndex = 4
      object Label24: TLabel
        Left = 20
        Top = 10
        Width = 37
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Numero'
        FocusControl = dbeNroDebito
      end
      object Label26: TLabel
        Left = 110
        Top = 10
        Width = 61
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Cta.Bancaria'
      end
      object Label27: TLabel
        Left = 20
        Top = 58
        Width = 45
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Unidades'
        FocusControl = dbeUnidadesDebito
      end
      object Label28: TLabel
        Left = 110
        Top = 58
        Width = 35
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Importe'
        FocusControl = ImporteDebito
      end
      object Label29: TLabel
        Left = 200
        Top = 58
        Width = 63
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Originado por'
        FocusControl = dbeOriginadoDebito
      end
      object Label30: TLabel
        Left = 360
        Top = 118
        Width = 83
        Height = 29
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'D'#233'bitos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 20
        Top = 171
        Width = 52
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CAJA'
        DataSource = DSDebitos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 73
        Top = 171
        Width = 81
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'ID_CUENTA_CAJA'
        DataSource = DSDebitos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label44: TLabel
        Left = 20
        Top = 106
        Width = 30
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Fecha'
        FocusControl = DBEdit2
      end
      object dbeNroDebito: TDBEdit
        Left = 20
        Top = 30
        Width = 80
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'NUMERO'
        DataSource = DSDebitos
        TabOrder = 0
      end
      object dbeMuestraCtaDebito: TDBEdit
        Left = 200
        Top = 30
        Width = 193
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRACTACAJA'
        DataSource = DSDebitos
        Enabled = False
        TabOrder = 2
      end
      object dbeUnidadesDebito: TDBEdit
        Left = 20
        Top = 78
        Width = 80
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'UNIDADES'
        DataSource = DSDebitos
        TabOrder = 3
      end
      object ImporteDebito: TDBEdit
        Left = 110
        Top = 78
        Width = 80
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        Color = clInfoBk
        DataField = 'IMPORTE'
        DataSource = DSDebitos
        Enabled = False
        TabOrder = 4
      end
      object dbeOriginadoDebito: TDBEdit
        Left = 200
        Top = 78
        Width = 230
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        Color = clInfoBk
        DataField = 'ORIGEN'
        DataSource = DSDebitos
        Enabled = False
        TabOrder = 5
      end
      object BitBtn5: TBitBtn
        Left = 324
        Top = 164
        Width = 30
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = CancelDebito
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
      object BitBtn6: TBitBtn
        Left = 354
        Top = 164
        Width = 30
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = PosDebito
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
      object rcdcIdCtaBcoDebito: TJvDBComboEdit
        Left = 110
        Top = 30
        Width = 81
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 4
        Margins.Bottom = 4
        ClickKey = 16397
        DataField = 'ID_CUENTA_BANCO'
        DataSource = DSDebitos
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 20
        TabOrder = 1
        OnButtonClick = BuscarCtaBcoExecute
      end
      object DBEdit2: TJvDBDateEdit
        Left = 20
        Top = 126
        Width = 134
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'FECHA'
        DataSource = DSDebitos
        ButtonWidth = 26
        ShowNullDate = False
        TabOrder = 8
      end
    end
    object tsTarjeta: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Tarjeta Credito'
      ImageIndex = 5
      object pnTarjeta: TPanel
        Left = -4
        Top = 0
        Width = 507
        Height = 229
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Color = clTeal
        ParentBackground = False
        TabOrder = 0
        object Bevel1: TBevel
          Left = 10
          Top = 10
          Width = 487
          Height = 207
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Shape = bsFrame
          Style = bsRaised
        end
        object Label32: TLabel
          Left = 20
          Top = 20
          Width = 84
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Tarjeta de Credito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 250
          Top = 20
          Width = 69
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Fecha Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 20
          Top = 66
          Width = 64
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Fecha Cupon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 396
          Top = 15
          Width = 42
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Cuotas'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 20
          Top = 117
          Width = 45
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Unidades'
          FocusControl = dbeUniTC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 150
          Top = 117
          Width = 35
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Importe'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 170
          Top = 66
          Width = 86
          Height = 13
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Numero de Cupon'
          FocusControl = dbeNumeroCupon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText13: TDBText
          Left = 20
          Top = 173
          Width = 52
          Height = 22
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'ID_CAJA'
          DataSource = DSMovTCCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText14: TDBText
          Left = 79
          Top = 173
          Width = 81
          Height = 22
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'ID_CUENTA_CAJA'
          DataSource = DSMovTCCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText18: TDBText
          Left = 79
          Top = 190
          Width = 222
          Height = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'MUESTRANROTC'
          DataSource = DSMovTCCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 20
          Top = 190
          Width = 44
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Nro.Tc:'
          FocusControl = dbeUniTC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit4: TDBEdit
          Left = 390
          Top = 35
          Width = 55
          Height = 44
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'CUOTAS'
          DataSource = DSMovTCCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -31
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object dbeUniTC: TDBEdit
          Left = 20
          Top = 137
          Width = 101
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'UNIDADES'
          DataSource = DSMovTCCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 150
          Top = 137
          Width = 100
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Color = clInfoBk
          DataField = 'IMPORTE'
          DataSource = DSMovTCCompra
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dbeMuestraTarjeta: TDBEdit
          Left = 100
          Top = 40
          Width = 141
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Color = clInfoBk
          DataField = 'MUESTRATC'
          DataSource = DSMovTCCompra
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dbeNumeroCupon: TDBEdit
          Left = 170
          Top = 86
          Width = 121
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'NUMERO_CUPON'
          DataSource = DSMovTCCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object BitBtn9: TBitBtn
          Left = 285
          Top = 173
          Width = 89
          Height = 29
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = CancelaTC
          Cancel = True
          Caption = 'Cancela'
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
          TabOrder = 9
        end
        object BitBtn10: TBitBtn
          Left = 386
          Top = 173
          Width = 89
          Height = 29
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = PostTC
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
          TabOrder = 8
        end
        object dbdFechaCupon: TJvDBDateEdit
          Left = 20
          Top = 87
          Width = 101
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'FECHA_CUPON'
          DataSource = DSMovTCCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 4
        end
        object dbdFechaCompra: TJvDBDateEdit
          Left = 250
          Top = 40
          Width = 103
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 4
          Margins.Bottom = 4
          DataField = 'FECHA_COMPRA'
          DataSource = DSMovTCCompra
          Color = clInfoBk
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 2
        end
        object dbcTC: TJvDBComboEdit
          Left = 20
          Top = 40
          Width = 71
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 4
          Margins.Bottom = 4
          ClickKey = 16397
          DataField = 'ID_TARJETA'
          DataSource = DSMovTCCompra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ButtonWidth = 20
          ParentFont = False
          TabOrder = 0
          OnButtonClick = BuscarTCreditoExecute
          OnKeyDown = dbcTCKeyDown
          OnKeyPress = dbcTCKeyPress
        end
      end
    end
  end
  object edMuestraCaja: TEdit
    Left = 70
    Top = 22
    Width = 198
    Height = 21
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ceCaja: TJvComboEdit
    Left = 5
    Top = 22
    Width = 60
    Height = 21
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ButtonWidth = 20
    ClickKey = 16397
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      4E000000424D4E000000000000003E000000280000000A000000040000000100
      010000000000100000000000000000000000020000000200000000000000FFFF
      FF00FFC000003300000033000000FFC00000}
    ParentFont = False
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
    Left = 86
    Top = 384
  end
  object DSPMovEfectivo: TDataSetProvider
    DataSet = QMovEfectivo
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPMovEfectivoUpdateError
    Left = 86
    Top = 432
  end
  object DSPCajaMov: TDataSetProvider
    DataSet = QCajaMov
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 86
    Top = 248
  end
  object IBGId_Che3Mov: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CHE3_MOV'
    SystemGenerators = False
    Left = 312
    Top = 381
  end
  object IBGId_Efectivo: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOV_EFECTIVO'
    SystemGenerators = False
    Left = 312
    Top = 424
  end
  object IBGId_Caja_Mov: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CAJA_MOV'
    SystemGenerators = False
    Left = 312
    Top = 248
  end
  object DSPCheques: TDataSetProvider
    DataSet = QCheques
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPChequesUpdateError
    Left = 86
    Top = 480
  end
  object IBGId_Che_Propio: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CHEQUE_PROPIO'
    SystemGenerators = False
    Left = 312
    Top = 472
  end
  object ActionList1: TActionList
    Left = 456
    Top = 104
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
    object BuscarBanco: TAction
      Caption = 'BuscarBanco'
      OnExecute = BuscarBancoExecute
    end
    object BuscarFormaPago: TAction
      Caption = 'BuscarFormaPago'
      OnExecute = BuscarFormaPagoExecute
    end
    object BuscarChequera: TAction
      Caption = 'BuscarChequera'
      OnExecute = BuscarChequeraExecute
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
    object PosDebito: TAction
      OnExecute = PosDebitoExecute
    end
    object CancelDebito: TAction
      OnExecute = CancelDebitoExecute
    end
    object CancelaTC: TAction
      OnExecute = CancelaTCExecute
    end
    object PostTC: TAction
      OnExecute = PostTCExecute
    end
    object CargaLoteChePropio: TAction
      Caption = 'Carga Lote de Che.Propio'
      OnExecute = CargaLoteChePropioExecute
    end
  end
  object DSPTransBco: TDataSetProvider
    DataSet = QTransBco
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPTransBcoUpdateError
    Left = 86
    Top = 336
  end
  object DSPDebitos: TDataSetProvider
    DataSet = QDebitos
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPDebitosUpdateError
    Left = 86
    Top = 288
  end
  object IBGId_Trans: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_TRANSF_BANCO_EMITIDAS'
    SystemGenerators = False
    Left = 312
    Top = 336
  end
  object IBGIdDebito: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_DEBITOS_BANCO'
    SystemGenerators = False
    Left = 312
    Top = 288
  end
  object IBId_MovTCCompra: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CUPON_TC_COMPRA'
    SystemGenerators = False
    Left = 312
    Top = 520
  end
  object CDSMovTCCompra: TClientDataSet
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
    ProviderName = 'DSPMovTCCompra'
    BeforePost = CDSMovTCCompraBeforePost
    AfterPost = CDSMovTCCompraAfterPost
    BeforeDelete = CDSMovTCCompraBeforeDelete
    OnNewRecord = CDSMovTCCompraNewRecord
    Left = 160
    Top = 528
    object CDSMovTCCompraID_CUPON: TIntegerField
      FieldName = 'ID_CUPON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovTCCompraID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovTCCompraID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovTCCompraID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSMovTCCompraID_TARJETA: TIntegerField
      FieldName = 'ID_TARJETA'
      Required = True
      OnSetText = CDSMovTCCompraID_TARJETASetText
    end
    object CDSMovTCCompraFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
    end
    object CDSMovTCCompraFECHA_CUPON: TSQLTimeStampField
      FieldName = 'FECHA_CUPON'
    end
    object CDSMovTCCompraCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
      Required = True
    end
    object CDSMovTCCompraNUMERO_CUPON: TIntegerField
      FieldName = 'NUMERO_CUPON'
    end
    object CDSMovTCCompraUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      OnSetText = CDSMovTCCompraUNIDADESSetText
    end
    object CDSMovTCCompraIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSMovTCCompraCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSMovTCCompraMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSMovTCCompraOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 200
    end
    object CDSMovTCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSMovTCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object CDSMovTCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object CDSMovTCCompraNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovTCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 35
    end
    object CDSMovTCCompraID_CPBTE_ANULACION_TC: TIntegerField
      FieldName = 'ID_CPBTE_ANULACION_TC'
      Required = True
    end
    object CDSMovTCCompraID_CAJA_MOV_ANULACION: TIntegerField
      FieldName = 'ID_CAJA_MOV_ANULACION'
      Required = True
    end
    object CDSMovTCCompraANULADO: TStringField
      FieldName = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object CDSMovTCCompraID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSMovTCCompraMUESTRATC: TStringField
      FieldName = 'MUESTRATC'
      ProviderFlags = []
      Size = 15
    end
    object CDSMovTCCompraMUESTRANROTC: TStringField
      FieldName = 'MUESTRANROTC'
      ProviderFlags = []
      Size = 16
    end
  end
  object DSPMovTCCompra: TDataSetProvider
    DataSet = QMovTCCompra
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPMovTCCompraUpdateError
    Left = 86
    Top = 528
  end
  object DSMovTCCompra: TDataSource
    DataSet = CDSMovTCCompra
    OnStateChange = DSMovTCCompraStateChange
    Left = 224
    Top = 528
  end
  object DSPMovTCCuota: TDataSetProvider
    DataSet = QMovTCCuota
    Options = []
    UpdateMode = upWhereKeyOnly
    OnUpdateError = DSPMovTCCuotaUpdateError
    Left = 86
    Top = 576
  end
  object CDSMovTCCuota: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CUPON'
    MasterFields = 'ID_CUPON'
    MasterSource = DSMovTCCompra
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovTCCuota'
    OnNewRecord = CDSMovTCCuotaNewRecord
    Left = 160
    Top = 576
    object CDSMovTCCuotaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovTCCuotaID_CUPON: TIntegerField
      FieldName = 'ID_CUPON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovTCCuotaID_TARJEA: TIntegerField
      FieldName = 'ID_TARJEA'
      Required = True
    end
    object CDSMovTCCuotaFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
      Required = True
    end
    object CDSMovTCCuotaTOTAL_CUOTAS: TIntegerField
      FieldName = 'TOTAL_CUOTAS'
    end
    object CDSMovTCCuotaCUOTA: TIntegerField
      FieldName = 'CUOTA'
      Required = True
    end
    object CDSMovTCCuotaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSMovTCCuotaNUMERO_CUPON: TIntegerField
      FieldName = 'NUMERO_CUPON'
    end
    object CDSMovTCCuotaIMPORTE_TOTAL_COMPRA: TFloatField
      FieldName = 'IMPORTE_TOTAL_COMPRA'
      DisplayFormat = ',0.00'
    end
    object CDSMovTCCuotaLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object ibgId_MovCuotas: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOV_TCREDITO_COMPRA'
    SystemGenerators = False
    Left = 312
    Top = 576
  end
  object DSChe3: TDataSource
    DataSet = CDSChe3
    OnStateChange = DSChe3StateChange
    Left = 224
    Top = 387
  end
  object DSMovEfectivo: TDataSource
    DataSet = CDSMovEfectivo
    OnStateChange = DSMovEfectivoStateChange
    Left = 224
    Top = 432
  end
  object DSCajaMov: TDataSource
    DataSet = CDSCajaMov
    OnStateChange = DSCajaMovStateChange
    Left = 224
    Top = 248
  end
  object DSCheques: TDataSource
    DataSet = CDSCheques
    OnStateChange = DSChequesStateChange
    Left = 224
    Top = 480
  end
  object DSTransBco: TDataSource
    DataSet = CDSTransBco
    OnStateChange = DSTransBcoStateChange
    Left = 224
    Top = 336
  end
  object DSDebitos: TDataSource
    DataSet = CDSDebitos
    OnStateChange = DSDebitosStateChange
    Left = 224
    Top = 296
  end
  object QDebitos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*, c.Nombre as MuestraCtaCaja from debitos_banco d'
      'left join cuenta_caja c on c.Id_cuenta=d.id_cuenta_banco'
      'left join caja_mov cm on cm.id_mov_caja=d.id_mov_caja'
      'where cm.id_comprobante = :id')
    Left = 24
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
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
    Left = 160
    Top = 296
    object CDSDebitosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDebitosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      OnSetText = CDSDebitosID_CUENTA_BANCOSetText
    end
    object CDSDebitosMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSDebitosUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      OnSetText = CDSDebitosUNIDADESSetText
    end
    object CDSDebitosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
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
      'select t.*,'
      '  c.Nombre as MuestraCtaCaja'
      'from transf_banco_emitidas t'
      '  left join cuenta_caja c on c.Id_cuenta  = t.id_cuenta_banco'
      '  left join caja_mov cm on cm.id_mov_caja = t.id_mov_caja'
      'where cm.id_comprobante = :id'
      '')
    Left = 24
    Top = 336
    ParamData = <
      item
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
    Left = 160
    Top = 336
    object CDSTransBcoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSTransBcoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSTransBcoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
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
      Size = 25
    end
  end
  object QChe3: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select C.*, b.Nombre as MuestraBanco,cc.nombre as MuestraCtaBanc' +
        'aria from Cheque_Tercero_mov c'
      '   join Bancos B on B.Id_Banco         = c.id_Banco'
      '   join cuenta_caja cc on cc.id_cuenta = c.id_cuenta_caja'
      '   join caja_mov cm on cm.id_mov_caja  = c.id_mov_caja_egresos'
      'where cm.id_comprobante = :id and cm.tipo_operacion='#39'E'#39)
    Left = 24
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QChe3ID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChe3ID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChe3ID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object QChe3ID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
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
    object QChe3MUESTRACTABANCARIA: TStringField
      FieldName = 'MUESTRACTABANCARIA'
      ProviderFlags = []
      Size = 25
    end
  end
  object CDSChe3: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOV_CAJA_EGRESOS'
    MasterFields = 'ID_MOV_CAJA'
    MasterSource = DSCajaMov
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPChe3'
    BeforeEdit = CDSChe3BeforeEdit
    AfterEdit = CDSChe3AfterEdit
    BeforePost = CDSChe3BeforePost
    AfterPost = CDSChe3AfterPost
    BeforeDelete = CDSChe3BeforeDelete
    OnNewRecord = CDSChe3NewRecord
    Left = 160
    Top = 384
    object CDSChe3ID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChe3ID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChe3ID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSChe3ID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
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
    end
    object CDSChe3IMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
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
    object CDSChe3CUIT: TStringField
      FieldName = 'CUIT'
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
    object CDSChe3MUESTRACTABANCARIA: TStringField
      FieldName = 'MUESTRACTABANCARIA'
      ProviderFlags = []
      Size = 25
    end
  end
  object QMovEfectivo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select e.* from Mov_Efectivo e '
      ' join caja_mov cm on cm.id_mov_caja = e.id_mov_caja '
      'where cm.id_comprobante = :id  ')
    Left = 24
    Top = 433
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
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovEfectivo'
    BeforePost = CDSMovEfectivoBeforePost
    AfterPost = CDSMovEfectivoAfterPost
    OnNewRecord = CDSMovEfectivoNewRecord
    Left = 160
    Top = 432
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
      DisplayFormat = ',0.000'
    end
    object CDSMovEfectivoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Required = True
      OnSetText = CDSMovEfectivoUNIDADESSetText
      DisplayFormat = ',0.00'
    end
    object CDSMovEfectivoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSMovEfectivoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovEfectivoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object QCheques: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Che.*,'
      '  ch.Nombre as MuestraChequera,'
      '  ch.Numero_incial as MuestraNI,'
      '  ch.numero_final as MuestraNF'
      'from cheque_propio Che'
      '  left join chequera ch on  ch.id_Chequera=Che.Id_Chequera'
      '  join caja_mov cm on cm.id_mov_caja =che.id_mov_Caja'
      'where cm.id_comprobante = :id'
      '')
    Left = 24
    Top = 480
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QChequesID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChequesID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object QChequesID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object QChequesID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QChequesID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Required = True
    end
    object QChequesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QChequesFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object QChequesFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object QChequesORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Size = 30
    end
    object QChequesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QChequesUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object QChequesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QChequesCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QChequesID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QChequesID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Required = True
    end
    object QChequesMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QChequesOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 200
    end
    object QChequesANULADO: TStringField
      FieldName = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object QChequesID_CPBTE_ANULACION_REEMP: TIntegerField
      FieldName = 'ID_CPBTE_ANULACION_REEMP'
      Required = True
    end
    object QChequesID_CAJA_MOV_ANULACION: TIntegerField
      FieldName = 'ID_CAJA_MOV_ANULACION'
      Required = True
    end
    object QChequesDEBITADO: TStringField
      FieldName = 'DEBITADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QChequesFECHA_DEBITO: TSQLTimeStampField
      FieldName = 'FECHA_DEBITO'
    end
    object QChequesMUESTRACHEQUERA: TStringField
      FieldName = 'MUESTRACHEQUERA'
      ProviderFlags = []
      Size = 30
    end
    object QChequesMUESTRANI: TIntegerField
      FieldName = 'MUESTRANI'
      ProviderFlags = []
    end
    object QChequesMUESTRANF: TIntegerField
      FieldName = 'MUESTRANF'
      ProviderFlags = []
    end
  end
  object CDSCheques: TClientDataSet
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
    ProviderName = 'DSPCheques'
    BeforeInsert = CDSChequesBeforeInsert
    BeforePost = CDSChequesBeforePost
    AfterPost = CDSChequesAfterPost
    OnNewRecord = CDSChequesNewRecord
    OnReconcileError = CDSChequesReconcileError
    Left = 160
    Top = 480
    object CDSChequesID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChequesID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSChequesID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSChequesID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSChequesID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Required = True
      OnSetText = CDSChequesID_CHEQUERASetText
    end
    object CDSChequesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object CDSChequesFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object CDSChequesFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      OnSetText = CDSChequesFECHA_COBROSetText
    end
    object CDSChequesORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Size = 30
    end
    object CDSChequesNUMERO: TIntegerField
      FieldName = 'NUMERO'
      OnSetText = CDSChequesNUMEROSetText
    end
    object CDSChequesUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      OnSetText = CDSChequesUNIDADESSetText
      DisplayFormat = ',0.00'
    end
    object CDSChequesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSChequesCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSChequesID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSChequesID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Required = True
    end
    object CDSChequesMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSChequesOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 200
    end
    object CDSChequesANULADO: TStringField
      FieldName = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object CDSChequesID_CPBTE_ANULACION_REEMP: TIntegerField
      FieldName = 'ID_CPBTE_ANULACION_REEMP'
      Required = True
    end
    object CDSChequesID_CAJA_MOV_ANULACION: TIntegerField
      FieldName = 'ID_CAJA_MOV_ANULACION'
      Required = True
    end
    object CDSChequesDEBITADO: TStringField
      FieldName = 'DEBITADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSChequesFECHA_DEBITO: TSQLTimeStampField
      FieldName = 'FECHA_DEBITO'
    end
    object CDSChequesMUESTRACHEQUERA: TStringField
      FieldName = 'MUESTRACHEQUERA'
      ProviderFlags = []
      Size = 30
    end
    object CDSChequesMUESTRANI: TIntegerField
      FieldName = 'MUESTRANI'
      ProviderFlags = []
    end
    object CDSChequesMUESTRANF: TIntegerField
      FieldName = 'MUESTRANF'
      ProviderFlags = []
    end
  end
  object QCajaMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select M.* ,'
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
        'ipo_operacion='#39'E'#39')'
      ' '
      ' '
      ' '
      ' ')
    Left = 24
    Top = 248
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'tipo'
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
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCajaMov'
    AfterOpen = CDSCajaMovAfterOpen
    BeforeInsert = CDSCajaMovBeforeInsert
    BeforePost = CDSCajaMovBeforePost
    AfterPost = CDSCajaMovAfterPost
    BeforeDelete = CDSCajaMovBeforeDelete
    AfterDelete = CDSCajaMovAfterDelete
    AfterScroll = CDSCajaMovAfterScroll
    OnNewRecord = CDSCajaMovNewRecord
    Left = 160
    Top = 248
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
    end
    object CDSCajaMovDEBE: TFloatField
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
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
  object QMovTCCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select M.*,  T.nombre as MuestraTC,t.nro_tarjeta as MuestraNroTC'
      'from cupon_tc_compra M'
      '  left join TARJETACREDITO_COMP T on t.Id=m.id_Tarjeta'
      '  left join caja_mov cm on cm.id_mov_caja =m.id_mov_Caja'
      'where cm.id_comprobante = :id'
      ''
      '')
    Left = 24
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMovTCCompraID_CUPON: TIntegerField
      FieldName = 'ID_CUPON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTCCompraID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTCCompraID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object QMovTCCompraID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QMovTCCompraID_TARJETA: TIntegerField
      FieldName = 'ID_TARJETA'
      Required = True
    end
    object QMovTCCompraFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
    end
    object QMovTCCompraFECHA_CUPON: TSQLTimeStampField
      FieldName = 'FECHA_CUPON'
    end
    object QMovTCCompraCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
      Required = True
    end
    object QMovTCCompraNUMERO_CUPON: TIntegerField
      FieldName = 'NUMERO_CUPON'
    end
    object QMovTCCompraUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object QMovTCCompraIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QMovTCCompraCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QMovTCCompraMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QMovTCCompraOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 200
    end
    object QMovTCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QMovTCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QMovTCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QMovTCCompraNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QMovTCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 35
    end
    object QMovTCCompraID_CPBTE_ANULACION_TC: TIntegerField
      FieldName = 'ID_CPBTE_ANULACION_TC'
      Required = True
    end
    object QMovTCCompraID_CAJA_MOV_ANULACION: TIntegerField
      FieldName = 'ID_CAJA_MOV_ANULACION'
      Required = True
    end
    object QMovTCCompraANULADO: TStringField
      FieldName = 'ANULADO'
      FixedChar = True
      Size = 1
    end
    object QMovTCCompraID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QMovTCCompraMUESTRATC: TStringField
      FieldName = 'MUESTRATC'
      ProviderFlags = []
      Size = 15
    end
    object QMovTCCompraMUESTRANROTC: TStringField
      FieldName = 'MUESTRANROTC'
      ProviderFlags = []
      Size = 16
    end
  end
  object QMovTCCuota: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from mov_tcredito_compra m where m.id_cupon=:id')
    Left = 24
    Top = 576
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMovTCCuotaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTCCuotaID_CUPON: TIntegerField
      FieldName = 'ID_CUPON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTCCuotaID_TARJEA: TIntegerField
      FieldName = 'ID_TARJEA'
      Required = True
    end
    object QMovTCCuotaFECHA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_COMPRA'
      Required = True
    end
    object QMovTCCuotaTOTAL_CUOTAS: TIntegerField
      FieldName = 'TOTAL_CUOTAS'
    end
    object QMovTCCuotaCUOTA: TIntegerField
      FieldName = 'CUOTA'
      Required = True
    end
    object QMovTCCuotaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QMovTCCuotaNUMERO_CUPON: TIntegerField
      FieldName = 'NUMERO_CUPON'
    end
    object QMovTCCuotaIMPORTE_TOTAL_COMPRA: TFloatField
      FieldName = 'IMPORTE_TOTAL_COMPRA'
    end
    object QMovTCCuotaLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSBuscaCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCaja'
    Left = 920
    Top = 176
    object CDSBuscaCajaMUESTRACAJA: TStringField
      DisplayLabel = 'Detalle Caja'
      DisplayWidth = 30
      FieldName = 'MUESTRACAJA'
      ProviderFlags = []
      Size = 25
    end
    object CDSBuscaCajaID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Codigo Caja'
      DisplayWidth = 15
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSBuscaCajaFECHA_INCIO: TSQLTimeStampField
      DisplayLabel = 'F.Incio'
      DisplayWidth = 28
      FieldName = 'FECHA_INCIO'
      Required = True
    end
    object CDSBuscaCajaFECHA_CIERRE: TSQLTimeStampField
      DisplayLabel = 'F.Cierre'
      DisplayWidth = 28
      FieldName = 'FECHA_CIERRE'
    end
    object CDSBuscaCajaNUMEROCAJA: TIntegerField
      DisplayLabel = 'Nro.de Caja'
      DisplayWidth = 15
      FieldName = 'NUMEROCAJA'
    end
    object CDSBuscaCajaID_CAJA: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPBuscaCaja: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCajaCab
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 856
    Top = 176
  end
  object CDSBuscaTCredito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaTCredito'
    Left = 928
    Top = 224
    object CDSBuscaTCreditoID_TCREDITO: TIntegerField
      DisplayLabel = 'Cod.TC'
      DisplayWidth = 15
      FieldName = 'ID_TCREDITO'
      Origin = 'ID_TCREDITO'
    end
    object CDSBuscaTCreditoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 40
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object CDSBuscaTCreditoNRO_TARJETA: TStringField
      DisplayLabel = 'Nro.Tarjeta'
      DisplayWidth = 20
      FieldName = 'NRO_TARJETA'
      Origin = 'NRO_TARJETA'
      Size = 16
    end
    object CDSBuscaTCreditoMUESTRABANCO: TStringField
      DisplayLabel = 'Bco Emisor'
      DisplayWidth = 30
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
    end
    object CDSBuscaTCreditoMUESTRATC: TStringField
      DisplayLabel = 'Tarjeta de Credito'
      DisplayWidth = 25
      FieldName = 'MUESTRATC'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSBuscaTCreditoID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 15
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPBuscaTCredito: TDataSetProvider
    DataSet = QBuscaTCredito
    Options = []
    Left = 856
    Top = 224
  end
  object CDSBuscaBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaBanco'
    Left = 928
    Top = 272
    object CDSBuscaBancoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 20
      FieldName = 'NOMBRE'
      Required = True
    end
    object CDSBuscaBancoDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Visible = False
      Size = 30
    end
    object CDSBuscaBancoID_BANCO: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_BANCO'
      Required = True
    end
  end
  object DSPBuscaBanco: TDataSetProvider
    DataSet = DMBuscadores.QBuscaBancos
    Options = []
    Left = 856
    Top = 272
  end
  object CDSBuscaFormPago: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaFormaPago'
    Left = 928
    Top = 328
    object CDSBuscaFormPagoID_FPAGO: TIntegerField
      DisplayLabel = 'F.Pago'
      DisplayWidth = 15
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSBuscaFormPagoID_TPAGO: TIntegerField
      DisplayLabel = 'T.Pag.'
      DisplayWidth = 15
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSBuscaFormPagoDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 30
      FieldName = 'DESCRIPCION'
    end
    object CDSBuscaFormPagoCOTIZACION: TFloatField
      DisplayLabel = 'Cotiz.'
      DisplayWidth = 25
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSBuscaFormPagoSIGNO: TStringField
      DisplayLabel = 'Signo'
      DisplayWidth = 10
      FieldName = 'SIGNO'
      Size = 5
    end
    object CDSBuscaFormPagoMONEDA: TIntegerField
      DisplayLabel = 'Moneda'
      DisplayWidth = 15
      FieldName = 'MONEDA'
      Required = True
    end
  end
  object DSPBuscaFormaPago: TDataSetProvider
    DataSet = DMBuscadores.QBuscaFormaPago
    Options = []
    Left = 856
    Top = 328
  end
  object CDSBuscaCtaBco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCtaBco'
    Left = 928
    Top = 376
    object CDSBuscaCtaBcoNOMBRE: TStringField
      DisplayLabel = 'Cta.Bancaria'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaCtaBcoNRO_CUENTA: TStringField
      DisplayLabel = 'Nro.de Cuenta'
      DisplayWidth = 15
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object CDSBuscaCtaBcoID_CUENTA: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID_CUENTA'
      Required = True
    end
  end
  object DSPBuscaCtaBco: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCtaCajaBco
    Options = []
    Left = 856
    Top = 376
  end
  object CDSFormaPagoEfec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaFormaPago'
    Left = 888
    Top = 448
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
    DataSet = QFormaPEfec
    Options = []
    Left = 824
    Top = 448
  end
  object ComBuscadorCaja: TComBuscador
    Data = CDSBuscaCaja
    Campo = 'id_cuenta_caja'
    Titulo = 'Cuentas de Caja'
    rOk = False
    Left = 1008
    Top = 176
  end
  object ComBuscadorTC: TComBuscador
    Data = CDSBuscaTCredito
    Campo = 'ID'
    Titulo = 'Tarjetas de Credito'
    rOk = False
    Left = 1008
    Top = 224
  end
  object ComBuscadorBanco: TComBuscador
    Data = CDSBuscaBanco
    Campo = 'id_banco'
    Titulo = 'Listado de Bancos'
    rOk = False
    Left = 1008
    Top = 272
  end
  object ComBuscadorFormaPago: TComBuscador
    Data = CDSBuscaFormPago
    Campo = 'id_fpago'
    Titulo = 'Forma de Pago'
    rOk = False
    Left = 1016
    Top = 312
  end
  object ComBuscadorCtaBco: TComBuscador
    Data = CDSBuscaCtaBco
    Campo = 'ID_CUENTA'
    Titulo = 'Cuentas de Banco'
    rOk = False
    Left = 1016
    Top = 376
  end
  object QCajaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cc.*,'
      '  cta.Nombre as MuestraCtaCaja'
      'from Caja_Cab cc'
      '  left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where id_cuenta_caja=:id and estado = 0')
    Left = 456
    Top = 240
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
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
    object QCajaCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object QCajaCabOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object QCajaCabNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCajaCabMUESTRACTACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
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
  object QFormaPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from FormaPago where id_fpago = :id')
    Left = 456
    Top = 288
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
    Left = 456
    Top = 344
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
    Left = 456
    Top = 400
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
    Left = 456
    Top = 456
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
  object QSaldoFinal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TRAER_SALDOS_CAJA(:id)'
      'where (fpago = 1 ) and ( tpago = 1 )')
    Left = 536
    Top = 296
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QSaldoFinalMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
    end
    object QSaldoFinalSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QSaldoFinalDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QSaldoFinalHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QSaldoFinalFPAGO: TSmallintField
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
    end
    object QSaldoFinalTPAGO: TSmallintField
      FieldName = 'TPAGO'
      Origin = 'TPAGO'
    end
    object QSaldoFinalCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QSaldoFinalDISPONIBILIDAD: TFloatField
      FieldName = 'DISPONIBILIDAD'
      Origin = 'DISPONIBILIDAD'
    end
    object QSaldoFinalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
  end
  object QTCreditoFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TARJETACREDITO_COMP'
      'where id=:id')
    Left = 936
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTCreditoFDID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTCreditoFDNRO_TARJETA: TStringField
      FieldName = 'NRO_TARJETA'
      Origin = 'NRO_TARJETA'
      Size = 16
    end
    object QTCreditoFDNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object QTCreditoFDID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QTCreditoFDMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QTCreditoFDID_TCREDITO: TIntegerField
      FieldName = 'ID_TCREDITO'
      Origin = 'ID_TCREDITO'
    end
  end
  object QBuscaTCredito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.id,t.id_tcredito,t.nombre,t.nro_tarjeta,b.nombre as Mue' +
        'straBanco,tc.descripcion as MuestraTC  from TARJETACREDITO_COMP ' +
        't'
      'left join bancos b on b.id_banco=t.id_banco'
      'left join t_credito tc on tc.id_tc=t.id_tcredito')
    Left = 850
    Top = 123
  end
  object QControlCheque: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_chequera,numero_incial,numero_final from chequera'
      'where id_chequera=:id')
    Left = 712
    Top = 392
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QControlChequeID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Origin = 'ID_CHEQUERA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QControlChequeNUMERO_INCIAL: TIntegerField
      FieldName = 'NUMERO_INCIAL'
      Origin = 'NUMERO_INCIAL'
      Required = True
    end
    object QControlChequeNUMERO_FINAL: TIntegerField
      FieldName = 'NUMERO_FINAL'
      Origin = 'NUMERO_FINAL'
      Required = True
    end
  end
  object QBuscaChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ch.id_cheque_pro from cheque_propio ch where ch.numero = ' +
        ':Numero and ch.id_chequera=:idchequera')
    Left = 808
    Top = 392
    ParamData = <
      item
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDCHEQUERA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaCheID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
      Origin = 'ID_CHEQUE_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QFormaPEfec: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from FormaPago where id_tpago = 1')
    Left = 720
    Top = 456
  end
  object QFormaPCHe3: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from FormaPago where id_tpago = 3')
    Left = 720
    Top = 512
    object QFormaPCHe3ID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFormaPCHe3ID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 624
    Top = 328
    object CargaLotedeChePropio1: TMenuItem
      Action = CargaLoteChePropio
    end
  end
  object QFormaPChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from FormaPago where id_tpago = 2')
    Left = 720
    Top = 568
    object QFormaPCheID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFormaPCheID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
  end
end

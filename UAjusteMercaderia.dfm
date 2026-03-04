inherited FormAjustesStock: TFormAjustesStock
  Left = 255
  Top = 94
  Caption = 'Ajustes de Stock'
  ClientHeight = 657
  ClientWidth = 948
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 966
  ExplicitHeight = 698
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 948
    Height = 604
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 948
    ExplicitHeight = 604
    object lbCantidad: TLabel
      Left = 366
      Top = 507
      Width = 11
      Height = 20
      Alignment = taRightJustify
      Anchors = [akLeft, akBottom]
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 360
    end
    object Label2: TLabel
      Left = 10
      Top = 505
      Width = 123
      Height = 16
      Anchors = [akLeft, akBottom]
      Caption = 'Total de Series para'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 358
    end
    object DBText2: TDBText
      Left = 13
      Top = 521
      Width = 332
      Height = 17
      Anchors = [akLeft, akBottom]
      DataField = 'DETALLE'
      DataSource = DSAjusteDet
      ExplicitTop = 374
    end
    object lb1: TLabel
      Left = 581
      Top = 442
      Width = 114
      Height = 16
      Anchors = [akLeft, akBottom]
      Caption = 'Costo del Ajuste'
      FocusControl = dbeTOTAL
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 295
    end
    object RxLabel7: TJvLabel
      Left = 9
      Top = 445
      Width = 73
      Height = 13
      Caption = 'Observaciones'
      Anchors = [akLeft, akBottom]
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
      ExplicitTop = 298
    end
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 366
      Top = 438
      Width = 98
      Height = 15
      DataSetName = ' '
      DataSource = DSAjusteDet
      Captions.Strings = (
        'Archivos Cerrados'
        'Browse'
        'Edicion'
        'Agregando')
      Style = lsRecordNo
      GlyphAlign = glGlyphRight
      ShadowSize = 2
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Anchors = [akLeft, akBottom]
      ParentColor = False
      ParentFont = False
      ShadowColor = clInfoBk
      Transparent = True
      ExplicitTop = 291
    end
    object DBGrillaDetalle: TDBGrid
      Left = 0
      Top = 104
      Width = 948
      Height = 331
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Ctl3D = False
      DataSource = DSAjusteDet
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrillaDetalleCellClick
      OnColEnter = DBGrillaDetalleColEnter
      OnDrawColumnCell = DBGrillaDetalleDrawColumnCell
      OnDblClick = DBGrillaDetalleDblClick
      OnEditButtonClick = DBGrillaDetalleEditButtonClick
      OnEnter = DBGrillaDetalleEnter
      OnKeyPress = DBGrillaDetalleKeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Caption = 'Detalle'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 336
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Cantidad'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'COSTO_UNITARIO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'COSTO_TOTAL'
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
          Color = clInfoBk
          Expanded = False
          FieldName = 'STOCK_ACTUAL_VTA'
          Title.Alignment = taCenter
          Title.Caption = 'Stk.Vta'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'STOCK_ACTUAL_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Stk.Cpra'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADES_STK'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end>
    end
    object DBMemo1: TDBMemo
      Left = 7
      Top = 460
      Width = 377
      Height = 39
      Anchors = [akLeft, akBottom]
      DataField = 'OBS'
      DataSource = DSBase
      TabOrder = 2
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 948
      Height = 104
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object DBText1: TDBText
        Left = 609
        Top = 26
        Width = 17
        Height = 17
        DataField = 'LETRA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtMuestraComprobante: TDBText
        Left = 344
        Top = 27
        Width = 185
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
      object Label1: TLabel
        Left = 730
        Top = 86
        Width = 76
        Height = 16
        Caption = 'Existencia '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        Left = 646
        Top = 5
        Width = 63
        Height = 16
        Caption = 'Nro.Cpbte'
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
      object RxLabel4: TJvLabel
        Left = 9
        Top = 48
        Width = 44
        Height = 13
        Caption = 'Deposito'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 298
        Top = 8
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
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
      object DBText3: TDBText
        Left = 732
        Top = 4
        Width = 112
        Height = 14
        Alignment = taRightJustify
        DataField = 'ID_RTO'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object JvLabel5: TJvLabel
        Left = 543
        Top = 48
        Width = 60
        Height = 13
        Caption = 'Retirado por'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object dbeMuestraDeposito: TDBEdit
        Left = 64
        Top = 64
        Width = 209
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRADEPOSITO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 7
      end
      object dbePrefijo: TDBEdit
        Left = 648
        Top = 23
        Width = 60
        Height = 28
        TabStop = False
        DataField = 'SUCRTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object dbeNum: TDBEdit
        Left = 714
        Top = 23
        Width = 121
        Height = 28
        TabStop = False
        DataField = 'NUMRTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbeSucursal: TDBEdit
        Left = 147
        Top = 24
        Width = 146
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object dbeFecha: TJvDBDateEdit
        Left = 8
        Top = 24
        Width = 90
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
        OnExit = dbeFechaExit
      end
      object RxCDeposito: TJvDBComboEdit
        Left = 9
        Top = 64
        Width = 48
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'DEPOSITO'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ButtonWidth = 15
        TabOrder = 6
        OnButtonClick = BuscarDepositoExecute
      end
      object RxCSucursal: TJvDBComboEdit
        Left = 104
        Top = 24
        Width = 39
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
        OnButtonClick = BuscaSucursalExecute
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
      object dbcMotivo: TJvDBLookupCombo
        Left = 279
        Top = 64
        Width = 256
        Height = 21
        DropDownCount = 15
        DropDownWidth = 280
        DataField = 'MOTIVO'
        DataSource = DSBase
        LookupField = 'ID'
        LookupDisplay = 'DETALLE'
        LookupSource = DSMotivos
        TabOrder = 8
      end
      object RxDBCodigo: TJvDBComboEdit
        Left = 545
        Top = 65
        Width = 67
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'PERSONAL_RETIRA'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 9
        OnButtonClick = BuscaEmpleadoExecute
      end
      object dbeNombre: TDBEdit
        Left = 618
        Top = 65
        Width = 217
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRAPERSONAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 10
      end
    end
    object dbeTOTAL: TDBEdit
      Left = 701
      Top = 439
      Width = 134
      Height = 21
      Anchors = [akLeft, akBottom]
      DataField = 'TOTAL'
      DataSource = DSBase
      Enabled = False
      TabOrder = 3
    end
    object chSalteDetalle: TCheckBox
      Left = 220
      Top = 437
      Width = 97
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Saltear detalle'
      TabOrder = 4
    end
    object dbgExitencias: TDBGrid
      Left = 120
      Top = 441
      Width = 399
      Height = 105
      Anchors = [akLeft, akBottom]
      Color = clWhite
      DataSource = DSExistencia
      DrawingStyle = gdsGradient
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
          Width = 80
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
    object pcLotesSeries: TPageControl
      Left = 509
      Top = 460
      Width = 395
      Height = 138
      ActivePage = pagSeries
      Anchors = [akLeft, akBottom]
      TabOrder = 6
      object pagSeries: TTabSheet
        Caption = 'Series'
        object DBStatusLabel2: TJvDBStatusLabel
          Left = 167
          Top = 87
          Width = 102
          Height = 13
          DataSource = DSAjusteSubDetalle
          Style = lsRecordNo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowPos = spLeftTop
          Transparent = True
        end
        object lbCargaLote: TLabel
          Left = 3
          Top = 87
          Width = 120
          Height = 13
          Cursor = crHandPoint
          Caption = 'Cargar Lotede Series'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = lbCargaLoteClick
        end
        object dbgSeries: TDBGrid
          Left = 3
          Top = 3
          Width = 339
          Height = 78
          Color = clAqua
          DataSource = DSAjusteSubDetalle
          FixedColor = clMoneyGreen
          TabOrder = 0
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
              Width = 306
              Visible = True
            end>
        end
      end
      object pagLotes: TTabSheet
        Caption = 'Egresos Lotes'
        ImageIndex = 1
        object pnLote: TPanel
          Left = 0
          Top = 0
          Width = 387
          Height = 110
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clGradientInactiveCaption
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
          TabOrder = 0
          object JvLabel1: TJvLabel
            Left = 15
            Top = 9
            Width = 35
            Height = 13
            Caption = 'Id Lote'
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
          end
          object JvLabel2: TJvLabel
            Left = 151
            Top = 26
            Width = 51
            Height = 13
            Caption = 'Despacho'
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
          end
          object JvLabel3: TJvLabel
            Left = 151
            Top = 53
            Width = 23
            Height = 13
            Caption = 'Lote'
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
          end
          object JvLabel4: TJvLabel
            Left = 151
            Top = 79
            Width = 44
            Height = 13
            Caption = 'Cantidad'
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
          end
          object JvDBComboEdit1: TJvDBComboEdit
            Left = 62
            Top = 6
            Width = 62
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            ClickKey = 16397
            DataField = 'ID_LOTE'
            DataSource = DSAjustesLote
            Glyph.Data = {
              4E000000424D4E000000000000003E0000002800000009000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FF8000002480000024800000FF800000}
            ButtonWidth = 15
            TabOrder = 0
            OnButtonClick = BuscaLotesExecute
          end
          object DBEdit1: TDBEdit
            Left = 214
            Top = 22
            Width = 133
            Height = 21
            DataField = 'DESPACHO'
            DataSource = DSAjustesLote
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object dbeCantidadLote: TDBEdit
            Left = 214
            Top = 49
            Width = 133
            Height = 21
            DataField = 'LOTE'
            DataSource = DSAjustesLote
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit2: TDBEdit
            Left = 214
            Top = 76
            Width = 133
            Height = 21
            DataField = 'CANTIDAD'
            DataSource = DSAjustesLote
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
        end
      end
      object PagLotesIng: TTabSheet
        Caption = 'Ingresos Lotes'
        ImageIndex = 2
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 387
          Height = 110
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = clGradientInactiveCaption
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
          TabOrder = 0
          object JvLabel6: TJvLabel
            Left = 151
            Top = 26
            Width = 51
            Height = 13
            Caption = 'Despacho'
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
          end
          object JvLabel7: TJvLabel
            Left = 151
            Top = 53
            Width = 23
            Height = 13
            Caption = 'Lote'
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
          end
          object JvLabel8: TJvLabel
            Left = 151
            Top = 79
            Width = 44
            Height = 13
            Caption = 'Cantidad'
            ShadowSize = 1
            ShadowPos = spLeftTop
            Transparent = True
          end
          object Label3: TLabel
            Left = 24
            Top = 11
            Width = 30
            Height = 13
            Caption = 'Fecha'
          end
          object Label4: TLabel
            Left = 24
            Top = 53
            Width = 58
            Height = 13
            Caption = 'Vencimiento'
          end
          object DBEdit3: TDBEdit
            Left = 208
            Top = 22
            Width = 132
            Height = 21
            DataField = 'DESPACHO'
            DataSource = DSAjustesLote
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 208
            Top = 49
            Width = 132
            Height = 21
            DataField = 'LOTE'
            DataSource = DSAjustesLote
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit5: TDBEdit
            Left = 210
            Top = 76
            Width = 129
            Height = 21
            DataField = 'CANTIDAD'
            DataSource = DSAjustesLote
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object JvDBDateEdit1: TJvDBDateEdit
            Left = 24
            Top = 26
            Width = 121
            Height = 21
            DataField = 'FECHA'
            DataSource = DSAjustesLote
            ShowNullDate = False
            TabOrder = 3
          end
          object JvDBDateEdit2: TJvDBDateEdit
            Left = 24
            Top = 68
            Width = 121
            Height = 21
            DataField = 'FECHAVTO'
            DataSource = DSAjustesLote
            ShowNullDate = False
            TabOrder = 4
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 604
    Width = 948
    Align = alBottom
    ExplicitTop = 604
    ExplicitWidth = 948
    inherited btConfirma: TBitBtn
      DoubleBuffered = True
    end
    inherited btNuevo: TBitBtn
      DoubleBuffered = True
    end
    inherited btCancelar: TBitBtn
      DoubleBuffered = True
    end
    inherited btModificar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
      TabOrder = 7
    end
    object ToolButton2: TToolButton
      Left = 557
      Top = 0
      Width = 36
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 593
      Top = 0
      Width = 75
      Height = 29
      Action = Imprimir
      Caption = '&Imprimir'
      ImageIndex = 9
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
      TabOrder = 6
    end
    object btGenerarDetalle: TBitBtn
      Left = 668
      Top = 0
      Width = 31
      Height = 29
      Hint = 'Generar detalle desde  el listado de art'#237'culos'
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
      TabOrder = 8
      Visible = False
      OnClick = btGenerarDetalleClick
    end
    object btRecalculaCosto: TBitBtn
      Left = 699
      Top = 0
      Width = 31
      Height = 29
      Action = Recalcular
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7775757775757775757775757775
        75777575777575777575FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF767574777575A9A6A6CBCACA
        C6C6C6BFBFC1BBBBBBC6BCBCC6BCBCA59F9F777575777575FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF777575777575A6A4A4DE
        DDDDBFBFC19593957876746F6B63736D60756E6B8B8281B6A6A7D4BDBDA39595
        777575777575FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7775757775
        75E5E3E5CFCFD07E7E7E736F6399937ABBB498A7A5AB9093ABBFB69C9F957B72
        695972625EC1AAABDDBDBC777575777575FF00FFFF00FFFF00FFFF00FFFF00FF
        777575777575EFEEEFC9C7C96A686499937AF3EDCFFFFFF0FFFFEE95A1ED3D59
        F2FFFFF6FFFFFFFBF8E5A7A18A534C44A98F8FEBC2C2777575777575FF00FFFF
        00FFFF00FFFF00FF777575F2F0F0C7C6C734603136792FFFFFEBF6E3CAF3CBA0
        EFBA83E3AB7BE3AB7BF0BD8BF7DCB8FFFCF3FFFFFFD4D0BC5F5649A98F8FE9BD
        BC777575FF00FFFF00FFFF00FF777575B1AFAFEEEDEE4E6B4C046B0B046B0B73
        9E58F4D097F0C48AEFBB80EFB275EEA969EAA769EFBD81FAE5B4FFFBE7FFFFFF
        D4D0BC50463ECCA7A7AC9696777575FF00FFFF00FF777575FEFCFC779178046B
        0B35C55C3FD96F046B0B84AD64FCEBB6F8E2ACF6D39CF0C48AEDB478EEBA7FF3
        CE96F8DEA9FAF0D9FFFFFF9F957B6E5B58F2C0C0777575FF00FF777575C1C0C0
        B4CCB5046B0B26B1443DD86B41DC7336CA60046B0BA3C983FFFCCBFCF3C0F8E2
        ACF2C792EEBA80EEBA7FEFBD81F0C48AFCF3E5FAF0D95F5649D0A6A6C0A1A077
        7575777575F7F6F6046B0B2BC54E2BC54E30C75639D16542DE7531C058046B0B
        CBE1A6FFFFD1FFFFCFFCEBB6F3CE96EEB77BEAAC6FEAA769F3CBA0FFFFFF907D
        72907D72F4C1C0777575777575046B0B1BB1321BB1321FB23A27BC462EC65438
        D06442DE7428AD47046B0BC5CFA0BFBB9CFFFCCBFFFBC2FFD799FBBB7AEEA969
        EDB47FFFFFF4B1A69172625EF4C0BF777575046B0B046B0B046B0B046B0B16A6
        2A1DB13728BF471C9D33046B0B046B0B046B0B046B0B464D485B5C518B8B7687
        7A60866D52BF8E5EEFB27595A1ED9093AB705D54EDBAB8777575777575FFFFFF
        5683530B620F0D971B16A6291FB4380C791682B26DD4E6AFADC08E485A496568
        681616162020201F20201F1F20BF8E5EF2B4793D59F25E6DA9796758EDBAB877
        7575777575FFFEFEB6B6B62F7329046B0B0E9E1D16A72A097210BDD8B4FFFFD1
        FFFFCFADAD9168685B1C1C1D5B5C51E5E3BBE7CC99E7B177EEB77BFCF3E5ABA7
        8F7D6B69F3BFBD777575777575F7F4F6CFCFD058824A046B0B0895110E9D1C07
        740F99C29CFFFFF4FFFFD5FFFFD5FFFFDCA6A68C1C1C1D5F5D50F8E2ACF8C484
        F2C792FFFFE9938E77997E7FF4C0BF777575777575C1BFC0F7F4F6878F78046B
        0B058A0C079311067D0E428A45FFFFFFFFFFF6FFFFDEFFFFCFFFFFD9AFAF931A
        1C1D504A3FE6BD87FBE5BDF6F0CE706B60CFA6A7C0A0A0777575FF00FF777575
        FCFBFBBABABA31722804780905910D068B0D046B0BBAD7BBFFFFFFFFFFFFFFFF
        F0FFFFDCFFFFDEC2C1A11F1F1F56514BFFFFE1ABA78F7D6B69F4C1C0777575FF
        00FFFF00FF777575B4B1B1EAEBEB88937D07630A05890C06920D057F0B046B0B
        A1C7A4FFFFFFFFFFFFFFFFFFFFFFF6FFFFE3BFBB9CBBB8A7E5E3BB6D6B65CCA7
        A7AD9696777575FF00FFFF00FFFF00FF777575F2F0F0D0D1D3597F5103600505
        860C06930E05860C046B0B2E80326EA973A3C9A5C6DEC7CFE3C9DEEDC7EEEFC5
        7E7B70B6999AE9BDBC777575FF00FFFF00FFFF00FFFF00FF777575777575EAEB
        EBCACBCE68875D046B0B046B0B04820B05890D06830E06750D046B0B046B0B04
        6B0B45843D868179AA9596E7C0BF777575777575FF00FFFF00FFFF00FFFF00FF
        FF00FF777575777575E5E3E5D4D4D599A197577F4C046B0B046B0B046B0B046B
        0B046B0B588E51738A678C8982C9AFB0DDBDBC777575777575FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF777575777575A6A5A6D8D8D8C2C5C6ACAAA9
        A5A09CA9A198ABA197A09A95A49C99BBABACD4BDBDA39595777575777575FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF76767677
        7575A4A3A3C4C4C4C0C0C1B8BABBB6B6B6C0B6B6C0B6B6A19C9C777575777575
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF77757577757577757577757577757577757577757577
        7575FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 10
    end
    object btVerNovedades: TBitBtn
      Left = 730
      Top = 0
      Width = 31
      Height = 29
      Hint = 'Novedades de Importacion'
      Action = VerNovedades
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF008C6B
        6C0087707000AE877C000D7FA9006F7C88006D7C94001F7ECE000E80AA001180
        A7001081AB00048CB900078DBC000B8DBA000C8DBA00088EBC001285B0007882
        95006092BD005EA8BE000A91C1000F9DCE002087DE0011A7D10030BCDC001F89
        E00059A9DC0044BADD004ABFE00057AEF4004DB1F90049B2FF004EB7FF0057B1
        F60050B6FE0022D7FC0024D7FF0024D8FD0039D7FB0035D8FD004BC6DC0046C6
        E40048D5EE0075D3E90058E9FD006FE6FF0070E6FF0071F9FE007BFFFF008683
        88008B8697008F989B00969594009C919000AD858000AD868500AB939500A49E
        9900B1979400B5A09F008AA5AD00CAA08C00CDAC9300C2A69A00F3BE8000C6AE
        A000CFB7A100D3BBA200F4C88E00F5CB9A00F5D09C00F8D09800DAC5B700E4CC
        A900EFD2A900ECD1AC00F6DAAB00F5DEB500F5E1B600F9E1B100FEEAB900FFF2
        BA00A1C6C8008DE6FA0081F8FE008CFAFD008DFCFE0097FCFD009BFBFD00B8ED
        F600A7FFFF00AAFFFE00ADFFFE00B6F6FF00B1FCFD00B4FFFF00ECDDCC00E8DD
        D600FFF7C600FCF5CD00FCF7D100FAF6D600FFFBD500FEFED600F7F2D900FEFF
        D900FFFEDD00C6F5FF00C6FEFF00D2FFFF00FEF7E000FBFCE100FDFFE100FFFF
        E400E3FEFF00F9F6F200FFFFF400F1FBFC00F5FFFE00FBFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000605000004080408080A000000000011191A000B2A23272D
        531B080000001116201D0B552C23272E531C1509003207201D000F552C23272B
        3A3F41030112202000000F552C252938606771684236200000000B5F5D6B3B61
        74676A67513D000000000B59181735716A676A63474B360000000F282C23396A
        6A6A6A4C404D360000000B552C2534656A654F455049360000000B552C251343
        6247446E7336000000000B552C25263C3E4B4E483636000000000F55542F3057
        523331020000000000000B77766D5F5C5C5C2F08000000000000001476726C5C
        5A58100000000000000000000F0F0B0F0F0F0000000000000000}
      TabOrder = 9
    end
    object sbCambiarFecha: TSpeedButton
      Left = 761
      Top = 0
      Width = 26
      Height = 29
      Action = CambiarFecha
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF009933000099330000993300009933
        000099330000993300009933000099330000FF00FF00FF00FF00FF00FF00FF00
        FF000E80AA000E80AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFE
        FE008EA4FD00B8C6FD00FDFEFE0099330000FF00FF00FF00FF00FF00FF00078D
        BB0049D5EE0023D7FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98
        FC000335FB00597AFC00FDFEFE0099330000FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335
        FB004368FC000335FB00D9E0FE0099330000FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9
        FD00EFF2FE001A47FB004F72FC0097330400FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFE
        FE00FDFEFE0098ACFD000335FB0064345900FF00FF00FF00FF00078DBB00B3FC
        FE00B6F6FF00C6F5FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFE
        FE00FDFEFE00FDFEFE005274FC000335FB00FF00FF00FF00FF00078DBB00BAEE
        F60030BCDD0011A7D200129FCB0020A2CB009933000099330000993300009933
        000099330000993300008F3311002235C8000335FB00FF00FF00078DBB004AC5
        DD0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF000335FB000335FB00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000335FB00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB0091FC
        FE0082F8FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB00FDFE
        FE00F4FFFF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C92
        C000F4FFFF00E3FAFF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00078DBB00078DBB00078DBB00078DBB00078DBB00078DBB00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object spEnviaXML: TSpeedButton
      Left = 787
      Top = 0
      Width = 26
      Height = 29
      Hint = 'Generar Archivos XML del Ajustes para enviar a otra sucursal'
      Action = EnviarArchivoXML
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
      Left = 813
      Top = 0
      Width = 29
      Height = 29
      Hint = 'Leer repositorio de Ajustes de Stock'
      Action = LeerAjustes
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
    object ToolButton1: TToolButton
      Left = 842
      Top = 0
      Width = 23
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object spPapelera: TSpeedButton
      Left = 865
      Top = 0
      Width = 30
      Height = 29
      Action = RestaurarDePapelera
      Flat = True
    end
  end
  inherited Panel1: TPanel
    Top = 634
    Width = 948
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    OnDblClick = Panel1DblClick
    ExplicitTop = 634
    ExplicitWidth = 948
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 859
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 859
    end
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 175
    inherited Modificar: TAction
      Enabled = False
    end
    object BuscaSucursal: TAction
      Caption = 'BuscaSucursal'
      OnExecute = BuscaSucursalExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      ImageIndex = 9
      OnExecute = ImprimirExecute
    end
    object BuscarSerie: TAction
      Caption = 'BuscarSerie'
      OnExecute = BuscarSerieExecute
    end
    object ImportarDetalle: TAction
      Caption = 'Importar Detalle desde Excel'
      OnExecute = ImportarDetalleExecute
    end
    object Sumar: TAction
      Caption = 'Sumar'
      OnExecute = SumarExecute
    end
    object Recalcular: TAction
      Hint = 'Recalcula el costo total del ajuste'
      OnExecute = RecalcularExecute
    end
    object ExportarXLS: TAction
      Caption = 'Exportar Detalle a Excel'
      OnExecute = ExportarXLSExecute
    end
    object VerNovedades: TAction
      Hint = 'Ver novedades de Importacion'
      OnExecute = VerNovedadesExecute
    end
    object CambiarFecha: TAction
      Hint = 'Cambiar Fecha'
      ImageIndex = 2
      ShortCut = 49222
      OnExecute = CambiarFechaExecute
    end
    object ImportarExcelCompensado: TAction
      Caption = 'Importar desde Excel Compensado'
      OnExecute = ImportarExcelCompensadoExecute
    end
    object EnviarArchivoXML: TAction
      ImageIndex = 8
      OnExecute = EnviarArchivoXMLExecute
    end
    object LeerAjustes: TAction
      OnExecute = LeerAjustesExecute
    end
    object ImportarExcelCompFecha: TAction
      Caption = 'Importar desde Excel Compensado a Fecha de Ingreso'
      OnExecute = ImportarExcelCompFechaExecute
    end
    object BuscaLotes: TAction
      Caption = 'BuscaLotes'
      OnExecute = BuscaLotesExecute
    end
    object BuscaEmpleado: TAction
      Caption = 'BuscaEmpleado'
      OnExecute = BuscaEmpleadoExecute
    end
    object CopiaPapeleraAjuste: TAction
      Caption = 'Copia Bk Ajuste'
      OnExecute = CopiaPapeleraAjusteExecute
    end
    object RestaurarDePapelera: TAction
      Hint = 'Papelera de Reciclaje'
      ImageIndex = 11
      OnExecute = RestaurarDePapeleraExecute
    end
    object BorraDePapelera: TAction
      Caption = 'BorraDePapelera'
      OnExecute = BorraDePapeleraExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSAjusteCab
    Left = 408
    Top = 8
  end
  inherited ImageList1: TImageList
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
      0000C5C5C50079716C007163580077665900746255006A5B4E00776F6800C5C4
      C400000000000000000000000000000000000000000000000000000000000000
      0000C5C5C50079716C007162580077665900746255006B5B4E00776F6800C5C4
      C400000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000009997
      95008F7F7200AC988B00A48E8000A08A7B009E8778009981720091796A00715D
      5000999795000000000000000000000000000000000000000000000000009997
      95008F7F7200AC988B00A48E8000A08A7B009E8778009B837400957C6D00715C
      50009997950000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000008171
      6600AE998C009D8677009A8677009683750092807200907A6D008B756900957A
      6B00655344000000000000000000000000000000000000000000000000008172
      6600AD998C009E8778009F8979009E8778009B8576009880700099817100947A
      6A0065544500000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000D3D2D2009C8E
      8200A6968B00A7978C00A7968B00A49185009E8A7C0097827300958173009881
      7200715C4C00D3D2D20000000000000000000000000000000000D3D2D2009D8D
      8200A89487009F8879009F8879009E8778009B857600978070009E8778009A83
      7300715B4C00D3D2D2000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000AAA9A800AD9E
      9400BBAEA500B2A19600AC9B8E00A8948700A18E80009B8576009E887A009681
      740079635400A9A8A80000000000000000000000000000000000AAA9A800AC9E
      9300C3B4AA00A08A7B009D8778009D8777009B857500967D6E009C8576009E88
      790079625400A9A8A8000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A78780075737300000000000000000097969400BAAC
      A200C5B7AE00B4A59A00B4A29600AD9A8D00A59083009D877700A28D7E00927D
      7100836A5A00989695000000000000000000000000000000000097969500BAAC
      A300CBBDB300BEADA100AF9C8F00A5908200A0897A0099827200A18B7D00A28D
      800082685900989695000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C69690000000000000000008E8B8800C7B9
      B000CABCB200AFA09500B5A498009B8A7D00A08C7E009D877800A18B7D009380
      7200886F5F008C898600000000000000000000000000000000008F8C8900C7B9
      B000CABBB200BFAEA200B7A49800AF9B8F00A79284009E887800A28C7E00A28C
      8000886F60008D8A870000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A0000000000000000007B756F00D0C3
      BA00CABCB200AB9C9200A5958A00A8968A0097867900998374009D8779009884
      77008970610079726C00000000000000000000000000000000007B756F00D0C3
      BA00C9BAB000BEADA100B7A59900B09D9000A89386009D887800A08A7B00A18C
      7E008E74660079726C000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000746C6500D7CB
      C300C1B4AB00AC9D9400AD9E9400B0A19800B2A499009C8C8200A8968B00A491
      8500876F610070675F0000000000000000000000000000000000746C6500D6CA
      C200CCBEB500BAAAA000B19F9300AC9A8E00AA978B00A7948700AD9A8F00AA97
      8B0093796A0070675F0000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A000000000000000000000000000000000072675D00C0B2
      AB00AEA49E00CFCCCB00E6E7E700F2F3F300F3F4F400F0EFEF00AAA7A5009788
      7E00917C700066594E000000000000000000000000000000000072675E00C8BA
      B000BEB0A500D3CAC100DBD2CA00D3C7BD00CCBCB100C2AEA200B29A8D00A68F
      8100A08B7C0065584E0000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      000000000000000000000000000000000000000000000000000070625500B2AC
      A800EEEFF000F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F7F700AA9C
      9600A88C7C00665649000000000000000000000000000000000070625500D4CD
      C300EFEFE900E5E0D900E5DED800D2C5BC00CBBBB100C4B0A500BEA69A00B89C
      9000A68B7B006656490000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      000000000000000000000000000000000000000000000000000074625500DFDE
      D900D8D8D800FEFEFE00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FAFAFA00EEEF
      EF00A7968E00726054000000000000000000000000000000000073625500EEEF
      E800EEECE700E9E5DF00ECE6E200D2C5BC00CBBBB100C4B0A500BEA69A00B79B
      8F00B29688007260540000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000000000006B605700D5CE
      C500D7D6D400E1E1E100FFFFFF00FFFFFF00FDFDFD00F9F9F900F5F5F500EFEF
      EF00A59F9B006C615900000000000000000000000000000000006B615700D3CC
      C400EFEEE900EAE6E100ECE7E300D2C5BC00CBBBB100C4B0A500BCA49800BBA1
      9500BBA99F006C6259000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000DCDCDC00695E
      5400B5AAA000C6C2BE00EFEFEF00FEFEFE00F9F9F900F4F4F400EAEBEB009089
      8300695D5400DADADA0000000000000000000000000000000000DCDCDC00695D
      5400B3A89E00E6E0DB00EDE7E300DBD1C900D6C8C000D3C3BA00CFC0B700AB9C
      9100695D5300DADADA00000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F9C9C0070665D00746B6400CFCFCF00E8E8E800E3E3E30076706C009D9B
      9A00000000000000000000000000000000000000000000000000000000000000
      00009E9C9A006E645C00716357007E6F63007E6F6300716358006E635A009D9A
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A4A4009F9F9F0099999900000000000000
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
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF33FF00FF00FE007E007E007E007
      C003C000E007E00780018001C003C00380010000C003C00300000000C003C003
      00000000C003C00300008000C003C0030000E001C003C0030000F003C003C003
      0000F01FC003C0038001E03FC003C0038001E03FC003C003C003C03FC003C003
      E007C07FF00FF00FF81FF8FFFE3FFFFFFFFFF81FF81FF81FC007E007E007E007
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
    Left = 792
    Top = 504
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 72
    Top = 688
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 520
    Top = 328
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 512
    Top = 8
  end
  inherited QBrowse2: TFDQuery
    Left = 16
    Top = 528
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 16
    Top = 600
  end
  object DSPAjusteCab: TDataSetProvider
    DataSet = DMMain_FD.QAjusteCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 224
  end
  object DSPAjusteDet: TDataSetProvider
    DataSet = DMMain_FD.QAjusteDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 296
  end
  object DSAjusteDet: TDataSource
    DataSet = CDSAjusteDet
    Left = 440
    Top = 296
  end
  object ibgAjusteCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTO_CAB_MERCA'
    SystemGenerators = False
    Left = 512
    Top = 106
  end
  object ibgAjusteDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTO_DET_MERCA'
    SystemGenerators = False
    Left = 520
    Top = 240
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMMain_FD.QDeposito
    Options = []
    Left = 288
    Top = 414
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = [poAllowCommandText]
    Left = 290
    Top = 358
  end
  object frAjustes: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.785146122670000000
    ReportOptions.LastChange = 39638.785146122670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 712
    Top = 656
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDSAjusteCab: TfrxDBDataset
    UserName = 'frDSAjusteCab'
    CloseDataSource = False
    DataSet = CDSAjusteCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 720
    Top = 560
  end
  object frDSAjusteDet: TfrxDBDataset
    UserName = 'frDSAjusteDet'
    CloseDataSource = False
    DataSet = CDSAjusteDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 840
    Top = 672
  end
  object DSPAjusteSubDet: TDataSetProvider
    DataSet = DMMain_FD.QAjusteSubDetalle
    Options = []
    Left = 264
    Top = 472
  end
  object CDSAjusteSubDetalle: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_RTODET'
    MasterFields = 'ID_RTO_DET'
    MasterSource = DSAjusteDet
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPAjusteSubDet'
    BeforeInsert = CDSAjusteSubDetalleBeforeInsert
    BeforeEdit = CDSAjusteSubDetalleBeforeDelete
    BeforePost = CDSAjusteSubDetalleBeforePost
    AfterPost = CDSAjusteSubDetalleAfterPost
    BeforeDelete = CDSAjusteSubDetalleBeforeDelete
    AfterDelete = CDSAjusteSubDetalleAfterDelete
    OnNewRecord = CDSAjusteSubDetalleNewRecord
    Left = 360
    Top = 488
    object CDSAjusteSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjusteSubDetalleID_RTODET: TIntegerField
      FieldName = 'ID_RTODET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjusteSubDetalleID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjusteSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSAjusteSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSAjusteSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSAjusteSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSAjusteSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      OnSetText = CDSAjusteSubDetalleSERIESetText
      Size = 50
    end
    object CDSAjusteSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSAjusteSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object CDSAjusteSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
  end
  object DSAjusteSubDetalle: TDataSource
    DataSet = CDSAjusteSubDetalle
    Left = 448
    Top = 488
  end
  object IBGAjusteSubDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTOMERCASUBDET'
    SystemGenerators = False
    Left = 552
    Top = 400
  end
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Se' +
      'ttings\usuario\Mis documentos\Padron Embargos.xls;Extended Prope' +
      'rties=Excel 8.0;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 466
  end
  object ADODSDetalelleXLS: TADODataSet
    Connection = ADOConnection
    CursorType = ctStatic
    CommandText = 'Hoja1$'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 98
    Top = 511
  end
  object OpenDialog: TOpenDialog
    Left = 176
    Top = 447
  end
  object DSCDetalleXLS: TDataSource
    DataSet = ADODSDetalelleXLS
    Left = 190
    Top = 496
  end
  object PopupMenu1: TPopupMenu
    Left = 527
    Top = 168
    object ImportarDetalledesdeExcel1: TMenuItem
      Action = ImportarDetalle
    end
    object ExportarDetalleaExcel1: TMenuItem
      Action = ExportarXLS
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ImportardesdeExcelCompensado1: TMenuItem
      Action = ImportarExcelCompensado
    end
    object ImportardesdeExcelCompensadoaFechadeIngreso1: TMenuItem
      Action = ImportarExcelCompFecha
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object VerCodigoAlternativo1: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativo1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object SaltarUnidades1: TMenuItem
      Caption = 'Saltear Unidades en la Carga'
      OnClick = SaltarUnidades1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object BuscarDeposito1: TMenuItem
      Action = BuscarDeposito
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object CopiaBkAjuste1: TMenuItem
      Action = CopiaPapeleraAjuste
    end
  end
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDeposito'
    Left = 352
    Top = 414
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
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 784
    Top = 120
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 712
    Top = 112
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
    Left = 352
    Top = 358
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
    object CDSSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
    end
    object CDSSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
    end
    object CDSSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object CDSSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
    object CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSAjusteCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPAjusteCab'
    OnNewRecord = CDSAjusteCabNewRecord
    Left = 374
    Top = 220
    object CDSAjusteCabID_RTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjusteCabLETRA: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Size = 1
    end
    object CDSAjusteCabSUCRTO: TStringField
      DisplayWidth = 4
      FieldName = 'SUCRTO'
      Origin = 'SUCRTO'
      OnSetText = CDSAjusteCabSUCRTOSetText
      Size = 4
    end
    object CDSAjusteCabNUMRTO: TStringField
      DisplayWidth = 8
      FieldName = 'NUMRTO'
      Origin = 'NUMRTO'
      OnSetText = CDSAjusteCabNUMRTOSetText
      Size = 8
    end
    object CDSAjusteCabSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      OnSetText = CDSAjusteCabSUCURSALSetText
    end
    object CDSAjusteCabNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSAjusteCabTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSAjusteCabCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSAjusteCabOBS: TStringField
      DisplayWidth = 120
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 120
    end
    object CDSAjusteCabDEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      OnSetText = CDSAjusteCabDEPOSITOSetText
    end
    object CDSAjusteCabMUESTRACOMPROBANTE: TStringField
      DisplayWidth = 15
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSAjusteCabMUESTRASUCURSAL: TStringField
      DisplayWidth = 35
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSAjusteCabMUESTRADEPOSITO: TStringField
      DisplayWidth = 25
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSAjusteCabID_TIPOCOMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSAjusteCabID_TIPOCOMPROBANTESetText
    end
    object CDSAjusteCabAJUSTE_CERO_STOCK: TStringField
      DisplayWidth = 1
      FieldName = 'AJUSTE_CERO_STOCK'
      Origin = 'AJUSTE_CERO_STOCK'
      FixedChar = True
      Size = 1
    end
    object CDSAjusteCabUSUARIO: TStringField
      DisplayWidth = 50
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSAjusteCabFECHA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSAjusteCabFECHA_HORA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSAjusteCabTOTAL: TFloatField
      DisplayWidth = 16
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object CDSAjusteCabMOTIVO: TIntegerField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Required = True
    end
    object CDSAjusteCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object CDSAjusteCabID_INVENTARIO: TIntegerField
      FieldName = 'ID_INVENTARIO'
      Origin = 'ID_INVENTARIO'
    end
    object CDSAjusteCabPERSONAL_RETIRA: TStringField
      FieldName = 'PERSONAL_RETIRA'
      Origin = 'PERSONAL_RETIRA'
      OnSetText = CDSAjusteCabPERSONAL_RETIRASetText
      Size = 6
    end
    object CDSAjusteCabMUESTRAPERSONAL: TStringField
      FieldName = 'MUESTRAPERSONAL'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSAjusteCabTOTAL_VTA: TFloatField
      FieldName = 'TOTAL_VTA'
      Origin = 'TOTAL_VTA'
      Required = True
    end
  end
  object CDSAjusteDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cab'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPAjusteDet'
    BeforePost = CDSAjusteDetBeforePost
    AfterPost = CDSAjusteDetAfterPost
    BeforeDelete = CDSAjusteDetBeforeDelete
    AfterDelete = CDSAjusteDetAfterDelete
    AfterScroll = CDSAjusteDetAfterScroll
    OnNewRecord = CDSAjusteDetNewRecord
    Left = 360
    Top = 296
    object CDSAjusteDetID_RTO_DET: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_RTO_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjusteDetID_RTO_CAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_RTO_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjusteDetCODIGO: TStringField
      DisplayWidth = 50
      FieldName = 'CODIGO'
      OnGetText = CDSAjusteDetCODIGOGetText
      OnSetText = CDSAjusteDetCODIGOSetText
      EditMask = 'cccccccccccccccccccccccccccccccccccccccccccccccccc;0; '
      Size = 50
    end
    object CDSAjusteDetDETALLE: TStringField
      DisplayWidth = 47
      FieldName = 'DETALLE'
      Size = 47
    end
    object CDSAjusteDetUNIDAD: TStringField
      DisplayWidth = 3
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSAjusteDetNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSAjusteDetDEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO'
    end
    object CDSAjusteDetCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSAjusteDetTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSAjusteDetAFECTASTOCK: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTASTOCK'
      Size = 1
    end
    object CDSAjusteDetCON_NRO_SERIE: TStringField
      DisplayWidth = 1
      FieldName = 'CON_NRO_SERIE'
      Size = 1
    end
    object CDSAjusteDetCOSTO_UNITARIO: TFloatField
      DisplayLabel = 'C.Unitario'
      FieldName = 'COSTO_UNITARIO'
      Required = True
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSAjusteDetCOSTO_TOTAL: TFloatField
      DisplayLabel = 'C.Total'
      FieldName = 'COSTO_TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSAjusteDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSAjusteDetSTOCK_ACTUAL_VTA: TFloatField
      DisplayLabel = 'Stk.Actual'
      FieldName = 'STOCK_ACTUAL_VTA'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSAjusteDetSTOCK_ACTUAL_COMPRA: TFloatField
      DisplayLabel = 'Stk.Act.Comp'
      FieldName = 'STOCK_ACTUAL_COMPRA'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSAjusteDetCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Required = True
      OnSetText = CDSAjusteDetCANTIDADSetText
      DisplayFormat = ',0.000'
      EditFormat = '0.000'
    end
    object CDSAjusteDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object CDSAjusteDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSAjusteDetUNIDADES_STK: TFloatField
      DisplayLabel = 'Unid.Stk'
      FieldName = 'UNIDADES_STK'
      Required = True
      OnSetText = CDSAjusteDetUNIDADES_STKSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSAjusteDetPRESENT_CANTIDAD: TFloatField
      FieldName = 'PRESENT_CANTIDAD'
      Required = True
    end
    object CDSAjusteDetID_MOTIVO: TIntegerField
      FieldName = 'ID_MOTIVO'
      Required = True
    end
    object CDSAjusteDetPRECIO_UNITARIO: TFloatField
      FieldName = 'PRECIO_UNITARIO'
      Required = True
    end
    object CDSAjusteDetPRECIO_TOTAL: TFloatField
      FieldName = 'PRECIO_TOTAL'
      Required = True
    end
  end
  object spRecaculaCostos: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REVALORIZAR_AJUSTESSTOCK'
    Left = 704
    Top = 504
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object DataToXLS1: TDataToXLS
    DataSet = CDSAjusteDet
    Columns = <
      item
        DataField = 'CODIGO'
        Title = 'CODIGO'
      end
      item
        DataField = 'CANTIDAD'
        Title = 'FISICO'
        DataType = ctDouble
      end>
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -13
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Left = 864
    Top = 512
  end
  object SaveDialog1: TSaveDialog
    Left = 600
    Top = 392
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Options = []
    Left = 256
    Top = 592
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
    Left = 112
    Top = 592
    object CDSExistenciaCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object CDSExistenciaDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSExistenciaFISICO: TFloatField
      DisplayLabel = 'Fiscio'
      FieldName = 'FISICO'
      Origin = 'FISICO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSExistenciaSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      DisplayLabel = 'Compr.'
      FieldName = 'COMPROMETIDO'
      Origin = 'COMPROMETIDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      DisplayLabel = 'En Trans.'
      FieldName = 'EN_TRANSITO'
      Origin = 'EN_TRANSITO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
      Origin = 'DEPOSITO_STK'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Origin = 'DEPOSITO_NOMBRE'
      Size = 25
    end
  end
  object DSExistencia: TDataSource
    DataSet = CDSExistencia
    Left = 184
    Top = 592
  end
  object DSPAjuteLote: TDataSetProvider
    DataSet = DMMain_FD.QAjustesLote
    Exported = False
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 554
  end
  object CDSAjusteLote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DET'
    MasterFields = 'ID_RTO_DET'
    MasterSource = DSAjusteDet
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAjuteLote'
    OnNewRecord = CDSAjusteLoteNewRecord
    Left = 576
    Top = 554
    object CDSAjusteLoteID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjusteLoteID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjusteLoteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAjusteLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
      OnSetText = CDSAjusteLoteID_LOTESetText
    end
    object CDSAjusteLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSAjusteLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object CDSAjusteLoteCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object CDSAjusteLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSAjusteLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSAjusteLoteLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object CDSAjusteLoteFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSAjusteLoteFECHAVTO: TDateField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
  end
  object DSAjustesLote: TDataSource
    DataSet = CDSAjusteLote
    Left = 656
    Top = 554
  end
  object IBGAjusteLote: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_RTOMERCA_LOTES'
    SystemGenerators = False
    Left = 784
    Top = 562
  end
  object CDSBuscaLotes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaLotes'
    Left = 368
    Top = 167
    object CDSBuscaLotesLOTE: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 15
      FieldName = 'LOTE'
      Size = 15
    end
    object CDSBuscaLotesDESPACHO: TStringField
      DisplayLabel = 'Despacho'
      DisplayWidth = 15
      FieldName = 'DESPACHO'
      Size = 15
    end
    object CDSBuscaLotesSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 16
      FieldName = 'SALDO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSBuscaLotesID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaLotesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 8
    end
    object CDSBuscaLotesFECHA_ENTRADA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA_ENTRADA'
      Visible = False
    end
    object CDSBuscaLotesFECHA_VTO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHA_VTO'
      Visible = False
    end
    object CDSBuscaLotesCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      DisplayWidth = 16
      FieldName = 'CANTIDAD'
      Visible = False
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSBuscaLotesDEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO'
      Required = True
      Visible = False
    end
  end
  object DSPBuscaLotes: TDataSetProvider
    DataSet = DMBuscadores.QBuscaLotes
    Options = [poAllowCommandText]
    Left = 288
    Top = 167
  end
  object ComBuscadorDeposito: TComBuscador
    Data = QBuscaDeposito
    Campo = 'ID'
    Titulo = 'Depositos'
    rOk = False
    Left = 48
    Top = 256
  end
  object ComBuscadorSucursal: TComBuscador
    Data = CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 632
    Top = 112
  end
  object ComBuscadorSerie: TComBuscador
    Data = QBuscaNroSerie
    Campo = 'CODIGOSERIE'
    Titulo = 'Nros. de Serie'
    rOk = False
    Left = 632
    Top = 240
  end
  object ComBuscadorLote: TComBuscador
    Data = CDSBuscaLotes
    Campo = 'ID'
    Titulo = 'Lotes'
    rOk = False
    Left = 786
    Top = 337
  end
  object DSMotivos: TDataSource
    DataSet = QMotivos
    Left = 104
    Top = 360
  end
  object frDSAjusteLote: TfrxDBDataset
    UserName = 'frDSAjusteLote'
    CloseDataSource = False
    DataSet = CDSAjusteLote
    BCDToCurrency = False
    DataSetOptions = []
    Left = 640
    Top = 664
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
      end
      item
        FieldName = 'LOTE'
        FieldAlias = 'LOTE'
      end>
  end
  object QStock_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select S.codigo_stk,s.detalle_stk,unidad,unidad_compra,'
      '  s.controlastock,s.control_serie,s.costo_total_stk,'
      '  s.contenido_compra,dep.fisico as MuestraFisico,'
      '  s.clase_articulo,s.reemplazo_stk,'
      '  s.control_trazabilidad,s.presentacion_cantidad  from stock s'
      
        'left join depositostk dep on dep.codigo_stk=s.Codigo_stk and dep' +
        '.codigo_deposito = :deposito'
      'where S.Codigo_Stk = :codigo')
    Left = 24
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QBuscaXAlternativo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo_stk from stock '
      'where reemplazo_stk=:codigo')
    Left = 264
    Top = 112
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object QBuscaXAlternativoCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  '
      'and sucursal=:suc '
      'and compra_venta='#39'V'#39' '
      'and tipo_comprob='#39'AS'#39)
    Left = 32
    Top = 184
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QComprobDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QComprobID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QComprobCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QComprobFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QComprobDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QComprobULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QComprobEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBuscaNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fec' +
        'haegreso from stock_series ss'
      
        'where ss.codigo_stk=:codigo and  ss.deposito=:deposito and  id_c' +
        'pbte_egreso is null')
    Left = 792
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QBuscaNroSerieID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object QBuscaNroSerieCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Origin = 'CODIGOSERIE'
      Size = 50
    end
    object QBuscaNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
      Origin = 'FECHAINGRESO'
    end
    object QBuscaNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
      Origin = 'FECHAEGRESO'
    end
  end
  object QNroSerie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      'where ss.codigo_stk=:codigo and '
      'ss.codigoserie=:CodigoSerie and '
      'ss.fechaegreso is null and ss.deposito=:deposito')
    Left = 800
    Top = 184
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'CODIGOSERIE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNroSerieID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object QNroSerieCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Origin = 'CODIGOSERIE'
      Size = 50
    end
    object QNroSerieFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
      Origin = 'FECHAINGRESO'
    end
    object QNroSerieFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
      Origin = 'FECHAEGRESO'
    end
  end
  object QBuscaStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo_stk,detalle_stk from stock '
      'where (Clase_Articulo in (1,2,3)) and controlastock<>'#39'N'#39
      'Order By Detalle_Stk')
    Left = 128
    Top = 184
    object QBuscaStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QBuscaStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object QBuscaDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos order by nombre')
    Left = 128
    Top = 232
    object QBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QBuscaDepositoID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
      Visible = False
    end
    object QBuscaDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object QMotivos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_MOTIVO_AJ_STOCK')
    Left = 48
    Top = 360
    object QMotivosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMotivosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object QControlCpbteExistente: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select rc.id_rto from rtomercacab rc'
      'where rc.tipocpbte = :tipo and'
      '      rc.clasecpbte = :clase and'
      '      rc.letra = :letra and'
      '      rc.sucrto = :suc and'
      '      rc.numrto = :numero and'
      '      rc.sucursal = :sucursal')
    Left = 328
    Top = 544
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QControlCpbteExistenteID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QStkUnit_al: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.fisico from stk_unitario_al (:deposito,:fe' +
        'cha,:codigo) s')
    Left = 440
    Top = 408
    ParamData = <
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object QStkUnit_alCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object QStkUnit_alFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
    end
  end
  object QCambiarFecha: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update rtomercacab r set r.fecha= :FechaNueva where r.id_rto= :i' +
        'd')
    Left = 848
    Top = 440
    ParamData = <
      item
        Name = 'FECHANUEVA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QEmpleado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select nombre from personal where codigo=:codigo ')
    Left = 408
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QEmpleadoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object QBuscaEmpleados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select nombre,codigo from personal '
      'where activo='#39'S'#39
      'order by nombre')
    Left = 584
    Top = 17
    object QBuscaEmpleadosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QBuscaEmpleadosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
  end
  object ComBuscadorEmpleado: TComBuscador
    Data = QBuscaEmpleados
    Campo = 'CODIGO'
    Titulo = 'Empleados'
    rOk = False
    Left = 632
    Top = 171
  end
  object QNroSerie_enStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      'where ss.codigo_stk=:codigo and'
      '      ss.codigoserie=:CodigoSerie and'
      '      ss.fechaegreso is null')
    Left = 376
    Top = 592
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'CODIGOSERIE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object QNroSerie_enStockID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNroSerie_enStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object QNroSerie_enStockCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Origin = 'CODIGOSERIE'
      Size = 50
    end
    object QNroSerie_enStockFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
      Origin = 'FECHAINGRESO'
    end
    object QNroSerie_enStockFECHAEGRESO: TSQLTimeStampField
      FieldName = 'FECHAEGRESO'
      Origin = 'FECHAEGRESO'
    end
  end
  object QDepo_GeneraXML: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.id,s.genera_xml_comun from depositos d'
      'left join sucursal s on s.codigo=d.sucursal'
      'where d.id = :id')
    Left = 872
    Top = 576
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDepo_GeneraXMLID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepo_GeneraXMLGENERA_XML_COMUN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GENERA_XML_COMUN'
      Origin = 'GENERA_XML_COMUN'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock_
    Options = []
    Left = 72
    Top = 120
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DEPOSITO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPStock'
    Left = 120
    Top = 120
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object CDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
    end
    object CDSStockMUESTRAFISICO: TFloatField
      FieldName = 'MUESTRAFISICO'
      ReadOnly = True
    end
    object CDSStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
    object CDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSStockCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
    end
  end
end

object FormMuestraCpbteCtaCteCompra: TFormMuestraCpbteCtaCteCompra
  Left = 104
  Top = 60
  Width = 693
  Height = 540
  Caption = 'Comprobante de Compra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 154
    Align = alTop
    TabOrder = 0
    object RxLabel58: TRxLabel
      Left = 6
      Top = 2
      Width = 35
      Height = 13
      Caption = 'Fecha '
    end
    object RxLabel60: TRxLabel
      Left = 516
      Top = 2
      Width = 100
      Height = 13
      Caption = 'Nro.de Comprobante'
    end
    object RxLabel61: TRxLabel
      Left = 521
      Top = 71
      Width = 108
      Height = 13
      Caption = 'Fecha de Vencimiento'
    end
    object RxLabel63: TRxLabel
      Left = 521
      Top = 111
      Width = 85
      Height = 13
      Caption = 'Orden de Compra'
    end
    object RxLabel6: TRxLabel
      Left = 6
      Top = 39
      Width = 51
      Height = 13
      Caption = 'Proveedor'
    end
    object RxLabel8: TRxLabel
      Left = 6
      Top = 75
      Width = 103
      Height = 13
      Caption = 'Condicion de Compra'
    end
    object RxLabel1: TRxLabel
      Left = 6
      Top = 112
      Width = 44
      Height = 13
      Caption = 'Depósito'
    end
    object RxLabel9: TRxLabel
      Left = 416
      Top = 71
      Width = 62
      Height = 13
      Caption = 'Fecha Fiscal'
    end
    object RxLabel59: TRxLabel
      Left = 96
      Top = 2
      Width = 97
      Height = 13
      Caption = 'Sucursal de Compra'
    end
    object dbtMuestraComprob: TDBText
      Left = 302
      Top = 16
      Width = 155
      Height = 21
      DataField = 'MUESTRACOMPROBANTE'
      DataSource = wwDSCompCab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 296
      Top = 2
      Width = 104
      Height = 13
      Caption = 'Tipo de Comprobante'
    end
    object DBText10: TDBText
      Left = 488
      Top = 19
      Width = 22
      Height = 17
      DataField = 'LetraFac'
      DataSource = wwDSCompCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object wwFechaCompra: TwwDBDateTimePicker
      Left = 6
      Top = 16
      Width = 84
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.Options = [mdoDayState, mdoNoToday]
      DataField = 'FECHACOMPRA'
      DataSource = wwDSCompCab
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object dbeSuc: TDBEdit
      Left = 514
      Top = 16
      Width = 49
      Height = 24
      DataField = 'SucFac'
      DataSource = wwDSCompCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object dbeNumero: TDBEdit
      Left = 570
      Top = 16
      Width = 81
      Height = 24
      DataField = 'NumeroFac'
      DataSource = wwDSCompCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object wwFechaVencimiento: TwwDBDateTimePicker
      Left = 521
      Top = 85
      Width = 84
      Height = 21
      TabStop = False
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.Options = [mdoDayState, mdoNoToday]
      DataField = 'FechaVto'
      DataSource = wwDSCompCab
      Epoch = 1950
      ShowButton = True
      TabOrder = 12
    end
    object dbeNombre: TDBEdit
      Left = 80
      Top = 53
      Width = 289
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'RazonSocial'
      DataSource = wwDSCompCab
      Enabled = False
      TabOrder = 4
    end
    object dbeSucursal: TDBEdit
      Left = 142
      Top = 16
      Width = 153
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'MUESTRASUCURSAL'
      DataSource = wwDSCompCab
      Enabled = False
      TabOrder = 2
    end
    object dbeCondCompra: TDBEdit
      Left = 64
      Top = 90
      Width = 153
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'MUESTRACONDCOMPRA'
      DataSource = wwDSCompCab
      Enabled = False
      TabOrder = 6
    end
    object dbeOCompra: TDBEdit
      Left = 521
      Top = 125
      Width = 121
      Height = 21
      DataField = 'OrdenCompra'
      DataSource = wwDSCompCab
      TabOrder = 13
    end
    object RxDBECodigo: TRxDBComboEdit
      Left = 6
      Top = 53
      Width = 65
      Height = 21
      ClickKey = 16397
      DataField = 'Codigo'
      DataSource = wwDSCompCab
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      TabOrder = 3
    end
    object RxDBESucursal: TRxDBComboEdit
      Left = 92
      Top = 16
      Width = 45
      Height = 21
      ClickKey = 16397
      DataField = 'SucursalCompra'
      DataSource = wwDSCompCab
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      TabOrder = 1
    end
    object RxDBECondCompra: TRxDBComboEdit
      Left = 6
      Top = 90
      Width = 45
      Height = 21
      ClickKey = 16397
      DataField = 'CondicionCompra'
      DataSource = wwDSCompCab
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      TabOrder = 5
    end
    object RxDBEDeposito: TRxDBComboEdit
      Left = 6
      Top = 128
      Width = 45
      Height = 21
      ClickKey = 16397
      DataField = 'Deposito'
      DataSource = wwDSCompCab
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      TabOrder = 7
    end
    object dbeDeposito: TDBEdit
      Left = 64
      Top = 128
      Width = 153
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'MUESTRADEPOSITO'
      DataSource = wwDSCompCab
      Enabled = False
      TabOrder = 8
    end
    object wwFechaFiscal: TwwDBDateTimePicker
      Left = 416
      Top = 85
      Width = 84
      Height = 21
      Hint = 
        'Fecha que se tomará, para la confección del listado de Iva Compr' +
        'a'
      TabStop = False
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'FECHAFISCAL'
      DataSource = wwDSCompCab
      Epoch = 1960
      ParentShowHint = False
      ShowHint = True
      ShowButton = True
      TabOrder = 11
    end
  end
  object pcDetalleFactura: TPageControl
    Left = 0
    Top = 154
    Width = 685
    Height = 244
    ActivePage = pagDetalle
    Align = alTop
    TabOrder = 1
    TabPosition = tpBottom
    object pagDetalle: TTabSheet
      Caption = 'Detalles'
      object Label17: TLabel
        Left = 319
        Top = 123
        Width = 99
        Height = 16
        Caption = 'Observaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object Bevel48: TBevel
        Left = 522
        Top = 189
        Width = 111
        Height = 21
      end
      object dbtTotal: TDBText
        Left = 555
        Top = 191
        Width = 75
        Height = 17
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = wwDSCompCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel5: TRxLabel
        Left = 482
        Top = 191
        Width = 40
        Height = 19
        Alignment = taRightJustify
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rklCondicionPago: TRxLabel
        Left = 225
        Top = 196
        Width = 103
        Height = 13
        Caption = 'Condiciones de Pago'
      end
      object dbeObs1: TDBEdit
        Left = 319
        Top = 139
        Width = 313
        Height = 21
        DataField = 'Observacion1'
        DataSource = wwDSCompCab
        TabOrder = 1
      end
      object dbeObs2: TDBEdit
        Left = 319
        Top = 162
        Width = 313
        Height = 21
        DataField = 'Observacion2'
        DataSource = wwDSCompCab
        TabOrder = 2
      end
      object DBGrillaDetalle: TDBGrid
        Left = 1
        Top = 1
        Width = 673
        Height = 120
        Color = clMenu
        DataSource = wwDSCompDet
        FixedColor = clFuchsia
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CodigoArticulo'
            Title.Alignment = taCenter
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
            FieldName = 'DETALLE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 260
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
            Visible = True
          end
          item
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
            FieldName = 'Cantidad'
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
            Expanded = False
            FieldName = 'Unitario_Total'
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
            FieldName = 'DESCUENTO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 51
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
            Visible = True
          end>
      end
      object dbgCondPago: TDBGrid
        Left = 8
        Top = 126
        Width = 215
        Height = 85
        Color = clMenu
        DataSource = wwDSCondPago
        FixedColor = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
    object PagImpuestos: TTabSheet
      Caption = 'Impuestos'
      ImageIndex = 1
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
      object Bevel6: TBevel
        Left = 279
        Top = 89
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
        DataSource = wwDSCompCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 285
        Top = 91
        Width = 89
        Height = 17
        Alignment = taRightJustify
        DataField = 'DstoImporte'
        DataSource = wwDSCompCab
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
        DataSource = wwDSCompCab
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
        DataSource = wwDSCompCab
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
        DataSource = wwDSCompCab
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
        DataSource = wwDSCompCab
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
      object RxLabel2: TRxLabel
        Left = 416
        Top = 73
        Width = 100
        Height = 13
        Caption = 'Percepciones de Iva'
      end
      object RxLabel3: TRxLabel
        Left = 416
        Top = 132
        Width = 90
        Height = 13
        Caption = 'Percepciones IIBB'
      end
      object RxLabel4: TRxLabel
        Left = 416
        Top = 0
        Width = 17
        Height = 13
        Caption = 'Iva'
      end
      object DBText2: TDBText
        Left = 288
        Top = 172
        Width = 89
        Height = 17
        Alignment = taRightJustify
        DataField = 'NETOMONOTRIBUTO2'
        DataSource = wwDSCompCab
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
        DataSource = wwDSCompCab
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
        DataSource = wwDSCompCab
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
        DataSource = wwDSCompCab
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
        Width = 241
        Height = 40
        TabStop = False
        Color = clMenu
        DataSource = wwDSPercepcionIVA
        Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
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
        DataSource = wwDSCompCab
        TabOrder = 0
      end
      object dbgPercepcionIB: TDBGrid
        Left = 416
        Top = 148
        Width = 241
        Height = 41
        TabStop = False
        Color = clMenu
        DataSource = wwDSPercepcionIB
        Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
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
      object dbgIva: TDBGrid
        Left = 416
        Top = 15
        Width = 241
        Height = 57
        TabStop = False
        Color = clMenu
        DataSource = wwDSImpuestos
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 398
    Width = 685
    Height = 25
    Align = alTop
    TabOrder = 2
    object DBStatusLabel1: TDBStatusLabel
      Left = 137
      Top = 6
      Width = 85
      Height = 13
      DatasetName = 'Archivo Factura'
      Captions.Strings = (
        'A'
        'En modo Browse'
        'En modo de Edit'
        'En modo de Insert')
      ShowOptions = doBoth
      ParentShowHint = False
      ShowHint = False
    end
    object DBStatusLabel2: TDBStatusLabel
      Left = 400
      Top = 6
      Width = 105
      Height = 13
      DatasetName = 'Archivo Movimientos'
      DataSource = DatosVentas.wwDSVentaDet
      Captions.Strings = (
        'A'
        'En modo Browse'
        'En modo de Edit'
        'En modo de Insert')
      ShowOptions = doBoth
    end
    object RxClock1: TRxClock
      Left = 4
      Top = 4
      Width = 105
      Height = 17
    end
  end
  object wwDSCompCab: TwwDataSource
    DataSet = wwCDSCompCab
    Left = 240
    Top = 104
  end
  object wwDSCondPago: TwwDataSource
    DataSet = wwCDSCondPago
    Left = 64
    Top = 424
  end
  object DSPCondPago: TDataSetProvider
    DataSet = DMMain.wwQCondPago
    Constraints = True
    Left = 144
    Top = 424
  end
  object wwCDSCondPago: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FC'
    MasterFields = 'ID_FC'
    MasterSource = wwDSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCondPago'
    ReadOnly = True
    ValidateWithMask = True
    Left = 232
    Top = 424
    object wwCDSCondPagoID: TIntegerField
      FieldName = 'ID'
    end
    object wwCDSCondPagoID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object wwCDSCondPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwCDSCondPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object wwCDSCondPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object wwCDSCondPagoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object wwCDSCondPagoFECHA: TDateTimeField
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldName = 'FECHA'
      EditMask = '99/99/9999'
    end
    object wwCDSCondPagoDSCTO: TFloatField
      DisplayLabel = 'Dto.'
      FieldName = 'DSCTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object wwCDSCondPagoIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
    object wwCDSCondPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
  end
  object wwDSPercepcionIVA: TwwDataSource
    DataSet = wwCDSPercepcionIVA
    Left = 296
    Top = 176
  end
  object DSPPercepcionIVA: TDataSetProvider
    DataSet = DMMain.wwQPercepcionIva
    Constraints = True
    Left = 372
    Top = 208
  end
  object wwCDSPercepcionIVA: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FcCompCab'
    MasterFields = 'Id_Fc'
    MasterSource = wwDSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPercepcionIVA'
    ReadOnly = True
    ValidateWithMask = True
    Left = 456
    Top = 208
    object wwCDSPercepcionIVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
    end
    object wwCDSPercepcionIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
    end
    object wwCDSPercepcionIVADETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object wwCDSPercepcionIVAID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
    end
    object wwCDSPercepcionIVANETO: TFloatField
      FieldName = 'NETO'
    end
    object wwCDSPercepcionIVATASA: TFloatField
      FieldName = 'TASA'
    end
    object wwCDSPercepcionIVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
  end
  object wwCDSPercepcionIB: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FcCompCab'
    MasterFields = 'Id_Fc'
    MasterSource = wwDSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPercepcionIB'
    ReadOnly = True
    ValidateWithMask = True
    Left = 456
    Top = 256
    object wwCDSPercepcionIBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
    end
    object wwCDSPercepcionIBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
    end
    object wwCDSPercepcionIBDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object wwCDSPercepcionIBID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
    end
    object wwCDSPercepcionIBNETO: TFloatField
      FieldName = 'NETO'
    end
    object wwCDSPercepcionIBTASA: TFloatField
      FieldName = 'TASA'
    end
    object wwCDSPercepcionIBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
  end
  object DSPPercepcionIB: TDataSetProvider
    DataSet = DMMain.wwQPercepcionIB
    Constraints = True
    Left = 372
    Top = 256
  end
  object wwDSPercepcionIB: TwwDataSource
    DataSet = wwCDSPercepcionIB
    Left = 288
    Top = 256
  end
  object DSPCompCab: TDataSetProvider
    DataSet = DMMain.wwQCompraCab
    Constraints = True
    Left = 332
    Top = 104
  end
  object wwCDSCompCab: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCompCab'
    ReadOnly = True
    ValidateWithMask = True
    Left = 408
    Top = 112
    object wwCDSCompCabID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object wwCDSCompCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwCDSCompCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object wwCDSCompCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object wwCDSCompCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Size = 1
    end
    object wwCDSCompCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object wwCDSCompCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object wwCDSCompCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object wwCDSCompCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object wwCDSCompCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object wwCDSCompCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object wwCDSCompCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object wwCDSCompCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object wwCDSCompCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object wwCDSCompCabFECHACOMPRA: TDateTimeField
      FieldName = 'FECHACOMPRA'
    end
    object wwCDSCompCabFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
    end
    object wwCDSCompCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
    end
    object wwCDSCompCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object wwCDSCompCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Size = 8
    end
    object wwCDSCompCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object wwCDSCompCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      currency = True
    end
    object wwCDSCompCabDSTO: TFloatField
      FieldName = 'DSTO'
      currency = True
    end
    object wwCDSCompCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      currency = True
    end
    object wwCDSCompCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      currency = True
    end
    object wwCDSCompCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      currency = True
    end
    object wwCDSCompCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      currency = True
    end
    object wwCDSCompCabIBRUTO: TFloatField
      FieldName = 'IBRUTO'
      currency = True
    end
    object wwCDSCompCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object wwCDSCompCabDEBE: TFloatField
      FieldName = 'DEBE'
      currency = True
    end
    object wwCDSCompCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object wwCDSCompCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object wwCDSCompCabSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
    end
    object wwCDSCompCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object wwCDSCompCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object wwCDSCompCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object wwCDSCompCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object wwCDSCompCabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
    end
    object wwCDSCompCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Size = 25
    end
    object wwCDSCompCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Size = 35
    end
    object wwCDSCompCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
    end
    object wwCDSCompCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
    end
    object wwCDSCompCabAPLICA: TStringField
      FieldName = 'APLICA'
      Size = 13
    end
    object wwCDSCompCabFECHAFISCAL: TDateTimeField
      FieldName = 'FECHAFISCAL'
    end
    object wwCDSCompCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
      currency = True
    end
    object wwCDSCompCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
      currency = True
    end
    object wwCDSCompCabCPBTE_INTERNO: TStringField
      FieldName = 'CPBTE_INTERNO'
      Size = 1
    end
    object wwCDSCompCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object wwCDSCompCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Size = 15
    end
    object wwCDSCompCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Size = 1
    end
    object wwCDSCompCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Size = 1
    end
  end
  object wwCDSCompDet: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Id_CabFac'
    MasterFields = 'Id_Fc'
    MasterSource = wwDSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCompDet'
    ReadOnly = True
    ValidateWithMask = True
    Left = 480
    Top = 442
    object wwCDSCompDetCodigoArticulo: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CodigoArticulo'
      Size = 8
    end
    object wwCDSCompDetCantidad: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'Cantidad'
      DisplayFormat = '0.000'
    end
    object wwCDSCompDetUnitario_Total: TFloatField
      DisplayLabel = '$ Unitario'
      FieldName = 'Unitario_Total'
      DisplayFormat = '0.000'
    end
    object wwCDSCompDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwCDSCompDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwCDSCompDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object wwCDSCompDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Size = 6
    end
    object wwCDSCompDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object wwCDSCompDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
    end
    object wwCDSCompDetFECHACOMPRA: TDateTimeField
      FieldName = 'FECHACOMPRA'
    end
    object wwCDSCompDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object wwCDSCompDetUNIDAD: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDAD'
      Size = 2
    end
    object wwCDSCompDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object wwCDSCompDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object wwCDSCompDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object wwCDSCompDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object wwCDSCompDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      DisplayFormat = '0.0'
      EditFormat = '0.0'
    end
    object wwCDSCompDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object wwCDSCompDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object wwCDSCompDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object wwCDSCompDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object wwCDSCompDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object wwCDSCompDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object wwCDSCompDetDESCUENTO: TFloatField
      DisplayLabel = 'Dsto.'
      FieldName = 'DESCUENTO'
      DisplayFormat = '0.00'
    end
    object wwCDSCompDetTOTAL: TFloatField
      DisplayLabel = '$ Total'
      FieldName = 'TOTAL'
      DisplayFormat = '0.000'
    end
    object wwCDSCompDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object wwCDSCompDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object wwCDSCompDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Size = 1
    end
    object wwCDSCompDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object wwCDSCompDetCOSTO_IMP_INTERNO: TFloatField
      FieldName = 'COSTO_IMP_INTERNO'
    end
    object wwCDSCompDetUNITARIO_IMP_INTERNO: TFloatField
      FieldName = 'UNITARIO_IMP_INTERNO'
    end
    object wwCDSCompDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
  end
  object DSPCompDet: TDataSetProvider
    DataSet = DMMain.wwQCompraDet
    Constraints = True
    Left = 396
    Top = 442
  end
  object wwDSCompDet: TwwDataSource
    DataSet = wwCDSCompDet
    Left = 316
    Top = 442
  end
  object wwDSImpuestos: TwwDataSource
    DataSet = wwCDSImpuestos
    Left = 56
    Top = 224
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain.wwQImpuestosComp
    Constraints = True
    Left = 140
    Top = 224
  end
  object wwCDSImpuestos: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FcCompCab'
    MasterFields = 'Id_Fc'
    MasterSource = wwDSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPImpuestos'
    ReadOnly = True
    ValidateWithMask = True
    Left = 224
    Top = 224
    object wwCDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
    end
    object wwCDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object wwCDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object wwCDSImpuestosID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
    end
    object wwCDSImpuestosNETO: TFloatField
      FieldName = 'NETO'
    end
    object wwCDSImpuestosTASA: TFloatField
      FieldName = 'TASA'
      DisplayFormat = '0.0'
    end
    object wwCDSImpuestosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
    end
  end
end

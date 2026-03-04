object FormMuestraCpbteCtaCteCompra: TFormMuestraCpbteCtaCteCompra
  Left = 217
  Top = 123
  BorderStyle = bsSingle
  Caption = 'Comprobante de Compra'
  ClientHeight = 513
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 154
    Align = alTop
    TabOrder = 0
    object dbtMuestraComprob: TDBText
      Left = 302
      Top = 16
      Width = 176
      Height = 21
      DataField = 'MUESTRACOMPROBANTE'
      DataSource = DSCompCab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText10: TDBText
      Left = 488
      Top = 19
      Width = 22
      Height = 17
      DataField = 'LetraFac'
      DataSource = DSCompCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel58: TJvLabel
      Left = 6
      Top = 2
      Width = 35
      Height = 13
      Caption = 'Fecha '
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel60: TJvLabel
      Left = 516
      Top = 2
      Width = 100
      Height = 13
      Caption = 'Nro.de Comprobante'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel61: TJvLabel
      Left = 521
      Top = 71
      Width = 108
      Height = 13
      Caption = 'Fecha de Vencimiento'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel63: TJvLabel
      Left = 521
      Top = 111
      Width = 85
      Height = 13
      Caption = 'Orden de Compra'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel6: TJvLabel
      Left = 6
      Top = 39
      Width = 51
      Height = 13
      Caption = 'Proveedor'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel8: TJvLabel
      Left = 6
      Top = 75
      Width = 103
      Height = 13
      Caption = 'Condicion de Compra'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel1: TJvLabel
      Left = 6
      Top = 112
      Width = 44
      Height = 13
      Caption = 'Dep'#243'sito'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel9: TJvLabel
      Left = 416
      Top = 71
      Width = 62
      Height = 13
      Caption = 'Fecha Fiscal'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel59: TJvLabel
      Left = 96
      Top = 2
      Width = 97
      Height = 13
      Caption = 'Sucursal de Compra'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel10: TJvLabel
      Left = 296
      Top = 2
      Width = 104
      Height = 13
      Caption = 'Tipo de Comprobante'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object dbeSuc: TDBEdit
      Left = 514
      Top = 16
      Width = 49
      Height = 24
      DataField = 'SucFac'
      DataSource = DSCompCab
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
      DataSource = DSCompCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object dbeNombre: TDBEdit
      Left = 80
      Top = 53
      Width = 289
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'RazonSocial'
      DataSource = DSCompCab
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
      DataSource = DSCompCab
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
      DataSource = DSCompCab
      Enabled = False
      TabOrder = 6
    end
    object dbeOCompra: TDBEdit
      Left = 521
      Top = 125
      Width = 121
      Height = 21
      DataField = 'OrdenCompra'
      DataSource = DSCompCab
      TabOrder = 13
    end
    object dbeDeposito: TDBEdit
      Left = 64
      Top = 128
      Width = 153
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'MUESTRADEPOSITO'
      DataSource = DSCompCab
      Enabled = False
      TabOrder = 8
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
      DataSource = DSCompCab
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ButtonWidth = 16
      TabOrder = 3
    end
    object RxDBESucursal: TJvDBComboEdit
      Left = 92
      Top = 16
      Width = 45
      Height = 21
      ClickKey = 16397
      DataField = 'SucursalCompra'
      DataSource = DSCompCab
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ButtonWidth = 16
      TabOrder = 1
    end
    object RxDBECondCompra: TJvDBComboEdit
      Left = 6
      Top = 90
      Width = 45
      Height = 21
      ClickKey = 16397
      DataField = 'CondicionCompra'
      DataSource = DSCompCab
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ButtonWidth = 16
      TabOrder = 5
    end
    object RxDBEDeposito: TJvDBComboEdit
      Left = 6
      Top = 128
      Width = 45
      Height = 21
      ClickKey = 16397
      DataField = 'Deposito'
      DataSource = DSCompCab
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ButtonWidth = 16
      TabOrder = 7
    end
    object FechaCompra: TJvDBDateEdit
      Left = 6
      Top = 16
      Width = 86
      Height = 21
      DataField = 'FECHACOMPRA'
      DataSource = DSCompCab
      ShowNullDate = False
      TabOrder = 0
    end
    object FechaVencimiento: TJvDBDateEdit
      Left = 521
      Top = 85
      Width = 108
      Height = 21
      TabStop = False
      DataField = 'FechaVto'
      DataSource = DSCompCab
      ShowNullDate = False
      TabOrder = 12
    end
    object FechaFiscal: TJvDBDateEdit
      Left = 416
      Top = 85
      Width = 99
      Height = 21
      Hint = 
        'Fecha que se tomar'#225', para la confecci'#243'n del listado de Iva Compr' +
        'a'
      TabStop = False
      DataField = 'FECHAFISCAL'
      DataSource = DSCompCab
      ParentShowHint = False
      ShowHint = True
      ShowNullDate = False
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
        DataSource = DSCompCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel5: TJvLabel
        Left = 483
        Top = 191
        Width = 39
        Height = 19
        Alignment = taRightJustify
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -16
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object rklCondicionPago: TJvLabel
        Left = 249
        Top = 189
        Width = 103
        Height = 13
        Caption = 'Condiciones de Pago'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object dbeObs1: TDBEdit
        Left = 319
        Top = 139
        Width = 313
        Height = 21
        DataField = 'Observacion1'
        DataSource = DSCompCab
        TabOrder = 1
      end
      object dbeObs2: TDBEdit
        Left = 319
        Top = 162
        Width = 313
        Height = 21
        DataField = 'Observacion2'
        DataSource = DSCompCab
        TabOrder = 2
      end
      object DBGrillaDetalle: TDBGrid
        Left = 1
        Top = 1
        Width = 673
        Height = 120
        Color = clMenu
        DataSource = DSCompDet
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
            FieldName = 'CODIGOARTICULO'
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
            Width = 39
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
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITARIO_TOTAL'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 62
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
            Width = 47
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
            Width = 73
            Visible = True
          end>
      end
      object dbgCondPago: TDBGrid
        Left = 4
        Top = 127
        Width = 229
        Height = 85
        Color = clMenu
        DataSource = DSCondPago
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
            Width = 75
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
        DataSource = DSCompCab
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
        DataSource = DSCompCab
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
        DataSource = DSCompCab
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
        DataSource = DSCompCab
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
        DataSource = DSCompCab
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
        DataSource = DSCompCab
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
        Left = 288
        Top = 172
        Width = 89
        Height = 17
        Alignment = taRightJustify
        DataField = 'NETOMONOTRIBUTO2'
        DataSource = DSCompCab
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
        DataSource = DSCompCab
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
        DataSource = DSCompCab
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
        DataSource = DSCompCab
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
      object dbgPrecepcionIVA: TDBGrid
        Left = 416
        Top = 89
        Width = 241
        Height = 40
        TabStop = False
        Color = clMenu
        DataSource = DSPercepcionIVA
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
        DataSource = DSCompCab
        TabOrder = 0
      end
      object dbgPercepcionIB: TDBGrid
        Left = 416
        Top = 148
        Width = 241
        Height = 41
        TabStop = False
        Color = clMenu
        DataSource = DSPercepcionIB
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
        DataSource = DSImpuestos
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
    object lbReducida: TLabel
      Left = 8
      Top = 5
      Width = 178
      Height = 16
      Caption = 'Comprobante Sin Detalle '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  object DSPCondPago: TDataSetProvider
    DataSet = DMMain_2.QCondPago
    Left = 144
    Top = 424
  end
  object DSPPercepcionIVA: TDataSetProvider
    DataSet = DMMain_2.QPercepcionIva
    Left = 276
    Top = 168
  end
  object DSPPercepcionIB: TDataSetProvider
    DataSet = DMMain_2.QPercepcionIB
    Left = 372
    Top = 256
  end
  object DSPCompCab: TDataSetProvider
    DataSet = DMMain_2.QCompraCab
    Left = 276
    Top = 88
  end
  object DSPCompDet: TDataSetProvider
    DataSet = DMMain_2.QCompraDet
    Left = 396
    Top = 442
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_2.QImpuestosComp
    Left = 140
    Top = 224
  end
  object DSCompCab: TDataSource
    DataSet = CDSCompCab
    Left = 400
    Top = 88
  end
  object DSCondPago: TDataSource
    DataSet = CDSCondPago
    Left = 296
    Top = 432
  end
  object DSPercepcionIVA: TDataSource
    DataSet = CDSPercepcionIVA
    Left = 408
    Top = 200
  end
  object DSPercepcionIB: TDataSource
    DataSet = CDSPercepcionIB
    Left = 528
    Top = 256
  end
  object DSCompDet: TDataSource
    DataSet = CDSCompDet
    Left = 548
    Top = 450
  end
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 280
    Top = 224
  end
  object CDSCondPago: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FC'
    MasterFields = 'ID_FC'
    MasterSource = DSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCondPago'
    ReadOnly = True
    Left = 232
    Top = 424
    object CDSCondPagoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCondPagoID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object CDSCondPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCondPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSCondPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSCondPagoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object CDSCondPagoFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSCondPagoDSCTO: TFMTBCDField
      DisplayLabel = '%'
      FieldName = 'DSCTO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCondPagoIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCondPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
  end
  object CDSPercepcionIVA: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FCCOMPCAB'
    MasterFields = 'ID_FC'
    MasterSource = DSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPercepcionIVA'
    ReadOnly = True
    Left = 344
    Top = 160
    object CDSPercepcionIVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIVADETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSPercepcionIVAID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSPercepcionIVANETO: TFMTBCDField
      FieldName = 'NETO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIVATASA: TFMTBCDField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIVAIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object CDSPercepcionIB: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FCCOMPCAB'
    MasterFields = 'ID_FC'
    MasterSource = DSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPPercepcionIB'
    ReadOnly = True
    Left = 456
    Top = 256
    object CDSPercepcionIBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Required = True
    end
    object CDSPercepcionIBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Required = True
    end
    object CDSPercepcionIBDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSPercepcionIBID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSPercepcionIBNETO: TFMTBCDField
      FieldName = 'NETO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIBTASA: TFMTBCDField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIBIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSPercepcionIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object CDSCompCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompCab'
    ReadOnly = True
    Left = 336
    Top = 88
    object CDSCompCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCompCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCompCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSCompCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSCompCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSCompCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object CDSCompCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object CDSCompCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSCompCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSCompCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSCompCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSCompCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSCompCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSCompCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSCompCabFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object CDSCompCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSCompCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      Required = True
    end
    object CDSCompCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Size = 8
    end
    object CDSCompCabN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object CDSCompCabNETOGRAV1: TFMTBCDField
      FieldName = 'NETOGRAV1'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabDSTO: TFMTBCDField
      FieldName = 'DSTO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabDSTOIMPORTE: TFMTBCDField
      FieldName = 'DSTOIMPORTE'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabNETOGRAV2: TFMTBCDField
      FieldName = 'NETOGRAV2'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabNETOEXEN1: TFMTBCDField
      FieldName = 'NETOEXEN1'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabNETOEXEN2: TFMTBCDField
      FieldName = 'NETOEXEN2'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabIMPORTEEXCLUIDO2: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO2'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabIMPORTEEXCLUIDO1: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO1'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabDEBE: TFMTBCDField
      FieldName = 'DEBE'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompCabAPLICA: TStringField
      FieldName = 'APLICA'
      Size = 13
    end
    object CDSCompCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSCompCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSCompCabSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Required = True
    end
    object CDSCompCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSCompCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSCompCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Required = True
    end
    object CDSCompCabNETOMONOTRIBUTO1: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO1'
      Precision = 15
      Size = 3
    end
    object CDSCompCabNETOMONOTRIBUTO2: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO2'
      Precision = 15
      Size = 3
    end
    object CDSCompCabCPBTE_INTERNO: TStringField
      FieldName = 'CPBTE_INTERNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object CDSCompCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object CDSCompCabJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
    end
    object CDSCompCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Precision = 15
      Size = 3
    end
    object CDSCompCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSCompCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSCompCabTOTAL_UNIDADES: TFMTBCDField
      FieldName = 'TOTAL_UNIDADES'
      Precision = 15
      Size = 3
    end
    object CDSCompCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object CDSCompCabMONEDA_CPBTE_COTIZACION: TFMTBCDField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Precision = 15
      Size = 3
    end
    object CDSCompCabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
      ProviderFlags = []
    end
    object CDSCompCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object CDSCompCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSCompCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object CDSCompCabMUESTRAMONEDACPBTE: TStringField
      FieldName = 'MUESTRAMONEDACPBTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompCabMUESTRASIGNOMONEDACPBTE: TStringField
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      ProviderFlags = []
      Size = 5
    end
  end
  object CDSCompDet: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CABFAC'
    MasterFields = 'ID_FC'
    MasterSource = DSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompDet'
    ReadOnly = True
    Left = 480
    Top = 442
    object CDSCompDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCompDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCompDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSCompDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSCompDetRENGLON: TFMTBCDField
      FieldName = 'RENGLON'
      Precision = 15
      Size = 3
    end
    object CDSCompDetFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object CDSCompDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSCompDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSCompDetUNIDAD: TStringField
      DisplayLabel = 'Uni.'
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSCompDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      DisplayFormat = '0.0'
      Precision = 15
      Size = 3
    end
    object CDSCompDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSCompDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object CDSCompDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSCompDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSCompDetMARGEN: TFMTBCDField
      FieldName = 'MARGEN'
      Precision = 15
      Size = 3
    end
    object CDSCompDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompDetCOSTO_IMP_INTERNO: TFMTBCDField
      FieldName = 'COSTO_IMP_INTERNO'
      Precision = 15
      Size = 3
    end
    object CDSCompDetUNIDADES_IMP_INTERNOS: TFMTBCDField
      FieldName = 'UNIDADES_IMP_INTERNOS'
      Precision = 15
      Size = 3
    end
    object CDSCompDetUNITARIO_IMP_INTERNO: TFMTBCDField
      FieldName = 'UNITARIO_IMP_INTERNO'
      Precision = 15
      Size = 3
    end
    object CDSCompDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompDetID_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_RECEPCION_CAB'
    end
    object CDSCompDetID_RECEPCION_DET: TIntegerField
      FieldName = 'ID_RECEPCION_DET'
    end
    object CDSCompDetNRORECEPCION: TStringField
      FieldName = 'NRORECEPCION'
      Size = 13
    end
    object CDSCompDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSCompDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
    end
    object CDSCompDetCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object CDSCompDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      ProviderFlags = []
      Size = 5
    end
    object CDSCompDetCANTIDAD: TFMTBCDField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompDetDESCUENTO: TFMTBCDField
      DisplayLabel = 'Dscto'
      FieldName = 'DESCUENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompDetTOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSCompDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompDetUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unit.'
      FieldName = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCompDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object CDSImpuestos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FCCOMPCAB'
    MasterFields = 'ID_FC'
    MasterSource = DSCompCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPImpuestos'
    ReadOnly = True
    Left = 224
    Top = 224
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Required = True
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object CDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSImpuestosID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object CDSImpuestosNETO: TFMTBCDField
      FieldName = 'NETO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSImpuestosTASA: TFMTBCDField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSImpuestosIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 3
    end
  end
end

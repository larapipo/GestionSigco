object FormMuestraCpbteCtaCteVta: TFormMuestraCpbteCtaCteVta
  Left = 227
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Comprobante de Venta'
  ClientHeight = 517
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 169
    Align = alTop
    Enabled = False
    TabOrder = 0
    object DBText66: TDBText
      Left = 566
      Top = 93
      Width = 97
      Height = 17
      Alignment = taCenter
      DataField = 'FechaVto'
      DataSource = DSVentaCab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object dbtMuestraComprob: TDBText
      Left = 300
      Top = 24
      Width = 165
      Height = 21
      DataField = 'MUESTRACOMPROBANTE'
      DataSource = DSVentaCab
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText73: TDBText
      Left = 514
      Top = 21
      Width = 106
      Height = 24
      Alignment = taCenter
      AutoSize = True
      DataField = 'LetraFac'
      DataSource = DSVentaCab
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
      DataSource = DSVentaCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
      Left = 551
      Top = 74
      Width = 108
      Height = 13
      Caption = 'Fecha de Vencimiento'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel62: TJvLabel
      Left = 192
      Top = 123
      Width = 95
      Height = 13
      Caption = 'Condicion de Venta'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel63: TJvLabel
      Left = 384
      Top = 124
      Width = 90
      Height = 13
      Caption = 'Numero de Remito'
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
    object RxLabel1: TJvLabel
      Left = 559
      Top = 122
      Width = 74
      Height = 13
      Caption = 'Nro.de Entrega'
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
      Left = 338
      Top = 86
      Width = 48
      Height = 13
      Caption = 'Vendedor'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object DBCheckManual: TDBCheckBox
      Left = 542
      Top = 52
      Width = 83
      Height = 17
      TabStop = False
      Caption = 'Manual'
      DataField = 'CPTE_MANUAL'
      DataSource = DSVentaCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object dbeSuc: TDBEdit
      Left = 532
      Top = 22
      Width = 45
      Height = 24
      DataField = 'SucFac'
      DataSource = DSVentaCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object dbeNumero: TDBEdit
      Left = 581
      Top = 22
      Width = 84
      Height = 24
      DataField = 'NumeroFac'
      DataSource = DSVentaCab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object dbeRemitos: TDBEdit
      Left = 385
      Top = 139
      Width = 142
      Height = 21
      DataField = 'NroRto'
      DataSource = DSVentaCab
      TabOrder = 5
    end
    object dbeConVta: TDBEdit
      Left = 235
      Top = 139
      Width = 121
      Height = 21
      Color = clInfoBk
      DataField = 'MuestraCondVenta'
      DataSource = DSVentaCab
      Enabled = False
      TabOrder = 7
    end
    object dbeNombre: TDBEdit
      Left = 72
      Top = 63
      Width = 286
      Height = 21
      Color = clInfoBk
      DataField = 'Nombre'
      DataSource = DSVentaCab
      Enabled = False
      TabOrder = 8
    end
    object dbeLdr: TDBEdit
      Left = 48
      Top = 100
      Width = 286
      Height = 21
      Color = clInfoBk
      DataField = 'MuestraLdr'
      DataSource = DSVentaCab
      Enabled = False
      TabOrder = 9
    end
    object dbeSucursal: TDBEdit
      Left = 146
      Top = 24
      Width = 146
      Height = 21
      Color = clInfoBk
      DataField = 'MuestraSucursal'
      DataSource = DSVentaCab
      Enabled = False
      TabOrder = 1
    end
    object dbeDeposito: TDBEdit
      Left = 48
      Top = 140
      Width = 135
      Height = 21
      Color = clInfoBk
      DataField = 'MuestraDeposito'
      DataSource = DSVentaCab
      Enabled = False
      TabOrder = 10
    end
    object dbeEntrega: TDBEdit
      Left = 561
      Top = 138
      Width = 41
      Height = 21
      DataField = 'NroEntrega'
      DataSource = DSVentaCab
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 24
      Width = 43
      Height = 21
      DataField = 'Sucursal'
      DataSource = DSVentaCab
      TabOrder = 11
    end
    object DBEdit2: TDBEdit
      Left = 10
      Top = 63
      Width = 55
      Height = 21
      DataField = 'Codigo'
      DataSource = DSVentaCab
      TabOrder = 12
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 100
      Width = 35
      Height = 21
      DataField = 'LDR'
      DataSource = DSVentaCab
      TabOrder = 13
    end
    object DBEdit4: TDBEdit
      Left = 7
      Top = 140
      Width = 36
      Height = 21
      DataField = 'Deposito'
      DataSource = DSVentaCab
      TabOrder = 14
    end
    object DBEdit5: TDBEdit
      Left = 192
      Top = 139
      Width = 38
      Height = 21
      DataField = 'CondicionVta'
      DataSource = DSVentaCab
      TabOrder = 15
    end
    object DBEdit6: TDBEdit
      Left = 338
      Top = 100
      Width = 214
      Height = 21
      Color = clInfoBk
      DataField = 'MUESTRAVENDEDOR'
      DataSource = DSVentaCab
      Enabled = False
      TabOrder = 16
    end
    object DBEFechaVta: TJvDBDateEdit
      Left = 7
      Top = 24
      Width = 83
      Height = 21
      DataField = 'FechaVta'
      DataSource = DSVentaCab
      ShowNullDate = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 492
    Width = 688
    Height = 25
    Align = alBottom
    TabOrder = 1
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
  object pcDetalleFactura: TPageControl
    Left = 0
    Top = 169
    Width = 688
    Height = 323
    ActivePage = PagDetalles
    Align = alClient
    MultiLine = True
    TabOrder = 2
    TabPosition = tpBottom
    TabStop = False
    object PagDetalles: TTabSheet
      Caption = 'Detalles'
      DesignSize = (
        680
        297)
      object Label17: TLabel
        Left = 12
        Top = 215
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
        ExplicitTop = 254
      end
      object Bevel21: TBevel
        Left = 549
        Top = 233
        Width = 111
        Height = 21
        Anchors = [akLeft, akBottom]
        ExplicitTop = 272
      end
      object DBText60: TDBText
        Left = 581
        Top = 235
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
      object RxLabel5: TJvLabel
        Left = 504
        Top = 234
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
      object dbeObservaciones2: TDBEdit
        Left = 17
        Top = 258
        Width = 313
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'Observacion2'
        DataSource = DSVentaCab
        TabOrder = 2
      end
      object dbeObservaciones1: TDBEdit
        Left = 17
        Top = 233
        Width = 313
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'Observacion1'
        DataSource = DSVentaCab
        TabOrder = 1
      end
      object DBGrillaDetalle: TDBGrid
        Left = 0
        Top = 0
        Width = 677
        Height = 206
        Anchors = [akLeft, akTop, akBottom]
        Color = clMenu
        DataSource = DSVentaDet
        FixedColor = clFuchsia
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'CODIGOARTICULO'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 55
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
            Width = 270
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'UNIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Uni.'
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
            Title.Caption = 'Iva'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
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
            FieldName = 'UNITARIO_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = '$ Unitario'
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
            Title.Caption = 'Dsto.'
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
            Title.Alignment = taCenter
            Title.Caption = '$ Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 357
        Top = 217
        Width = 97
        Height = 49
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
          DataSource = DSVentaCab
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 8
          Top = 24
          Width = 65
          Height = 17
          Caption = 'Anulado'
          DataField = 'ANULADO'
          DataSource = DSVentaCab
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
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
        DataSource = DSVentaCab
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
        DataSource = DSVentaCab
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
        DataSource = DSVentaCab
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
        DataSource = DSVentaCab
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
        DataSource = DSVentaCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 488
        Top = 216
        Width = 139
        Height = 17
        Alignment = taRightJustify
        DataField = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 440
        Top = 216
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
        DataSource = DSVentaCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrillaIva: TDBGrid
        Left = 416
        Top = 117
        Width = 241
        Height = 68
        Color = clMenu
        DataSource = DSImpuestos
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
        DataSource = DSVentaCab
        TabOrder = 1
      end
    end
  end
  object DSPVentaCab: TDataSetProvider
    DataSet = DMMain_FD.QVentaCab
    Left = 264
    Top = 299
  end
  object DSPVentaDet: TDataSetProvider
    DataSet = DMMain_FD.QVentaDet
    Left = 456
    Top = 49
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = DMMain_FD.QImpuestosVta
    Left = 112
    Top = 220
  end
  object CDSVentaDet: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CABFAC'
    MasterFields = 'ID_FC'
    MasterSource = DSVentaCab
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPVentaDet'
    ReadOnly = True
    Left = 344
    Top = 41
    object CDSVentaDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVentaDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVentaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSVentaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSVentaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSVentaDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object CDSVentaDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object CDSVentaDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      OnGetText = CDSVentaDetCODIGOARTICULOGetText
      Size = 8
    end
    object CDSVentaDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSVentaDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSVentaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object CDSVentaDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object CDSVentaDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSVentaDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSVentaDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSVentaDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object CDSVentaDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      OnGetText = CDSVentaDetTotalGetText
    end
    object CDSVentaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSVentaDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object CDSVentaDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Required = True
    end
    object CDSVentaDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Required = True
    end
    object CDSVentaDetLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object CDSVentaDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object CDSVentaDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSVentaDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 100
    end
    object CDSVentaDetGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
    end
    object CDSVentaDetCTA_ORDEN_ID_RECEPCION: TIntegerField
      FieldName = 'CTA_ORDEN_ID_RECEPCION'
    end
    object CDSVentaDetCTA_ORDEN_NROCPBTE: TStringField
      FieldName = 'CTA_ORDEN_NROCPBTE'
      Size = 13
    end
    object CDSVentaDetCTA_ORDEN_TIPOCPBTE: TStringField
      FieldName = 'CTA_ORDEN_TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSVentaDetCTA_ORDEN_CALSECPBTE: TStringField
      FieldName = 'CTA_ORDEN_CALSECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSVentaDetMUESTRACONTENIDO: TFloatField
      FieldName = 'MUESTRACONTENIDO'
      ProviderFlags = []
    end
    object CDSVentaDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      ProviderFlags = []
      Size = 5
    end
    object CDSVentaDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Required = True
    end
    object CDSVentaDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
    end
    object CDSVentaDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
    end
    object CDSVentaDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
    end
    object CDSVentaDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object CDSVentaDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object CDSVentaDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSVentaDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVentaDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVentaDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      OnGetText = CDSVentaDetUnitario_TotalGetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSVentaDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Required = True
    end
    object CDSVentaDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
    end
  end
  object DSVentaDet: TDataSource
    DataSet = CDSVentaDet
    Left = 256
    Top = 33
  end
  object CDSImpuestos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_FCVTACAB'
    MasterFields = 'ID_FC'
    MasterSource = DSVentaCab
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPImpuestos'
    ReadOnly = True
    Left = 184
    Top = 224
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
    end
    object CDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSImpuestosNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object CDSImpuestosTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object CDSImpuestosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object DSImpuestos: TDataSource
    DataSet = CDSImpuestos
    Left = 24
    Top = 224
  end
  object DSVentaCab: TDataSource
    DataSet = CDSVentaCab
    Left = 200
    Top = 296
  end
  object CDSVentaCab: TClientDataSet
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
    ProviderName = 'DSPVentaCab'
    ReadOnly = True
    Left = 328
    Top = 307
    object CDSVentaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVentaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSVentaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSVentaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSVentaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSVentaCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object CDSVentaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object CDSVentaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSVentaCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSVentaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSVentaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSVentaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSVentaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Required = True
    end
    object CDSVentaCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSVentaCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object CDSVentaCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object CDSVentaCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSVentaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Required = True
    end
    object CDSVentaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabNRORTO: TStringField
      FieldName = 'NRORTO'
    end
    object CDSVentaCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Required = True
    end
    object CDSVentaCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Required = True
      OnGetText = CDSVentaCabNetoGrav2GetText
    end
    object CDSVentaCabDSTO: TFloatField
      FieldName = 'DSTO'
      Required = True
    end
    object CDSVentaCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Required = True
    end
    object CDSVentaCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Required = True
    end
    object CDSVentaCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Required = True
    end
    object CDSVentaCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Required = True
    end
    object CDSVentaCabDEBE: TFloatField
      FieldName = 'DEBE'
      Required = True
    end
    object CDSVentaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSVentaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSVentaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSVentaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Size = 13
    end
    object CDSVentaCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSVentaCabLDR: TIntegerField
      FieldName = 'LDR'
      Required = True
    end
    object CDSVentaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSVentaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object CDSVentaCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabTIPO_REMITO: TStringField
      FieldName = 'TIPO_REMITO'
      FixedChar = True
      Size = 2
    end
    object CDSVentaCabIDREMITO: TIntegerField
      FieldName = 'IDREMITO'
    end
    object CDSVentaCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabCOMSIONVENDEDOR: TFloatField
      FieldName = 'COMSIONVENDEDOR'
      Required = True
    end
    object CDSVentaCabLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabFECHA_LIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHA_LIQUIDACION'
    end
    object CDSVentaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object CDSVentaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSVentaCabNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabCAJA_POR_DEFECTO: TIntegerField
      FieldName = 'CAJA_POR_DEFECTO'
    end
    object CDSVentaCabNRO_Z: TIntegerField
      FieldName = 'NRO_Z'
    end
    object CDSVentaCabVALORES_RECIBIDOS: TFloatField
      FieldName = 'VALORES_RECIBIDOS'
      Required = True
    end
    object CDSVentaCabPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object CDSVentaCabPERCEPCION_IB_IMPORTE: TFloatField
      FieldName = 'PERCEPCION_IB_IMPORTE'
      Required = True
    end
    object CDSVentaCabPERCIBE_IB: TStringField
      FieldName = 'PERCIBE_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Required = True
    end
    object CDSVentaCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Required = True
    end
    object CDSVentaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSVentaCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
    end
    object CDSVentaCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object CDSVentaCabID_FC_CLON: TIntegerField
      FieldName = 'ID_FC_CLON'
    end
    object CDSVentaCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
    end
    object CDSVentaCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object CDSVentaCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object CDSVentaCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
    end
    object CDSVentaCabPOR_CTA_Y_ORDEN: TStringField
      FieldName = 'POR_CTA_Y_ORDEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVentaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object CDSVentaCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      ProviderFlags = []
    end
    object CDSVentaCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object CDSVentaCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSVentaCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object CDSVentaCabMUESTRADIRECCIONLDR: TStringField
      FieldName = 'MUESTRADIRECCIONLDR'
      ProviderFlags = []
      Size = 35
    end
    object CDSVentaCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSVentaCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSVentaCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object CDSVentaCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSVentaCabMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      ProviderFlags = []
      Size = 35
    end
    object CDSVentaCabTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      FixedChar = True
      Size = 1
    end
  end
end

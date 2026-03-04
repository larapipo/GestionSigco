object FormMuestraOPago: TFormMuestraOPago
  Left = 238
  Top = 140
  Caption = 'Orden de Pago '
  ClientHeight = 511
  ClientWidth = 698
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
    Width = 698
    Height = 153
    Align = alTop
    TabOrder = 1
    object dbtMuestraComprobante: TDBText
      Left = 311
      Top = 25
      Width = 138
      Height = 21
      DataField = 'MUESTRACOMPROBANTE'
      DataSource = DSOPago
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel59: TJvLabel
      Left = 102
      Top = 5
      Width = 89
      Height = 13
      Caption = 'Sucursal de Venta'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel58: TJvLabel
      Left = 16
      Top = 5
      Width = 35
      Height = 13
      Caption = 'Fecha '
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel60: TJvLabel
      Left = 541
      Top = 5
      Width = 100
      Height = 13
      Caption = 'Nro.de Comprobante'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel1: TJvLabel
      Left = 16
      Top = 107
      Width = 60
      Height = 13
      Caption = 'Saldo a Cta.'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel2: TJvLabel
      Left = 566
      Top = 107
      Width = 64
      Height = 13
      Caption = 'Importe Total'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel6: TJvLabel
      Left = 313
      Top = 9
      Width = 104
      Height = 13
      Caption = 'Tipo de Comprobante'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel3: TJvLabel
      Left = 146
      Top = 107
      Width = 25
      Height = 13
      Caption = 'Neto'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel8: TJvLabel
      Left = 392
      Top = 109
      Width = 54
      Height = 13
      Caption = 'Descuento'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object JvLabel1: TJvLabel
      Left = 277
      Top = 107
      Width = 41
      Height = 13
      Caption = 'Dscto %'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 54
      Width = 385
      Height = 43
      Caption = 'Proveedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object dbeNombre: TDBEdit
        Left = 80
        Top = 14
        Width = 286
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'RAZONSOCIAL'
        DataSource = DSOPago
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object dbeSuc: TDBEdit
      Left = 545
      Top = 21
      Width = 39
      Height = 24
      DataField = 'SUCOP'
      DataSource = DSOPago
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object dbeNumero: TDBEdit
      Left = 589
      Top = 21
      Width = 75
      Height = 24
      DataField = 'NUMEROOP'
      DataSource = DSOPago
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object dbeLetra: TDBEdit
      Left = 519
      Top = 21
      Width = 22
      Height = 24
      TabStop = False
      DataField = 'LETRAOP'
      DataSource = DSOPago
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object dbeSucursal: TDBEdit
      Left = 146
      Top = 23
      Width = 159
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'MUESTRASUCURSAL'
      DataSource = DSOPago
      Enabled = False
      TabOrder = 1
    end
    object dbeTotal: TDBEdit
      Left = 566
      Top = 126
      Width = 105
      Height = 21
      Color = clWhite
      DataField = 'TOTAL'
      DataSource = DSOPago
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object dbeSaldo: TDBEdit
      Left = 12
      Top = 126
      Width = 105
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'SALDO_APLICAR'
      DataSource = DSOPago
      Enabled = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 23
      Width = 37
      Height = 21
      DataField = 'SUCURSAL'
      DataSource = DSOPago
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 25
      Top = 68
      Width = 64
      Height = 21
      DataField = 'CODIGO'
      DataSource = DSOPago
      TabOrder = 9
    end
    object dbeTotalNeto: TDBEdit
      Left = 140
      Top = 126
      Width = 105
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'TOTAL_NETO'
      DataSource = DSOPago
      Enabled = False
      ReadOnly = True
      TabOrder = 10
    end
    object debDescuento: TDBEdit
      Left = 388
      Top = 126
      Width = 105
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'DESCUENTO'
      DataSource = DSOPago
      Enabled = False
      ReadOnly = True
      TabOrder = 11
    end
    object pnl1: TPanel
      Left = 424
      Top = 66
      Width = 149
      Height = 21
      Color = clInactiveCaptionText
      ParentBackground = False
      TabOrder = 12
      object dbtNC_NROCOMPROB: TDBText
        Left = 67
        Top = 2
        Width = 75
        Height = 16
        Cursor = crHandPoint
        DataField = 'NC_NUMEROFAC'
        DataSource = DSOPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object dbtNc: TDBText
        Left = 9
        Top = 2
        Width = 19
        Height = 17
        DataField = 'NC_LETRAFAC'
        DataSource = DSOPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object dbtSuc: TDBText
        Left = 31
        Top = 2
        Width = 29
        Height = 16
        Cursor = crHandPoint
        DataField = 'NC_SUCFAC'
        DataSource = DSOPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
    end
    object DBDFecha: TJvDBDateEdit
      Left = 16
      Top = 23
      Width = 84
      Height = 21
      DataField = 'FECHA'
      DataSource = DSOPago
      ShowNullDate = False
      TabOrder = 0
    end
  end
  object pcDetalle: TPageControl
    Left = 0
    Top = 153
    Width = 698
    Height = 288
    ActivePage = Pag2
    Align = alTop
    HotTrack = True
    TabOrder = 0
    TabPosition = tpBottom
    object Pag1: TTabSheet
      Caption = '&Aplicaciones'
      object Label17: TLabel
        Left = 271
        Top = 166
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
      object Label2: TLabel
        Left = 16
        Top = 168
        Width = 103
        Height = 16
        Caption = 'Total Aplicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgAplicaciones: TDBGrid
        Left = 8
        Top = 0
        Width = 249
        Height = 161
        Color = clMenu
        DataSource = DSMovAplicaCCCompra
        FixedColor = clMaroon
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = 16776176
            Expanded = False
            FieldName = 'APLICA_CLASECPBTE'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 31
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'APLICA_NROCPBTE'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end>
      end
      object dbeObs1: TDBEdit
        Left = 272
        Top = 184
        Width = 345
        Height = 21
        DataField = 'OBSERVACION1'
        DataSource = DSOPago
        TabOrder = 1
      end
      object dbeObs2: TDBEdit
        Left = 272
        Top = 208
        Width = 345
        Height = 21
        DataField = 'OBSERVACION2'
        DataSource = DSOPago
        TabOrder = 2
      end
      object ceTotalAplicaciones: TJvCalcEdit
        Left = 144
        Top = 168
        Width = 97
        Height = 21
        DisplayFormat = ',0.00'
        Enabled = False
        ImageKind = ikCustom
        ShowButton = False
        TabOrder = 3
        DisabledTextColor = clBlack
        DecimalPlacesAlwaysShown = False
      end
    end
    object Pag2: TTabSheet
      Caption = '&Valores'
      ImageIndex = 2
      DesignSize = (
        690
        262)
      inline FrameMovValoresEgresos1: TFrameMovValoresEgresos
        Left = 8
        Top = 1
        Width = 832
        Height = 333
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 8
        ExplicitTop = 1
        ExplicitWidth = 832
        ExplicitHeight = 333
        inherited lbTotalValores: TLabel
          Left = 161
          Width = 21
          Caption = '0.00'
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 161
          ExplicitWidth = 21
        end
        inherited Label25: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited DBText12: TDBText
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited DBText2: TDBText
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited Label41: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited lb1: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited lbResto: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited dbgMovimientos: TDBGrid
          ReadOnly = True
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
              Expanded = False
              FieldName = 'MUESTRAFORMAPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HABER'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        inherited pcValores: TPageControl
          inherited tsEfectivo: TTabSheet
            inherited DBText4: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText5: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbtID_EFECTIVO: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText21: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeUnidades: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeCotizacion: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeImporte: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
          end
          inherited tsChe3: TTabSheet
            inherited Label8: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label9: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label10: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label11: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label12: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label13: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label14: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label15: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label16: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText3: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label7: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label1: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label45: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText6: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText7: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbtID_EFECTIVO1: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText20: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label48: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEBancoChe3: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEEntregadoPorChe3: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBENroChe3: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEEntregadoAChe3: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeunidadesChe3: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEdit12: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeImporteChe3: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEdit22: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBDFechaEmisionChe3: TJvDBDateEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBDFechaCobroChe3: TJvDBDateEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBDFechaIngresoChe3: TJvDBDateEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBDFechaEgresoChe3: TJvDBDateEdit
              StyleElements = [seFont, seClient, seBorder]
            end
          end
          inherited tsCheques: TTabSheet
            inherited DBText1: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label2: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label3: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label4: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label5: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label6: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label17: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label18: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label34: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label35: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbNI: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbNF: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText15: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText16: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label42: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText17: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label62: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText36: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label47: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText19: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited pnAnulado: TPanel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbObs: TDBMemo
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeFechaEmision: TJvDBDateEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeFechaCobro: TJvDBDateEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEChequera: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBENroChe: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEOrdenDe: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeUnidadesCheque: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEImporteLetras: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeImporteCheque: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
          end
          inherited tsTransf: TTabSheet
            inherited Label19: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label20: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label21: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label22: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label23: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label31: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText8: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText9: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label43: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText22: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeNumero: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeMuestraCta: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeUnidadesTx: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeImporteTx: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeOrigenTx: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited rxdcCtaBco: TJvDBComboEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEdit1: TJvDBDateEdit
              StyleElements = [seFont, seClient, seBorder]
            end
          end
          inherited tsDebito: TTabSheet
            inherited Label24: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label26: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label27: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label28: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label29: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label30: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText10: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText11: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label44: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeNroDebito: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeMuestraCtaDebito: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeUnidadesDebito: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited ImporteDebito: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeOriginadoDebito: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited rcdcIdCtaBcoDebito: TJvDBComboEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEdit2: TJvDBDateEdit
              StyleElements = [seFont, seClient, seBorder]
            end
          end
          inherited tsTarjeta: TTabSheet
            inherited pnTarjeta: TPanel
              StyleElements = [seFont, seClient, seBorder]
              inherited Label32: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label33: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label36: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label37: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label38: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label39: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label40: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText13: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText14: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText18: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label46: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit4: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeUniTC: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit6: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeMuestraTarjeta: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeNumeroCupon: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbdFechaCupon: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbdFechaCompra: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbcTC: TJvDBComboEdit
                StyleElements = [seFont, seClient, seBorder]
              end
            end
          end
        end
        inherited edMuestraCaja: TEdit
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited ceCaja: TJvComboEdit
          StyleElements = [seFont, seClient, seBorder]
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 441
    Width = 698
    Height = 25
    Align = alTop
    TabOrder = 2
  end
  object dbeDesctoPorcentaje: TDBEdit
    Left = 277
    Top = 126
    Width = 105
    Height = 21
    TabStop = False
    Color = clInfoBk
    DataField = 'DESCUENTO_PORCENTAJE'
    DataSource = DSOPago
    Enabled = False
    ReadOnly = True
    TabOrder = 3
  end
  object DSPOPago: TDataSetProvider
    DataSet = DMMain_2.QOPago
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 120
  end
  object DSPMovAplicaCCCompra: TDataSetProvider
    DataSet = DMMain_2.QMovAplicaCCCompra
    Left = 336
    Top = 205
  end
  object DSOPago: TDataSource
    DataSet = CDSOPago
    Left = 532
    Top = 135
  end
  object CDSOPago: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPOPago'
    Left = 424
    Top = 120
    object CDSOPagoID_OP: TIntegerField
      FieldName = 'ID_OP'
      Required = True
    end
    object CDSOPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object CDSOPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object CDSOPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSOPagoLETRAOP: TStringField
      FieldName = 'LETRAOP'
      Size = 1
    end
    object CDSOPagoSUCOP: TStringField
      FieldName = 'SUCOP'
      Size = 4
    end
    object CDSOPagoNUMEROOP: TStringField
      FieldName = 'NUMEROOP'
      Size = 8
    end
    object CDSOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSOPagoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSOPagoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSOPagoCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSOPagoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSOPagoTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSOPagoCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSOPagoNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
    object CDSOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSOPagoANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSOPagoN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object CDSOPagoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoSALDO_APLICAR: TFMTBCDField
      FieldName = 'SALDO_APLICAR'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSOPagoOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSOPagoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSOPagoDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSOPagoNC_ID_FC: TIntegerField
      FieldName = 'NC_ID_FC'
    end
    object CDSOPagoNC_LETRAFAC: TStringField
      FieldName = 'NC_LETRAFAC'
      Size = 1
    end
    object CDSOPagoNC_SUCFAC: TStringField
      FieldName = 'NC_SUCFAC'
      Size = 4
    end
    object CDSOPagoNC_NUMEROFAC: TStringField
      FieldName = 'NC_NUMEROFAC'
      Size = 8
    end
    object CDSOPagoTASA_PERCEPCIONIVA: TFMTBCDField
      FieldName = 'TASA_PERCEPCIONIVA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoTASA_PERCEPCIONIB: TFMTBCDField
      FieldName = 'TASA_PERCEPCIONIB'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSOPagoTOTAL_NETO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_NETO_GRAVADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoTOTAL_PAGOS_DEL_MES: TFMTBCDField
      FieldName = 'TOTAL_PAGOS_DEL_MES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoTOTAL_RETENIDO_MES: TFMTBCDField
      FieldName = 'TOTAL_RETENIDO_MES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoTASA_RETENCION_GANACIA: TFMTBCDField
      FieldName = 'TASA_RETENCION_GANACIA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA: TFMTBCDField
      FieldName = 'MINIMO_NO_IMPONIBLE_GANANCIA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoRETIENE_GANACIAS: TStringField
      FieldName = 'RETIENE_GANACIAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoRETENCION_GANACIA_GENERADO: TStringField
      FieldName = 'RETENCION_GANACIA_GENERADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoCODIGO_REGIMENA_GANANCIA: TIntegerField
      FieldName = 'CODIGO_REGIMENA_GANANCIA'
    end
    object CDSOPagoCONCEPTO_RETENCION_GANACIA: TStringField
      FieldName = 'CONCEPTO_RETENCION_GANACIA'
      Size = 25
    end
    object CDSOPagoIMPUESTO_MINIMO_GANANCIA: TFMTBCDField
      FieldName = 'IMPUESTO_MINIMO_GANANCIA'
      Precision = 15
      Size = 3
    end
    object CDSOPagoRETIENE_IIBB: TStringField
      FieldName = 'RETIENE_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSOPagoTASA_RETENCION_IIBB: TFMTBCDField
      FieldName = 'TASA_RETENCION_IIBB'
      Required = True
      Precision = 15
      Size = 3
    end
    object CDSOPagoMINIMO_IMPONIBLE_RET_IIBB: TFMTBCDField
      FieldName = 'MINIMO_IMPONIBLE_RET_IIBB'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSOPagoMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Size = 35
    end
    object CDSOPagoMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Size = 15
    end
    object CDSOPagoID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
    end
    object CDSOPagoDESCUENTO_PORCENTAJE: TFMTBCDField
      FieldName = 'DESCUENTO_PORCENTAJE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoTOTAL_NETO: TFMTBCDField
      FieldName = 'TOTAL_NETO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSOPagoSUMAAPLICACIONES: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUMAAPLICACIONES'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object CDSMovAplicaCCCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovAplicaCCCompra'
    Left = 456
    Top = 205
    object CDSMovAplicaCCCompraID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Required = True
    end
    object CDSMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      Required = True
    end
    object CDSMovAplicaCCCompraFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovAplicaCCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSMovAplicaCCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovAplicaCCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSMovAplicaCCCompraIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object CDSMovAplicaCCCompraAPLICA_NETO: TFMTBCDField
      FieldName = 'APLICA_NETO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovAplicaCCCompraDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField
      FieldName = 'MUESTRAFECHACPBTE'
    end
    object CDSMovAplicaCCCompraMUESTRATOTALFACTURA: TFMTBCDField
      FieldName = 'MUESTRATOTALFACTURA'
      Precision = 15
      Size = 3
    end
    object CDSMovAplicaCCCompraCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSMovAplicaCCCompra: TDataSource
    DataSet = CDSMovAplicaCCCompra
    Left = 552
    Top = 192
  end
end

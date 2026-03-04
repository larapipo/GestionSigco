inherited FormEgresoCaja: TFormEgresoCaja
  Left = 380
  Top = 82
  Caption = 'Egresos de Caja'
  ClientHeight = 747
  ClientWidth = 843
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  ExplicitWidth = 861
  ExplicitHeight = 788
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Top = 21
    Width = 843
    Height = 533
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 21
    ExplicitWidth = 843
    ExplicitHeight = 533
    object pnValores: TPanel
      Left = 0
      Top = 93
      Width = 843
      Height = 434
      Align = alTop
      TabOrder = 1
      TabStop = True
      OnEnter = pnValoresEnter
      DesignSize = (
        843
        434)
      object Label1: TLabel
        Left = 16
        Top = 4
        Width = 39
        Height = 13
        Caption = 'Rubro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 60
        Top = 3
        Width = 42
        Height = 13
        AutoSize = True
        Color = 16776176
        DataField = 'MUESTRARUBRO'
        DataSource = DSEgresoCajaDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 248
        Top = 4
        Width = 45
        Height = 13
        Caption = 'Cuenta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 306
        Top = 3
        Width = 42
        Height = 13
        AutoSize = True
        Color = 16776176
        DataField = 'MUESTRACUENTA'
        DataSource = DSEgresoCajaDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 331
        Top = 370
        Width = 71
        Height = 13
        Caption = 'Observaciones'
        FocusControl = DBMemo1
      end
      inline FrameMovValoresEgresos1: TFrameMovValoresEgresos
        Left = 3
        Top = 110
        Width = 830
        Height = 260
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
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 110
        ExplicitWidth = 830
        ExplicitHeight = 260
        inherited lbTotalValores: TLabel
          Top = 201
          StyleElements = [seFont, seClient, seBorder]
          ExplicitTop = 201
        end
        inherited Label25: TLabel
          Left = 3
          Top = 201
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 3
          ExplicitTop = 201
        end
        inherited DBText12: TDBText
          Left = 150
          Top = 4
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 150
          ExplicitTop = 4
        end
        inherited DBText2: TDBText
          Left = 57
          Top = 4
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 57
          ExplicitTop = 4
        end
        inherited Label41: TLabel
          Left = 37
          Top = 4
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 37
          ExplicitTop = 4
        end
        inherited lb1: TLabel
          Left = 3
          Top = 218
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 3
          ExplicitTop = 218
        end
        inherited lbResto: TLabel
          Top = 218
          StyleElements = [seFont, seClient, seBorder]
          ExplicitTop = 218
        end
        inherited RxLabel4: TJvLabel
          Left = 0
          Top = 6
          ExplicitLeft = 0
          ExplicitTop = 6
        end
        inherited JvDBStatusLabel1: TJvDBStatusLabel
          Left = 53
          ExplicitLeft = 53
        end
        inherited dbgMovimientos: TDBGrid
          Left = 1
          Top = 48
        end
        inherited pcValores: TPageControl
          Left = 328
          Top = 13
          Width = 465
          Height = 236
          ActivePage = FrameMovValoresEgresos1.tsEfectivo
          ExplicitLeft = 328
          ExplicitTop = 13
          ExplicitWidth = 465
          ExplicitHeight = 236
          inherited tsEfectivo: TTabSheet
            ExplicitWidth = 457
            ExplicitHeight = 208
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
            inherited btOkEfectivo: TBitBtn
              DoubleBuffered = True
            end
            inherited btCancelarEfectivo: TBitBtn
              DoubleBuffered = True
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
            inherited BitBtn2: TBitBtn
              DoubleBuffered = True
            end
            inherited BitBtn3: TBitBtn
              DoubleBuffered = True
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
            inherited btCancel: TBitBtn
              DoubleBuffered = True
            end
            inherited btPost: TBitBtn
              DoubleBuffered = True
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
            inherited BitBtn4: TBitBtn
              DoubleBuffered = True
            end
            inherited BitBtn8: TBitBtn
              DoubleBuffered = True
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
            inherited BitBtn5: TBitBtn
              DoubleBuffered = True
            end
            inherited BitBtn6: TBitBtn
              DoubleBuffered = True
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
              inherited BitBtn9: TBitBtn
                DoubleBuffered = True
              end
              inherited BitBtn10: TBitBtn
                DoubleBuffered = True
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
          Left = 53
          Top = 20
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 53
          ExplicitTop = 20
        end
        inherited ceCaja: TJvComboEdit
          Left = 1
          Top = 20
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 1
          ExplicitTop = 20
        end
        inherited DSPChe3: TDataSetProvider
          Left = 54
          Top = 136
        end
        inherited IBGId_Caja_Mov: TIBGenerator
          Left = 264
        end
        inherited ActionList1: TActionList
          Left = 496
        end
        inherited DSPDebitos: TDataSetProvider
          Left = 118
          Top = 144
        end
        inherited IBGId_Trans: TIBGenerator
          Left = 304
          Top = 160
        end
        inherited IBGIdDebito: TIBGenerator
          Top = 104
        end
        inherited CDSCajaMov: TClientDataSet
          AfterPost = FrameMovValoresEgresos1CDSCajaMovAfterPost
          BeforeDelete = FrameMovValoresEgresos1CDSCajaMovBeforeDelete
          AfterDelete = FrameMovValoresEgresos1CDSCajaMovAfterDelete
          Top = 101
        end
        inherited QBuscaTCredito: TFDQuery
          Left = 762
          Top = 11
        end
      end
      object DBMemo1: TDBMemo
        Left = 329
        Top = 389
        Width = 338
        Height = 33
        DataField = 'OBS'
        DataSource = DSBase
        TabOrder = 2
      end
      object dbgCtroCosto: TDBGrid
        Left = 10
        Top = 347
        Width = 293
        Height = 69
        BorderStyle = bsNone
        DataSource = DSCtroCosto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentColor = True
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRIPCION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPUTADO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            Width = 70
            Visible = True
          end>
      end
      object dbgDetalle_2: TDBGrid
        Left = 2
        Top = 17
        Width = 722
        Height = 93
        DataSource = DSEgresoCajaDetalle
        DrawingStyle = gdsGradient
        GradientEndColor = clGreen
        GradientStartColor = clSilver
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = dbgDetalle_2ColEnter
        OnDblClick = dbgDetalle_2DblClick
        OnEditButtonClick = dbgDetalle_2EditButtonClick
        OnEnter = dbgDetalle_2Enter
        OnKeyDown = dbgDetalle_2KeyDown
        OnKeyPress = dbgDetalle_2KeyPress
        Columns = <
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'FECHAGASTO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Color = clInfoBk
            Expanded = False
            FieldName = 'RUBROGASTO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'CODIGOGASTO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 401
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 843
      Height = 93
      Align = alTop
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      object dbtMuestraComprobante: TDBText
        Left = 342
        Top = 23
        Width = 179
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
        Left = 10
        Top = 5
        Width = 35
        Height = 13
        Caption = 'Fecha '
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel60: TJvLabel
        Left = 613
        Top = 6
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 298
        Top = 6
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel1: TJvLabel
        Left = 9
        Top = 47
        Width = 35
        Height = 13
        Caption = 'Detalle'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object Label4: TLabel
        Left = 727
        Top = 6
        Width = 31
        Height = 13
        Caption = 'N.Op.:'
      end
      object edNumeroOP: TDBText
        Left = 763
        Top = 5
        Width = 57
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        DataField = 'NUMERO_OPERACION'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 424
        Top = 42
        Width = 57
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        DataField = 'ID_EGRESO'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dbeSuc: TDBEdit
        Left = 641
        Top = 22
        Width = 39
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
        Top = 22
        Width = 75
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
      object dbeLetra: TDBEdit
        Left = 615
        Top = 22
        Width = 22
        Height = 24
        TabStop = False
        DataField = 'LETRA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbeSucursal: TDBEdit
        Left = 146
        Top = 23
        Width = 146
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object dbeDetalle: TDBEdit
        Left = 9
        Top = 64
        Width = 433
        Height = 21
        DataField = 'DETALLE'
        DataSource = DSBase
        TabOrder = 4
      end
      object pnImporte: TPanel
        Left = 624
        Top = 48
        Width = 142
        Height = 43
        Enabled = False
        TabOrder = 8
        object RxLabel4: TJvLabel
          Left = 10
          Top = 3
          Width = 37
          Height = 13
          Caption = 'Importe'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object dbImporte: TDBEdit
          Left = 8
          Top = 17
          Width = 121
          Height = 21
          Color = clMenu
          DataField = 'IMPORTE'
          DataSource = DSBase
          TabOrder = 0
        end
      end
      object dbeFecha: TJvDBDateEdit
        Left = 8
        Top = 23
        Width = 91
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
      object RxDBESucursal: TJvDBComboEdit
        Left = 104
        Top = 23
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        ClickKey = 16397
        DataField = 'SUCURSALVENTA'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 1
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxDBESucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 298
        Top = 23
        Width = 42
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
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
    end
  end
  inherited ToolBar1: TToolBar
    Top = 554
    Width = 843
    ButtonHeight = 30
    TabOrder = 2
    ExplicitTop = 518
    ExplicitWidth = 869
    inherited btConfirma: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Height = 30
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Height = 30
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Height = 30
      DoubleBuffered = True
      ExplicitHeight = 30
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 18
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 575
      Top = 0
      Width = 75
      Height = 30
      Action = Imprimir
      Caption = '&Imprimir'
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
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303030303FFFFFF03030303
        030303030303FFFFFF0303030000000303030303030303030300000003030303
        F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
        00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
        070707070707070707070707000303F8FF030303030303030303030303030303
        F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
        0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
        FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
        F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
        03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
        FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
        03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
        F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
        0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
        FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
        0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
        F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
      TabOrder = 7
    end
    object spAsignacionCtroCosto: TSpeedButton
      Left = 650
      Top = 0
      Width = 34
      Height = 30
      Action = DetallesCostos
      Flat = True
    end
    object btModificaFecha: TBitBtn
      Left = 684
      Top = 0
      Width = 29
      Height = 30
      Action = CambiarFecha
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
      ShowHint = True
      TabOrder = 8
    end
    object BitBtn1: TBitBtn
      Left = 713
      Top = 0
      Width = 36
      Height = 30
      Action = ImpresionCheques
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
      TabOrder = 9
    end
  end
  inherited Panel1: TPanel
    Top = 584
    Width = 843
    TabOrder = 1
    StyleElements = [seFont, seClient, seBorder]
    OnDblClick = Panel1DblClick
    ExplicitTop = 548
    ExplicitWidth = 869
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 15
    end
    inherited sbEstado: TStatusBar
      Width = 754
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 754
    end
  end
  object ToolBar2: TToolBar [3]
    Left = 0
    Top = 0
    Width = 843
    Height = 21
    AutoSize = True
    ButtonHeight = 0
    ButtonWidth = 0
    Caption = 'ToolBar2'
    DrawingStyle = dsGradient
    Menu = MainMenu1
    ShowCaptions = True
    TabOrder = 3
    ExplicitWidth = 869
  end
  inherited ActionList1: TActionList
    Left = 360
    Top = 8
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarCuentas: TAction
      Caption = 'BuscarCuentas'
      OnExecute = BuscarCuentasExecute
    end
    object BuscaRubros: TAction
      Caption = 'BuscaRubros'
      OnExecute = BuscaRubrosExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object GravarNumeroOperacion: TAction
      Caption = 'Gravar Numero Operacion'
      ShortCut = 16507
      OnExecute = GravarNumeroOperacionExecute
    end
    object DetallesCostos: TAction
      Hint = 'Muestra detalles de asignacion a Ctros de Costo'
      ImageIndex = 10
      ShortCut = 16465
      OnExecute = DetallesCostosExecute
    end
    object GenerarXML: TAction
      Caption = 'GenerarXML'
      ShortCut = 49240
      OnExecute = GenerarXMLExecute
    end
    object CambiarFecha: TAction
      Hint = 'Modificar Fecha'
      OnExecute = CambiarFechaExecute
    end
    object RevisionValores: TAction
      Caption = 'Revision de Valores'
      OnExecute = RevisionValoresExecute
    end
    object BuscarPorDetalle: TAction
      Caption = 'BuscarPorDetalle'
      ShortCut = 8205
      OnExecute = BuscarPorDetalleExecute
    end
    object ImpresionCheques: TAction
      OnExecute = ImpresionChequesExecute
    end
    object AsignarObra: TAction
      Caption = 'Asignar Obra'
      ShortCut = 16463
      OnExecute = AsignarObraExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSEgresoCaja
    Left = 528
    Top = 56
  end
  inherited ImageList1: TImageList
    Left = 192
    Top = 64
    Bitmap = {
      494C01010C00B800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C0000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E00909090007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC680200CC680200CC680200CD6904009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C00000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C00000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C00000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC680200CC680200CC680200CC6802009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C00000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009C3B0C009C3B0C009C3B0C009C3B
      0C009C3B0C000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC680200CC680200CC680200CC6802009C3B0C00F89A9400EBA15E00DA84
      2C009C3B0C000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000CC6802000000000000000000000000009B3A0C009C3B0C009C3A0C009B3A
      0C009C3B0C000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000000000007C7C7C007C7C
      7C007C7C7C007C7C7C007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3B0C009C3B
      0C009C3B0C009C3B0C009C3B0C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      00000000000000000000000000000000000000000000000000007C7C7C00D2D2
      D200CACACA00ADADAD007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3B0C00F89A
      9400EBA15E00DA842C009C3B0C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007C7C
      7C007C7C7C007B7B7B007C7C7C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B3A0C009C3B
      0C009C3A0C009B3A0C009C3B0C00000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF33FFFFFFFFFE007E007F707F707
      C003C000F007F00780018001F707F70780010000F7FFF7FF00000000F707F707
      00000000F007F00700008000F707F7070000E001F7FFF7FF0000F003F707F707
      0000F01FF007F0078001E03FF707F7078001E03FC1FFC1FFC003C03FC1FFC1FF
      E007C07FC1FFC1FFF81FF8FFFFFFFFFFFFFFF81FF81FF81FC007E007E007E007
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
  inherited QUltimoCodigo: TSQLQuery
    SQL.Strings = (
      'select max(id_egreso) from egr_caja')
    Left = 128
    Top = 456
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 592
    Top = 160
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 112
    Top = 328
  end
  inherited ImageListDos: TImageList
    ColorDepth = cd32Bit
    Bitmap = {
      494C01010C001800040010001000FFFFFFFF2000FFFFFFFFFFFFFFFF424D3600
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
      FCFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B095FFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000B88053FFFFFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007B7B7BFF7B7B7BFF7B7B7BFF7B7B
      7BFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009C3A0BFF9C3A0BFF9C3A0BFF9C3A
      0BFF9C3A0BFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A788FFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFD29C71FFFEFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF909090FF7B7B7BFFD2D2D2FFCACACAFFADAD
      ADFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FFCC6701FFCC6701FFCD6803FF9C3A0BFFF89A94FFEBA15DFFDA84
      2BFF9C3A0BFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C99B77FFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFDAA276FFFCFAF8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007A7A7AFF7B7B7BFF7B7B7BFF7A7A
      7AFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009B390BFF9C3A0BFF9C390BFF9B39
      0BFF9C3A0BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C69470FFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFDDA476FFFAF6F3FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C39067FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFE3AA7EFFF6EFEAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007B7B7BFF7B7B7BFF7B7B7BFF7B7B
      7BFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009C3A0BFF9C3A0BFF9C3A0BFF9C3A
      0BFF9C3A0BFF0000000000000000000000000000000000000000000000000000
      000000000000C28D64FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE6AC80FFF3E9E0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF7B7B7BFFD2D2D2FFCACACAFFADAD
      ADFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FFCC6701FFCC6701FFCC6701FF9C3A0BFFF89A94FFEBA15DFFDA84
      2BFF9C3A0BFF0000000000000000000000000000000000000000000000000000
      0000C28B63FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFEAB085FFECDE
      D2FF000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007A7A7AFF7B7B7BFF7B7B7BFF7A7A
      7AFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009B390BFF9C3A0BFF9C390BFF9B39
      0BFF9C3A0BFF000000000000000000000000000000000000000000000000E7D1
      C3FFECB387FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFC48E
      64FF000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEDED4FFE9AF84FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFC28C62FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007B7B7BFF7B7B7BFF7B7B7BFF7B7B
      7BFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009C3A0BFF9C3A0BFF9C3A0BFF9C3A
      0BFF9C3A0BFF0000000000000000000000000000000000000000000000000000
      000000000000F1E8DFFFE6AE82FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFC28C64FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF7B7B7BFFD2D2D2FFCACACAFFADAD
      ADFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FFCC6701FFCC6701FFCC6701FF9C3A0BFFF89A94FFEBA15DFFDA84
      2BFF9C3A0BFF0000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFEAFFE4AA7CFFF0B78BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFF0B78BFFC4906AFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF0000000000000000000000007A7A7AFF7B7B7BFF7B7B7BFF7A7A
      7AFF7B7B7BFF0000000000000000000000000000000000000000000000000000
      0000CC6701FF0000000000000000000000009B390BFF9C3A0BFF9C390BFF9B39
      0BFF9C3A0BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F5F1FFE0A67BFFF0B78BFFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFF0B78BFFC4936DFF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7BFF7B7B
      7BFF7B7B7BFF7B7B7BFF7B7B7BFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3A0BFF9C3A
      0BFF9C3A0BFF9C3A0BFF9C3A0BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F9FFDAA378FFF0B78BFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFF0B78BFFC99B77FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7BFFD2D2
      D2FFCACACAFFADADADFF7B7B7BFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3A0BFFF89A
      94FFEBA15DFFDA842BFF9C3A0BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFCFFD7A074FFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000CE966EFFCEA384FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A7A7AFF7B7B
      7BFF7B7B7BFF7A7A7AFF7B7B7BFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B390BFF9C3A
      0BFF9C390BFF9B390BFF9C3A0BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFEFFF0E4
      DCFF000000000000000000000000000000000000000000000000000000000000
      0000D6B69CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000075695CFF918170FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C784BFF70955BFF759C5DFF70955BFF5C784BFF000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFA1748BFFA174
      8BFFA1748BFFA1748BFFA1748BFFA1748BFFA1748BFFA1748BFFA1748BFFA174
      8BFFA1748BFFA1748BFFA1748BFF00000000918170FFAD9D8AFF948572FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006586
      53FF7DA26AFFA4C899FFB4D8AEFFBDDFBAFFB4D8AEFFA4C89AFF7CA269FF6485
      51FF000000000000000000000000000000000000000000000000000000009C8B
      77FFFFFFFFFF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF0000000000000000958572FFA79884FF907E
      6CFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006F945BFF9EC1
      93FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FF6F945AFF0000000000000000000000007B6958FF8C7666FF8C7765FF9C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF8C7765FF8C7666FF7C6958FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000958472FFA292
      7EFF8D7C6AFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000668954FF9CC190FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9BBF90FF668753FF00000000000000008F7865FFD4C1B0FFD4C1B0FF9C8B
      77FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FF9C8B77FFD4C1B0FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000009082
      6EFF9F8F7CFF877667FF0000000000000000897968FF9A8976FF9A8976FF8879
      68FF00000000000000000000000000000000000000007CA169FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBCE0B9FF7CA168FF00000000000000008F7865FFD4C1B0FFBBA795FF8F78
      65FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF8F78
      65FF8F7965FFBBA896FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      00008C7C6AFF9C8B77FF9E8C79FFB09F8AFFE7D5BCFFFCEACEFFFCEACEFFE7D5
      BBFFAD9D89FF897A69FF00000000000000005B7849FFA5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF59764AFF000000008F7865FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      0000000000009E8D79FFCDBAA4FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFC9B7A2FF897A69FF0000000071955AFFB6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF719559FF000000008F7865FFD4C1B0FFD4C1B0FFCBAB
      93FFBA8156FFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFBA81
      56FFCBAC94FFD4C1B0FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      000000000000AF9F89FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88FF00000000739B5CFFBCDFB8FFBDE0BAFF99BE
      8CFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF759C5DFF99BE
      8CFFBDE0BAFFBBDEB8FF749A5BFF000000008F7865FFD4C1B0FFD4C1B0FFBA81
      56FFE3A97BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE2A9
      7BFFB98257FFD4C1B0FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      00008A7B6AFFE7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF887868FF71955AFFB6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF719559FF000000008F7865FFD4C1B0FFD4C1B0FFB579
      4DFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB5794DFFB3E0E6FFD4C1B0FF8F7865FF00000000A1748BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      00009A8976FFFBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998975FF5D784BFFA5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5A784BFF000000008E7764FFD3C0AFFFD4C1B0FFB579
      4DFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB5794DFFD4C1B0FFD3C0AFFF8E7764FF00000000A1748BFFF2D5DCFFF2D5
      DCFFE9C0CBFFA48B7DFF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FFA791
      83FFF2D5DCFFF2D5DCFFA1748BFF000000000000000000000000000000000000
      00009A8976FFFBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998975FF000000007DA16AFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF759C5DFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF7BA169FF00000000000000006B5C4DFF8F7764FF8F7865FFB579
      4DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB579
      4DFFB5794DFF8F7865FF8F7764FF6A5B4DFF00000000A1748BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7865FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B77FFF2EBE1FF8F78
      65FFF2D5DCFFEACCD4FFA1748BFF000000000000000000000000000000000000
      0000897B6BFFE7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF877868FF00000000668954FF9EC393FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9EC192FF668753FF00000000000000000000000000000000000000009C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7865FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B77FFF2EBE1FF8F78
      65FFEBCDD5FFA57D8FFF563F4AFF000000000000000000000000000000000000
      000000000000AF9E8AFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88FF0000000000000000000000006F945BFF9EC1
      93FFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FF6F945AFF0000000000000000000000000000000000000000000000009C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7865FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FF8F78
      65FFA47B8FFF0000000000000000000000000000000000000000000000000000
      0000000000008C7B69FFCEBCA6FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFCDBBA6FF897A69FF000000000000000000000000000000006586
      53FF7DA26AFFA5CA9CFFB7DAB2FFB8DBB4FFB7DAB2FFA6C99CFF7CA269FF6485
      51FF000000000000000000000000000000000000000000000000000000009C8B
      77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B77FF00000000000000000000000000000000A1748BFFA1748BFFA174
      8BFFA1748BFF977D72FF8F7865FF8F7865FF8F7865FF8F7865FF8F7865FF987C
      73FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000897A69FFB1A08BFFE7D5BCFFF8E6CBFFF8E6CBFFE7D5
      BBFFB19F8AFF897A69FF00000000000000000000000000000000000000000000
      0000000000005C784BFF70945BFF72995CFF70945BFF5C784BFF000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000897B6AFF988975FF988975FF8A79
      68FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFC496
      73FFC49673FFC49673FFC49673FFC49673FFC49673FFC49673FFC49673FFC496
      73FFC49673FFC49673FF00000000000000000000000000000000000000000000
      000000000000353598FF4040BDFF4242C7FF4040BDFF353598FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000454A4AFF404C4EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49673FF00000000000000000000000000000000000000003A3A
      AAFF4E4EC7FF7474E6FF8686F1FF8F8FF7FF8686F1FF7373E6FF4E4EC7FF3B3B
      A8FF000000000000000000000000000000000000000000000000000000002929
      6EFF323282FF0000000000000000000000000000000000000000000000003131
      84FF29296EFF0000000000000000000000000000000040494DFF545452FF65A0
      BDFF4A8AA6FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE3C29DFF000000000000000000000000000000004040BDFF6D6D
      E1FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6D6D
      E0FF4040BCFF0000000000000000000000000000000000000000282866FF6B6B
      D5FF7474DEFF2D2D77FF000000000000000000000000000000002D2D77FF7373
      DFFF6C6CD5FF282866FF0000000000000000000000000000000067A2C3FF6DBC
      DFFF7BCAE2FF62AFC8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF0000000000000000000000003B3BACFF6C6CE0FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6A6AE0FF3B3BABFF000000000000000000000000000000002F2F7DFF7878
      E1FF8F8FF7FF7979E2FF31317EFF0000000000000000323280FF7979E2FF8F8F
      F7FF7575E0FF2F2F7AFF000000000000000000000000000000004D8BA7FF80CD
      E5FFA3EEFFFFA1ECFEFF559BB1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDAB188FFFFE8C2FF0000000000000000000000004D4DC7FF8F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8E8EF7FF4C4CC7FF00000000000000000000000000000000000000003131
      7EFF7878E3FF8F8FF7FF7575DFFF2D2D77FF2D2D77FF7575DFFF8F8FF7FF7878
      E3FF31317EFF00000000000000000000000000000000000000000000000065B1
      CCFFA2EEFFFFA3EEFFFFA1EBFDFF5498AFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB5794DFFDAB188FF0000000000000000343498FF7575E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7373E6FF343497FF000000000000000000000000000000000000
      000030307AFF7676E1FF8F8FF7FF7777E2FF7A7AE3FF8F8FF7FF7676E0FF2F2F
      79FF000000000000000000000000000000000000000000000000000000000000
      00005BA2B7FFA2EEFFFFA3EEFFFFA1EBFDFF5498AFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB5794DFFB5794DFF604029FF000000004141BDFF8888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFB1B1F9FFF6F6FEFFBCBCFAFFF7F7FEFFB1B1F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4040BDFF000000000000000000000000000000000000
      00000000000030307AFF7676E0FF8F8FF7FF8F8FF7FF7676E0FF2F2F79FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005DA3B8FFA2EEFFFFA3EEFFFFA1EBFDFF5498AFFF000000000000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB579
      4DFFB5794DFFB5794DFFB5794DFF604029FF4242C4FF8E8EF6FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FFC3C3FAFFFEFEFFFFC2C2FBFF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8D8DF5FF4141C4FF000000000000000000000000000000000000
      000000000000313184FF7878E1FF8F8FF7FF8F8FF7FF7878E1FF323282FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005DA3B8FFA2EEFFFFA3EEFFFFA1EBFDFF5498AFFF0000
      0000000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB5794DFFB579
      4DFFB5794DFFB5794DFFB5794DFF000000004141BDFF8888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFA8A8F9FFF6F6FEFFC9C9FBFFF6F6FEFFA8A8F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4040BDFF000000000000000000000000000000000000
      0000323284FF7979E4FF8F8FF7FF7777E2FF7A7AE3FF8F8FF7FF7878E3FF3232
      82FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005DA3B8FFA2EEFFFFA3EEFFFFA1EBFDFF839A
      9AFF000000000000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB5794DFFB5794DFF593C26FF00000000353599FF7575E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7373E6FF353598FF000000000000000000000000000000002F2F
      7EFF7676E0FF8F8FF7FF7979E5FF333381FF343483FF7B7BE7FF8F8FF7FF7676
      E0FF30307CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005CA3BAFFA2EEFFFFA9C2C1FFD2C8
      BAFFA9A69BFF0000000000000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB5794DFFDAB188FF0000000000000000000000004D4DC7FF8F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8F8FF7FF4D4DC6FF0000000000000000000000000000000031317EFF7777
      E1FF8F8FF7FF7979E2FF2F2F7AFF000000000000000032327DFF7979E2FF8F8F
      F7FF7676E2FF31317DFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000869B9EFFDACEC1FFF5E7
      D9FFF4E6D7FFA69D97FF00000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDCB58BFFFFE8C2FF0000000000000000000000003B3BACFF6F6FE2FF8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6C6CE0FF3B3BABFF000000000000000000000000000000002E2E75FF7575
      DFFF7C7CE7FF333382FF00000000000000000000000000000000343482FF7C7C
      E7FF7575DFFF2E2E75FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3AFA4FFF5E7
      D8FFDACEC2FFA097BAFF4444A7FF000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF000000000000000000000000000000004040BDFF6D6D
      E1FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6D6D
      E0FF4040BCFF0000000000000000000000000000000000000000000000000000
      00002F2F79FF0000000000000000000000000000000000000000000000002F2F
      79FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A69F
      9AFF9F96BFFF8F8FF7FF4E4EB6FF000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE2BF9BFF00000000000000000000000000000000000000003A3A
      AAFF4E4EC7FF7575E8FF8989F4FF8989F4FF8989F4FF7575E8FF4E4EC7FF3B3B
      A8FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004545AAFF5151B7FF00000000000000000000000000000000C49673FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49673FF00000000000000000000000000000000000000000000
      000000000000353598FF4040BBFF4141C1FF4040BBFF353598FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49673FFC496
      73FFC49673FFC49673FFC49673FFC49673FFC49673FFC49673FFC49673FFC496
      73FFC49673FFC49673FF0000000000000000}
  end
  object DSPEgresoCaja: TDataSetProvider
    DataSet = DMMain_FD.QEgresoCaja
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 504
  end
  object DSPSucrusal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 24
    Top = 583
  end
  object frEgresos: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.758005636580000000
    ReportOptions.LastChange = 39638.758005636580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 552
    Top = 305
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBDMovCaja: TfrxDBDataset
    UserName = 'frDBDMovCaja'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSCajaMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 481
    FieldDefs = <
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'FECHA_CAJA'
        FieldAlias = 'FECHA_CAJA'
      end
      item
        FieldName = 'FECHA_OPERACION'
        FieldAlias = 'FECHA_OPERACION'
      end
      item
        FieldName = 'TIPO_OPERACION'
        FieldAlias = 'TIPO_OPERACION'
      end
      item
        FieldName = 'TIPO_COMPROB'
        FieldAlias = 'TIPO_COMPROB'
      end
      item
        FieldName = 'CLASE_COMPROB'
        FieldAlias = 'CLASE_COMPROB'
      end
      item
        FieldName = 'ID_COMPROBANTE'
        FieldAlias = 'ID_COMPROBANTE'
      end
      item
        FieldName = 'NRO_COMPROBANTE'
        FieldAlias = 'NRO_COMPROBANTE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'ID_TPAGO'
        FieldAlias = 'ID_TPAGO'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'ID_FPAGOOLD'
        FieldAlias = 'ID_FPAGOOLD'
      end
      item
        FieldName = 'MUESTRAFORMAPAGO'
        FieldAlias = 'MUESTRAFORMAPAGO'
      end
      item
        FieldName = 'MUESTRAIDCTACAJA'
        FieldAlias = 'MUESTRAIDCTACAJA'
      end
      item
        FieldName = 'MUESTRACAJA'
        FieldAlias = 'MUESTRACAJA'
      end
      item
        FieldName = 'MUESTRANROCAJA'
        FieldAlias = 'MUESTRANROCAJA'
      end>
  end
  object DSPEgresoCajaDetalle: TDataSetProvider
    DataSet = DMMain_FD.QEgresoCajaDetalle
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 552
  end
  object CDSEgresoCajaDetalles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPEgresoCajaDetalle'
    BeforeInsert = CDSEgresoCajaDetallesBeforeInsert
    BeforePost = CDSEgresoCajaDetallesBeforePost
    AfterPost = CDSEgresoCajaDetallesAfterPost
    AfterDelete = CDSEgresoCajaDetallesAfterDelete
    OnNewRecord = CDSEgresoCajaDetallesNewRecord
    Left = 240
    Top = 568
    object CDSEgresoCajaDetallesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSEgresoCajaDetallesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSEgresoCajaDetallesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSEgresoCajaDetallesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSEgresoCajaDetallesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSEgresoCajaDetallesFECHACPBTE: TSQLTimeStampField
      FieldName = 'FECHACPBTE'
    end
    object CDSEgresoCajaDetallesFECHAGASTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Gasto'
      FieldName = 'FECHAGASTO'
    end
    object CDSEgresoCajaDetallesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 100
    end
    object CDSEgresoCajaDetallesSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
    end
    object CDSEgresoCajaDetallesMUESTRARUBRO: TStringField
      DisplayLabel = 'Des.Rubro'
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 50
    end
    object CDSEgresoCajaDetallesMUESTRACUENTA: TStringField
      DisplayLabel = 'Des.Cuenta'
      FieldName = 'MUESTRACUENTA'
      ProviderFlags = []
      Size = 50
    end
    object CDSEgresoCajaDetallesRUBROGASTO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBROGASTO'
      OnSetText = CDSEgresoCajaDetallesRUBROGASTOSetText
      Size = 3
    end
    object CDSEgresoCajaDetallesCODIGOGASTO: TStringField
      DisplayLabel = 'Cuenta'
      FieldName = 'CODIGOGASTO'
      OnSetText = CDSEgresoCajaDetallesCODIGOGASTOSetText
      Size = 6
    end
    object CDSEgresoCajaDetallesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      OnSetText = CDSEgresoCajaDetallesIMPORTESetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSEgresoCajaDetalle: TDataSource
    DataSet = CDSEgresoCajaDetalles
    Left = 336
    Top = 560
  end
  object IbgEgreDetalle: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_EGR_CAJA_DETALLE'
    SystemGenerators = False
    Left = 400
    Top = 560
  end
  object frDBEgresosDetalles: TfrxDBDataset
    UserName = 'frDBEgresosDetalles'
    CloseDataSource = False
    DataSource = DSEgresoCajaDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 616
    Top = 328
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
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
        FieldName = 'FECHACPBTE'
        FieldAlias = 'FECHACPBTE'
      end
      item
        FieldName = 'FECHAGASTO'
        FieldAlias = 'FECHAGASTO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'SUCURSALVENTA'
        FieldAlias = 'SUCURSALVENTA'
      end
      item
        FieldName = 'MUESTRARUBRO'
        FieldAlias = 'MUESTRARUBRO'
      end
      item
        FieldName = 'MUESTRACUENTA'
        FieldAlias = 'MUESTRACUENTA'
      end
      item
        FieldName = 'RUBROGASTO'
        FieldAlias = 'RUBROGASTO'
      end
      item
        FieldName = 'CODIGOGASTO'
        FieldAlias = 'CODIGOGASTO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object IbgEgreso: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_EGRESO_CAJA'
    SystemGenerators = False
    Left = 504
    Top = 392
  end
  object frDBEgresosCab: TfrxDBDataset
    UserName = 'frDBEgresosCab'
    CloseDataSource = False
    DataSet = CDSEgresoCaja
    BCDToCurrency = False
    DataSetOptions = []
    Left = 592
    Top = 272
    FieldDefs = <
      item
        FieldName = 'ID_EGRESO'
        FieldAlias = 'ID_EGRESO'
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
        FieldName = 'SUCURSALVENTA'
        FieldAlias = 'SUCURSALVENTA'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'CODIGO_GASTO'
        FieldAlias = 'CODIGO_GASTO'
      end
      item
        FieldName = 'RUBRO_GASTO'
        FieldAlias = 'RUBRO_GASTO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'OBS'
        FieldAlias = 'OBS'
      end
      item
        FieldName = 'USUARIO'
        FieldAlias = 'USUARIO'
      end
      item
        FieldName = 'FECHA_HORA'
        FieldAlias = 'FECHA_HORA'
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
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end>
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    Left = 22
    Top = 632
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 80
    Top = 632
    object CDSEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 30
    end
    object CDSEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Size = 30
    end
    object CDSEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object CDSEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 30
    end
    object CDSEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Size = 30
    end
    object CDSEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 10
    end
    object CDSEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 10
    end
    object CDSEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Size = 15
    end
    object CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object CDSEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object CDSEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object CDSEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object frDBEmpresa: TfrxDBDataset
    UserName = 'frDBEmpresa'
    CloseDataSource = False
    DataSet = CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 584
    Top = 600
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
      end>
  end
  object frDBEfectivo: TfrxDBDataset
    UserName = 'frDBEfectivo'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSMovEfectivo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 648
    Top = 629
    FieldDefs = <
      item
        FieldName = 'ID_EFECTIVO'
        FieldAlias = 'ID_EFECTIVO'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end>
  end
  object frDBChe3: TfrxDBDataset
    UserName = 'frDBChe3'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSChe3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 437
    FieldDefs = <
      item
        FieldName = 'ID_MOV'
        FieldAlias = 'ID_MOV'
      end
      item
        FieldName = 'ID_CHEQUE_TER'
        FieldAlias = 'ID_CHEQUE_TER'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'ID_BANCO'
        FieldAlias = 'ID_BANCO'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'FECHA_EMISION'
        FieldAlias = 'FECHA_EMISION'
      end
      item
        FieldName = 'FECHA_COBRO'
        FieldAlias = 'FECHA_COBRO'
      end
      item
        FieldName = 'FECHA_ENTRADA'
        FieldAlias = 'FECHA_ENTRADA'
      end
      item
        FieldName = 'FECHA_SALIDA'
        FieldAlias = 'FECHA_SALIDA'
      end
      item
        FieldName = 'ORIGEN'
        FieldAlias = 'ORIGEN'
      end
      item
        FieldName = 'DESTINO'
        FieldAlias = 'DESTINO'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'FIRMANTE'
        FieldAlias = 'FIRMANTE'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'ID_MOV_CAJA_EGRESOS'
        FieldAlias = 'ID_MOV_CAJA_EGRESOS'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'ID_CUENTA_BCO_DEPOSITADO'
        FieldAlias = 'ID_CUENTA_BCO_DEPOSITADO'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'SUCURSAL_BCO'
        FieldAlias = 'SUCURSAL_BCO'
      end
      item
        FieldName = 'NRO_CTA'
        FieldAlias = 'NRO_CTA'
      end
      item
        FieldName = 'MUESTRABANCO'
        FieldAlias = 'MUESTRABANCO'
      end>
  end
  object frDBCheque: TfrxDBDataset
    UserName = 'frDBCheque'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSCheques
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
    Top = 549
    FieldDefs = <
      item
        FieldName = 'ID_CHEQUE_PRO'
        FieldAlias = 'ID_CHEQUE_PRO'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'ID_CHEQUERA'
        FieldAlias = 'ID_CHEQUERA'
      end
      item
        FieldName = 'ID_BANCO'
        FieldAlias = 'ID_BANCO'
      end
      item
        FieldName = 'FECHA_EMISION'
        FieldAlias = 'FECHA_EMISION'
      end
      item
        FieldName = 'FECHA_COBRO'
        FieldAlias = 'FECHA_COBRO'
      end
      item
        FieldName = 'ORDEN_DE'
        FieldAlias = 'ORDEN_DE'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'ID_CUENTA_BANCO'
        FieldAlias = 'ID_CUENTA_BANCO'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'ID_CPBTE_ANULACION_REEMP'
        FieldAlias = 'ID_CPBTE_ANULACION_REEMP'
      end
      item
        FieldName = 'ID_CAJA_MOV_ANULACION'
        FieldAlias = 'ID_CAJA_MOV_ANULACION'
      end
      item
        FieldName = 'DEBITADO'
        FieldAlias = 'DEBITADO'
      end
      item
        FieldName = 'FECHA_DEBITO'
        FieldAlias = 'FECHA_DEBITO'
      end
      item
        FieldName = 'MUESTRACHEQUERA'
        FieldAlias = 'MUESTRACHEQUERA'
      end
      item
        FieldName = 'MUESTRANI'
        FieldAlias = 'MUESTRANI'
      end
      item
        FieldName = 'MUESTRANF'
        FieldAlias = 'MUESTRANF'
      end>
  end
  object frDBTransf: TfrxDBDataset
    UserName = 'frDBTransf'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSTransBco
    BCDToCurrency = False
    DataSetOptions = []
    Left = 584
    Top = 421
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'ID_CUENTA_BANCO'
        FieldAlias = 'ID_CUENTA_BANCO'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ORIGEN'
        FieldAlias = 'ORIGEN'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'MUESTRACTACAJA'
        FieldAlias = 'MUESTRACTACAJA'
      end>
  end
  object frDBDebitos: TfrxDBDataset
    UserName = 'frDBDebitos'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSDebitos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 704
    Top = 581
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'ID_CUENTA_BANCO'
        FieldAlias = 'ID_CUENTA_BANCO'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ORIGEN'
        FieldAlias = 'ORIGEN'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'MUESTRACTACAJA'
        FieldAlias = 'MUESTRACTACAJA'
      end>
  end
  object frDBTC: TfrxDBDataset
    UserName = 'frDBTC'
    CloseDataSource = False
    DataSet = FrameMovValoresEgresos1.CDSMovTCCompra
    BCDToCurrency = False
    DataSetOptions = []
    Left = 648
    Top = 584
    FieldDefs = <
      item
        FieldName = 'ID_CUPON'
        FieldAlias = 'ID_CUPON'
      end
      item
        FieldName = 'ID_CAJA'
        FieldAlias = 'ID_CAJA'
      end
      item
        FieldName = 'ID_MOV_CAJA'
        FieldAlias = 'ID_MOV_CAJA'
      end
      item
        FieldName = 'ID_FPAGO'
        FieldAlias = 'ID_FPAGO'
      end
      item
        FieldName = 'ID_TARJETA'
        FieldAlias = 'ID_TARJETA'
      end
      item
        FieldName = 'FECHA_COMPRA'
        FieldAlias = 'FECHA_COMPRA'
      end
      item
        FieldName = 'FECHA_CUPON'
        FieldAlias = 'FECHA_CUPON'
      end
      item
        FieldName = 'CUOTAS'
        FieldAlias = 'CUOTAS'
      end
      item
        FieldName = 'NUMERO_CUPON'
        FieldAlias = 'NUMERO_CUPON'
      end
      item
        FieldName = 'UNIDADES'
        FieldAlias = 'UNIDADES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'MONEDA'
        FieldAlias = 'MONEDA'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
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
        FieldName = 'PROVEEDOR'
        FieldAlias = 'PROVEEDOR'
      end
      item
        FieldName = 'ID_CPBTE_ANULACION_TC'
        FieldAlias = 'ID_CPBTE_ANULACION_TC'
      end
      item
        FieldName = 'ID_CAJA_MOV_ANULACION'
        FieldAlias = 'ID_CAJA_MOV_ANULACION'
      end
      item
        FieldName = 'ANULADO'
        FieldAlias = 'ANULADO'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'MUESTRATC'
        FieldAlias = 'MUESTRATC'
      end>
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 160
    Top = 632
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 248
    Top = 632
    object CDSBuscaSucursalCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSucrusal'
    Left = 80
    Top = 583
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object CDSEgresoCaja: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPEgresoCaja'
    OnNewRecord = CDSEgresoCajaNewRecord
    Left = 248
    Top = 504
    object CDSEgresoCajaID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSEgresoCajaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CDSEgresoCajaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSEgresoCajaLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      Size = 1
    end
    object CDSEgresoCajaSUC: TStringField
      FieldName = 'SUC'
      Required = True
      OnSetText = CDSEgresoCajaSUCSetText
      Size = 4
    end
    object CDSEgresoCajaNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      OnSetText = CDSEgresoCajaNUMEROSetText
      Size = 8
    end
    object CDSEgresoCajaSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      Required = True
      OnSetText = CDSEgresoCajaSUCURSALVENTASetText
    end
    object CDSEgresoCajaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSEgresoCajaCODIGO_GASTO: TStringField
      FieldName = 'CODIGO_GASTO'
      Size = 6
    end
    object CDSEgresoCajaRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Size = 3
    end
    object CDSEgresoCajaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSEgresoCajaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSEgresoCajaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object CDSEgresoCajaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSEgresoCajaFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSEgresoCajaMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSEgresoCajaMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSEgresoCajaID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSEgresoCajaID_TIPOCOMPROBANTESetText
    end
    object CDSEgresoCajaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object CDSEgresoCajaNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
    object CDSEgresoCajaID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Required = True
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id '
      'and sucursal=:suc '
      'and compra_venta='#39'C'#39' '
      'and (tipo_comprob='#39'EC'#39')')
    Left = 472
    Top = 488
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
    object QComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Required = True
    end
  end
  object CDSBuscaRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaRubro'
    Left = 464
    Top = 600
    object CDSBuscaRubroDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 50
    end
    object CDSBuscaRubroCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
      Size = 3
    end
  end
  object DSPBuscaRubro: TDataSetProvider
    DataSet = QBuscaRub
    Options = []
    Left = 400
    Top = 608
  end
  object QBuscaRub: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Gastos_Rubros order by detalle')
    Left = 328
    Top = 608
  end
  object QBuscaCuentas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gastos_cuentas'
      'where codigo_rubro=:rubro'
      'order by detalle')
    Left = 328
    Top = 656
    ParamData = <
      item
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object CDSBuscaCuenta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaCuenta'
    Left = 472
    Top = 656
    object CDSBuscaCuentaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 50
    end
    object CDSBuscaCuentaCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaCuentaCODIGO_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object DSPBuscaCuenta: TDataSetProvider
    DataSet = QBuscaCuentas
    Options = []
    Left = 400
    Top = 648
  end
  object DSCtroCosto: TDataSource
    DataSet = DMMain_FD.CDSAplicPorCtroCosto
    Left = 472
    Top = 552
  end
  object frDBCCosto: TfrxDBDataset
    UserName = 'frDBCCosto'
    CloseDataSource = False
    DataSource = DSCtroCosto
    BCDToCurrency = False
    DataSetOptions = []
    Left = 272
    Top = 445
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CTRO_COSTO'
        FieldAlias = 'CTRO_COSTO'
      end
      item
        FieldName = 'IMPUTADO'
        FieldAlias = 'IMPUTADO'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'PORCENTAJE'
        FieldAlias = 'PORCENTAJE'
      end
      item
        FieldName = 'TIPO'
        FieldAlias = 'TIPO'
      end
      item
        FieldName = 'DESCRIPCION'
        FieldAlias = 'DESCRIPCION'
      end>
  end
  object ComBuscadorSucursal: TComBuscador
    Data = CDSBuscaSucursal
    Campo = 'codigo'
    Titulo = 'Sucursal'
    rOk = False
    Left = 368
    Top = 45
  end
  object ComBuscadorRubro: TComBuscador
    Data = CDSBuscaRubro
    Campo = 'CODIGO'
    rOk = False
    Left = 312
    Top = 141
  end
  object ComBuscadorCuenta: TComBuscador
    Data = CDSBuscaCuenta
    Campo = 'CODIGO'
    Titulo = 'Cuentas de Egresos'
    rOk = False
    Left = 424
    Top = 133
  end
  object MainMenu1: TMainMenu
    Left = 704
    Top = 110
    object OtrasOperaciones1: TMenuItem
      Caption = 'Otras Operaciones'
      object RevisiondeValores1: TMenuItem
        Action = RevisionValores
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object GenerarXML1: TMenuItem
        Action = GenerarXML
      end
      object GravarNumeroOperacion1: TMenuItem
        Action = GravarNumeroOperacion
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object CambiarFecha1: TMenuItem
        Action = CambiarFecha
        Caption = 'Cambiar Fecha'
      end
      object AsignarObra1: TMenuItem
        Action = AsignarObra
      end
    end
  end
end

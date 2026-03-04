inherited FormRemplazoCheques: TFormRemplazoCheques
  Left = 366
  Top = 136
  Caption = 'Reemplazo de Cheques'
  ClientHeight = 756
  ClientWidth = 777
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 795
  ExplicitHeight = 797
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 777
    Height = 577
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 777
    ExplicitHeight = 577
    object pnValores: TPanel
      Left = 0
      Top = 281
      Width = 777
      Height = 344
      Align = alTop
      TabOrder = 1
      OnEnter = pnValoresEnter
      DesignSize = (
        777
        344)
      object RxLabel1: TJvLabel
        Left = 9
        Top = 6
        Width = 73
        Height = 13
        Caption = 'Observaciones'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object JvLabel1: TJvLabel
        Left = 557
        Top = 6
        Width = 65
        Height = 13
        Caption = 'Deducciones'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      inline FrameMovValoresEgresos1: TFrameMovValoresEgresos
        Left = 2
        Top = 51
        Width = 762
        Height = 292
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
        ExplicitLeft = 2
        ExplicitTop = 51
        ExplicitWidth = 762
        ExplicitHeight = 292
        inherited lbTotalValores: TLabel
          StyleElements = [seFont, seClient, seBorder]
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
        inherited spLoteCheques: TSpeedButton
          OnClick = FrameMovValoresEgresos1spLoteChequesClick
        end
        inherited pcValores: TPageControl
          Height = 230
          ExplicitHeight = 230
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
            inherited btOkEfectivo: TBitBtn
              DoubleBuffered = True
            end
            inherited btCancelarEfectivo: TBitBtn
              DoubleBuffered = True
            end
          end
          inherited tsChe3: TTabSheet
            ExplicitHeight = 202
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
              OnClick = FrameMovValoresEgresos1BitBtn3Click
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
              OnClick = FrameMovValoresEgresos1btPostClick
            end
            inherited pnAnulado: TPanel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbObs: TDBMemo
              Left = 9
              Top = 172
              StyleElements = [seFont, seClient, seBorder]
              ExplicitLeft = 9
              ExplicitTop = 172
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
              OnClick = FrameMovValoresEgresos1BitBtn8Click
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
              OnClick = FrameMovValoresEgresos1BitBtn6Click
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
                OnClick = FrameMovValoresEgresos1BitBtn10Click
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
        inherited CDSCheques: TClientDataSet
          OnNewRecord = FrameMovValoresEgresos1CDSChequesNewRecord
        end
        inherited CDSCajaMov: TClientDataSet
          AfterPost = FrameMovValoresEgresos1CDSCajaMovAfterPost
          AfterDelete = FrameMovValoresEgresos1CDSCajaMovAfterDelete
        end
        inherited QBuscaTCredito: TFDQuery
          Left = 640
          Top = 136
        end
      end
      object dbeDetalle: TDBEdit
        Left = 9
        Top = 23
        Width = 320
        Height = 21
        DataField = 'DETALLE'
        DataSource = DSBase
        TabOrder = 0
      end
      object edDeducciones: TDBEdit
        Left = 573
        Top = 24
        Width = 121
        Height = 21
        DataField = 'DEDUCIONES'
        DataSource = DSBase
        TabOrder = 2
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 777
      Height = 132
      Align = alTop
      TabOrder = 0
      object dbtMuestraComprobante: TDBText
        Left = 349
        Top = 23
        Width = 138
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
        Left = 109
        Top = 5
        Width = 89
        Height = 13
        Caption = 'Sucursal de Venta'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel58: TJvLabel
        Left = 12
        Top = 5
        Width = 35
        Height = 13
        Caption = 'Fecha '
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel60: TJvLabel
        Left = 492
        Top = 5
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 304
        Top = 9
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText7: TDBText
        Left = 645
        Top = 3
        Width = 65
        Height = 17
        DataField = 'ID'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object spAgregarChe: TAdvBadgeSpeedButton
        Left = 637
        Top = 104
        Width = 23
        Height = 22
        Hint = 'Agregar al Listado'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000090000
          000E000000100000001000000010000000100000001000000011000000110000
          0011000000110000001100000011000000100000000B0000000377544AC1A474
          66FFA47465FFA47465FFA37364FFA37264FFA27263FFA27263FFA27162FFA271
          62FFA17062FFA17061FFA17061FFA17061FF735046C30000000AAC7E71FFF8F1
          EEFFF8F0EDFFF8F1ECFFF8F0ECFFF8F0ECFFF5EDE9FFF2EAE6FFF5EDE9FFF8EF
          EBFFF7EFEBFFF7EFEBFFF7EFEBFFF7F0EBFFA8796AFF0000000FAD8172FFF8F2
          EFFFF6EDE8FFF7EDE8FFF6ECE8FFF4EBE6FFE6DBD6FFA87A62FFE7DCD8FFF5EB
          E6FFF6EDE7FFF6ECE8FFF6ECE8FFF8F0ECFFA97B6BFF00000010AF8375FFF9F2
          EFFFF6ECE8FFF6EDE9FFF6ECE7FFEDE5E0FFAD836EFFC58A51FFB08975FFEDE4
          E0FFF6ECE7FFF6ECE8FFF6ECE8FFF8F1EDFFAA7C6DFF0000000FB18577FFF9F3
          F0FFF7EDE9FFF7EDE8FFF3EAE5FFCDB3A8FFAC6E41FFF7C67AFFA96B40FFCDB6
          ABFFF1E8E4FFF7EDE8FFF6EDE9FFF9F1EDFFAB7E6FFF0000000EB2887AFFF9F4
          F0FFF7EEE9FFF5EBE7FFE4D8D1FFA06544FFEFBE79FFF9CA82FFEDBB78FF9F63
          42FFE3D7D2FFF4EBE7FFF7EEE9FFF8F1EEFFAD8072FF0000000EB48A7CFFF9F4
          F1FFF7EEEAFFF4EBE7FFC69E83FFB47C54FFB47B53FFFACF88FFB37851FFB277
          4FFFC3987EFFF2E9E5FFF7EEE9FFF9F2EFFFAF8274FF0000000DB68D7FFFFAF4
          F2FFF7EEEAFFF6EDE9FFF2E9E5FFE9E1DDFFB77F57FFFDD48EFFB1744CFFE8DF
          DBFFF1E7E4FFF6EDE9FFF7EEEAFFF9F2EFFFB08476FF0000000CB88F82FFFAF5
          F2FFF7EEEAFFF7EEEBFFF7EEEAFFF0E7E5FFBA845CFFFEEAC1FFB2774FFFEFE7
          E3FFF7EEEAFFF7EFEAFFF7EEEAFFF9F3F0FFB28679FF0000000CB99184FFFAF5
          F3FFF8EFEBFFF7EFEAFFF7EFEBFFF2EAE6FFCB9E76FFCB9E76FFCB9E76FFF2E8
          E5FFF7EFEAFFF7EEEAFFF7EFEBFFFAF4F1FFB3897BFF0000000BBB9387FFFAF6
          F4FFF7EFEBFFF7EEEBFFF8EFEBFFF6EDEAFFF2EAE6FFF1E9E5FFF2EAE6FFF6ED
          EAFFF7EFEBFFF7EFEBFFF7EEEBFFFAF3F2FFB58B7DFF0000000AD4A477FFD8B1
          8BFFD2A373FFD1A372FFD1A272FFD1A170FFD0A070FFD09F6FFFCF9F6EFFCE9E
          6DFFCF9D6CFFCE9C6BFFCE9C6AFFD3A77CFFCE9764FF00000009D4A678FFEED7
          B6FFE2BB87FFE2BA86FFE2B985FFE2BA85FFE2BA85FFE1B984FFE1B984FFE1B8
          84FFE1B883FFE1B883FFE0B783FFEBD0AAFFCE9864FF00000009D4A679FFF1DC
          BCFFF0DCBCFFF0DBBCFFF0DBBCFFF0DCBBFFEFDABBFFEFDABBFFEFDABAFFEFDA
          B9FFEFD8B9FFEFD9B8FFEFD8B6FFEED5B1FFCE9865FF000000089E7B5AC0D4A6
          79FFD4A577FFD4A476FFD3A375FFD3A272FFD2A071FFD1A06FFFD09F6FFFD09D
          6DFFD09C6CFFD09B6AFFCF9B68FFCF9A67FF99714BC200000005}
        ParentShowHint = False
        ShowHint = True
        OnClick = spAgregarCheClick
      end
      object spBorrarChe: TAdvBadgeSpeedButton
        Left = 666
        Top = 104
        Width = 23
        Height = 22
        Hint = 'Sacar del Listado'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000B000000120000001300000013000000140000001400000014000000140000
          0014000000140000001500000015000000140000000D000000030000000B1C11
          6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
          93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
          9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
          D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
          A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
          BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
          A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
          CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
          ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
          B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
          B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
          BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
          C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
          D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
          D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
          A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
          DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
          BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
          DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
          F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
          A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
          DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
          0002000000030000000400000004000000040000000400000004000000040000
          0004000000040000000400000005000000050000000300000001}
        ParentShowHint = False
        ShowHint = True
        OnClick = spBorrarCheClick
      end
      object dbeSuc: TDBEdit
        Left = 520
        Top = 21
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
        TabOrder = 5
      end
      object dbeNumero: TDBEdit
        Left = 564
        Top = 21
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
        TabOrder = 6
      end
      object dbeLetra: TDBEdit
        Left = 494
        Top = 21
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
        TabOrder = 4
      end
      object dbeSucursal: TDBEdit
        Left = 153
        Top = 23
        Width = 146
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object pnCheque: TPanel
        Left = 11
        Top = 52
        Width = 620
        Height = 69
        BevelInner = bvLowered
        TabOrder = 7
        object DBText1: TDBText
          Left = 103
          Top = 7
          Width = 84
          Height = 17
          DataField = 'MUESTRACHEFECHAEMISION'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 103
          Top = 27
          Width = 84
          Height = 17
          DataField = 'MUESTRACHEFECHACOBRO'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 103
          Top = 47
          Width = 188
          Height = 17
          DataField = 'MUESTRACHEORDENDE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 397
          Top = 46
          Width = 121
          Height = 17
          DataField = 'MUESTRACHEIMPORTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 397
          Top = 26
          Width = 218
          Height = 17
          DataField = 'MUESTRACTABANCO'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 397
          Top = 7
          Width = 161
          Height = 17
          DataField = 'MUESTRACHENUMERO'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel2: TJvLabel
          Left = 7
          Top = 9
          Width = 35
          Height = 13
          Caption = 'Fecha '
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel3: TJvLabel
          Left = 7
          Top = 28
          Width = 81
          Height = 13
          Caption = 'Fecha  de Cobro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
        object RxLabel4: TJvLabel
          Left = 8
          Top = 48
          Width = 67
          Height = 13
          Caption = 'A la Orden de'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel5: TJvLabel
          Left = 306
          Top = 48
          Width = 37
          Height = 13
          Caption = 'Importe'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel7: TJvLabel
          Left = 306
          Top = 28
          Width = 63
          Height = 13
          Caption = 'Cta.Bancaria'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object RxLabel9: TJvLabel
          Left = 306
          Top = 9
          Width = 79
          Height = 13
          Caption = 'Numero de Che.'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object DBText8: TDBText
          Left = 193
          Top = 28
          Width = 84
          Height = 17
          DataField = 'MUESTRACHEFECHAEMISION'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object JvLabel2: TJvLabel
          Left = 193
          Top = 9
          Width = 79
          Height = 13
          Caption = 'Fecha Debito'
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
        object chDebitado: TDBCheckBox
          Left = 554
          Top = 2
          Width = 65
          Height = 17
          Caption = 'Debitado'
          DataField = 'MUESTRAFUEDEBITADO'
          DataSource = DSBase
          Enabled = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object BitBtn1: TBitBtn
        Left = 637
        Top = 51
        Width = 57
        Height = 53
        Action = BuscarChequeNuevo
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000737B7300737B7300737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFD6
          D600FFD6D600FFD6D600FFD6D600FFFFFF00CE9C9C00FFFFFF00CE9C9C00CE9C
          9C00000000000000000000000000737B7300737B7300737B7300FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000FFD6D600FFD6D600FFD6D600FFD6
          D600FFD6D600FFD6D600FFD6D600FFFFFF00CE9C9C00FFFFFF00CE9C9C00CE9C
          9C00CE9C9C00CE9C9C00CE9C9C000000000000000000737B7300737B7300737B
          7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000CE9C9C00CE9C9C00FFD6D600FFD6D600FFD6D600FFD6
          D600FFD6D600FFD6D600FFD6D600FFFFFF00CE9C9C00FFFFFF00CE9C9C00CE9C
          9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C0000000000737B7300737B
          7300737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000CE9C9C00CE9C9C00CE9C9C00FFD6D600FFD6D600FFD6D600FFD6
          D600FFD6D600FFD6D600FFD6D600FFFFFF00CE9C9C00FFFFFF00CE9C9C00CE9C
          9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C0000000000737B
          7300737B7300737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000CE9C9C00CE9C9C00CE9C9C00CE9C9C00FFD6D600FFD6D600FFD6D6000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C000000
          0000737B7300737B7300737B7300FF00FF00FF00FF00FF00FF0000000000CE9C
          9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
          9C0000000000737B7300737B7300FF00FF00FF00FF00FF00FF0000000000CE9C
          9C00CE9C9C00CE9C9C000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000000000000000CE9C9C00CE9C9C00CE9C
          9C0000000000737B7300737B7300737B7300FF00FF00FF00FF0000000000CE9C
          9C00CE9C9C0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CE9C9C00CE9C
          9C0000000000737B7300737B7300737B7300FF00FF00FF00FF0000000000CE9C
          9C0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FF8CA500FF8C
          A500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8C
          A500000000000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000CE9C
          9C0000000000737B7300737B7300737B7300737B7300FF00FF00000000000000
          0000FFFFFF00FFFFFF00FFFFFF0000000000FF8CA500FF8CA500FF8CA500FF8C
          A500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8C
          A500FF8CA500FF8CA500FF8CA50000000000FFFFFF00FFFFFF00FFFFFF000000
          000000000000737B7300737B7300737B7300737B7300FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00000000009C635A00FF8CA500FF8CA500FF8CA500FF8C
          A500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FFFFFF00FFFFFF00FFFF
          FF00FF8CA500FF8CA500FF8CA500FF8CA50000000000FFFFFF00FFFFFF00FFFF
          FF0000000000737B7300737B7300737B7300737B7300FF00FF0000000000FFFF
          FF00FFFFFF0000000000CE9C9C00FF8CA5009C635A00FF8CA500FF8CA500FF8C
          A500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8C
          A500FFFFFF00FF8CA500FF8CA5009C635A00FF8CA50000000000FFFFFF00FFFF
          FF0000000000737B7300737B7300737B7300FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF0000000000CE9C9C00CE9C9C00FF8CA5009C635A009C635A00FFD6
          D600FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8C
          A500FFFFFF009C635A009C635A00FF8CA500CE9C9C0000000000FFFFFF00FFFF
          FF0000000000737B7300737B7300737B7300FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF0000000000CE9C9C00CE9C9C00CE9C9C00FF8CA500FFD6D600FFFF
          FF00FFD6D6009C635A009C635A009C635A009C635A009C635A009C635A009C63
          5A009C635A00FF8CA500CE9C9C00CE9C9C00CE9C9C0000000000FFFFFF00FFFF
          FF0000000000737B7300737B7300FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF0000000000CE9C9C00CE9C9C00CE9C9C00CE9C9C00FFD6
          D600FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8CA500FF8C
          A500FF8CA500CE9C9C00A5ADA500FF8CA50000000000FFFFFF00FFFFFF00FFFF
          FF0000000000737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF0000000000CE9C9C00CE9C9C00CE9C9C00CE9C
          9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
          9C00CE9C9C00CE9C9C00CE9C9C0000000000FFFFFF00FFFFFF00FFFFFF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000CE9C
          9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
          9C00CE9C9C000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000737B7300737B
          7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000000000008C948C0000000000737B
          7300737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000000000000000BDBDBD00BDBDBD00BDBDBD008C948C000000
          0000737B7300737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBDBD000000
          000000000000737B7300737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000BDBDBD00FFFFFF00FFFFFF00BDBDBD00000000000000
          00000000000000000000737B7300737B7300FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000101810000000
          0000000000000000000000000000737B7300737B7300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000000021212100737B7300212121001018
          100000000000000000000000000000000000737B7300737B7300FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000021212100737B73002121
          21001018100000000000000000000000000000000000737B7300FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000021212100737B
          7300212121001018100000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000002121
          2100737B73002121210010181000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          000021212100737B730021212100101810000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000021212100737B7300212121001018100000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000000000000000000000000000FF00FF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object dbeFecha: TJvDBDateEdit
        Left = 11
        Top = 23
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
      end
      object ceSucursal: TJvDBComboEdit
        Left = 111
        Top = 23
        Width = 37
        Height = 21
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
        OnKeyDown = ceSucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 305
        Top = 23
        Width = 42
        Height = 21
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
    object Panel2: TPanel
      Left = 0
      Top = 132
      Width = 777
      Height = 149
      Align = alTop
      Caption = 'Panel2'
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 2
      object dbgCheques: TDBGrid
        Left = 6
        Top = 6
        Width = 765
        Height = 107
        Align = alTop
        DataSource = DSDetalleChe
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NRO_CHEQUE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_EMISION'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_COBRO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRABCO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORDEN_DE'
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
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end>
      end
      object edImporte: TDBEdit
        Left = 571
        Top = 122
        Width = 121
        Height = 21
        DataField = 'IMPORTE'
        DataSource = DSBase
        Enabled = False
        TabOrder = 1
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 577
    Width = 777
    ExplicitTop = 577
    ExplicitWidth = 777
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
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 27
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 584
      Top = 0
      Width = 75
      Height = 29
      Action = Imprimir
      Caption = 'Imprimir'
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
  end
  inherited Panel1: TPanel
    Top = 607
    Width = 777
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 607
    ExplicitWidth = 777
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 688
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 688
    end
  end
  inherited ActionList1: TActionList
    Left = 600
    Top = 96
    inherited Modificar: TAction
      Visible = False
    end
    inherited Salir: TAction [5]
    end
    inherited Buscar: TAction [6]
    end
    object BuscaCheque: TAction
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarChequeNuevo: TAction
      OnExecute = BuscarChequeNuevoExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarPorReferencia: TAction
      Caption = 'BuscarPorReferencia'
      ShortCut = 32781
      OnExecute = BuscarPorReferenciaExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSRempChe
  end
  inherited ImageList1: TImageList
    Left = 256
    Top = 208
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
    Left = 384
    Top = 248
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 104
    Top = 304
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 456
    Top = 272
  end
  inherited QBrowse2: TFDQuery
    Left = 144
    Top = 256
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 144
    Top = 304
  end
  object DSPRempChe: TDataSetProvider
    DataSet = QRempChe
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 536
  end
  object DSPSucrusal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Left = 31
    Top = 360
  end
  object ibgIdRemp: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_REMPLAZO_CHE'
    SystemGenerators = False
    Left = 312
    Top = 568
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 360
    Top = 150
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 472
    Top = 158
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
        ParamType = ptInput
      end>
    ProviderName = 'DSPSucrusal'
    Left = 102
    Top = 360
    object CDSSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object CDSSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object CDSRempChe: TClientDataSet
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
    ProviderName = 'DSPRempChe'
    OnNewRecord = CDSRempCheNewRecord
    OnReconcileError = CDSRempCheReconcileError
    Left = 238
    Top = 544
    object CDSRempCheID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRempCheFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSRempCheDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSRempCheTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSRempCheCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSRempCheLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRempCheSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      Required = True
      OnSetText = CDSRempCheSUCSetText
      FixedChar = True
      Size = 4
    end
    object CDSRempCheNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      OnSetText = CDSRempCheNUMEROSetText
      Size = 8
    end
    object CDSRempCheSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
      OnSetText = CDSRempCheSUCURSALSetText
    end
    object CDSRempCheNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSRempCheID_CHE_REMPLAZADO: TIntegerField
      FieldName = 'ID_CHE_REMPLAZADO'
      Origin = 'ID_CHE_REMPLAZADO'
      Required = True
    end
    object CDSRempCheOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 200
    end
    object CDSRempCheMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSRempCheMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object CDSRempCheID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSRempCheID_TIPOCOMPROBANTESetText
    end
    object CDSRempCheMUESTRACHEFECHAEMISION: TSQLTimeStampField
      FieldName = 'MUESTRACHEFECHAEMISION'
      Origin = 'FECHA_EMISION'
      ProviderFlags = []
    end
    object CDSRempCheMUESTRACHEFECHACOBRO: TSQLTimeStampField
      FieldName = 'MUESTRACHEFECHACOBRO'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
    end
    object CDSRempCheMUESTRACHEORDENDE: TStringField
      FieldName = 'MUESTRACHEORDENDE'
      Origin = 'ORDEN_DE'
      ProviderFlags = []
      Size = 30
    end
    object CDSRempCheMUESTRACHEIDBANCO: TIntegerField
      FieldName = 'MUESTRACHEIDBANCO'
      Origin = 'ID_CUENTA_BANCO'
      ProviderFlags = []
    end
    object CDSRempCheMUESTRACHENUMERO: TIntegerField
      FieldName = 'MUESTRACHENUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object CDSRempCheMUESTRACTABANCO: TStringField
      FieldName = 'MUESTRACTABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSRempCheIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSRempCheMUESTRACHEIMPORTE: TFloatField
      FieldName = 'MUESTRACHEIMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSRempCheMUESTRAUNIDADES: TFloatField
      FieldName = 'MUESTRAUNIDADES'
      Origin = 'UNIDADES'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSRempCheDEDUCIONES: TFloatField
      DisplayLabel = 'Deducciones'
      FieldName = 'DEDUCIONES'
      Origin = 'DEDUCIONES'
      Required = True
      OnSetText = CDSRempCheDEDUCIONESSetText
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSRempCheMUESTRAFECHADEBITO: TSQLTimeStampField
      FieldName = 'MUESTRAFECHADEBITO'
      Origin = 'FECHA_DEBITO'
      ProviderFlags = []
    end
    object CDSRempCheMUESTRAFUEDEBITADO: TStringField
      FieldName = 'MUESTRAFUEDEBITADO'
      Origin = 'DEBITADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSRempCheMUESTRAID_CTA_CAJA: TIntegerField
      FieldName = 'MUESTRAID_CTA_CAJA'
      ProviderFlags = []
    end
    object CDSRempCheMUESTRAID_CTA_BACO: TIntegerField
      FieldName = 'MUESTRAID_CTA_BACO'
      ProviderFlags = []
    end
  end
  object CDSBuscaComprob: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaComprob'
    Left = 448
    Top = 512
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      DisplayLabel = 'Cls.Comprob'
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      DisplayLabel = 'Denominaci'#243'n'
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSBuscaComprobLETRA: TStringField
      DisplayLabel = 'Letra'
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      DisplayLabel = 'Pref.'
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERO: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = []
    Left = 512
    Top = 544
  end
  object frDBCab: TfrxDBDataset
    UserName = 'frDBCab'
    CloseDataSource = False
    DataSet = CDSRempChe
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 488
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
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
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'ID_CHE_REMPLAZADO'
        FieldAlias = 'ID_CHE_REMPLAZADO'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
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
        FieldName = 'MUESTRACHEFECHAEMISION'
        FieldAlias = 'MUESTRACHEFECHAEMISION'
      end
      item
        FieldName = 'MUESTRACHEFECHACOBRO'
        FieldAlias = 'MUESTRACHEFECHACOBRO'
      end
      item
        FieldName = 'MUESTRACHEORDENDE'
        FieldAlias = 'MUESTRACHEORDENDE'
      end
      item
        FieldName = 'MUESTRACHEIDBANCO'
        FieldAlias = 'MUESTRACHEIDBANCO'
      end
      item
        FieldName = 'MUESTRACHENUMERO'
        FieldAlias = 'MUESTRACHENUMERO'
      end
      item
        FieldName = 'MUESTRACTABANCO'
        FieldAlias = 'MUESTRACTABANCO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'MUESTRACHEIMPORTE'
        FieldAlias = 'MUESTRACHEIMPORTE'
      end
      item
        FieldName = 'MUESTRAUNIDADES'
        FieldAlias = 'MUESTRAUNIDADES'
      end
      item
        FieldName = 'DEDUCIONES'
        FieldAlias = 'DEDUCIONES'
      end
      item
        FieldName = 'MUESTRAFECHADEBITO'
        FieldAlias = 'MUESTRAFECHADEBITO'
      end
      item
        FieldName = 'MUESTRAFUEDEBITADO'
        FieldAlias = 'MUESTRAFUEDEBITADO'
      end>
  end
  object frReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41631.996328136570000000
    ReportOptions.LastChange = 41631.996328136570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 680
    Top = 272
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBTx: TfrxDBDataset
    UserName = 'frDBTx'
    CloseDataSource = False
    DataSource = FrameMovValoresEgresos1.DSTransBco
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 566
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
  object frDBCajaMov: TfrxDBDataset
    UserName = 'frDBCajaMov'
    CloseDataSource = False
    DataSource = FrameMovValoresEgresos1.DSCajaMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 552
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
  object frDBChe3: TfrxDBDataset
    UserName = 'frDBChe3'
    CloseDataSource = False
    DataSource = FrameMovValoresEgresos1.DSChe3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 480
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
  object frDBEfectivo: TfrxDBDataset
    UserName = 'frDBEfectivo'
    CloseDataSource = False
    DataSource = FrameMovValoresEgresos1.DSMovEfectivo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 568
    Top = 480
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
  object frCheque: TfrxDBDataset
    UserName = 'frCheque'
    CloseDataSource = False
    DataSource = FrameMovValoresEgresos1.DSCheques
    BCDToCurrency = False
    DataSetOptions = []
    Left = 504
    Top = 480
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
  object frxDBDebitos: TfrxDBDataset
    UserName = 'frDBDebitos'
    CloseDataSource = False
    DataSource = FrameMovValoresEgresos1.DSDebitos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 336
    Top = 632
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
  object ComBuscadorSucursal: TComBuscador
    Data = CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursal'
    rOk = False
    Left = 600
    Top = 156
  end
  object ComBuscadorTipoCpbte: TComBuscador
    Data = CDSBuscaComprob
    Campo = 'ID_COMPROBANTE'
    rOk = False
    Left = 360
    Top = 8
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Left = 64
    Top = 632
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 136
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
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSEmpresaCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 50
    end
  end
  object frEmpresa: TfrxDBDataset
    UserName = 'frEmpresa'
    CloseDataSource = False
    DataSet = CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 224
    Top = 632
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
        FieldName = 'NOMBRE_FANTASIA'
        FieldAlias = 'NOMBRE_FANTASIA'
      end>
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  and '
      '(tipo_comprob='#39'QR'#39' )'
      'and compra_venta='#39'C'#39' '
      'and Sucursal=:suc')
    Left = 240
    Top = 504
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
    object QComprobCONTROLADOR_NROREG: TStringField
      FieldName = 'CONTROLADOR_NROREG'
      Origin = 'CONTROLADOR_NROREG'
    end
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'C'#39' and'
      '(tipo_comprob='#39'QR'#39')')
    Left = 560
    Top = 544
    ParamData = <
      item
        Position = 1
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscadorCheque_2: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_cheque_pro,c.id_chequera,c.id_banco,c.fecha_emision,' +
        'c.Fecha_Cobro,c.fecha_debito,c.orden_de,'
      
        'c.debitado,c.numero,c.importe,c.unidades,cta.nombre as MuestraBc' +
        'o,c.id_cuenta_banco,c.id_cuenta_caja'
      'from cheque_propio c'
      'left join cuenta_caja cta on cta.id_cuenta=c.id_cuenta_banco'
      'where c.id_cheque_pro=:id')
    Left = 584
    Top = 616
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBuscadorCheque_2ID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
      Origin = 'ID_CHEQUE_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscadorCheque_2ID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Origin = 'ID_CHEQUERA'
      Required = True
    end
    object QBuscadorCheque_2ID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QBuscadorCheque_2FECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object QBuscadorCheque_2FECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QBuscadorCheque_2ORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      Size = 30
    end
    object QBuscadorCheque_2DEBITADO: TStringField
      FieldName = 'DEBITADO'
      Origin = 'DEBITADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCheque_2NUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QBuscadorCheque_2IMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QBuscadorCheque_2UNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QBuscadorCheque_2MUESTRABCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QBuscadorCheque_2ID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
      Required = True
    end
    object QBuscadorCheque_2FECHA_DEBITO: TSQLTimeStampField
      FieldName = 'FECHA_DEBITO'
      Origin = 'FECHA_DEBITO'
    end
    object QBuscadorCheque_2ID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
  end
  object spDebitarFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'DEBITAR_CHE_AL_BANCO'
    Left = 320
    Top = 512
    ParamData = <
      item
        Position = 1
        Name = 'ID_CUENTA_BANCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_CHEQUE_PRO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FECHA_DEBITO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'FECHA_COBRO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'IMPORTE'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'ORDEN_DE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object QRempChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,s.detalle as MuestraSucursal ,'
      '            cp.denominacion as MuestraComprobante,'
      '            cp.id_comprobante as id_tipocomprobante,'
      
        '            che.fecha_emision as MuestraCheFechaEmision,che.fech' +
        'a_cobro as MuestraCheFechaCobro,che.fecha_debito as MuestraFecha' +
        'Debito,'
      
        '            che.importe as MuestraCheImporte,che.orden_de as Mue' +
        'straCheOrdenDe,che.id_cuenta_banco as MuestraCheIdBanco,'
      
        '            che.Numero as MuestraCheNumero,che.Unidades as Muest' +
        'raUnidades,che.debitado as MuestraFueDebitado,'
      '            CtaBco.Nombre as MuestraCtaBanco,'
      '            che.id_cuenta_caja as MuestraID_CTA_CAJA,'
      '            che.id_cuenta_banco as MuestraID_CTA_BACO'
      ''
      '            from remplazo_cheques c'
      
        'left join cheque_propio che on che.id_cheque_pro=c.id_che_rempla' +
        'zado'
      
        'left join cuenta_caja CtaBco on CtaBco.id_cuenta=che.id_cuenta_b' +
        'anco'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join comprobantes cp on cp.clase_comprob=c.ClaseCpbte and'
      '          cp.letra=c.Letra and'
      '          cp.sucursal=c.sucursal and'
      '          cp.tipo_comprob=c.tipocpbte and'
      '          cp.compra_venta='#39'C'#39
      'where c.id=:Id and c.TipoCpbte=:Tipo')
    Left = 96
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = 'Id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QRempCheID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRempCheFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QRempCheDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QRempCheTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRempCheCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QRempCheLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRempCheSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      Required = True
      FixedChar = True
      Size = 4
    end
    object QRempCheNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QRempCheSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QRempCheNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QRempCheID_CHE_REMPLAZADO: TIntegerField
      FieldName = 'ID_CHE_REMPLAZADO'
      Origin = 'ID_CHE_REMPLAZADO'
      Required = True
    end
    object QRempCheIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QRempCheOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 200
    end
    object QRempCheDEDUCIONES: TFloatField
      FieldName = 'DEDUCIONES'
      Origin = 'DEDUCIONES'
      Required = True
    end
    object QRempCheMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QRempCheMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QRempCheID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QRempCheMUESTRACHEFECHAEMISION: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACHEFECHAEMISION'
      Origin = 'FECHA_EMISION'
      ProviderFlags = []
    end
    object QRempCheMUESTRACHEFECHACOBRO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACHEFECHACOBRO'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
    end
    object QRempCheMUESTRACHEIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACHEIMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
    end
    object QRempCheMUESTRACHEORDENDE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACHEORDENDE'
      Origin = 'ORDEN_DE'
      ProviderFlags = []
      Size = 30
    end
    object QRempCheMUESTRACHEIDBANCO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACHEIDBANCO'
      Origin = 'ID_CUENTA_BANCO'
      ProviderFlags = []
    end
    object QRempCheMUESTRACHENUMERO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACHENUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object QRempCheMUESTRAUNIDADES: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAUNIDADES'
      Origin = 'UNIDADES'
      ProviderFlags = []
    end
    object QRempCheMUESTRACTABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object QRempCheMUESTRAFECHADEBITO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFECHADEBITO'
      Origin = 'FECHA_DEBITO'
      ProviderFlags = []
    end
    object QRempCheMUESTRAFUEDEBITADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFUEDEBITADO'
      Origin = 'DEBITADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QRempCheMUESTRAID_CTA_CAJA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_CTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      ProviderFlags = []
    end
    object QRempCheMUESTRAID_CTA_BACO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_CTA_BACO'
      Origin = 'ID_CUENTA_BANCO'
      ProviderFlags = []
    end
  end
  object QDetalleChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.*,ctabco.nombre as MuestraBco from remplazo_cheques_det' +
        'alle d'
      
        'left join cuenta_caja CtaBco on CtaBco.id_cuenta=d.id_cuenta_ban' +
        'co'
      'where d.id_cab=:id')
    Left = 80
    Top = 696
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDetalleCheID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetalleCheID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetalleCheID_CHE_REMPLAZADO: TIntegerField
      FieldName = 'ID_CHE_REMPLAZADO'
      Origin = 'ID_CHE_REMPLAZADO'
      Required = True
    end
    object QDetalleCheFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QDetalleCheSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QDetalleCheTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QDetalleCheCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QDetalleCheLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QDetalleCheSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      FixedChar = True
      Size = 4
    end
    object QDetalleCheNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QDetalleCheNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QDetalleCheNRO_CHEQUE: TIntegerField
      FieldName = 'NRO_CHEQUE'
      Origin = 'NRO_CHEQUE'
    end
    object QDetalleCheFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object QDetalleCheFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QDetalleCheORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      Size = 30
    end
    object QDetalleCheID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QDetalleCheID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object QDetalleCheIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QDetalleCheOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 200
    end
    object QDetalleCheMUESTRABCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSDetalleChe: TDataSource
    DataSet = CDSDetalleChe
    Left = 376
    Top = 688
  end
  object CDSDetalleChe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalleChe'
    AfterPost = CDSDetalleCheAfterPost
    AfterDelete = CDSDetalleCheAfterPost
    Left = 232
    Top = 696
    object CDSDetalleCheID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetalleCheID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetalleCheID_CHE_REMPLAZADO: TIntegerField
      FieldName = 'ID_CHE_REMPLAZADO'
      Required = True
    end
    object CDSDetalleCheFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSDetalleCheSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSDetalleCheTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSDetalleCheCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSDetalleCheLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSDetalleCheSUC: TStringField
      FieldName = 'SUC'
      FixedChar = True
      Size = 4
    end
    object CDSDetalleCheNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSDetalleCheNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSDetalleCheNRO_CHEQUE: TIntegerField
      DisplayLabel = 'Nro.Cheque'
      FieldName = 'NRO_CHEQUE'
    end
    object CDSDetalleCheFECHA_EMISION: TSQLTimeStampField
      DisplayLabel = 'Fecha Emision'
      FieldName = 'FECHA_EMISION'
    end
    object CDSDetalleCheFECHA_COBRO: TSQLTimeStampField
      DisplayLabel = 'Fecha Cobro'
      FieldName = 'FECHA_COBRO'
    end
    object CDSDetalleCheORDEN_DE: TStringField
      DisplayLabel = 'Orden de'
      FieldName = 'ORDEN_DE'
      Size = 30
    end
    object CDSDetalleCheID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSDetalleCheID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
    end
    object CDSDetalleCheIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSDetalleCheOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 200
    end
    object CDSDetalleCheMUESTRABCO: TStringField
      DisplayLabel = 'Cta Banco'
      FieldName = 'MUESTRABCO'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSPDetalleChe: TDataSetProvider
    DataSet = QDetalleChe
    Options = []
    Left = 184
    Top = 696
  end
  object ibgIdDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_remplazo_cheques_det'
    SystemGenerators = False
    Left = 544
    Top = 696
  end
  object frxDBDet: TfrxDBDataset
    UserName = 'frxDBDet'
    CloseDataSource = False
    DataSet = CDSDetalleChe
    BCDToCurrency = False
    DataSetOptions = []
    Left = 616
    Top = 672
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end
      item
        FieldName = 'ID_CHE_REMPLAZADO'
        FieldAlias = 'ID_CHE_REMPLAZADO'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
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
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'NRO_CHEQUE'
        FieldAlias = 'NRO_CHEQUE'
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
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'ID_CUENTA_BANCO'
        FieldAlias = 'ID_CUENTA_BANCO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'MUESTRABCO'
        FieldAlias = 'MUESTRABCO'
      end>
  end
  object frCab: TfrxDBDataset
    UserName = 'frCab'
    CloseDataSource = False
    DataSource = DSBase
    BCDToCurrency = False
    DataSetOptions = []
    Left = 456
    Top = 664
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
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
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'ID_CHE_REMPLAZADO'
        FieldAlias = 'ID_CHE_REMPLAZADO'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
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
        FieldName = 'MUESTRACHEFECHAEMISION'
        FieldAlias = 'MUESTRACHEFECHAEMISION'
      end
      item
        FieldName = 'MUESTRACHEFECHACOBRO'
        FieldAlias = 'MUESTRACHEFECHACOBRO'
      end
      item
        FieldName = 'MUESTRACHEORDENDE'
        FieldAlias = 'MUESTRACHEORDENDE'
      end
      item
        FieldName = 'MUESTRACHEIDBANCO'
        FieldAlias = 'MUESTRACHEIDBANCO'
      end
      item
        FieldName = 'MUESTRACHENUMERO'
        FieldAlias = 'MUESTRACHENUMERO'
      end
      item
        FieldName = 'MUESTRACTABANCO'
        FieldAlias = 'MUESTRACTABANCO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'MUESTRACHEIMPORTE'
        FieldAlias = 'MUESTRACHEIMPORTE'
      end
      item
        FieldName = 'MUESTRAUNIDADES'
        FieldAlias = 'MUESTRAUNIDADES'
      end
      item
        FieldName = 'DEDUCIONES'
        FieldAlias = 'DEDUCIONES'
      end
      item
        FieldName = 'MUESTRAFECHADEBITO'
        FieldAlias = 'MUESTRAFECHADEBITO'
      end
      item
        FieldName = 'MUESTRAFUEDEBITADO'
        FieldAlias = 'MUESTRAFUEDEBITADO'
      end
      item
        FieldName = 'MUESTRAID_CTA_CAJA'
        FieldAlias = 'MUESTRAID_CTA_CAJA'
      end
      item
        FieldName = 'MUESTRAID_CTA_BACO'
        FieldAlias = 'MUESTRAID_CTA_BACO'
      end>
  end
end

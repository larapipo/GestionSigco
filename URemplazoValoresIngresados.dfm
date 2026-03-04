inherited FormReemplazoValoresIng: TFormReemplazoValoresIng
  Left = 307
  Top = 101
  Caption = 'Reemplazo de Valores Ingresados'
  ClientHeight = 642
  ClientWidth = 848
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  ExplicitWidth = 866
  ExplicitHeight = 683
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 848
    Height = 473
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 843
    ExplicitHeight = 473
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 848
      Height = 73
      Align = alTop
      ParentColor = True
      TabOrder = 0
      ExplicitWidth = 843
      object dbtMuestraComprobante: TDBText
        Left = 343
        Top = 29
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
        Left = 102
        Top = 9
        Width = 46
        Height = 13
        Caption = 'Sucursal '
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel58: TJvLabel
        Left = 16
        Top = 10
        Width = 35
        Height = 13
        Caption = 'Fecha '
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel60: TJvLabel
        Left = 485
        Top = 9
        Width = 100
        Height = 13
        Caption = 'Nro.de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel6: TJvLabel
        Left = 297
        Top = 13
        Width = 104
        Height = 13
        Caption = 'Tipo de Comprobante'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBText1: TDBText
        Left = 759
        Top = 9
        Width = 65
        Height = 17
        DataField = 'ID'
        DataSource = DSBase
      end
      object dbeSuc: TDBEdit
        Left = 513
        Top = 25
        Width = 39
        Height = 24
        DataField = 'SUC'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbeNumero: TDBEdit
        Left = 557
        Top = 25
        Width = 75
        Height = 24
        DataField = 'NUMERO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object dbeLetra: TDBEdit
        Left = 487
        Top = 25
        Width = 22
        Height = 24
        DataField = 'LETRA'
        DataSource = DSBase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object dbeSucursal: TDBEdit
        Left = 146
        Top = 27
        Width = 146
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 4
      end
      object dbeFecha: TJvDBDateEdit
        Left = 13
        Top = 27
        Width = 88
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'FECHA'
        DataSource = DSBase
        CheckOnExit = True
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
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 6
      end
      object RxDBESucursal: TJvDBComboEdit
        Left = 104
        Top = 27
        Width = 37
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        ClickKey = 16397
        DataField = 'SUCURSAL'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 3
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxDBESucursalKeyDown
      end
      object RxCTipoCpbte: TJvDBComboEdit
        Left = 298
        Top = 27
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
        TabOrder = 5
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
    end
    object pnValores: TPanel
      Left = 0
      Top = 73
      Width = 848
      Height = 306
      Align = alTop
      ParentColor = True
      TabOrder = 1
      OnEnter = pnValoresEnter
      ExplicitWidth = 843
      inline FrameMovValoresIngreso1: TFrameMovValoresIngreso
        Left = 1
        Top = 1
        Width = 846
        Height = 304
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
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
        ExplicitLeft = 7
        ExplicitTop = 6
        ExplicitWidth = 998
        ExplicitHeight = 293
        inherited lbTotalValores: TLabel
          Left = 195
          Height = 13
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 195
          ExplicitHeight = 13
        end
        inherited Label25: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited DBText12: TDBText
          Left = 159
          Top = 3
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 159
          ExplicitTop = 3
        end
        inherited Label46: TLabel
          Width = 20
          Height = 13
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 20
          ExplicitHeight = 13
        end
        inherited DBText13: TDBText
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited Label51: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited lbResto: TLabel
          Left = 195
          Height = 13
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 195
          ExplicitHeight = 13
        end
        inherited lbAvisoChe3: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited dbgMovimientos: TDBGrid
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
        end
        inherited pcValores: TPageControl
          Height = 230
          ExplicitHeight = 230
          inherited tsEfectivo: TTabSheet
            ExplicitTop = 24
            ExplicitHeight = 206
            inherited dbt1: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited RxLabel1: TJvLabel
              Width = 47
              Height = 13
              ExplicitWidth = 47
              ExplicitHeight = 13
            end
            inherited RxLabel2: TJvLabel
              Width = 51
              Height = 13
              ExplicitWidth = 51
              ExplicitHeight = 13
            end
            inherited RxLabel3: TJvLabel
              Width = 37
              Height = 13
              ExplicitWidth = 37
              ExplicitHeight = 13
            end
            inherited DBText14: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText15: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label60: TLabel
              Left = 326
              StyleElements = [seFont, seClient, seBorder]
              ExplicitLeft = 326
            end
            inherited DBText38: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeUnidades: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeCotizacion: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeImporte: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited BitBtn7: TBitBtn
              DoubleBuffered = True
            end
            inherited BitBtn1: TBitBtn
              DoubleBuffered = True
            end
          end
          inherited tsChe3: TTabSheet
            ExplicitTop = 24
            ExplicitHeight = 202
            inherited Label8: TLabel
              Width = 31
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 31
              ExplicitHeight = 13
            end
            inherited Label9: TLabel
              Width = 20
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 20
              ExplicitHeight = 13
            end
            inherited Label10: TLabel
              Width = 48
              Height = 26
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 48
              ExplicitHeight = 26
            end
            inherited Label11: TLabel
              Width = 48
              Height = 26
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 48
              ExplicitHeight = 26
            end
            inherited Label12: TLabel
              Width = 48
              Height = 26
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 48
              ExplicitHeight = 26
            end
            inherited Label13: TLabel
              Width = 48
              Height = 26
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 48
              ExplicitHeight = 26
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
            inherited Label47: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label48: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbtID_Che3: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText16: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText17: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label53: TLabel
              Width = 21
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 21
              ExplicitHeight = 13
            end
            inherited Label54: TLabel
              Width = 40
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 40
              ExplicitHeight = 13
            end
            inherited Label55: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited BitBtn2: TBitBtn
              DoubleBuffered = True
            end
            inherited BitBtn3: TBitBtn
              DoubleBuffered = True
            end
            inherited DBEdit4: TDBEdit
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
            inherited DBEFirmante: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeImporteChe3: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBECuit: TDBEdit
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBEdit1: TDBEdit
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
          inherited tsTCredito: TTabSheet
            ExplicitTop = 24
            ExplicitHeight = 206
            inherited Panel2: TPanel
              StyleElements = [seFont, seClient, seBorder]
              inherited Label19: TLabel
                Width = 30
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 30
                ExplicitHeight = 13
              end
              inherited Label20: TLabel
                Width = 84
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 84
                ExplicitHeight = 13
              end
              inherited Label21: TLabel
                Width = 29
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 29
                ExplicitHeight = 13
              end
              inherited Label22: TLabel
                Width = 55
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 55
                ExplicitHeight = 13
              end
              inherited Label23: TLabel
                Width = 33
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 33
                ExplicitHeight = 13
              end
              inherited DBText4: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label26: TLabel
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 13
              end
              inherited Label27: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label29: TLabel
                Width = 45
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 45
                ExplicitHeight = 13
              end
              inherited Label34: TLabel
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 13
              end
              inherited Label35: TLabel
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBTCoef: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label41: TLabel
                Width = 53
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 53
                ExplicitHeight = 13
              end
              inherited Label42: TLabel
                Width = 55
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 55
                ExplicitHeight = 13
              end
              inherited DBTValorCuota: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label43: TLabel
                Width = 79
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 79
                ExplicitHeight = 13
              end
              inherited DBTRecargo: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited Label44: TLabel
                Width = 66
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 66
                ExplicitHeight = 13
              end
              inherited Label49: TLabel
                Width = 21
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 21
                ExplicitHeight = 13
              end
              inherited Label50: TLabel
                Width = 40
                Height = 13
                StyleElements = [seFont, seClient, seBorder]
                ExplicitWidth = 40
                ExplicitHeight = 13
              end
              inherited dbtID_EFECTIVO1: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText22: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBText23: TDBText
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited BitBtn5: TBitBtn
                DoubleBuffered = True
              end
              inherited BitBtn6: TBitBtn
                DoubleBuffered = True
              end
              inherited cbTCredito: TJvDBComboEdit
                Height = 21
                StyleElements = [seFont, seClient, seBorder]
                ExplicitHeight = 21
              end
              inherited DBETc_Cuotas: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBETc_Titular: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBETc_Documento: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeimporteTc: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited dbeUnidadesTc: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEUnidadesNeto: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit3: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit22: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit5: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBEdit6: TDBEdit
                StyleElements = [seFont, seClient, seBorder]
              end
              inherited DBTcFecha: TJvDBDateEdit
                StyleElements = [seFont, seClient, seBorder]
              end
            end
          end
          inherited tsTransf: TTabSheet
            ExplicitTop = 24
            ExplicitHeight = 206
            inherited Label2: TLabel
              Width = 37
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 37
              ExplicitHeight = 13
            end
            inherited Label3: TLabel
              Width = 61
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 61
              ExplicitHeight = 13
            end
            inherited Label5: TLabel
              Width = 45
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 45
              ExplicitHeight = 13
            end
            inherited Label6: TLabel
              Width = 35
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 35
              ExplicitHeight = 13
            end
            inherited Label17: TLabel
              Width = 63
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 63
              ExplicitHeight = 13
            end
            inherited Label31: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbtID_EFECTIVO2: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText18: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText19: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label65: TLabel
              Width = 33
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 33
              ExplicitHeight = 13
            end
            inherited dbeNumero: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeMuestraCta: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeUnidadesTx: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeImporteTx: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeOrigenTx: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited BitBtn4: TBitBtn
              DoubleBuffered = True
            end
            inherited BitBtn8: TBitBtn
              DoubleBuffered = True
            end
            inherited ceCtaBco: TJvDBComboEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited DBEdit7: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
          end
          inherited tsCheques: TTabSheet
            ExplicitTop = 24
            ExplicitHeight = 206
            inherited Label4: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label18: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label24: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label28: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label30: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label32: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbNI: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbNF: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText2: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText1: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText5: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText6: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText7: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText8: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText9: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText10: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText11: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbtID_EFECTIVO3: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText36: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label62: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited btCancel: TBitBtn
              DoubleBuffered = True
            end
            inherited btPost: TBitBtn
              DoubleBuffered = True
            end
          end
          inherited tsDebito: TTabSheet
            ExplicitTop = 24
            ExplicitHeight = 206
            inherited Label33: TLabel
              Width = 37
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 37
              ExplicitHeight = 13
            end
            inherited Label36: TLabel
              Width = 61
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 61
              ExplicitHeight = 13
            end
            inherited Label37: TLabel
              Width = 45
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 45
              ExplicitHeight = 13
            end
            inherited Label38: TLabel
              Width = 35
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 35
              ExplicitHeight = 13
            end
            inherited Label39: TLabel
              Width = 63
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 63
              ExplicitHeight = 13
            end
            inherited Label40: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbtID_EFECTIVO4: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText20: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText21: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeNroDebito: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeMuestraCtaDebito: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeUnidadesDebito: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited ImporteDebito: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeOriginadoDebito: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited BitBtn9: TBitBtn
              DoubleBuffered = True
            end
            inherited BitBtn10: TBitBtn
              DoubleBuffered = True
            end
            inherited rcdcIdCtaBcoDebito: TJvDBComboEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
          end
          inherited tsValoresCompartidos: TTabSheet
            ExplicitTop = 24
            ExplicitHeight = 206
            inherited DBText24: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText25: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText26: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label52: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText27: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText28: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText29: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText30: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText31: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText32: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited btCancelValores: TBitBtn
              DoubleBuffered = True
            end
            inherited btOkValores: TBitBtn
              DoubleBuffered = True
            end
            inherited dbeUnidadesValoresComp: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited DBEdit2: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
          end
          inherited tsCtaCte: TTabSheet
            ExplicitTop = 24
            ExplicitHeight = 206
            inherited Label56: TLabel
              Width = 32
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 32
              ExplicitHeight = 13
            end
            inherited Label57: TLabel
              Width = 33
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 33
              ExplicitHeight = 13
            end
            inherited Label58: TLabel
              Width = 35
              Height = 13
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 35
              ExplicitHeight = 13
            end
            inherited Label59: TLabel
              Width = 81
              Height = 26
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 81
              ExplicitHeight = 26
            end
            inherited Label61: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText33: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText34: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText35: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label63: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label64: TLabel
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited DBText37: TDBText
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited dbeDetalleCta: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbeImporteCta: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited dbcAjuste: TJvDBLookupCombo
              Height = 23
              ExplicitHeight = 23
            end
            inherited BitBtn11: TBitBtn
              DoubleBuffered = True
            end
            inherited BitBtn12: TBitBtn
              DoubleBuffered = True
            end
            inherited edNombreCliente: TDBEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
            inherited ceCliente: TJvDBComboEdit
              Height = 21
              StyleElements = [seFont, seClient, seBorder]
              ExplicitHeight = 21
            end
          end
        end
        inherited edMuestraCaja: TEdit
          Height = 21
          StyleElements = [seFont, seClient, seBorder]
          ExplicitHeight = 21
        end
        inherited ceCaja: TJvComboEdit
          Height = 21
          StyleElements = [seFont, seClient, seBorder]
          ExplicitHeight = 21
        end
        inherited ActionList1: TActionList
          Left = 456
        end
        inherited IBGId_Trans: TIBGenerator
          Left = 536
          Top = 88
        end
        inherited DSPDebitos: TDataSetProvider
          Left = 166
          Top = 200
        end
        inherited IBGIdDebito: TIBGenerator
          Left = 544
          Top = 131
        end
        inherited DSDebitos: TDataSource
          Top = 232
        end
        inherited QDebitos: TFDQuery
          Left = 208
          Top = 200
        end
        inherited CDSDebitos: TClientDataSet
          Left = 102
          Top = 192
        end
        inherited CDSCajaMov: TClientDataSet
          AfterPost = FrameMovValoresIngreso1CDSCajaMovAfterPost
          BeforeDelete = FrameMovValoresIngreso1CDSCajaMovBeforeDelete
          AfterDelete = FrameMovValoresIngreso1CDSCajaMovAfterDelete
        end
        inherited ComBuscadorCaja: TComBuscador
          Left = 553
          Top = 220
        end
        inherited ComBuscadorBanco: TComBuscador
          Left = 641
          Top = 212
        end
        inherited QCompAjuste: TFDQuery
          Left = 640
          Top = 88
        end
      end
    end
    object pnPie: TPanel
      Left = 0
      Top = 379
      Width = 848
      Height = 76
      Align = alTop
      ParentColor = True
      TabOrder = 2
      ExplicitWidth = 843
      object JvLabel2: TJvLabel
        Left = 13
        Top = 6
        Width = 73
        Height = 13
        Caption = 'Observaciones'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object DBMemo1: TDBMemo
        Left = 13
        Top = 25
        Width = 385
        Height = 32
        DataField = 'OBS'
        DataSource = DSBase
        TabOrder = 0
      end
      object pnImporte: TPanel
        Left = 535
        Top = 6
        Width = 143
        Height = 51
        Enabled = False
        ParentColor = True
        TabOrder = 1
        object JvLabel1: TJvLabel
          Left = 92
          Top = 1
          Width = 37
          Height = 13
          Caption = 'Importe'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 20
          Width = 121
          Height = 21
          DataField = 'IMPORTE'
          DataSource = DSBase
          TabOrder = 0
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 473
    Width = 848
    ExplicitTop = 473
    ExplicitWidth = 843
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
    inherited Pr: TSpeedButton
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00800000008000000080000000800000008000
        000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00800000008000000080800000F0F0F000F0F0F000F0F0F000F0F0
        F000808000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008000000080800000F0F0F000FFFFFF00FFFFFF00F0F0F000F0F0F000FFFF
        FF00FFFFFF00F0F0F0008080000080000000FF00FF00FF00FF00FF00FF008000
        000080800000F0F0F000FFFFFF00808080008080000080800000808000008080
        000080808000FFFFFF00F0F0F0008080000080000000FF00FF00FF00FF008000
        0000F0F0F000FFFFFF0080800000808000008080000080800000808000008080
        00008080000080800000FFFFFF00F0F0F00080000000FF00FF00808000008080
        0000FFFFFF00F0F0F00080800000F0F0F000F0F0F00080800000808000008080
        0000F0F0F0008080000080808000FFFFFF00808000008000000080000000A4A0
        A000FFFFFF008080000080800000F0F0F000F0F0F0008080000080808000FFFF
        FF00F0FBFF008080000080800000FFFFFF00F0F0F0008000000080000000F0F0
        F000FFFFFF008080000080800000F0F0F000F0F0F000F0F0F000FFFFFF00FFFF
        FF00F0F0F0008080000080800000F0F0F000F0F0F0008000000080800000F0F0
        F000FFFFFF008080000080800000F0F0F000F0F0F000F0F0F000FFFFFF00FFFF
        FF00F0F0F0008080000080800000F0F0F000F0F0F0008000000080800000F0F0
        F000FFFFFF00F0F0F000F0F0F000F0F0F000F0F0F0008080000080800000F0FB
        FF00F0FBFF008080000080800000FFFFFF00F0F0F00080000000808000008080
        0000FFFFFF00F0F0F000F0F0F000F0FBFF00F0F0F00080800000808000008080
        0000F0F0F00080800000A4A0A000FFFFFF008080000080000000FF00FF008080
        0000F0F0F000FFFFFF00F0F0F000F0F0F000F0F0F00080800000808000008080
        00008080000080800000FFFFFF00F0F0F00080000000FF00FF00FF00FF008080
        000080800000F0F0F000FFFFFF00F0F0F000F0F0F00080800000808000008080
        0000F0F0F000FFFFFF00F0F0F0008080000080000000FF00FF00FF00FF00FF00
        FF008080000080800000F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F0F0F0008080000080000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008080000080800000A4A0A000F0F0F000F0F0F000F0F0F000A4A0
        A000808000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00808000008080000080800000808000008000
        000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited Ne: TSpeedButton
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00800000008000000080000000800000008000
        000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00800000008000000080800000F0F0F000F0F0F000F0F0F000F0F0
        F000808000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008000000080800000F0F0F000FFFFFF00FFFFFF00F0F0F000F0F0F000FFFF
        FF00FFFFFF00F0F0F0008080000080000000FF00FF00FF00FF00FF00FF008000
        000080800000F0F0F000FFFFFF00A4A0A0008080000080800000808000008080
        000080800000FFFFFF00F0F0F0008080000080000000FF00FF00FF00FF008000
        0000F0F0F000FFFFFF0080800000808000008080000080800000808000008080
        00008080000080800000FFFFFF00F0F0F00080000000FF00FF00800000008080
        0000FFFFFF00F0F0F00080800000FFFFFF00808000008080000080800000A4A0
        A000FFFFFF008080000080808000FFFFFF00808000008000000080000000A4A0
        A000FFFFFF008080000080800000FFFFFF00FFFFFF00A4A0A00080800000A4A0
        A000FFFFFF008080000080800000FFFFFF00F0F0F0008000000080800000F0F0
        F000FFFFFF008080000080800000FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0
        F000FFFFFF008080000080800000F0F0F000F0F0F0008000000080800000F0F0
        F000FFFFFF008080000080800000FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0
        F000FFFFFF008080000080800000F0F0F000F0F0F0008000000080800000F0F0
        F000FFFFFF00F0F0F000F0F0F000FFFFFF00FFFFFF00F0F0F00080800000F0F0
        F000FFFFFF008080000080800000FFFFFF00F0F0F00080000000808000008080
        0000FFFFFF00F0F0F000F0F0F000FFFFFF00F0F0F0008080000080800000F0F0
        F000FFFFFF0080800000A4A0A000FFFFFF008080000080000000FF00FF008080
        0000F0F0F000FFFFFF00F0F0F000F0F0F000F0F0F00080800000808000008080
        00008080000080800000FFFFFF00F0F0F00080000000FF00FF00FF00FF008080
        000080800000F0F0F000FFFFFF00F0F0F000F0F0F00080800000808000008080
        0000A4A0A000FFFFFF00F0F0F0008080000080000000FF00FF00FF00FF00FF00
        FF008080000080800000F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F0F0F0008080000080000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008080000080800000A4A0A000F0F0F000F0F0F000F0F0F000A4A0
        A000808000008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00808000008080000080800000808000008000
        000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
    end
  end
  inherited Panel1: TPanel
    Top = 503
    Width = 848
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 503
    ExplicitWidth = 843
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 759
      SimplePanel = True
      ExplicitWidth = 754
    end
  end
  inherited ActionList1: TActionList
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSReemplazo
    Left = 608
    Top = 56
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010A004C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000008080
      8000A4A0A000A4A0A000808080008080800080808000F0FBFF00808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000000000000000000000000000000000080808000A0A0
      A000A4A0A000A4A0A000A4A0A000000000000000000080808000C0C0C000F0FB
      FF00C0C0C0008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000000000000000000080808000A0A0A000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      000080808000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008080000080
      8000008000000080000000800000F0FBFF00F0FBFF0080808000008000000080
      00000080000000800000008000000000000080808000C0C0C000C0C0C0008080
      8000A0A0A000C0C0C000C0C0C000A4A0A000A4A0A00080808000808080000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008080000080
      8000008000000080000000800000A0A0A000FFFFFF00F0FBFF00808080000080
      00000080000000800000008000000080000080808000C0C0C00080808000F0FB
      FF00FFFFFF00FFFFFF00F0FBFF00A0A0A000A0A0A000C0C0C000C0C0C000A4A0
      A000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000808000008080000080
      800000800000008000000080000000800000A4A0A000FFFFFF00F0FBFF008080
      8000008000000080000000800000008000008080800080808000FFFFFF00FFFF
      FF00FFFFFF00A0A0A000A4A0A000A4A0A000A4A0A000C0C0C000A0A0A000A0A0
      A000C0C0C000C0C0C00080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008000000080800000808000A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000FFFFFF00FFFFFF00F0FB
      FF00A4A0A000008000000080000000800000000000008080800080808000F0FB
      FF00A4A0A0008080800080808000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000A0A0A000C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008000008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A0A0A0000080000000800000008000000000000000000000000000008080
      8000A4A0A000808080008080800080808000808080008080800080808000A4A0
      A000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000800000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A0A0A000FFFFFF00FFFFFF00A0A0
      A000008080000080000000800000008000000000000000000000000000000000
      0000A4A0A000F0F0F000F0F0F000F0F0F000A4A0A000A4A0A000A4A0A0008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000080808000A0A0A0000080
      8000008080000080800000808000A4A0A000F0FBFF00FFFFFF00A0A0A0000080
      8000008000000080000000800000008000000000000000000000000000000000
      0000A4A0A000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000A0A0A000A0A0
      A000008080000080800080808000F0FBFF00FFFFFF00A0A0A000008080000080
      80000080000000FF00000080000000000000000000000000000000000000A4A0
      A000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000A4A0A000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000A4A0A000F0FB
      FF00A0A0A0000080800000808000A0A0A000A0A0A00000808000008080000080
      800000FF0000008000000080000000000000000000000000000000000000A4A0
      A000F0FBFF00F0F0F000F0F0F000F0F0F000F0F0F000A4A0A000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000800000A4A0
      A000F0FBFF00A0A0A000A4A0A000808080008080800080808000808080000080
      8000008080000080000000000000000000000000000000000000A4A0A000FFFF
      FF00FFFFFF00F0FBFF00F0F0F000F0F0F000F0F0F000A4A0A000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      000000800000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A4A0A0000080
      8000008080000000000000000000000000000000000000000000A4A0A000A4A0
      A000A4A0A000F0FBFF00F0F0F000F0F0F000A4A0A00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000800000008000000080000000800000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A0A000A4A0A000A4A0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A0000080
      0000008000000000000000000000000000000000000000000000000000000000
      8000000080000000FF000000FF000000FF000000FF000000FF000000FF000000
      8000000080000000000000000000000000000000000000000000000000008000
      00008000000080800000F0F0F000F0F0F000F0F0F000F0F0F000808000008000
      0000800000000000000000000000000000000000000000000000000000008000
      00008000000080800000F0F0F000F0F0F000F0F0F000F0F0F000808000008000
      0000800000000000000000000000000000000000000000800000008000000080
      0000A0A0A0000080000000800000F0FBFF00F0FBFF00A0A0A000C0C0C0000080
      0000008000000080000000000000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000080000000800000000000000000000000000000000000800000008080
      0000F0F0F000FFFFFF00FFFFFF00F0F0F000F0F0F000FFFFFF00FFFFFF00F0F0
      F000808000008000000000000000000000000000000000000000800000008080
      0000F0F0F000FFFFFF00FFFFFF00F0F0F000F0F0F000FFFFFF00FFFFFF00F0F0
      F000808000008000000000000000000000000000000000800000008000000080
      0000F0FBFF000080000000800000F0FBFF00F0FBFF00F0FBFF00C0C0C0000080
      00000080000000800000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000080000000
      FF000000FF00000080000000800000000000000000008000000080800000F0F0
      F000FFFFFF00808080008080000080800000808000008080000080808000FFFF
      FF00F0F0F000808000008000000000000000000000008000000080800000F0F0
      F000FFFFFF00A4A0A0008080000080800000808000008080000080800000FFFF
      FF00F0F0F0008080000080000000000000000000000000800000008000000080
      0000F0FBFF000080000000800000A0A0A000F0FBFF00F0FBFF00A0A0A0000080
      00000080000000800000000000000000000000000000000080000000FF000000
      FF000000FF00A4A0A0000000FF000000FF000000FF000000FF00A4A0A0000000
      FF000000FF000000FF0000008000000000000000000080000000F0F0F000FFFF
      FF00808000008080000080800000808000008080000080800000808000008080
      0000FFFFFF00F0F0F00080000000000000000000000080000000F0F0F000FFFF
      FF00808000008080000080800000808000008080000080800000808000008080
      0000FFFFFF00F0F0F00080000000000000000000000000800000008000000080
      0000F0FBFF00F0FBFF00A0A0A000A0A0A000F0FBFF00F0FBFF00A0A0A0000080
      000000800000008000000000000000000000000080000000FF000000FF000000
      FF0080808000FFFFFF00C0C0C0000000FF000000FF00C0C0C000FFFFFF00A4A0
      A000000080000000FF000000FF00000080008080000080800000FFFFFF00F0F0
      F00080800000F0F0F000F0F0F000808000008080000080800000F0F0F0008080
      000080808000FFFFFF0080800000800000008000000080800000FFFFFF00F0F0
      F00080800000FFFFFF00808000008080000080800000A4A0A000FFFFFF008080
      000080808000FFFFFF0080800000800000000000000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000000000000000000000080000000FF000000FF000000
      FF000000FF00C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C0000000
      FF000000FF000000FF000000FF000000800080000000A4A0A000FFFFFF008080
      000080800000F0F0F000F0F0F0008080000080808000FFFFFF00F0FBFF008080
      000080800000FFFFFF00F0F0F0008000000080000000A4A0A000FFFFFF008080
      000080800000FFFFFF00FFFFFF00A4A0A00080800000A4A0A000FFFFFF008080
      000080800000FFFFFF00F0F0F00080000000000000000080000000800000A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0
      A00000800000008000000000000000000000000080000000FF000000FF000000
      FF000000FF000000FF00C0C0C000FFFFFF00FFFFFF00C0C0C0000000FF000000
      FF000000FF000000FF000000FF000000800080000000F0F0F000FFFFFF008080
      000080800000F0F0F000F0F0F000F0F0F000FFFFFF00FFFFFF00F0F0F0008080
      000080800000F0F0F000F0F0F0008000000080800000F0F0F000FFFFFF008080
      000080800000FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0F000FFFFFF008080
      000080800000F0F0F000F0F0F00080000000000000000080000000800000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000800000008000000000000000000000000080000000FF000000FF000000
      FF000000FF000000FF00C0C0C000FFFFFF00FFFFFF00C0C0C0000000FF000000
      FF000000FF000000FF000000FF000000800080800000F0F0F000FFFFFF008080
      000080800000F0F0F000F0F0F000F0F0F000FFFFFF00FFFFFF00F0F0F0008080
      000080800000F0F0F000F0F0F0008000000080800000F0F0F000FFFFFF008080
      000080800000FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0F000FFFFFF008080
      000080800000F0F0F000F0F0F00080000000000000000080000000800000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000080000000800000000000000000000000008000A4A0A0000000FF000000
      FF000000FF00C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C0000000
      FF000000FF000000FF000000FF000000800080800000F0F0F000FFFFFF00F0F0
      F000F0F0F000F0F0F000F0F0F0008080000080800000F0FBFF00F0FBFF008080
      000080800000FFFFFF00F0F0F0008000000080800000F0F0F000FFFFFF00F0F0
      F000F0F0F000FFFFFF00FFFFFF00F0F0F00080800000F0F0F000FFFFFF008080
      000080800000FFFFFF00F0F0F00080000000000000000080000000800000FFFF
      FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00008000000080000000000000000000000000800080808000C0C0C0000000
      FF000000FF00FFFFFF00C0C0C0000000FF000000FF00C0C0C000FFFFFF00A4A0
      A0000000FF000000FF000000FF00000080008080000080800000FFFFFF00F0F0
      F000F0F0F000F0FBFF00F0F0F000808000008080000080800000F0F0F0008080
      0000A4A0A000FFFFFF0080800000800000008080000080800000FFFFFF00F0F0
      F000F0F0F000FFFFFF00F0F0F0008080000080800000F0F0F000FFFFFF008080
      0000A4A0A000FFFFFF008080000080000000000000000080000000800000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000800000008000000000000000000000000000000000FF00C0C0C000C0C0
      C0000000FF00A4A0A0000000FF000000FF000000FF000000FF00808080000000
      FF000000FF000000FF0000008000000000000000000080800000F0F0F000FFFF
      FF00F0F0F000F0F0F000F0F0F000808000008080000080800000808000008080
      0000FFFFFF00F0F0F00080000000000000000000000080800000F0F0F000FFFF
      FF00F0F0F000F0F0F000F0F0F000808000008080000080800000808000008080
      0000FFFFFF00F0F0F0008000000000000000000000000080000000800000FFFF
      FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF000080000000800000000000000000000000000000000080000000FF00C0C0
      C000C0C0C0000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000800000000000000000008080000080800000F0F0
      F000FFFFFF00F0F0F000F0F0F000808000008080000080800000F0F0F000FFFF
      FF00F0F0F000808000008000000000000000000000008080000080800000F0F0
      F000FFFFFF00F0F0F000F0F0F000808000008080000080800000A4A0A000FFFF
      FF00F0F0F000808000008000000000000000000000000080000000800000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00008000000080000000000000000000000000000000000000000080000000
      FF00C0C0C000C0C0C000C0C0C000A4A0A000A4A0A0000000FF000000FF000000
      FF000000FF000000800000000000000000000000000000000000808000008080
      0000F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0
      F000808000008000000000000000000000000000000000000000808000008080
      0000F0F0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0
      F00080800000800000000000000000000000000000000000000000800000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00008000000000000000000000000000000000000000000000000000000000
      80000000FF00A4A0A000C0C0C000C0C0C000C0C0C000A4A0A0000000FF000000
      FF00000080000000000000000000000000000000000000000000000000008080
      000080800000A4A0A000F0F0F000F0F0F000F0F0F000A4A0A000808000008000
      0000800000000000000000000000000000000000000000000000000000008080
      000080800000A4A0A000F0F0F000F0F0F000F0F0F000A4A0A000808000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008000000080000000FF000000FF0000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000808000008080000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000808000008080000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000000000000000000000000000000
      0000000000008080800000808000A4A0A0000000000000000000008080000080
      8000008080000080800000808000008080000000000000800000008000000080
      0000008000000000000000000000000000000000000000000000008080000080
      8000008080000080800080000000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C000FFFFFF008000000000000000000000000000000000000000000000000080
      8000008080000080800000808000008080000080800000000000000000000000
      000000000000000000000000000000000000000000000080800000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000000000000000000000
      0000808080000080800000FFFF00A4A0A000000000000080800000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000800000008000000080
      000000800000000000000000000000000000000000000080800000FFFF0000FF
      FF0000FFFF00A0A0A00080000000FFFFFF00FFFFFF00C0C0C0000000FF00A4A0
      A000FFFFFF0080000000000000000000000000000000000000000080800000FF
      FF0000FFFF0000FFFF00A0A0A000A0A0A00000FFFF0000808000000000000000
      00000000000000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000808000000000008080
      80000080800000FFFF00A4A0A0000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A00000800000008000000080000000800000008000000080
      00000080000000800000008000000080000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A00080000000F0FBFF000000FF000000FF000000FF000000
      FF00F0FBFF008000000000000000000000000000000000808000A0A0A00000FF
      FF0000FFFF0000FFFF0000008000000080000000800000008000000080000000
      80000000800000008000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A000A4A0A000A4A0A000A4A0A00080808000808080008080
      800000FFFF0000FFFF00000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A00000800000008080000080800000808000008080000080
      80000080000000800000008000000080000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A00080000000A4A0A0000000FF00C0C0C000F0FBFF000000
      FF00A4A0A0008000000000000000000000000000000000808000A0A0A00000FF
      FF0000FFFF0000FFFF00000080000000FF000000FF000000FF000000FF000000
      FF000000FF0000008000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A4A0A000F0F0F000FFFFFF00FFFFFF00F0FBFF00C0C0C000A4A0
      A00000FFFF0000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A00000800000808080008080800000808000008080000080
      800000FF000000800000008000000080000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A00080000000F0FBFF00F0FBFF00FFFFFF00FFFFFF00C0C0
      C0000000FF008000800000000000000000000000000000808000A0A0A00000FF
      FF0000FFFF0000FFFF00000080000000FF000000FF000000FF000000FF000000
      FF000000FF0000008000000000000000000000808000F0FBFF00F0FBFF00F0FB
      FF00A4A0A000A0A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000A4A0
      A0000000000000000000000000000000000000808000F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF0000800000008000000080000000800000008080000080
      80000080000000800000008000000080000000808000F0FBFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A4A0A0000000FF0000000000000000000000000000808000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF0000008000000080000000800000008000000080000000
      80000000800000008000000000000000000000808000A0A0A00000FFFF000080
      8000A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0
      F000A4A0A00000000000000000000000000000808000A0A0A00000FFFF000080
      800000808000008080000080800000808000C0C0C00000800000808080008080
      80000080000000000000000000000000000000808000A0A0A00000FFFF000080
      8000008080000080800080000000800000008000000080000000800000008000
      0000800000000000FF000000FF00000000000000000000808000A0A0A00000FF
      FF000080800000808000008080000080800000808000C0C0C000008080000000
      0000000000000000000000000000000000000080800000FFFF0000FFFF0000FF
      FF00A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0F000F0F0
      F000A4A0A0000000000000000000000000000080800000FFFF0000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000800000808080008080
      8000008000000000000000000000000000000080800000FFFF0000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000808000000000000000
      000000000000000000000000FF000000FF00000000000080800000FFFF0000FF
      FF0000FFFF0000FFFF00A0A0A000A0A0A00000FFFF0000808000008080000000
      00000000000000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF00A4A0A000FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0F000F0F0F000F0F0
      F000A4A0A00000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000800000008000000080
      00000080000000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000808000000000000000
      00000000000000000000000000000000FF000000000000808000A0A0A00000FF
      FF0000FFFF0000FFFF00A0A0A000A0A0A00000FFFF0000808000008080000000
      00000000000000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF00A4A0A000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFF00FFFFFF00A4A0
      A0000000000000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000808000000000000000
      00000000000000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000808000000000000000
      0000000000000000000000000000000000000000000000808000A0A0A00000FF
      FF0000FFFF0000FFFF00A0A0A000A0A0A00000FFFF0000808000008080000000
      00000000000000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A4A0A000A4A0A000F0F0F000F0F0F000F0F0F000A4A0A000A4A0
      A0000000000000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000808000000000000000
      00000000000000000000000000000000000000808000A0A0A00000FFFF0000FF
      FF0000FFFF00A0A0A000A0A0A00000FFFF000080800000808000000000000000
      0000000000000000000000000000000000000000000000808000A0A0A00000FF
      FF0000FFFF0000FFFF00A0A0A000A0A0A00000FFFF0000808000008080000000
      00000000000000000000000000000000000000808000A0A0A000A0A0A000A0A0
      A000A0A0A000A0A0A000C0C0C000A4A0A0008080800080808000000000000000
      00000000000000000000000000000000000000808000A0A0A000A0A0A000A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A0000080800000808000000000000000
      00000000000000000000000000000000000000808000A0A0A000A0A0A000A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A0000080800000808000000000000000
      0000000000000000000000000000000000000000000000808000A0A0A000A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00000808000008080000000
      00000000000000000000000000000000000000808000FFFFFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A0A0A00000808000000000000000
      00000000000000000000000000000000000000808000FFFFFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A0A0A00000808000000000000000
      00000000000000000000000000000000000000808000FFFFFF00F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A0A0A00000808000000000000000
      0000000000000000000000000000000000000000000000808000FFFFFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00A0A0A000008080000000
      0000000000000000000000000000000000000000000000808000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00A0A0A000A0A0A0000080800000000000000000000000
      0000000000000000000000000000000000000000000000808000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00A0A0A000A0A0A0000080800000000000000000000000
      0000000000000000000000000000000000000000000000808000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00A0A0A000A0A0A0000080800000000000000000000000
      000000000000000000000000000000000000000000000000000000808000F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00A0A0A000A0A0A00000808000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000008080000080800000808000008080000080800000000000000000000000
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
  inherited QBrowse: TSQLQuery
    Left = 40
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 208
    Top = 560
  end
  inherited QBrowse2: TFDQuery
    Top = 552
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 96
    Top = 504
  end
  object CDSReemplazo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPReemplazo'
    OnNewRecord = CDSReemplazoNewRecord
    Left = 432
    Top = 496
    object CDSReemplazoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSReemplazoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSReemplazoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      OnSetText = CDSReemplazoSUCURSALSetText
    end
    object CDSReemplazoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object CDSReemplazoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object CDSReemplazoLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSReemplazoSUC: TStringField
      FieldName = 'SUC'
      OnSetText = CDSReemplazoSUCSetText
      Size = 4
    end
    object CDSReemplazoNUMERO: TStringField
      FieldName = 'NUMERO'
      OnSetText = CDSReemplazoNUMEROSetText
      Size = 8
    end
    object CDSReemplazoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSReemplazoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSReemplazoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object CDSReemplazoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSReemplazoFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSReemplazoMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSReemplazoMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSReemplazoID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSReemplazoID_TIPOCOMPROBANTESetText
    end
  end
  object DSPReemplazo: TDataSetProvider
    DataSet = QReemplazo
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 496
  end
  object ibgReemplazo: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_REEMPLAZO_VALORES_ING'
    SystemGenerators = False
    Left = 488
    Top = 496
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 40
    Top = 576
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 168
    Top = 584
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
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal where codigo=:codigo ')
    Left = 40
    Top = 512
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.SUCURSAL.CODIGO'
    end
    object QSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.SUCURSAL.DETALLE'
      Size = 35
    end
  end
  object QComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes'
      'where id_comprobante=:id '
      'and tipo_comprob='#39'ZI'#39' '
      'and compra_venta='#39'V'#39' '
      'and sucursal=:suc')
    Left = 160
    Top = 496
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
    object QComprobTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.SIGLAS'
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobLETRA: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
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
  end
  object QReemplazo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.*, Su.Detalle as MuestraSucursal,cp.denominacion as Mue' +
        'straComprobante,'
      
        'cp.id_comprobante as Id_TipoComprobante from reemplazo_valores_i' +
        'ngresados r'
      'left join Sucursal Su  on Su.Codigo=r.Sucursal'
      'left join comprobantes cp on cp.clase_comprob=r.ClaseCpbte and'
      '          cp.letra=r.letra and'
      '          cp.sucursal=r.sucursal and'
      '          cp.tipo_comprob=r.tipocpbte and'
      '          cp.compra_venta='#39'V'#39
      'where r.id=:id')
    Left = 304
    Top = 496
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QReemplazoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QReemplazoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QReemplazoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QReemplazoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object QReemplazoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object QReemplazoLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QReemplazoSUC: TStringField
      FieldName = 'SUC'
      Size = 4
    end
    object QReemplazoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QReemplazoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QReemplazoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QReemplazoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object QReemplazoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QReemplazoFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QReemplazoMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QReemplazoMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QReemplazoID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
  end
  object spEgresoEfectivo_BORRAR: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_MOV_CAJA_EFECTIVO'
    Left = 560
    Top = 528
    ParamData = <
      item
        Name = 'ID_CPBTE'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'TIPO_COMPROB'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'CLASE_COMPROB'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Precision = 13
        ParamType = ptInput
      end
      item
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftTimeStamp
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'DEBE'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'HABER'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'TIPOOPERACION'
        DataType = ftString
        Precision = 1
        ParamType = ptInput
      end>
  end
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select estado from caja_cab where id_caja=:id ')
    Left = 608
    Top = 576
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCajaESTADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ESTADO'
    end
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'V'#39' and'
      'tipo_comprob='#39'ZI'#39)
    Left = 300
    Top = 559
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSBuscaComprob: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DPBuscaComprob'
    Left = 432
    Top = 560
    object CDSBuscaComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobCLASE_COMPROB: TStringField
      DisplayLabel = 'Cls.Comprob'
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      DisplayLabel = 'Denominaci'#243'n'
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaComprobLETRA: TStringField
      DisplayLabel = 'Letra'
      DisplayWidth = 1
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      DisplayLabel = 'Pref.'
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNUMERO: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSBuscaComprobTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
    end
    object CDSBuscaComprobAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object CDSBuscaComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
    end
    object CDSBuscaComprobIMPRIME: TStringField
      FieldName = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobFISCAL: TStringField
      FieldName = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Size = 15
    end
    object CDSBuscaComprobPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Required = True
    end
    object CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = []
    Left = 368
    Top = 560
  end
  object ComBuscadorTipoCpbte: TComBuscador
    Data = CDSBuscaComprob
    Campo = 'ID_COMPROBANTE'
    Titulo = 'Comprobantes'
    rOk = False
    Left = 352
    Top = 97
  end
  object ComBuscadorSucursal: TComBuscador
    Data = CDSBuscaSucursal
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 264
    Top = 32
  end
  object spEgresoEfectivoFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_MOV_CAJA_EFECTIVO'
    Left = 608
    Top = 480
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'DEBE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'HABER'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TIPOOPERACION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
end

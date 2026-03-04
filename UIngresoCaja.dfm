inherited FormIngresoCaja: TFormIngresoCaja
  Left = 438
  Top = 50
  Caption = 'Ingresos de Caja'
  ClientHeight = 707
  ClientWidth = 890
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 908
  ExplicitHeight = 748
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Top = 100
    Width = 890
    Height = 429
    TabOrder = 1
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 100
    ExplicitWidth = 890
    ExplicitHeight = 429
    object pnValores: TPanel
      Left = 0
      Top = 0
      Width = 890
      Height = 423
      Align = alTop
      TabOrder = 0
      OnEnter = pnValoresEnter
      DesignSize = (
        890
        423)
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
        Left = 57
        Top = 3
        Width = 42
        Height = 13
        AutoSize = True
        Color = 16776176
        DataField = 'MUESTRARUBRO'
        DataSource = DSIngresoCajaDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 280
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
        Left = 325
        Top = 3
        Width = 42
        Height = 13
        AutoSize = True
        Color = 16776176
        DataField = 'MUESTRACUENTA'
        DataSource = DSIngresoCajaDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      inline FrameMovValoresIngreso1: TFrameMovValoresIngreso
        Left = 8
        Top = 111
        Width = 875
        Height = 320
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
        ExplicitLeft = 8
        ExplicitTop = 111
        ExplicitWidth = 875
        ExplicitHeight = 320
        inherited lbTotalValores: TLabel
          Height = 13
          StyleElements = [seFont, seClient, seBorder]
          ExplicitHeight = 13
        end
        inherited Label25: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited DBText12: TDBText
          StyleElements = [seFont, seClient, seBorder]
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
          Height = 13
          StyleElements = [seFont, seClient, seBorder]
          ExplicitHeight = 13
        end
        inherited RxLabel4: TJvLabel
          Left = 4
          ExplicitLeft = 4
        end
        inherited lbAvisoChe3: TLabel
          Left = 313
          Top = 239
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 313
          ExplicitTop = 239
        end
        inherited dbgMovimientos: TDBGrid
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
        end
        inherited pcValores: TPageControl
          Left = 335
          Width = 508
          ActivePage = FrameMovValoresIngreso1.tsEfectivo
          ExplicitLeft = 335
          ExplicitWidth = 508
          inherited tsEfectivo: TTabSheet
            ExplicitTop = 24
            ExplicitWidth = 500
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
              StyleElements = [seFont, seClient, seBorder]
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
          end
          inherited tsChe3: TTabSheet
            ExplicitTop = 24
            ExplicitHeight = 206
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
              Width = 66
              Height = 39
              StyleElements = [seFont, seClient, seBorder]
              ExplicitWidth = 66
              ExplicitHeight = 39
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
        inherited IBGIdDebito: TIBGenerator
          Left = 320
          Top = 264
        end
        inherited CDSCajaMov: TClientDataSet
          AfterPost = FrameMovValoresIngreso1CDSCajaMovAfterPost
          BeforeDelete = FrameMovValoresIngreso1CDSCajaMovBeforeDelete
          AfterDelete = FrameMovValoresIngreso1CDSCajaMovAfterDelete
        end
        inherited PopupMenu1: TPopupMenu
          object AsignarObra1: TMenuItem
            Action = AsignarObra
            OnClick = AsignarObra1Click
          end
        end
      end
      object dbgCtroCosto: TDBGrid
        Left = 10
        Top = 351
        Width = 293
        Height = 58
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
        TabOrder = 2
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
        Width = 727
        Height = 92
        DataSource = DSIngresoCajaDetalle
        DrawingStyle = gdsGradient
        GradientEndColor = clRed
        GradientStartColor = clSilver
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
            FieldName = 'FECHAINGRESO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Color = clInfoBk
            Expanded = False
            FieldName = 'RUBROINGRESO'
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
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'CODIGOINGRESO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 69
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
            Width = 380
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
            Width = 95
            Visible = True
          end>
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 529
    Width = 890
    TabOrder = 2
    ExplicitTop = 529
    ExplicitWidth = 890
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
    object spCentroDeCosto: TSpeedButton
      Left = 650
      Top = 0
      Width = 34
      Height = 29
      Hint = 'Detalle de Asignacion de Centros de Costo'
      Action = DetallesCostos
      Flat = True
    end
    object btModificaFecha: TBitBtn
      Left = 684
      Top = 0
      Width = 29
      Height = 29
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
  end
  inherited Panel1: TPanel
    Top = 559
    Width = 890
    TabOrder = 3
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 559
    ExplicitWidth = 890
    inherited sbEstado: TStatusBar
      Width = 801
      SimplePanel = True
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 801
    end
  end
  object pnCabecera: TPanel [3]
    Left = 0
    Top = 0
    Width = 890
    Height = 100
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
      Left = 8
      Top = 5
      Width = 35
      Height = 13
      Caption = 'Fecha '
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel60: TJvLabel
      Left = 687
      Top = 4
      Width = 100
      Height = 13
      Caption = 'Nro.de Comprobante'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel6: TJvLabel
      Left = 297
      Top = 9
      Width = 104
      Height = 13
      Caption = 'Tipo de Comprobante'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object RxLabel1: TJvLabel
      Left = 12
      Top = 55
      Width = 35
      Height = 13
      Caption = 'Detalle'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object DBText3: TDBText
      Left = 424
      Top = 42
      Width = 78
      Height = 16
      Cursor = crHandPoint
      Alignment = taRightJustify
      DataField = 'ID_INGRESO'
      DataSource = DSBase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object dbeSuc: TDBEdit
      Left = 722
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
      TabOrder = 1
    end
    object dbeNumero: TDBEdit
      Left = 774
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
      TabOrder = 2
    end
    object dbeLetra: TDBEdit
      Left = 688
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
      TabOrder = 3
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
      TabOrder = 5
    end
    object dbeDetalle: TDBEdit
      Left = 8
      Top = 73
      Width = 433
      Height = 21
      DataField = 'DETALLE'
      DataSource = DSBase
      TabOrder = 7
    end
    object dbeFecha: TJvDBDateEdit
      Left = 10
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
    object RxDBESucursal: TJvDBComboEdit
      Left = 104
      Top = 23
      Width = 37
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      ClickKey = 16397
      DataField = 'SUCURSALVENTA'
      DataSource = DSBase
      Glyph.Data = {
        4E000000424D4E000000000000003E0000002800000009000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FF8000002480000024800000FF800000}
      ButtonWidth = 15
      TabOrder = 4
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
      ClickKey = 16397
      DataField = 'ID_TIPOCOMPROBANTE'
      DataSource = DSBase
      Glyph.Data = {
        4E000000424D4E000000000000003E0000002800000009000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FF8000002480000024800000FF800000}
      ButtonWidth = 15
      TabOrder = 6
      OnButtonClick = BuscarTipoCpbteExecute
      OnKeyDown = RxCTipoCpbteKeyDown
    end
  end
  object pnImporte: TPanel [4]
    Left = 704
    Top = 48
    Width = 145
    Height = 46
    Color = clGradientInactiveCaption
    Enabled = False
    ParentBackground = False
    TabOrder = 4
    object RxLabel4: TJvLabel
      Left = 4
      Top = 4
      Width = 37
      Height = 13
      Caption = 'Importe'
      ShadowSize = 1
      ShadowPos = spLeftTop
      Transparent = True
    end
    object dbImporte: TDBEdit
      Left = 8
      Top = 20
      Width = 121
      Height = 21
      Color = clMenu
      DataField = 'IMPORTE'
      DataSource = DSBase
      TabOrder = 0
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
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarCuentas: TAction
      Caption = 'BuscarCuentas'
      OnExecute = BuscarCuentasExecute
    end
    object BuscaRubros: TAction
      Caption = 'BuscaRubros'
      OnExecute = BuscaRubrosExecute
    end
    object CambiarFecha: TAction
      Hint = 'Cambiar Fecha Comprobante'
      OnExecute = CambiarFechaExecute
    end
    object DetallesCostos: TAction
      ImageIndex = 10
      OnExecute = DetallesCostosExecute
    end
    object BuscarPorDetalle: TAction
      Caption = 'BuscarPorDetalle'
      ShortCut = 8205
      OnExecute = BuscarPorDetalleExecute
    end
    object AsignarObra: TAction
      Caption = 'Asignar Obra'
      ShortCut = 16463
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSIngrCaja
    Left = 448
    Top = 104
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010C008000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000BC4C00000000000000000000000000008424040084240400842404008424
      04008424040000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E00909090007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000BC4C0000BC4C0000BC4C0000BE4F040084240400F2937800E18C4100D06D
      210084240400000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000BC4C00000000000000000000000000008323040084240400842304008323
      040084240400000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BC4C00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000BC4C00000000000000000000000000008424040084240400842404008424
      040084240400000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000BC4C0000BC4C0000BC4C0000BC4C000084240400F2937800E18C4100D06D
      2100842404000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000BC4C00000000000000000000000000008323040084240400842304008323
      040084240400000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BC4C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C007C7C7C000000000000000000000000000000000000000000000000000000
      0000BC4C00000000000000000000000000008424040084240400842404008424
      0400842404000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E008E8E8E008E8E8E008E8E8E007C7C7C00D2D2D200CACACA00ADAD
      AD007C7C7C000000000000000000000000000000000000000000000000000000
      0000BC4C0000BC4C0000BC4C0000BC4C000084240400F2937800E18C4100D06D
      2100842404000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000007B7B7B007C7C7C007C7C7C007B7B
      7B007C7C7C000000000000000000000000000000000000000000000000000000
      0000BC4C00000000000000000000000000008323040084240400842304008323
      0400842404000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000000000007C7C7C007C7C
      7C007C7C7C007C7C7C007C7C7C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000842404008424
      0400842404008424040084240400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      00000000000000000000000000000000000000000000000000007C7C7C00D2D2
      D200CACACA00ADADAD007C7C7C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084240400F293
      7800E18C4100D06D210084240400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007C7C
      7C007C7C7C007B7B7B007C7C7C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000832304008424
      0400842304008323040084240400000000000000000000000000000000000000
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
      'select max(id_ingreso) from Ing_caja')
    Top = 400
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
  object DSPSucrusal: TDataSetProvider
    DataSet = DMMain_FD.QSucursal
    Options = []
    Left = 56
    Top = 463
  end
  object DSPIngresoCaja: TDataSetProvider
    DataSet = QIngresoCaja
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 240
  end
  object frIngresos: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.790457175930000000
    ReportOptions.LastChange = 39638.790457175930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 424
    Top = 521
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ibgIdIngreso: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_INGRESO_CAJA'
    SystemGenerators = False
    Left = 328
    Top = 256
  end
  object frDBDMovCaja: TfrxDBDataset
    UserName = 'frDBDMovCaja'
    CloseDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSCajaMov
    BCDToCurrency = False
    DataSetOptions = []
    Left = 240
    Top = 457
  end
  object DSPIngresoCajaDetalle: TDataSetProvider
    DataSet = QIngresoCajaDetalle
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 296
  end
  object CDSIngresoCajaDetalle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIngresoCajaDetalle'
    BeforePost = CDSIngresoCajaDetalleBeforePost
    AfterPost = CDSIngresoCajaDetalleAfterPost
    AfterDelete = CDSIngresoCajaDetalleAfterDelete
    OnNewRecord = CDSIngresoCajaDetalleNewRecord
    Left = 248
    Top = 360
    object CDSIngresoCajaDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIngresoCajaDetalleID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSIngresoCajaDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object CDSIngresoCajaDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object CDSIngresoCajaDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSIngresoCajaDetalleFECHACPBTE: TSQLTimeStampField
      FieldName = 'FECHACPBTE'
    end
    object CDSIngresoCajaDetalleFECHAINGRESO: TSQLTimeStampField
      DisplayLabel = 'Fecha Ing.'
      FieldName = 'FECHAINGRESO'
    end
    object CDSIngresoCajaDetalleRUBROINGRESO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBROINGRESO'
      OnSetText = CDSIngresoCajaDetalleRUBROINGRESOSetText
      Size = 3
    end
    object CDSIngresoCajaDetalleCODIGOINGRESO: TStringField
      DisplayLabel = 'Cuenta'
      DisplayWidth = 6
      FieldName = 'CODIGOINGRESO'
      OnSetText = CDSIngresoCajaDetalleCODIGOINGRESOSetText
      Size = 6
    end
    object CDSIngresoCajaDetalleDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 100
    end
    object CDSIngresoCajaDetalleIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSIngresoCajaDetalleSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
    end
    object CDSIngresoCajaDetalleMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 50
    end
    object CDSIngresoCajaDetalleMUESTRACUENTA: TStringField
      FieldName = 'MUESTRACUENTA'
      ProviderFlags = []
      Size = 50
    end
  end
  object DSIngresoCajaDetalle: TDataSource
    DataSet = CDSIngresoCajaDetalle
    Left = 320
    Top = 304
  end
  object IbgIngreDetalle: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ING_CAJA_DETALLE'
    SystemGenerators = False
    Left = 368
    Top = 304
  end
  object frDBIngresosDetalles: TfrxDBDataset
    UserName = 'frDBIngresosDetalles'
    CloseDataSource = False
    DataSource = DSIngresoCajaDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 520
    Top = 472
  end
  object frDBEfect: TfrxDBDataset
    UserName = 'frDBEfect'
    CloseDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSMovEfectivo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 240
    Top = 512
  end
  object frDBChe3: TfrxDBDataset
    UserName = 'frDBChe3'
    CloseDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSChe3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 552
  end
  object frDBTx: TfrxDBDataset
    UserName = 'frDBTx'
    CloseDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSTransBco
    BCDToCurrency = False
    DataSetOptions = []
    Left = 176
    Top = 568
  end
  object frDBTC: TfrxDBDataset
    UserName = 'frDBTC'
    CloseDataSource = False
    DataSet = FrameMovValoresIngreso1.CDSMovTCredito
    BCDToCurrency = False
    DataSetOptions = []
    Left = 176
    Top = 528
  end
  object frDBEmpresa: TfrxDBDataset
    UserName = 'frDBEmpresa'
    CloseDataSource = False
    DataSet = CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 232
    Top = 560
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 80
    Top = 604
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    Left = 16
    Top = 604
  end
  object rDBIngresos: TfrxDBDataset
    UserName = 'rDBIngresos'
    CloseDataSource = False
    DataSet = CDSIngrCaja
    BCDToCurrency = False
    DataSetOptions = []
    Left = 416
    Top = 372
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 72
    Top = 552
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
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 16
    Top = 552
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
    Left = 96
    Top = 448
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
  object QIngresoCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ing.*,s.detalle as MuestraSucursal ,'
      '            cp.denominacion as MuestraComprobante,'
      '            cp.id_comprobante as Id_tipocomprobante'
      
        '            from ing_caja ing left join sucursal s on s.codigo=i' +
        'ng.sucursalventa'
      'left join comprobantes cp on cp.clase_comprob=ing.ClaseCpbte and'
      '          cp.letra=ing.Letra and'
      '          cp.sucursal=ing.sucursalventa and'
      '          cp.tipo_comprob=ing.tipocpbte and'
      '          cp.compra_venta='#39'V'#39
      'where ing.id_ingreso=:Id and ing.TipoCpbte=:Tipo')
    Left = 40
    Top = 240
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
    object QIngresoCajaID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QIngresoCajaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QIngresoCajaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QIngresoCajaLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      Size = 1
    end
    object QIngresoCajaSUC: TStringField
      FieldName = 'SUC'
      Required = True
      Size = 4
    end
    object QIngresoCajaNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 8
    end
    object QIngresoCajaSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      Required = True
    end
    object QIngresoCajaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QIngresoCajaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QIngresoCajaDETALLE2: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object QIngresoCajaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QIngresoCajaMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QIngresoCajaMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QIngresoCajaID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QIngresoCajaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QIngresoCajaFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QIngresoCajaID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
  end
  object QIngresoCajaDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id.*, r.detalle as MuestraRubro,ct.Detalle as MuestraCuen' +
        'ta from ing_caja_detalle id'
      'left join gastos_rubros r on r.codigo=id.rubroingreso'
      
        'left join gastos_cuentas ct on ct.codigo=id.codigoingreso and id' +
        '.rubroingreso=ct.codigo_rubro'
      'where id.id_cpbte=:id')
    Left = 72
    Top = 304
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QIngresoCajaDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QIngresoCajaDetalleID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QIngresoCajaDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object QIngresoCajaDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object QIngresoCajaDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QIngresoCajaDetalleFECHACPBTE: TSQLTimeStampField
      FieldName = 'FECHACPBTE'
    end
    object QIngresoCajaDetalleFECHAINGRESO: TSQLTimeStampField
      FieldName = 'FECHAINGRESO'
    end
    object QIngresoCajaDetalleRUBROINGRESO: TStringField
      FieldName = 'RUBROINGRESO'
      Size = 3
    end
    object QIngresoCajaDetalleCODIGOINGRESO: TStringField
      FieldName = 'CODIGOINGRESO'
      Size = 6
    end
    object QIngresoCajaDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object QIngresoCajaDetalleIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QIngresoCajaDetalleSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
    end
    object QIngresoCajaDetalleMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 50
    end
    object QIngresoCajaDetalleMUESTRACUENTA: TStringField
      FieldName = 'MUESTRACUENTA'
      ProviderFlags = []
      Size = 50
    end
  end
  object CDSIngrCaja: TClientDataSet
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
    ProviderName = 'DSPIngresoCaja'
    OnNewRecord = CDSIngrCajaNewRecord
    Left = 256
    Top = 248
    object CDSIngrCajaID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIngrCajaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSIngrCajaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSIngrCajaLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      Size = 1
    end
    object CDSIngrCajaSUC: TStringField
      FieldName = 'SUC'
      Required = True
      OnSetText = CDSIngrCajaSUCSetText
      Size = 4
    end
    object CDSIngrCajaNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      OnSetText = CDSIngrCajaNUMEROSetText
      Size = 8
    end
    object CDSIngrCajaSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      Required = True
      OnSetText = CDSIngrCajaSUCURSALVENTASetText
    end
    object CDSIngrCajaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSIngrCajaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSIngrCajaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSIngrCajaMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSIngrCajaMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSIngrCajaID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSIngrCajaID_TIPOCOMPROBANTESetText
    end
    object CDSIngrCajaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object CDSIngrCajaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSIngrCajaFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSIngrCajaID_OBRA: TIntegerField
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
      'and compra_venta='#39'V'#39' '
      'and (tipo_comprob='#39'IC'#39')')
    Left = 344
    Top = 520
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
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object QComprobLETRA: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
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
    object QComprobCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Required = True
    end
  end
  object DSPBuscaRubro: TDataSetProvider
    DataSet = QBuscaRubro
    Options = []
    Left = 408
    Top = 584
  end
  object CDSBuscaRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaRubro'
    Left = 464
    Top = 584
    object CDSBuscaRubroDETALLE: TStringField
      DisplayLabel = 'Detalle'
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
  object CDSBuscaCuenta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaCuenta'
    Left = 464
    Top = 632
    object CDSBuscaCuentaDETALLE: TStringField
      DisplayLabel = 'Detalle'
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
    Left = 408
    Top = 632
  end
  object QBuscaRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Gastos_Rubros order by detalle')
    Left = 568
    Top = 536
    object QBuscaRubroCODIGO: TStringField
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.GASTOS_RUBROS.CODIGO'
      Size = 3
    end
    object QBuscaRubroDETALLE: TStringField
      DisplayWidth = 50
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.GASTOS_RUBROS.DETALLE'
      Size = 50
    end
  end
  object QBuscaCuentas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from gastos_cuentas'
      'where codigo_rubro=:rubro'
      'order by detalle')
    Left = 632
    Top = 536
    ParamData = <
      item
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscaCuentasCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.GASTOS_CUENTAS.CODIGO'
      Size = 6
    end
    object QBuscaCuentasCODIGO_RUBRO: TStringField
      DisplayWidth = 3
      FieldName = 'CODIGO_RUBRO'
      Origin = 'DBMAIN.GASTOS_CUENTAS.CODIGO_RUBRO'
      Size = 3
    end
    object QBuscaCuentasDETALLE: TStringField
      DisplayWidth = 50
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.GASTOS_CUENTAS.DETALLE'
      Size = 50
    end
  end
  object DSPBuscaComprob: TDataSetProvider
    DataSet = QBuscaComprob
    Options = []
    Left = 560
    Top = 56
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
    Left = 632
    Top = 32
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
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaComprobSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaComprobLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaComprobPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaComprobNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
  end
  object QBuscaComprob: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'V'#39' and'
      '(tipo_comprob='#39'IC'#39')')
    Left = 508
    Top = 55
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select estado from caja_cab where id_caja=:id ')
    Left = 320
    Top = 584
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
  object DSCtroCosto: TDataSource
    DataSet = DMMain_FD.CDSAplicPorCtroCosto
    Left = 256
    Top = 624
  end
  object frDBCCosto: TfrxDBDataset
    UserName = 'frDBCCosto'
    CloseDataSource = False
    DataSource = DSCtroCosto
    BCDToCurrency = False
    DataSetOptions = []
    Left = 416
    Top = 156
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
    Campo = 'CODIGO'
    Titulo = 'Sucursales'
    rOk = False
    Left = 272
    Top = 24
  end
  object ComBuscadorCuenta: TComBuscador
    Data = CDSBuscaCuenta
    Campo = 'codigo'
    Titulo = 'Cuentas de Ingresos'
    rOk = False
    Left = 144
    Top = 148
  end
  object ComBuscadorRubro: TComBuscador
    Data = CDSBuscaRubro
    Campo = 'codigo'
    Titulo = 'Rubros de Ingresos'
    rOk = False
    Left = 312
    Top = 148
  end
end

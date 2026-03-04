object FormRevisionValoresIngreso: TFormRevisionValoresIngreso
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Revision Valores Ingresados'
  ClientHeight = 556
  ClientWidth = 1145
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 39
    Width = 1145
    Height = 367
    Align = alTop
    Caption = 'Panel1'
    PopupMenu = PopupMenu1
    TabOrder = 2
    ExplicitWidth = 1010
    DesignSize = (
      1145
      367)
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 126
      Height = 16
      Caption = 'Valores Ingresados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 16
      Top = 327
      Width = 64
      Height = 17
      Alignment = taRightJustify
      DataField = 'NROCHE3'
      DataSource = DSValoresIngresados
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 86
      Top = 327
      Width = 64
      Height = 17
      Alignment = taRightJustify
      DataField = 'FECHACHE3'
      DataSource = DSValoresIngresados
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 16
      Top = 344
      Width = 64
      Height = 17
      Alignment = taRightJustify
      DataField = 'NUMEROCHE'
      DataSource = DSValoresIngresados
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 86
      Top = 344
      Width = 64
      Height = 17
      Alignment = taRightJustify
      DataField = 'FECHACHEP'
      DataSource = DSValoresIngresados
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    inline FrameMovValoresIngreso1: TFrameMovValoresIngreso
      Left = 321
      Top = 27
      Width = 854
      Height = 527
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
      ExplicitLeft = 321
      ExplicitTop = 27
      ExplicitWidth = 719
      ExplicitHeight = 527
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
      inherited lbAvisoChe3: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited dbgMovimientos: TDBGrid
        Height = 160
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
      end
      inherited pcValores: TPageControl
        ActivePage = FrameMovValoresIngreso1.tsEfectivo
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
          inherited BitBtn7: TBitBtn
            OnClick = FrameMovValoresIngreso1BitBtn7Click
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
          inherited ceCtaBco: TJvDBComboEdit
            Height = 21
            StyleElements = [seFont, seClient, seBorder]
            ExplicitHeight = 21
          end
          inherited DBEdit7: TDBEdit
            StyleElements = [seFont, seClient, seBorder]
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
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited DBEdit2: TDBEdit
            StyleElements = [seFont, seClient, seBorder]
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
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited dbeImporteCta: TDBEdit
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edNombreCliente: TDBEdit
            StyleElements = [seFont, seClient, seBorder]
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
        Left = 632
        Top = 33
      end
      inherited DSPDebitos: TDataSetProvider
        Top = 312
      end
      inherited CDSCajaMov: TClientDataSet
        AfterPost = FrameMovValoresIngreso1CDSCajaMovAfterPost
        BeforeDelete = FrameMovValoresIngreso1CDSCajaMovBeforeDelete
        AfterDelete = FrameMovValoresIngreso1CDSCajaMovAfterDelete
      end
    end
    object edSuma: TJvValidateEdit
      Left = 176
      Top = 326
      Width = 97
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisabledTextColor = clBlack
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object cxGrid1: TcxGrid
      Left = 16
      Top = 28
      Width = 289
      Height = 293
      TabOrder = 2
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Post.Enabled = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSValoresIngresados
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1MODOPAGO: TcxGridDBColumn
          DataBinding.FieldName = 'MODOPAGO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 147
        end
        object cxGrid1DBTableView1DEBE: TcxGridDBColumn
          DataBinding.FieldName = 'DEBE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 87
        end
        object cxGrid1DBTableView1SELECCION: TcxGridDBColumn
          DataBinding.FieldName = 'SELECCION'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.OnChange = cxGrid1DBTableView1SELECCIONPropertiesChange
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1145
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Valores Ingresados'
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1010
  end
  object pnPie: TPanel
    Left = 0
    Top = 406
    Width = 1145
    Height = 64
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 1010
    object btCancel: TBitBtn
      Left = 753
      Top = 15
      Width = 100
      Height = 30
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btCancelClick
    end
    object btOk: TBitBtn
      Left = 873
      Top = 15
      Width = 100
      Height = 30
      Action = Confirmar
      Caption = 'Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 1
      TabStop = False
    end
  end
  object QValoresIngresados: TFDQuery
    AfterOpen = QValoresIngresadosAfterOpen
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cm.id_caja,cm.id_mov_caja,cm.fecha_caja,cm.fecha_operacio' +
        'n,cm.tipo_operacion,'
      
        '       cm.tipo_comprob,cm.clase_comprob,cm.id_comprobante,cm.nro' +
        '_comprobante,'
      
        '       cm.haber,cm.debe,cm.id_tpago,cm.id_fpago,cm.unidades,cm.c' +
        'otizacion,'
      '       cm.id_cuenta_caja,cm.moneda, tp.detalle as ModoPago,'
      '       ch3.numero as NroChe3,ch3.fecha_cobro as FechaChe3,'
      
        '       chp.numero as NumeroChe,chp.fecha_cobro as FechaCheP from' +
        ' caja_mov cm'
      'left join tipopago tp on tp.id_tpago=cm.id_tpago'
      'left join cheque_tercero ch3 on ch3.id_mov_caja=cm.id_mov_caja'
      'left join cheque_propio chp on chp.id_mov_caja=cm.id_mov_caja'
      'where cm.tipo_comprob=:tipocpbte and cm.id_comprobante=:id_cpbte')
    Left = 56
    Top = 176
    ParamData = <
      item
        Name = 'TIPOCPBTE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QValoresIngresadosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QValoresIngresadosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QValoresIngresadosFECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
    object QValoresIngresadosFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
    object QValoresIngresadosTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object QValoresIngresadosTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QValoresIngresadosCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object QValoresIngresadosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object QValoresIngresadosNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object QValoresIngresadosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
    object QValoresIngresadosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object QValoresIngresadosID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object QValoresIngresadosID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QValoresIngresadosUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QValoresIngresadosCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QValoresIngresadosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QValoresIngresadosMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QValoresIngresadosMODOPAGO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Modo Pago'
      FieldName = 'MODOPAGO'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QValoresIngresadosSELECCION: TBooleanField
      DisplayLabel = 'V'
      FieldKind = fkInternalCalc
      FieldName = 'SELECCION'
    end
    object QValoresIngresadosNROCHE3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NROCHE3'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QValoresIngresadosFECHACHE3: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHACHE3'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QValoresIngresadosNUMEROCHE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROCHE'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QValoresIngresadosFECHACHEP: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHACHEP'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSValoresIngresados: TDataSource
    DataSet = QValoresIngresados
    Left = 142
    Top = 176
  end
  object QBorrarMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from caja_mov m where m.id_mov_caja = :id')
    Left = 72
    Top = 480
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
    object StringField1: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object FloatField4: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object IntegerField7: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object StringField5: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Modo Pago'
      FieldName = 'MODOPAGO'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
  end
  object ActionList1: TActionList
    Left = 568
    Top = 448
    object Confirmar: TAction
      Caption = 'Ok'
      OnExecute = ConfirmarExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 155
    object ControlarValores1: TMenuItem
      Caption = 'Controlar Valores'
      Checked = True
      OnClick = ControlarValores1Click
    end
  end
end

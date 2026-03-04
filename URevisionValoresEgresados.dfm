object FormRevisionValoresEgresados: TFormRevisionValoresEgresados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Revision Valores Egresados'
  ClientHeight = 729
  ClientWidth = 1056
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnValoresActuales: TPanel
    Left = 0
    Top = 43
    Width = 1056
    Height = 367
    Align = alTop
    PopupMenu = PopupMenu1
    TabOrder = 1
    ExplicitWidth = 988
    DesignSize = (
      1056
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
      Left = 8
      Top = 327
      Width = 64
      Height = 17
      Alignment = taRightJustify
      DataField = 'NROCHE3'
      DataSource = DSValoresEgresados
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 8
      Top = 344
      Width = 64
      Height = 17
      Alignment = taRightJustify
      DataField = 'NUMEROCHE'
      DataSource = DSValoresEgresados
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 78
      Top = 344
      Width = 64
      Height = 17
      Alignment = taRightJustify
      DataField = 'FECHACHEP'
      DataSource = DSValoresEgresados
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 78
      Top = 327
      Width = 64
      Height = 17
      Alignment = taRightJustify
      DataField = 'FECHACHE3'
      DataSource = DSValoresEgresados
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 31
      Width = 273
      Height = 294
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Post.Enabled = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSValoresEgresados
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
        object cxGrid1DBTableView1HABER: TcxGridDBColumn
          DataBinding.FieldName = 'HABER'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 90
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
    object edSuma: TJvValidateEdit
      Left = 160
      Top = 331
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
    inline FrameMovValoresEgresos1: TFrameMovValoresEgresos
      Left = 287
      Top = 31
      Width = 1053
      Height = 419
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
      TabOrder = 2
      ExplicitLeft = 287
      ExplicitTop = 31
      ExplicitWidth = 985
      ExplicitHeight = 419
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
        FocusControl = FrameMovValoresEgresos1.ceCaja
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited lb1: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited lbResto: TLabel
        StyleElements = [seFont, seClient, seBorder]
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
          inherited btOkEfectivo: TBitBtn
            OnClick = FrameMovValoresEgresos1BitBtn7Click
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
            FocusControl = FrameMovValoresEgresos1.dbeFechaCobro
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
            FocusControl = FrameMovValoresEgresos1.rxdcCtaBco
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
            FocusControl = FrameMovValoresEgresos1.rcdcIdCtaBcoDebito
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
              FocusControl = FrameMovValoresEgresos1.dbeMuestraTarjeta
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label33: TLabel
              FocusControl = FrameMovValoresEgresos1.dbdFechaCompra
              StyleElements = [seFont, seClient, seBorder]
            end
            inherited Label36: TLabel
              FocusControl = FrameMovValoresEgresos1.dbdFechaCupon
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
      inherited DSDebitos: TDataSource
        Left = 232
      end
      inherited CDSDebitos: TClientDataSet
        Left = 168
        Top = 288
      end
      inherited CDSCajaMov: TClientDataSet
        BeforePost = FrameMovValoresEgresos1CDSCajaMovBeforePost
        AfterPost = FrameMovValoresEgresos1CDSCajaMovAfterPost
        BeforeDelete = FrameMovValoresEgresos1CDSCajaMovBeforeDelete
        AfterDelete = FrameMovValoresEgresos1CDSCajaMovAfterDelete
        Left = 168
        Top = 241
        inherited CDSCajaMovID_FPAGO: TIntegerField
          OnSetText = FrameMovValoresEgresos1CDSCajaMovID_FPAGOSetText
        end
      end
      inherited QBuscaTCredito: TFDQuery
        Left = 560
        Top = 75
      end
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Valores Entregados'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 988
  end
  object pnPie: TPanel
    Left = 0
    Top = 410
    Width = 1056
    Height = 64
    Align = alTop
    BevelOuter = bvNone
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 988
    object btCancelar: TBitBtn
      Left = 733
      Top = 14
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
      OnClick = btCancelarClick
    end
    object btOk: TBitBtn
      Left = 863
      Top = 14
      Width = 100
      Height = 30
      Caption = 'OK'
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
      OnClick = btOkClick
    end
  end
  object QValoresEgresados: TFDQuery
    AfterOpen = QValoresEgresadosAfterOpen
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
      
        'left join cheque_tercero ch3 on ch3.id_mov_caja_egresos=cm.id_mo' +
        'v_caja'
      'left join cheque_propio chp on chp.id_mov_caja=cm.id_mov_caja'
      'where cm.tipo_comprob=:tipocpbte and cm.id_comprobante=:id_cpbte')
    Left = 48
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
    object QValoresEgresadosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QValoresEgresadosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QValoresEgresadosFECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
    object QValoresEgresadosFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
    object QValoresEgresadosTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object QValoresEgresadosTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QValoresEgresadosCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object QValoresEgresadosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object QValoresEgresadosNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object QValoresEgresadosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
    object QValoresEgresadosDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QValoresEgresadosID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object QValoresEgresadosID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QValoresEgresadosUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QValoresEgresadosCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QValoresEgresadosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QValoresEgresadosMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QValoresEgresadosMODOPAGO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle'
      FieldName = 'MODOPAGO'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QValoresEgresadosSELECCION: TBooleanField
      DisplayLabel = 'V'
      FieldKind = fkInternalCalc
      FieldName = 'SELECCION'
    end
    object QValoresEgresadosNROCHE3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NROCHE3'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QValoresEgresadosFECHACHE3: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHACHE3'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QValoresEgresadosNUMEROCHE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROCHE'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QValoresEgresadosFECHACHEP: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHACHEP'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSValoresEgresados: TDataSource
    DataSet = QValoresEgresados
    Left = 150
    Top = 184
  end
  object QBorrarMov: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from caja_mov m where m.id_mov_caja = :id')
    Left = 64
    Top = 416
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
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 163
    object ControlarValores1: TMenuItem
      Caption = 'Controlar Valores'
      Checked = True
      OnClick = ControlarValores1Click
    end
  end
end

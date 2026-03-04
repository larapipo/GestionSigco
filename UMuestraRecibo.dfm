object FormMuestraRecibo: TFormMuestraRecibo
  Left = 103
  Top = 27
  Caption = 'Recibos de Cobro'
  ClientHeight = 506
  ClientWidth = 689
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcDetalle: TPageControl
    Left = 0
    Top = 113
    Width = 689
    Height = 264
    ActivePage = Pag3
    Align = alTop
    HotTrack = True
    TabOrder = 0
    TabPosition = tpBottom
    object Pag1: TTabSheet
      Caption = '&Aplicaciones'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
        DataSource = DSMovAplicaCCVta
        FixedColor = clBlue
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
            Width = 38
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
            Width = 101
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
        DataSource = DSRecibo
        TabOrder = 1
      end
      object dbeObs2: TDBEdit
        Left = 272
        Top = 208
        Width = 345
        Height = 21
        DataField = 'OBSERVACION2'
        DataSource = DSRecibo
        TabOrder = 2
      end
      object ceTotalAplicaciones: TComboEdit
        Left = 144
        Top = 168
        Width = 97
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 3
        Text = '0.00'
      end
    end
    object Pag2: TTabSheet
      Caption = '&Valores'
      ImageIndex = 2
      DesignSize = (
        681
        238)
      inline FrameMovValoresIngreso1: TFrameMovValoresIngreso
        Left = 16
        Top = -1
        Width = 649
        Height = 234
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = True
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
        ExplicitLeft = 16
        ExplicitTop = -1
        ExplicitWidth = 649
        ExplicitHeight = 234
        inherited lbTotalValores: TLabel
          Top = 204
          ExplicitTop = 204
        end
        inherited Label25: TLabel
          Top = 204
          ExplicitTop = 204
        end
        inherited RxLabel4: TRxLabel
          Top = 0
          ExplicitTop = 0
        end
        inherited dbgMovimientos: TDBGrid
          Top = 42
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
              FieldName = 'DEBE'
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
          Top = 0
          ExplicitTop = 0
          inherited tsChe3: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 412
            ExplicitHeight = 206
          end
          inherited tsTCredito: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 412
            ExplicitHeight = 206
          end
        end
        inherited ceCaja: TComboEdit
          Top = 14
          ExplicitTop = 14
        end
        inherited edMuestraCaja: TEdit
          Top = 14
          ExplicitTop = 14
        end
      end
    end
    object Pag3: TTabSheet
      Caption = '&Retenciones'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 360
        Top = 128
        Width = 104
        Height = 16
        Caption = 'Total Retenido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ceTotalRetenciones: TComboEdit
        Left = 472
        Top = 126
        Width = 97
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 0
        Text = '0.000'
      end
      object wwdbgretenciones: TwwDBGrid
        Left = 8
        Top = 0
        Width = 585
        Height = 120
        Selected.Strings = (
          'ID_RETENCION'#9'6'#9'Cod.'#9#9
          'FECHA_RETENCION'#9'16'#9'Fec.Retenci'#243'n'#9#9
          'NRO_RETENCION'#9'20'#9'Nro_Retencion'#9#9
          'DETALLE'#9'23'#9'Detalle'#9#9
          'IMPORTE'#9'11'#9'Importe'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DSRetenciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = False
      end
      object wwdbFechaRetencion: TwwDBDateTimePicker
        Left = 40
        Top = 56
        Width = 97
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1960
        ShowButton = True
        TabOrder = 2
      end
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 113
    Align = alTop
    TabOrder = 1
    object RxLabel59: TRxLabel
      Left = 102
      Top = 5
      Width = 89
      Height = 13
      Caption = 'Sucursal de Venta'
    end
    object RxLabel58: TRxLabel
      Left = 16
      Top = 5
      Width = 35
      Height = 13
      Caption = 'Fecha '
    end
    object RxLabel60: TRxLabel
      Left = 485
      Top = 5
      Width = 100
      Height = 13
      Caption = 'Nro.de Comprobante'
    end
    object RxLabel1: TRxLabel
      Left = 446
      Top = 69
      Width = 60
      Height = 13
      Caption = 'Saldo a Cta.'
    end
    object RxLabel2: TRxLabel
      Left = 566
      Top = 69
      Width = 64
      Height = 13
      Caption = 'Importe Total'
    end
    object dbtMuestraComprobante: TDBText
      Left = 311
      Top = 25
      Width = 138
      Height = 21
      DataField = 'MUESTRACOMPROBANTE'
      DataSource = DSRecibo
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 313
      Top = 9
      Width = 104
      Height = 13
      Caption = 'Tipo de Comprobante'
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 54
      Width = 385
      Height = 43
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object dbeNombre: TDBEdit
        Left = 80
        Top = 14
        Width = 286
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'NOMBRE'
        DataSource = DSRecibo
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
      Left = 513
      Top = 21
      Width = 39
      Height = 24
      DataField = 'SUCRC'
      DataSource = DSRecibo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object dbeNumero: TDBEdit
      Left = 557
      Top = 21
      Width = 75
      Height = 24
      DataField = 'NUMERORC'
      DataSource = DSRecibo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object dbeLetra: TDBEdit
      Left = 487
      Top = 21
      Width = 22
      Height = 24
      TabStop = False
      DataField = 'LETRARC'
      DataSource = DSRecibo
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object wwDBDFecha: TwwDBDateTimePicker
      Left = 16
      Top = 23
      Width = 84
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'FECHA'
      DataSource = DSRecibo
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object dbeSucursal: TDBEdit
      Left = 146
      Top = 23
      Width = 146
      Height = 21
      Color = clInfoBk
      DataField = 'MUESTRASUCURSAL'
      DataSource = DSRecibo
      Enabled = False
      TabOrder = 7
    end
    object dbeTotal: TDBEdit
      Left = 568
      Top = 88
      Width = 105
      Height = 21
      Color = clWhite
      DataField = 'TOTAL'
      DataSource = DSRecibo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object dbeSaldo: TDBEdit
      Left = 448
      Top = 88
      Width = 105
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'SALDO_APLICAR'
      DataSource = DSRecibo
      Enabled = False
      ReadOnly = True
      TabOrder = 5
    end
    object dbeSucVenta: TDBEdit
      Left = 104
      Top = 23
      Width = 36
      Height = 21
      DataField = 'SUCURSAL'
      DataSource = DSRecibo
      TabOrder = 8
    end
    object dbeCliente: TDBEdit
      Left = 24
      Top = 68
      Width = 64
      Height = 21
      DataField = 'CODIGO'
      DataSource = DSRecibo
      TabOrder = 9
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 377
    Width = 689
    Height = 25
    Align = alTop
    TabOrder = 2
    object RxClock1: TRxClock
      Left = 4
      Top = 4
      Width = 105
      Height = 17
    end
  end
  object DSPRecibo: TDataSetProvider
    DataSet = DMMain.wwQRecibo
    Left = 264
    Top = 156
  end
  object wwCDSRecibo: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRecibo'
    ValidateWithMask = True
    Left = 368
    Top = 116
    object wwCDSReciboCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object wwCDSReciboSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object wwCDSReciboID_RC: TIntegerField
      FieldName = 'ID_RC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwCDSReciboTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwCDSReciboNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object wwCDSReciboNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object wwCDSReciboRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object wwCDSReciboDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object wwCDSReciboCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object wwCDSReciboLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object wwCDSReciboTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object wwCDSReciboCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object wwCDSReciboFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object wwCDSReciboANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object wwCDSReciboN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object wwCDSReciboVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 3
    end
    object wwCDSReciboTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object wwCDSReciboSALDO_APLICAR: TFloatField
      FieldName = 'SALDO_APLICAR'
    end
    object wwCDSReciboIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object wwCDSReciboOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object wwCDSReciboOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object wwCDSReciboZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object wwCDSReciboMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object wwCDSReciboLETRARC: TStringField
      Alignment = taCenter
      FieldName = 'LETRARC'
      Size = 1
    end
    object wwCDSReciboSUCRC: TStringField
      FieldName = 'SUCRC'
      Size = 4
    end
    object wwCDSReciboNUMERORC: TStringField
      FieldName = 'NUMERORC'
      Size = 8
    end
    object wwCDSReciboCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object wwCDSReciboMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object wwCDSReciboId_TipoCpbte: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Id_TipoCpbte'
    end
  end
  object DSPMovAplicaCCVta: TDataSetProvider
    DataSet = DMMain.wwQMovAplicaCCVta
    Left = 256
    Top = 294
  end
  object wwCDSMovAplicaCCVta: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovAplicaCCVta'
    ValidateWithMask = True
    Left = 368
    Top = 294
    object wwCDSMovAplicaCCVtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
    end
    object wwCDSMovAplicaCCVtaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
    end
    object wwCDSMovAplicaCCVtaFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object wwCDSMovAplicaCCVtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object wwCDSMovAplicaCCVtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object wwCDSMovAplicaCCVtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwCDSMovAplicaCCVtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object wwCDSMovAplicaCCVtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object wwCDSMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
    end
    object wwCDSMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object wwCDSMovAplicaCCVtaAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object wwCDSMovAplicaCCVtaAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object wwCDSMovAplicaCCVtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object wwCDSMovAplicaCCVtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
  end
  object DSPRetenciones: TDataSetProvider
    DataSet = wwQRetenciones
    Left = 280
    Top = 408
  end
  object wwCDSRetenciones: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRetenciones'
    ControlType.Strings = (
      'FECHA_RETENCION;CustomEdit;wwdbFechaRetencion;F')
    ValidateWithMask = True
    Left = 384
    Top = 408
    object wwCDSRetencionesID_RETENCION: TIntegerField
      DisplayLabel = 'Cod.'
      DisplayWidth = 6
      FieldName = 'ID_RETENCION'
    end
    object wwCDSRetencionesFECHA_RETENCION: TDateTimeField
      DisplayLabel = 'Fec.Retenci'#243'n'
      DisplayWidth = 16
      FieldName = 'FECHA_RETENCION'
    end
    object wwCDSRetencionesNRO_RETENCION: TStringField
      DisplayLabel = 'Nro_Retencion'
      DisplayWidth = 20
      FieldName = 'NRO_RETENCION'
      Origin = 'DBMAIN.MOV_RETENCIONES.NRO_RETENCION'
    end
    object wwCDSRetencionesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 23
      FieldName = 'DETALLE'
    end
    object wwCDSRetencionesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 11
      FieldName = 'IMPORTE'
    end
    object wwCDSRetencionesID_MOV_RETENCIONES: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV_RETENCIONES'
      Visible = False
    end
    object wwCDSRetencionesTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Visible = False
      Size = 2
    end
    object wwCDSRetencionesNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Visible = False
      Size = 13
    end
    object wwCDSRetencionesID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CPBTE'
      Visible = False
    end
    object wwCDSRetencionesFECHA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECHA'
      Visible = False
    end
    object wwCDSRetencionesCLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Visible = False
      Size = 2
    end
    object wwCDSRetencionesCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'DBMAIN.MOV_RETENCIONES.CODIGO_CLIENTE'
      Visible = False
      Size = 6
    end
    object wwCDSRetencionesNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Origin = 'DBMAIN.MOV_RETENCIONES.NOMBRE_CLIENTE'
      Visible = False
      Size = 30
    end
    object wwCDSRetencionesCUIT_CLIENTE: TStringField
      FieldName = 'CUIT_CLIENTE'
      Origin = 'DBMAIN.MOV_RETENCIONES.CUIT_CLIENTE'
      Visible = False
      Size = 13
    end
  end
  object wwQRetenciones: TwwQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from mov_retenciones where id_cpbte=:id')
    ValidateWithMask = True
    Left = 464
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object wwQRetencionesID_MOV_RETENCIONES: TIntegerField
      FieldName = 'ID_MOV_RETENCIONES'
    end
    object wwQRetencionesID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
    end
    object wwQRetencionesDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object wwQRetencionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwQRetencionesNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object wwQRetencionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object wwQRetencionesFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object wwQRetencionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object wwQRetencionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object wwQRetencionesFECHA_RETENCION: TDateTimeField
      FieldName = 'FECHA_RETENCION'
    end
    object wwQRetencionesNRO_RETENCION: TStringField
      FieldName = 'NRO_RETENCION'
      Origin = 'DBMAIN.MOV_RETENCIONES.NRO_RETENCION'
    end
    object wwQRetencionesCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'DBMAIN.MOV_RETENCIONES.CODIGO_CLIENTE'
      Size = 6
    end
    object wwQRetencionesNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Origin = 'DBMAIN.MOV_RETENCIONES.NOMBRE_CLIENTE'
      Size = 30
    end
    object wwQRetencionesCUIT_CLIENTE: TStringField
      FieldName = 'CUIT_CLIENTE'
      Origin = 'DBMAIN.MOV_RETENCIONES.CUIT_CLIENTE'
      Size = 13
    end
  end
  object DSRecibo: TDataSource
    DataSet = wwCDSRecibo
    Left = 180
    Top = 127
  end
  object DSMovAplicaCCVta: TDataSource
    DataSet = wwCDSMovAplicaCCVta
    Left = 188
    Top = 303
  end
  object DSRetenciones: TDataSource
    DataSet = wwCDSRetenciones
    Left = 184
    Top = 408
  end
end

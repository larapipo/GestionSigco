inherited FormFacturarCuponesAbonos: TFormFacturarCuponesAbonos
  Left = 118
  Top = 185
  Caption = 'FormFacturarCuponesAbonos'
  ClientHeight = 522
  ClientWidth = 829
  ExplicitLeft = 118
  ExplicitTop = 185
  ExplicitWidth = 839
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 13
  GlassFrame.SheetOfGlass = True
  inherited pnPrincipal: TPanel
    Width = 829
    Height = 337
    ExplicitLeft = 2
    ExplicitWidth = 829
    ExplicitHeight = 337
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 75
      Height = 13
      Caption = 'Sucursal de Vta'
    end
    object dbgCupones: TDBGrid
      Left = 7
      Top = 51
      Width = 818
      Height = 262
      DataSource = DSCupones
      FixedColor = clYellow
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          ReadOnly = True
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
          FieldName = 'MUESTRAIVA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Iva'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE_1'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE_2'
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
          FieldName = 'MuestraComprobante'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 123
          Visible = True
        end>
    end
    object dbcSuc: TJvDBLookupCombo
      Left = 7
      Top = 24
      Width = 295
      Height = 21
      DisplayEmpty = 'Sin Seleccion'
      EmptyValue = '0'
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSSucursal
      TabOrder = 1
      OnChange = BuscarExecute
    end
  end
  inherited ToolBar1: TToolBar
    Top = 337
    Width = 829
    ExplicitTop = 337
    ExplicitWidth = 829
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 367
    Width = 829
    ExplicitTop = 367
    ExplicitWidth = 829
    inherited DBStatusLabel1: TDBStatusLabel
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 667
      ExplicitWidth = 667
    end
  end
  inherited ActionList1: TActionList
    object Facturacion: TAction
      Caption = 'Facturacion'
      OnExecute = FacturacionExecute
    end
    object Facturar: TAction
      Caption = 'Facturar'
      OnExecute = FacturarExecute
    end
  end
  inherited JvFormMagnet1: TJvFormMagnet
    Left = 369
    Top = 196
  end
  object DSCupones: TDataSource
    DataSet = CDSCupones
    Left = 296
    Top = 400
  end
  object DSPCupones: TDataSetProvider
    DataSet = QCupones
    Left = 360
    Top = 416
  end
  object CDSCupones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCupones'
    Left = 440
    Top = 408
    object CDSCuponesID: TIntegerField
      FieldName = 'ID'
    end
    object CDSCuponesNUMERO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSCuponesFECHA_GENERACION: TDateTimeField
      FieldName = 'FECHA_GENERACION'
    end
    object CDSCuponesFECHA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSCuponesCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSCuponesPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 6
    end
    object CDSCuponesFECHA_VTO1: TDateTimeField
      FieldName = 'FECHA_VTO1'
    end
    object CDSCuponesFECHA_VTO2: TDateTimeField
      FieldName = 'FECHA_VTO2'
    end
    object CDSCuponesIMPORTE_1: TFloatField
      DisplayLabel = 'Imp.1 Vto.'
      FieldName = 'IMPORTE_1'
    end
    object CDSCuponesIMPORTE_2: TFloatField
      DisplayLabel = 'Imp.2 Vto.'
      FieldName = 'IMPORTE_2'
    end
    object CDSCuponesCODIGOBARRA1: TStringField
      FieldName = 'CODIGOBARRA1'
      Size = 54
    end
    object CDSCuponesCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSCuponesFACTURA_ID: TIntegerField
      FieldName = 'FACTURA_ID'
    end
    object CDSCuponesFACTURA_FECHA: TDateTimeField
      FieldName = 'FACTURA_FECHA'
    end
    object CDSCuponesFACTURA_TIPO: TStringField
      FieldName = 'FACTURA_TIPO'
      FixedChar = True
      Size = 2
    end
    object CDSCuponesFACTURA_CLASE: TStringField
      FieldName = 'FACTURA_CLASE'
      FixedChar = True
      Size = 2
    end
    object CDSCuponesFACTURA_NROCPBTE: TStringField
      FieldName = 'FACTURA_NROCPBTE'
      Size = 13
    end
    object CDSCuponesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object CDSCuponesMUESTRAIVA: TStringField
      DisplayLabel = 'Cond.Iva'
      FieldName = 'MUESTRAIVA'
      Size = 15
    end
    object CDSCuponesMuestraComprobante: TStringField
      DisplayLabel = 'Comprobante'
      FieldKind = fkLookup
      FieldName = 'MuestraComprobante'
      LookupDataSet = QComprobantes
      LookupKeyFields = 'ID_COMPROBANTE'
      LookupResultField = 'DENOMINACION'
      KeyFields = 'ID_FACTURAPORDEFECTO'
      Size = 15
      Lookup = True
    end
    object CDSCuponesNOMBRE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOMBRE'
      Size = 35
    end
  end
  object QCupones: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select ca.*,c.id_facturapordefecto,c.nombre,'
      'i.detalle as MuestraIva from cupon_abonos ca'
      'left join clientes c on c.codigo=ca.cliente'
      'left join inscripcion i on i.codigo=c.condicion_iva'
      
        'where ((ca.factura_id is null) or (ca.factura_id=0) or (ca.factu' +
        'ra_id=-1))'
      'order by c.nombre')
    Left = 512
    Top = 408
    object QCuponesID: TIntegerField
      FieldName = 'ID'
    end
    object QCuponesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QCuponesFECHA_GENERACION: TDateTimeField
      FieldName = 'FECHA_GENERACION'
    end
    object QCuponesFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QCuponesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object QCuponesPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 6
    end
    object QCuponesFECHA_VTO1: TDateTimeField
      FieldName = 'FECHA_VTO1'
    end
    object QCuponesFECHA_VTO2: TDateTimeField
      FieldName = 'FECHA_VTO2'
    end
    object QCuponesIMPORTE_1: TFloatField
      FieldName = 'IMPORTE_1'
    end
    object QCuponesIMPORTE_2: TFloatField
      FieldName = 'IMPORTE_2'
    end
    object QCuponesCODIGOBARRA1: TStringField
      FieldName = 'CODIGOBARRA1'
      Size = 54
    end
    object QCuponesCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QCuponesFACTURA_ID: TIntegerField
      FieldName = 'FACTURA_ID'
    end
    object QCuponesFACTURA_FECHA: TDateTimeField
      FieldName = 'FACTURA_FECHA'
    end
    object QCuponesFACTURA_TIPO: TStringField
      FieldName = 'FACTURA_TIPO'
      FixedChar = True
      Size = 2
    end
    object QCuponesFACTURA_CLASE: TStringField
      FieldName = 'FACTURA_CLASE'
      FixedChar = True
      Size = 2
    end
    object QCuponesFACTURA_NROCPBTE: TStringField
      FieldName = 'FACTURA_NROCPBTE'
      Size = 13
    end
    object QCuponesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object QCuponesMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      Size = 15
    end
    object QCuponesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
  end
  object QComprobantes: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select c.* from comprobantes c'
      'where c.tipo_comprob='#39'FC'#39' and'
      '      c.sucursal=:sucursal and'
      '     c.compra_venta='#39'V'#39)
    Left = 584
    Top = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptUnknown
      end>
    object QComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'DBMAIN.COMPROBANTES.ID_COMPROBANTE'
    end
    object QComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      FixedChar = True
      Size = 2
    end
    object QComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.CLASE_COMPROB'
      FixedChar = True
      Size = 2
    end
    object QComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'DBMAIN.COMPROBANTES.SUCURSAL'
    end
    object QComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'DBMAIN.COMPROBANTES.PREFIJO'
      Size = 4
    end
    object QComprobantesNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'DBMAIN.COMPROBANTES.NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'DBMAIN.COMPROBANTES.NUMERO'
      Size = 8
    end
    object QComprobantesTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'DBMAIN.COMPROBANTES.TOMA_NRO_DE'
    end
    object QComprobantesAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.AFECTA_IVA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'DBMAIN.COMPROBANTES.AFECTA_CC'
      FixedChar = True
      Size = 1
    end
    object QComprobantesDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.DESGLOZA_IVA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'DBMAIN.COMPROBANTES.COMPRA_VENTA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
    object QComprobantesREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
    object QComprobantesIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'DBMAIN.COMPROBANTES.IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QComprobantesFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'DBMAIN.COMPROBANTES.FISCAL'
      FixedChar = True
      Size = 1
    end
    object QComprobantesNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'DBMAIN.COMPROBANTES.NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobantesPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'DBMAIN.COMPROBANTES.PENDIENTEIMPRESION'
      FixedChar = True
      Size = 1
    end
    object QComprobantesLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'DBMAIN.COMPROBANTES.LINEAS_DETALLE'
    end
    object QComprobantesCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'DBMAIN.COMPROBANTES.CALCULA_IVA_ARTICULOS'
      FixedChar = True
      Size = 1
    end
  end
  object QSucursal: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select codigo,detalle from sucursal')
    Left = 224
    Top = 248
    object QSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 232
    Top = 200
  end
end

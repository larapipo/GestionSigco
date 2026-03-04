object DatosClientes: TDatosClientes
  OnDestroy = DataModuleDestroy
  Height = 852
  Width = 1093
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 8
  end
  object DSPLdr: TDataSetProvider
    DataSet = DMMain_FD.QLDRCliente
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 56
  end
  object DSPCondVenta: TDataSetProvider
    DataSet = DMMain_FD.QCondVentaCli
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 102
  end
  object DSPLstClientes: TDataSetProvider
    DataSet = QLstClientes
    Options = [poAllowCommandText]
    Left = 696
    Top = 450
  end
  object DSBuscaFc: TDataSource
    DataSet = CDSBuscaFC
    Left = 173
    Top = 536
  end
  object DSListaPrecios: TDataSource
    DataSet = CDSListaPrecios
    Left = 402
    Top = 208
  end
  object DSBuscaFO: TDataSource
    DataSet = CDSBuscaFO
    Left = 173
    Top = 311
  end
  object CDSCondVenta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCondVenta'
    BeforePost = CDSCondVentaBeforePost
    OnNewRecord = CDSCondVentaNewRecord
    Left = 104
    Top = 104
    object CDSCondVentaCODIGOPAGO: TIntegerField
      DisplayLabel = 'Cod.'
      DisplayWidth = 6
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnSetText = CDSCondVentaCODIGOPAGOSetText
    end
    object CDSCondVentaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 22
      FieldName = 'DETALLE'
      ProviderFlags = []
    end
    object CDSCondVentaDESCUENTO: TFloatField
      DisplayLabel = 'Dscto.'
      DisplayWidth = 8
      FieldName = 'DESCUENTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCondVentaPOR_DEFECTO: TStringField
      DisplayLabel = 'Def.'
      DisplayWidth = 4
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 6
    end
    object CDSCondVentaDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
      Visible = False
    end
    object CDSCondVentaDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
      Visible = False
    end
  end
  object DSFCondVenta: TDataSource
    DataSet = CDSCondVenta
    Left = 181
    Top = 104
  end
  object DSCoeficientes: TDataSource
    DataSet = CDSCoeficientes
    Left = 827
    Top = 504
  end
  object DSPCoeficientes: TDataSetProvider
    DataSet = QCoeficientes
    Options = []
    Left = 696
    Top = 502
  end
  object CDSCoeficientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCoeficientes'
    OnNewRecord = CDSCoeficientesNewRecord
    Left = 752
    Top = 504
    object CDSCoeficientesID_LISTA_PRECIO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Lista Precio'
      DisplayWidth = 10
      FieldName = 'ID_LISTA_PRECIO'
    end
    object CDSCoeficientesCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Visible = False
      Size = 6
    end
    object CDSCoeficientesPOR_DEFECTO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Def.'
      FieldName = 'POR_DEFECTO'
      FixedChar = True
      Size = 1
    end
    object CDSCoeficientesCOEFICIENTE: TFloatField
      DisplayLabel = 'Coeficiente'
      FieldName = 'COEFICIENTE'
      Required = True
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
  end
  object DSBuscaZonas: TDataSource
    DataSet = CDSBuscaZonas
    Left = 899
    Top = 223
  end
  object DSBuscaVendedores: TDataSource
    DataSet = CDSBuscaVendedores
    Left = 899
    Top = 288
  end
  object DSLstClientes: TDataSource
    DataSet = CDSLstClientes
    Left = 827
    Top = 448
  end
  object CDSLstClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'zona'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'vendedor'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Cobrador'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CATEGORIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'activo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'tiposervicio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idprestador'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IDGRUPOCUPON'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLstClientes'
    OnNewRecord = CDSCoeficientesNewRecord
    Left = 752
    Top = 448
    object CDSLstClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSLstClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSLstClientesRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSLstClientesDIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSLstClientesTELEFONO_COMERCIAL_1: TStringField
      DisplayLabel = 'Telefono 1'
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSLstClientesTELEFONO_COMERCIAL_2: TStringField
      DisplayLabel = 'Telefono 2'
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSLstClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Visible = False
    end
    object CDSLstClientesNRO_DE_CUIT: TStringField
      DisplayLabel = 'Nro.Cuit'
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSLstClientesZONA: TIntegerField
      DisplayLabel = 'Id Zona'
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Visible = False
    end
    object CDSLstClientesVENDEDOR: TStringField
      DisplayLabel = 'Cod.Vendedor'
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSLstClientesCORREOELECTRONICO: TStringField
      DisplayLabel = 'e mail'
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object CDSLstClientesCONTACTO: TStringField
      DisplayLabel = 'Contacto'
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 50
    end
    object CDSLstClientesTELEFONO_CONTACTO: TStringField
      DisplayLabel = 'Contacto Te'
      FieldName = 'TELEFONO_CONTACTO'
      Origin = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object CDSLstClientesOBSERVACIONES: TMemoField
      DisplayLabel = 'Obs.'
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object CDSLstClientesCPOSTAL: TStringField
      DisplayLabel = 'C.Postal'
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      ProviderFlags = []
      Size = 8
    end
    object CDSLstClientesLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
      Size = 15
    end
    object CDSLstClientesMUESTRAVENDEDOR: TStringField
      DisplayLabel = 'Nom.Vendedor'
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSLstClientesMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSLstClientesMUESTRAZONA: TStringField
      DisplayLabel = 'Zona'
      FieldName = 'MUESTRAZONA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 25
    end
    object CDSLstClientesMUESTRAINSCRIPCION: TStringField
      DisplayLabel = 'Cond.IVA'
      FieldName = 'MUESTRAINSCRIPCION'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object CDSLstClientesMUESTRACOBRADOR: TStringField
      DisplayLabel = 'Nom.Cobrador'
      FieldName = 'MUESTRACOBRADOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSLstClientesTELEDISCADO: TStringField
      DisplayLabel = 'Telediscado'
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object CDSLstClientesCATEGORIA: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object CDSLstClientesMUESTRATIPOSERVICIO: TStringField
      DisplayLabel = 'Tipo Servicio'
      FieldName = 'MUESTRATIPOSERVICIO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 25
    end
    object CDSLstClientesTELEFONO_CELULAR: TStringField
      DisplayLabel = 'Te.Celular'
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSLstClientesLISTAPRECIOS: TIntegerField
      DisplayLabel = 'Lista'
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
    end
    object CDSLstClientesNRODOCUMENTO: TStringField
      DisplayLabel = 'Nro Documento'
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object CDSLstClientesTIPODOCUMENTO: TSmallintField
      DisplayLabel = 'Tipo Doc'
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object CDSLstClientesMUESTRAPRESTADOR: TStringField
      DisplayLabel = 'Prestador'
      FieldName = 'MUESTRAPRESTADOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 45
    end
    object CDSLstClientesOBSERVACIONES1: TStringField
      DisplayLabel = 'Observaciones 1'
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object CDSLstClientesOBSERVACIONES2: TStringField
      DisplayLabel = 'Observaciones 2'
      FieldName = 'OBSERVACIONES2'
      Origin = 'OBSERVACIONES2'
      Size = 60
    end
    object CDSLstClientesCON_MONITOREO: TStringField
      DisplayLabel = 'Con Monitoreo'
      FieldName = 'CON_MONITOREO'
      Origin = 'CON_MONITOREO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSLstClientesCON_HOSTING: TStringField
      DisplayLabel = 'Con Hosting'
      FieldName = 'CON_HOSTING'
      Origin = 'CON_HOSTING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSLstClientesCON_GPRS: TStringField
      DisplayLabel = 'Con Gprs'
      FieldName = 'CON_GPRS'
      Origin = 'CON_GPRS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSLstClientesTARJETA_CLIENTE: TStringField
      DisplayLabel = 'Tarjeta Cliente'
      FieldName = 'TARJETA_CLIENTE'
      Origin = 'TARJETA_CLIENTE'
    end
    object CDSLstClientesMUESTRACOMPCTACTA: TStringField
      DisplayLabel = 'Comprob.Cta.Cte'
      FieldName = 'MUESTRACOMPCTACTA'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object CDSLstClientesMUESTRAGRUPOABONADO: TStringField
      DisplayLabel = 'Grupo Abono'
      FieldName = 'MUESTRAGRUPOABONADO'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object CDSLstClientesMUESTRATC: TStringField
      DisplayLabel = 'Tarjeta de Cre.'
      FieldName = 'MUESTRATC'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object CDSLstClientesNUMEROTARJETA: TStringField
      DisplayLabel = 'Nro de Tarjeta'
      FieldName = 'NUMEROTARJETA'
      Origin = 'NRO_TARJETA_C'
    end
    object CDSLstClientesNUMMEROSEGURIDADTC: TStringField
      DisplayLabel = 'Cod.Segurirdad'
      FieldName = 'NUMMEROSEGURIDADTC'
      Origin = 'NRO_SEG_TC'
      FixedChar = True
      Size = 4
    end
    object CDSLstClientesCUENTA_OPERATIVA: TStringField
      DisplayLabel = 'Cta.Operativa'
      FieldName = 'CUENTA_OPERATIVA'
      Origin = 'CUENTA_OPERATIVA'
      Size = 10
    end
    object CDSLstClientesMUESTRALISTAPRECIOS: TStringField
      DisplayLabel = 'Lst de Prcecios'
      FieldName = 'MUESTRALISTAPRECIOS'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object CDSLstClientesVENCIMIENTOTC: TDateField
      DisplayLabel = 'Vto.Tarjet Cred'
      FieldName = 'VENCIMIENTOTC'
      Origin = 'VENCIMIENTO_TC'
    end
    object CDSLstClientesFECHAULTIMACOMPRA: TDateField
      DisplayLabel = 'Fecha Ultima Compra'
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
  end
  object DSPLstConVenta: TDataSetProvider
    DataSet = QLstCondVenta
    Options = [poAllowCommandText]
    Left = 696
    Top = 394
  end
  object CDSLstCondVenta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGOCLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DSLstClientes
    PacketRecords = 0
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLstConVenta'
    OnNewRecord = CDSCoeficientesNewRecord
    Left = 776
    Top = 392
    object CDSLstCondVentaCODIGOPAGO: TIntegerField
      DisplayLabel = 'Cod.Pago'
      DisplayWidth = 10
      FieldName = 'CODIGOPAGO'
      Visible = False
    end
    object CDSLstCondVentaMUESTRATIPOPAGO: TStringField
      DisplayLabel = 'Tipo Pago'
      DisplayWidth = 25
      FieldName = 'MUESTRATIPOPAGO'
      Visible = False
      Size = 15
    end
    object CDSLstCondVentaDESCUENTO: TFloatField
      DisplayLabel = '% Dscto.'
      DisplayWidth = 20
      FieldName = 'DESCUENTO'
      Visible = False
    end
    object CDSLstCondVentaPOR_DEFECTO: TStringField
      DisplayLabel = 'x Def'
      DisplayWidth = 6
      FieldName = 'POR_DEFECTO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSLstCondVentaCODIGOCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 10
      FieldName = 'CODIGOCLIENTE'
      Visible = False
      Size = 6
    end
  end
  object DSPGruposAbonos: TDataSetProvider
    DataSet = QGruposAbonos
    Options = [poAllowCommandText]
    Left = 567
    Top = 277
  end
  object CDSGruposAbonos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGruposAbonos'
    OnNewRecord = CDSGruposAbonosNewRecord
    Left = 645
    Top = 272
    object CDSGruposAbonosID_CUPON_GRUPO: TIntegerField
      FieldName = 'ID_CUPON_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnSetText = CDSGruposAbonosID_CUPON_GRUPOSetText
    end
    object CDSGruposAbonosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSGruposAbonosDETALLE: TStringField
      FieldName = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object CDSGruposAbonosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      ProviderFlags = []
    end
    object CDSGruposAbonosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      ProviderFlags = []
    end
  end
  object DSBuscaND: TDataSource
    DataSet = CDSBuscaND
    Left = 173
    Top = 424
  end
  object DSBuscaNC: TDataSource
    DataSet = CDSBuscaNC
    Left = 173
    Top = 480
  end
  object DSCategorias: TDataSource
    DataSet = CDSCategorias
    Left = 616
    Top = 64
  end
  object DSBuscaTk: TDataSource
    DataSet = CDSBuscaTk
    Left = 173
    Top = 372
  end
  object DSPPostal: TDataSetProvider
    DataSet = DMMain_FD.QPostal
    Options = []
    Left = 256
    Top = 112
  end
  object CDSPostal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPostal'
    Left = 336
    Top = 112
    object CDSPostalID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Required = True
    end
    object CDSPostalCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
      Required = True
      Size = 8
    end
    object CDSPostalDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
    object CDSPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object CDSPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object DSPFPago: TDataSetProvider
    DataSet = DMMain_FD.QFPago
    Options = []
    Left = 256
    Top = 160
  end
  object CDSFPago: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFPago'
    Left = 336
    Top = 160
    object CDSFPagoCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Required = True
      Visible = False
    end
    object CDSFPagoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 30
      FieldName = 'DETALLE'
      Required = True
      Visible = False
    end
    object CDSFPagoDIAS: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'DIAS'
      Visible = False
    end
    object CDSFPagoDESCUENTO: TFloatField
      DisplayLabel = '% Desc.'
      FieldName = 'DESCUENTO'
      Visible = False
    end
  end
  object DSPPersonal: TDataSetProvider
    DataSet = DMMain_FD.QPersonal
    Options = []
    Left = 256
    Top = 256
  end
  object CDSPersonal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPersonal'
    Left = 336
    Top = 256
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object CDSPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Required = True
    end
  end
  object DSPBuscaVendedor: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Options = []
    Left = 256
    Top = 64
  end
  object CDSBuscaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedor'
    Left = 336
    Top = 64
    object CDSBuscaVendedorCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaVendedorCOMISION: TFloatField
      DisplayLabel = '%'
      DisplayWidth = 10
      FieldName = 'COMISION'
      Required = True
    end
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPClientes'
    BeforePost = CDSClientesBeforePost
    OnNewRecord = CDSClientesNewRecord
    Left = 96
    Top = 8
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSClientesCodigoSetText
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      OnSetText = CDSClientesNombreSetText
      Size = 35
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      OnSetText = CDSClientesNro_de_CUITSetText
      EditMask = '00-00000000-0;1;_'
      Size = 13
    end
    object CDSClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      OnSetText = CDSClientesid_cod_postalSetText
    end
    object CDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      OnSetText = CDSClientesVENDEDORSetText
      Size = 6
    end
    object CDSClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      OnSetText = CDSClientesCOBRADORSetText
      Size = 6
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object CDSClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      FixedChar = True
      Size = 1
    end
    object CDSClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object CDSClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
    end
    object CDSClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object CDSClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      OnChange = CDSClientesSUCURSALChange
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
    end
    object CDSClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
    end
    object CDSClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
    end
    object CDSClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
    end
    object CDSClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Size = 15
    end
    object CDSClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object CDSClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
    end
    object CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
    end
    object CDSClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
    end
    object CDSClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object CDSClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object CDSClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object CDSClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CDSClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Size = 25
    end
    object CDSClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Size = 25
    end
    object CDSClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Size = 40
    end
    object CDSClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Size = 10
    end
    object CDSClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Size = 10
    end
    object CDSClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Size = 10
    end
    object CDSClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesMUESTRATELEDISCADO: TStringField
      FieldName = 'MUESTRATELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object CDSClientesMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSClientesMUESTRACOBRADOR: TStringField
      FieldName = 'MUESTRACOBRADOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Required = True
      OnChange = CDSClientesTIPOABONOChange
      FixedChar = True
      Size = 1
    end
    object CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
    end
    object CDSClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
    end
    object CDSClientesFRANQUICIA: TStringField
      FieldName = 'FRANQUICIA'
      FixedChar = True
      Size = 1
    end
    object CDSClientesDIAS_MAYOR_30: TIntegerField
      FieldName = 'DIAS_MAYOR_30'
    end
    object CDSClientesID_DEPOSITO_FRANQUICIA: TIntegerField
      FieldName = 'ID_DEPOSITO_FRANQUICIA'
    end
    object CDSClientesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object CDSClientesIMPRIME_SALDOFACTURA: TStringField
      FieldName = 'IMPRIME_SALDOFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCORTAR_SERVICIO: TStringField
      FieldName = 'CORTAR_SERVICIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCON_PLANPAGO: TStringField
      FieldName = 'CON_PLANPAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesDIRECCION_POSTAL: TStringField
      FieldName = 'DIRECCION_POSTAL'
      Size = 35
    end
    object CDSClientesCALLE_1: TStringField
      FieldName = 'CALLE_1'
      Size = 35
    end
    object CDSClientesCALLE_2: TStringField
      FieldName = 'CALLE_2'
      Size = 35
    end
    object CDSClientesVENDER_DE_CTDO: TStringField
      FieldName = 'VENDER_DE_CTDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Size = 100
    end
    object CDSClientesPRESENTO_F8001: TStringField
      FieldName = 'PRESENTO_F8001'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesDESDE_F8001: TSQLTimeStampField
      FieldName = 'DESDE_F8001'
    end
    object CDSClientesHASTA_F8001: TSQLTimeStampField
      FieldName = 'HASTA_F8001'
    end
    object CDSClientesID_TARJETACREDITO: TIntegerField
      FieldName = 'ID_TARJETACREDITO'
      Required = True
    end
    object CDSClientesNRO_TARJETA_C: TStringField
      FieldName = 'NRO_TARJETA_C'
      EditMask = '0000-0000-0000-0000;0;_'
    end
    object CDSClientesNRO_SEG_TC: TStringField
      FieldName = 'NRO_SEG_TC'
      FixedChar = True
      Size = 4
    end
    object CDSClientesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object CDSClientesNRO_CTA_BCO: TStringField
      FieldName = 'NRO_CTA_BCO'
      Size = 22
    end
    object CDSClientesCODIGO_COORPORATIVO: TStringField
      FieldName = 'CODIGO_COORPORATIVO'
      Size = 6
    end
    object CDSClientesMUESTRACTACOORPORATIVA: TStringField
      FieldName = 'MUESTRACTACOORPORATIVA'
      ProviderFlags = []
      Size = 35
    end
    object CDSClientesCUENTA_OPERATIVA: TStringField
      FieldName = 'CUENTA_OPERATIVA'
      OnGetText = CDSClientesCUENTA_OPERATIVAGetText
      Size = 10
    end
    object CDSClientesTARJETA_CLIENTE: TStringField
      FieldName = 'TARJETA_CLIENTE'
    end
    object CDSClientesVENCIMIENTO_TC: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_TC'
    end
    object CDSClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object CDSClientesCON_MONITOREO: TStringField
      FieldName = 'CON_MONITOREO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCON_GPRS: TStringField
      FieldName = 'CON_GPRS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCON_HOSTING: TStringField
      FieldName = 'CON_HOSTING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesCOMUNITARIO: TStringField
      FieldName = 'COMUNITARIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesID_PRESTADOR: TIntegerField
      FieldName = 'ID_PRESTADOR'
    end
    object CDSClientesID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
    end
    object CDSClientesNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object CDSClientesMES_ADICIONAL: TIntegerField
      FieldName = 'MES_ADICIONAL'
    end
    object CDSClientesMES_SEMESTRAL: TIntegerField
      FieldName = 'MES_SEMESTRAL'
    end
    object CDSClientesMOROSO: TStringField
      FieldName = 'MOROSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesPLANTILLA_CIVA: TStringField
      FieldName = 'PLANTILLA_CIVA'
      FixedChar = True
      Size = 1
    end
    object CDSClientesOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Size = 60
    end
    object CDSClientesOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Size = 60
    end
    object CDSClientesAVISO: TStringField
      FieldName = 'AVISO'
      Size = 250
    end
    object CDSClientesRUBRO: TIntegerField
      FieldName = 'RUBRO'
    end
    object CDSClientesMUESTRAIDGARANTE: TIntegerField
      FieldName = 'MUESTRAIDGARANTE'
      ProviderFlags = []
    end
    object CDSClientesID_PLANTILLA: TIntegerField
      FieldName = 'ID_PLANTILLA'
      Required = True
    end
    object CDSClientesENVIAR_CPTE_MAIL: TStringField
      FieldName = 'ENVIAR_CPTE_MAIL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesNRO_IP: TStringField
      FieldName = 'NRO_IP'
      EditMask = '999.999.999.999;0;_'
      Size = 15
    end
    object CDSClientesCHEQUES: TStringField
      FieldName = 'CHEQUES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSClientesID_ADMINISTRACION: TIntegerField
      FieldName = 'ID_ADMINISTRACION'
      Required = True
    end
    object CDSClientesNICKNAME_MERCADOPAGO: TStringField
      FieldName = 'NICKNAME_MERCADOPAGO'
      Size = 50
    end
    object CDSClientesFECHA_INACTIVO: TSQLTimeStampField
      FieldName = 'FECHA_INACTIVO'
    end
    object CDSClientesPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSClientesESQUEMALISTA: TIntegerField
      FieldName = 'ESQUEMALISTA'
      Required = True
    end
  end
  object CDSLdr: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLdr'
    OnNewRecord = CDSLdrNewRecord
    OnPostError = CDSLdrPostError
    Left = 96
    Top = 56
    object CDSLdrCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSLdrCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLdrNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSLdrDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSLdrLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 40
    end
    object CDSLdrPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
    object CDSLdrEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 250
    end
  end
  object DSLdr: TDataSource
    AutoEdit = False
    DataSet = CDSLdr
    Left = 173
    Top = 56
  end
  object DSPBuscaZona: TDataSetProvider
    DataSet = DMBuscadores.QBuscaZona
    Options = []
    Left = 24
    Top = 150
  end
  object CDSBuscaZona: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaZona'
    BeforePost = CDSCondVentaBeforePost
    OnNewRecord = CDSCondVentaNewRecord
    Left = 96
    Top = 152
    object CDSBuscaZonaID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object CDSBuscaZonaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object DSZona: TDataSource
    DataSet = CDSBuscaZona
    Left = 173
    Top = 152
  end
  object DSPBuscaInscripcion: TDataSetProvider
    DataSet = DMBuscadores.QBuscaInscripcion
    Options = []
    Left = 24
    Top = 206
  end
  object CDSBuscaInscripcion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaInscripcion'
    BeforePost = CDSCondVentaBeforePost
    OnNewRecord = CDSCondVentaNewRecord
    Left = 96
    Top = 200
    object CDSBuscaInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSBuscaInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object CDSBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
  end
  object DSBuscaInscripcion: TDataSource
    DataSet = CDSBuscaInscripcion
    Left = 173
    Top = 200
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 24
    Top = 254
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    BeforePost = CDSCondVentaBeforePost
    OnNewRecord = CDSCondVentaNewRecord
    Left = 96
    Top = 256
    object CDSBuscaSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSBuscaSucursal: TDataSource
    DataSet = CDSBuscaSucursal
    Left = 173
    Top = 256
  end
  object QUltimoLdr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Max(Codigo_ldr) as CodigoLdr from LdrCliente where Codigo' +
        '_Cliente=:Codigo')
    Left = 417
    Top = 64
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QUltimoLdrCODIGOLDR: TIntegerField
      FieldName = 'CODIGOLDR'
    end
  end
  object QBuscaCodigo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo from clientes where codigo=:codigo')
    Left = 432
    Top = 120
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object CDSBuscaFC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaFC'
    Left = 96
    Top = 536
    object CDSBuscaFCID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaFCTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaFCCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaFCDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaFCSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaFCLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaFCPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaFCNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaFCNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
  end
  object DSPBuscaFC: TDataSetProvider
    DataSet = DMBuscadores.QBuscaFC_Vta
    Options = [poAllowCommandText]
    Left = 24
    Top = 536
  end
  object CDSBuscaNC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaNC'
    Left = 96
    Top = 480
    object CDSBuscaNCID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaNCTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaNCCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaNCDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaNCSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaNCLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaNCPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaNCNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaNCNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
  end
  object DSPBuscaNC: TDataSetProvider
    DataSet = DMBuscadores.QBuscaNC_Vta
    Options = [poAllowCommandText]
    Left = 24
    Top = 480
  end
  object DSPBuscaND: TDataSetProvider
    DataSet = DMBuscadores.QBuscaND_Vta
    Options = [poAllowCommandText]
    Left = 24
    Top = 424
  end
  object CDSBuscaND: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaND'
    Left = 96
    Top = 424
    object CDSBuscaNDID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaNDTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaNDCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaNDDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaNDSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaNDLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaNDPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaNDNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaNDNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
  end
  object DSPBuscaTk: TDataSetProvider
    DataSet = DMBuscadores.QBuscaTk_Vta
    Options = [poAllowCommandText]
    Left = 24
    Top = 368
  end
  object CDSBuscaTk: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_COMPROBANTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_COMPROB'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CLASE_COMPROB'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DENOMINACION'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
      end
      item
        Name = 'LETRA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PREFIJO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NUMERARCION_PROPIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'TOMA_NRO_DE'
        DataType = ftInteger
      end
      item
        Name = 'AFECTA_IVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AFECTA_CC'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESGLOZA_IVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COMPRA_VENTA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COPIAS'
        DataType = ftInteger
      end
      item
        Name = 'REPORTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'IMPRIME'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FISCAL'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOMBREIMPRESORA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PENDIENTEIMPRESION'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LINEAS_DETALLE'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'CALCULA_IVA_ARTICULOS'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DEFECTO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaTk'
    StoreDefs = True
    Left = 96
    Top = 368
    object CDSBuscaTkID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaTkTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaTkCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
    end
    object CDSBuscaTkDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaTkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaTkLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaTkPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaTkNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaTkNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
  end
  object DSPBuscaFO: TDataSetProvider
    DataSet = DMBuscadores.QBuscaFO_Vta
    Options = [poAllowCommandText]
    Left = 24
    Top = 312
  end
  object CDSBuscaFO: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaFO'
    Left = 96
    Top = 312
    object CDSBuscaFOID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaFOTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaFOCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSBuscaFODENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaFOSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaFOLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaFOPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaFONUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaFONUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
  end
  object QBuscaCondiciondePago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select min(codigo) from f_pago')
    Left = 424
    Top = 16
  end
  object QFacClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Max(id_fc) from FcVtaCab where Codigo=:Codigo')
    Left = 488
    Top = 8
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QPreClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Max(id_pr) from PresCab where Codigo=:Codigo')
    Left = 616
    Top = 8
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QRecibos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(r.id_rc) from recibos r where r.codigo=:codigo')
    Left = 680
    Top = 8
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'MAX'
    end
  end
  object CDSCategorias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCategorias'
    Left = 544
    Top = 64
    object CDSCategoriasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCategoriasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
  end
  object DSPCategorias: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCategorias
    Options = []
    Left = 480
    Top = 64
  end
  object QMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select max(m.id_movccvta) from movccvta m where m.cliente=:codig' +
        'o')
    Left = 744
    Top = 8
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSBuscaSucursales: TDataSource
    DataSet = CDSBuscaSucursales
    Left = 899
    Top = 344
  end
  object CDSListaPrecios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'uso'
        ParamType = ptInput
        Size = 2
        Value = '*'
      end>
    ProviderName = 'DSPListaPrecios'
    Left = 336
    Top = 208
    object CDSListaPreciosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSPListaPrecios: TDataSetProvider
    DataSet = DMBuscadores.QBuscaListaPrecios
    Options = []
    Left = 256
    Top = 208
  end
  object QTasaIIBB: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select tpr.tasa_percepcion,tpr.tasa_retencion from TABLA_PERCEPC' +
        'ION_RETENCION tpr'
      'where tpr.cuit=:cuit')
    Left = 488
    Top = 120
    ParamData = <
      item
        Name = 'cuit'
        DataType = ftString
        ParamType = ptInput
      end>
    object QTasaIIBBTASA_PERCEPCION: TFloatField
      FieldName = 'TASA_PERCEPCION'
    end
    object QTasaIIBBTASA_RETENCION: TFloatField
      FieldName = 'TASA_RETENCION'
    end
  end
  object QGrupos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select g.id,g.detalle,g.precio1,g.precio2 from cupon_abonos_grup' +
        'os g'
      'where g.id=:id')
    Left = 560
    Top = 121
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QGruposID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QGruposDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 40
    end
    object QGruposPRECIO1: TFloatField
      FieldName = 'PRECIO1'
    end
    object QGruposPRECIO2: TFloatField
      FieldName = 'PRECIO2'
    end
  end
  object CDSBuscaGrupoAbonos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaGrupoAbonos'
    Left = 560
    Top = 176
    object CDSBuscaGrupoAbonosID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaGrupoAbonosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 50
      FieldName = 'DETALLE'
      Size = 40
    end
    object CDSBuscaGrupoAbonosPRECIO1: TFloatField
      DisplayLabel = 'Precio 1'
      DisplayWidth = 20
      FieldName = 'PRECIO1'
      DisplayFormat = ',0.00'
    end
    object CDSBuscaGrupoAbonosPRECIO2: TFloatField
      DisplayLabel = 'Precio 2'
      DisplayWidth = 20
      FieldName = 'PRECIO2'
      DisplayFormat = ',0.00'
    end
  end
  object DSPBuscaGrupoAbonos: TDataSetProvider
    DataSet = DMBuscadores.QBuscaGrupoAbonos
    Options = []
    Left = 488
    Top = 176
  end
  object QGruposAbonos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.*,g.detalle,g.precio1,g.precio2 from CUPON_ABONOS_GRILL' +
        'A c'
      'left join cupon_abonos_grupos g on g.id=c.id_cupon_grupo'
      'where c.cliente=:codigo')
    Left = 480
    Top = 272
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QGruposAbonosID_CUPON_GRUPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUPON_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QGruposAbonosCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object QGruposAbonosDETALLE: TStringField
      DisplayWidth = 30
      FieldName = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object QGruposAbonosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      ProviderFlags = []
    end
    object QGruposAbonosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      ProviderFlags = []
    end
  end
  object QLstCondVenta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cv.*,f.detalle as MuestraTipoPago from condventa  cv'
      'left join F_pago f on f.codigo=cv.codigopago'
      'where cv.codigocliente=:codigo and cv.por_defecto='#39'S'#39)
    Left = 632
    Top = 393
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QLstCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Required = True
      Size = 6
    end
    object QLstCondVentaCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      Required = True
    end
    object QLstCondVentaDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QLstCondVentaPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QLstCondVentaMUESTRATIPOPAGO: TStringField
      FieldName = 'MUESTRATIPOPAGO'
    end
  end
  object QCoeficientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      'select * from coeficientes_precios where codigo=:codigo')
    Left = 632
    Top = 504
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QCoeficientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QCoeficientesID_LISTA_PRECIO: TIntegerField
      FieldName = 'ID_LISTA_PRECIO'
      Required = True
    end
    object QCoeficientesPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCoeficientesCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Required = True
    end
  end
  object CDSBuscaZonas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaZonas'
    Left = 824
    Top = 224
    object CDSBuscaZonasID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object CDSBuscaZonasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object DSPBuscaZonas: TDataSetProvider
    DataSet = DMBuscadores.QBuscaZona
    Options = []
    Left = 768
    Top = 224
  end
  object CDSBuscaVendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedores'
    Left = 824
    Top = 280
    object CDSBuscaVendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSPBuscaVendedores: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Options = []
    Left = 768
    Top = 280
  end
  object CDSBuscaSucursales: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursales'
    Left = 824
    Top = 328
    object CDSBuscaSucursalesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalesDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPBuscaSucursales: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 760
    Top = 328
  end
  object DSPBuscaCobrador: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCobradores
    Options = []
    Left = 256
    Top = 304
  end
  object CDSBuscaCobrador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCobrador'
    Left = 336
    Top = 304
    object CDSBuscaCobradorCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSBuscaCobradorNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object CDSBuscaCPostal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCPostal'
    Left = 336
    Top = 352
    object CDSBuscaCPostalDETALLE_POSTAL: TStringField
      DisplayLabel = 'Localidad'
      DisplayWidth = 40
      FieldName = 'DETALLE_POSTAL'
      Origin = 'DETALLE_POSTAL'
      Size = 25
    end
    object CDSBuscaCPostalCODIGO_POSTAL: TStringField
      DisplayLabel = 'C.Postal'
      DisplayWidth = 12
      FieldName = 'CODIGO_POSTAL'
      Origin = 'CODIGO_POSTAL'
      Size = 8
    end
    object CDSBuscaCPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      Size = 6
    end
    object CDSBuscaCPostalID_POSTAL: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaCPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
      Visible = False
    end
  end
  object DSPBuscaCPostal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCPostalFD
    Options = []
    Left = 256
    Top = 352
  end
  object DSPBuscaDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Options = []
    Left = 256
    Top = 417
  end
  object CDSBuscaDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaDeposito'
    Left = 344
    Top = 416
    object CDSBuscaDepositoNOMBRE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 25
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSBuscaDepositoID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
    end
  end
  object DSBuscaDeposito: TDataSource
    DataSet = CDSBuscaDeposito
    Left = 413
    Top = 416
  end
  object QTransporte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from transportes order by nombre')
    Left = 632
    Top = 552
  end
  object DSPTransporte: TDataSetProvider
    DataSet = QTransporte
    Options = []
    Left = 696
    Top = 552
  end
  object CDSTransporte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTransporte'
    Left = 760
    Top = 552
    object CDSTransporteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSTransporteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSTransporteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 50
    end
    object CDSTransporteTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 30
    end
    object CDSTransporteLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 50
    end
  end
  object DSTransporte: TDataSource
    DataSet = CDSTransporte
    Left = 832
    Top = 552
  end
  object DSGrupoAbonos: TDataSource
    DataSet = CDSGruposAbonos
    Left = 715
    Top = 275
  end
  object DSPBuscaCategorias: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCategorias
    Options = []
    Left = 352
    Top = 520
  end
  object CDSBuscaCategorias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCategorias'
    Left = 448
    Top = 520
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
  end
  object DSBuscaCategorias: TDataSource
    DataSet = CDSBuscaCategorias
    Left = 536
    Top = 528
  end
  object DSPContrato: TDataSetProvider
    DataSet = DMMain_FD.QClienteContrato
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 592
  end
  object CDSContrato: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPContrato'
    OnNewRecord = CDSContratoNewRecord
    Left = 96
    Top = 592
    object CDSContratoCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSContratoNRO_CONTRATO: TStringField
      FieldName = 'NRO_CONTRATO'
      OnSetText = CDSContratoNRO_CONTRATOSetText
      EditMask = '0000000000;1;_'
      Size = 10
    end
    object CDSContratoTIPO_SERVICIO: TIntegerField
      FieldName = 'TIPO_SERVICIO'
    end
    object CDSContratoFECHA_SOLICITUD: TSQLTimeStampField
      FieldName = 'FECHA_SOLICITUD'
    end
    object CDSContratoFECHA_INSTALACION: TSQLTimeStampField
      FieldName = 'FECHA_INSTALACION'
    end
    object CDSContratoINCIO_SERVICIO: TSQLTimeStampField
      FieldName = 'INCIO_SERVICIO'
    end
    object CDSContratoLUGAR_INSTALACION: TStringField
      FieldName = 'LUGAR_INSTALACION'
      Size = 40
    end
    object CDSContratoCOSTO_INICAL: TFloatField
      FieldName = 'COSTO_INICAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSContratoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DSPClientesAnexos: TDataSetProvider
    DataSet = DMMain_FD.QClientesAnexos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 472
  end
  object CDSClientesAnexos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPClientesAnexos'
    OnNewRecord = CDSClientesAnexosNewRecord
    Left = 344
    Top = 472
    object CDSClientesAnexosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSClientesAnexosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesAnexosARCHIVO: TStringField
      DisplayLabel = 'Archivo'
      FieldName = 'ARCHIVO'
      Size = 200
    end
  end
  object DSClientesAnexos: TDataSource
    AutoEdit = False
    DataSet = CDSClientesAnexos
    Left = 405
    Top = 472
  end
  object ibgAnexo: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CLIENTES_ANEX'
    SystemGenerators = False
    Left = 496
    Top = 472
  end
  object QTipoServicio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from tipo_servicio ')
    Left = 704
    Top = 56
  end
  object DSPTipoServicio: TDataSetProvider
    DataSet = QTipoServicio
    Options = []
    Left = 768
    Top = 56
  end
  object CDSTipoServicio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTipoServicio'
    Left = 840
    Top = 56
    object CDSTipoServicioID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
    object CDSTipoServicioDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object DSTipoServicio: TDataSource
    DataSet = CDSTipoServicio
    Left = 896
    Top = 56
  end
  object DSPGrupoPlantillas: TDataSetProvider
    DataSet = QGruposPlantillas
    Options = []
    Left = 368
    Top = 576
  end
  object CDSGrupoPlantillas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPGrupoPlantillas'
    Left = 440
    Top = 576
    object CDSGrupoPlantillasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSGrupoPlantillasDETALLE: TStringField
      DisplayWidth = 33
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSGrupoPlantillasTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object DSGruposPlantillas: TDataSource
    DataSet = CDSGrupoPlantillas
    Left = 536
    Top = 584
  end
  object DSPlantillas: TDataSource
    DataSet = CDSPlantillas
    Left = 680
    Top = 320
  end
  object QPlantillas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select pc.codigo,pc.id,pcab.total from plantillas_clientes pc'
      'left join plantillas_cab pcab on pcab.id=pc.id'
      'where pc.codigo = :codigo')
    Left = 480
    Top = 320
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QPlantillasCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QPlantillasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPlantillasTOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = []
    end
  end
  object DSPPlantillas: TDataSetProvider
    DataSet = QPlantillas
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 320
  end
  object CDSPlantillas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPlantillas'
    BeforeInsert = CDSPlantillasBeforeInsert
    BeforeEdit = CDSPlantillasBeforeEdit
    BeforePost = CDSPlantillasBeforePost
    OnNewRecord = CDSPlantillasNewRecord
    Left = 616
    Top = 328
    object CDSPlantillasCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSPlantillasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPlantillasMUESTRAPLANTILLA: TStringField
      FieldKind = fkLookup
      FieldName = 'MUESTRAPLANTILLA'
      LookupDataSet = CDSGrupoPlantillas
      LookupKeyFields = 'ID'
      LookupResultField = 'DETALLE'
      KeyFields = 'ID'
      ProviderFlags = []
      OnChange = CDSPlantillasMUESTRAPLANTILLAChange
      Size = 45
      Lookup = True
    end
    object CDSPlantillasTOTAL: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
  end
  object QCondAbono: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from clientes_cond_abono where codigo=:codigo')
    Left = 632
    Top = 600
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QCondAbonoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCondAbonoCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QCondAbonoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
    object QCondAbonoDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Required = True
    end
    object QCondAbonoHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Required = True
    end
    object QCondAbonoPRECIO: TFloatField
      FieldName = 'PRECIO'
      Required = True
    end
    object QCondAbonoESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCondAbonoPRECIO_2: TFloatField
      FieldName = 'PRECIO_2'
    end
  end
  object DSPCondAbono: TDataSetProvider
    DataSet = QCondAbono
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 696
    Top = 608
  end
  object CDSCondAbono: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCondAbono'
    BeforePost = CDSCondAbonoBeforePost
    OnNewRecord = CDSCondAbonoNewRecord
    Left = 760
    Top = 608
    object CDSCondAbonoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCondAbonoCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSCondAbonoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 50
    end
    object CDSCondAbonoDESDE: TSQLTimeStampField
      DisplayLabel = 'Desde'
      FieldName = 'DESDE'
      Required = True
      OnSetText = CDSCondAbonoDESDESetText
      EditMask = '!00/00/0000;1;_'
    end
    object CDSCondAbonoHASTA: TSQLTimeStampField
      DisplayLabel = 'Hasta'
      FieldName = 'HASTA'
      Required = True
      OnSetText = CDSCondAbonoHASTASetText
      EditMask = '!00/00/0000;1;_'
    end
    object CDSCondAbonoPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSCondAbonoESTADO: TStringField
      DisplayLabel = 'Acti.'
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCondAbonoPRECIO_2: TFloatField
      DisplayLabel = 'Precio 2'
      FieldName = 'PRECIO_2'
    end
  end
  object DSCondAbono: TDataSource
    DataSet = CDSCondAbono
    Left = 832
    Top = 600
  end
  object ibgCondAbono: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CLIENTES_COND_ABONO'
    SystemGenerators = False
    Left = 560
    Top = 472
  end
  object QTCreditos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id_tc,t.descripcion from T_credito t'
      'order by t.descripcion')
    Left = 696
    Top = 112
  end
  object DSPTCredito: TDataSetProvider
    DataSet = QTCreditos
    Options = []
    Left = 760
    Top = 112
  end
  object CDSTCredito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTCredito'
    Left = 832
    Top = 112
    object CDSTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Required = True
    end
    object CDSTCreditoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
  end
  object DSTCredito: TDataSource
    DataSet = CDSTCredito
    Left = 904
    Top = 112
  end
  object QBancos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select b.id_banco,b.nombre from bancos b'
      'order by b.nombre')
    Left = 696
    Top = 168
  end
  object DSPBancos: TDataSetProvider
    DataSet = QBancos
    Options = []
    Left = 760
    Top = 168
  end
  object CDSBancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBancos'
    Left = 832
    Top = 168
    object CDSBancosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object CDSBancosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
    end
  end
  object DSBancos: TDataSource
    DataSet = CDSBancos
    Left = 904
    Top = 168
  end
  object DSBuscaCobrador: TDataSource
    DataSet = CDSBuscaCobrador
    Left = 395
    Top = 304
  end
  object DSPCodRipsa: TDataSetProvider
    DataSet = DMMain_FD.QCodRipsa
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 16
  end
  object CDSCodRipsa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCodRipsa'
    OnNewRecord = CDSCodRipsaNewRecord
    Left = 176
    Top = 8
    object CDSCodRipsaCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSCodRipsaCODIGO_RIPSA: TStringField
      FieldName = 'CODIGO_RIPSA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object DSCodRipsa: TDataSource
    DataSet = CDSCodRipsa
    Left = 331
    Top = 15
  end
  object QPrestadores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from prestadores order by nombre')
    Left = 488
    Top = 224
  end
  object DSPPrestadores: TDataSetProvider
    DataSet = QPrestadores
    Options = []
    Left = 567
    Top = 224
  end
  object CDSPrestadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPrestadores'
    Left = 639
    Top = 224
    object CDSPrestadoresID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSPrestadoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
  end
  object DSPrestadores: TDataSource
    DataSet = CDSPrestadores
    Left = 712
    Top = 224
  end
  object CDSLstPrestadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPrestadores'
    Left = 487
    Top = 371
    object CDSLstPrestadoresID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSLstPrestadoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
  end
  object DSLstPrestadores: TDataSource
    DataSet = CDSLstPrestadores
    Left = 568
    Top = 379
  end
  object DSPBuscaRC: TDataSetProvider
    DataSet = DMBuscadores.QBuscaRC
    Options = [poAllowCommandText]
    Left = 208
    Top = 624
  end
  object CDSBuscaRC: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_COMPROBANTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_COMPROB'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASE_COMPROB'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DENOMINACION'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
      end
      item
        Name = 'LETRA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PREFIJO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NUMERARCION_PROPIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'TOMA_NRO_DE'
        DataType = ftInteger
      end
      item
        Name = 'AFECTA_IVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AFECTA_CC'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESGLOZA_IVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COMPRA_VENTA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COPIAS'
        DataType = ftInteger
      end
      item
        Name = 'REPORTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'IMPRIME'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FISCAL'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOMBREIMPRESORA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PENDIENTEIMPRESION'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LINEAS_DETALLE'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'CALCULA_IVA_ARTICULOS'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DEFECTO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CAJA_DEFECTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DIVIDE_IVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FACTURAELECTRONICA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EN_USO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGO_AFIP'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaRC'
    StoreDefs = True
    Left = 272
    Top = 624
    object CDSBuscaRCID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSBuscaRCTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscaRCCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscaRCDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscaRCSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSBuscaRCLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaRCPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSBuscaRCNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaRCNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
  end
  object DSBuscaRC: TDataSource
    DataSet = CDSBuscaRC
    Left = 357
    Top = 628
  end
  object DSPClientesGarantes: TDataSetProvider
    DataSet = DMMain_FD.QClientesGarantes
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 640
  end
  object CDSClientesGarantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPClientesGarantes'
    OnNewRecord = CDSClientesGarantesNewRecord
    Left = 96
    Top = 640
    object CDSClientesGarantesID: TIntegerField
      DisplayLabel = 'Cod,'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSClientesGarantesCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesGarantesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSClientesGarantesDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Size = 100
    end
    object CDSClientesGarantesLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Size = 50
    end
    object CDSClientesGarantesCPOSTAL: TStringField
      DisplayLabel = 'C.Postal'
      FieldName = 'CPOSTAL'
      Size = 10
    end
    object CDSClientesGarantesTELEFONO1: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSClientesGarantesTELEFONO2: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object CDSClientesGarantesCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Size = 15
    end
    object CDSClientesGarantesEMAIL: TStringField
      DisplayLabel = 'Correo'
      FieldName = 'EMAIL'
      Size = 150
    end
    object CDSClientesGarantesPOR_DEFECTO: TStringField
      DisplayLabel = 'V'
      FieldName = 'POR_DEFECTO'
      FixedChar = True
      Size = 1
    end
  end
  object ibgGarante: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CLI_GARANTES'
    SystemGenerators = False
    Left = 152
    Top = 640
  end
  object QCtrMorosos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.cliente,c.nombre,c.direccion_comercial,Sum(m.saldo),c.m' +
        'oroso from movccvta m'
      'left join clientes c on c.codigo=m.cliente'
      'where m.fechavto < :fecha and m.saldo>1 and'
      '      ((m.tipocpbte='#39'FC'#39') or (m.tipocpbte='#39'ND'#39'))'
      'group by m.cliente,c.nombre,c.direccion_comercial,c.moroso'
      '')
    Left = 632
    Top = 656
    ParamData = <
      item
        Name = 'fecha'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object CDSCtrMorosos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCtrMorosos'
    Left = 760
    Top = 656
    object CDSCtrMorososCLIENTE: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSCtrMorososNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSCtrMorososDIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSCtrMorososSUM: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SUM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSCtrMorososMOROSO: TStringField
      FieldName = 'MOROSO'
      FixedChar = True
      Size = 1
    end
  end
  object DSPCtrMorosos: TDataSetProvider
    DataSet = QCtrMorosos
    Options = []
    Left = 696
    Top = 656
  end
  object DSCtrMorosos: TDataSource
    DataSet = CDSCtrMorosos
    Left = 840
    Top = 656
  end
  object QPrecioDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from CALCULO_FC_PLANTILLA ( :codigo)')
    Left = 440
    Top = 654
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPPrecioDet: TDataSetProvider
    DataSet = QPrecioDet
    Options = []
    Left = 496
    Top = 654
  end
  object CDSPrecioDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPrecioDet'
    Left = 560
    Top = 646
    object CDSPrecioDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSPrecioDetMASIVA: TStringField
      FieldName = 'MASIVA'
      Size = 1
    end
  end
  object DSPrecioDet: TDataSource
    DataSet = CDSPrecioDet
    Left = 584
    Top = 576
  end
  object DSPBuscaRubrosCLi: TDataSetProvider
    DataSet = DMBuscadores.QBuscaRubrosCliente
    Options = []
    Left = 32
    Top = 688
  end
  object CDSRubrosCLi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaRubrosCLi'
    Left = 120
    Top = 704
    object CDSRubrosCLiID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSRubrosCLiDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
  end
  object DSBuscaRubrosCLi: TDataSource
    DataSet = CDSRubrosCLi
    Left = 192
    Top = 696
  end
  object DSPBuscaFPago: TDataSetProvider
    DataSet = DMBuscadores.QBuscaFPago
    Options = []
    Left = 296
    Top = 688
  end
  object CDSBuscaFPago: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaFPago'
    Left = 376
    Top = 688
    object CDSBuscaFPagoCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaFPagoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 30
      FieldName = 'DETALLE'
      Required = True
    end
    object CDSBuscaFPagoDIAS: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'DIAS'
    end
    object CDSBuscaFPagoDESCUENTO: TFloatField
      DisplayLabel = '%Descto'
      DisplayWidth = 20
      FieldName = 'DESCUENTO'
      DisplayFormat = ',0.00'
    end
  end
  object QOt: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ot.id_ot,ot.tipocpbte,ot.responsable_ot,ot.clasecpbte,ot.' +
        'nrocpbte,ot.codigo,ot.nombre,'
      
        'ot.fechainicio,ot.fechaestimada,ot.fechaFinal,ot.total,p.nombre ' +
        'as responsable,'
      'case ot.estado when 0 then '#39'En Presupuesto'#39
      '               when 1 Then '#39'Aceptado'#39
      '               when 2 then '#39'Reparado'#39
      '               when 3 then '#39'Reclamo'#39
      '               when 4 then '#39'Garantia'#39
      '               when 5 then '#39'No Aceptado'#39
      '               when 6 then '#39'Sin Reparacion'#39
      '               when 7 then '#39'Retirada'#39
      '               else '#39'Sin iniciar'#39' end as MuestraEstado'
      'from ordentrabajocab ot'
      ''
      'left join personal p on p.codigo=ot.responsable_ot'
      'where ot.codigo=:codigo'
      'order by ot.fechainicio desc  '
      '')
    Left = 696
    Top = 720
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPOt: TDataSetProvider
    DataSet = QOt
    Options = [poAllowCommandText]
    Left = 752
    Top = 723
  end
  object CDSOt: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOt'
    Left = 808
    Top = 720
    object CDSOtID_OT: TIntegerField
      FieldName = 'ID_OT'
      Required = True
      Visible = False
    end
    object CDSOtTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Required = True
      Visible = False
      Size = 2
    end
    object CDSOtRESPONSABLE_OT: TStringField
      FieldName = 'RESPONSABLE_OT'
      Visible = False
      Size = 6
    end
    object CDSOtCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Required = True
      Visible = False
      Size = 2
    end
    object CDSOtNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSOtCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Visible = False
      Size = 6
    end
    object CDSOtNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Visible = False
      Size = 35
    end
    object CDSOtFECHAINICIO: TSQLTimeStampField
      DisplayLabel = 'Fecha Inicio'
      FieldName = 'FECHAINICIO'
      Required = True
    end
    object CDSOtFECHAESTIMADA: TSQLTimeStampField
      FieldName = 'FECHAESTIMADA'
      Visible = False
    end
    object CDSOtFECHAFINAL: TSQLTimeStampField
      DisplayLabel = 'Fecha Final'
      FieldName = 'FECHAFINAL'
    end
    object CDSOtRESPONSABLE: TStringField
      DisplayLabel = 'Responsable'
      FieldName = 'RESPONSABLE'
      Size = 50
    end
    object CDSOtTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
    end
    object CDSOtMUESTRAESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'MUESTRAESTADO'
      FixedChar = True
      Size = 12
    end
  end
  object DSOt: TDataSource
    DataSet = CDSOt
    Left = 864
    Top = 720
  end
  object QFacModeloDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select d.*,s.detalle_stk as MuestraArticulo from FcModeloDet d'
      'left join fcmodelocab c on c.id_fc=d.id_cabmodelo'
      'left join stock s on s.codigo_stk=d.codigoarticulo'
      'where c.codigo= :codigo')
    Left = 928
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object DSFacModeloDetalle: TDataSource
    DataSet = QFacModeloDetalle
    Left = 968
    Top = 64
  end
  object QLstClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      
        'select c.codigo,c.nombre,c.razon_social,c.direccion_comercial,c.' +
        'telefono_comercial_1,'
      
        '          c.telefono_comercial_2,c.telefono_celular,c.cpostal,c.' +
        'localidad,s.detalle as muestrasucursal,c.sucursal,'
      
        '          z.detalle as muestrazona,c.nro_de_cuit,i.detalle as Mu' +
        'estraInscripcion,c.zona, c.vendedor,'
      
        '          c.correoelectronico,c.contacto,c.telefono_contacto,c.o' +
        'bservaciones,p.nombre as MuestraVendedor,'
      
        '          cob.nombre as MuestraCobrador,cp.telediscado,c.CATEGOR' +
        'IA,ts.detalle as MuestraTipoServicio,C.listaprecios,'
      '          lp.nombre as MuestraListaPrecios,'
      ''
      
        '          pre.nombre as MuestraPrestador,c.nrodocumento,c.tipodo' +
        'cumento,c.observaciones1,c.observaciones2,'
      
        '          c.con_monitoreo,c.con_hosting,c.con_gprs,c.tarjeta_cli' +
        'ente,'
      '          com.denominacion as MuestraCompCtaCta,'
      '          gru.detalle as MuestraGrupoAbonado,'
      '          tc.descripcion as MuestraTC,'
      '          c.nro_tarjeta_c as NumeroTarjeta,'
      '          c.nro_seg_tc as NummeroSeguridadTC,'
      
        '          c.vencimiento_tc as VencimientoTC,c.FECHAULTIMACOMPRA,' +
        'c.cuenta_operativa from  Clientes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join zona z on z.id_zona=c.zona'
      'left join inscripcion i on i.codigo=c.condicion_iva'
      'left join personal p on p.codigo=c.vendedor'
      'left join personal cob on cob.codigo=c.cobrador'
      'left join c_postal cp on cp.id_postal=c.id_cod_postal'
      'left join clientes_contrato ctr on ctr.codigo=c.codigo'
      'left join tipo_servicio ts on ts.id=ctr.tipo_servicio'
      'left join prestadores pre on pre.id=c.id_prestador'
      
        'left join comprobantes com on com.id_comprobante=c.id_facturapor' +
        'defecto'
      'left join cupon_abonos_grilla cag on cag.cliente=c.codigo'
      'left join cupon_abonos_grupos gru on gru.id=cag.id_cupon_grupo'
      'left join t_credito tc on tc.id_tc=c.id_tarjetacredito'
      'LEFT JOIN listaprecioespecialcab lp on lp.id=c.listaprecios'
      'where (c.sucursal = :sucursal or :sucursal = - 1 ) and'
      '      (c.zona = :zona or :zona = -1 ) and'
      '      (c.vendedor = :vendedor or :vendedor = '#39'******'#39' ) and'
      '      (c.Cobrador = :Cobrador or :Cobrador = '#39'******'#39' ) and'
      '      (c.CATEGORIA = :CATEGORIA or :CATEGORIA = -1 ) and'
      '      (c.activo = :activo or :activo = '#39'*'#39' ) and'
      
        '      (ctr.tipo_servicio = :tiposervicio or :tiposervicio = -1 )' +
        ' and'
      '      (pre.id = :idprestador or :idprestador = -1 ) and'
      '      (gru.id = :idgrupocupon or :idgrupocupon= -1)'
      'order by c.nombre'
      '')
    Left = 624
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'zona'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'vendedor'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'Cobrador'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'CATEGORIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'activo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'tiposervicio'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'idprestador'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'IDGRUPOCUPON'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPLstGrupoAbonados: TDataSetProvider
    DataSet = QLstGruposAb
    Options = []
    Left = 440
    Top = 736
  end
  object CDSLstGrupoAbonados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLstGrupoAbonados'
    Left = 552
    Top = 744
  end
  object DSLstGruposAbonos: TDataSource
    DataSet = CDSLstGrupoAbonados
    Left = 640
    Top = 744
  end
  object QLstGruposAb: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from cupon_abonos_grupos c  order by c.id')
    Left = 312
    Top = 736
  end
  object QActualizaCuitFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update clientes c set c.nro_de_cuit= :cuit where c.codigo=:codig' +
        'o')
    Left = 936
    Top = 392
    ParamData = <
      item
        Name = 'CUIT'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object QActualizaMorosoFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update clientes c set c.moroso = :estado where c.codigo = :codig' +
        'o')
    Left = 936
    Top = 536
    ParamData = <
      item
        Name = 'ESTADO'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object QGruposPlantillas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from plantillas_cab  c  order by c.detalle')
    Left = 272
    Top = 576
  end
  object QBuscarCuit: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo from clientes where nro_de_cuit=:cuit')
    Left = 552
    Top = 8
    ParamData = <
      item
        Name = 'CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end>
    object QBuscarCuitCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
  end
  object QNubCeo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select n.* from nubceo_relacion n where n.codigo=:codigo')
    Left = 752
    Top = 776
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QNubCeoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QNubCeoREF_COMERCIO: TLargeintField
      FieldName = 'REF_COMERCIO'
      Origin = 'REF_COMERCIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNubCeoID_CTA_CAJA_BANCO: TIntegerField
      FieldName = 'ID_CTA_CAJA_BANCO'
      Origin = 'ID_CTA_CAJA_BANCO'
      Required = True
    end
  end
  object DSPNubCeo: TDataSetProvider
    DataSet = QNubCeo
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 808
    Top = 779
  end
  object CDSNubCeo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNubCeo'
    OnNewRecord = CDSNubCeoNewRecord
    Left = 864
    Top = 776
    object CDSNubCeoCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSNubCeoREF_COMERCIO: TLargeintField
      FieldName = 'REF_COMERCIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNubCeoID_CTA_CAJA_BANCO: TIntegerField
      FieldName = 'ID_CTA_CAJA_BANCO'
      Required = True
    end
    object CDSNubCeoNOMBRECUENTA: TStringField
      DisplayLabel = 'Cta a Depositar'
      FieldKind = fkLookup
      FieldName = 'NOMBRECUENTA'
      LookupDataSet = QCtaBanco
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_CTA_CAJA_BANCO'
      ProviderFlags = []
      Size = 25
      Lookup = True
    end
  end
  object DSNubCeo: TDataSource
    DataSet = CDSNubCeo
    Left = 944
    Top = 776
  end
  object QCtaBanco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_cuenta, nombre,nro_cuenta from  cuenta_caja'
      'where id_tipo_cta=2')
    Left = 1008
    Top = 776
    object QCtaBancoID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtaBancoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QCtaBancoNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
  end
  object DSCtaBanco: TDataSource
    DataSet = QCtaBanco
    Left = 1008
    Top = 728
  end
  object QEsquemas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from lst_precios')
    Left = 32
    Top = 784
  end
  object DSEsquemas: TDataSource
    DataSet = QEsquemas
    Left = 120
    Top = 784
  end
end

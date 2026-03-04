object DatosConversorVta_Comp: TDatosConversorVta_Comp
  Height = 604
  Width = 641
  object RemoteDB: TRemoteDBDatabase
    Connected = False
    ServerUri = 'http://alfajoresmdp.homedns.org:2001/tms/remotedb'
    UserName = 'remotedb'
    Password = 'business'
    Left = 40
    Top = 32
  end
  object QFacCab: TXDataset
    Database = RemoteDB
    SQL.Strings = (
      
        'select f.* from fcvtacab f where ( f.fechavta between :desde and' +
        ' :hasta )')
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    Left = 136
    Top = 40
  end
  object QFacDet: TXDataset
    Database = RemoteDB
    SQL.Strings = (
      'select d.* from fcvtadet d where '
      'd.id_cabfac between :id_desde and :id_hasta')
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    Left = 136
    Top = 104
  end
  object QFacImp: TXDataset
    Database = RemoteDB
    SQL.Strings = (
      'select d.* from fcvtaimpuesto d where'
      'd.id_fcvtacab between :id_desde and :id_hasta')
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    Left = 136
    Top = 168
  end
  object QMaxMin: TXDataset
    Database = RemoteDB
    SQL.Strings = (
      'select min(f.id_fc),max(f.id_fc)'
      ' from fcvtacab f where ( f.fechavta between :desde and :hasta )')
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'hasta'
        ParamType = ptInput
      end>
    Left = 136
    Top = 224
    object QMaxMinMIN: TIntegerField
      FieldName = 'MIN'
    end
    object QMaxMinMAX: TIntegerField
      FieldName = 'MAX'
    end
  end
  object DSPFacImp: TDataSetProvider
    DataSet = QFacImp
    Options = [poAllowCommandText]
    Left = 224
    Top = 176
  end
  object DSPFacDet: TDataSetProvider
    DataSet = QFacDet
    Options = [poAllowCommandText]
    Left = 232
    Top = 112
  end
  object DSPFacCab: TDataSetProvider
    DataSet = QFacCab
    Options = [poAllowCommandText]
    Left = 232
    Top = 48
  end
  object CDSFcVtaCabXML: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_FC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPOCPBTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASECPBTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'LETRAFAC'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SUCFAC'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NUMEROFAC'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'RAZONSOCIAL'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DIRECCION'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CPOSTAL'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'LOCALIDAD'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TIPOIVA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CUIT'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'LISTAPRECIO'
        DataType = ftInteger
      end
      item
        Name = 'FECHAVTA'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'FECHAVTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FECHA_FISCAL'
        DataType = ftTimeStamp
      end
      item
        Name = 'CONDICIONVTA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ANULADO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NRORTO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'N_OPERACION2'
        DataType = ftFloat
      end
      item
        Name = 'NETOGRAV1'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NETOGRAV2'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NETONOGRAV1'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NETONOGRAV2'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DSTO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DSTOIMPORTE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NETOEXEN1'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NETOEXEN2'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DEBE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IMPRESO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OBSERVACION1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'OBSERVACION2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPTE_MANUAL'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SUCURSAL'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FACTURANRO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'ZONA'
        DataType = ftInteger
      end
      item
        Name = 'LDR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DEPOSITO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CALCULA_SOBRETASA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESGLOZAIVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NROENTREGA'
        DataType = ftInteger
      end
      item
        Name = 'INGRESA_A_CTACTE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INGRESA_LIBRO_IVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPO_REMITO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IDREMITO'
        DataType = ftInteger
      end
      item
        Name = 'REDUCIDA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COMSIONVENDEDOR'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'LIQUIDADA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FECHA_LIQUIDACION'
        DataType = ftTimeStamp
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NC_CONTADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CAJA_POR_DEFECTO'
        DataType = ftInteger
      end
      item
        Name = 'NRO_Z'
        DataType = ftInteger
      end
      item
        Name = 'VALORES_RECIBIDOS'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PERCEPCION_IB_TASA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PERCEPCION_IB_IMPORTE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PERCIBE_IB'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PERCEPCION_IB_BASEIMPONIBLE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'RENGLONES'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'FECHA_HORA'
        DataType = ftTimeStamp
      end
      item
        Name = 'NOTAPEDIDO_ID'
        DataType = ftInteger
      end
      item
        Name = 'NOTAPEDIDO_NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'ID_FC_CLON'
        DataType = ftInteger
      end
      item
        Name = 'PRESUPUESTO_ID'
        DataType = ftInteger
      end
      item
        Name = 'PRESUPUESTO_NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'MONEDA_CPBTE'
        DataType = ftInteger
      end
      item
        Name = 'MONEDA_CPBTE_COTIZACION'
        DataType = ftFloat
      end
      item
        Name = 'POR_CTA_Y_ORDEN'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PROVEEDOR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TIPO_VTA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_RECEPCION_GTIA'
        DataType = ftInteger
      end
      item
        Name = 'JURIDICION'
        DataType = ftInteger
      end
      item
        Name = 'JURIDICION_LOCALIDAD'
        DataType = ftInteger
      end
      item
        Name = 'CON_GTIA_EXTENDIDA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MESES_DE_GARANTIA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'POLIZA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_ASEGURADO'
        DataType = ftFloat
      end
      item
        Name = 'ABONO_PERIODO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NUMERO_OPERACION'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'SALDO_ACTUAL_CC'
        DataType = ftFloat
      end
      item
        Name = 'ID_NOTA_CAMBIO'
        DataType = ftInteger
      end
      item
        Name = 'CAE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CAE_VENCIMIENTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FACTURA_ELECTRONICA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CANT_BULTOS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CUOTAS_CC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'INTERVALO_CUOTA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_GARANTE'
        DataType = ftInteger
      end
      item
        Name = 'PAGO_A_CTA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ID_FC_CON_ADEL'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PRIMER_VTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'ANTICIPO_VTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'CENTRO_COSTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_PEDIDO_MORPHI'
        DataType = ftInteger
      end
      item
        Name = 'ID_PAIS'
        DataType = ftSmallint
      end
      item
        Name = 'CUIT_PAIS'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'DOC_ADUANERO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FECHA_CARGA'
        DataType = ftTimeStamp
      end
      item
        Name = 'NRO_INTERNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FOB_TOTAL'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NOTAS'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'DESTINO_DOCUMENTO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PERMISO_EMBARQUE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'INCOTERMS'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CBU'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'ASOCIADO_ID_CPBTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ASOCIADO_TIPO'
        DataType = ftInteger
      end
      item
        Name = 'ASOCIADO_PTOVTA'
        DataType = ftInteger
      end
      item
        Name = 'ASOCIADO_NRO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ASOCIADO_CPTEFCH'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'INF_X'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPO_OPERACION_EXPO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MEDIO_TRANSPORTE_EXPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_ADUANA'
        DataType = ftInteger
      end
      item
        Name = 'REFERENCIA_EXPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CAMBIO_EXPO'
        DataType = ftFloat
      end
      item
        Name = 'VUELTO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ID_TRANSPORTE'
        DataType = ftInteger
      end
      item
        Name = 'ID_DESTINO'
        DataType = ftInteger
      end
      item
        Name = 'HONORARIOS'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'HONORARIOS_PROCENTAJ'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DEDUCE_GASTOS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CON_CAEA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CAEA_INFORMADO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FACTURA_DE_ANTICIPO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QRIMAGE'
        DataType = ftBlob
      end
      item
        Name = 'CONDICIONPEDIDO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'KEY_PLANER'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'LOTEAFIP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CODIGO_ACTIVIDAD'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TRANSPORTE_UNIDAD'
        DataType = ftInteger
      end
      item
        Name = 'TRANSPORTE_ADICIONAL'
        DataType = ftInteger
      end
      item
        Name = 'ID_CHOFER'
        DataType = ftInteger
      end
      item
        Name = 'PERCIBE_IVA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MINIMO_PERCI_IVA'
        DataType = ftFloat
      end
      item
        Name = 'COT'
        DataType = ftString
        Size = 25
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFacCab'
    StoreDefs = True
    Left = 328
    Top = 48
  end
  object CDSFcVtaDetXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFacDet'
    Left = 328
    Top = 112
  end
  object CDSFcVtaImpXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFacImp'
    Left = 328
    Top = 176
  end
  object QProveedor: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT P.codigo, p.nombre,p.razon_social FROM Poveedor P'
      'where P.Codigo = :Codigo')
    Left = 528
    Top = 168
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object mtHost: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 520
    Top = 264
    object mtHostALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 50
    end
    object mtHostHOST: TStringField
      FieldName = 'HOST'
      Size = 150
    end
    object mtHostPUERTO: TStringField
      FieldName = 'PUERTO'
      Size = 5
    end
    object mtHostID: TIntegerField
      FieldName = 'ID'
    end
  end
end

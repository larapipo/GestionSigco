object DatosImportacion: TDatosImportacion
  OnDestroy = DataModuleDestroy
  Height = 572
  Width = 931
  object DSFcVTaCab: TDataSource
    DataSet = QFcVtaCab
    Left = 128
    Top = 56
  end
  object DSFcVtaDet: TDataSource
    DataSet = QFcVtaDet
    Left = 128
    Top = 104
  end
  object DSFcVtaImp: TDataSource
    DataSet = QFcVtaImp
    Left = 128
    Top = 152
  end
  object DSCajaMov: TDataSource
    DataSet = QCajaMov
    Left = 128
    Top = 264
  end
  object DSComprobantes: TDataSource
    DataSet = QComprobante
    Left = 128
    Top = 209
  end
  object DSBuscaSucursal: TDataSource
    DataSet = QBuscaSucursal
    Left = 568
    Top = 16
  end
  object DSDebitos: TDataSource
    DataSet = QDebitos
    Left = 568
    Top = 328
  end
  object DSTransBco: TDataSource
    DataSet = QTransBco
    Left = 568
    Top = 384
  end
  object DSChe3: TDataSource
    DataSet = QChe3
    Left = 128
    Top = 440
  end
  object DSMovTCredito: TDataSource
    DataSet = QMovTCredito
    Left = 128
    Top = 321
  end
  object DSMovEfectivo: TDataSource
    DataSet = QMovEfectivo
    Left = 128
    Top = 384
  end
  object DSAjusteDet: TDataSource
    DataSet = QAjusteDet
    Left = 568
    Top = 144
  end
  object DSAjusteCab: TDataSource
    DataSet = QAjusteCab
    Left = 568
    Top = 72
  end
  object DSAjusteSubDetalle: TDataSource
    DataSet = QAjusteSubDetalle
    Left = 568
    Top = 200
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=localhost/3051:C:\Proyectos Delphi\GestionComercial\Tab' +
        'las IB\GESTIONV3.FDB'
      'User_Name=sysdba'
      'Password=regulador'
      'SQLDialect=1'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object QFcVtaCab: TFDQuery
    OnCalcFields = QFcVtaCabCalcFields
    Connection = FDConnection
    SQL.Strings = (
      'select f.* from FcVtaCab f'
      'left join comprobantes c on c.sucursal = f.sucursal and'
      '                       c.letra = f.letrafac and'
      '                       c.tipo_comprob = f.tipocpbte and'
      '                       c.clase_comprob= f.clasecpbte and'
      '                       c.compra_venta ='#39'V'#39
      'where ( f.fechavta between :Desde and :Hasta ) and'
      '       ( f.sucursal=:Sucursal or :Sucursal = -1) and '
      '       ( c.id_comprobante = :idcpbte or :idcpbte = -1 )'
      'order by  f.id_fc')
    Left = 32
    Top = 56
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IDCPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcVtaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaCabTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaCabCLASECPBTE: TStringField
      DisplayLabel = 'Cl.'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaCabCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFcVtaCabNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object QFcVtaCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QFcVtaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QFcVtaCabNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QFcVtaCabRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QFcVtaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QFcVtaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QFcVtaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QFcVtaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
      Required = True
    end
    object QFcVtaCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QFcVtaCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object QFcVtaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
      Required = True
    end
    object QFcVtaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 100
    end
    object QFcVtaCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QFcVtaCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      Required = True
    end
    object QFcVtaCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      Required = True
    end
    object QFcVtaCabNETONOGRAV1: TFloatField
      FieldName = 'NETONOGRAV1'
      Origin = 'NETONOGRAV1'
      Required = True
    end
    object QFcVtaCabNETONOGRAV2: TFloatField
      FieldName = 'NETONOGRAV2'
      Origin = 'NETONOGRAV2'
      Required = True
    end
    object QFcVtaCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
      Required = True
    end
    object QFcVtaCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
      Required = True
    end
    object QFcVtaCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
      Required = True
    end
    object QFcVtaCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
      Required = True
    end
    object QFcVtaCabTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00'
    end
    object QFcVtaCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      Required = True
    end
    object QFcVtaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QFcVtaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QFcVtaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Origin = 'CPTE_MANUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QFcVtaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Origin = 'FACTURANRO'
      Size = 13
    end
    object QFcVtaCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QFcVtaCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
      Required = True
    end
    object QFcVtaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QFcVtaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
      Origin = 'NROENTREGA'
    end
    object QFcVtaCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabTIPO_REMITO: TStringField
      FieldName = 'TIPO_REMITO'
      Origin = 'TIPO_REMITO'
      Size = 2
    end
    object QFcVtaCabIDREMITO: TIntegerField
      FieldName = 'IDREMITO'
      Origin = 'IDREMITO'
    end
    object QFcVtaCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      Origin = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCOMSIONVENDEDOR: TFloatField
      FieldName = 'COMSIONVENDEDOR'
      Origin = 'COMSIONVENDEDOR'
      Required = True
    end
    object QFcVtaCabLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Origin = 'LIQUIDADA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHA_LIQUIDACION'
      Origin = 'FECHA_LIQUIDACION'
    end
    object QFcVtaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QFcVtaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QFcVtaCabNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      Origin = 'NC_CONTADO'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCAJA_POR_DEFECTO: TIntegerField
      FieldName = 'CAJA_POR_DEFECTO'
      Origin = 'CAJA_POR_DEFECTO'
    end
    object QFcVtaCabNRO_Z: TIntegerField
      FieldName = 'NRO_Z'
      Origin = 'NRO_Z'
    end
    object QFcVtaCabVALORES_RECIBIDOS: TFloatField
      FieldName = 'VALORES_RECIBIDOS'
      Origin = 'VALORES_RECIBIDOS'
      Required = True
    end
    object QFcVtaCabPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Origin = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object QFcVtaCabPERCEPCION_IB_IMPORTE: TFloatField
      FieldName = 'PERCEPCION_IB_IMPORTE'
      Origin = 'PERCEPCION_IB_IMPORTE'
      Required = True
    end
    object QFcVtaCabPERCIBE_IB: TStringField
      FieldName = 'PERCIBE_IB'
      Origin = 'PERCIBE_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Origin = 'PERCEPCION_IB_BASEIMPONIBLE'
      Required = True
    end
    object QFcVtaCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Origin = 'RENGLONES'
      Required = True
    end
    object QFcVtaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QFcVtaCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
      Origin = 'NOTAPEDIDO_ID'
    end
    object QFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Origin = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object QFcVtaCabID_FC_CLON: TIntegerField
      FieldName = 'ID_FC_CLON'
      Origin = 'ID_FC_CLON'
    end
    object QFcVtaCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
      Origin = 'PRESUPUESTO_ID'
    end
    object QFcVtaCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Origin = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object QFcVtaCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
      Origin = 'MONEDA_CPBTE'
    end
    object QFcVtaCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Origin = 'MONEDA_CPBTE_COTIZACION'
    end
    object QFcVtaCabPOR_CTA_Y_ORDEN: TStringField
      FieldName = 'POR_CTA_Y_ORDEN'
      Origin = 'POR_CTA_Y_ORDEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object QFcVtaCabTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      Origin = 'TIPO_VTA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabID_RECEPCION_GTIA: TIntegerField
      FieldName = 'ID_RECEPCION_GTIA'
      Origin = 'ID_RECEPCION_GTIA'
    end
    object QFcVtaCabJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
    object QFcVtaCabJURIDICION_LOCALIDAD: TIntegerField
      FieldName = 'JURIDICION_LOCALIDAD'
      Origin = 'JURIDICION_LOCALIDAD'
    end
    object QFcVtaCabCON_GTIA_EXTENDIDA: TStringField
      FieldName = 'CON_GTIA_EXTENDIDA'
      Origin = 'CON_GTIA_EXTENDIDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabMESES_DE_GARANTIA: TIntegerField
      FieldName = 'MESES_DE_GARANTIA'
      Origin = 'MESES_DE_GARANTIA'
      Required = True
    end
    object QFcVtaCabPOLIZA: TStringField
      FieldName = 'POLIZA'
      Origin = 'POLIZA'
    end
    object QFcVtaCabVALOR_ASEGURADO: TFloatField
      FieldName = 'VALOR_ASEGURADO'
      Origin = 'VALOR_ASEGURADO'
    end
    object QFcVtaCabABONO_PERIODO: TStringField
      FieldName = 'ABONO_PERIODO'
      Origin = 'ABONO_PERIODO'
      Size = 6
    end
    object QFcVtaCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object QFcVtaCabSALDO_ACTUAL_CC: TFloatField
      FieldName = 'SALDO_ACTUAL_CC'
      Origin = 'SALDO_ACTUAL_CC'
    end
    object QFcVtaCabID_NOTA_CAMBIO: TIntegerField
      FieldName = 'ID_NOTA_CAMBIO'
      Origin = 'ID_NOTA_CAMBIO'
    end
    object QFcVtaCabCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object QFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
      Origin = 'CAE_VENCIMIENTO'
    end
    object QFcVtaCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Origin = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCANT_BULTOS: TIntegerField
      FieldName = 'CANT_BULTOS'
      Origin = 'CANT_BULTOS'
      Required = True
    end
    object QFcVtaCabCUOTAS_CC: TIntegerField
      FieldName = 'CUOTAS_CC'
      Origin = 'CUOTAS_CC'
      Required = True
    end
    object QFcVtaCabINTERVALO_CUOTA: TIntegerField
      FieldName = 'INTERVALO_CUOTA'
      Origin = 'INTERVALO_CUOTA'
      Required = True
    end
    object QFcVtaCabID_GARANTE: TIntegerField
      FieldName = 'ID_GARANTE'
      Origin = 'ID_GARANTE'
    end
    object QFcVtaCabPAGO_A_CTA: TFloatField
      FieldName = 'PAGO_A_CTA'
      Origin = 'PAGO_A_CTA'
      Required = True
    end
    object QFcVtaCabID_FC_CON_ADEL: TIntegerField
      FieldName = 'ID_FC_CON_ADEL'
      Origin = 'ID_FC_CON_ADEL'
      Required = True
    end
    object QFcVtaCabPRIMER_VTO: TSQLTimeStampField
      FieldName = 'PRIMER_VTO'
      Origin = 'PRIMER_VTO'
    end
    object QFcVtaCabANTICIPO_VTO: TSQLTimeStampField
      FieldName = 'ANTICIPO_VTO'
      Origin = 'ANTICIPO_VTO'
    end
    object QFcVtaCabCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
      Required = True
    end
    object QFcVtaCabID_PEDIDO_MORPHI: TIntegerField
      FieldName = 'ID_PEDIDO_MORPHI'
      Origin = 'ID_PEDIDO_MORPHI'
    end
    object QFcVtaCabID_PAIS: TSmallintField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
    end
    object QFcVtaCabCUIT_PAIS: TStringField
      FieldName = 'CUIT_PAIS'
      Origin = 'CUIT_PAIS'
      Size = 13
    end
    object QFcVtaCabDOC_ADUANERO: TStringField
      FieldName = 'DOC_ADUANERO'
      Origin = 'DOC_ADUANERO'
      Size = 15
    end
    object QFcVtaCabFECHA_CARGA: TSQLTimeStampField
      FieldName = 'FECHA_CARGA'
      Origin = 'FECHA_CARGA'
    end
    object QFcVtaCabNRO_INTERNO: TStringField
      FieldName = 'NRO_INTERNO'
      Origin = 'NRO_INTERNO'
    end
    object QFcVtaCabFOB_TOTAL: TFloatField
      FieldName = 'FOB_TOTAL'
      Origin = 'FOB_TOTAL'
      Required = True
    end
    object QFcVtaCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 300
    end
    object QFcVtaCabDESTINO_DOCUMENTO: TStringField
      FieldName = 'DESTINO_DOCUMENTO'
      Origin = 'DESTINO_DOCUMENTO'
      Size = 5
    end
    object QFcVtaCabPERMISO_EMBARQUE: TStringField
      FieldName = 'PERMISO_EMBARQUE'
      Origin = 'PERMISO_EMBARQUE'
      Size = 100
    end
    object QFcVtaCabINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Origin = 'INCOTERMS'
      Size = 5
    end
    object QFcVtaCabCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object QFcVtaCabASOCIADO_TIPO: TIntegerField
      FieldName = 'ASOCIADO_TIPO'
      Origin = 'ASOCIADO_TIPO'
    end
    object QFcVtaCabASOCIADO_PTOVTA: TIntegerField
      FieldName = 'ASOCIADO_PTOVTA'
      Origin = 'ASOCIADO_PTOVTA'
    end
    object QFcVtaCabASOCIADO_NRO: TFloatField
      FieldName = 'ASOCIADO_NRO'
      Origin = 'ASOCIADO_NRO'
      Required = True
    end
    object QFcVtaCabASOCIADO_CPTEFCH: TStringField
      FieldName = 'ASOCIADO_CPTEFCH'
      Origin = 'ASOCIADO_CPTEFCH'
      Size = 8
    end
    object QFcVtaCabTOTAL_CALCULADO: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_CALCULADO'
      DisplayFormat = ',0.00;-,0.00;-'
      Calculated = True
    end
    object QFcVtaCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QFcVtaCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QFcVtaCabFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
      Origin = 'FECHA_FISCAL'
    end
  end
  object QFcVtaDet: TFDQuery
    IndexFieldNames = 'ID_CABFAC'
    MasterSource = DSFcVTaCab
    MasterFields = 'ID_FC'
    Connection = FDConnection
    SQL.Strings = (
      'select * from FCVTADET where id_cabfac '
      'between :id_desde and :id_hasta')
    Left = 32
    Top = 104
    ParamData = <
      item
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcVtaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      Required = True
    end
    object QFcVtaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QFcVtaDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QFcVtaDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QFcVtaDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QFcVtaDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QFcVtaDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QFcVtaDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.000;-,0.000:-'
    end
    object QFcVtaDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
      Origin = 'UNIDADES_GRAVADO'
    end
    object QFcVtaDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
      Origin = 'UNIDADES_EXENTO'
    end
    object QFcVtaDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      Origin = 'UNIDADES_TOTAL'
    end
    object QFcVtaDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QFcVtaDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QFcVtaDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QFcVtaDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QFcVtaDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object QFcVtaDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QFcVtaDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      OnGetText = QFcVtaDetUNITARIO_TOTALGetText
      DisplayFormat = ',0.000;-,0.000:-'
    end
    object QFcVtaDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object QFcVtaDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object QFcVtaDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object QFcVtaDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      OnGetText = QFcVtaDetTOTALGetText
      DisplayFormat = ',0.000;-,0.000:-'
    end
    object QFcVtaDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object QFcVtaDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QFcVtaDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QFcVtaDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QFcVtaDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QFcVtaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QFcVtaDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QFcVtaDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Origin = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object QFcVtaDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
      Required = True
    end
    object QFcVtaDetLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object QFcVtaDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Origin = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QFcVtaDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QFcVtaDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QFcVtaDetGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
      Origin = 'GRUPO_DETALLE'
    end
    object QFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField
      FieldName = 'CTA_ORDEN_ID_RECEPCION'
      Origin = 'CTA_ORDEN_ID_RECEPCION'
    end
    object QFcVtaDetCTA_ORDEN_NROCPBTE: TStringField
      FieldName = 'CTA_ORDEN_NROCPBTE'
      Origin = 'CTA_ORDEN_NROCPBTE'
      Size = 13
    end
    object QFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField
      FieldName = 'CTA_ORDEN_TIPOCPBTE'
      Origin = 'CTA_ORDEN_TIPOCPBTE'
      Size = 2
    end
    object QFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField
      FieldName = 'CTA_ORDEN_CALSECPBTE'
      Origin = 'CTA_ORDEN_CALSECPBTE'
      Size = 2
    end
    object QFcVtaDetMESES_GTIA: TIntegerField
      FieldName = 'MESES_GTIA'
      Origin = 'MESES_GTIA'
      Required = True
    end
    object QFcVtaDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QFcVtaDetDE_PRODUCCION: TStringField
      FieldName = 'DE_PRODUCCION'
      Origin = 'DE_PRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetUNITARIO_TOTAL_OLD: TFloatField
      FieldName = 'UNITARIO_TOTAL_OLD'
      Origin = 'UNITARIO_TOTAL_OLD'
      Required = True
    end
    object QFcVtaDetUNITARIO_IVA_OLD: TFloatField
      FieldName = 'UNITARIO_IVA_OLD'
      Origin = 'UNITARIO_IVA_OLD'
      Required = True
    end
    object QFcVtaDetUNI_C_REC: TStringField
      FieldName = 'UNI_C_REC'
      Origin = 'UNI_C_REC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetITEM_OCOMPRA: TIntegerField
      FieldName = 'ITEM_OCOMPRA'
      Origin = 'ITEM_OCOMPRA'
    end
    object QFcVtaDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
    end
    object QFcVtaDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
  end
  object QFcVtaImp: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from FCVTAIMPUESTO'
      'where ID_FCVTACAB between :id_desde and :id_hasta')
    Left = 32
    Top = 160
    ParamData = <
      item
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcVtaImpID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaImpID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
      Required = True
    end
    object QFcVtaImpCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
    end
    object QFcVtaImpDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QFcVtaImpNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QFcVtaImpTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QFcVtaImpIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QComprobante: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select id_comprobante,tipo_comprob,clase_comprob,denominacion,'
      '       sucursal,letra'
      'from comprobantes'
      
        'where  sucursal=:Suc and tipo_comprob in ('#39'FC'#39','#39'NC'#39','#39'ND'#39','#39'FO'#39','#39'T' +
        'K'#39') and compra_venta='#39'V'#39
      ' ')
    Left = 32
    Top = 216
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QComprobanteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobanteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobanteCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobanteDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QComprobanteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobanteLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
  end
  object QCajaMov: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select cm.* from caja_mov cm'
      'where (cm.ID_comprobante between :id_desde and :id_hasta)'
      
        'and ( (cm.tipo_operacion='#39'I'#39' and cm.tipo_comprob in ('#39'TK'#39','#39'FO'#39') ' +
        ') or '
      '         (cm.tipo_operacion='#39'E'#39' and cm.tipo_comprob='#39'NC'#39')) '
      'order by cm.id_mov_caja')
    Left = 32
    Top = 272
    ParamData = <
      item
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCajaMovID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaMovID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QCajaMovFECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
    object QCajaMovFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
    object QCajaMovTIPO_OPERACION: TStringField
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object QCajaMovTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QCajaMovCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object QCajaMovID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object QCajaMovNRO_COMPROBANTE: TStringField
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object QCajaMovHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QCajaMovDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QCajaMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object QCajaMovID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QCajaMovUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QCajaMovCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QCajaMovID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QCajaMovMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
  end
  object QMovTCredito: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select M.* from Mov_TCredito M'
      'where ( M.Id_Mov_Caja between :Min_id and :Max_id )')
    Left = 32
    Top = 328
    ParamData = <
      item
        Name = 'MIN_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MAX_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMovTCreditoID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      Origin = 'ID_MOV_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovTCreditoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QMovTCreditoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object QMovTCreditoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QMovTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      Required = True
    end
    object QMovTCreditoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QMovTCreditoTITULAR: TStringField
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      Size = 30
    end
    object QMovTCreditoCAN_CUOTAS: TIntegerField
      FieldName = 'CAN_CUOTAS'
      Origin = 'CAN_CUOTAS'
    end
    object QMovTCreditoN_DOCU: TStringField
      FieldName = 'N_DOCU'
      Origin = 'N_DOCU'
      Size = 15
    end
    object QMovTCreditoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QMovTCreditoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMovTCreditoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
    end
    object QMovTCreditoOTROS: TStringField
      FieldName = 'OTROS'
      Origin = 'OTROS'
      Size = 30
    end
    object QMovTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QMovTCreditoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QMovTCreditoUNIDADES_NETO: TFloatField
      FieldName = 'UNIDADES_NETO'
      Origin = 'UNIDADES_NETO'
      Required = True
    end
    object QMovTCreditoIMPORTE_NETO: TFloatField
      FieldName = 'IMPORTE_NETO'
      Origin = 'IMPORTE_NETO'
      Required = True
    end
    object QMovTCreditoCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
      Required = True
    end
    object QMovTCreditoVALORCUOTA: TFloatField
      FieldName = 'VALORCUOTA'
      Origin = 'VALORCUOTA'
    end
    object QMovTCreditoIMPORTE_RECARGO: TFloatField
      FieldName = 'IMPORTE_RECARGO'
      Origin = 'IMPORTE_RECARGO'
    end
    object QMovTCreditoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object QMovTCreditoNRO_CUPON: TIntegerField
      FieldName = 'NRO_CUPON'
      Origin = 'NRO_CUPON'
    end
    object QMovTCreditoFECHA_ACREDITACION: TSQLTimeStampField
      FieldName = 'FECHA_ACREDITACION'
      Origin = 'FECHA_ACREDITACION'
    end
    object QMovTCreditoACREDITADA: TStringField
      FieldName = 'ACREDITADA'
      Origin = 'ACREDITADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovTCreditoLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 5
    end
    object QMovTCreditoTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Origin = 'TERMINAL'
      Size = 8
    end
    object QMovTCreditoSALDO_IMPORTE: TFloatField
      FieldName = 'SALDO_IMPORTE'
      Origin = 'SALDO_IMPORTE'
      Required = True
    end
  end
  object QMovEfectivo: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from Mov_Efectivo  '
      'where (Id_Mov_Caja between :Min_id and :Max_id )')
    Left = 32
    Top = 384
    ParamData = <
      item
        Name = 'MIN_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MAX_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMovEfectivoID_EFECTIVO: TIntegerField
      FieldName = 'ID_EFECTIVO'
      Origin = 'ID_EFECTIVO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovEfectivoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QMovEfectivoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object QMovEfectivoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QMovEfectivoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QMovEfectivoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
    end
    object QMovEfectivoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QMovEfectivoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object QMovEfectivoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
  end
  object QChe3: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select C.* from Cheque_Tercero c'
      'where ( c.Id_Mov_Caja between :Min_id and :Max_id )')
    Left = 32
    Top = 440
    ParamData = <
      item
        Name = 'MIN_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MAX_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QChe3ID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      Origin = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChe3ID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QChe3ID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object QChe3ID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QChe3ID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QChe3NUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QChe3FECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object QChe3FECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QChe3FECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
      Origin = 'FECHA_ENTRADA'
    end
    object QChe3FECHA_SALIDA: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
      Origin = 'FECHA_SALIDA'
    end
    object QChe3ORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object QChe3DESTINO: TStringField
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      Size = 30
    end
    object QChe3UNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
    end
    object QChe3IMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QChe3DISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QChe3FIRMANTE: TStringField
      FieldName = 'FIRMANTE'
      Origin = 'FIRMANTE'
      Size = 30
    end
    object QChe3COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QChe3ID_MOV_CAJA_EGRESOS: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
      Origin = 'ID_MOV_CAJA_EGRESOS'
    end
    object QChe3ID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QChe3ID_CUENTA_BCO_DEPOSITADO: TIntegerField
      FieldName = 'ID_CUENTA_BCO_DEPOSITADO'
      Origin = 'ID_CUENTA_BCO_DEPOSITADO'
    end
    object QChe3MONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QChe3SALDO_UNIDADES: TFloatField
      FieldName = 'SALDO_UNIDADES'
      Origin = 'SALDO_UNIDADES'
    end
    object QChe3SALDO_IMPORTE: TFloatField
      FieldName = 'SALDO_IMPORTE'
      Origin = 'SALDO_IMPORTE'
    end
    object QChe3CUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QChe3SUCURSAL_BCO: TStringField
      FieldName = 'SUCURSAL_BCO'
      Origin = 'SUCURSAL_BCO'
      Size = 6
    end
    object QChe3NRO_CTA: TStringField
      FieldName = 'NRO_CTA'
      Origin = 'NRO_CTA'
      Size = 15
    end
  end
  object QBuscaSucursal: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select codigo,detalle,host from sucursal order by detalle')
    Left = 480
    Top = 16
    object QBuscaSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object QAjusteCab: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select rc.*,cp.denominacion as MuestraComprobante,'
      'cp.id_comprobante as Id_TipoComprobante,'
      's.detalle as MuestraSucursal,'
      'd.nombre as MuestraDeposito from rtomercacab rc'
      'left join depositos d  on d.id=rc.deposito'
      'left join sucursal s on s.codigo=rc.sucursal'
      'left join comprobantes cp on cp.clase_comprob=rc.ClaseCpbte and'
      '          cp.letra=rc.Letra and'
      '          cp.sucursal=rc.sucursal and'
      '          cp.tipo_comprob=rc.tipocpbte'
      ''
      'where rc.fecha between :Desde and :Hasta'
      'and rc.sucursal = :sucursal')
    Left = 480
    Top = 80
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAjusteCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QAjusteCabLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Size = 1
    end
    object QAjusteCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      Origin = 'SUCRTO'
      Size = 4
    end
    object QAjusteCabNUMRTO: TStringField
      FieldName = 'NUMRTO'
      Origin = 'NUMRTO'
      Size = 8
    end
    object QAjusteCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QAjusteCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QAjusteCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QAjusteCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QAjusteCabOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 120
    end
    object QAjusteCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QAjusteCabAJUSTE_CERO_STOCK: TStringField
      FieldName = 'AJUSTE_CERO_STOCK'
      Origin = 'AJUSTE_CERO_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAjusteCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QAjusteCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QAjusteCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QAjusteCabTOTAL_VTA: TFloatField
      FieldName = 'TOTAL_VTA'
      Origin = 'TOTAL_VTA'
      Required = True
    end
    object QAjusteCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object QAjusteCabMOTIVO: TIntegerField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Required = True
    end
    object QAjusteCabID_INVENTARIO: TIntegerField
      FieldName = 'ID_INVENTARIO'
      Origin = 'ID_INVENTARIO'
      Required = True
    end
    object QAjusteCabPERSONAL_RETIRA: TStringField
      FieldName = 'PERSONAL_RETIRA'
      Origin = 'PERSONAL_RETIRA'
      Size = 6
    end
    object QAjusteCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QAjusteCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QAjusteCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QAjusteCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object QAjusteDet: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select rd.* from rtomercadet rd'
      'where rd.id_rto_cab between :id_desde and :id_hasta')
    Left = 480
    Top = 144
    ParamData = <
      item
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAjusteDetID_RTO_DET: TIntegerField
      FieldName = 'ID_RTO_DET'
      Origin = 'ID_RTO_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteDetID_RTO_CAB: TIntegerField
      FieldName = 'ID_RTO_CAB'
      Origin = 'ID_RTO_CAB'
      Required = True
    end
    object QAjusteDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QAjusteDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QAjusteDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QAjusteDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QAjusteDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object QAjusteDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QAjusteDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QAjusteDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QAjusteDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QAjusteDetAFECTASTOCK: TStringField
      FieldName = 'AFECTASTOCK'
      Origin = 'AFECTASTOCK'
      Size = 1
    end
    object QAjusteDetSTOCK_ACTUAL_COMPRA: TFloatField
      FieldName = 'STOCK_ACTUAL_COMPRA'
      Origin = 'STOCK_ACTUAL_COMPRA'
    end
    object QAjusteDetSTOCK_ACTUAL_VTA: TFloatField
      FieldName = 'STOCK_ACTUAL_VTA'
      Origin = 'STOCK_ACTUAL_VTA'
    end
    object QAjusteDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAjusteDetCOSTO_UNITARIO: TFloatField
      FieldName = 'COSTO_UNITARIO'
      Origin = 'COSTO_UNITARIO'
      Required = True
    end
    object QAjusteDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
    end
    object QAjusteDetPRECIO_UNITARIO: TFloatField
      FieldName = 'PRECIO_UNITARIO'
      Origin = 'PRECIO_UNITARIO'
      Required = True
    end
    object QAjusteDetPRECIO_TOTAL: TFloatField
      FieldName = 'PRECIO_TOTAL'
      Origin = 'PRECIO_TOTAL'
      Required = True
    end
    object QAjusteDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAjusteDetUNIDADES_STK: TFloatField
      FieldName = 'UNIDADES_STK'
      Origin = 'UNIDADES_STK'
      Required = True
    end
    object QAjusteDetPRESENT_CANTIDAD: TFloatField
      FieldName = 'PRESENT_CANTIDAD'
      Origin = 'PRESENT_CANTIDAD'
      Required = True
    end
  end
  object QAjusteSubDetalle: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        'Select * from rtomercasubdet where Id_rtoCab between :id_desde a' +
        'nd :id_hasta'
      '')
    Left = 480
    Top = 200
    ParamData = <
      item
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAjusteSubDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteSubDetalleID_RTODET: TIntegerField
      FieldName = 'ID_RTODET'
      Origin = 'ID_RTODET'
    end
    object QAjusteSubDetalleID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
      Origin = 'ID_RTOCAB'
    end
    object QAjusteSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QAjusteSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QAjusteSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QAjusteSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QAjusteSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QAjusteSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 50
    end
    object QAjusteSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QAjusteSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QDebitos: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select d.*, c.Nombre as MuestraCtaCaja from debitos_banco d'
      'left join cuenta_caja c on c.Id_cuenta=d.id_cuenta_banco'
      'where ( d.Id_Mov_Caja between :Min_id and :Max_id )')
    Left = 480
    Top = 328
    ParamData = <
      item
        Name = 'MIN_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MAX_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDebitosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDebitosID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object QDebitosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QDebitosID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QDebitosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QDebitosID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QDebitosID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
      Required = True
    end
    object QDebitosMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QDebitosUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QDebitosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QDebitosORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object QDebitosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QDebitosCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QDebitosMUESTRACTACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object QTransBco: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        'select t.*, c.Nombre as MuestraCtaCaja from transf_banco_recibid' +
        'as t'
      'left join cuenta_caja c on c.Id_cuenta=t.id_cuenta_banco'
      'where ( t.Id_Mov_Caja between :Min_id and :Max_id )')
    Left = 480
    Top = 384
    ParamData = <
      item
        Name = 'MIN_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MAX_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTransBcoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTransBcoID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object QTransBcoID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QTransBcoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QTransBcoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QTransBcoID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QTransBcoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
      Required = True
    end
    object QTransBcoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QTransBcoUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object QTransBcoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QTransBcoORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object QTransBcoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QTransBcoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QTransBcoMUESTRACTACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object QComprobanteAjustes: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select id_comprobante,tipo_comprob,clase_comprob,denominacion,'
      '       sucursal,letra'
      'from comprobantes'
      
        'where  sucursal = :Suc and tipo_comprob in ('#39'AS'#39') and compra_ven' +
        'ta='#39'V'#39
      ' ')
    Left = 480
    Top = 440
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QComprobanteAjustesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobanteAjustesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobanteAjustesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobanteAjustesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QComprobanteAjustesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobanteAjustesLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
  end
  object DSComprobanteAjustes: TDataSource
    DataSet = QComprobanteAjustes
    Left = 576
    Top = 441
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 352
    Top = 96
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 360
    Top = 32
  end
  object QMax: TFDQuery
    OnCalcFields = QFcVtaCabCalcFields
    Connection = FDConnection
    SQL.Strings = (
      'select Max(f.id_fc) from FcVtaCab f'
      'left join comprobantes c on c.sucursal = f.sucursal and'
      '                       c.letra = f.letrafac and'
      '                       c.tipo_comprob = f.tipocpbte and'
      '                       c.clase_comprob= f.clasecpbte and'
      '                       c.compra_venta ='#39'V'#39
      'where ( f.fechavta between :Desde and :Hasta ) and'
      '       ( f.sucursal=:Sucursal or :Sucursal = -1) and '
      '       ( c.id_comprobante = :idcpbte or :idcpbte = -1 )')
    Left = 232
    Top = 200
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IDCPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMaxMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QMin: TFDQuery
    OnCalcFields = QFcVtaCabCalcFields
    Connection = FDConnection
    SQL.Strings = (
      'select Min(f.id_fc) from FcVtaCab f'
      'left join comprobantes c on c.sucursal = f.sucursal and'
      '                       c.letra = f.letrafac and'
      '                       c.tipo_comprob = f.tipocpbte and'
      '                       c.clase_comprob= f.clasecpbte and'
      '                       c.compra_venta ='#39'V'#39
      'where ( f.fechavta between :Desde and :Hasta ) and'
      '       ( f.sucursal=:Sucursal or :Sucursal = -1) and '
      '       ( c.id_comprobante = :idcpbte or :idcpbte = -1 )')
    Left = 232
    Top = 256
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IDCPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QMinMIN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = 'MIN'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object XQFcVtaCab: TXDataset
    Database = RDConnection
    SQL.Strings = (
      'select f.* from FcVtaCab f'
      'left join comprobantes c on c.sucursal = f.sucursal and'
      '                       c.letra = f.letrafac and'
      '                       c.tipo_comprob = f.tipocpbte and'
      '                       c.clase_comprob= f.clasecpbte and'
      '                       c.compra_venta ='#39'V'#39
      'where ( f.fechavta between :Desde and :Hasta ) and'
      '       ( f.sucursal=:Sucursal or :Sucursal = -1) and '
      '       ( c.id_comprobante = :idcpbte or :idcpbte = -1 )'
      'order by  f.id_fc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idcpbte'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idcpbte'
        ParamType = ptInput
      end>
    Left = 824
    Top = 56
  end
  object RDConnection: TRemoteDBDatabase
    Connected = False
    UserName = 'remotedb'
    Password = 'business'
    Left = 776
    Top = 8
  end
  object XQFcVtaDet: TXDataset
    Database = RDConnection
    SQL.Strings = (
      'select * from FCVTADET where id_cabfac '
      'between :id_desde and :id_hasta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    Left = 824
    Top = 112
  end
  object XQFcVtaImp: TXDataset
    Database = RDConnection
    SQL.Strings = (
      'select * from FCVTAIMPUESTO'
      'where ID_FCVTACAB between :id_desde and :id_hasta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_desde'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'id_hasta'
        ParamType = ptInput
      end>
    Left = 824
    Top = 176
  end
  object XQComprobante: TXDataset
    Database = RDConnection
    SQL.Strings = (
      'select id_comprobante,tipo_comprob,clase_comprob,denominacion,'
      '       sucursal,letra'
      'from comprobantes'
      
        'where  sucursal=:Suc and tipo_comprob in ('#39'FC'#39','#39'NC'#39','#39'ND'#39','#39'FO'#39','#39'T' +
        'K'#39') and compra_venta='#39'V'#39
      ' ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Suc'
        ParamType = ptInput
      end>
    Left = 824
    Top = 240
  end
  object XDataset4: TXDataset
    Database = RDConnection
    SQL.Strings = (
      'select f.* from FcVtaCab f'
      'left join comprobantes c on c.sucursal = f.sucursal and'
      '                       c.letra = f.letrafac and'
      '                       c.tipo_comprob = f.tipocpbte and'
      '                       c.clase_comprob= f.clasecpbte and'
      '                       c.compra_venta ='#39'V'#39
      'where ( f.fechavta between :Desde and :Hasta ) and'
      '       ( f.sucursal=:Sucursal or :Sucursal = -1) and '
      '       ( c.id_comprobante = :idcpbte or :idcpbte = -1 )'
      'order by  f.id_fc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idcpbte'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idcpbte'
        ParamType = ptInput
      end>
    Left = 776
    Top = 440
  end
  object XDataset5: TXDataset
    Database = RDConnection
    SQL.Strings = (
      'select f.* from FcVtaCab f'
      'left join comprobantes c on c.sucursal = f.sucursal and'
      '                       c.letra = f.letrafac and'
      '                       c.tipo_comprob = f.tipocpbte and'
      '                       c.clase_comprob= f.clasecpbte and'
      '                       c.compra_venta ='#39'V'#39
      'where ( f.fechavta between :Desde and :Hasta ) and'
      '       ( f.sucursal=:Sucursal or :Sucursal = -1) and '
      '       ( c.id_comprobante = :idcpbte or :idcpbte = -1 )'
      'order by  f.id_fc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idcpbte'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idcpbte'
        ParamType = ptInput
      end>
    Left = 776
    Top = 384
  end
  object XDataset6: TXDataset
    Database = RDConnection
    SQL.Strings = (
      'select f.* from FcVtaCab f'
      'left join comprobantes c on c.sucursal = f.sucursal and'
      '                       c.letra = f.letrafac and'
      '                       c.tipo_comprob = f.tipocpbte and'
      '                       c.clase_comprob= f.clasecpbte and'
      '                       c.compra_venta ='#39'V'#39
      'where ( f.fechavta between :Desde and :Hasta ) and'
      '       ( f.sucursal=:Sucursal or :Sucursal = -1) and '
      '       ( c.id_comprobante = :idcpbte or :idcpbte = -1 )'
      'order by  f.id_fc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idcpbte'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'idcpbte'
        ParamType = ptInput
      end>
    Left = 776
    Top = 328
  end
end

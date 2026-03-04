inherited DatosVentasTicket: TDatosVentasTicket
  Height = 822
  Width = 1034
  inherited DSPImpuestos: TDataSetProvider
    Left = 24
    Top = 97
  end
  inherited DSPSucursal: TDataSetProvider
    Left = 24
    Top = 279
  end
  inherited DSPVentaDet: TDataSetProvider
    Left = 24
    Top = 51
  end
  inherited DSPVentaCab: TDataSetProvider
    Left = 24
    Top = 6
  end
  inherited DSPDeposito: TDataSetProvider
    Left = 24
    Top = 233
  end
  inherited DSPIva: TDataSetProvider
    Left = 342
    Top = 203
  end
  inherited DSPInscripcion: TDataSetProvider
    Left = 341
    Top = 158
  end
  inherited DSPStock: TDataSetProvider
    Left = 24
    Top = 188
  end
  inherited DSPLdr: TDataSetProvider
    Left = 342
    Top = 10
  end
  inherited IBGFc_Cab: TIBGenerator
    Left = 181
    Top = 3
  end
  inherited IBGFc_Det: TIBGenerator
    Left = 261
    Top = 45
  end
  inherited IBGFc_Impuestos: TIBGenerator
    Left = 261
    Top = 110
  end
  inherited DSPVtaSubDet: TDataSetProvider
    Left = 24
    Top = 142
  end
  inherited CDSVtaSubDetalle: TClientDataSet
    Left = 109
    Top = 143
  end
  inherited DSVtaSubDetalle: TDataSource
    Left = 197
  end
  inherited IBGFcVtaSubDet: TIBGenerator
    Left = 269
    Top = 162
  end
  inherited CDSDetalleXML: TClientDataSet
    Left = 856
    Top = 741
  end
  inherited CDSFcVtaCabXML: TClientDataSet
    Left = 942
    Top = 741
  end
  inherited CDSDeposito: TClientDataSet
    Left = 109
    Top = 238
  end
  inherited DSVentaDet: TDataSource
    Left = 187
    Top = 65
  end
  inherited DSImpuestos: TDataSource
    Left = 187
    Top = 114
  end
  inherited DSExistencia: TDataSource
    Left = 747
    Top = 250
  end
  inherited CDSExistencia: TClientDataSet
    Left = 674
    Top = 242
  end
  inherited DSPExistencia: TDataSetProvider
    Left = 608
    Top = 242
  end
  inherited CDSVentaCab: TClientDataSet
    OnReconcileError = CDSVentaCabReconcileError
    Left = 109
    Top = 1
    inherited CDSVentaCabID_FC: TIntegerField
      Origin = 'ID_FC'
    end
    inherited CDSVentaCabTIPOCPBTE: TStringField
      Origin = 'TIPOCPBTE'
    end
    inherited CDSVentaCabCLASECPBTE: TStringField
      Origin = 'CLASECPBTE'
    end
    inherited CDSVentaCabCODIGO: TStringField
      Origin = 'CODIGO'
    end
    inherited CDSVentaCabNROCPBTE: TStringField
      Origin = 'NROCPBTE'
    end
    inherited CDSVentaCabLETRAFAC: TStringField
      Origin = 'LETRAFAC'
    end
    inherited CDSVentaCabSUCFAC: TStringField
      Origin = 'SUCFAC'
    end
    inherited CDSVentaCabNUMEROFAC: TStringField
      Origin = 'NUMEROFAC'
    end
    inherited CDSVentaCabNOMBRE: TStringField
      Origin = 'NOMBRE'
    end
    inherited CDSVentaCabRAZONSOCIAL: TStringField
      Origin = 'RAZONSOCIAL'
    end
    inherited CDSVentaCabDIRECCION: TStringField
      Origin = 'DIRECCION'
    end
    inherited CDSVentaCabCPOSTAL: TStringField
      Origin = 'CPOSTAL'
    end
    inherited CDSVentaCabLOCALIDAD: TStringField
      Origin = 'LOCALIDAD'
    end
    inherited CDSVentaCabTIPOIVA: TIntegerField
      Origin = 'TIPOIVA'
    end
    inherited CDSVentaCabCUIT: TStringField
      Origin = 'CUIT'
    end
    inherited CDSVentaCabLISTAPRECIO: TIntegerField
      Origin = 'LISTAPRECIO'
    end
    inherited CDSVentaCabFECHAVTA: TSQLTimeStampField
      Origin = 'FECHAVTA'
    end
    inherited CDSVentaCabFECHAVTO: TSQLTimeStampField
      Origin = 'FECHAVTO'
    end
    inherited CDSVentaCabCONDICIONVTA: TIntegerField
      Origin = 'CONDICIONVTA'
    end
    inherited CDSVentaCabANULADO: TStringField
      Origin = 'ANULADO'
    end
    inherited CDSVentaCabNRORTO: TStringField
      Origin = 'NRORTO'
    end
    inherited CDSVentaCabN_OPERACION2: TFloatField
      Origin = 'N_OPERACION2'
    end
    inherited CDSVentaCabNETOGRAV1: TFloatField
      Origin = 'NETOGRAV1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    inherited CDSVentaCabNETOGRAV2: TFloatField
      Origin = 'NETOGRAV2'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    inherited CDSVentaCabDSTO: TFloatField
      Origin = 'DSTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    inherited CDSVentaCabDSTOIMPORTE: TFloatField
      Origin = 'DSTOIMPORTE'
    end
    inherited CDSVentaCabNETOEXEN1: TFloatField
      Origin = 'NETOEXEN1'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    inherited CDSVentaCabNETOEXEN2: TFloatField
      Origin = 'NETOEXEN2'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    inherited CDSVentaCabTOTAL: TFloatField
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    inherited CDSVentaCabDEBE: TFloatField
      Origin = 'DEBE'
    end
    inherited CDSVentaCabIMPRESO: TStringField
      Origin = 'IMPRESO'
    end
    inherited CDSVentaCabOBSERVACION1: TStringField
      Origin = 'OBSERVACION1'
    end
    inherited CDSVentaCabOBSERVACION2: TStringField
      Origin = 'OBSERVACION2'
    end
    inherited CDSVentaCabCPTE_MANUAL: TStringField
      Origin = 'CPTE_MANUAL'
    end
    inherited CDSVentaCabSUCURSAL: TIntegerField
      Origin = 'SUCURSAL'
    end
    inherited CDSVentaCabFACTURANRO: TStringField
      Origin = 'FACTURANRO'
    end
    inherited CDSVentaCabZONA: TIntegerField
      Origin = 'ZONA'
    end
    inherited CDSVentaCabLDR: TIntegerField
      Origin = 'LDR'
    end
    inherited CDSVentaCabDEPOSITO: TIntegerField
      Origin = 'DEPOSITO'
    end
    inherited CDSVentaCabCALCULA_SOBRETASA: TStringField
      Origin = 'CALCULA_SOBRETASA'
    end
    inherited CDSVentaCabDESGLOZAIVA: TStringField
      Origin = 'DESGLOZAIVA'
    end
    inherited CDSVentaCabNROENTREGA: TIntegerField
      Origin = 'NROENTREGA'
    end
    inherited CDSVentaCabINGRESA_A_CTACTE: TStringField
      Origin = 'INGRESA_A_CTACTE'
    end
    inherited CDSVentaCabINGRESA_LIBRO_IVA: TStringField
      Origin = 'INGRESA_LIBRO_IVA'
    end
    inherited CDSVentaCabTIPO_REMITO: TStringField
      Origin = 'TIPO_REMITO'
    end
    inherited CDSVentaCabIDREMITO: TIntegerField
      Origin = 'IDREMITO'
    end
    inherited CDSVentaCabREDUCIDA: TStringField
      Origin = 'REDUCIDA'
    end
    inherited CDSVentaCabCOMSIONVENDEDOR: TFloatField
      Origin = 'COMSIONVENDEDOR'
    end
    inherited CDSVentaCabLIQUIDADA: TStringField
      Origin = 'LIQUIDADA'
    end
    inherited CDSVentaCabFECHA_LIQUIDACION: TSQLTimeStampField
      Origin = 'FECHA_LIQUIDACION'
    end
    inherited CDSVentaCabVENDEDOR: TStringField
      Origin = 'VENDEDOR'
    end
    inherited CDSVentaCabUSUARIO: TStringField
      Origin = 'USUARIO'
    end
    inherited CDSVentaCabNC_CONTADO: TStringField
      Origin = 'NC_CONTADO'
    end
    inherited CDSVentaCabCAJA_POR_DEFECTO: TIntegerField
      Origin = 'CAJA_POR_DEFECTO'
    end
    inherited CDSVentaCabNRO_Z: TIntegerField
      Origin = 'NRO_Z'
    end
    inherited CDSVentaCabVALORES_RECIBIDOS: TFloatField
      Origin = 'VALORES_RECIBIDOS'
    end
    inherited CDSVentaCabPERCEPCION_IB_TASA: TFloatField
      Origin = 'PERCEPCION_IB_TASA'
    end
    inherited CDSVentaCabPERCEPCION_IB_IMPORTE: TFloatField
      Origin = 'PERCEPCION_IB_IMPORTE'
    end
    inherited CDSVentaCabPERCIBE_IB: TStringField
      DisplayLabel = 'Per.IIBB'
      Origin = 'PERCIBE_IB'
      EditMask = '0.00;0.00;-'
    end
    inherited CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      Origin = 'PERCEPCION_IB_BASEIMPONIBLE'
    end
    inherited CDSVentaCabRENGLONES: TSmallintField
      Origin = 'RENGLONES'
    end
    inherited CDSVentaCabFECHA_HORA: TSQLTimeStampField
      Origin = 'FECHA_HORA'
    end
    inherited CDSVentaCabNOTAPEDIDO_ID: TIntegerField
      Origin = 'NOTAPEDIDO_ID'
    end
    inherited CDSVentaCabNOTAPEDIDO_NROCPBTE: TStringField
      Origin = 'NOTAPEDIDO_NROCPBTE'
    end
    inherited CDSVentaCabID_FC_CLON: TIntegerField
      Origin = 'ID_FC_CLON'
    end
    inherited CDSVentaCabPRESUPUESTO_ID: TIntegerField
      Origin = 'PRESUPUESTO_ID'
    end
    inherited CDSVentaCabPRESUPUESTO_NROCPBTE: TStringField
      Origin = 'PRESUPUESTO_NROCPBTE'
    end
    inherited CDSVentaCabMONEDA_CPBTE: TIntegerField
      Origin = 'MONEDA_CPBTE'
    end
    inherited CDSVentaCabMONEDA_CPBTE_COTIZACION: TFloatField
      Origin = 'MONEDA_CPBTE_COTIZACION'
    end
    inherited CDSVentaCabPOR_CTA_Y_ORDEN: TStringField
      Origin = 'POR_CTA_Y_ORDEN'
    end
    inherited CDSVentaCabPROVEEDOR: TStringField
      Origin = 'PROVEEDOR'
    end
    inherited CDSVentaCabMUESTRACONDVENTA: TStringField
      Origin = 'DETALLE'
    end
    inherited CDSVentaCabID_TIPOCOMPROBANTE: TIntegerField
      Origin = 'ID_COMPROBANTE'
    end
    inherited CDSVentaCabMUESTRADEPOSITO: TStringField
      Origin = 'NOMBRE'
    end
    inherited CDSVentaCabMUESTRASUCURSAL: TStringField
      Origin = 'DETALLE'
    end
    inherited CDSVentaCabMUESTRALDR: TStringField
      Origin = 'NOMBRE'
    end
    inherited CDSVentaCabMUESTRAIVA: TStringField
      Origin = 'DETALLE'
    end
    inherited CDSVentaCabMUESTRACOMPROBANTE: TStringField
      Origin = 'DENOMINACION'
    end
    inherited CDSVentaCabMUESTRAVENDEDOR: TStringField
      Origin = 'NOMBRE'
    end
    inherited CDSVentaCabMUESTRADIRECCIONLDR: TStringField
      Origin = 'DIRECCION'
    end
    inherited CDSVentaCabMUESTRAPROVEEDOR: TStringField
      Origin = 'NOMBRE'
    end
    inherited CDSVentaCabTIPO_VTA: TStringField
      Origin = 'TIPO_VTA'
    end
    inherited CDSVentaCabJURIDICION: TIntegerField
      Origin = 'JURIDICION'
    end
    inherited CDSVentaCabJURIDICION_LOCALIDAD: TIntegerField
      Origin = 'JURIDICION_LOCALIDAD'
    end
    inherited CDSVentaCabCON_GTIA_EXTENDIDA: TStringField
      Origin = 'CON_GTIA_EXTENDIDA'
    end
    inherited CDSVentaCabID_RECEPCION_GTIA: TIntegerField
      Origin = 'ID_RECEPCION_GTIA'
    end
    inherited CDSVentaCabMESES_DE_GARANTIA: TIntegerField
      Origin = 'MESES_DE_GARANTIA'
    end
    inherited CDSVentaCabPOLIZA: TStringField
      Origin = 'POLIZA'
    end
    inherited CDSVentaCabVALOR_ASEGURADO: TFloatField
      Origin = 'VALOR_ASEGURADO'
    end
    inherited CDSVentaCabMUESTRAMONEDACPBTE: TStringField
      Origin = 'MONEDA'
    end
    inherited CDSVentaCabMUESTRASIGNOMONEDACPBTE: TStringField
      Origin = 'SIGNO'
    end
    inherited CDSVentaCabID_NOTA_CAMBIO: TIntegerField
      Origin = 'ID_NOTA_CAMBIO'
    end
    inherited CDSVentaCabNUMERO_OPERACION: TStringField
      Origin = 'NUMERO_OPERACION'
    end
    inherited CDSVentaCabMUESTRAESFRANQUICIA: TStringField
      Origin = 'FRANQUICIA'
    end
    inherited CDSVentaCabCAE: TStringField
      Origin = 'CAE'
    end
    inherited CDSVentaCabCAE_VENCIMIENTO: TSQLTimeStampField
      Origin = 'CAE_VENCIMIENTO'
    end
    inherited CDSVentaCabFACTURA_ELECTRONICA: TStringField
      Origin = 'FACTURA_ELECTRONICA'
    end
    inherited CDSVentaCabABONO_PERIODO: TStringField
      Origin = 'ABONO_PERIODO'
    end
    inherited CDSVentaCabCANT_BULTOS: TIntegerField
      Origin = 'CANT_BULTOS'
    end
    inherited CDSVentaCabCUOTAS_CC: TIntegerField
      Origin = 'CUOTAS_CC'
    end
    inherited CDSVentaCabINTERVALO_CUOTA: TIntegerField
      Origin = 'INTERVALO_CUOTA'
    end
    inherited CDSVentaCabMUESTRACODIGOAFIP: TStringField
      Origin = 'CODIGO_AFIP'
    end
    inherited CDSVentaCabPAGO_A_CTA: TFloatField
      Origin = 'PAGO_A_CTA'
    end
    inherited CDSVentaCabID_FC_CON_ADEL: TIntegerField
      Origin = 'ID_FC_CON_ADEL'
    end
    inherited CDSVentaCabMUESTRAOBSCLIENTE1: TStringField
      Origin = 'OBSERVACIONES1'
    end
    inherited CDSVentaCabMUESTRAOBSCLIENTE2: TStringField
      Origin = 'OBSERVACIONES2'
    end
    inherited CDSVentaCabMUESTRAACOPIO: TIntegerField
      Origin = 'ID'
    end
    inherited CDSVentaCabCENTRO_COSTO: TIntegerField
      Origin = 'CENTRO_COSTO'
    end
    inherited CDSVentaCabID_PEDIDO_MORPHI: TIntegerField
      Origin = 'ID_PEDIDO_MORPHI'
    end
    inherited CDSVentaCabMUESTRANOMBRECOMPLETO: TStringField
      Origin = 'NOMBRE_COMPLETO'
    end
    inherited CDSVentaCabSALDO_ACTUAL_CC: TFloatField
      Origin = 'SALDO_ACTUAL_CC'
    end
    inherited CDSVentaCabMUESTRAZONA: TStringField
      Origin = 'DETALLE'
    end
    inherited CDSVentaCabNETONOGRAV1: TFloatField
      Origin = 'NETONOGRAV1'
    end
    inherited CDSVentaCabNETONOGRAV2: TFloatField
      Origin = 'NETONOGRAV2'
    end
    inherited CDSVentaCabFECHA_FISCAL: TSQLTimeStampField
      Origin = 'FECHA_FISCAL'
    end
    inherited CDSVentaCabNRO_INTERNO: TStringField
      Origin = 'NRO_INTERNO'
    end
    inherited CDSVentaCabFOB_TOTAL: TFloatField
      Origin = 'FOB_TOTAL'
    end
    inherited CDSVentaCabNOTAS: TStringField
      Origin = 'NOTAS'
    end
    inherited CDSVentaCabMUESTRAUSACHE: TStringField
      Origin = 'CHEQUES'
    end
    inherited CDSVentaCabCBU: TStringField
      Origin = 'CBU'
    end
    inherited CDSVentaCabASOCIADO_TIPO: TIntegerField
      Origin = 'ASOCIADO_TIPO'
    end
    inherited CDSVentaCabASOCIADO_PTOVTA: TIntegerField
      Origin = 'ASOCIADO_PTOVTA'
    end
    inherited CDSVentaCabASOCIADO_NRO: TFloatField
      Origin = 'ASOCIADO_NRO'
    end
    inherited CDSVentaCabASOCIADO_CPTEFCH: TStringField
      Origin = 'ASOCIADO_CPTEFCH'
    end
    inherited CDSVentaCabINF_X: TStringField
      Origin = 'INF_X'
    end
    inherited CDSVentaCabVUELTO: TFloatField
      Origin = 'VUELTO'
    end
    inherited CDSVentaCabHONORARIOS: TFloatField
      Origin = 'HONORARIOS'
    end
    inherited CDSVentaCabHONORARIOS_PROCENTAJ: TFloatField
      Origin = 'HONORARIOS_PROCENTAJ'
    end
    inherited CDSVentaCabCON_CAEA: TStringField
      Origin = 'CON_CAEA'
    end
    inherited CDSVentaCabCAEA_INFORMADO: TStringField
      Origin = 'CAEA_INFORMADO'
    end
    inherited CDSVentaCabASOCIADO_ID_CPBTE: TIntegerField
      Origin = 'ASOCIADO_ID_CPBTE'
    end
    inherited CDSVentaCabFACTURA_DE_ANTICIPO: TStringField
      Origin = 'FACTURA_DE_ANTICIPO'
    end
    inherited CDSVentaCabMUESTRANRONC: TStringField
      Origin = 'NROCPBTE'
    end
    inherited CDSVentaCabMUESTRATIPONC: TStringField
      Origin = 'TIPOCPBTE'
    end
    inherited CDSVentaCabMUESTRACLASENC: TStringField
      Origin = 'CLASECPBTE'
    end
    inherited CDSVentaCabMUESTRAID_NC: TIntegerField
      Origin = 'ID_FC'
    end
    inherited CDSVentaCabQRIMAGE: TBlobField
      Origin = 'QRIMAGE'
      Size = 0
    end
    inherited CDSVentaCabCONDICIONPEDIDO: TIntegerField
      Origin = 'CONDICIONPEDIDO'
    end
    inherited CDSVentaCabCODIGO_ACTIVIDAD: TStringField
      Origin = 'CODIGO_ACTIVIDAD'
    end
    inherited CDSVentaCabPERCIBE_IVA: TStringField
      Origin = 'PERCIBE_IVA'
    end
    inherited CDSVentaCabMINIMO_PERCI_IVA: TFloatField
      Origin = 'MINIMO_PERCI_IVA'
    end
    inherited CDSVentaCabMUESTRANOMBREUSUARIOREAL: TStringField
      Origin = 'REAL_NAME'
    end
    inherited CDSVentaCabID_GARANTE: TIntegerField
      Origin = 'ID_GARANTE'
    end
    inherited CDSVentaCabPRIMER_VTO: TSQLTimeStampField
      Origin = 'PRIMER_VTO'
    end
    inherited CDSVentaCabANTICIPO_VTO: TSQLTimeStampField
      Origin = 'ANTICIPO_VTO'
    end
    inherited CDSVentaCabID_PAIS: TSmallintField
      Origin = 'ID_PAIS'
    end
    inherited CDSVentaCabCUIT_PAIS: TStringField
      Origin = 'CUIT_PAIS'
    end
    inherited CDSVentaCabDOC_ADUANERO: TStringField
      Origin = 'DOC_ADUANERO'
    end
    inherited CDSVentaCabFECHA_CARGA: TSQLTimeStampField
      Origin = 'FECHA_CARGA'
    end
    inherited CDSVentaCabDESTINO_DOCUMENTO: TStringField
      Origin = 'DESTINO_DOCUMENTO'
    end
    inherited CDSVentaCabPERMISO_EMBARQUE: TStringField
      Origin = 'PERMISO_EMBARQUE'
    end
    inherited CDSVentaCabINCOTERMS: TStringField
      Origin = 'INCOTERMS'
    end
    inherited CDSVentaCabTIPO_OPERACION_EXPO: TStringField
      Origin = 'TIPO_OPERACION_EXPO'
    end
    inherited CDSVentaCabMEDIO_TRANSPORTE_EXPO: TStringField
      Origin = 'MEDIO_TRANSPORTE_EXPO'
    end
    inherited CDSVentaCabID_ADUANA: TIntegerField
      Origin = 'ID_ADUANA'
    end
    inherited CDSVentaCabREFERENCIA_EXPO: TStringField
      Origin = 'REFERENCIA_EXPO'
    end
    inherited CDSVentaCabCAMBIO_EXPO: TFloatField
      Origin = 'CAMBIO_EXPO'
    end
    inherited CDSVentaCabID_TRANSPORTE: TIntegerField
      Origin = 'ID_TRANSPORTE'
    end
    inherited CDSVentaCabID_DESTINO: TIntegerField
      Origin = 'ID_DESTINO'
    end
    inherited CDSVentaCabDEDUCE_GASTOS: TStringField
      Origin = 'DEDUCE_GASTOS'
    end
    inherited CDSVentaCabTRANSPORTE_UNIDAD: TIntegerField
      Origin = 'TRANSPORTE_UNIDAD'
    end
    inherited CDSVentaCabTRANSPORTE_ADICIONAL: TIntegerField
      Origin = 'TRANSPORTE_ADICIONAL'
    end
    inherited CDSVentaCabLOTEAFIP: TStringField
      Origin = 'LOTEAFIP'
      ProviderFlags = []
    end
    inherited CDSVentaCabID_CHOFER: TIntegerField
      Origin = 'ID_CHOFER'
    end
    inherited CDSVentaCabENVIAR_CPTE_MAIL: TStringField
      Origin = 'ENVIAR_CPTE_MAIL'
      ProviderFlags = []
    end
    inherited CDSVentaCabKEY_PLANER: TStringField
      Origin = 'KEY_PLANER'
    end
    inherited CDSVentaCabMUESTRACOORPORATIVO: TStringField
      Origin = 'CODIGO_COORPORATIVO'
    end
    inherited CDSVentaCabMUESTRAIDABONO: TIntegerField
      Origin = 'ID'
    end
    inherited CDSVentaCabMUESTRANROABONO: TStringField
      Origin = 'NUMERO'
    end
    inherited CDSVentaCabMUESTRAAUXILIARTR: TStringField
      Origin = 'DESCRIPCION'
    end
    inherited CDSVentaCabMUESTRALOCALITRANSPORTE: TStringField
      Origin = 'LOCALIDAD'
    end
    inherited CDSVentaCabMUESTRATRANSPORTE: TStringField
      Origin = 'NOMBRE'
    end
    inherited CDSVentaCabMUESTRA_UNI_TRANSPORTE: TStringField
      Origin = 'DESCRIPCION'
    end
    inherited CDSVentaCabMUESTRANRDOCCHOFER: TStringField
      Origin = 'NUMERO_DOC'
    end
    inherited CDSVentaCabMUESTRACHOFER: TStringField
      Origin = 'NOMBRE'
    end
    inherited CDSVentaCabMUESTRATPDOCCHOFER: TStringField
      Origin = 'TIPO_DOC'
    end
    inherited CDSVentaCabMUESTRADOMINIOUNIDADTR: TStringField
      Origin = 'DOMINIO'
    end
    inherited CDSVentaCabMUESTRATETRANSPORTE: TStringField
      Origin = 'TELEFONO'
    end
    inherited CDSVentaCabMUESTRADIRTRANSPORTE: TStringField
      Origin = 'DIRECCION'
    end
    inherited CDSVentaCabMUESTRANOMBRETRANSPORTE: TStringField
      Origin = 'NOMBRE'
    end
    inherited CDSVentaCabMUESTRACONDIVATRANSPORTE: TStringField
      Origin = 'DETALLE'
    end
    inherited CDSVentaCabMUESTRACUITTRANSPORTE: TStringField
      Origin = 'CUIT'
    end
    inherited CDSVentaCabCOT: TStringField
      Origin = '"COT"'
    end
    inherited CDSVentaCabMUESTRADIRECCION_CALLE: TStringField
      Origin = 'DIRECCION_CALLE'
    end
    inherited CDSVentaCabMUESTRADIRECCION_NRO: TStringField
      Origin = 'DIRECCION_NUMERO'
    end
    inherited CDSVentaCabMUESTRADIRECCION_PISO: TStringField
      Origin = 'DIRECCION_PISO'
    end
    inherited CDSVentaCabMUESTRADIRECCION_DEPTO: TStringField
      Origin = 'DIRECCION_DEPTO'
    end
    inherited CDSVentaCabLETRACOT: TStringField
      Origin = 'CODIGO_COT'
    end
    inherited CDSVentaCabMUESTRAAPLICALEY15311: TStringField
      Origin = 'APLICA_LEY15311'
    end
    inherited CDSVentaCabID_OBRA: TIntegerField
      Origin = 'ID_OBRA'
    end
    inherited CDSVentaCabMUESTRAOBRA: TStringField
      Origin = 'DETALLE'
    end
    inherited CDSVentaCabPROCESADA: TStringField
      Origin = 'PROCESADA'
    end
  end
  inherited CDSVentaDet: TClientDataSet
    Left = 109
    Top = 48
    inherited CDSVentaDetTIPOIB_TASA: TIntegerField [3]
    end
    inherited CDSVentaDetID_MONEDA: TIntegerField [4]
    end
    inherited CDSVentaDetCON_CODIGO_BARRA: TStringField [5]
    end
    inherited CDSVentaDetID_CABFAC: TIntegerField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    inherited CDSVentaDetDESCUENTO: TFloatField
      Visible = False
    end
    inherited CDSVentaDetTOTAL_EXENTO: TFloatField
      DisplayLabel = 'T.Exe'
    end
    inherited CDSVentaDetTOTAL_GRAVADO: TFloatField
      DisplayLabel = 'Tot.Grava'
    end
    inherited CDSVentaDetCOSTO_TOTAL: TFloatField
      DisplayLabel = 'Costo Total'
    end
    inherited CDSVentaDetUNITARIO_GRAVADO: TFloatField
      DisplayLabel = 'Uni.Grav'
    end
    inherited CDSVentaDetUNITARIO_TOTAL: TFloatField [48]
    end
    inherited CDSVentaDetIVA_UNITARIO: TFloatField [49]
      DisplayLabel = 'Iva Unit.'
    end
    inherited CDSVentaDetUNITARIO_EXENTO: TFloatField [50]
    end
    inherited CDSVentaDetMUESTADIFERENCIAENTREGA: TFloatField
      Origin = 'DIFERENCIA'
    end
    inherited CDSVentaDetPERCIBE_IVA: TStringField
      Origin = 'PERCIBE_IVA'
    end
    inherited CDSVentaDetTASA_PERCEP_IVA: TFloatField
      Origin = 'TASA_PERCEP_IVA'
    end
    inherited CDSVentaDetID_TASA_PERCEPCION_IVA: TIntegerField
      Origin = 'ID_TASA_PERCEPCION_IVA'
    end
    inherited CDSVentaDetPERCEPCION_IVA_DIFERENCIAL: TStringField
      Origin = 'PERCEPCION_IVA_DIFERENCIAL'
    end
    inherited CDSVentaDetPRESENTACION_TOLERANCIA: TFloatField
      Origin = 'PRESENTACION_TOLERANCIA'
    end
    object CDSVentaDetITEM_OCOMPRA: TIntegerField
      FieldName = 'ITEM_OCOMPRA'
      Origin = 'ITEM_OCOMPRA'
    end
    object CDSVentaDetID_DET_REMITO: TIntegerField
      FieldName = 'ID_DET_REMITO'
      Origin = 'ID_DET_REMITO'
    end
    object CDSVentaDetSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      ProviderFlags = []
      Size = 5
    end
    object CDSVentaDetRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      ProviderFlags = []
      Size = 3
    end
    object CDSVentaDetMUESTRAORDENPRODUCCION: TIntegerField
      FieldName = 'MUESTRAORDENPRODUCCION'
    end
  end
  inherited CDSStock: TClientDataSet
    Left = 109
    Top = 190
  end
  inherited CDSSucursal: TClientDataSet
    Left = 109
    Top = 285
  end
  inherited CDSImpuestos: TClientDataSet
    Left = 109
    Top = 103
  end
  inherited CDSLdr: TClientDataSet
    Left = 408
    Top = 11
  end
  inherited DSPBuscaSucursal: TDataSetProvider
    Left = 342
    Top = 240
  end
  inherited CDSBuscaSucursal: TClientDataSet
    Left = 432
    Top = 242
  end
  inherited CDSInscripcion: TClientDataSet
    Left = 432
    Top = 152
  end
  inherited CDSIva: TClientDataSet
    Left = 440
    Top = 198
  end
  inherited DSPPersonal: TDataSetProvider
    Left = 674
    Top = 203
  end
  inherited CDSPersonal: TClientDataSet
    Left = 747
    Top = 203
  end
  inherited QPrecioTablaDetalle: TFDQuery
    Left = 517
    Top = 45
  end
  inherited DSPListaPrecios: TDataSetProvider
    Left = 24
    Top = 374
  end
  inherited CDSListaPrecios: TClientDataSet
    Left = 109
    Top = 374
  end
  inherited DSListaPrecios: TDataSource
    Left = 170
    Top = 382
  end
  inherited QPrecioEspecial: TFDQuery
    Left = 653
    Top = 66
  end
  inherited QMonedas: TFDQuery
    Left = 701
    Top = 67
  end
  inherited CDSBuscaCodigoBarra: TClientDataSet
    Left = 432
    Top = 388
  end
  inherited DSPBuscaCodigoBarra: TDataSetProvider
    Left = 342
    Top = 385
  end
  inherited CDSBuscaNroSerie: TClientDataSet
    Left = 664
    Top = 150
  end
  inherited DSPBuscaNroSerie: TDataSetProvider
    Left = 744
    Top = 150
  end
  inherited QNroSerie: TFDQuery
    Left = 848
    Top = 235
  end
  inherited spIngSerie: TFDStoredProc
    Left = 954
    Top = 164
  end
  inherited DSPBuscaLdr: TDataSetProvider
    Left = 342
    Top = 279
  end
  inherited CDSBuscaLdr: TClientDataSet
    Left = 432
    Top = 280
  end
  inherited QTCredito: TFDQuery
    Left = 850
    Top = 291
  end
  inherited DSPBuscaGrupoVtaDet: TDataSetProvider
    Left = 24
    Top = 325
  end
  inherited CDSBuscaGrupoVtaDet: TClientDataSet
    Active = True
    Left = 109
    Top = 333
  end
  inherited QDepositoStk: TFDQuery
    Left = 765
    Top = 67
  end
  inherited DSPBuscaDeposito: TDataSetProvider
    Left = 342
    Top = 332
  end
  inherited CDSBuscaDeposito: TClientDataSet
    Left = 432
    Top = 334
    inherited CDSBuscaDepositoID: TIntegerField
      DisplayWidth = 5
    end
  end
  inherited DSPBuscaVendedor: TDataSetProvider
    Left = 342
    Top = 598
  end
  inherited CDSBuscaVendedor: TClientDataSet
    Left = 432
    Top = 604
    inherited CDSBuscaVendedorCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 8
    end
    inherited CDSBuscaVendedorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 45
    end
  end
  inherited DSPVtaDetConsig: TDataSetProvider
    Left = 24
    Top = 420
  end
  inherited CDSVtaDetConsig: TClientDataSet
    Left = 109
    Top = 416
    inherited CDSVtaDetConsigMUESTRARECEPCIONNRO: TStringField
      ProviderFlags = []
    end
  end
  inherited DSVtaDetConsig: TDataSource
    Left = 173
    Top = 429
  end
  inherited ibgFcVtaConsig: TIBGenerator
    Left = 232
    Top = 421
  end
  inherited DSPBuscaRecepDetalle: TDataSetProvider
    Left = 109
    Top = 601
  end
  inherited CDSBuscaRecepDetalle: TClientDataSet
    Left = 197
    Top = 601
  end
  inherited QRecepciones: TFDQuery
    Left = 587
    Top = 45
  end
  inherited QBuscaRecDetalle: TFDQuery
    Left = 24
    Top = 610
  end
  inherited DSPBuscaLodalidadJuri: TDataSetProvider
    Left = 582
    Top = 669
  end
  inherited CDSBuscaLocalidadJur: TClientDataSet
    Left = 690
    Top = 670
  end
  inherited DSBuscaLocalidadJuri: TDataSource
    Left = 798
    Top = 666
  end
  inherited QNCPorDefecto: TFDQuery
    Left = 954
    Top = 58
  end
  inherited DSPComprobantePorDefecto: TDataSetProvider
    Left = 342
    Top = 438
  end
  inherited CDSComprobantePorDefecto: TClientDataSet
    Left = 432
    Top = 442
  end
  inherited DSPMov_Carnes: TDataSetProvider
    Left = 24
    Top = 478
  end
  inherited CDSMov_Carnes: TClientDataSet
    Left = 109
    Top = 478
  end
  inherited DSMov_Carnes: TDataSource
    Left = 173
    Top = 486
  end
  inherited ibgMov_Carne: TIBGenerator
    Left = 232
    Top = 478
  end
  inherited DSPEmpresa: TDataSetProvider
    Left = 342
    Top = 544
  end
  inherited CDSEmpresa: TClientDataSet
    Left = 432
    Top = 550
    inherited CDSEmpresaNOMBRE: TStringField
      Origin = 'NOMBRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    inherited CDSEmpresaACTIVIDAD: TStringField
      Origin = 'ACTIVIDAD'
    end
    inherited CDSEmpresaDIRECCION: TStringField
      Origin = 'DIRECCION'
    end
    inherited CDSEmpresaLOCALIDAD: TStringField
      Origin = 'LOCALIDAD'
    end
    inherited CDSEmpresaCORREO: TStringField
      Origin = 'CORREO'
    end
    inherited CDSEmpresaTELEFONO1: TStringField
      Origin = 'TELEFONO1'
    end
    inherited CDSEmpresaTELEFONO2: TStringField
      Origin = 'TELEFONO2'
    end
    inherited CDSEmpresaCUIT: TStringField
      Origin = 'CUIT'
    end
    inherited CDSEmpresaCONDICIONIVA: TStringField
      Origin = 'CONDICIONIVA'
    end
    inherited CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      Origin = 'NRO_AGTE_RET_INGBRUTOS'
    end
    inherited CDSEmpresaLOGO: TBlobField
      Origin = 'LOGO'
      Size = 0
    end
    inherited CDSEmpresaCPOSTAL: TStringField
      Origin = 'CPOSTAL'
    end
    inherited CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      Origin = 'NRO_AGTE_RET_GANANCIA'
    end
    inherited CDSEmpresaAG_RET_GANANCIA: TStringField
      Origin = 'AG_RET_GANANCIA'
    end
    inherited CDSEmpresaAG_RET_ING_BRUTOS: TStringField
      Origin = 'AG_RET_ING_BRUTOS'
    end
    inherited CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      Origin = 'AG_PERCEPCION_ING_BRUTOS'
    end
    inherited CDSEmpresaTASA_PERCEPCION_IB: TFloatField
      Origin = 'TASA_PERCEPCION_IB'
    end
    inherited CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField
      Origin = 'MINO_IMP_PERCEP_IB'
    end
    inherited CDSEmpresaPROVINCIA: TIntegerField
      Origin = 'PROVINCIA'
    end
    inherited CDSEmpresaCBU: TStringField
      Origin = 'CBU'
    end
    inherited CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      Origin = 'FECHA_INICIO_ACTI'
    end
    inherited CDSEmpresaCOD_ACTIVIDAD: TStringField
      Origin = 'COD_ACTIVIDAD'
    end
    inherited CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      Origin = 'NOMBRE_AUTORIZADO'
    end
    inherited CDSEmpresaID_CPOSTAL: TIntegerField
      Origin = 'ID_POSTAL'
      ProviderFlags = []
    end
    inherited CDSEmpresaNOMBRE_FANTASIA: TStringField
      Origin = 'NOMBRE_FANTASIA'
    end
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Origin = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Origin = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Origin = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
      Origin = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
      Origin = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaAG_PERCEPCION_IVA: TStringField
      FieldName = 'AG_PERCEPCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField
      FieldName = 'MIN_IMP_PERCEPCION_IVA'
      Required = True
    end
  end
  inherited DSPFc_Prod_Det: TDataSetProvider
    Left = 645
    Top = 397
  end
  inherited DSPFc_Prod_Mov: TDataSetProvider
    Left = 630
    Top = 456
  end
  inherited CDSFc_Prod_Det: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CAB'
        ParamType = ptInput
      end>
    Left = 747
    Top = 405
    inherited CDSFc_Prod_DetID: TIntegerField
      Origin = 'ID'
    end
    inherited CDSFc_Prod_DetID_FCDET: TIntegerField
      Origin = 'ID_FCDET'
    end
    inherited CDSFc_Prod_DetID_FCCAB: TIntegerField
      Origin = 'ID_FCCAB'
    end
    inherited CDSFc_Prod_DetCODIGO: TStringField
      Origin = 'CODIGO'
    end
    inherited CDSFc_Prod_DetDETALLE: TStringField
      Origin = 'DETALLE'
    end
    inherited CDSFc_Prod_DetUNIDAD: TStringField
      Origin = 'UNIDAD'
    end
    inherited CDSFc_Prod_DetCANTIDAD: TFloatField
      Origin = 'CANTIDAD'
    end
    inherited CDSFc_Prod_DetDEPOSITO_DESTINO: TIntegerField
      Origin = 'DEPOSITO_DESTINO'
    end
    inherited CDSFc_Prod_DetSUCURSAL: TIntegerField
      Origin = 'SUCURSAL'
    end
    inherited CDSFc_Prod_DetFECHA: TSQLTimeStampField
      Origin = 'FECHA'
    end
    inherited CDSFc_Prod_DetAFECTA_STOCK: TStringField
      Origin = 'AFECTA_STOCK'
    end
  end
  inherited CDSFc_Prod_Mov: TClientDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CAB'
        ParamType = ptInput
      end>
    Left = 731
    Top = 450
    inherited CDSFc_Prod_MovID: TIntegerField
      Origin = 'ID'
    end
    inherited CDSFc_Prod_MovID_FC_DET: TIntegerField
      Origin = 'ID_FC_DET'
    end
    inherited CDSFc_Prod_MovCODIGO: TStringField
      Origin = 'CODIGO'
    end
    inherited CDSFc_Prod_MovDETALLE: TStringField
      Origin = 'DETALLE'
    end
    inherited CDSFc_Prod_MovCANTIDAD_UNITARIA: TFloatField
      Origin = 'CANTIDAD_UNITARIA'
    end
    inherited CDSFc_Prod_MovCANTIDAD_ESTIMADA: TFloatField
      Origin = 'CANTIDAD_ESTIMADA'
    end
    inherited CDSFc_Prod_MovCANTIDAD_REAL: TFloatField
      Origin = 'CANTIDAD_REAL'
    end
    inherited CDSFc_Prod_MovDEPOSITO_ORIGEN: TIntegerField
      Origin = 'DEPOSITO_ORIGEN'
    end
    inherited CDSFc_Prod_MovAFECTA_STOCK: TStringField
      Origin = 'AFECTA_STOCK'
    end
  end
  inherited DSFc_Prod_Det: TDataSource
    Left = 819
    Top = 405
  end
  inherited DSFc_Prod_Mov: TDataSource
    Left = 811
    Top = 450
  end
  inherited IbgId_Det_Pro: TIBGenerator
    Left = 922
    Top = 398
  end
  inherited ibgId_mov_prod: TIBGenerator
    Left = 915
    Top = 456
  end
  inherited QStockProdDet: TFDQuery
    Left = 570
    Top = 397
  end
  inherited DSPStockProdDetalle: TDataSetProvider
    Left = 603
    Top = 611
  end
  inherited CDSStockProdDetalle: TClientDataSet
    Left = 693
    Top = 611
  end
  inherited QRecuperarRtos: TFDQuery
    Left = 851
    Top = 344
  end
  inherited DSPVentaLote: TDataSetProvider
    Left = 24
    Top = 530
  end
  inherited CDSVentaLote: TClientDataSet
    Left = 109
    Top = 530
  end
  inherited DSVentaLote: TDataSource
    Left = 173
    Top = 538
  end
  inherited IBGVtaLote: TIBGenerator
    Left = 238
    Top = 530
  end
  inherited CDSBuscaLotes: TClientDataSet
    Left = 432
    Top = 496
  end
  inherited DSPBuscaLotes: TDataSetProvider
    Left = 342
    Top = 491
  end
  inherited QNroBorrado: TFDQuery
    Left = 954
    Top = 217
  end
  inherited QClientes: TFDQuery
    Left = 613
    Top = 125
  end
  inherited QPrimerLdr: TFDQuery
    Left = 845
    Top = 171
  end
  inherited QComprob: TFDQuery
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  '
      'and (tipo_comprob='#39'TK'#39') '
      'and compra_venta='#39'V'#39
      'and sucursal=:suc'
      'and (( desgloza_iva=:desglozaiva) or ( :desglozaiva = '#39'*'#39' ))'
      'and en_uso='#39'S'#39
      'order by id_comprobante desc')
    Left = 645
    Top = 8
  end
  inherited QBorraFc: TFDQuery
    Left = 765
    Top = 11
  end
  inherited QBuscaRtos: TFDQuery
    Left = 845
    Top = 65
  end
  inherited QPromo_Cantidad: TFDQuery
    Left = 947
    Top = 587
  end
  inherited QCodigoBarra: TFDQuery
    Left = 954
    Top = 111
  end
  inherited QProveedores: TFDQuery
    Left = 701
    Top = 11
  end
  inherited QCoefPrecio: TFDQuery
    Left = 954
    Top = 5
  end
  inherited QRecepMayor: TFDQuery
    Left = 947
    Top = 658
  end
  inherited QBuscaCodBarra: TFDQuery
    Left = 845
    Top = 12
  end
  inherited QLocalidadJurDefecto: TFDQuery
    Left = 845
    Top = 118
  end
  inherited DSPercepcionIVA: TDataSource
    Left = 208
    Top = 736
  end
  inherited CDSPercepcionIVA: TClientDataSet
    Left = 136
    Top = 728
  end
  inherited DSPPercepcionIVA: TDataSetProvider
    Left = 32
    Top = 728
  end
  inherited IBGPercepcionIVA: TIBGenerator
    Left = 336
    Top = 728
  end
  inherited DSPVtaDetNovedades: TDataSetProvider
    Left = 336
    Top = 672
  end
  inherited CDSVtaDetNovedades: TClientDataSet
    Left = 213
    Top = 672
  end
  object QReAbrirCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update caja_cab c set c.estado=0 where c.id_caja= :id_caja')
    Left = 950
    Top = 333
    ParamData = <
      item
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCerrarCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update caja_cab c set c.estado=1 where c.id_caja=:id_caja')
    Left = 947
    Top = 528
    ParamData = <
      item
        Name = 'id_caja'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
